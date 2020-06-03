Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3201ED306
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 17:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdfYCIm3er83bjVujoy/k0YWIS/WW6BozdQouQefrbQ=; b=Y7gS/xlpSTbnmU
	+1ANPAjhCCgHVHs/EF1EzYmQ2WJRDRh58b48CjzZ29JUhX1Jzhn8lldvStrMp2gwGaRZDWa9hr8q6
	ERbfHTmcqsuGbFu86VKtknVgEcxzgHpUaJwegzaYqJOxNYR97ihs2QXX4YKRTourPIyLKAdy2EhH0
	08wOPaqeSqMmHGRzmcq2UURAz2kx1sJQuKa2SyKuZXQNjEKM4lEDDpaBIH2WodK0D8aOJcUVwyU14
	wKRMxyFswuivljGkpYNZjanAOogDNFCP/QR33aH6Ew2CY3xhDAUJtAJ2LvyUDlFk7RP6V8+L+t8YP
	G4/9minQRV87aD0cCDhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgV2m-0001cH-8Q; Wed, 03 Jun 2020 15:11:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgV2O-0001Vq-9f
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 15:10:41 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDC4720738;
 Wed,  3 Jun 2020 15:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591197040;
 bh=gKvbfpjBh+WV8ibWx+mAW/8twYU/HgRm8UsC6FLsumc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lkOJbLycAIlNAgY97t1dpHkXD8V8vD0C3OoKdqOeBhd4NoOCKGU+mFW9wxoRkrYW8
 6U0nPxc9pInW5v40aLnvbhrpQs7zjOjfFmJIByVcHuXuXgNhhVnqtyaLxSWoJPuUOv
 WWkColmNC39XdrHESZWiMzLLJgfgxT7U1mIrRh5U=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: Override SPSR.SS when single-stepping is enabled
Date: Wed,  3 Jun 2020 16:10:32 +0100
Message-Id: <20200603151033.11512-2-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200603151033.11512-1-will@kernel.org>
References: <20200603151033.11512-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_081040_371234_372B26E3 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Luis Machado <luis.machado@linaro.org>,
 Will Deacon <will@kernel.org>, stable@vger.kernel.org,
 Keno Fischer <keno@juliacomputing.com>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Luis reports that, when reverse debugging with GDB, single-step does not
function as expected on arm64:

  | I've noticed, under very specific conditions, that a PTRACE_SINGLESTEP
  | request by GDB won't execute the underlying instruction. As a consequence,
  | the PC doesn't move, but we return a SIGTRAP just like we would for a
  | regular successful PTRACE_SINGLESTEP request.

The underlying problem is that when the CPU register state is restored
as part of a reverse step, the SPSR.SS bit is cleared and so the hardware
single-step state can transition to the "active-pending" state, causing
an unexpected step exception to be taken immediately if a step operation
is attempted.

In hindsight, we probably shouldn't have exposed SPSR.SS in the pstate
accessible by the GPR regset, but it's a bit late for that now. Instead,
simply prevent userspace from configuring the bit to a value which is
inconsistent with the TIF_SINGLESTEP state for the task being traced.

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: <stable@vger.kernel.org>
Link: https://lore.kernel.org/r/1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org
Reported-by: Luis Machado <luis.machado@linaro.org>
Tested-by: Luis Machado <luis.machado@linaro.org>
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/debug-monitors.h |  2 ++
 arch/arm64/kernel/debug-monitors.c      | 20 ++++++++++++++++----
 arch/arm64/kernel/ptrace.c              |  4 ++--
 arch/arm64/kernel/signal.c              |  6 +++++-
 4 files changed, 25 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
index e5ceea213e39..0b298f48f5bf 100644
--- a/arch/arm64/include/asm/debug-monitors.h
+++ b/arch/arm64/include/asm/debug-monitors.h
@@ -109,6 +109,8 @@ void disable_debug_monitors(enum dbg_active_el el);
 
 void user_rewind_single_step(struct task_struct *task);
 void user_fastforward_single_step(struct task_struct *task);
+void user_regs_reset_single_step(struct user_pt_regs *regs,
+				 struct task_struct *task);
 
 void kernel_enable_single_step(struct pt_regs *regs);
 void kernel_disable_single_step(void);
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index 15e80c876d46..732e7ecaa692 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -141,17 +141,20 @@ postcore_initcall(debug_monitors_init);
 /*
  * Single step API and exception handling.
  */
-static void set_regs_spsr_ss(struct pt_regs *regs)
+static void set_user_regs_spsr_ss(struct user_pt_regs *regs)
 {
 	regs->pstate |= DBG_SPSR_SS;
 }
-NOKPROBE_SYMBOL(set_regs_spsr_ss);
+NOKPROBE_SYMBOL(set_user_regs_spsr_ss);
 
-static void clear_regs_spsr_ss(struct pt_regs *regs)
+static void clear_user_regs_spsr_ss(struct user_pt_regs *regs)
 {
 	regs->pstate &= ~DBG_SPSR_SS;
 }
-NOKPROBE_SYMBOL(clear_regs_spsr_ss);
+NOKPROBE_SYMBOL(clear_user_regs_spsr_ss);
+
+#define set_regs_spsr_ss(r)	set_user_regs_spsr_ss(&(r)->user_regs)
+#define clear_regs_spsr_ss(r)	clear_user_regs_spsr_ss(&(r)->user_regs)
 
 static DEFINE_SPINLOCK(debug_hook_lock);
 static LIST_HEAD(user_step_hook);
@@ -402,6 +405,15 @@ void user_fastforward_single_step(struct task_struct *task)
 		clear_regs_spsr_ss(task_pt_regs(task));
 }
 
+void user_regs_reset_single_step(struct user_pt_regs *regs,
+				 struct task_struct *task)
+{
+	if (test_tsk_thread_flag(task, TIF_SINGLESTEP))
+		set_user_regs_spsr_ss(regs);
+	else
+		clear_user_regs_spsr_ss(regs);
+}
+
 /* Kernel API */
 void kernel_enable_single_step(struct pt_regs *regs)
 {
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index 585dd7f5c826..e871ab3ab29b 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -1934,8 +1934,8 @@ static int valid_native_regs(struct user_pt_regs *regs)
  */
 int valid_user_regs(struct user_pt_regs *regs, struct task_struct *task)
 {
-	if (!test_tsk_thread_flag(task, TIF_SINGLESTEP))
-		regs->pstate &= ~DBG_SPSR_SS;
+	/* https://lore.kernel.org/lkml/20191118131525.GA4180@willie-the-truck */
+	user_regs_reset_single_step(regs, task);
 
 	if (is_compat_thread(task_thread_info(task)))
 		return valid_compat_regs(regs);
diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index 801d56cdf701..c57a077f66cf 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -505,8 +505,12 @@ static int restore_sigframe(struct pt_regs *regs,
 	forget_syscall(regs);
 
 	err |= !valid_user_regs(&regs->user_regs, current);
-	if (err == 0)
+
+	if (err == 0) {
+		/* Make it look like we stepped the sigreturn system call */
+		user_fastforward_single_step(current);
 		err = parse_user_sigframe(&user, sf);
+	}
 
 	if (err == 0 && system_supports_fpsimd()) {
 		if (!user.fpsimd)
-- 
2.27.0.rc2.251.g90737beb825-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
