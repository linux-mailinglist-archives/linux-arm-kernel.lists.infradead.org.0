Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F52AA1DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvDyoze+jNity4LcYL25U94KKnkrlLYT4hZZ8PY/C0c=; b=pDWzWncNhEBpFC
	wU6zTZn/pWf+HYbpLtnd70T7jdRJv20A4H/3vUqHFSfDvSCBSeuXHl3ACJd2LFDhKb87OGoJUoDSo
	5O4C6SiQqFN2aORBkwmwHJd+MizogNV0nDzAry25WJ9+jJ9H8w6+Vr2ZSSnYfvAtdPDkSpWQWlNKB
	2POg10AHjyKJxc27hV0loz2OvfegM1ccEMhzW4Ai3bAzlehZNf3xMl0xLxF20fEa1kmXKzrli775o
	/WjzCnabxPr+Ah9mO98UaNOBT74loAr8zbPLTZnr/a8I8ubjRUvT2YR071cMNVmCSG+0WfeR4MvnZ
	YJyEICdzWmkQ7syRW2hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qAq-0006xY-EA; Thu, 05 Sep 2019 11:43:36 +0000
Received: from [2001:4bb8:18c:1755:a4b2:9562:6bf1:4bb9] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i5q8S-00057u-B2; Thu, 05 Sep 2019 11:41:09 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, gross@suse.com,
 boris.ostrovsky@oracle.com
Subject: [PATCH 09/11] swiotlb-xen: simplify cache maintainance
Date: Thu,  5 Sep 2019 13:34:06 +0200
Message-Id: <20190905113408.3104-10-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190905113408.3104-1-hch@lst.de>
References: <20190905113408.3104-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: xen-devel@lists.xenproject.org, iommu@lists.linux-foundation.org,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we know we always have the dma-noncoherent.h helpers available
if we are on an architecture with support for non-coherent devices,
we can just call them directly, and remove the calls to the dma-direct
routines, including the fact that we call the dma_direct_map_page
routines but ignore the value returned from it.  Instead we now have
Xen wrappers for the arch_sync_dma_for_{device,cpu} helpers that call
the special Xen versions of those routines for foreign pages.

Note that the new helpers get the physical address passed in addition
to the dma address to avoid another translation for the local cache
maintainance.  The pfn_valid checks remain on the dma address as in
the old code, even if that looks a little funny.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
---
 arch/arm/xen/mm.c                        | 64 +++++++-----------------
 arch/x86/include/asm/xen/page-coherent.h | 14 ------
 drivers/xen/swiotlb-xen.c                | 20 ++++----
 include/xen/arm/page-coherent.h          | 63 -----------------------
 include/xen/swiotlb-xen.h                |  5 ++
 5 files changed, 32 insertions(+), 134 deletions(-)

diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index 9d73fa4a5991..2b2c208408bb 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -60,63 +60,33 @@ static void dma_cache_maint(dma_addr_t handle, size_t size, u32 op)
 	} while (size);
 }
 
-static void __xen_dma_page_dev_to_cpu(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir)
+/*
+ * Dom0 is mapped 1:1, and while the Linux page can span across multiple Xen
+ * pages, it is not possible for it to contain a mix of local and foreign Xen
+ * pages.  Calling pfn_valid on a foreign mfn will always return false, so if
+ * pfn_valid returns true the pages is local and we can use the native
+ * dma-direct functions, otherwise we call the Xen specific version.
+ */
+void xen_dma_sync_for_cpu(struct device *dev, dma_addr_t handle,
+		phys_addr_t paddr, size_t size, enum dma_data_direction dir)
 {
-	if (dir != DMA_TO_DEVICE)
+	if (pfn_valid(PFN_DOWN(handle)))
+		arch_sync_dma_for_cpu(dev, paddr, size, dir);
+	else if (dir != DMA_TO_DEVICE)
 		dma_cache_maint(handle, size, GNTTAB_CACHE_INVAL);
 }
 
-static void __xen_dma_page_cpu_to_dev(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir)
+void xen_dma_sync_for_device(struct device *dev, dma_addr_t handle,
+		phys_addr_t paddr, size_t size, enum dma_data_direction dir)
 {
-	if (dir == DMA_FROM_DEVICE)
+	if (pfn_valid(PFN_DOWN(handle)))
+		arch_sync_dma_for_device(dev, paddr, size, dir);
+	else if (dir == DMA_FROM_DEVICE)
 		dma_cache_maint(handle, size, GNTTAB_CACHE_INVAL);
 	else
 		dma_cache_maint(handle, size, GNTTAB_CACHE_CLEAN);
 }
 
