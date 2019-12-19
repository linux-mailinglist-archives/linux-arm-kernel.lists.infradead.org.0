Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC3312655C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7uQhiVFNG2FUJ47ShadUlXmgs83gMW1pUhBzzJOW3Y=; b=K2tGLM4KAiVYBR
	iDZOuRy4+q2Whbh5dTl7Gu1chIQnfiEosjMJOInLV5eYfDdah7A3kIZFRfkx+pAKgFq9jzwekj6XD
	OUY1iYtMijko3uFiMsT9so6a3BQSmX6Mbq9TlX0qZCI6f0GdxphmZuJI0nbPJDhBzVxjLSc5872Qm
	FAbgrKmHYi9m0p/xMQeghEV3crque300KuHElpg3KaitOd7O2ONSaCTM0Lty6alQhWpMPBThAmi+b
	RrK+wV2+JPCA6q/05WUQaBmi9BTo3mqi7ddrIlv9x9FGzoZO2o7J7N+DFHXmYZp1jhaQi7wjrBsA/
	tS4lfR2iauRZ8u1BTbiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihxKe-0008Ax-7B; Thu, 19 Dec 2019 15:03:16 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxKW-0008A8-9H
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:03:10 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5D62768B20; Thu, 19 Dec 2019 16:03:00 +0100 (CET)
Date: Thu, 19 Dec 2019 16:02:59 +0100
From: Christoph Hellwig <hch@lst.de>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 2/2] arm: use swiotlb for bounce buffer on LPAE configs
Message-ID: <20191219150259.GA3003@lst.de>
References: <20190709142011.24984-1-hch@lst.de>
 <20190709142011.24984-3-hch@lst.de>
 <9bbd87c2-5b6c-069c-dd22-5105dc827428@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9bbd87c2-5b6c-069c-dd22-5105dc827428@ti.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_070308_626023_BD011A54 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

