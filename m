Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9975390269
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 15:04:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yCGSLYWaYRp1/Oqfdry8K7wqFWix5kQ3+iW0yPO7nWM=; b=fnJrR+uTo5Linq
	hD3At3Pf4GTbm2vAqWrSbguxHBNh0YVptcQb9w2VZJmb4dBoKyzpr0v3nA9nUMPy+GkCQMRwTRDb7
	wteJvyvIbx/8Jdv+JT7oOCTB90dASiNVUeugC88CNVp67KIm8xtM2VIraBu72WEgkFcr+6coC1Bw5
	uu0a3hVDfCNRaxEQAcMeCm9YLXs2i1+JBw01sJIM98IFyoYiSFcLey7+0+rE4m/zRDg2ssZFCXd+m
	1cS78uIj7oxr8q8t5FmGQ9AgFamxzo8dQjrzsYjt6aCztoSAs+5eNIeMueCf0JSZLAmS2IcqQEDRO
	cmon4RBOmIK47DFMLQ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybu3-0000up-0N; Fri, 16 Aug 2019 13:04:23 +0000
Received: from [91.112.187.46] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hybqT-0006Wg-Ci; Fri, 16 Aug 2019 13:00:42 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: [PATCH 07/11] swiotlb-xen: provide a single page-coherent.h header
Date: Fri, 16 Aug 2019 15:00:09 +0200
Message-Id: <20190816130013.31154-8-hch@lst.de>
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

Merge the various page-coherent.h files into a single one that either
provides prototypes or stubs depending on the need for cache
maintainance.

For extra benefits alo include <xen/page-coherent.h> in the file
actually implementing the interfaces provided.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/include/asm/xen/page-coherent.h   |  2 --
 arch/arm/xen/mm.c                          |  1 +
 arch/arm64/include/asm/xen/page-coherent.h |  2 --
 arch/x86/include/asm/xen/page-coherent.h   | 22 ------------------
 drivers/xen/swiotlb-xen.c                  |  4 +---
 include/Kbuild                             |  2 +-
 include/xen/{arm => }/page-coherent.h      | 27 +++++++++++++++++++---
 7 files changed, 27 insertions(+), 33 deletions(-)
 delete mode 100644 arch/arm/include/asm/xen/page-coherent.h
 delete mode 100644 arch/arm64/include/asm/xen/page-coherent.h
 delete mode 100644 arch/x86/include/asm/xen/page-coherent.h
 rename include/xen/{arm => }/page-coherent.h (76%)

diff --git a/arch/arm/include/asm/xen/page-coherent.h b/arch/arm/include/asm/xen/page-coherent.h
deleted file mode 100644
index 27e984977402..000000000000
--- a/arch/arm/include/asm/xen/page-coherent.h
+++ /dev/null
@@ -1,2 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#include <xen/arm/page-coherent.h>
diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index a59980f1aa54..85482cdda1e5 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -15,6 +15,7 @@
 #include <xen/interface/grant_table.h>
 #include <xen/interface/memory.h>
 #include <xen/page.h>
+#include <xen/page-coherent.h>
 #include <xen/swiotlb-xen.h>
 
 #include <asm/cacheflush.h>
diff --git a/arch/arm64/include/asm/xen/page-coherent.h b/arch/arm64/include/asm/xen/page-coherent.h
deleted file mode 100644
index 27e984977402..000000000000
--- a/arch/arm64/include/asm/xen/page-coherent.h
+++ /dev/null
@@ -1,2 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#include <xen/arm/page-coherent.h>
diff --git a/arch/x86/include/asm/xen/page-coherent.h b/arch/x86/include/asm/xen/page-coherent.h
deleted file mode 100644
index 8ee33c5edded..000000000000
--- a/arch/x86/include/asm/xen/page-coherent.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _ASM_X86_XEN_PAGE_COHERENT_H
-#define _ASM_X86_XEN_PAGE_COHERENT_H
-
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
-static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir) { }
-
-static inline void xen_dma_sync_single_for_device(struct device *hwdev,
-		dma_addr_t handle, size_t size, enum dma_data_direction dir) { }
-
-#endif /* _ASM_X86_XEN_PAGE_COHERENT_H */
diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
index f9dd4cb6e4b3..7b23929854e7 100644
--- a/drivers/xen/swiotlb-xen.c
+++ b/drivers/xen/swiotlb-xen.c
@@ -31,12 +31,10 @@
 #include <linux/export.h>
 #include <xen/swiotlb-xen.h>
 #include <xen/page.h>
