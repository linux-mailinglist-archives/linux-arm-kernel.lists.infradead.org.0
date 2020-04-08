Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85711A2123
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7u1eViLpdvDyW/qmjFiFU84TO3QS0CH55EihHUwm2s=; b=jDkuHR8PLrBu2D
	0Iofp6rNZmA0bkEXZjufgH24EyS/7s2O0t7kGuxnXOzjxkLZM/1cHszWGNFVgDurzSst8Is6aMK8y
	4/Ct6Cn6eutiAXSU8z/fWftzPJDm9ftwooeu/PKBs9kQRBK02hFImrOX28Pf/suXzjJKdQtmYK7L7
	NchiHCuEDMh75iGl/+3onJkGY+ft+fVfPostRZOvKPaimnRUEnXB6dkcHe1P9IjOEQ+NGOAnMDQQx
	Qz65KbwVlkI8GyYEtWQO3PapbW1XJdD0SwBpD/8xLkQ0ZYFNSUp1JKC3+ze4c1DSwNPh3QSoDU73b
	g1dHxGLXWYfmJPbQxNdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9Om-0006MN-5x; Wed, 08 Apr 2020 12:01:40 +0000
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9My-0001wY-DB; Wed, 08 Apr 2020 11:59:49 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Subject: [PATCH 06/28] powerpc: remove __ioremap_at and __iounmap_at
Date: Wed,  8 Apr 2020 13:59:04 +0200
Message-Id: <20200408115926.1467567-7-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These helpers are only used for remapping the ISA I/O base.  Replace
the mapping side with a remap_isa_range helper in isa-bridge.c that
hard codes all the known arguments, and just remove __iounmap_at in
favour of open coding it in the only caller.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/powerpc/include/asm/io.h    |  8 -----
 arch/powerpc/kernel/isa-bridge.c | 28 +++++++++++++-----
 arch/powerpc/mm/ioremap_64.c     | 50 --------------------------------
 3 files changed, 21 insertions(+), 65 deletions(-)

diff --git a/arch/powerpc/include/asm/io.h b/arch/powerpc/include/asm/io.h
index 71f1c5d69839..4fdbb9e45dd7 100644
--- a/arch/powerpc/include/asm/io.h
+++ b/arch/powerpc/include/asm/io.h
@@ -699,10 +699,6 @@ static inline void iosync(void)
  *
  * * iounmap undoes such a mapping and can be hooked
  *
- * * __ioremap_at (and the pending __iounmap_at) are low level functions to
- *   create hand-made mappings for use only by the PCI code and cannot
- *   currently be hooked. Must be page aligned.
- *
  * * __ioremap_caller is the same as above but takes an explicit caller
  *   reference rather than using __builtin_return_address(0)
  *
