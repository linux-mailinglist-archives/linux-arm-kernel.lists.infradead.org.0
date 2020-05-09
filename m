Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705571CC1E8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 15:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5Nr2GpvXh7t+S8Oz0swisaXgnk9pbsNSIH9MxOf8a4=; b=Iws345sPxCgTwe
	nV6/NekPYJlNMqFM1R4FI1Rg8Q6rvKLlSYQEeaS1rzsK8XVJxKhGYa7sSo4uHJ7MIUUS99RDookJr
	KELx16IxvE8RhVGKzBmIjDHwZ/61G6pPyGjZA0S8ch1YRNDNXOSbbahr/SUVWw1MUCB59Mr8FCUZj
	d2GQnvLaUiP7NKAyaKl+Ou50u0JRtwe3n9BAT0/4+6p3Y7VHImbp7Pqnb4hfBl/wt2Qo6sudDrUAM
	zY+ZzIX5qeAmJ+iNfYTwGNK4XP6Qh1tNt6gh0QRZoD08NwI0MRXdBSf1mT3RKq4G0YH1oYW8WduLE
	yK1KW0bPxGMFA7GTljFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXPrW-0007k4-63; Sat, 09 May 2020 13:49:54 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXPr4-0007YZ-QB
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 13:49:28 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3DF4ECD001CE41F9D8CA;
 Sat,  9 May 2020 21:49:14 +0800 (CST)
Received: from euler.huawei.com (10.175.101.6) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Sat, 9 May 2020 21:49:09 +0800
From: Wei Li <liwei391@huawei.com>
To: <daniel.thompson@linaro.org>, <jason.wessel@windriver.com>,
 <dianders@chromium.org>, <maz@kernel.org>, <mark.rutland@arm.com>,
 <mhiramat@kernel.org>, <davem@davemloft.net>, <will@kernel.org>,
 <catalin.marinas@arm.com>
Subject: [PATCH 2/4] arm64: Extract kprobes_save_local_irqflag() and
 kprobes_restore_local_irqflag()
Date: Sun, 10 May 2020 05:41:57 +0800
Message-ID: <20200509214159.19680-3-liwei391@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200509214159.19680-1-liwei391@huawei.com>
References: <20200509214159.19680-1-liwei391@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.101.6]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_064927_023669_7CD8F03F 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: liwei1412@163.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PSTATE.I and PSTATE.D are very important for single-step working.

Without disabling interrupt on local CPU, there is a chance of
interrupt occurrence in the period of exception return and start of
out-of-line single-step, that result in wrongly single stepping
into the interrupt handler. And if D bit is set then, it results into
undefined exception and when it's handler enables dbg then single-step
exception is generated, not as expected.

As they are maintained well in kprobes_save_local_irqflag() and
kprobes_restore_local_irqflag() for kprobe module, extract them as
kernel_prepare_single_step() and kernel_cleanup_single_step() for
general use.

Signed-off-by: Wei Li <liwei391@huawei.com>
---
 arch/arm64/include/asm/debug-monitors.h |  4 ++++
 arch/arm64/kernel/debug-monitors.c      | 26 +++++++++++++++++++++++
 arch/arm64/kernel/probes/kprobes.c      | 28 ++-----------------------
 3 files changed, 32 insertions(+), 26 deletions(-)

diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
index 7619f473155f..b62469f3475b 100644
--- a/arch/arm64/include/asm/debug-monitors.h
+++ b/arch/arm64/include/asm/debug-monitors.h
@@ -113,6 +113,10 @@ void user_fastforward_single_step(struct task_struct *task);
 void kernel_enable_single_step(struct pt_regs *regs);
 void kernel_disable_single_step(void);
 int kernel_active_single_step(void);
+void kernel_prepare_single_step(unsigned long *flags,
+						struct pt_regs *regs);
+void kernel_cleanup_single_step(unsigned long flags,
+						struct pt_regs *regs);
 
 #ifdef CONFIG_HAVE_HW_BREAKPOINT
 int reinstall_suspended_bps(struct pt_regs *regs);
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 48222a4760c2..25ce6b5a52d2 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -429,6 +429,32 @@ int kernel_active_single_step(void)
 }
 NOKPROBE_SYMBOL(kernel_active_single_step);
 
+/*
+ * Interrupts need to be disabled before single-step mode is set, and not
+ * reenabled until after single-step mode ends.
+ * Without disabling interrupt on local CPU, there is a chance of
+ * interrupt occurrence in the period of exception return and  start of
+ * out-of-line single-step, that result in wrongly single stepping
+ * into the interrupt handler.
+ */
+void kernel_prepare_single_step(unsigned long *flags,
+						struct pt_regs *regs)
+{
+	*flags = regs->pstate & DAIF_MASK;
+	regs->pstate |= PSR_I_BIT;
+	/* Unmask PSTATE.D for enabling software step exceptions. */
+	regs->pstate &= ~PSR_D_BIT;
+}
+NOKPROBE_SYMBOL(kernel_prepare_single_step);
+
+void kernel_cleanup_single_step(unsigned long flags,
+						struct pt_regs *regs)
+{
+	regs->pstate &= ~DAIF_MASK;
+	regs->pstate |= flags;
+}
+NOKPROBE_SYMBOL(kernel_cleanup_single_step);
+
 /* ptrace API */
 void user_enable_single_step(struct task_struct *task)
 {
diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index d1c95dcf1d78..c655b6b543e3 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -168,30 +168,6 @@ static void __kprobes set_current_kprobe(struct kprobe *p)
 	__this_cpu_write(current_kprobe, p);
 }
 
-/*
- * Interrupts need to be disabled before single-step mode is set, and not
- * reenabled until after single-step mode ends.
- * Without disabling interrupt on local CPU, there is a chance of
- * interrupt occurrence in the period of exception return and  start of
- * out-of-line single-step, that result in wrongly single stepping
- * into the interrupt handler.
- */
-static void __kprobes kprobes_save_local_irqflag(struct kprobe_ctlblk *kcb,
-						struct pt_regs *regs)
-{
-	kcb->saved_irqflag = regs->pstate & DAIF_MASK;
-	regs->pstate |= PSR_I_BIT;
-	/* Unmask PSTATE.D for enabling software step exceptions. */
-	regs->pstate &= ~PSR_D_BIT;
-}
-
-static void __kprobes kprobes_restore_local_irqflag(struct kprobe_ctlblk *kcb,
-						struct pt_regs *regs)
-{
-	regs->pstate &= ~DAIF_MASK;
-	regs->pstate |= kcb->saved_irqflag;
-}
-
 static void __kprobes
 set_ss_context(struct kprobe_ctlblk *kcb, unsigned long addr)
 {
@@ -227,7 +203,7 @@ static void __kprobes setup_singlestep(struct kprobe *p,
 		set_ss_context(kcb, slot);	/* mark pending ss */
 
 		/* IRQs and single stepping do not mix well. */
-		kprobes_save_local_irqflag(kcb, regs);
+		kernel_prepare_single_step(&kcb->saved_irqflag, regs);
 		kernel_enable_single_step(regs);
 		instruction_pointer_set(regs, slot);
 	} else {
@@ -414,7 +390,7 @@ kprobe_single_step_handler(struct pt_regs *regs, unsigned int esr)
 	retval = kprobe_ss_hit(kcb, instruction_pointer(regs));
 
 	if (retval == DBG_HOOK_HANDLED) {
-		kprobes_restore_local_irqflag(kcb, regs);
+		kernel_cleanup_single_step(kcb->saved_irqflag, regs);
 		kernel_disable_single_step();
 
 		post_kprobe_handler(kcb, regs);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
