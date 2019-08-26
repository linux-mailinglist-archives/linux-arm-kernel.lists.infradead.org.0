Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845C69CF66
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 14:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K5JvQQYazTop3eWEKYSHIjZd/29kAA3g2Oqd3CJWIxA=; b=Ndauarj2O7AsiE
	VJYVX0SsaMPFs/AKgQ5PVuH+eZ/RpWjJxe5foVuz7enk/0jfHFErfH8P8NKf73iw1cRPXdIBKw/ym
	++K8g7EBDlxZNUh0CBt4s1bkQlTEV2FylGI8XdRBQY8VE644eYuLZeMdvNHchJQJhYVPDUFx7XuGs
	aFC9c9+UHgEFK0zXSqcZjcozqdc+Hx4k4FG4WrJW1IwKk2vbP+lAvldaGGuJ1GEhbDzJmcxSbn8EB
	MMubwMe8CPCDgWXd/R4TRDoCkAejn3XRdYJhjg0+Abzxdyt5lb2Cy25ZcOWbi8v6R91dfqql+UfBy
	GCpfCXBRhyh9zjhYbrxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Dyo-0002Oq-OJ; Mon, 26 Aug 2019 12:20:14 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DyP-0002Ez-27; Mon, 26 Aug 2019 12:19:49 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: [PATCH 01/11] xen/arm: use dma-noncoherent.h calls for xen-swiotlb
 cache maintainance
Date: Mon, 26 Aug 2019 14:19:34 +0200
Message-Id: <20190826121944.515-2-hch@lst.de>
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

Reuse the arm64 code that uses the dma-direct/swiotlb helpers for DMA
non-coherent devices.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/include/asm/device.h              |  3 -
 arch/arm/include/asm/xen/page-coherent.h   | 93 ----------------------
 arch/arm/mm/dma-mapping.c                  |  8 +-
 arch/arm64/include/asm/xen/page-coherent.h | 75 -----------------
 drivers/xen/swiotlb-xen.c                  | 49 +-----------
 include/xen/arm/page-coherent.h            | 80 +++++++++++++++++++
 6 files changed, 83 insertions(+), 225 deletions(-)