-void __xen_dma_map_page(struct device *hwdev, struct page *page,
-	     dma_addr_t dev_addr, unsigned long offset, size_t size,
-	     enum dma_data_direction dir, unsigned long attrs)
-{
-	if (dev_is_dma_coherent(hwdev))
-		return;
-	if (attrs & DMA_ATTR_SKIP_CPU_SYNC)
-		return;
-
-	__xen_dma_page_cpu_to_dev(hwdev, dev_addr, size, dir);
-}
-
-void __xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir,
-		unsigned long attrs)
-
-{
-	if (dev_is_dma_coherent(hwdev))
-		return;
-	if (attrs & DMA_ATTR_SKIP_CPU_SYNC)
-		return;
-
-	__xen_dma_page_dev_to_cpu(hwdev, handle, size, dir);
-}
-
-void __xen_dma_sync_single_for_cpu(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir)
-{
-	if (dev_is_dma_coherent(hwdev))
-		return;
-	__xen_dma_page_dev_to_cpu(hwdev, handle, size, dir);
-}
-
-void __xen_dma_sync_single_for_device(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir)
-{
-	if (dev_is_dma_coherent(hwdev))
-		return;
-	__xen_dma_page_cpu_to_dev(hwdev, handle, size, dir);
-}
-
 bool xen_arch_need_swiotlb(struct device *dev,
 			   phys_addr_t phys,
 			   dma_addr_t dev_addr)
diff --git a/arch/x86/include/asm/xen/page-coherent.h b/arch/x86/include/asm/xen/page-coherent.h
index 116777e7f387..63cd41b2e17a 100644
--- a/arch/x86/include/asm/xen/page-coherent.h
+++ b/arch/x86/include/asm/xen/page-coherent.h
@@ -21,18 +21,4 @@ static inline void xen_free_coherent_pages(struct device *hwdev, size_t size,
 	free_pages((unsigned long) cpu_addr, get_order(size));
 }
 
-static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
-	     dma_addr_t dev_addr, unsigned long offset, size_t size,
-	     enum dma_data_direction dir, unsigned long attrs) { }
-
-static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir,
-		unsigned long attrs) { }
-
-static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir) { }
-
-static inline void xen_dma_sync_single_for_device(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir) { }
-
 #endif /* _ASM_X86_XEN_PAGE_COHERENT_H */
diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
index b8808677ae1d..f81031f0c1c7 100644
--- a/drivers/xen/swiotlb-xen.c
+++ b/drivers/xen/swiotlb-xen.c
@@ -28,6 +28,7 @@
 
 #include <linux/memblock.h>
 #include <linux/dma-direct.h>
+#include <linux/dma-noncoherent.h>
 #include <linux/export.h>
 #include <xen/swiotlb-xen.h>
 #include <xen/page.h>
@@ -391,6 +392,7 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
 	if (map == (phys_addr_t)DMA_MAPPING_ERROR)
 		return DMA_MAPPING_ERROR;
 
+	phys = map;
 	dev_addr = xen_phys_to_bus(map);
 
 	/*
@@ -402,14 +404,9 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
 		return DMA_MAPPING_ERROR;
 	}
 
-	page = pfn_to_page(map >> PAGE_SHIFT);
-	offset = map & ~PAGE_MASK;
 done:
-	/*
-	 * we are not interested in the dma_addr returned by xen_dma_map_page,
-	 * only in the potential cache flushes executed by the function.
-	 */
-	xen_dma_map_page(dev, page, dev_addr, offset, size, dir, attrs);
+	if (!dev_is_dma_coherent(dev) && !(attrs & DMA_ATTR_SKIP_CPU_SYNC))
+		xen_dma_sync_for_device(dev, dev_addr, phys, size, dir);
 	return dev_addr;
 }
 
