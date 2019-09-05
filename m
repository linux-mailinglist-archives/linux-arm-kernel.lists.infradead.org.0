Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB17AA1B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGhDeY57wFswPpsd2gvRn51jLgo8fh409WPYXO/ZC7c=; b=KAS9bs9t84LhWv
	sHTGvccmih+2VUQYoV5Pk83dVcAxF5CT0MnFeuEVYXyLkTaXMR66+QHLBR27eWLFCj/aL0utKOFeQ
	VUzD/4SSwsOFFsZCJ2BdMxBF1KlrpAyPxfqZrx14DQzCAggy1HLsBdyifBCfhNy3AnjVAfOrNxVy2
	MWdKLCdOj9YqLcUO+94oKTfVvGdjKSvZ6lboswbPfoZoF+fon8IT2WFwcvL0k/JeXjWlC64uW2dAX
	VR/2w9M6VJGHUI8c3f2UYRiRSgKCCQWAxhbpipaRL1tSsChI776ye1K0etgk1BPjkHAc2v1wsKUnF
	cT/vQiP7+idhZLri44WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5q8k-00056K-4Q; Thu, 05 Sep 2019 11:41:26 +0000
Received: from [2001:4bb8:18c:1755:a4b2:9562:6bf1:4bb9] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i5q89-0004qi-Kd; Thu, 05 Sep 2019 11:40:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, gross@suse.com,
 boris.ostrovsky@oracle.com
Subject: [PATCH 03/11] xen/arm: use dev_is_dma_coherent
Date: Thu,  5 Sep 2019 13:34:00 +0200
Message-Id: <20190905113408.3104-4-hch@lst.de>
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
Cc: x86@kernel.org, Julien Grall <julien.grall@arm.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the dma-noncoherent dev_is_dma_coherent helper instead of the home
grown variant.  Note that both are always initialized to the same
value in arch_setup_dma_ops.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Julien Grall <julien.grall@arm.com>
Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>
---
 arch/arm/include/asm/dma-mapping.h   |  6 ------
 arch/arm/xen/mm.c                    | 12 ++++++------
 arch/arm64/include/asm/dma-mapping.h |  9 ---------
 3 files changed, 6 insertions(+), 21 deletions(-)

diff --git a/arch/arm/include/asm/dma-mapping.h b/arch/arm/include/asm/dma-mapping.h
index dba9355e2484..bdd80ddbca34 100644
--- a/arch/arm/include/asm/dma-mapping.h
+++ b/arch/arm/include/asm/dma-mapping.h
@@ -91,12 +91,6 @@ static inline dma_addr_t virt_to_dma(struct device *dev, void *addr)
 }
 #endif
 
-/* do not use this function in a driver */
-static inline bool is_device_dma_coherent(struct device *dev)
-{
-	return dev->archdata.dma_coherent;
-}
-
 /**
  * arm_dma_alloc - allocate consistent memory for DMA
  * @dev: valid struct device pointer, or NULL for ISA and EISA-like devices
diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index d33b77e9add3..90574d89d0d4 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 #include <linux/cpu.h>
-#include <linux/dma-mapping.h>
+#include <linux/dma-noncoherent.h>
 #include <linux/gfp.h>
 #include <linux/highmem.h>
 #include <linux/export.h>
@@ -99,7 +99,7 @@ void __xen_dma_map_page(struct device *hwdev, struct page *page,
 	     dma_addr_t dev_addr, unsigned long offset, size_t size,
 	     enum dma_data_direction dir, unsigned long attrs)
 {
-	if (is_device_dma_coherent(hwdev))
+	if (dev_is_dma_coherent(hwdev))
 		return;
 	if (attrs & DMA_ATTR_SKIP_CPU_SYNC)
 		return;
@@ -112,7 +112,7 @@ void __xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
 		unsigned long attrs)
 
 {
-	if (is_device_dma_coherent(hwdev))
+	if (dev_is_dma_coherent(hwdev))
 		return;
 	if (attrs & DMA_ATTR_SKIP_CPU_SYNC)
 		return;
@@ -123,7 +123,7 @@ void __xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
 void __xen_dma_sync_single_for_cpu(struct device *hwdev,
 		dma_addr_t handle, size_t size, enum dma_data_direction dir)
 {
-	if (is_device_dma_coherent(hwdev))
+	if (dev_is_dma_coherent(hwdev))
 		return;
 	__xen_dma_page_dev_to_cpu(hwdev, handle, size, dir);
 }
@@ -131,7 +131,7 @@ void __xen_dma_sync_single_for_cpu(struct device *hwdev,
 void __xen_dma_sync_single_for_device(struct device *hwdev,
 		dma_addr_t handle, size_t size, enum dma_data_direction dir)
 {
-	if (is_device_dma_coherent(hwdev))
+	if (dev_is_dma_coherent(hwdev))
 		return;
 	__xen_dma_page_cpu_to_dev(hwdev, handle, size, dir);
 }
@@ -159,7 +159,7 @@ bool xen_arch_need_swiotlb(struct device *dev,
 	 * memory and we are not able to flush the cache.
 	 */
 	return (!hypercall_cflush && (xen_pfn != bfn) &&
-		!is_device_dma_coherent(dev));
+		!dev_is_dma_coherent(dev));
 }
 
 int xen_create_contiguous_region(phys_addr_t pstart, unsigned int order,
diff --git a/arch/arm64/include/asm/dma-mapping.h b/arch/arm64/include/asm/dma-mapping.h
index bdcb0922a40c..67243255a858 100644
--- a/arch/arm64/include/asm/dma-mapping.h
+++ b/arch/arm64/include/asm/dma-mapping.h
@@ -18,14 +18,5 @@ static inline const struct dma_map_ops *get_arch_dma_ops(struct bus_type *bus)
 	return NULL;
 }
 
-/*
- * Do not use this function in a driver, it is only provided for
- * arch/arm/mm/xen.c, which is used by arm64 as well.
- */
-static inline bool is_device_dma_coherent(struct device *dev)
-{
-	return dev->dma_coherent;
-}
-
 #endif	/* __KERNEL__ */
 #endif	/* __ASM_DMA_MAPPING_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
