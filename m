Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5EC134B25
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:01:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=32TDCvFvLCLBPrUjOI05i7Y2nM3qqJWN6hhmKIMv6Gc=; b=ZwF58NnxmuyHkSkCLBE8YnzMpl
	oGMrTN7zoDM+Q1FKa3JEdbCcnzRhPhe+Mt5NV3AU7k+yHI2/dqlqvUYx6yKVtOBf3+A7bkvs+tTj6
	tOrW8YTOatm26MJ1Talif9Wfx4pGAT8Hp+8iA9ljUGQ24E265ri6uKMiMmKrw+QCgH10D+Lif38uT
	8zdOVdXuA47AcZaUP4/zVkRhHRobOCxcDx2CHdepicsgWgZUdIXbp4TnU37bcvT4GF2Z2wcSh++er
	V2wNqsJwk+Ov2iKNXT3CN/cBdIONB291y1nDZO/7se4AGTwwKUvjUEenchQBPitTfGwqv40e98rce
	3DqDMRBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGZj-0003oq-6t; Wed, 08 Jan 2020 19:01:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGWB-0007mN-GZ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09FC6DA7;
 Wed,  8 Jan 2020 10:57:23 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7A1D03F534;
 Wed,  8 Jan 2020 10:57:21 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 15/17] arm64: entry: move ARM64_ERRATUM_845719 workaround to C
Date: Wed,  8 Jan 2020 18:56:32 +0000
Message-Id: <20200108185634.1163-16-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105723_634049_A0884FB7 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, keescook@chromium.org, maz@kernel.org,
 broonie@kernel.org, labbott@redhat.com, robin.murphy@arm.com,
 julien.thierry.kdev@gmail.com, alex.popov@linux.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To make the entry code less of a rats nest of overlapping labels and
shared state, and to make the code easier to debug and maintain, let's
move the workaround for ARM64_ERRATUM_845719 to C.

The workaround requires us to perform a write to CONTEXTIDR_EL1 at
AArch64 EL1 before retuning to an AArch32 EL0 task. There are no
additional requirements on the state of the CPU, or on subsequent
instructions prior to the ERET, so this can safely be performed in C
code.

As with the assembly version, we preserve the value of CONTEXTIDR if
CONFIG_PID_IN_CONTEXTIDR is selected.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry-common.c | 17 +++++++++++++++++
 arch/arm64/kernel/entry.S        | 14 --------------
 2 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index fa568284e73f..28b241cfd8f0 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -121,6 +121,21 @@ static void notrace el0_prepare_entry(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(el0_prepare_entry);
 
+static void notrace workaround_arm64_erratum_845719(void)
+{
+	unsigned long val = 0;
+
+	if (!IS_ENABLED(CONFIG_ARM64_ERRATUM_845719) ||
+	    !cpus_have_const_cap(ARM64_WORKAROUND_845719) ||
+	    !is_compat_task())
+		return;
+
+	if (IS_ENABLED(CONFIG_PID_IN_CONTEXTIDR))
+		val = read_sysreg(contextidr_el1);
+	write_sysreg(val, contextidr_el1);
+}
+NOKPROBE_SYMBOL(workaround_arm64_erratum_845719);
+
 static void notrace el0_prepare_return(struct pt_regs *regs)
 {
 	unsigned long flags;
@@ -138,6 +153,8 @@ static void notrace el0_prepare_return(struct pt_regs *regs)
 
 	user_enter();
 
+	workaround_arm64_erratum_845719();
+
 	stackleak_erase();
 }
 NOKPROBE_SYMBOL(el0_prepare_return);
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index d84718d272e9..a7340e551589 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -288,20 +288,6 @@ alternative_else_nop_endif
 	.if	\el == 0
 	ldr	x23, [sp, #S_SP]		// load return stack pointer
 	msr	sp_el0, x23
-	tst	x22, #PSR_MODE32_BIT		// native task?
-	b.eq	3f
-
-#ifdef CONFIG_ARM64_ERRATUM_845719
-alternative_if ARM64_WORKAROUND_845719
-#ifdef CONFIG_PID_IN_CONTEXTIDR
-	mrs	x29, contextidr_el1
-	msr	contextidr_el1, x29
-#else
-	msr contextidr_el1, xzr
-#endif
-alternative_else_nop_endif
-#endif
-3:
 #ifdef CONFIG_ARM64_ERRATUM_1418040
 alternative_if_not ARM64_WORKAROUND_1418040
 	b	4f
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
