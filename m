Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BF027A73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lUb/g5TgXcotKNVEBNlGnCs6Hfct43MpdcXrd49igUM=; b=I1lJob5LUsSLSm
	NgmCZRRCH8YFZu1tAjLCiyCBKyoxAZcQJaFVl26eToMVZZliFvW23KAglzBwAnXl6Y9lPEZmn9QFl
	COdN0pjIl5StkiEOyHfDWGdOrx3YNwSAENSQaZeSh4qsuYRVZk5ZxUrMcOu63/9HPmlq/LqFXVdhH
	D0rEXKBuNtQUsapFvuCkEszlZFJOnUzKIZt0PtHUKJpRFQYPnYIXLIOsTMlfID2DeMozAANGmnvJA
	D0lYQpLVPcz79dZnjcjcLhVhXA0Kd/Cn9NknNt1HzHN05AiDlPHFufxs+0YpFjtyFbWm6pVRzT7uD
	HKRslte7w0MOaNIpzqGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkvH-0005Od-8A; Thu, 23 May 2019 10:26:07 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkuC-0003LK-P4
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:25:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41BB9341;
 Thu, 23 May 2019 03:25:00 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7894E3F718;
 Thu, 23 May 2019 03:24:59 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Handle erratum 1418040 as a superset of erratum 1188873
Date: Thu, 23 May 2019 11:24:50 +0100
Message-Id: <20190523102450.207532-1-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_032501_156242_89FA93EE 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We already mitigate erratum 1188873 affecting Cortex-A76 and
Neoverse-N1 r0p0 to r2p0. It turns out that revisions r0p0 to
r3p1 of the same cores are affected by erratum 1418040, which
has the same workaround as 1188873.

Let's expand the range of affected revisions to match 1418040,
and repaint all occurences of 1188873 to 1418040. Whilst we're
there, do a bit of reformating in silicon-errata.txt and drop
a now unnecessary dependency on ARM_ARCH_TIMER_OOL_WORKAROUND.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 Documentation/arm64/silicon-errata.txt |  8 ++++----
 arch/arm64/Kconfig                     |  7 +++----
 arch/arm64/include/asm/cpucaps.h       |  2 +-
 arch/arm64/kernel/cpu_errata.c         | 24 ++++++++++++++----------
 arch/arm64/kernel/entry.S              |  4 ++--
 5 files changed, 24 insertions(+), 21 deletions(-)

diff --git a/Documentation/arm64/silicon-errata.txt b/Documentation/arm64/silicon-errata.txt
index 68d9b74fd751..94fa1941b84c 100644
--- a/Documentation/arm64/silicon-errata.txt
+++ b/Documentation/arm64/silicon-errata.txt
@@ -58,13 +58,13 @@ stable kernels.
 | ARM            | Cortex-A72      | #853709         | N/A                         |
 | ARM            | Cortex-A73      | #858921         | ARM64_ERRATUM_858921        |
 | ARM            | Cortex-A55      | #1024718        | ARM64_ERRATUM_1024718       |
-| ARM            | Cortex-A76      | #1188873        | ARM64_ERRATUM_1188873       |
+| ARM            | Cortex-A76      | #1188873,1418040| ARM64_ERRATUM_1418040       |
 | ARM            | Cortex-A76      | #1165522        | ARM64_ERRATUM_1165522       |
 | ARM            | Cortex-A76      | #1286807        | ARM64_ERRATUM_1286807       |
-| ARM            | Neoverse-N1     | #1188873        | ARM64_ERRATUM_1188873       |
-| ARM            | MMU-500         | #841119,#826419 | N/A                         |
+| ARM            | Neoverse-N1     | #1188873,1418040| ARM64_ERRATUM_1418040       |
+| ARM            | MMU-500         | #841119,826419  | N/A                         |
 |                |                 |                 |                             |
