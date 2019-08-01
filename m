Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8546E7DDE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UE8kbtmnjOiZs0F07XijzN16TXMnmgNArhIqOBie5DM=; b=ofIX8nOXHim4yY
	SME2Z4r31L+uYc38XOIXqNpj+tJpCjb3o4wY+H7wvD7TYoPPYbUpVEYL3++8fNftxQJjoi7a+vE+Y
	V+fDC+B8CszyXxtQni+DAK+I1SE867QLSl7XvBbqumBSTrtWm0WSwRhGjpbF2LnjEnqLAgfTFacnM
	+mUTzzO34mhtysM3/NUHsu3wxvNyvfBS6wvVAi882NdnjZyjewll/EyrFOcsvY8c9FXB/mxG7qybK
	WejkxFzn6Q0S7YRGMOGMZ0Xr2BqJVyn7FeJco64s06q5IeTv8/DpdyaEVSNO0S+rK8r8QRBeciydD
	AUZTtV1yIqQ4Z1wb5bZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htC1t-0002FB-H5; Thu, 01 Aug 2019 14:26:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htC1j-0002Ek-DC
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:25:56 +0000
Received: from localhost.localdomain (NE2965lan1.rev.em-net.ne.jp
 [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4BCE20644;
 Thu,  1 Aug 2019 14:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564669554;
 bh=4uI90GYi9yRq4zRhGGKbOpk8dqc9HFRCRchQclkdDQg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o8jQcuVQq2uM/seMv0bjvykfZHeWTJ/L69KihibAss/QzLX9dz2s7yFJ8cPUodgs/
 a4VaxYDAXvL8YCCLDv7phYsvCHep7eE3yEjtXeEbbl76pX64hu5OIeGN/L5oONFcn4
 8P39ed2a0uqryhXuXT9OMfk1SacuZE/z58GHaoVw=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v4] arm64: kprobes: Recover pstate.D in single-step exception
 handler
Date: Thu,  1 Aug 2019 23:25:49 +0900
Message-Id: <156466954920.8995.14798868044005509434.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190801230818.72fadeea8a58d1f657179b30@kernel.org>
References: <20190801230818.72fadeea8a58d1f657179b30@kernel.org>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_072555_490233_00C32B37 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Matt Hart <matthew.hart@linaro.org>,
 linux-arm-kernel@lists.infradead.org, mhiramat@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kprobes manipulates the interrupted PSTATE for single step, and
doesn't restore it. Thus, if we put a kprobe where the pstate.D
(debug) masked, the mask will be cleared after the kprobe hits.

Moreover, in the most complicated case, this can lead a kernel
crash with below message when a nested kprobe hits.

[  152.118921] Unexpected kernel single-step exception at EL1

When the 1st kprobe hits, do_debug_exception() will be called.
At this point, debug exception (= pstate.D) must be masked (=1).
But if another kprobes hits before single-step of the first kprobe
(e.g. inside user pre_handler), it unmask the debug exception
(pstate.D = 0) and return.
Then, when the 1st kprobe setting up single-step, it saves current
DAIF, mask DAIF, enable single-step, and restore DAIF.
However, since "D" flag in DAIF is cleared by the 2nd kprobe, the
single-step exception happens soon after restoring DAIF.

This has been introduced by commit 7419333fa15e ("arm64: kprobe:
Always clear pstate.D in breakpoint exception handler")

To solve this issue, this stores all DAIF bits and restore it
after single stepping.

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Fixes: commit 7419333fa15e ("arm64: kprobe: Always clear pstate.D in breakpoint exception handler")
Reviewed-by: James Morse <james.morse@arm.com>
Tested-by: James Morse <james.morse@arm.com>
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
---
  Changes in v4:
   - Include daifflags.h directly so that kprobe can use DAIF_MASK always.
  Changes in v3:
   - Update patch description
   - move PSR_DAIF_MASK in daifflags.h
  Changes in v2:
   - Save and restore all DAIF flags.
   - Operate pstate directly and remove spsr_set_debug_flag().
---
 arch/arm64/include/asm/daifflags.h |    2 ++
 arch/arm64/kernel/probes/kprobes.c |   40 +++++-------------------------------
 2 files changed, 8 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/include/asm/daifflags.h b/arch/arm64/include/asm/daifflags.h
index 987926ed535e..063c964af705 100644
--- a/arch/arm64/include/asm/daifflags.h
+++ b/arch/arm64/include/asm/daifflags.h
@@ -13,6 +13,8 @@
 #define DAIF_PROCCTX		0
 #define DAIF_PROCCTX_NOIRQ	PSR_I_BIT
 #define DAIF_ERRCTX		(PSR_I_BIT | PSR_A_BIT)
+#define DAIF_MASK		(PSR_D_BIT | PSR_A_BIT | PSR_I_BIT | PSR_F_BIT)
+
 
 /* mask/save/unmask/restore all exceptions, including interrupts. */
 static inline void local_daif_mask(void)
diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index bd5dfffca272..c4452827419b 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -21,6 +21,7 @@
 #include <asm/ptrace.h>
 #include <asm/cacheflush.h>
 #include <asm/debug-monitors.h>
+#include <asm/daifflags.h>
 #include <asm/system_misc.h>
 #include <asm/insn.h>
 #include <linux/uaccess.h>
@@ -167,33 +168,6 @@ static void __kprobes set_current_kprobe(struct kprobe *p)
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
@@ -205,17 +179,17 @@ spsr_set_debug_flag(struct pt_regs *regs, int mask)
 static void __kprobes kprobes_save_local_irqflag(struct kprobe_ctlblk *kcb,
 						struct pt_regs *regs)
 {
-	kcb->saved_irqflag = regs->pstate;
+	kcb->saved_irqflag = regs->pstate & DAIF_MASK;
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
+	regs->pstate &= ~DAIF_MASK;
+	regs->pstate |= kcb->saved_irqflag;
 }
 
 static void __kprobes
@@ -252,8 +226,6 @@ static void __kprobes setup_singlestep(struct kprobe *p,
 
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