can you try the patch below (it will need to be split into two):

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index e822af0d9219..30b9c6786ce3 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -221,7 +221,8 @@ EXPORT_SYMBOL(arm_coherent_dma_ops);
 
 static int __dma_supported(struct device *dev, u64 mask, bool warn)
 {
-	unsigned long max_dma_pfn = min(max_pfn, arm_dma_pfn_limit);
+	unsigned long max_dma_pfn =
+		min_t(unsigned long, max_pfn, zone_dma_limit >> PAGE_SHIFT);
 
 	/*
 	 * Translate the device's DMA mask to a PFN limit.  This
diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index 3ef204137e73..dd0e169a1bb1 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -19,6 +19,7 @@
 #include <linux/gfp.h>
 #include <linux/memblock.h>
 #include <linux/dma-contiguous.h>
+#include <linux/dma-direct.h>
 #include <linux/sizes.h>
 #include <linux/stop_machine.h>
 #include <linux/swiotlb.h>
@@ -84,15 +85,6 @@ static void __init find_limits(unsigned long *min, unsigned long *max_low,
 phys_addr_t arm_dma_zone_size __read_mostly;
 EXPORT_SYMBOL(arm_dma_zone_size);
 
-/*
- * The DMA mask corresponding to the maximum bus address allocatable
- * using GFP_DMA.  The default here places no restriction on DMA
- * allocations.  This must be the smallest DMA mask in the system,
- * so a successful GFP_DMA allocation will always satisfy this.
- */
-phys_addr_t arm_dma_limit;
-unsigned long arm_dma_pfn_limit;
-
 static void __init arm_adjust_dma_zone(unsigned long *size, unsigned long *hole,
 	unsigned long dma_size)
 {
@@ -108,14 +100,14 @@ static void __init arm_adjust_dma_zone(unsigned long *size, unsigned long *hole,
 
 void __init setup_dma_zone(const struct machine_desc *mdesc)
 {
-#ifdef CONFIG_ZONE_DMA
-	if (mdesc->dma_zone_size) {
+	if (!IS_ENABLED(CONFIG_ZONE_DMA)) {
+		zone_dma_limit = ((phys_addr_t)~0);
+	} else if (mdesc->dma_zone_size) {
 		arm_dma_zone_size = mdesc->dma_zone_size;
-		arm_dma_limit = PHYS_OFFSET + arm_dma_zone_size - 1;
-	} else
-		arm_dma_limit = 0xffffffff;
-	arm_dma_pfn_limit = arm_dma_limit >> PAGE_SHIFT;
-#endif
+		zone_dma_limit = PHYS_OFFSET + arm_dma_zone_size - 1;
+	} else {
+		zone_dma_limit = 0xffffffff;
+	}
 }
 
 static void __init zone_sizes_init(unsigned long min, unsigned long max_low,
@@ -279,7 +271,7 @@ void __init arm_memblock_init(const struct machine_desc *mdesc)
 	early_init_fdt_scan_reserved_mem();
 
 	/* reserve memory for DMA contiguous allocations */
-	dma_contiguous_reserve(arm_dma_limit);
+	dma_contiguous_reserve(zone_dma_limit);
 
 	arm_memblock_steal_permitted = false;
 	memblock_dump_all();
diff --git a/arch/arm/mm/mm.h b/arch/arm/mm/mm.h
index 88c121ac14b3..7dbd77554273 100644
--- a/arch/arm/mm/mm.h
+++ b/arch/arm/mm/mm.h
@@ -82,14 +82,6 @@ extern __init void add_static_vm_early(struct static_vm *svm);
 
 #endif
 
-#ifdef CONFIG_ZONE_DMA
-extern phys_addr_t arm_dma_limit;
-extern unsigned long arm_dma_pfn_limit;
-#else
-#define arm_dma_limit ((phys_addr_t)~0)
-#define arm_dma_pfn_limit (~0ul >> PAGE_SHIFT)
-#endif
-
 extern phys_addr_t arm_lowmem_limit;
 
 void __init bootmem_init(void);
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index b65dffdfb201..7a7501acd763 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -441,7 +441,7 @@ void __init arm64_memblock_init(void)
 	early_init_fdt_scan_reserved_mem();
 
 	if (IS_ENABLED(CONFIG_ZONE_DMA)) {
-		zone_dma_bits = ARM64_ZONE_DMA_BITS;
+		zone_dma_limit = DMA_BIT_MASK(ARM64_ZONE_DMA_BITS);
 		arm64_dma_phys_limit = max_zone_phys(ARM64_ZONE_DMA_BITS);
 	}
 
diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
index 9488b63dfc87..337ace03d3f0 100644
--- a/arch/powerpc/mm/mem.c
+++ b/arch/powerpc/mm/mem.c
@@ -223,7 +223,7 @@ static int __init mark_nonram_nosave(void)
  * everything else. GFP_DMA32 page allocations automatically fall back to
  * ZONE_DMA.
  *
- * By using 31-bit unconditionally, we can exploit zone_dma_bits to inform the
+ * By using 31-bit unconditionally, we can exploit zone_dma_limit to inform the
  * generic DMA mapping code.  32-bit only devices (if not handled by an IOMMU
  * anyway) will take a first dip into ZONE_NORMAL and get otherwise served by
  * ZONE_DMA.
@@ -257,18 +257,20 @@ void __init paging_init(void)
 	printk(KERN_DEBUG "Memory hole size: %ldMB\n",
 	       (long int)((top_of_ram - total_ram) >> 20));
 
+#ifdef CONFIG_ZONE_DMA
 	/*
 	 * Allow 30-bit DMA for very limited Broadcom wifi chips on many
 	 * powerbooks.
 	 */
-	if (IS_ENABLED(CONFIG_PPC32))
-		zone_dma_bits = 30;
-	else
-		zone_dma_bits = 31;
-
-#ifdef CONFIG_ZONE_DMA
-	max_zone_pfns[ZONE_DMA]	= min(max_low_pfn,
-				      1UL << (zone_dma_bits - PAGE_SHIFT));
+	if (IS_ENABLED(CONFIG_PPC32)) {
+		zone_dma_limit = DMA_BIT_MASK(30);
+		max_zone_pfns[ZONE_DMA]	= min(max_low_pfn,
+					      1UL << (30 - PAGE_SHIFT));
+	} else {
+		zone_dma_limit = DMA_BIT_MASK(31);
+		max_zone_pfns[ZONE_DMA]	= min(max_low_pfn,
+					      1UL << (31 - PAGE_SHIFT));
+	}
 #endif
 	max_zone_pfns[ZONE_NORMAL] = max_low_pfn;
 #ifdef CONFIG_HIGHMEM
diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
index f0ce22220565..c403f61cb56b 100644
--- a/arch/s390/mm/init.c
+++ b/arch/s390/mm/init.c
@@ -118,7 +118,7 @@ void __init paging_init(void)
 
 	sparse_memory_present_with_active_regions(MAX_NUMNODES);
 	sparse_init();
-	zone_dma_bits = 31;
+	zone_dma_limit = DMA_BIT_MASK(31);
 	memset(max_zone_pfns, 0, sizeof(max_zone_pfns));
 	max_zone_pfns[ZONE_DMA] = PFN_DOWN(MAX_DMA_ADDRESS);
 	max_zone_pfns[ZONE_NORMAL] = max_low_pfn;
diff --git a/include/linux/dma-direct.h b/include/linux/dma-direct.h
index 24b8684aa21d..20d56d597506 100644
--- a/include/linux/dma-direct.h
+++ b/include/linux/dma-direct.h
@@ -6,7 +6,7 @@
 #include <linux/memblock.h> /* for min_low_pfn */
 #include <linux/mem_encrypt.h>
 
-extern unsigned int zone_dma_bits;
+extern phys_addr_t zone_dma_limit;
 
 #ifdef CONFIG_ARCH_HAS_PHYS_TO_DMA
 #include <asm/dma-direct.h>
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 6af7ae83c4ad..5ea1bed2ba6f 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -21,7 +21,7 @@
  * it for entirely different regions. In that case the arch code needs to
  * override the variable below for dma-direct to work properly.
  */
-unsigned int zone_dma_bits __ro_after_init = 24;
+phys_addr_t zone_dma_limit __ro_after_init = DMA_BIT_MASK(24);
 
 static void report_addr(struct device *dev, dma_addr_t dma_addr, size_t size)
 {
@@ -74,7 +74,7 @@ static gfp_t __dma_direct_optimal_gfp_mask(struct device *dev, u64 dma_mask,
 	 * Note that GFP_DMA32 and GFP_DMA are no ops without the corresponding
 	 * zones.
 	 */
-	if (*phys_limit <= DMA_BIT_MASK(zone_dma_bits))
+	if (*phys_limit <= zone_dma_limit)
 		return GFP_DMA;
 	if (*phys_limit <= DMA_BIT_MASK(32))
 		return GFP_DMA32;
@@ -483,7 +483,7 @@ int dma_direct_supported(struct device *dev, u64 mask)
 	u64 min_mask;
 
 	if (IS_ENABLED(CONFIG_ZONE_DMA))
-		min_mask = DMA_BIT_MASK(zone_dma_bits);
+		min_mask = zone_dma_limit;
 	else
 		min_mask = DMA_BIT_MASK(32);
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
