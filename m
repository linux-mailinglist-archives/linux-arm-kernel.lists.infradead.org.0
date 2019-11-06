Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFBAF1323
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:00:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7pokVFaGUQ36bgfKW1ZcjD6X8pRmidF5AlZwckZfF4=; b=IBBO9oxOrq5w5k
	qIiEmRZsN1sM/2uW3TmxU9jQHKqXFOah1dT+MaCdvEc3rudD4GULKbYgWtC5FU+RmcgRESVe2R3RK
	PMjAnbxFCe3sX40wUpZnXSXEY7NwrcwyHOvhlOjn4q8p6X56shRBOhuCTyDPYE6ceX+u6SGTJ923R
	jgXb/XQSklzc2O8BrYHpyA+HTW04vhry3ehXZcF+dBypLrKuKcifKzKm44X2QUaPX4HQhjXwM8I0R
	vNSM5O/+GiBdRkCd0YaeX7ufmFOQq0ByAj0iEO0PaRJs/PS22IYb4toIEtLExQ1wqL+hlaP1800wP
	ecArRWTvJttU+AJTBnHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSI7K-0005fz-Ec; Wed, 06 Nov 2019 10:00:46 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSI6f-0004AC-Fd
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:00:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9E23FB475;
 Wed,  6 Nov 2019 10:00:02 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: mm: reserve CMA and crashkernel in ZONE_DMA32
Date: Wed,  6 Nov 2019 10:59:45 +0100
Message-Id: <20191106095945.22933-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106095945.22933-1-nsaenzjulienne@suse.de>
References: <20191106095945.22933-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_020005_679804_3E672A50 
X-CRM114-Status: GOOD (  11.39  )
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
Cc: Will Deacon <will@kernel.org>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the introduction of ZONE_DMA in arm64 we moved the default CMA and
crashkernel reservation into that area. This caused a regression on big
machines that need big CMA and crashkernel reservations. Note that
ZONE_DMA is only 1GB big.

Restore the previous behavior as the wide majority of devices are OK
with reserving these in ZONE_DMA32. The ones that need them in ZONE_DMA
will configure it explicitly.

Reported-by: Qian Cai <cai@lca.pw>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm64/mm/init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 580d1052ac34..8385d3c0733f 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -88,7 +88,7 @@ static void __init reserve_crashkernel(void)
 
 	if (crash_base == 0) {
 		/* Current arm64 boot protocol requires 2MB alignment */
-		crash_base = memblock_find_in_range(0, ARCH_LOW_ADDRESS_LIMIT,
+		crash_base = memblock_find_in_range(0, arm64_dma32_phys_limit,
 				crash_size, SZ_2M);
 		if (crash_base == 0) {
 			pr_warn("cannot allocate crashkernel (size:0x%llx)\n",
@@ -454,7 +454,7 @@ void __init arm64_memblock_init(void)
 
 	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
 
-	dma_contiguous_reserve(arm64_dma_phys_limit ? : arm64_dma32_phys_limit);
+	dma_contiguous_reserve(arm64_dma32_phys_limit);
 }
 
 void __init bootmem_init(void)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
