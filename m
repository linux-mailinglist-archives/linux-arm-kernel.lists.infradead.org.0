Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D5C7C788
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrBeWseLJ4ocRi/Z26+bq6gvTyDLdGmx0kayB+Buir4=; b=W+a83HOknmumyi
	U4pUST3uE/PEZLvWKK+hl9fwg8i7zGJMv//7D1OsHxNhMZWnZnd09RnEJT1szQ75WwMyF4tZ38me9
	AkRmSTUt9QZV9nUKupApNyitHzSOQIjZ5Nq0TqV4ZTnFEHt3p9swR5YhKOag2AA3Jcfw8Rv1qLHnf
	wRO7A7iL8gJEBApB6gs9tm6USJJcJGNb1JYubhokwk4MIYSbJ/NzFtWjujDBmm5TLQBo7de9GklZj
	gfjM5iph9Au39QZ2ZuWtjop51GH0T9tS8sA5glOWnVbIFUqE8TcuFzCg7/Zfb6aiRO19szW/i5aNB
	LgQITEOFWwF9hvT8U52Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqtL-0004yu-Bt; Wed, 31 Jul 2019 15:51:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqph-0007ZV-LD; Wed, 31 Jul 2019 15:48:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A1F87AF95;
 Wed, 31 Jul 2019 15:48:02 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/8] arm64: rename variables used to calculate ZONE_DMA32's
 size
Date: Wed, 31 Jul 2019 17:47:45 +0200
Message-Id: <20190731154752.16557-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731154752.16557-1-nsaenzjulienne@suse.de>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_084806_038659_9E8F2361 
X-CRM114-Status: GOOD (  12.53  )
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
 frowand.list@gmail.com, eric@anholt.net, robh+dt@kernel.org,
 linux-rpi-kernel@lists.infradead.org, akpm@linux-foundation.org,
 will@kernel.org, nsaenzjulienne@suse.de, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let the name indicate that they are used to calculate ZONE_DMA32's size
as opposed to ZONE_DMA.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

 arch/arm64/mm/init.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 6112d6c90fa8..8956c22634dd 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -50,7 +50,7 @@
 s64 memstart_addr __ro_after_init = -1;
 EXPORT_SYMBOL(memstart_addr);
 
-phys_addr_t arm64_dma_phys_limit __ro_after_init;
+phys_addr_t arm64_dma32_phys_limit __ro_after_init;
 
 #ifdef CONFIG_KEXEC_CORE
 /*
@@ -168,7 +168,7 @@ static void __init reserve_elfcorehdr(void)
  * currently assumes that for memory starting above 4G, 32-bit devices will
  * use a DMA offset.
  */
-static phys_addr_t __init max_zone_dma_phys(void)
+static phys_addr_t __init max_zone_dma32_phys(void)
 {
 	phys_addr_t offset = memblock_start_of_DRAM() & GENMASK_ULL(63, 32);
 	return min(offset + (1ULL << 32), memblock_end_of_DRAM());
@@ -181,7 +181,7 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 	unsigned long max_zone_pfns[MAX_NR_ZONES]  = {0};
 
 #ifdef CONFIG_ZONE_DMA32
-	max_zone_pfns[ZONE_DMA32] = PFN_DOWN(arm64_dma_phys_limit);
+	max_zone_pfns[ZONE_DMA32] = PFN_DOWN(arm64_dma32_phys_limit);
 #endif
 	max_zone_pfns[ZONE_NORMAL] = max;
 
@@ -194,16 +194,16 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 {
 	struct memblock_region *reg;
 	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
-	unsigned long max_dma = min;
+	unsigned long max_dma32 = min;
 
 	memset(zone_size, 0, sizeof(zone_size));
 
 	/* 4GB maximum for 32-bit only capable devices */
 #ifdef CONFIG_ZONE_DMA32
-	max_dma = PFN_DOWN(arm64_dma_phys_limit);
-	zone_size[ZONE_DMA32] = max_dma - min;
+	max_dma32 = PFN_DOWN(arm64_dma32_phys_limit);
+	zone_size[ZONE_DMA32] = max_dma32 - min;
 #endif
-	zone_size[ZONE_NORMAL] = max - max_dma;
+	zone_size[ZONE_NORMAL] = max - max_dma32;
 
 	memcpy(zhole_size, zone_size, sizeof(zhole_size));
 
@@ -215,14 +215,14 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 			continue;
 
 #ifdef CONFIG_ZONE_DMA32
-		if (start < max_dma) {
-			unsigned long dma_end = min(end, max_dma);
+		if (start < max_dma32) {
+			unsigned long dma_end = min(end, max_dma32);
 			zhole_size[ZONE_DMA32] -= dma_end - start;
 		}
 #endif
-		if (end > max_dma) {
+		if (end > max_dma32) {
 			unsigned long normal_end = min(end, max);
-			unsigned long normal_start = max(start, max_dma);
+			unsigned long normal_start = max(start, max_dma32);
 			zhole_size[ZONE_NORMAL] -= normal_end - normal_start;
 		}
 	}
@@ -407,9 +407,9 @@ void __init arm64_memblock_init(void)
 
 	/* 4GB maximum for 32-bit only capable devices */
 	if (IS_ENABLED(CONFIG_ZONE_DMA32))
-		arm64_dma_phys_limit = max_zone_dma_phys();
+		arm64_dma32_phys_limit = max_zone_dma32_phys();
 	else
-		arm64_dma_phys_limit = PHYS_MASK + 1;
+		arm64_dma32_phys_limit = PHYS_MASK + 1;
 
 	reserve_crashkernel();
 
@@ -417,7 +417,7 @@ void __init arm64_memblock_init(void)
 
 	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
 
-	dma_contiguous_reserve(arm64_dma_phys_limit);
+	dma_contiguous_reserve(arm64_dma32_phys_limit);
 }
 
 void __init bootmem_init(void)
@@ -521,7 +521,7 @@ static void __init free_unused_memmap(void)
 void __init mem_init(void)
 {
 	if (swiotlb_force == SWIOTLB_FORCE ||
-	    max_pfn > (arm64_dma_phys_limit >> PAGE_SHIFT))
+	    max_pfn > (arm64_dma32_phys_limit >> PAGE_SHIFT))
 		swiotlb_init(1);
 	else
 		swiotlb_force = SWIOTLB_NO_FORCE;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
