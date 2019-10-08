Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62532CFDFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqcg7iYTgaQ1loVZvm7elU2mq+IsYJL58WdcvWma/gY=; b=DG7QbLVmPbPe5d
	qHntbvzaKXA/Wf/Nlri0H6ReV/5wDLR3nQtfwVSziE6OWFt3RyuQYaaKlGHAyYoqIPC/uNTLCDNrG
	CtSWvBx07gXB7KWFip4wDt17diJ501gAdXr5uLzPILJMZC3aPKeJpuAqkPF2dqviA7s4DTv7ozISn
	VfjBj4sI2en33WElQ10AiQ6NA/p5AN86jE6Cunu/g/bIxsc6zoNSqez5qaqznb86aPblmti5MUQ2p
	TGYyCccAhDF1JDen2kTY7Dn0S9CwiuNz/Olg/X/WOnqCvzDzBsjIR+GfUKo0rG3afv9u90WlK0KBD
	SzRpQgbcUdHuc/1xOApg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrfA-000233-Nm; Tue, 08 Oct 2019 15:44:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrbE-00075Q-3a
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id p7so3693271wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EvOKMd/OQko6enWWrnf5RTdaY5yC08L1IEeTVlfB1KE=;
 b=eAe1Nt3M59FCoKdNyg0/uPHL+NGZXHcXN7MIfxXpQDzCXGF1K9AagIcCW0BLviOjV/
 1dVitWM281Nq7nO6Ova3+aZ3rZAAhU91JAxi2YfQOETkBI4f9cTDAZa8E4lE2TI6seb6
 GWKGKJgdLbjv6IzR7MDktt+60cosWHE3d9UOxHdJtN0GIts7WVSD7eIGvNgA8HSbraRB
 zuh8rdNGzGqBgyacKSSFasxcGHoBjrc4Gu7eFV5UQM8CnrZnDGoQsivFdgyRvGGUu1ip
 1jzG2fOiw4FE5y1GdaiaGesCsLI8TuR/uCsKq+gvQjOidhHUyjFiT4UQQ+T7a7ZV/G6L
 K/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EvOKMd/OQko6enWWrnf5RTdaY5yC08L1IEeTVlfB1KE=;
 b=TojsIrAljVyjFNPSuvZtBdp/L31l1VFwU9gQXOPblMjhbN2T3LitCQqPAIhZHCVYcT
 vfp7tPiwLM5fDZz1j2PocmK8ECV9X25ymCb0M0z25b3ampiplgnkyvNeXnbNyrVzEkAp
 jzfQjvydegRlCOS53nTk/wqXo1vErniss21mhijZCa88Ui+qX8Vc5hv4tZthKAntAflE
 aDnzOQwLyXg6AlPVXecNNxJ0Fzz1/qDbEV1pccS6EHyOoCdAHtnV5/0TZztO9ipSrl6t
 URL3gtR6Y9u1GIx3S+8c3CgtupTb+mXk6graex0JjO5NxONiNafVwfc89L4O/2RMRHmA
 75Xw==
X-Gm-Message-State: APjAAAVUoZ5luq6oLIH6whAXAxXoZw7FgrK8yesrdBQGbBqlgZKi0Vew
 5/2DMylTTyQLch7BMA37h4dAT1ktdgmANQ==
X-Google-Smtp-Source: APXvYqyAVp/yCC6CfDd/QlOcq/K7/o2Dn7ydbghMakGo11tAwkKAo1IxUtKF+K1UR9L3BnYmIH5eHw==
X-Received: by 2002:a7b:cc97:: with SMTP id p23mr4442634wma.111.1570549230029; 
 Tue, 08 Oct 2019 08:40:30 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:28 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 16/16] arm64: Force SSBS on context switch
Date: Tue,  8 Oct 2019 17:39:30 +0200
Message-Id: <20191008153930.15386-17-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084032_277071_5DEA36FF 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Will Deacon <will@kernel.org>,
 stable@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

