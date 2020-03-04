Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4830178D8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 10:36:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=08NacR+NV6PqF/dCfYclSE8GMGaEcuWkXO3hlzwD7B0=; b=GF8NfLcVHsmRsA
	ji/qZd4nM+KwR4m3TtJBFSFwwIwPe2pm2mWg6kSEOaJyuzVJTp3JbNpBZiyu0dY2jmKyO6H4tciqm
	dK4nmhdH3+vTDKK+piAWdKM4hn7A5PMT4P+hOSeRGNbUG0G0bbdv2ViI5MkM+HNuu7E+YnE4L1qEa
	wjKwKrsnkkpfrMsBSE/JZfIO4w/QC89zv8BTnnbJdbXQFtO/q3nT+ScoMK9KsWXOkyFhCjIo4pZhY
	EmO8k4lz6RQQ3vPKGtx2VjtqXC8J/dlyXfjDe5vakNIQUbkUI2113K8TjwJecE82gihBa0d+cydmS
	vk0QbregTmj9sYsuPSmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9QS7-00077I-Gd; Wed, 04 Mar 2020 09:36:31 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9QRy-00076h-Qq
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 09:36:24 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id 17DBA5FBB0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  4 Mar 2020 10:36:22 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: reduce trampoline data alignment
Date: Wed,  4 Mar 2020 11:36:21 +0200
Message-Id: <20200304093621.191138-1-remi@remlab.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_013623_020379_FB2906FC 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Remi Denis-Courmont <remi.denis.courmont@huawei.com>

The trampoline data, currently consisting of two relocated pointers,
must be within a single page. However, there are no needs for it to
start a page.

This reduces the alignment to 16 bytes, which ensures that the 16 bytes
of data are in the same page.

This patch assumes that the page alignment was just a quick and dirty
trick to not worry about fixmap. If however the page alignment was
meant to present a data page with no other data than the trampoline's,
then both the current code and this patch are wrong.

Signed-off-by: Remi Denis-Courmont <remi.denis.courmont@huawei.com>
---
 arch/arm64/kernel/entry.S | 6 +++---
 arch/arm64/mm/mmu.c       | 5 ++---
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index ae99bf8bb0ae..97d6f8d15b3b 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -805,9 +805,9 @@ alternative_else_nop_endif
 2:
 	tramp_map_kernel	x30
 #ifdef CONFIG_RANDOMIZE_BASE
-	adr	x30, tramp_vectors + PAGE_SIZE
+	adrp	x30, tramp_vectors + PAGE_SIZE
 alternative_insn isb, nop, ARM64_WORKAROUND_QCOM_FALKOR_E1003
-	ldr	x30, [x30]
+	ldr	x30, [x30, #:lo12:__entry_tramp_data_start]
 #else
 	ldr	x30, =vectors
 #endif
@@ -858,7 +858,7 @@ END(tramp_exit_compat)
 	.popsection				// .entry.tramp.text
 #ifdef CONFIG_RANDOMIZE_BASE
 	.pushsection ".rodata", "a"
-	.align PAGE_SHIFT
+	.align	4
 	.globl	__entry_tramp_data_start
 __entry_tramp_data_start:
 	.quad	vectors
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 05ec8e5f1436..03e35572fb1e 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -599,9 +599,8 @@ static int __init map_entry_trampoline(void)
 	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE)) {
 		extern char __entry_tramp_data_start[];
 
-		__set_fixmap(FIX_ENTRY_TRAMP_DATA,
-			     __pa_symbol(__entry_tramp_data_start),
-			     PAGE_KERNEL_RO);
+		pa_start = __pa_symbol(__entry_tramp_data_start) & PAGE_MASK;
+		__set_fixmap(FIX_ENTRY_TRAMP_DATA, pa_start, PAGE_KERNEL_RO);
 	}
 
 	return 0;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