@@ -729,10 +725,6 @@ void __iomem *do_ioremap(phys_addr_t pa, phys_addr_t offset, unsigned long size,
 extern void __iomem *__ioremap_caller(phys_addr_t, unsigned long size,
 				      pgprot_t prot, void *caller);
 
-extern void __iomem * __ioremap_at(phys_addr_t pa, void *ea,
-				   unsigned long size, pgprot_t prot);
-extern void __iounmap_at(void *ea, unsigned long size);
-
 /*
  * When CONFIG_PPC_INDIRECT_PIO is set, we use the generic iomap implementation
  * which needs some additional definitions here. They basically allow PIO
diff --git a/arch/powerpc/kernel/isa-bridge.c b/arch/powerpc/kernel/isa-bridge.c
index 773671b512df..2257d24e6a26 100644
--- a/arch/powerpc/kernel/isa-bridge.c
+++ b/arch/powerpc/kernel/isa-bridge.c
@@ -18,6 +18,7 @@
 #include <linux/init.h>
 #include <linux/mm.h>
 #include <linux/notifier.h>
+#include <linux/vmalloc.h>
 
 #include <asm/processor.h>
 #include <asm/io.h>
@@ -38,6 +39,22 @@ EXPORT_SYMBOL_GPL(isa_bridge_pcidev);
 #define ISA_SPACE_MASK 0x1
 #define ISA_SPACE_IO 0x1
 
+static void remap_isa_base(phys_addr_t pa, unsigned long size)
+{
+	WARN_ON_ONCE(ISA_IO_BASE & ~PAGE_MASK);
+	WARN_ON_ONCE(pa & ~PAGE_MASK);
+	WARN_ON_ONCE(size & ~PAGE_MASK);
+
+	if (slab_is_available()) {
+		if (ioremap_page_range(ISA_IO_BASE, ISA_IO_BASE + size, pa,
+				pgprot_noncached(PAGE_KERNEL)))
+			unmap_kernel_range(ISA_IO_BASE, size);
+	} else {
+		early_ioremap_range(ISA_IO_BASE, pa, size,
+				pgprot_noncached(PAGE_KERNEL));
+	}
+}
+
 static void pci_process_ISA_OF_ranges(struct device_node *isa_node,
 				      unsigned long phb_io_base_phys)
 {
@@ -105,15 +122,13 @@ static void pci_process_ISA_OF_ranges(struct device_node *isa_node,
 	if (size > 0x10000)
 		size = 0x10000;
 
-	__ioremap_at(phb_io_base_phys, (void *)ISA_IO_BASE,
-		     size, pgprot_noncached(PAGE_KERNEL));
+	remap_isa_base(phb_io_base_phys, size);
 	return;
 
 inval_range:
 	printk(KERN_ERR "no ISA IO ranges or unexpected isa range, "
 	       "mapping 64k\n");
-	__ioremap_at(phb_io_base_phys, (void *)ISA_IO_BASE,
-		     0x10000, pgprot_noncached(PAGE_KERNEL));
+	remap_isa_base(phb_io_base_phys, 0x10000);
 }
 
 
@@ -248,8 +263,7 @@ void __init isa_bridge_init_non_pci(struct device_node *np)
 	 * and map it
 	 */
 	isa_io_base = ISA_IO_BASE;
-	__ioremap_at(pbase, (void *)ISA_IO_BASE,
-		     size, pgprot_noncached(PAGE_KERNEL));
+	remap_isa_base(pbase, size);
 
 	pr_debug("ISA: Non-PCI bridge is %pOF\n", np);
 }
@@ -297,7 +311,7 @@ static void isa_bridge_remove(void)
 	isa_bridge_pcidev = NULL;
 
 	/* Unmap the ISA area */
-	__iounmap_at((void *)ISA_IO_BASE, 0x10000);
+	unmap_kernel_range(ISA_IO_BASE, 0x10000);
 }
 
 /**
diff --git a/arch/powerpc/mm/ioremap_64.c b/arch/powerpc/mm/ioremap_64.c
index 50a99d9684f7..ba5cbb0d66bd 100644
--- a/arch/powerpc/mm/ioremap_64.c
+++ b/arch/powerpc/mm/ioremap_64.c
@@ -4,56 +4,6 @@
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
 
-/**
- * Low level function to establish the page tables for an IO mapping
- */
-void __iomem *__ioremap_at(phys_addr_t pa, void *ea, unsigned long size, pgprot_t prot)
-{
-	int ret;
-	unsigned long va = (unsigned long)ea;
-
-	/* We don't support the 4K PFN hack with ioremap */
-	if (pgprot_val(prot) & H_PAGE_4K_PFN)
-		return NULL;
-
-	if ((ea + size) >= (void *)IOREMAP_END) {
-		pr_warn("Outside the supported range\n");
-		return NULL;
-	}
-
-	WARN_ON(pa & ~PAGE_MASK);
-	WARN_ON(((unsigned long)ea) & ~PAGE_MASK);
-	WARN_ON(size & ~PAGE_MASK);
-
-	if (slab_is_available()) {
-		ret = ioremap_page_range(va, va + size, pa, prot);
-		if (ret)
-			unmap_kernel_range(va, size);
-	} else {
-		ret = early_ioremap_range(va, pa, size, prot);
-	}
-
-	if (ret)
-		return NULL;
-
-	return (void __iomem *)ea;
-}
-EXPORT_SYMBOL(__ioremap_at);
-
-/**
- * Low level function to tear down the page tables for an IO mapping. This is
- * used for mappings that are manipulated manually, like partial unmapping of
- * PCI IOs or ISA space.
- */
-void __iounmap_at(void *ea, unsigned long size)
-{
-	WARN_ON(((unsigned long)ea) & ~PAGE_MASK);
-	WARN_ON(size & ~PAGE_MASK);
-
-	unmap_kernel_range((unsigned long)ea, size);
-}
-EXPORT_SYMBOL(__iounmap_at);
-
 void __iomem *__ioremap_caller(phys_addr_t addr, unsigned long size,
 			       pgprot_t prot, void *caller)
 {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