[ Upstream commit cbdf8a189a66001c36007bf0f5c975d0376c5c3a ]

On a CPU that doesn't support SSBS, PSTATE[12] is RES0.  In a system
where only some of the CPUs implement SSBS, we end-up losing track of
the SSBS bit across task migration.

To address this issue, let's force the SSBS bit on context switch.

Fixes: 8f04e8e6e29c ("arm64: ssbd: Add support for PSTATE.SSBS rather than trapping to EL3")
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
[will: inverted logic and added comments]
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/include/asm/processor.h | 14 ++++++++--
 arch/arm64/kernel/process.c        | 29 +++++++++++++++++++-
 2 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index ad208bd402f7..773ea8e0e442 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -177,6 +177,16 @@ static inline void start_thread_common(struct pt_regs *regs, unsigned long pc)
 	regs->pc = pc;
 }
 
+static inline void set_ssbs_bit(struct pt_regs *regs)
+{
+	regs->pstate |= PSR_SSBS_BIT;
+}
+
+static inline void set_compat_ssbs_bit(struct pt_regs *regs)
+{
+	regs->pstate |= PSR_AA32_SSBS_BIT;
+}
+
 static inline void start_thread(struct pt_regs *regs, unsigned long pc,
 				unsigned long sp)
 {
@@ -184,7 +194,7 @@ static inline void start_thread(struct pt_regs *regs, unsigned long pc,
 	regs->pstate = PSR_MODE_EL0t;
 
 	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
-		regs->pstate |= PSR_SSBS_BIT;
+		set_ssbs_bit(regs);
 
 	regs->sp = sp;
 }
@@ -203,7 +213,7 @@ static inline void compat_start_thread(struct pt_regs *regs, unsigned long pc,
 #endif
 
 	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
-		regs->pstate |= PSR_AA32_SSBS_BIT;
+		set_compat_ssbs_bit(regs);
 
 	regs->compat_sp = sp;
 }
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index ce99c58cd1f1..bc2226608e13 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -360,7 +360,7 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
 			childregs->pstate |= PSR_UAO_BIT;
 
 		if (arm64_get_ssbd_state() == ARM64_SSBD_FORCE_DISABLE)
-			childregs->pstate |= PSR_SSBS_BIT;
+			set_ssbs_bit(childregs);
 
 		p->thread.cpu_context.x19 = stack_start;
 		p->thread.cpu_context.x20 = stk_sz;
@@ -401,6 +401,32 @@ void uao_thread_switch(struct task_struct *next)
 	}
 }
 
+/*
+ * Force SSBS state on context-switch, since it may be lost after migrating
+ * from a CPU which treats the bit as RES0 in a heterogeneous system.
+ */
+static void ssbs_thread_switch(struct task_struct *next)
+{
+	struct pt_regs *regs = task_pt_regs(next);
+
+	/*
+	 * Nothing to do for kernel threads, but 'regs' may be junk
+	 * (e.g. idle task) so check the flags and bail early.
+	 */
+	if (unlikely(next->flags & PF_KTHREAD))
+		return;
+
+	/* If the mitigation is enabled, then we leave SSBS clear. */
+	if ((arm64_get_ssbd_state() == ARM64_SSBD_FORCE_ENABLE) ||
+	    test_tsk_thread_flag(next, TIF_SSBD))
+		return;
+
+	if (compat_user_mode(regs))
+		set_compat_ssbs_bit(regs);
+	else if (user_mode(regs))
+		set_ssbs_bit(regs);
+}
+
 /*
  * We store our current task in sp_el0, which is clobbered by userspace. Keep a
  * shadow copy so that we can restore this upon entry from userspace.
@@ -429,6 +455,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
 	contextidr_thread_switch(next);
 	entry_task_switch(next);
 	uao_thread_switch(next);
+	ssbs_thread_switch(next);
 
 	/*
 	 * Complete any pending TLB or cache maintenance on this CPU in case
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