@@ -429,7 +426,8 @@ static void xen_unmap_single(struct device *hwdev, dma_addr_t dev_addr,
 
 	BUG_ON(dir == DMA_NONE);
 
-	xen_dma_unmap_page(hwdev, dev_addr, size, dir, attrs);
+	if (!dev_is_dma_coherent(hwdev) && !(attrs & DMA_ATTR_SKIP_CPU_SYNC))
+		xen_dma_sync_for_cpu(hwdev, dev_addr, paddr, size, dir);
 
 	/* NOTE: We use dev_addr here, not paddr! */
 	if (is_xen_swiotlb_buffer(dev_addr))
@@ -449,7 +447,8 @@ xen_swiotlb_sync_single_for_cpu(struct device *dev, dma_addr_t dma_addr,
 {
 	phys_addr_t paddr = xen_bus_to_phys(dma_addr);
 
-	xen_dma_sync_single_for_cpu(dev, dma_addr, size, dir);
+	if (!dev_is_dma_coherent(dev))
+		xen_dma_sync_for_cpu(dev, dma_addr, paddr, size, dir);
 
 	if (is_xen_swiotlb_buffer(dma_addr))
 		swiotlb_tbl_sync_single(dev, paddr, size, dir, SYNC_FOR_CPU);
@@ -464,7 +463,8 @@ xen_swiotlb_sync_single_for_device(struct device *dev, dma_addr_t dma_addr,
 	if (is_xen_swiotlb_buffer(dma_addr))
 		swiotlb_tbl_sync_single(dev, paddr, size, dir, SYNC_FOR_DEVICE);
 
-	xen_dma_sync_single_for_device(dev, dma_addr, size, dir);
+	if (!dev_is_dma_coherent(dev))
+		xen_dma_sync_for_device(dev, dma_addr, paddr, size, dir);
 }
 
 /*
diff --git a/include/xen/arm/page-coherent.h b/include/xen/arm/page-coherent.h
index a8d9c0678c27..b9cc11e887ed 100644
--- a/include/xen/arm/page-coherent.h
+++ b/include/xen/arm/page-coherent.h
@@ -5,17 +5,6 @@
 #include <linux/dma-mapping.h>
 #include <asm/page.h>
 
-void __xen_dma_map_page(struct device *hwdev, struct page *page,
-	     dma_addr_t dev_addr, unsigned long offset, size_t size,
-	     enum dma_data_direction dir, unsigned long attrs);
-void __xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir,
-		unsigned long attrs);
-void __xen_dma_sync_single_for_cpu(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir);
-void __xen_dma_sync_single_for_device(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir);
-
 static inline void *xen_alloc_coherent_pages(struct device *hwdev, size_t size,
 		dma_addr_t *dma_handle, gfp_t flags, unsigned long attrs)
 {
@@ -28,56 +17,4 @@ static inline void xen_free_coherent_pages(struct device *hwdev, size_t size,
 	dma_direct_free(hwdev, size, cpu_addr, dma_handle, attrs);
 }
 
-static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir)
-{
-	unsigned long pfn = PFN_DOWN(handle);
-
-	if (pfn_valid(pfn))
-		dma_direct_sync_single_for_cpu(hwdev, handle, size, dir);
-	else
-		__xen_dma_sync_single_for_cpu(hwdev, handle, size, dir);
-}
-
-static inline void xen_dma_sync_single_for_device(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir)
-{
-	unsigned long pfn = PFN_DOWN(handle);
-	if (pfn_valid(pfn))
-		dma_direct_sync_single_for_device(hwdev, handle, size, dir);
-	else
-		__xen_dma_sync_single_for_device(hwdev, handle, size, dir);
-}
-
-static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
-	     dma_addr_t dev_addr, unsigned long offset, size_t size,
-	     enum dma_data_direction dir, unsigned long attrs)
-{
-	unsigned long pfn = PFN_DOWN(dev_addr);
-
-	/*
-	 * Dom0 is mapped 1:1, and while the Linux page can span across multiple
-	 * Xen pages, it is not possible for it to contain a mix of local and
-	 * foreign Xen pages.  Calling pfn_valid on a foreign mfn will always
-	 * return false, so if pfn_valid returns true the pages is local and we
-	 * can use the native dma-direct functions, otherwise we call the Xen
-	 * specific version.
-	 */
-	if (pfn_valid(pfn))
-		dma_direct_map_page(hwdev, page, offset, size, dir, attrs);
-	else
-		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
-}
-
-static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir, unsigned long attrs)
-{
-	unsigned long pfn = PFN_DOWN(handle);
-
-	if (pfn_valid(pfn))
-		dma_direct_unmap_page(hwdev, handle, size, dir, attrs);
-	else
-		__xen_dma_unmap_page(hwdev, handle, size, dir, attrs);
-}
-
 #endif /* _XEN_ARM_PAGE_COHERENT_H */
diff --git a/include/xen/swiotlb-xen.h b/include/xen/swiotlb-xen.h
index 5e4b83f83dbc..d71380f6ed0b 100644
--- a/include/xen/swiotlb-xen.h
+++ b/include/xen/swiotlb-xen.h
@@ -4,6 +4,11 @@
 
 #include <linux/swiotlb.h>
 
+void xen_dma_sync_for_cpu(struct device *dev, dma_addr_t handle,
+		phys_addr_t paddr, size_t size, enum dma_data_direction dir);
+void xen_dma_sync_for_device(struct device *dev, dma_addr_t handle,
+		phys_addr_t paddr, size_t size, enum dma_data_direction dir);
+
 extern int xen_swiotlb_init(int verbose, bool early);
 extern const struct dma_map_ops xen_swiotlb_dma_ops;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
