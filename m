Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D5B276A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgZgaBdWDXF+AE3oXBBSefIMjdGk3N3uh0SDb2k91+w=; b=Wq/OsmZVMUPxIr
	U6e3A/gtI1GgVHfBSqhTRBHZzuh7XaYJTOoE+eXeiSYkdvlpTvwKZAnR3/mqbwcLrui6mNZ+qkaEf
	SzU9oKo/aNhqoXLVnlbEKASca7Q2PnizILydZqv3R2wIe0w990EeEZiEHpFmymlMt8AJRItdix/YV
	ftS4EGiQaCXLfKD0u9XMQoGHD4wfXkJ0/nYW6bxNlqXYLvcCJ3er/KPpBu6Db3rmD3Zw5XFWoDPzM
	pfpsWVAAK5tEXcvWApLjVWGm+FMKQqtX0B72JzyNiWHOQf9NuHFcur9q2MEv61hpTUh+tHVXhPb6b
	SU9y1NNWnPDMdR/nF/+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hThkX-0007eP-F4; Thu, 23 May 2019 07:02:49 +0000
Received: from 213-225-10-46.nat.highway.a1.net ([213.225.10.46]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThio-0005Kw-Lw; Thu, 23 May 2019 07:01:03 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 11/23] iommu/dma: Refactor iommu_dma_free
Date: Thu, 23 May 2019 09:00:16 +0200
Message-Id: <20190523070028.7435-12-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523070028.7435-1-hch@lst.de>
References: <20190523070028.7435-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tom Murphy <tmurphy@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Murphy <robin.murphy@arm.com>

The freeing logic was made particularly horrible by part of it being
opaque to the arch wrapper, which led to a lot of convoluted repetition
to ensure each path did everything in the right order. Now that it's
all private, we can pick apart and consolidate the logically-distinct
steps of freeing the IOMMU mapping, the underlying pages, and the CPU
remap (if necessary) into something much more manageable.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
[various cosmetic changes to the code flow]
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/iommu/dma-iommu.c | 73 ++++++++++++++++++---------------------
 1 file changed, 33 insertions(+), 40 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 191c0a4c8e31..f61e3f8861a8 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -935,6 +935,39 @@ static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
 	__iommu_dma_unmap(dev, handle, size);
 }
 
+static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
+		dma_addr_t handle, unsigned long attrs)
+{
+	size_t alloc_size = PAGE_ALIGN(size);
+	int count = alloc_size >> PAGE_SHIFT;
+	struct page *page = NULL, **pages = NULL;
+
+	__iommu_dma_unmap(dev, handle, size);
+
+	/* Non-coherent atomic allocation? Easy */
+	if (dma_free_from_pool(cpu_addr, alloc_size))
+		return;
+
+	if (is_vmalloc_addr(cpu_addr)) {
+		/*
+		 * If it the address is remapped, then it's either non-coherent
+		 * or highmem CMA, or an iommu_dma_alloc_remap() construction.
+		 */
+		pages = __iommu_dma_get_pages(cpu_addr);
+		if (!pages)
+			page = vmalloc_to_page(cpu_addr);
+		dma_common_free_remap(cpu_addr, alloc_size, VM_USERMAP);
+	} else {
+		/* Lowmem means a coherent atomic or CMA allocation */
+		page = virt_to_page(cpu_addr);
+	}
+
+	if (pages)
+		__iommu_dma_free_pages(pages, count);
+	if (page && !dma_release_from_contiguous(dev, page, count))
+		__free_pages(page, get_order(alloc_size));
+}
+
 static void *iommu_dma_alloc(struct device *dev, size_t size,
 		dma_addr_t *handle, gfp_t gfp, unsigned long attrs)
 {
@@ -1004,46 +1037,6 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 	return addr;
 }
 
-static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
-		dma_addr_t handle, unsigned long attrs)
-{
-	size_t iosize = size;
-
-	size = PAGE_ALIGN(size);
-	/*
-	 * @cpu_addr will be one of 4 things depending on how it was allocated:
-	 * - A remapped array of pages for contiguous allocations.
-	 * - A remapped array of pages from iommu_dma_alloc_remap(), for all
-	 *   non-atomic allocations.
-	 * - A non-cacheable alias from the atomic pool, for atomic
-	 *   allocations by non-coherent devices.
-	 * - A normal lowmem address, for atomic allocations by
-	 *   coherent devices.
-	 * Hence how dodgy the below logic looks...
-	 */
-	if (dma_in_atomic_pool(cpu_addr, size)) {
-		__iommu_dma_unmap(dev, handle, iosize);
-		dma_free_from_pool(cpu_addr, size);
-	} else if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
-		struct page *page = vmalloc_to_page(cpu_addr);
-
-		__iommu_dma_unmap(dev, handle, iosize);
-		dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
-		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
-	} else if (is_vmalloc_addr(cpu_addr)){
-		struct page **pages = __iommu_dma_get_pages(cpu_addr);
-
-		if (!pages)
-			return;
-		__iommu_dma_unmap(dev, handle, iosize);
-		__iommu_dma_free_pages(pages, size >> PAGE_SHIFT);
-		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
-	} else {
-		__iommu_dma_unmap(dev, handle, iosize);
-		__free_pages(virt_to_page(cpu_addr), get_order(size));
-	}
-}
-
 static int __iommu_dma_mmap_pfn(struct vm_area_struct *vma,
 			      unsigned long pfn, size_t size)
 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