+#include <xen/page-coherent.h>
 #include <xen/xen-ops.h>
 #include <xen/hvc-console.h>
 
-#include <asm/dma-mapping.h>
-#include <asm/xen/page-coherent.h>
-
 #include <trace/events/swiotlb.h>
 /*
  * Used to do a quick range check in swiotlb_tbl_unmap_single and
diff --git a/include/Kbuild b/include/Kbuild
index c38f0d46b267..e2ae52ef9e1e 100644
--- a/include/Kbuild
+++ b/include/Kbuild
@@ -1189,7 +1189,6 @@ header-test-			+= video/vga.h
 header-test-			+= video/w100fb.h
 header-test-			+= xen/acpi.h
 header-test-			+= xen/arm/hypercall.h
-header-test-			+= xen/arm/page-coherent.h
 header-test-			+= xen/arm/page.h
 header-test-			+= xen/balloon.h
 header-test-			+= xen/events.h
@@ -1231,6 +1230,7 @@ header-test-			+= xen/interface/xen.h
 header-test-			+= xen/interface/xenpmu.h
 header-test-			+= xen/mem-reservation.h
 header-test-			+= xen/page.h
+header-test-			+= xen/page-coherent.h
 header-test-			+= xen/platform_pci.h
 header-test-			+= xen/swiotlb-xen.h
 header-test-			+= xen/xen-front-pgdir-shbuf.h
diff --git a/include/xen/arm/page-coherent.h b/include/xen/page-coherent.h
similarity index 76%
rename from include/xen/arm/page-coherent.h
rename to include/xen/page-coherent.h
index 4294a31305ca..7c32944de051 100644
--- a/include/xen/arm/page-coherent.h
+++ b/include/xen/page-coherent.h
@@ -1,10 +1,12 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _XEN_ARM_PAGE_COHERENT_H
-#define _XEN_ARM_PAGE_COHERENT_H
+#ifndef _XEN_PAGE_COHERENT_H
+#define _XEN_PAGE_COHERENT_H
 
 #include <linux/dma-mapping.h>
 #include <asm/page.h>
 
+#if defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE) || \
+    defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU)
 void __xen_dma_map_page(struct device *hwdev, struct page *page,
 	     dma_addr_t dev_addr, unsigned long offset, size_t size,
 	     enum dma_data_direction dir, unsigned long attrs);
@@ -71,5 +73,24 @@ static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
 	else
 		__xen_dma_unmap_page(hwdev, handle, size, dir, attrs);
 }
+#else
+static inline void xen_dma_map_page(struct device *hwdev, struct page *page,
+	     dma_addr_t dev_addr, unsigned long offset, size_t size,
+	     enum dma_data_direction dir, unsigned long attrs)
+{
+}
+static inline void xen_dma_unmap_page(struct device *hwdev, dma_addr_t handle,
+		size_t size, enum dma_data_direction dir, unsigned long attrs)
+{
+}
+static inline void xen_dma_sync_single_for_cpu(struct device *hwdev,
+		dma_addr_t handle, size_t size, enum dma_data_direction dir)
+{
+}
+static inline void xen_dma_sync_single_for_device(struct device *hwdev,
+		dma_addr_t handle, size_t size, enum dma_data_direction dir)
+{
+}
+#endif
 
-#endif /* _XEN_ARM_PAGE_COHERENT_H */
+#endif /* _XEN_PAGE_COHERENT_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
