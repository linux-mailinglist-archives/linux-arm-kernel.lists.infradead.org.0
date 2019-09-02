Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF09A5717
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYlmwpITUTVN5585sa3TOuO1P+X/U3fhEq1mNkjLGHo=; b=Nsv7WtEyzbWSma
	4WF9vFRqtExS87ipmoZXpcZDQHVO4OLBlgIhZyav4KtmjYenikBKjCUwyzmk7IXGM4KXE7rWIaq2c
	gjpGaPCTdTReP5CqBHcsa5pu02hVuHFcYv+xnNB8rvakAX6Spm/UTDT790ziUj4aBEEIpZ6iokE0+
	5lSNuc1mcm8iciEl5MjRsmTjNxpreQt6ztRkjEMixvt8y+dZ+yyW+JvIxLdZWh+WgzJAoU/RejzRX
	4r35crTUCo/M1q4q0/bundaWcY0KRxZ+GDzp0glxss0C9e3sMkNtWPsDJ3y5rl+wu7j4TYgng4xSr
	s8GysbT4i1wlXh68tzAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4m0V-0001os-TQ; Mon, 02 Sep 2019 13:04:32 +0000
Received: from [2001:4bb8:18c:1755:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lzo-0001GZ-KZ; Mon, 02 Sep 2019 13:03:49 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, gross@suse.com,
 boris.ostrovsky@oracle.com
Subject: [PATCH 02/13] xen/arm: consolidate page-coherent.h
Date: Mon,  2 Sep 2019 15:03:28 +0200
Message-Id: <20190902130339.23163-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190902130339.23163-1-hch@lst.de>
References: <20190902130339.23163-1-hch@lst.de>
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

Shared the duplicate arm/arm64 code in include/xen/arm/page-coherent.h.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/include/asm/xen/page-coherent.h   | 75 --------------------
 arch/arm64/include/asm/xen/page-coherent.h | 75 --------------------
 include/xen/arm/page-coherent.h            | 80 ++++++++++++++++++++++
 3 files changed, 80 insertions(+), 150 deletions(-)

diff --git a/arch/arm/include/asm/xen/page-coherent.h b/arch/arm/include/asm/xen/page-coherent.h
index 602ac02f154c..27e984977402 100644
--- a/arch/arm/include/asm/xen/page-coherent.h
+++ b/arch/arm/include/asm/xen/page-coherent.h
@@ -1,77 +1,2 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _ASM_ARM_XEN_PAGE_COHERENT_H
-#define _ASM_ARM_XEN_PAGE_COHERENT_H
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
-#endif /* _ASM_ARM_XEN_PAGE_COHERENT_H */
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
