Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F30D046169
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDE8/Y8Ppo2/iDkficser4rxLSmicNf0eqVtfiVn1iw=; b=a7VUoi4kKBRugd
	GAJ0yLEscJU/hD236kgbyJBycrJJwHeyYivPYDECqDy6Fot25hkANM/XA+94ZcKt6iqzqIojEqu6Z
	p5hGoNJTKcausPeMLN/xpPz8nA/Me1TcOvCFHpo511VqDthYFPuVqx57nJyIL3W7nKNUzIWakuYrl
	6nDvwjSki/T+el+2cuaT7FYsl7dGMHs2xCiFwy1Hs5WEA+r/7R5zsD8gDQ4EbxTO/lYA6gUold/LW
	FzBZ8SVYL4kpqQjdcHkW283LjUr0M02hj7kM+0jeqBYADvq6u61E2tEkw7G+IsMh9OaKylYUfb5xt
	SNRdEcw4i9LuBrkP5iMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnTk-0000Un-7F; Fri, 14 Jun 2019 14:46:56 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnRt-00069J-D9; Fri, 14 Jun 2019 14:45:02 +0000
From: Christoph Hellwig <hch@lst.de>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH 7/7] arc: use the generic remapping allocator for coherent DMA
 allocations
Date: Fri, 14 Jun 2019 16:44:31 +0200
Message-Id: <20190614144431.21760-8-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614144431.21760-1-hch@lst.de>
References: <20190614144431.21760-1-hch@lst.de>
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
Cc: Jonas Bonn <jonas@southpole.se>, linux-xtensa@linux-xtensa.org,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 Helge Deller <deller@gmx.de>, linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Stafford Horne <shorne@gmail.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the code that sets up uncached PTEs with the generic vmap based
remapping code.  It also provides an atomic pool for allocations from
non-blocking context, which we not properly supported by the existing
arc code.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arc/Kconfig  |  2 ++
 arch/arc/mm/dma.c | 62 ++++++++---------------------------------------
 2 files changed, 12 insertions(+), 52 deletions(-)

diff --git a/arch/arc/Kconfig b/arch/arc/Kconfig
index 23e063df5d2c..cdad7d30ff1d 100644
--- a/arch/arc/Kconfig
+++ b/arch/arc/Kconfig
@@ -10,6 +10,7 @@ config ARC
 	def_bool y
 	select ARC_TIMERS
 	select ARCH_HAS_DMA_COHERENT_TO_PFN
+	select ARCH_HAS_DMA_PREP_COHERENT
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_SETUP_DMA_OPS
 	select ARCH_HAS_SYNC_DMA_FOR_CPU
@@ -19,6 +20,7 @@ config ARC
 	select BUILDTIME_EXTABLE_SORT
 	select CLONE_BACKWARDS
 	select COMMON_CLK
+	select DMA_DIRECT_REMAP
 	select GENERIC_ATOMIC64 if !ISA_ARCV2 || !(ARC_HAS_LL64 && ARC_HAS_LLSC)
 	select GENERIC_CLOCKEVENTS
 	select GENERIC_FIND_FIRST_BIT
diff --git a/arch/arc/mm/dma.c b/arch/arc/mm/dma.c
index 9832928f896d..0fa850709fac 100644
--- a/arch/arc/mm/dma.c
+++ b/arch/arc/mm/dma.c
@@ -11,46 +11,15 @@
 #include <asm/cacheflush.h>
 
 /*
- * ARCH specific callbacks for generic noncoherent DMA ops (dma/noncoherent.c)
+ * ARCH specific callbacks for generic noncoherent DMA ops
  *  - hardware IOC not available (or "dma-coherent" not set for device in DT)
  *  - But still handle both coherent and non-coherent requests from caller
  *
  * For DMA coherent hardware (IOC) generic code suffices
  */
-void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
-		gfp_t gfp, unsigned long attrs)
-{
-	unsigned long order = get_order(size);
-	struct page *page;
-	phys_addr_t paddr;
-	void *kvaddr;
-
-	/*
-	 * __GFP_HIGHMEM flag is cleared by upper layer functions
-	 * (in include/linux/dma-mapping.h) so we should never get a
-	 * __GFP_HIGHMEM here.
-	 */
-	BUG_ON(gfp & __GFP_HIGHMEM);
-
-	page = alloc_pages(gfp | __GFP_ZERO, order);
-	if (!page)
-		return NULL;
-
-	/* This is linear addr (0x8000_0000 based) */
-	paddr = page_to_phys(page);
-
-	*dma_handle = paddr;
-
-	/*
-	 * A coherent buffer needs MMU mapping to enforce non-cachability.
-	 * kvaddr is kernel Virtual address (0x7000_0000 based).
-	 */
-	kvaddr = ioremap_nocache(paddr, size);
-	if (kvaddr == NULL) {
-		__free_pages(page, order);
-		return NULL;
-	}
 
+void arch_dma_prep_coherent(struct page *page, size_t size)
+{
 	/*
 	 * Evict any existing L1 and/or L2 lines for the backing page
 	 * in case it was used earlier as a normal "cached" page.
@@ -61,24 +30,7 @@ void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 	 * Currently flush_cache_vmap nukes the L1 cache completely which
 	 * will be optimized as a separate commit
 	 */
-	dma_cache_wback_inv(paddr, size);
-	return kvaddr;
-}
-
-void arch_dma_free(struct device *dev, size_t size, void *vaddr,
-		dma_addr_t dma_handle, unsigned long attrs)
-{
-	phys_addr_t paddr = dma_handle;
-	struct page *page = virt_to_page(paddr);
-
-	iounmap((void __force __iomem *)vaddr);
-	__free_pages(page, get_order(size));
-}
-
-long arch_dma_coherent_to_pfn(struct device *dev, void *cpu_addr,
-		dma_addr_t dma_addr)
-{
-	return __phys_to_pfn(dma_addr);
+	dma_cache_wback_inv(page_to_phys(page), size);
 }
 
 /*
@@ -155,3 +107,9 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
 	dev_info(dev, "use %sncoherent DMA ops\n",
 		 dev->dma_coherent ? "" : "non");
 }
+
+static int __init atomic_pool_init(void)
+{
+	return dma_atomic_pool_init(GFP_KERNEL, pgprot_noncached(PAGE_KERNEL));
+}
+postcore_initcall(atomic_pool_init);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