diff --git a/arch/arm/include/asm/device.h b/arch/arm/include/asm/device.h
index f6955b55c544..c675bc0d5aa8 100644
--- a/arch/arm/include/asm/device.h
+++ b/arch/arm/include/asm/device.h
@@ -14,9 +14,6 @@ struct dev_archdata {
 #endif
 #ifdef CONFIG_ARM_DMA_USE_IOMMU
 	struct dma_iommu_mapping	*mapping;
-#endif
-#ifdef CONFIG_XEN
-	const struct dma_map_ops *dev_dma_ops;
 #endif
 	unsigned int dma_coherent:1;
 	unsigned int dma_ops_setup:1;
diff --git a/arch/arm/include/asm/xen/page-coherent.h b/arch/arm/include/asm/xen/page-coherent.h
index 2c403e7c782d..27e984977402 100644
--- a/arch/arm/include/asm/xen/page-coherent.h
+++ b/arch/arm/include/asm/xen/page-coherent.h
@@ -1,95 +1,2 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _ASM_ARM_XEN_PAGE_COHERENT_H
-#define _ASM_ARM_XEN_PAGE_COHERENT_H
-
-#include <linux/dma-mapping.h>
-#include <asm/page.h>
 #include <xen/arm/page-coherent.h>
-
-static inline const struct dma_map_ops *xen_get_dma_ops(struct device *dev)
-{
-	if (dev && dev->archdata.dev_dma_ops)
-		return dev->archdata.dev_dma_ops;
-	return get_arch_dma_ops(NULL);
-}
-
-static inline void *xen_alloc_coherent_pages(struct device *hwdev, size_t size,
-		dma_addr_t *dma_handle, gfp_t flags, unsigned long attrs)
-{
-	return xen_get_dma_ops(hwdev)->alloc(hwdev, size, dma_handle, flags, attrs);
-}
-
-static inline void xen_free_coherent_pages(struct device *hwdev, size_t size,
-		void *cpu_addr, dma_addr_t dma_handle, unsigned long attrs)
-{
-	xen_get_dma_ops(hwdev)->free(hwdev, size, cpu_addr, dma_handle, attrs);
-}
-
-static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
-	     dma_addr_t dev_addr, unsigned long offset, size_t size,
-	     enum dma_data_direction dir, unsigned long attrs)
-{
-	unsigned long page_pfn = page_to_xen_pfn(page);
-	unsigned long dev_pfn = XEN_PFN_DOWN(dev_addr);
-	unsigned long compound_pages =
-		(1<<compound_order(page)) * XEN_PFN_PER_PAGE;
-	bool local = (page_pfn <= dev_pfn) &&
-		(dev_pfn - page_pfn < compound_pages);
-
-	/*
-	 * Dom0 is mapped 1:1, while the Linux page can span across
-	 * multiple Xen pages, it's not possible for it to contain a
-	 * mix of local and foreign Xen pages. So if the first xen_pfn
-	 * == mfn the page is local otherwise it's a foreign page
-	 * grant-mapped in dom0. If the page is local we can safely
-	 * call the native dma_ops function, otherwise we call the xen
-	 * specific function.
-	 */
-	if (local)
-		xen_get_dma_ops(hwdev)->map_page(hwdev, page, offset, size, dir, attrs);
-	else
-		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
-}
-
-static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir, unsigned long attrs)
-{
-	unsigned long pfn = PFN_DOWN(handle);
-	/*
-	 * Dom0 is mapped 1:1, while the Linux page can be spanned accross
-	 * multiple Xen page, it's not possible to have a mix of local and
-	 * foreign Xen page. Dom0 is mapped 1:1, so calling pfn_valid on a
-	 * foreign mfn will always return false. If the page is local we can
-	 * safely call the native dma_ops function, otherwise we call the xen
-	 * specific function.
-	 */
-	if (pfn_valid(pfn)) {
-		if (xen_get_dma_ops(hwdev)->unmap_page)
-			xen_get_dma_ops(hwdev)->unmap_page(hwdev, handle, size, dir, attrs);
-	} else
-		__xen_dma_unmap_page(hwdev, handle, size, dir, attrs);
-}
-
-static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir)
-{
-	unsigned long pfn = PFN_DOWN(handle);
-	if (pfn_valid(pfn)) {
-		if (xen_get_dma_ops(hwdev)->sync_single_for_cpu)
-			xen_get_dma_ops(hwdev)->sync_single_for_cpu(hwdev, handle, size, dir);
-	} else
-		__xen_dma_sync_single_for_cpu(hwdev, handle, size, dir);
-}
-
-static inline void xen_dma_sync_single_for_device(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir)
-{
-	unsigned long pfn = PFN_DOWN(handle);
-	if (pfn_valid(pfn)) {
-		if (xen_get_dma_ops(hwdev)->sync_single_for_device)
-			xen_get_dma_ops(hwdev)->sync_single_for_device(hwdev, handle, size, dir);
-	} else
-		__xen_dma_sync_single_for_device(hwdev, handle, size, dir);
-}
-
-#endif /* _ASM_ARM_XEN_PAGE_COHERENT_H */
diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index d42557ee69c2..738097396445 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -1132,10 +1132,6 @@ static const struct dma_map_ops *arm_get_dma_map_ops(bool coherent)
 	 * 32-bit DMA.
 	 * Use the generic dma-direct / swiotlb ops code in that case, as that
 	 * handles bounce buffering for us.
-	 *
-	 * Note: this checks CONFIG_ARM_LPAE instead of CONFIG_SWIOTLB as the
-	 * latter is also selected by the Xen code, but that code for now relies
-	 * on non-NULL dev_dma_ops.  To be cleaned up later.
 	 */
 	if (IS_ENABLED(CONFIG_ARM_LPAE))
 		return NULL;
@@ -2363,10 +2359,8 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
 	set_dma_ops(dev, dma_ops);
 
 #ifdef CONFIG_XEN
-	if (xen_initial_domain()) {
-		dev->archdata.dev_dma_ops = dev->dma_ops;
+	if (xen_initial_domain())
 		dev->dma_ops = xen_dma_ops;
-	}
 #endif
 	dev->archdata.dma_ops_setup = true;
 }
diff --git a/arch/arm64/include/asm/xen/page-coherent.h b/arch/arm64/include/asm/xen/page-coherent.h
index d88e56b90b93..27e984977402 100644
--- a/arch/arm64/include/asm/xen/page-coherent.h
+++ b/arch/arm64/include/asm/xen/page-coherent.h
@@ -1,77 +1,2 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _ASM_ARM64_XEN_PAGE_COHERENT_H
-#define _ASM_ARM64_XEN_PAGE_COHERENT_H
-
-#include <linux/dma-mapping.h>
-#include <asm/page.h>
 #include <xen/arm/page-coherent.h>
