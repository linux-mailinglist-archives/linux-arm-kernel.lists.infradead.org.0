Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1471C863E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uP7or51D9pNRKaJeneIm2vsQAa2klivGbLU7OkdROqI=; b=mkIA8PeWC1C1Y7
	LxINXNPBRLFFT7rLzFTkA21sddYXAaYnRXrsBQggWhicPXJDKXrP5RWG3ig2Z0aPQnYfKKd0ZUOJr
	tezBedterT/ghFuVy8QIBjQb3aZVF+k9An9QZv7fBu4565v9C77hdkxJ8Ln6n5M/2M1jn6FvsH06S
	WOel2DZKlOBDkq+HoKjcpbu6P458tcIp8jNhoj5y9yeXcJcm18nVxqo082hUu86Or3bDk95t/SuPy
	q33XjzvqFe1bYU3iA19bMNSWJ/D+Y0q6XhJkcPIZV+WlhmmGmUiEDboS8w33ikTvf95YvO6DWsa1k
	y3hbfvJx9VPDEpCRxOhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdKP-0003mD-RI; Thu, 07 May 2020 10:00:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdJy-0003ip-La
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:00:04 +0000
Received: from localhost.localdomain (NE2965lan1.rev.em-net.ne.jp
 [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D52452083B;
 Thu,  7 May 2020 09:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588845602;
 bh=Ko6k8yqP06qLO+fR2BdBxjRgEa8MZZiOx9Hf589ZMx4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0ifHte+WaaOnrGKB6g/CwIZIOBFQBXXFFT84SIJ8kY0txiPpt2IIUCifUpkoUF3y9
 0kcoYGHkYa1qEHYieX41XlxUs/JBtZ0QgtVizzIAAnldahFdPdDLN4MnpD9I1mf9Eq
 wapM4oPFqcr8q0T0y9+6Fla6bSX7CGEWul+fViso=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [RFC PATCH 1/3] x86/kprobes: Support nested kprobes
Date: Thu,  7 May 2020 18:59:55 +0900
Message-Id: <158884559505.12656.1357851132314046716.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <158884558272.12656.7654266361809594662.stgit@devnote2>
References: <158884558272.12656.7654266361809594662.stgit@devnote2>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_030002_758146_2194465D 
X-CRM114-Status: GOOD (  20.48  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Wang Nan <wangnan0@huawei.com>, Song Liu <songliubraving@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Russell King <linux@armlinux.org.uk>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Will Deacon <will@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Yonghong Song <yhs@fb.com>,
 bpf <bpf@vger.kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make kprobes to accept 1-level nesting instead of
missing it.

Any kprobes hits in kprobes pre/post handler context
can be nested at once. If the other kprobes hits in
the nested pre/post handler context, that will be missed.

This is useful if user wants to trace/debug the code
which can be invoked from another kprobe handlers.

We can test this feature on the kernel with
CONFIG_KPROBE_EVENTS_ON_NOTRACE=y as below.

 # cd /sys/kernel/debug/tracing
 # echo p ring_buffer_lock_reserve > kprobe_events
 # echo p vfs_read >> kprobe_events
 # echo 0 > /proc/sys/debug/kprobes-optimization # to check int3 handler
 # echo stacktrace > events/kprobes/p_ring_buffer_lock_reserve_0/trigger
 # echo 1 > events/kprobes/enable
 # cat trace
...
             cat-161   [000] d..1 46602.280111: p_vfs_read_0: (vfs_read+0x0/0x150)
             cat-161   [000] d..2 46602.280222: p_ring_buffer_lock_reserve_0: (ring_buffer_lock_reserve+0x0/0x400)
             cat-161   [000] d..2 46602.280247: <stack trace>
 => kprobe_trace_func
 => kprobe_dispatcher
 => aggr_pre_handler
 => kprobe_int3_handler
 => do_int3
 => int3
 => ring_buffer_lock_reserve
 => trace_event_buffer_lock_reserve
 => kprobe_trace_func
 => kprobe_dispatcher
 => aggr_pre_handler
 => kprobe_int3_handler
 => do_int3
 => int3
 => vfs_read
 => kernel_read
 => load_elf_phdrs
 => load_elf_binary
 => search_binary_handler.part.0
 => __do_execve_file.isra.0
 => __x64_sys_execve
 => do_syscall_64
 => entry_SYSCALL_64_after_hwframe

This shows int3 is nested.


Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 arch/x86/include/asm/kprobes.h   |    5 ++
 arch/x86/kernel/kprobes/common.h |   39 +++++++++++++++
 arch/x86/kernel/kprobes/core.c   |   96 ++++++++++++++++----------------------
 arch/x86/kernel/kprobes/ftrace.c |    6 ++
 arch/x86/kernel/kprobes/opt.c    |   13 +++--
 5 files changed, 92 insertions(+), 67 deletions(-)

diff --git a/arch/x86/include/asm/kprobes.h b/arch/x86/include/asm/kprobes.h
index 073eb7ad2f56..60ca23aeece8 100644
--- a/arch/x86/include/asm/kprobes.h
+++ b/arch/x86/include/asm/kprobes.h
@@ -83,6 +83,8 @@ static inline int arch_prepared_optinsn(struct arch_optimized_insn *optinsn)
 	return optinsn->size;
 }
 
+#define KPROBE_NEST_MAX 2
+
 struct prev_kprobe {
 	struct kprobe *kp;
 	unsigned long status;
@@ -95,7 +97,8 @@ struct kprobe_ctlblk {
 	unsigned long kprobe_status;
 	unsigned long kprobe_old_flags;
 	unsigned long kprobe_saved_flags;
-	struct prev_kprobe prev_kprobe;
+	struct prev_kprobe prev[KPROBE_NEST_MAX];
+	int	nested;
 };
 
 extern int kprobe_fault_handler(struct pt_regs *regs, int trapnr);
diff --git a/arch/x86/kernel/kprobes/common.h b/arch/x86/kernel/kprobes/common.h
index 7d3a2e2daf01..490e871df36e 100644
--- a/arch/x86/kernel/kprobes/common.h
+++ b/arch/x86/kernel/kprobes/common.h
@@ -91,11 +91,46 @@ extern int __copy_instruction(u8 *dest, u8 *src, u8 *real, struct insn *insn);
 extern void synthesize_reljump(void *dest, void *from, void *to);
 extern void synthesize_relcall(void *dest, void *from, void *to);
 
+static nokprobe_inline void
+save_previous_kprobe(struct kprobe_ctlblk *kcb)
+{
+	int i = kcb->nested++;
+
+	kcb->prev[i].kp = kprobe_running();
+	kcb->prev[i].status = kcb->kprobe_status;
+	kcb->prev[i].old_flags = kcb->kprobe_old_flags;
+	kcb->prev[i].saved_flags = kcb->kprobe_saved_flags;
+}
+
+static nokprobe_inline void
+restore_previous_kprobe(struct kprobe_ctlblk *kcb)
+{
+	int i = --kcb->nested;
+
+	__this_cpu_write(current_kprobe, kcb->prev[i].kp);
+	kcb->kprobe_status = kcb->prev[i].status;
+	kcb->kprobe_old_flags = kcb->prev[i].old_flags;
+	kcb->kprobe_saved_flags = kcb->prev[i].saved_flags;
+}
+
+static nokprobe_inline void pop_current_kprobe(struct kprobe_ctlblk *kcb)
+{
+	if (kcb->nested)
+		restore_previous_kprobe(kcb);
+	else
+		reset_current_kprobe();
+}
+
+static nokprobe_inline bool kprobe_can_nest(struct kprobe_ctlblk *kcb)
+{
+	return !kprobe_running() || (kcb->nested < KPROBE_NEST_MAX - 1);
+}
+
 #ifdef	CONFIG_OPTPROBES
-extern int setup_detour_execution(struct kprobe *p, struct pt_regs *regs, int reenter);
+extern int setup_detour_execution(struct kprobe *p, struct pt_regs *regs);
 extern unsigned long __recover_optprobed_insn(kprobe_opcode_t *buf, unsigned long addr);
 #else	/* !CONFIG_OPTPROBES */
-static inline int setup_detour_execution(struct kprobe *p, struct pt_regs *regs, int reenter)
+static inline int setup_detour_execution(struct kprobe *p, struct pt_regs *regs)
 {
 	return 0;
 }
diff --git a/arch/x86/kernel/kprobes/core.c b/arch/x86/kernel/kprobes/core.c
index 4d7022a740ab..998524b73d4d 100644
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -520,24 +520,6 @@ void arch_remove_kprobe(struct kprobe *p)
 	}
 }
 
-static nokprobe_inline void
-save_previous_kprobe(struct kprobe_ctlblk *kcb)
-{
-	kcb->prev_kprobe.kp = kprobe_running();
-	kcb->prev_kprobe.status = kcb->kprobe_status;
-	kcb->prev_kprobe.old_flags = kcb->kprobe_old_flags;
-	kcb->prev_kprobe.saved_flags = kcb->kprobe_saved_flags;
-}
-
-static nokprobe_inline void
-restore_previous_kprobe(struct kprobe_ctlblk *kcb)
-{
-	__this_cpu_write(current_kprobe, kcb->prev_kprobe.kp);
-	kcb->kprobe_status = kcb->prev_kprobe.status;
-	kcb->kprobe_old_flags = kcb->prev_kprobe.old_flags;
-	kcb->kprobe_saved_flags = kcb->prev_kprobe.saved_flags;
-}
-
 static nokprobe_inline void
 set_current_kprobe(struct kprobe *p, struct pt_regs *regs,
 		   struct kprobe_ctlblk *kcb)
@@ -581,26 +563,34 @@ void arch_prepare_kretprobe(struct kretprobe_instance *ri, struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(arch_prepare_kretprobe);
 
-static void setup_singlestep(struct kprobe *p, struct pt_regs *regs,
-			     struct kprobe_ctlblk *kcb, int reenter)
+static nokprobe_inline
+int setup_booster_execution(struct kprobe *p, struct pt_regs *regs)
 {
-	if (setup_detour_execution(p, regs, reenter))
-		return;
-
 #if !defined(CONFIG_PREEMPTION)
 	if (p->ainsn.boostable && !p->post_handler) {
 		/* Boost up -- we can execute copied instructions directly */
+		regs->ip = (unsigned long)p->ainsn.insn;
+		return 1;
+	}
+#endif
+	return 0;
+}
+
+static void setup_singlestep(struct kprobe *p, struct pt_regs *regs,
+			     struct kprobe_ctlblk *kcb, int reenter)
+{
+	if (setup_detour_execution(p, regs) ||
+	    setup_booster_execution(p, regs)) {
 		if (!reenter)
-			reset_current_kprobe();
+			pop_current_kprobe(kcb);
 		/*
 		 * Reentering boosted probe doesn't reset current_kprobe,
 		 * nor set current_kprobe, because it doesn't use single
 		 * stepping.
 		 */
-		regs->ip = (unsigned long)p->ainsn.insn;
 		return;
 	}
-#endif
+
 	if (reenter) {
 		save_previous_kprobe(kcb);
 		set_current_kprobe(p, regs, kcb);
@@ -630,6 +620,11 @@ static int reenter_kprobe(struct kprobe *p, struct pt_regs *regs,
 	switch (kcb->kprobe_status) {
 	case KPROBE_HIT_SSDONE:
 	case KPROBE_HIT_ACTIVE:
+		if (kcb->nested < KPROBE_NEST_MAX - 1) {
+			save_previous_kprobe(kcb);
+			return 0;
+		}
+		fallthrough;
 	case KPROBE_HIT_SS:
 		kprobes_inc_nmissed_count(p);
 		setup_singlestep(p, regs, kcb, 1);
@@ -678,26 +673,24 @@ int kprobe_int3_handler(struct pt_regs *regs)
 	p = get_kprobe(addr);
 
 	if (p) {
-		if (kprobe_running()) {
-			if (reenter_kprobe(p, regs, kcb))
-				return 1;
-		} else {
-			set_current_kprobe(p, regs, kcb);
-			kcb->kprobe_status = KPROBE_HIT_ACTIVE;
-
-			/*
-			 * If we have no pre-handler or it returned 0, we
-			 * continue with normal processing.  If we have a
-			 * pre-handler and it returned non-zero, that means
-			 * user handler setup registers to exit to another
-			 * instruction, we must skip the single stepping.
-			 */
-			if (!p->pre_handler || !p->pre_handler(p, regs))
-				setup_singlestep(p, regs, kcb, 0);
-			else
-				reset_current_kprobe();
+		if (kprobe_running() && reenter_kprobe(p, regs, kcb))
 			return 1;
-		}
+
+		set_current_kprobe(p, regs, kcb);
+		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
+
+		/*
+		 * If we have no pre-handler or it returned 0, we
+		 * continue with normal processing.  If we have a
+		 * pre-handler and it returned non-zero, that means
+		 * user handler setup registers to exit to another
+		 * instruction, we must skip the single stepping.
+		 */
+		if (!p->pre_handler || !p->pre_handler(p, regs))
+			setup_singlestep(p, regs, kcb, 0);
+		else
+			pop_current_kprobe(kcb);
+		return 1;
 	} else if (*addr != INT3_INSN_OPCODE) {
 		/*
 		 * The breakpoint instruction was removed right
@@ -994,13 +987,7 @@ int kprobe_debug_handler(struct pt_regs *regs)
 		cur->post_handler(cur, regs, 0);
 	}
 
-	/* Restore back the original saved kprobes variables and continue. */
-	if (kcb->kprobe_status == KPROBE_REENTER) {
-		restore_previous_kprobe(kcb);
-		goto out;
-	}
-	reset_current_kprobe();
-out:
+	pop_current_kprobe(kcb);
 	/*
 	 * if somebody else is singlestepping across a probe point, flags
 	 * will have TF set, in which case, continue the remaining processing
@@ -1043,10 +1030,7 @@ int kprobe_fault_handler(struct pt_regs *regs, int trapnr)
 		 */
 		regs->flags |= kcb->kprobe_old_flags;
 
-		if (kcb->kprobe_status == KPROBE_REENTER)
-			restore_previous_kprobe(kcb);
-		else
-			reset_current_kprobe();
+		pop_current_kprobe(kcb);
 	} else if (kcb->kprobe_status == KPROBE_HIT_ACTIVE ||
 		   kcb->kprobe_status == KPROBE_HIT_SSDONE) {
 		/*
diff --git a/arch/x86/kernel/kprobes/ftrace.c b/arch/x86/kernel/kprobes/ftrace.c
index 681a4b36e9bb..b695c2e118f8 100644
--- a/arch/x86/kernel/kprobes/ftrace.c
+++ b/arch/x86/kernel/kprobes/ftrace.c
@@ -25,13 +25,15 @@ void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
 		return;
 
 	kcb = get_kprobe_ctlblk();
-	if (kprobe_running()) {
+	if (!kprobe_can_nest()) {
 		kprobes_inc_nmissed_count(p);
 	} else {
 		unsigned long orig_ip = regs->ip;
 		/* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
 		regs->ip = ip + sizeof(kprobe_opcode_t);
 
+		if (kprobe_running())
+			save_previous_kprobe(kcb);
 		__this_cpu_write(current_kprobe, p);
 		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
 		if (!p->pre_handler || !p->pre_handler(p, regs)) {
@@ -50,7 +52,7 @@ void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
 		 * If pre_handler returns !0, it changes regs->ip. We have to
 		 * skip emulating post_handler.
 		 */
-		__this_cpu_write(current_kprobe, NULL);
+		pop_current_kprobe(kcb);
 	}
 }
 NOKPROBE_SYMBOL(kprobe_ftrace_handler);
diff --git a/arch/x86/kernel/kprobes/opt.c b/arch/x86/kernel/kprobes/opt.c
index ea13f6888284..ec7cfd4906e3 100644
--- a/arch/x86/kernel/kprobes/opt.c
+++ b/arch/x86/kernel/kprobes/opt.c
@@ -168,15 +168,16 @@ STACK_FRAME_NON_STANDARD(optprobe_template_func);
 static void
 optimized_callback(struct optimized_kprobe *op, struct pt_regs *regs)
 {
+	struct kprobe_ctlblk *kcb;
 	/* This is possible if op is under delayed unoptimizing */
 	if (kprobe_disabled(&op->kp))
 		return;
 
 	preempt_disable();
-	if (kprobe_running()) {
+	kcb = get_kprobe_ctlblk();
+	if (!kprobe_can_nest(kcb)) {
 		kprobes_inc_nmissed_count(&op->kp);
 	} else {
-		struct kprobe_ctlblk *kcb = get_kprobe_ctlblk();
 		/* Save skipped registers */
 		regs->cs = __KERNEL_CS;
 #ifdef CONFIG_X86_32
@@ -186,10 +187,12 @@ optimized_callback(struct optimized_kprobe *op, struct pt_regs *regs)
 		regs->ip = (unsigned long)op->kp.addr + INT3_INSN_SIZE;
 		regs->orig_ax = ~0UL;
 
+		if (kprobe_running())
+			save_previous_kprobe(kcb);
 		__this_cpu_write(current_kprobe, &op->kp);
 		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
 		opt_pre_handler(&op->kp, regs);
-		__this_cpu_write(current_kprobe, NULL);
+		pop_current_kprobe(kcb);
 	}
 	preempt_enable();
 }
@@ -500,7 +503,7 @@ extern void arch_unoptimize_kprobes(struct list_head *oplist,
 	}
 }
 
-int setup_detour_execution(struct kprobe *p, struct pt_regs *regs, int reenter)
+int setup_detour_execution(struct kprobe *p, struct pt_regs *regs)
 {
 	struct optimized_kprobe *op;
 
@@ -509,8 +512,6 @@ int setup_detour_execution(struct kprobe *p, struct pt_regs *regs, int reenter)
 		op = container_of(p, struct optimized_kprobe, kp);
 		/* Detour through copied instructions */
 		regs->ip = (unsigned long)op->optinsn.insn + TMPL_END_IDX;
-		if (!reenter)
-			reset_current_kprobe();
 		return 1;
 	}
 	return 0;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
