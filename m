Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E7327690
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sG3svyPTPeBxywZg5oCoBOQHapi7rK1ASzqntOuKasg=; b=ss2t7uYok/haEj
	2ZPV9CJhNK6NPANJFq1GUaGKiBjSlnAtoXOLc/qKhpfAwEEf87VLgb7i916XVsDSoB1hnZz1FWnsM
	wqK1v3OCBGQCl7w5zALlDnZW7hM2GP8V27K0Sitv/qSg3dQ1JD4j4COZGUiNbt4jIOgjXvXXA1wc9
	dTb9wxX0R0btBdfAQc+05GvHTd9gE3jMDlfpHxVtaFjFI8WZVHszIuCdJBi9Y5GZ6G4CeHxDmSEYM
	kdlQMMuZI8jzgqZ9J4p3Sk0QSYq8UvQiPJ2k6AkX66wJ5GIZU+y8iUqh2yfdSYy/0OiZ+51ayr/Ls
	Hff0eKNA2arMB4QOgbVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hThjr-0006gU-G0; Thu, 23 May 2019 07:02:07 +0000
Received: from 213-225-10-46.nat.highway.a1.net ([213.225.10.46]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThid-00052B-Bb; Thu, 23 May 2019 07:00:51 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 07/23] iommu/dma: Squash __iommu_dma_{map,unmap}_page helpers
Date: Thu, 23 May 2019 09:00:12 +0200
Message-Id: <20190523070028.7435-8-hch@lst.de>
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

The remaining internal callsites don't care about having prototypes
compatible with the relevant dma_map_ops callbacks, so the extra
level of indirection just wastes space and complictaes things.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/iommu/dma-iommu.c | 25 +++++++------------------
 1 file changed, 7 insertions(+), 18 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index c04450a4adec..4596e4860da8 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -717,18 +717,6 @@ static void iommu_dma_sync_sg_for_device(struct device *dev,
 		arch_sync_dma_for_device(dev, sg_phys(sg), sg->length, dir);
 }
 
-static dma_addr_t __iommu_dma_map_page(struct device *dev, struct page *page,
-		unsigned long offset, size_t size, int prot)
-{
-	return __iommu_dma_map(dev, page_to_phys(page) + offset, size, prot);
-}
-
-static void __iommu_dma_unmap_page(struct device *dev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir, unsigned long attrs)
-{
-	__iommu_dma_unmap(dev, handle, size);
-}
-
 static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
 		unsigned long offset, size_t size, enum dma_data_direction dir,
 		unsigned long attrs)
@@ -974,7 +962,8 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 		if (!addr)
 			return NULL;
 
-		*handle = __iommu_dma_map_page(dev, page, 0, iosize, ioprot);
+		*handle = __iommu_dma_map(dev, page_to_phys(page), iosize,
+					  ioprot);
 		if (*handle == DMA_MAPPING_ERROR) {
 			if (coherent)
 				__free_pages(page, get_order(size));
@@ -991,7 +980,7 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 		if (!page)
 			return NULL;
 
-		*handle = __iommu_dma_map_page(dev, page, 0, iosize, ioprot);
+		*handle = __iommu_dma_map(dev, page_to_phys(page), iosize, ioprot);
 		if (*handle == DMA_MAPPING_ERROR) {
 			dma_release_from_contiguous(dev, page,
 						    size >> PAGE_SHIFT);
@@ -1005,7 +994,7 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 				arch_dma_prep_coherent(page, iosize);
 			memset(addr, 0, size);
 		} else {
-			__iommu_dma_unmap_page(dev, *handle, iosize, 0, attrs);
+			__iommu_dma_unmap(dev, *handle, iosize);
 			dma_release_from_contiguous(dev, page,
 						    size >> PAGE_SHIFT);
 		}
@@ -1044,12 +1033,12 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
 	 * Hence how dodgy the below logic looks...
 	 */
 	if (dma_in_atomic_pool(cpu_addr, size)) {
-		__iommu_dma_unmap_page(dev, handle, iosize, 0, 0);
+		__iommu_dma_unmap(dev, handle, iosize);
 		dma_free_from_pool(cpu_addr, size);
 	} else if (attrs & DMA_ATTR_FORCE_CONTIGUOUS) {
 		struct page *page = vmalloc_to_page(cpu_addr);
 
-		__iommu_dma_unmap_page(dev, handle, iosize, 0, attrs);
+		__iommu_dma_unmap(dev, handle, iosize);
 		dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
 		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
 	} else if (is_vmalloc_addr(cpu_addr)){
@@ -1060,7 +1049,7 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
 		__iommu_dma_free(dev, area->pages, iosize, &handle);
 		dma_common_free_remap(cpu_addr, size, VM_USERMAP);
 	} else {
-		__iommu_dma_unmap_page(dev, handle, iosize, 0, 0);
+		__iommu_dma_unmap(dev, handle, iosize);
 		__free_pages(virt_to_page(cpu_addr), get_order(size));
 	}
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