-
-static inline void *xen_alloc_coherent_pages(struct device *hwdev, size_t size,
-		dma_addr_t *dma_handle, gfp_t flags, unsigned long attrs)
-{
-	return dma_direct_alloc(hwdev, size, dma_handle, flags, attrs);
-}
-
-static inline void xen_free_coherent_pages(struct device *hwdev, size_t size,
-		void *cpu_addr, dma_addr_t dma_handle, unsigned long attrs)
-{
-	dma_direct_free(hwdev, size, cpu_addr, dma_handle, attrs);
-}
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
-	unsigned long page_pfn = page_to_xen_pfn(page);
-	unsigned long dev_pfn = XEN_PFN_DOWN(dev_addr);
-	unsigned long compound_pages =
-		(1<<compound_order(page)) * XEN_PFN_PER_PAGE;
-	bool local = (page_pfn <= dev_pfn) &&
-		(dev_pfn - page_pfn < compound_pages);
-
-	if (local)
-		dma_direct_map_page(hwdev, page, offset, size, dir, attrs);
-	else
-		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
-}
-
-static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
-		size_t size, enum dma_data_direction dir, unsigned long attrs)
-{
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
-	else
-		__xen_dma_unmap_page(hwdev, handle, size, dir, attrs);
-}
-
-#endif /* _ASM_ARM64_XEN_PAGE_COHERENT_H */
diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
index ae1df496bf38..b8808677ae1d 100644
--- a/drivers/xen/swiotlb-xen.c
+++ b/drivers/xen/swiotlb-xen.c
@@ -547,51 +547,6 @@ xen_swiotlb_dma_supported(struct device *hwdev, u64 mask)
 	return xen_virt_to_bus(xen_io_tlb_end - 1) <= mask;
 }
 
