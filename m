Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9229EF4C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2LqBZXJc9XX+LqNTJpAPTbaTRUzl+QVixYqMMheowA=; b=NAAUBzZ2YcZvV+
	dOYGtSCxItxQ4Rstxi46OO4AzNnfbrlJW34MuLE5gTP7uBzAGI1btuWdOf3QtV8AO6NIDbiFicq4T
	I/Ny0+9EY66jssP8NMKTgkpeS3zAn7A9LIYpY0vo/emBBPF+sw4NEcIzrcS5vM5EdiGb/Bj8gSVz3
	v0ZFllhTLwIwvUbZZ2SRS7TRGca/4XeSiv9Wt6BdXLdz9ZzcEQh8VKM4kWj4Dfo5sTQLYJwBnPpG2
	uw0/WWPkktPRO7u042kcqwLChl+YQ76YjQn8vDer89LjQQVT7P6ojNs7VEOAFc+U5kgBt/qdRTytD
	mmw9bxGmVWTlvpgvbcjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQPT-0001aK-1y; Tue, 30 Apr 2019 10:54:51 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQNm-0007ie-Rj; Tue, 30 Apr 2019 10:53:07 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 10/25] iommu/dma: Factor out remapped pages lookup
Date: Tue, 30 Apr 2019 06:51:59 -0400
Message-Id: <20190430105214.24628-11-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430105214.24628-1-hch@lst.de>
References: <20190430105214.24628-1-hch@lst.de>
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Murphy <robin.murphy@arm.com>

Since we duplicate the find_vm_area() logic a few times in places where
we only care aboute the pages, factor out a helper to abstract it.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
[hch: don't warn when not finding a region, as we'll rely on that later]
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/iommu/dma-iommu.c | 32 ++++++++++++++++++++------------
 1 file changed, 20 insertions(+), 12 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 82fb208017fb..84fe9a9eb0bb 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -525,6 +525,15 @@ static struct page **__iommu_dma_alloc_pages(struct device *dev,
 	return pages;
 }
 
+static struct page **__iommu_dma_get_pages(void *cpu_addr)
+{
+	struct vm_struct *area = find_vm_area(cpu_addr);
+
+	if (!area || !area->pages)
+		return NULL;
+	return area->pages;
+}
+
 /**
  * iommu_dma_free - Free a buffer allocated by __iommu_dma_alloc()
  * @dev: Device which owns this buffer
@@ -1023,11 +1032,11 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
 		dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
 		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
 	} else if (is_vmalloc_addr(cpu_addr)){
-		struct vm_struct *area = find_vm_area(cpu_addr);
+		struct page **pages = __iommu_dma_get_pages(cpu_addr);
 
-		if (WARN_ON(!area || !area->pages))
+		if (!pages)
 			return;
-		__iommu_dma_free(dev, area->pages, iosize, &handle);
+		__iommu_dma_free(dev, pages, iosize, &handle);
 		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
 	} else {
 		__iommu_dma_unmap(dev, handle, iosize);
@@ -1059,7 +1068,7 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
 {
 	unsigned long nr_pages = PAGE_ALIGN(size) >> PAGE_SHIFT;
 	unsigned long off = vma->vm_pgoff;
-	struct vm_struct *area;
+	struct page **pages;
 	int ret;
 
 	vma->vm_page_prot = arch_dma_mmap_pgprot(dev, vma->vm_page_prot, attrs);
@@ -1084,11 +1093,10 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
 		return __iommu_dma_mmap_pfn(vma, pfn, size);
 	}
 
-	area = find_vm_area(cpu_addr);
-	if (WARN_ON(!area || !area->pages))
+	pages = __iommu_dma_get_pages(cpu_addr);
+	if (!pages)
 		return -ENXIO;
-
-	return __iommu_dma_mmap(area->pages, size, vma);
+	return __iommu_dma_mmap(pages, size, vma);
 }
 
 static int __iommu_dma_get_sgtable_page(struct sg_table *sgt, struct page *page,
@@ -1106,7 +1114,7 @@ static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
 		unsigned long attrs)
 {
 	unsigned int count = PAGE_ALIGN(size) >> PAGE_SHIFT;
-	struct vm_struct *area = find_vm_area(cpu_addr);
+	struct page **pages;
 
 	if (!is_vmalloc_addr(cpu_addr)) {
 		struct page *page = virt_to_page(cpu_addr);
@@ -1122,10 +1130,10 @@ static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
 		return __iommu_dma_get_sgtable_page(sgt, page, size);
 	}
 
-	if (WARN_ON(!area || !area->pages))
+	pages = __iommu_dma_get_pages(cpu_addr);
+	if (!pages)
 		return -ENXIO;
-
-	return sg_alloc_table_from_pages(sgt, area->pages, count, 0, size,
+	return sg_alloc_table_from_pages(sgt, pages, count, 0, size,
 					 GFP_KERNEL);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
