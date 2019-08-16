Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEB99026D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 15:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2X+jk1vuCZ8qZ4dbJezcz8PRIOhhSCqH/vVgm9elyfs=; b=lYQLs70AmiUQRZ
	9IDlTml/VtntalwomDYOAhBzacL+4rL/24ASVuGZ/LCCTX3dqeW3djYhCmZGXNKaqk7Bv7sJDFbU9
	8gf01kqUJQ0gHBk+nEnIg+8ar5q1wNYU4fyw1VcVQX4Tk2++jwlwccd3QrvfgE3SwTotj8H8A+xFy
	K0YYcDf6NMbgapY9s9Rcsq20sEJDwUrCF1EMk5gX7L7gJk3obYHUVGgpK9eTkaUeou+73zIz2aRsP
	Iafb3UQRe7gkYCFXSALvmw3xPpRMsQw25O160wLkwSAaOyWIyTC3r0Pd8NkpLSucFnk3fucq4dwEM
	j/TzxFS0r2nhjJe9Ly/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybuV-0001QO-PL; Fri, 16 Aug 2019 13:04:51 +0000
Received: from [91.112.187.46] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hybqa-0006ck-1f; Fri, 16 Aug 2019 13:00:48 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: [PATCH 09/11] swiotlb-xen: simplify cache maintainance
Date: Fri, 16 Aug 2019 15:00:11 +0200
Message-Id: <20190816130013.31154-10-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190816130013.31154-1-hch@lst.de>
References: <20190816130013.31154-1-hch@lst.de>
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/xen/mm.c           |  47 ++---------------
 drivers/xen/swiotlb-xen.c   |  19 ++++---
 include/xen/page-coherent.h | 100 +++++++++++-------------------------
 3 files changed, 42 insertions(+), 124 deletions(-)

diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index 85482cdda1e5..0eb88f1355c2 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -86,59 +86,18 @@ static void dma_cache_maint(dma_addr_t handle, size_t size,
 	} while (left);
 }
 
-static void __xen_dma_page_dev_to_cpu(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir)
+void __xen_dma_sync_for_cpu(struct device *dev, dma_addr_t handle, size_t size,
+		enum dma_data_direction dir)
 {
 	dma_cache_maint(handle, size, dir, DMA_UNMAP);
 }
 