-/*
- * Create userspace mapping for the DMA-coherent memory.
- * This function should be called with the pages from the current domain only,
- * passing pages mapped from other domains would lead to memory corruption.
- */
-static int
-xen_swiotlb_dma_mmap(struct device *dev, struct vm_area_struct *vma,
-		     void *cpu_addr, dma_addr_t dma_addr, size_t size,
-		     unsigned long attrs)
-{
-#ifdef CONFIG_ARM
-	if (xen_get_dma_ops(dev)->mmap)
-		return xen_get_dma_ops(dev)->mmap(dev, vma, cpu_addr,
-						    dma_addr, size, attrs);
-#endif
-	return dma_common_mmap(dev, vma, cpu_addr, dma_addr, size, attrs);
-}
-
-/*
- * This function should be called with the pages from the current domain only,
- * passing pages mapped from other domains would lead to memory corruption.
- */
-static int
-xen_swiotlb_get_sgtable(struct device *dev, struct sg_table *sgt,
-			void *cpu_addr, dma_addr_t handle, size_t size,
-			unsigned long attrs)
-{
-#ifdef CONFIG_ARM
-	if (xen_get_dma_ops(dev)->get_sgtable) {
-#if 0
-	/*
-	 * This check verifies that the page belongs to the current domain and
-	 * is not one mapped from another domain.
-	 * This check is for debug only, and should not go to production build
-	 */
-		unsigned long bfn = PHYS_PFN(dma_to_phys(dev, handle));
-		BUG_ON (!page_is_ram(bfn));
-#endif
-		return xen_get_dma_ops(dev)->get_sgtable(dev, sgt, cpu_addr,
-							   handle, size, attrs);
-	}
-#endif
-	return dma_common_get_sgtable(dev, sgt, cpu_addr, handle, size, attrs);
-}
-
 const struct dma_map_ops xen_swiotlb_dma_ops = {
 	.alloc = xen_swiotlb_alloc_coherent,
 	.free = xen_swiotlb_free_coherent,
@@ -604,6 +559,6 @@ const struct dma_map_ops xen_swiotlb_dma_ops = {
 	.map_page = xen_swiotlb_map_page,
 	.unmap_page = xen_swiotlb_unmap_page,
 	.dma_supported = xen_swiotlb_dma_supported,
-	.mmap = xen_swiotlb_dma_mmap,
-	.get_sgtable = xen_swiotlb_get_sgtable,
+	.mmap = dma_common_mmap,
+	.get_sgtable = dma_common_get_sgtable,
 };
diff --git a/include/xen/arm/page-coherent.h b/include/xen/arm/page-coherent.h
index 2ca9164a79bf..a840d6949a87 100644
--- a/include/xen/arm/page-coherent.h
+++ b/include/xen/arm/page-coherent.h
@@ -2,6 +2,9 @@
 #ifndef _XEN_ARM_PAGE_COHERENT_H
 #define _XEN_ARM_PAGE_COHERENT_H
 
+#include <linux/dma-mapping.h>
+#include <asm/page.h>
+
 void __xen_dma_map_page(struct device *hwdev, struct page *page,
 	     dma_addr_t dev_addr, unsigned long offset, size_t size,
 	     enum dma_data_direction dir, unsigned long attrs);
@@ -13,4 +16,81 @@ void __xen_dma_sync_single_for_cpu(struct device *hwdev,
 void __xen_dma_sync_single_for_device(struct device *hwdev,
 		dma_addr_t handle, size_t size, enum dma_data_direction dir);
 
+static inline void *xen_alloc_coherent_pages(struct device *hwdev, size_t size,
+		dma_addr_t *dma_handle, gfp_t flags, unsigned long attrs)
+{
+	return dma_direct_alloc(hwdev, size, dma_handle, flags, attrs);
+}
+
+static inline void xen_free_coherent_pages(struct device *hwdev, size_t size,
+		void *cpu_addr, dma_addr_t dma_handle, unsigned long attrs)
+{
+	dma_direct_free(hwdev, size, cpu_addr, dma_handle, attrs);
+}
+
+static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
+		dma_addr_t handle, size_t size, enum dma_data_direction dir)
+{
+	unsigned long pfn = PFN_DOWN(handle);
+
+	if (pfn_valid(pfn))
+		dma_direct_sync_single_for_cpu(hwdev, handle, size, dir);
+	else
+		__xen_dma_sync_single_for_cpu(hwdev, handle, size, dir);
+}
+
+static inline void xen_dma_sync_single_for_device(struct device *hwdev,
+		dma_addr_t handle, size_t size, enum dma_data_direction dir)
+{
+	unsigned long pfn = PFN_DOWN(handle);
+	if (pfn_valid(pfn))
+		dma_direct_sync_single_for_device(hwdev, handle, size, dir);
+	else
+		__xen_dma_sync_single_for_device(hwdev, handle, size, dir);
+}
+
+static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
+	     dma_addr_t dev_addr, unsigned long offset, size_t size,
+	     enum dma_data_direction dir, unsigned long attrs)
+{
+	unsigned long page_pfn = page_to_xen_pfn(page);
+	unsigned long dev_pfn = XEN_PFN_DOWN(dev_addr);
+	unsigned long compound_pages =
+		(1<<compound_order(page)) * XEN_PFN_PER_PAGE;
+	bool local = (page_pfn <= dev_pfn) &&
+		(dev_pfn - page_pfn < compound_pages);
+
+	/*
+	 * Dom0 is mapped 1:1, while the Linux page can span across
+	 * multiple Xen pages, it's not possible for it to contain a
+	 * mix of local and foreign Xen pages. So if the first xen_pfn
+	 * == mfn the page is local otherwise it's a foreign page
+	 * grant-mapped in dom0. If the page is local we can safely
+	 * call the native dma_ops function, otherwise we call the xen
+	 * specific function.
+	 */
+	if (local)
+		dma_direct_map_page(hwdev, page, offset, size, dir, attrs);
+	else
+		__xen_dma_map_page(hwdev, page, dev_addr, offset, size, dir, attrs);
+}
+
+static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
+		size_t size, enum dma_data_direction dir, unsigned long attrs)
+{
+	unsigned long pfn = PFN_DOWN(handle);
+	/*
+	 * Dom0 is mapped 1:1, while the Linux page can be spanned accross
+	 * multiple Xen page, it's not possible to have a mix of local and
+	 * foreign Xen page. Dom0 is mapped 1:1, so calling pfn_valid on a
+	 * foreign mfn will always return false. If the page is local we can
+	 * safely call the native dma_ops function, otherwise we call the xen
+	 * specific function.
+	 */
+	if (pfn_valid(pfn))
+		dma_direct_unmap_page(hwdev, handle, size, dir, attrs);
+	else
+		__xen_dma_unmap_page(hwdev, handle, size, dir, attrs);
+}
+
 #endif /* _XEN_ARM_PAGE_COHERENT_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
