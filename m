Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BD2134B26
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+ArpmF9w5EefC9+648ggV9/4RQDsQrvPhm99bLPcz38=; b=t/X8hWd9/qPGQ6d/3ETzsXcm6l
	YWTAUrsikpntjbjCCqmVzaHH+0zdmt2oCVZ95AQQzcQFZF5NShE6Q8G5tBEIkv+kSvgjpCd2hqPGo
	pqfMoJLFG10WyA2O8DKpA5/BXAo+MOmGaU5Uaj0rYS1DMRZX15YZFhdlzy3Q+CKtdo6BjeIkwhM5a
	e19OEcQLmMLW49JnjdrXNBmlJG2bRCaB7PC5uwOUyUTjMAp6H9F1XL2qUQqdExId0xKWTfJnqjcyU
	MZCWrk4YsiQjKxxhIcA/uU8d/WL0DyuPwZUG/3ezRRXCrEXlrRWirlki9NpcB3Mc5phlinuWCs35+
	t/dKcrjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGa5-00048y-Pe; Wed, 08 Jan 2020 19:01:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGWF-0007px-QC
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16FF81FB;
 Wed,  8 Jan 2020 10:57:27 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 876243F534;
 Wed,  8 Jan 2020 10:57:25 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 16/17] arm64: entry: move ARM64_ERRATUM_1418040 workaround to C
Date: Wed,  8 Jan 2020 18:56:33 +0000
Message-Id: <20200108185634.1163-17-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105727_977390_4AE59363 
X-CRM114-Status: GOOD (  11.86  )
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
shared state, and to make the code easier to debug and maintain, lets
move the workaround for ARM64_ERRATUM_1418040 to C.

The workaround requires us to disable EL0 access to the virtual counter,
and emulate these accesses when they are trapped. The assembly code is
only responsible for manipulating the trap control, which we can safely
do in C code.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry-common.c | 20 ++++++++++++++++++++
 arch/arm64/kernel/entry.S        | 15 ---------------
 2 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index 28b241cfd8f0..a7bebc3ce2a4 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -28,6 +28,8 @@
 #include <asm/stacktrace.h>
 #include <asm/sysreg.h>
 
+#include <clocksource/arm_arch_timer.h>
+
 static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
 {
 	unsigned long far = read_sysreg(far_el1);
@@ -136,6 +138,23 @@ static void notrace workaround_arm64_erratum_845719(void)
 }
 NOKPROBE_SYMBOL(workaround_arm64_erratum_845719);
 
+static void notrace workaround_arm64_erratum_1418040(void)
+{
+	unsigned long clear = 0, set = 0;
+
+	if (!IS_ENABLED(CONFIG_ARM64_ERRATUM_1418040) ||
+	    !cpus_have_const_cap(ARM64_WORKAROUND_1418040))
+		return;
+
+	if (is_compat_task())
+		clear = ARCH_TIMER_USR_VCT_ACCESS_EN;
+	else
+		set = ARCH_TIMER_USR_VCT_ACCESS_EN;
+
+	sysreg_clear_set(cntkctl_el1, clear, set);
+}
+NOKPROBE_SYMBOL(workaround_arm64_erratum_1418040);
+
 static void notrace el0_prepare_return(struct pt_regs *regs)
 {
 	unsigned long flags;
@@ -154,6 +173,7 @@ static void notrace el0_prepare_return(struct pt_regs *regs)
 	user_enter();
 
 	workaround_arm64_erratum_845719();
+	workaround_arm64_erratum_1418040();
 
 	stackleak_erase();
 }
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index a7340e551589..537b44c413df 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -288,21 +288,6 @@ alternative_else_nop_endif
 	.if	\el == 0
 	ldr	x23, [sp, #S_SP]		// load return stack pointer
 	msr	sp_el0, x23
-#ifdef CONFIG_ARM64_ERRATUM_1418040
-alternative_if_not ARM64_WORKAROUND_1418040
-	b	4f
-alternative_else_nop_endif
-	/*
-	 * if (x22.mode32 == cntkctl_el1.el0vcten)
-	 *     cntkctl_el1.el0vcten = ~cntkctl_el1.el0vcten
-	 */
-	mrs	x1, cntkctl_el1
-	eon	x0, x1, x22, lsr #3
-	tbz	x0, #1, 4f
-	eor	x1, x1, #2	// ARCH_TIMER_USR_VCT_ACCESS_EN
-	msr	cntkctl_el1, x1
-4:
-#endif
 	apply_ssbd 0, x0, x1
 	.endif
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
