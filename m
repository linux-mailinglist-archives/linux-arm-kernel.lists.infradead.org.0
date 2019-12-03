Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF1B10FD6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:11:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d9G0fy+ThKa2PuTy4QjrVx6NzSXfWSoBZIPS1K8fRf8=; b=VomnHPQudmtvKE
	FwKR61UYn8J+uAAYl+JqpqPR6gmX8Ssoz24C5xYprRdrkZRtYsN79O/w7ZP7VH6cJSF7fVqdNTWut
	ia9f+rhKF5vY91wt+BojQy87c5aV+ZosiqTq06X0pnKjpKr2tUDnJNJI1OenkvA1gw1ScXYyT1qmu
	fpyyA3QCgivruJJBENXAhvkQr/zUO+HX/0zmTLCT++t6wH0OiL17Y9ArKK5zmqGdfmQrsw9a42VoQ
	wU0xWGFJYdPWI/1KeaEtd+8wHurkhnHxDTd6CaxLClpj5+fRhuUbAptMcq9rXoR9Q5aUJLKfI7uLS
	qFI7/ymqutu9FrXjpKew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic71G-0000pr-SL; Tue, 03 Dec 2019 12:11:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic716-0000pJ-A6
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:10:58 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F49C20659;
 Tue,  3 Dec 2019 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575375056;
 bh=mM13KHxBngohOxFi/TTFeMlKRJJ80enDLR3A+PBKNYg=;
 h=From:To:Cc:Subject:Date:From;
 b=YJq54cNGOravzW6GKl2E/rJ1C/BJibT6H/beqkESWRLue1bUynPWXuNY7N+wW6/zH
 fP7avqLbUEo+Q7OMcHsTF0rM2UBgQF8zMof3ZaYih+p45LV7/+89Bz82xezXXTFoVx
 q4jsxxEKSoz9xBFXRYeOKrjzRBsG7dddYcExEwRk=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: mm: Fix initialisation of DMA zones on non-NUMA systems
Date: Tue,  3 Dec 2019 12:10:13 +0000
Message-Id: <20191203121013.9280-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_041056_391195_F8A11AF0 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 John Stultz <john.stultz@linaro.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

John reports that the recently merged commit 1a8e1cef7603 ("arm64: use
both ZONE_DMA and ZONE_DMA32") breaks the boot on his DB845C board:

  | Booting Linux on physical CPU 0x0000000000 [0x517f803c]
  | Linux version 5.4.0-mainline-10675-g957a03b9e38f
  | Machine model: Thundercomm Dragonboard 845c
  | [...]
  | Built 1 zonelists, mobility grouping on.  Total pages: -188245
  | Kernel command line: earlycon
  | firmware_class.path=/vendor/firmware/ androidboot.hardware=db845c
  | init=/init androidboot.boot_devices=soc/1d84000.ufshc
  | printk.devkmsg=on buildvariant=userdebug root=/dev/sda2
  | androidboot.bootdevice=1d84000.ufshc androidboot.serialno=c4e1189c
  | androidboot.baseband=sda
  | msm_drm.dsi_display0=dsi_lt9611_1080_video_display:
  | androidboot.slot_suffix=_a skip_initramfs rootwait ro init=/init
  |
  | <hangs indefinitely here>

This is because, when CONFIG_NUMA=n, zone_sizes_init() fails to handle
memblocks that fall entirely within the ZONE_DMA region and erroneously ends up
trying to add a negatively-sized region into the following ZONE_DMA32, which is
later interpreted as a large unsigned region by the core MM code.

Rework the non-NUMA implementation of zone_sizes_init() so that the start
address of the memblock being processed is adjusted according to the end of the
previous zone, which is then range-checked before updating the hole information
of subsequent zones.

Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Link: https://lore.kernel.org/lkml/CALAqxLVVcsmFrDKLRGRq7GewcW405yTOxG=KR3csVzQ6bXutkA@mail.gmail.com
Fixes: 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
Reported-by: John Stultz <john.stultz@linaro.org>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/mm/init.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

Compile-tested only.

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index be9481cdf3b9..b65dffdfb201 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -214,15 +214,14 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 {
 	struct memblock_region *reg;
 	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
-	unsigned long max_dma32 = min;
-	unsigned long __maybe_unused max_dma = min;
+	unsigned long __maybe_unused max_dma, max_dma32;
 
 	memset(zone_size, 0, sizeof(zone_size));
 
+	max_dma = max_dma32 = min;
 #ifdef CONFIG_ZONE_DMA
-	max_dma = PFN_DOWN(arm64_dma_phys_limit);
+	max_dma = max_dma32 = PFN_DOWN(arm64_dma_phys_limit);
 	zone_size[ZONE_DMA] = max_dma - min;
-	max_dma32 = max_dma;
 #endif
 #ifdef CONFIG_ZONE_DMA32
 	max_dma32 = PFN_DOWN(arm64_dma32_phys_limit);
@@ -236,25 +235,23 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 		unsigned long start = memblock_region_memory_base_pfn(reg);
 		unsigned long end = memblock_region_memory_end_pfn(reg);
 
-		if (start >= max)
-			continue;
 #ifdef CONFIG_ZONE_DMA
-		if (start < max_dma) {
-			unsigned long dma_end = min_not_zero(end, max_dma);
+		if (start >= min && start < max_dma) {
+			unsigned long dma_end = min(end, max_dma);
 			zhole_size[ZONE_DMA] -= dma_end - start;
+			start = dma_end;
 		}
 #endif
 #ifdef CONFIG_ZONE_DMA32
-		if (start < max_dma32) {
+		if (start >= max_dma && start < max_dma32) {
 			unsigned long dma32_end = min(end, max_dma32);
-			unsigned long dma32_start = max(start, max_dma);
-			zhole_size[ZONE_DMA32] -= dma32_end - dma32_start;
+			zhole_size[ZONE_DMA32] -= dma32_end - start;
+			start = dma32_end;
 		}
 #endif
-		if (end > max_dma32) {
+		if (start >= max_dma32 && start < max) {
 			unsigned long normal_end = min(end, max);
-			unsigned long normal_start = max(start, max_dma32);
-			zhole_size[ZONE_NORMAL] -= normal_end - normal_start;
+			zhole_size[ZONE_NORMAL] -= normal_end - start;
 		}
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
