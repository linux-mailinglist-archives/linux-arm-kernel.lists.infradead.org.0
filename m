Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52B66C8D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 07:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8pFMRjAkRfAC2pTFZ4eQjh6ZeclJ7BkaGZNwwsXKo4=; b=mfEqWtH9h/1jXY
	quhRt5XRcz2hgfgfPyzdtWayVFlUYyzhhnw9aeuPoWDCJ7YTbFXY2OR64qNWgroesDhzRSg0SD5jy
	pdUNEH3ZaBianVGcT13/QERlipJIcmrovej1ftFJeaT8XRTGOPlP1yvdrfxh1xttRe9k1FpNczUnu
	viKxzVD58W/HJCxa9Pn1FOoh8dbyGsj1UNSyOsvgi4VxnuRgSdQOwdqEuequqoA4L25fvn2JWvfkM
	8WHxugvVwBzsZAuhE0VZU2NhtQ90JuCViRFdokktaRcTI8ee06Ul0bPy5tGhbwekfkZxxlu0adzRp
	GeLuFxjFLJQ/5/i5WDVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzDA-0007Jp-I3; Thu, 18 Jul 2019 05:44:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzCg-0007B1-S9
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 05:43:44 +0000
Received: from localhost.localdomain (115.42.148.210.bf.2iij.net
 [210.148.42.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F2A02077C;
 Thu, 18 Jul 2019 05:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563428622;
 bh=0SNEK6gGwQn1OWea04NP26kwWDvWXL2LRO0v9+iQPRw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FChIDXQr68auUYmY3OgLk0ibepVLmrXp3Sw70Mq/TXZPW8cJmf7mYY6vV/ZGh0zF7
 whI67PGrR0cy6dMai+4+696YLsdqTuovUYa4DcZoXLe2Yn7w9lsNxN8P61Z7xUuMdK
 /7pBZwRxT+hpWsJqJyLkosQ72efnQsS+uQmo7yts=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH 1/3] arm64: kprobes: Recover pstate.D in single-step exception
 handler
Date: Thu, 18 Jul 2019 14:43:37 +0900
Message-Id: <156342861775.8565.9122725195458920037.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <156342860634.8565.14804606041960884732.stgit@devnote2>
References: <156342860634.8565.14804606041960884732.stgit@devnote2>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_224343_270125_5141D65A 
X-CRM114-Status: GOOD (  13.05  )
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
pstate.D in breakpoint exception handler") clears pstate.D always in
the nested kprobes. That is correct *unless* any nested kprobes
(single-stepping) runs inside other kprobes (including kprobes in
 user handler).

When the 1st kprobe hits, do_debug_exception() will be called. At this
point, debug exception (= pstate.D) must be masked (=1). When the 2nd
 (nested) kprobe is hit before single-step of the first kprobe, it
modifies debug exception clear (pstate.D = 0).
Then, when the 1st kprobe setting up single-step, it saves current
DAIF, mask DAIF, enable single-step, and restore DAIF.
However, since "D" flag in DAIF is cleared by the 2nd kprobe, the
single-step exception happens soon after restoring DAIF.

To solve this issue, this refers saved pstate register to check the
previous pstate.D and recover it if needed.

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Fixes: commit 7419333fa15e ("arm64: kprobe: Always clear pstate.D in breakpoint exception handler")
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 arch/arm64/kernel/probes/kprobes.c |    9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index bd5dfffca272..6e1dc0bb4c82 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -201,12 +201,14 @@ spsr_set_debug_flag(struct pt_regs *regs, int mask)
  * interrupt occurrence in the period of exception return and  start of
  * out-of-line single-step, that result in wrongly single stepping
  * into the interrupt handler.
+ * This also controls debug flag, so that we can refer the saved pstate.
  */
 static void __kprobes kprobes_save_local_irqflag(struct kprobe_ctlblk *kcb,
 						struct pt_regs *regs)
 {
 	kcb->saved_irqflag = regs->pstate;
 	regs->pstate |= PSR_I_BIT;
+	spsr_set_debug_flag(regs, 0);
 }
 
 static void __kprobes kprobes_restore_local_irqflag(struct kprobe_ctlblk *kcb,
@@ -216,6 +218,10 @@ static void __kprobes kprobes_restore_local_irqflag(struct kprobe_ctlblk *kcb,
 		regs->pstate |= PSR_I_BIT;
 	else
 		regs->pstate &= ~PSR_I_BIT;
+
+	/* Recover pstate.D mask if needed */
+	if (kcb->saved_irqflag & PSR_D_BIT)
+		spsr_set_debug_flag(regs, 1);
 }
 
 static void __kprobes
@@ -245,15 +251,12 @@ static void __kprobes setup_singlestep(struct kprobe *p,
 		kcb->kprobe_status = KPROBE_HIT_SS;
 	}
 
-
 	if (p->ainsn.api.insn) {
 		/* prepare for single stepping */
 		slot = (unsigned long)p->ainsn.api.insn;
 
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
