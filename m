Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 154EF6BF29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 17:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYPZq+zNrLhshy9rqSqH6fsCNQWcQtzcvFAbxK2uHlw=; b=B77UwBkhvclfNx
	RziII+bZiQUxOE7Y1A1vQd43RpJUGf4GvbchSadHFeS2SKui0MDBV2gxsZAcO6bi0Byq+6GZ5zza4
	ygSLz5xGWdzb4IJo2MOvvigfTJ3ebHVfN7dLHbL51O9s1xM3sz07EV/cx+r3Xe0jnDLK/Mn29mhU1
	1tl4998fa9jsapFYQA/206mN93N6Z8jfzOtcOfsfekl6PvJceNkfAc2TBoAiEoHG/wGAA9o3sPagu
	LNdEw4yWM7NbBXIgvYbWvdjDACwIOb+OUM9wfFcr6Botu9QzuVephFSbkp8umfBfu7A0kL6boaPzW
	O4nVfb6xgmbshgyq3tXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnluz-0004I7-Cj; Wed, 17 Jul 2019 15:32:33 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnluG-0003jn-HG
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 15:31:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DEE36B039;
 Wed, 17 Jul 2019 15:31:45 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC 2/4] arm64: mm: parse dma-ranges in order to better estimate
 arm64_dma_phys_limit
Date: Wed, 17 Jul 2019 17:31:33 +0200
Message-Id: <20190717153135.15507-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190717153135.15507-1-nsaenzjulienne@suse.de>
References: <20190717153135.15507-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_083148_864991_03F6D060 
X-CRM114-Status: GOOD (  17.10  )
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, catalin.marinas@arm.com,
 phil@raspberrypi.org, robin.murphy@arm.com, Jisheng.Zhang@synaptics.com,
 mbrugger@suse.com, will@kernel.org, hch@lst.de,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The dma physical limit has so far been calculated based on the memory
size and the assumption that dma would be at least able to address the
first 4 GB. This turned out no to be true with the Raspberry Pi 4
which, on it's main interconnect, can only address the first GB of
memory, even though it might have up to 4 GB.

With the current miscalculated dma physical limit the contiguous memory
reserve is located in an inaccessible area for most of the board's
devices.

To solve this we now scan the device tree for the 'dma-ranges' property
on the root or interconnect nodes, which allows us to calculate the
lowest common denominator dma physical limit. If no dma-ranges is
available, we'll default to the old scheme.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm64/mm/init.c | 61 +++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 57 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 6112d6c90fa8..5708adf0db52 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -163,14 +163,67 @@ static void __init reserve_elfcorehdr(void)
 {
 }
 #endif /* CONFIG_CRASH_DUMP */
+
+static int __init early_init_dt_scan_dma_ranges(unsigned long node,
+		const char *uname, int depth, void *data)
+{
+	phys_addr_t *dma_phys_limit = data;
+	u64 phys_addr, dma_addr, size;
+	int dma_addr_cells;
+	const __be32 *reg;
+	const void *prop;
+	int len;
+
+	/* We keep looking if this isn't the root node or an interconnect */
+	if (!(depth == 0 ||
+	    (depth == 1 && of_flat_dt_is_compatible(node, "simple-bus"))))
+		return 0;
+
+	prop = of_get_flat_dt_prop(node, "#address-cells", NULL);
+	if (prop)
+		dma_addr_cells = be32_to_cpup(prop);
+	else
+		dma_addr_cells = 1; /* arm64's default addr_cell size */
+
+	reg = of_get_flat_dt_prop(node, "dma-ranges", &len);
+	if (!reg ||
+	    len < (dma_addr_cells + dt_root_addr_cells + dt_root_size_cells))
+		return 0;
+
+	dma_addr = dt_mem_next_cell(dma_addr_cells, &reg);
+	phys_addr = dt_mem_next_cell(dt_root_addr_cells, &reg);
+	size = dt_mem_next_cell(dt_root_size_cells, &reg);
+
+	/* We're in ZONE_DMA32 */
+	if (size > (1ULL << 32))
+		size = 1ULL << 32;
+
+	if (*dma_phys_limit > (phys_addr + size))
+		*dma_phys_limit = phys_addr + size;
+
+	return 0;
+}
+
 /*
- * Return the maximum physical address for ZONE_DMA32 (DMA_BIT_MASK(32)). It
- * currently assumes that for memory starting above 4G, 32-bit devices will
- * use a DMA offset.
+ * Return the maximum physical address for ZONE_DMA32. It currently assumes
+ * that for memory starting above 4G, 32-bit devices will use a DMA offset.
  */
 static phys_addr_t __init max_zone_dma_phys(void)
 {
-	phys_addr_t offset = memblock_start_of_DRAM() & GENMASK_ULL(63, 32);
+	phys_addr_t dma_phys_limit = ~0;
+	phys_addr_t offset;
+
+	/*
+	 * We walk the whole fdt looking for nodes with dma-ranges, calculate
+	 * the max_zone_dma_phys for them and keep going. We end-up getting the
+	 * lowest common denominator of all the matches.
+	 */
+	of_scan_flat_dt(early_init_dt_scan_dma_ranges, &dma_phys_limit);
+	if (dma_phys_limit != ~0)
+		return dma_phys_limit;
+
+	/* If no dma-ranges property was found we try to infer the value */
+	offset = memblock_start_of_DRAM() & GENMASK_ULL(63, 32);
 	return min(offset + (1ULL << 32), memblock_end_of_DRAM());
 }
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
