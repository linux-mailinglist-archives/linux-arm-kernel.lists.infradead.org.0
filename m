Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03C79CF82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 14:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T15kYmqUXK0q1xcBI73e+9lf5+U93UwQqgjV3VZznB8=; b=IC9B9vn9kYhEcB
	ddid+s1HKkc2eU2r8T7Xxd5su8vUvzygUrsglsS83GwMTlOZ7mW1AEjEziVajPtBp0Jk2ziX/wToo
	leEZmPBak1481aUCTMHPW/Mm+vuEitB8HNXkxC9NJ7ceKqQN7FDXZFdY+ZwbJPMuZ0Nfc76wBQhaM
	Y64uqWbhm3A/sC4X7XllJOvkkEp0t/l2jw/f0Wlz92FwQZ4xwJmN0fJhYLTp6QEym6C15md90lRI0
	cS/ypmjjUtyiHUcbK3Bziq79W7yDOovvX0oLz5FIyoXW+j41W2M73HEgjJ9AOPv5gKgnHSfFaI352
	/xa9ZhXpWLZ6cKK4Mogg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Dzw-0005DV-RO; Mon, 26 Aug 2019 12:21:24 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Dyi-000388-OG; Mon, 26 Aug 2019 12:20:09 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: [PATCH 08/11] swiotlb-xen: simplify cache maintainance
Date: Mon, 26 Aug 2019 14:19:41 +0200
Message-Id: <20190826121944.515-9-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190826121944.515-1-hch@lst.de>
References: <20190826121944.515-1-hch@lst.de>
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
---
 arch/arm/xen/mm.c                        | 64 ++++++----------------
 arch/x86/include/asm/xen/page-coherent.h | 11 ----
 drivers/xen/swiotlb-xen.c                | 20 +++----
 include/xen/arm/page-coherent.h          | 69 ++----------------------
 4 files changed, 31 insertions(+), 133 deletions(-)

diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index b7d53415532b..7096652f5a1e 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -61,63 +61,33 @@ static void dma_cache_maint(dma_addr_t handle, size_t size, u32 op)
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
index 8ee33c5edded..c9c8398a31ff 100644
--- a/arch/x86/include/asm/xen/page-coherent.h
+++ b/arch/x86/include/asm/xen/page-coherent.h
@@ -2,17 +2,6 @@
 #ifndef _ASM_X86_XEN_PAGE_COHERENT_H
 #define _ASM_X86_XEN_PAGE_COHERENT_H
 
-#include <asm/page.h>
-#include <linux/dma-mapping.h>
-
-static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
-	     dma_addr_t dev_addr, unsigned long offset, size_t size,
-	     enum dma_data_direction dir, unsigned long attrs) { }
-
-static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir,
-		unsigned long attrs) { }
-
 static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
 		dma_addr_t handle, size_t size, enum dma_data_direction dir) { }
 
diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
index f9dd4cb6e4b3..a642e284f1e2 100644
--- a/drivers/xen/swiotlb-xen.c
+++ b/drivers/xen/swiotlb-xen.c
@@ -28,6 +28,7 @@
 
 #include <linux/memblock.h>
 #include <linux/dma-direct.h>
+#include <linux/dma-noncoherent.h>
 #include <linux/export.h>
 #include <xen/swiotlb-xen.h>
 #include <xen/page.h>
@@ -390,6 +391,7 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
 	if (map == (phys_addr_t)DMA_MAPPING_ERROR)
 		return DMA_MAPPING_ERROR;
 
+	phys = map;
 	dev_addr = xen_phys_to_bus(map);
 
 	/*
@@ -401,14 +403,9 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
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
 
@@ -428,7 +425,8 @@ static void xen_unmap_single(struct device *hwdev, dma_addr_t dev_addr,
 
 	BUG_ON(dir == DMA_NONE);
 
-	xen_dma_unmap_page(hwdev, dev_addr, size, dir, attrs);
+	if (!dev_is_dma_coherent(hwdev) && !(attrs & DMA_ATTR_SKIP_CPU_SYNC))
+		xen_dma_sync_for_cpu(hwdev, dev_addr, paddr, size, dir);
 
 	/* NOTE: We use dev_addr here, not paddr! */
 	if (is_xen_swiotlb_buffer(dev_addr))
@@ -448,7 +446,8 @@ xen_swiotlb_sync_single_for_cpu(struct device *dev, dma_addr_t dma_addr,
 {
 	phys_addr_t paddr = xen_bus_to_phys(dma_addr);
 
-	xen_dma_sync_single_for_cpu(dev, dma_addr, size, dir);
+	if (!dev_is_dma_coherent(dev))
+		xen_dma_sync_for_cpu(dev, dma_addr, paddr, size, dir);
 
 	if (is_xen_swiotlb_buffer(dma_addr))
 		swiotlb_tbl_sync_single(dev, paddr, size, dir, SYNC_FOR_CPU);
@@ -463,7 +462,8 @@ xen_swiotlb_sync_single_for_device(struct device *dev, dma_addr_t dma_addr,
 	if (is_xen_swiotlb_buffer(dma_addr))
 		swiotlb_tbl_sync_single(dev, paddr, size, dir, SYNC_FOR_DEVICE);
 
-	xen_dma_sync_single_for_device(dev, dma_addr, size, dir);
+	if (!dev_is_dma_coherent(dev))
+		xen_dma_sync_for_device(dev, dma_addr, paddr, size, dir);
 }
 
 /*
diff --git a/include/xen/arm/page-coherent.h b/include/xen/arm/page-coherent.h
index 07c104dbc21f..635492d41ebe 100644
--- a/include/xen/arm/page-coherent.h
+++ b/include/xen/arm/page-coherent.h
@@ -2,70 +2,9 @@
 #ifndef _XEN_ARM_PAGE_COHERENT_H
 #define _XEN_ARM_PAGE_COHERENT_H
 
-#include <linux/dma-mapping.h>
-#include <asm/page.h>
-
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
+void xen_dma_sync_for_cpu(struct device *dev, dma_addr_t handle,
+		phys_addr_t paddr, size_t size, enum dma_data_direction dir);
+void xen_dma_sync_for_device(struct device *dev, dma_addr_t handle,
+		phys_addr_t paddr, size_t size, enum dma_data_direction dir);
 
 #endif /* _XEN_ARM_PAGE_COHERENT_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