-static void __xen_dma_page_cpu_to_dev(struct device *hwdev, dma_addr_t handle,
+void __xen_dma_sync_for_device(struct device *dev, dma_addr_t handle,
 		size_t size, enum dma_data_direction dir)
 {
 	dma_cache_maint(handle, size, dir, DMA_MAP);
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
diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
index 7b23929854e7..c3c383033ae4 100644
--- a/drivers/xen/swiotlb-xen.c
+++ b/drivers/xen/swiotlb-xen.c
@@ -388,6 +388,7 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
 	if (map == (phys_addr_t)DMA_MAPPING_ERROR)
 		return DMA_MAPPING_ERROR;
 
+	phys = map;
 	dev_addr = xen_phys_to_bus(map);
 
 	/*
@@ -399,14 +400,9 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
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
 
@@ -426,7 +422,8 @@ static void xen_unmap_single(struct device *hwdev, dma_addr_t dev_addr,
 
 	BUG_ON(dir == DMA_NONE);
 
-	xen_dma_unmap_page(hwdev, dev_addr, size, dir, attrs);
+	if (!dev_is_dma_coherent(hwdev) && !(attrs & DMA_ATTR_SKIP_CPU_SYNC))
+		xen_dma_sync_for_cpu(hwdev, dev_addr, paddr, size, dir);
 
 	/* NOTE: We use dev_addr here, not paddr! */
 	if (is_xen_swiotlb_buffer(dev_addr))
@@ -446,7 +443,8 @@ xen_swiotlb_sync_single_for_cpu(struct device *dev, dma_addr_t dma_addr,
 {
 	phys_addr_t paddr = xen_bus_to_phys(dma_addr);
 
-	xen_dma_sync_single_for_cpu(dev, dma_addr, size, dir);
+	if (!dev_is_dma_coherent(dev))
+		xen_dma_sync_for_cpu(dev, dma_addr, paddr, size, dir);
 
 	if (is_xen_swiotlb_buffer(dma_addr))
 		swiotlb_tbl_sync_single(dev, paddr, size, dir, SYNC_FOR_CPU);
@@ -461,7 +459,8 @@ xen_swiotlb_sync_single_for_device(struct device *dev, dma_addr_t dma_addr,
 	if (is_xen_swiotlb_buffer(dma_addr))
 		swiotlb_tbl_sync_single(dev, paddr, size, dir, SYNC_FOR_DEVICE);
 
-	xen_dma_sync_single_for_device(dev, dma_addr, size, dir);
+	if (!dev_is_dma_coherent(dev))
+		xen_dma_sync_for_device(dev, dma_addr, paddr, size, dir);
 }
 
 /*
diff --git a/include/xen/page-coherent.h b/include/xen/page-coherent.h
index 0f4d468e7a89..38b572ed0879 100644
--- a/include/xen/page-coherent.h
+++ b/include/xen/page-coherent.h
@@ -2,88 +2,48 @@
 #ifndef _XEN_PAGE_COHERENT_H
 #define _XEN_PAGE_COHERENT_H
 
-#include <linux/dma-mapping.h>
-#include <asm/page.h>
+#include <linux/dma-noncoherent.h>
 
 #if defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE) || \
     defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU)
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
-	if (pfn_valid(pfn))
-		dma_direct_map_page(hwdev, page, offset, size, dir, attrs);
+/*
+ * Dom0 is mapped 1:1, while the Linux page can be spanned accross multiple Xen
+ * pages, it's not possible to have a mix of local and foreign Xen page.  Dom0
+ * is mapped 1:1, so calling pfn_valid on a foreign mfn will always return
+ * false.  If the page is local we can safely use the native routines for cache
+ * maintainance, otherwise we call the Xen specific function.
+ */
+void __xen_dma_sync_for_cpu(struct device *dev, dma_addr_t handle, size_t size,
+		enum dma_data_direction dir);
+void __xen_dma_sync_for_device(struct device *dev, dma_addr_t handle,
+		size_t size, enum dma_data_direction dir);
+
+static inline void xen_dma_sync_for_cpu(struct device *dev, dma_addr_t handle,
+		phys_addr_t paddr, size_t size, enum dma_data_direction dir)
+{
+	if (pfn_valid(PFN_DOWN(handle)))
+		arch_sync_dma_for_cpu(dev, paddr, size, dir);
 	else
-		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
+		__xen_dma_sync_for_cpu(dev, handle, size, dir);
 }
 
-static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir, unsigned long attrs)
+static inline void xen_dma_sync_for_device(struct device *dev,
+		dma_addr_t handle, phys_addr_t paddr, size_t size,
+		enum dma_data_direction dir)
 {
-	unsigned long pfn = PFN_DOWN(handle);
-	/*
-	 * Dom0 is mapped 1:1, while the Linux page can be spanned accross
-	 * multiple Xen page, it's not possible to have a mix of local and
-	 * foreign Xen page. Dom0 is mapped 1:1, so calling pfn_valid on a
-	 * foreign mfn will always return false. If the page is local we can
-	 * safely call the native dma_ops function, otherwise we call the xen
-	 * specific function.
-	 */
-	if (pfn_valid(pfn))
-		dma_direct_unmap_page(hwdev, handle, size, dir, attrs);
+	if (pfn_valid(PFN_DOWN(handle)))
+		arch_sync_dma_for_device(dev, paddr, size, dir);
 	else
-		__xen_dma_unmap_page(hwdev, handle, size, dir, attrs);
+		__xen_dma_sync_for_device(dev, handle, size, dir);
 }
 #else
-static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
-	     dma_addr_t dev_addr, unsigned long offset, size_t size,
-	     enum dma_data_direction dir, unsigned long attrs)
-{
-}
-static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir, unsigned long attrs)
-{
-}
-static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir)
+static inline void xen_dma_sync_for_cpu(struct device *dev, dma_addr_t handle,
+		phys_addr_t paddr, size_t size, enum dma_data_direction dir)
 {
 }
-static inline void xen_dma_sync_single_for_device(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir)
+static inline void xen_dma_sync_for_device(struct device *dev,
+		dma_addr_t handle, phys_addr_t paddr, size_t size,
+		enum dma_data_direction dir)
 {
 }
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
