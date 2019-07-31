Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6D27C78B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/yl7mu5fy6eSVKv291HovWcdcIi3BsFKQbBhsYcz+Y=; b=FOA61gozxaTkLm
	dX45fNWCfeMWw6eHj1UdfHbmlcB8AhJ4DmYQwJ4SP6YydQNbvbBPMEa642V6qVlKqv6K3b+nJyFve
	k0AyjNGepwnv4lOiuwbUq7VuI1FalSf/c2FzIQfL1NeAGPwQRf7iMBIScexjG0MnhBBPtqvl6z9xp
	rofw9ENwT4b0c4H8Vu06yslY3nyz9GE6CtNk2H9YM1wG/YwhutkHPyh9DLpO7g9fAFqHMdRw/bcxQ
	MPWLQcksuU6KHk+1Bm5pHa3z6Gf7agKe6nlfO0BmOiV1yyT5unHVOBuGkExjQTC3IC6BTWvC0uV7A
	C3qAnhQTww6ZIpI95VYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqtX-0005Dz-0e; Wed, 31 Jul 2019 15:52:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqpk-0007eJ-3d; Wed, 31 Jul 2019 15:48:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A068AAFA5;
 Wed, 31 Jul 2019 15:48:06 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 Will Deacon <will@kernel.org>
Subject: [PATCH 5/8] arm64: use ZONE_DMA on DMA addressing limited devices
Date: Wed, 31 Jul 2019 17:47:48 +0200
Message-Id: <20190731154752.16557-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731154752.16557-1-nsaenzjulienne@suse.de>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_084808_469017_A2EA7AA3 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: phill@raspberryi.org, f.fainelli@gmail.com, mbrugger@suse.com,
 linux-kernel@vger.kernel.org, eric@anholt.net, robh+dt@kernel.org,
 linux-rpi-kernel@lists.infradead.org, akpm@linux-foundation.org,
 frowand.list@gmail.com, nsaenzjulienne@suse.de, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far all arm64 devices have supported 32 bit DMA masks for their
peripherals. This is not true anymore for the Raspberry Pi 4. Most of
it's peripherals can only address the first GB or memory of a total of
up to 4 GB.

This goes against ZONE_DMA32's original intent, and breaks other
subsystems as it's expected for ZONE_DMA32 to be addressable with a 32
bit mask. So it was decided to use ZONE_DMA for this specific case.

Devices with with 32 bit DMA addressing support will still bypass
ZONE_DMA but those who don't will create both zones. ZONE_DMA will
contain the memory addressable by all the SoC's devices and ZONE_DMA32
the rest of the 32 bit addressable memory.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

 arch/arm64/Kconfig   |  4 ++++
 arch/arm64/mm/init.c | 38 ++++++++++++++++++++++++++++++++------
 2 files changed, 36 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3adcec05b1f6..a9fd71d3bc8e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -266,6 +266,10 @@ config GENERIC_CSUM
 config GENERIC_CALIBRATE_DELAY
 	def_bool y
 
+config ZONE_DMA
+	bool "Support DMA zone" if EXPERT
+	default y
+
 config ZONE_DMA32
 	bool "Support DMA32 zone" if EXPERT
 	default y
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 1c4ffabbe1cb..f5279ef85756 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -50,6 +50,13 @@
 s64 memstart_addr __ro_after_init = -1;
 EXPORT_SYMBOL(memstart_addr);
 
+/*
+ * We might create both a ZONE_DMA and ZONE_DMA32. ZONE_DMA is needed if there
+ * are periferals unable to address the first naturally aligned 4GB of ram.
+ * ZONE_DMA32 will be expanded to cover the rest of that memory. If such
+ * limitations doesn't exist only ZONE_DMA32 is created.
+ */
+phys_addr_t arm64_dma_phys_limit __ro_after_init;
 phys_addr_t arm64_dma32_phys_limit __ro_after_init;
 
 #ifdef CONFIG_KEXEC_CORE
@@ -193,6 +200,9 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 {
 	unsigned long max_zone_pfns[MAX_NR_ZONES]  = {0};
 
+#ifdef CONFIG_ZONE_DMA
+	max_zone_pfns[ZONE_DMA] = PFN_DOWN(arm64_dma_phys_limit);
+#endif
 #ifdef CONFIG_ZONE_DMA32
 	max_zone_pfns[ZONE_DMA32] = PFN_DOWN(arm64_dma32_phys_limit);
 #endif
@@ -207,14 +217,19 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 {
 	struct memblock_region *reg;
 	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
+	unsigned long max_dma = PFN_DOWN(arm64_dma_phys_limit);
 	unsigned long max_dma32 = min;
 
 	memset(zone_size, 0, sizeof(zone_size));
 
+#ifdef CONFIG_ZONE_DMA
+	if (max_dma)
+		zone_size[ZONE_DMA] = max_dma - min;
+#endif
 	/* 4GB maximum for 32-bit only capable devices */
 #ifdef CONFIG_ZONE_DMA32
 	max_dma32 = PFN_DOWN(arm64_dma32_phys_limit);
-	zone_size[ZONE_DMA32] = max_dma32 - min;
+	zone_size[ZONE_DMA32] = max_dma32 - max_dma - min;
 #endif
 	zone_size[ZONE_NORMAL] = max - max_dma32;
 
@@ -226,11 +241,17 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 
 		if (start >= max)
 			continue;
-
+#ifdef CONFIG_ZONE_DMA
+		if (start < max_dma) {
+			unsigned long dma_end = min_not_zero(end, max_dma);
+			zhole_size[ZONE_DMA] -= dma_end - start;
+		}
+#endif
 #ifdef CONFIG_ZONE_DMA32
 		if (start < max_dma32) {
-			unsigned long dma_end = min(end, max_dma32);
-			zhole_size[ZONE_DMA32] -= dma_end - start;
+			unsigned long dma32_end = min(end, max_dma32);
+			unsigned long dma32_start = max(start, max_dma);
+			zhole_size[ZONE_DMA32] -= dma32_end - dma32_start;
 		}
 #endif
 		if (end > max_dma32) {
@@ -418,6 +439,11 @@ void __init arm64_memblock_init(void)
 
 	early_init_fdt_scan_reserved_mem();
 
+	if (IS_ENABLED(CONFIG_ZONE_DMA))
+		arm64_dma_phys_limit = max_zone_dma_phys();
+	else
+		arm64_dma_phys_limit = 0;
+
 	/* 4GB maximum for 32-bit only capable devices */
 	if (IS_ENABLED(CONFIG_ZONE_DMA32))
 		arm64_dma32_phys_limit = max_zone_dma32_phys();
@@ -430,7 +456,7 @@ void __init arm64_memblock_init(void)
 
 	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
 
-	dma_contiguous_reserve(arm64_dma32_phys_limit);
+	dma_contiguous_reserve(arm64_dma_phys_limit ? : arm64_dma32_phys_limit);
 }
 
 void __init bootmem_init(void)
@@ -533,7 +559,7 @@ static void __init free_unused_memmap(void)
  */
 void __init mem_init(void)
 {
-	if (swiotlb_force == SWIOTLB_FORCE ||
+	if (swiotlb_force == SWIOTLB_FORCE || arm64_dma_phys_limit ||
 	    max_pfn > (arm64_dma32_phys_limit >> PAGE_SHIFT))
 		swiotlb_init(1);
 	else
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
