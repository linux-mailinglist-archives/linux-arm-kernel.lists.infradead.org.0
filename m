Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 994E56FAAB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OooeCChSNvf+LIjyNbqaavNcIjoBYKIX1oj7cnn0EnA=; b=N2Wo274e1l37bL
	AG8J/ZwhhKXfmC1rS/LVYzfa+7P40Hw6BaYUfJZXvh1Z3Ak9tmpyTF0obCR3QHTWDfOOoffBESxMn
	jTRd6lvUkhKKeRc/R2B0UEn3wrE3BupR3Cv7bT4W/RQLGIsPLqWtg7wCI5w0iXcVnI9QtceVPtNTo
	sw34xpo0tCxodV0VwmtVG0wM7IRVgDe7kFLQwTmDtEVwsAd/fCuRrxihiiR/szWVV3iIHaOT9X0Yf
	7hlkgzxUU6EkapLLTICr5M/Sodp7tBBBHS7XOg2uAlUxOY6M7qdLr48yqx1tPop84yuKTRgTQW+AC
	UIQZpuw4kVEqAm95L5Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpT4B-0000GR-Tk; Mon, 22 Jul 2019 07:49:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpT3p-0000CJ-UC
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:48:43 +0000
Received: from localhost.localdomain (NE2965lan1.rev.em-net.ne.jp
 [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3AC992199C;
 Mon, 22 Jul 2019 07:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563781721;
 bh=H5CHHV0UF6FlAaSn8LBWqoHakOj3NGUjwAazp2QNsg0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xCerKnIQda79YHizJQQ3sqd4KdulwPP+ezU/7K0K22tjp+BxN4/X/WtJfhZVMVIgS
 rKjwbndl43anxmk5ZZcm3Y4OV1exJ/F8iP3kEvWAdWKACHILMCBzCdVvrwYNiQw7XM
 Rj2E51xE+Jv1hOADVQNIexarnOIrBeJV3ZoYEN1g=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 1/4] arm64: kprobes: Recover pstate.D in single-step
 exception handler
Date: Mon, 22 Jul 2019 16:48:36 +0900
Message-Id: <156378171555.12011.2511666394591527888.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <156378170297.12011.17385386326930403235.stgit@devnote2>
References: <156378170297.12011.17385386326930403235.stgit@devnote2>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_004842_143738_22EDCD7F 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 Matt Hart <matthew.hart@linaro.org>, linux-arm-kernel@lists.infradead.org,
 mhiramat@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64, if a nested kprobes hit, it can crash the kernel with below
error message.

[  152.118921] Unexpected kernel single-step exception at EL1

This is because commit 7419333fa15e ("arm64: kprobe: Always clear
pstate.D in breakpoint exception handler") unmask pstate.D for
doing single step but does not recover it after single step in
the nested kprobes. That is correct *unless* any nested kprobes
(single-stepping) runs inside other kprobes user handler.

When the 1st kprobe hits, do_debug_exception() will be called. At this
point, debug exception (= pstate.D) must be masked (=1). When the 2nd
 (nested) kprobe is hit before single-step of the first kprobe, it
unmask debug exception (pstate.D = 0) and return.
Then, when the 1st kprobe setting up single-step, it saves current
DAIF, mask DAIF, enable single-step, and restore DAIF.
However, since "D" flag in DAIF is cleared by the 2nd kprobe, the
single-step exception happens soon after restoring DAIF.

To solve this issue, this stores all DAIF bits and restore it
after single stepping.

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Fixes: commit 7419333fa15e ("arm64: kprobe: Always clear pstate.D in breakpoint exception handler")
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
---
  Changes in v2:
   - Save and restore all DAIF flags.
   - Operate pstate directly and remove spsr_set_debug_flag().
---
 arch/arm64/kernel/probes/kprobes.c |   41 ++++++------------------------------
 1 file changed, 7 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index bd5dfffca272..348e02b799a2 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -29,6 +29,8 @@
 
 #include "decode-insn.h"
 
+#define PSR_DAIF_MASK	(PSR_D_BIT | PSR_A_BIT | PSR_I_BIT | PSR_F_BIT)
+
 DEFINE_PER_CPU(struct kprobe *, current_kprobe) = NULL;
 DEFINE_PER_CPU(struct kprobe_ctlblk, kprobe_ctlblk);
 
@@ -167,33 +169,6 @@ static void __kprobes set_current_kprobe(struct kprobe *p)
 	__this_cpu_write(current_kprobe, p);
 }
 
-/*
- * When PSTATE.D is set (masked), then software step exceptions can not be
- * generated.
- * SPSR's D bit shows the value of PSTATE.D immediately before the
- * exception was taken. PSTATE.D is set while entering into any exception
- * mode, however software clears it for any normal (none-debug-exception)
- * mode in the exception entry. Therefore, when we are entering into kprobe
- * breakpoint handler from any normal mode then SPSR.D bit is already
- * cleared, however it is set when we are entering from any debug exception
- * mode.
- * Since we always need to generate single step exception after a kprobe
- * breakpoint exception therefore we need to clear it unconditionally, when
- * we become sure that the current breakpoint exception is for kprobe.
- */
-static void __kprobes
-spsr_set_debug_flag(struct pt_regs *regs, int mask)
-{
-	unsigned long spsr = regs->pstate;
-
-	if (mask)
-		spsr |= PSR_D_BIT;
-	else
-		spsr &= ~PSR_D_BIT;
-
-	regs->pstate = spsr;
-}
-
 /*
  * Interrupts need to be disabled before single-step mode is set, and not
  * reenabled until after single-step mode ends.
@@ -205,17 +180,17 @@ spsr_set_debug_flag(struct pt_regs *regs, int mask)
 static void __kprobes kprobes_save_local_irqflag(struct kprobe_ctlblk *kcb,
 						struct pt_regs *regs)
 {
-	kcb->saved_irqflag = regs->pstate;
+	kcb->saved_irqflag = regs->pstate & PSR_DAIF_MASK;
 	regs->pstate |= PSR_I_BIT;
+	/* Unmask PSTATE.D for enabling software step exceptions. */
+	regs->pstate &= ~PSR_D_BIT;
 }
 
 static void __kprobes kprobes_restore_local_irqflag(struct kprobe_ctlblk *kcb,
 						struct pt_regs *regs)
 {
-	if (kcb->saved_irqflag & PSR_I_BIT)
-		regs->pstate |= PSR_I_BIT;
-	else
-		regs->pstate &= ~PSR_I_BIT;
+	regs->pstate &= ~PSR_DAIF_MASK;
+	regs->pstate |= kcb->saved_irqflag;
 }
 
 static void __kprobes
@@ -252,8 +227,6 @@ static void __kprobes setup_singlestep(struct kprobe *p,
 
 		set_ss_context(kcb, slot);	/* mark pending ss */
 
-		spsr_set_debug_flag(regs, 0);
-
 		/* IRQs and single stepping do not mix well. */
 		kprobes_save_local_irqflag(kcb, regs);
 		kernel_enable_single_step(regs);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