-| Cavium         | ThunderX ITS    | #22375, #24313  | CAVIUM_ERRATUM_22375        |
+| Cavium         | ThunderX ITS    | #22375,24313    | CAVIUM_ERRATUM_22375        |
 | Cavium         | ThunderX ITS    | #23144          | CAVIUM_ERRATUM_23144        |
 | Cavium         | ThunderX GICv3  | #23154          | CAVIUM_ERRATUM_23154        |
 | Cavium         | ThunderX Core   | #27456          | CAVIUM_ERRATUM_27456        |
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 4780eb7af842..f6a105b953ed 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -475,16 +475,15 @@ config ARM64_ERRATUM_1024718
 
 	  If unsure, say Y.
 
-config ARM64_ERRATUM_1188873
+config ARM64_ERRATUM_1418040
 	bool "Cortex-A76/Neoverse-N1: MRC read following MRRC read of specific Generic Timer in AArch32 might give incorrect result"
 	default y
 	depends on COMPAT
-	select ARM_ARCH_TIMER_OOL_WORKAROUND
 	help
 	  This option adds a workaround for ARM Cortex-A76/Neoverse-N1
-	  erratum 1188873.
+	  errata 1188873 and 1418040.
 
-	  Affected Cortex-A76/Neoverse-N1 cores (r0p0, r1p0, r2p0) could
+	  Affected Cortex-A76/Neoverse-N1 cores (r0p0 to r3p1) could
 	  cause register corruption when accessing the timer registers
 	  from AArch32 userspace.
 
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index defdc67d9ab4..5e10515c819e 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -53,7 +53,7 @@
 #define ARM64_HAS_STAGE2_FWB			32
 #define ARM64_HAS_CRC32				33
 #define ARM64_SSBS				34
-#define ARM64_WORKAROUND_1188873		35
+#define ARM64_WORKAROUND_1418040		35
 #define ARM64_HAS_SB				36
 #define ARM64_WORKAROUND_1165522		37
 #define ARM64_HAS_ADDRESS_AUTH_ARCH		38
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index e88d4e7bdfc7..266cc0a1be38 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -682,12 +682,16 @@ static const struct midr_range workaround_clean_cache[] = {
 };
 #endif
 
-#ifdef CONFIG_ARM64_ERRATUM_1188873
-static const struct midr_range erratum_1188873_list[] = {
-	/* Cortex-A76 r0p0 to r2p0 */
-	MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 2, 0),
-	/* Neoverse-N1 r0p0 to r2p0 */
-	MIDR_RANGE(MIDR_NEOVERSE_N1, 0, 0, 2, 0),
+#ifdef CONFIG_ARM64_ERRATUM_1418040
+/*
+ * - 1188873 affects r0p0 to r2p0
+ * - 1418040 affects r0p0 to r3p1
+ */
+static const struct midr_range erratum_1418040_list[] = {
+	/* Cortex-A76 r0p0 to r3p1 */
+	MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 3, 1),
+	/* Neoverse-N1 r0p0 to r3p1 */
+	MIDR_RANGE(MIDR_NEOVERSE_N1, 0, 0, 3, 1),
 	{},
 };
 #endif
@@ -809,11 +813,11 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		.matches = has_ssbd_mitigation,
 		.midr_range_list = arm64_ssb_cpus,
 	},
-#ifdef CONFIG_ARM64_ERRATUM_1188873
+#ifdef CONFIG_ARM64_ERRATUM_1418040
 	{
-		.desc = "ARM erratum 1188873",
-		.capability = ARM64_WORKAROUND_1188873,
-		ERRATA_MIDR_RANGE_LIST(erratum_1188873_list),
+		.desc = "ARM erratum 1418040",
+		.capability = ARM64_WORKAROUND_1418040,
+		ERRATA_MIDR_RANGE_LIST(erratum_1418040_list),
 	},
 #endif
 #ifdef CONFIG_ARM64_ERRATUM_1165522
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 1a7811b7e3c4..cd0c7af8e4a8 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -336,8 +336,8 @@ alternative_if ARM64_WORKAROUND_845719
 alternative_else_nop_endif
 #endif
 3:
-#ifdef CONFIG_ARM64_ERRATUM_1188873
-alternative_if_not ARM64_WORKAROUND_1188873
+#ifdef CONFIG_ARM64_ERRATUM_1418040
+alternative_if_not ARM64_WORKAROUND_1418040
 	b	4f
 alternative_else_nop_endif
 	/*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
