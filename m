Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA6F1C864D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M17Th21V+GMEHAbc45TOg8u6bmcoHChEP3JSNodhPds=; b=FUpy0jK7QRGv3r
	+JQt2C87d1B0au+IvDunB0rkYv+9rF9546/Qzdi+5FTg9gfpGcMcumIJO1vU05jOCsphDy4VxaXQr
	98aUMjMOzn2SV6J/5FPvSgHgs+4DUCQzTqIYVAfg/N0tJ9RMYbaEsGVKAmjN68zX0T+M9ZqG4H2KH
	seNOgsJNaMCrDaz3+Xb7WdoVN1slZCmQrPz9w9DEtm1XnbYmqJha5nTf0oG5Tg/A7tr0Djmtjasp+
	3rbo/KTT8JwAD+oNnDZGojQcraazrNnl0Y3DI8OEiTWnTWenQhUlFwcvKGLVvMi6oRaCX98sQvcW/
	UC6MTNof/5WX9iVbdm2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdL2-0007fb-UY; Thu, 07 May 2020 10:01:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdKM-0006mF-LK
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:00:34 +0000
Received: from localhost.localdomain (NE2965lan1.rev.em-net.ne.jp
 [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0989820643;
 Thu,  7 May 2020 10:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588845626;
 bh=Ak9464TnSkt1bqf6+8XjJiNocFWET02Yub6VNAXctoo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CW65V7ggoIGopbDpQ8tsdKdGqqWkz1ox6XgnKmxvfOcz8Vil0huCY8bkIaLAPYIKL
 xVoeSSV0KpK3/TvQCZBfvbXrn67gcDNCp1GxrGrAUsGCqG7zNwYGdjhBvA+N7RmAbl
 dVQr33+mvgt3KLCGAyJsf225TENw3D7b7LxERJIw=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [RFC PATCH 3/3] arm: kprobes: Support nested kprobes
Date: Thu,  7 May 2020 19:00:19 +0900
Message-Id: <158884561947.12656.7341370827605258688.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <158884558272.12656.7654266361809594662.stgit@devnote2>
References: <158884558272.12656.7654266361809594662.stgit@devnote2>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_030026_924195_B86B1FA6 
X-CRM114-Status: GOOD (  19.15  )
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

Make kprobes to accept 1-level nesting instead of missing it
on arm.

Any kprobes hits in kprobes pre/post handler context can be
nested at once. If the other kprobes hits in the nested pre/post
handler context, that will be missed.

We can test this feature on the kernel with
CONFIG_KPROBE_EVENTS_ON_NOTRACE=y as below.

 # cd /sys/kernel/debug/tracing
 # echo p ring_buffer_lock_reserve > kprobe_events
 # echo p vfs_read >> kprobe_events
 # echo 0 > /proc/sys/debug/kprobes-optimization # to check trap handler
 # echo stacktrace > events/kprobes/p_ring_buffer_lock_reserve_0/trigger
 # echo 1 > events/kprobes/enable
 # cat trace
 ...
              sh-94    [000] d...   124.945302: p_vfs_read_0: (vfs_read+0x0/0x120)
              sh-94    [000] d...   125.041822: p_ring_buffer_lock_reserve_0: (ring_buffer_lock_reserve+0x0/0x57c)
              sh-94    [000] d...   125.042102: <stack trace>
 => kprobe_dispatcher
 => aggr_pre_handler
 => kprobe_handler
 => kprobe_trap_handler
 => do_undefinstr
 => __und_svc_finish
 => ring_buffer_lock_reserve
 => kprobe_trace_func
 => kprobe_dispatcher
 => aggr_pre_handler
 => kprobe_handler
 => kprobe_trap_handler
 => do_undefinstr
 => __und_svc_finish
 => vfs_read
 => sys_read
 => ret_fast_syscall

The trap handler is nested correctly.


Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 arch/arm/include/asm/kprobes.h    |    5 ++
 arch/arm/probes/kprobes/core.c    |   79 ++++++++++++++++++-------------------
 arch/arm/probes/kprobes/core.h    |   30 ++++++++++++++
 arch/arm/probes/kprobes/opt-arm.c |    6 ++-
 4 files changed, 76 insertions(+), 44 deletions(-)

diff --git a/arch/arm/include/asm/kprobes.h b/arch/arm/include/asm/kprobes.h
index 213607a1f45c..553f719bbfd5 100644
--- a/arch/arm/include/asm/kprobes.h
+++ b/arch/arm/include/asm/kprobes.h
@@ -32,10 +32,13 @@ struct prev_kprobe {
 	unsigned int status;
 };
 
+#define KPROBE_NEST_MAX	2
+
 /* per-cpu kprobe control block */
 struct kprobe_ctlblk {
 	unsigned int kprobe_status;
-	struct prev_kprobe prev_kprobe;
+	struct prev_kprobe prev[KPROBE_NEST_MAX];
+	int nested;
 };
 
 void arch_remove_kprobe(struct kprobe *);
diff --git a/arch/arm/probes/kprobes/core.c b/arch/arm/probes/kprobes/core.c
index 90b5bc723c83..2fe7373c3f77 100644
--- a/arch/arm/probes/kprobes/core.c
+++ b/arch/arm/probes/kprobes/core.c
@@ -187,18 +187,6 @@ void __kprobes arch_remove_kprobe(struct kprobe *p)
 	}
 }
 
-static void __kprobes save_previous_kprobe(struct kprobe_ctlblk *kcb)
-{
-	kcb->prev_kprobe.kp = kprobe_running();
-	kcb->prev_kprobe.status = kcb->kprobe_status;
-}
-
-static void __kprobes restore_previous_kprobe(struct kprobe_ctlblk *kcb)
-{
-	__this_cpu_write(current_kprobe, kcb->prev_kprobe.kp);
-	kcb->kprobe_status = kcb->prev_kprobe.status;
-}
-
 static void __kprobes set_current_kprobe(struct kprobe *p)
 {
 	__this_cpu_write(current_kprobe, p);
@@ -224,6 +212,40 @@ singlestep(struct kprobe *p, struct pt_regs *regs, struct kprobe_ctlblk *kcb)
 	p->ainsn.insn_singlestep(p->opcode, &p->ainsn, regs);
 }
 
+static nokprobe_inline int reenter_kprobe(struct kprobe *p,
+					  struct pt_regs *regs,
+					  struct kprobe_ctlblk *kcb)
+{
+	/* Kprobe is pending, so we're recursing. */
+	switch (kcb->kprobe_status) {
+	case KPROBE_HIT_ACTIVE:
+	case KPROBE_HIT_SSDONE:
+		if (kcb->nested < KPROBE_NEST_MAX - 1) {
+			save_previous_kprobe(kcb);
+			return 0;
+		}
+		fallthrough;
+	case KPROBE_HIT_SS:
+		/* A pre- or post-handler probe got us here. */
+		kprobes_inc_nmissed_count(p);
+		save_previous_kprobe(kcb);
+		set_current_kprobe(p);
+		kcb->kprobe_status = KPROBE_REENTER;
+		singlestep(p, regs, kcb);
+		restore_previous_kprobe(kcb);
+		break;
+	case KPROBE_REENTER:
+		/* A nested probe was hit in FIQ, it is a BUG */
+		pr_warn("Unrecoverable kprobe detected.\n");
+		dump_kprobe(p);
+		fallthrough;
+	default:
+		/* impossible cases */
+		BUG();
+	}
+	return 1;
+}
+
 /*
  * Called with IRQs disabled. IRQs must remain disabled from that point
  * all the way until processing this kprobe is complete.  The current
@@ -262,30 +284,9 @@ void __kprobes kprobe_handler(struct pt_regs *regs)
 			 * In this case, we can skip recursing check too.
 			 */
 			singlestep_skip(p, regs);
-		} else if (cur) {
-			/* Kprobe is pending, so we're recursing. */
-			switch (kcb->kprobe_status) {
-			case KPROBE_HIT_ACTIVE:
-			case KPROBE_HIT_SSDONE:
-			case KPROBE_HIT_SS:
-				/* A pre- or post-handler probe got us here. */
-				kprobes_inc_nmissed_count(p);
-				save_previous_kprobe(kcb);
-				set_current_kprobe(p);
-				kcb->kprobe_status = KPROBE_REENTER;
-				singlestep(p, regs, kcb);
-				restore_previous_kprobe(kcb);
-				break;
-			case KPROBE_REENTER:
-				/* A nested probe was hit in FIQ, it is a BUG */
-				pr_warn("Unrecoverable kprobe detected.\n");
-				dump_kprobe(p);
-				/* fall through */
-			default:
-				/* impossible cases */
-				BUG();
-			}
 		} else {
+			if (cur && reenter_kprobe(p, regs, kcb))
+				return;
 			/* Probe hit and conditional execution check ok. */
 			set_current_kprobe(p);
 			kcb->kprobe_status = KPROBE_HIT_ACTIVE;
@@ -305,7 +306,7 @@ void __kprobes kprobe_handler(struct pt_regs *regs)
 					p->post_handler(p, regs, 0);
 				}
 			}
-			reset_current_kprobe();
+			pop_current_kprobe(kcb);
 		}
 	} else {
 		/*
@@ -342,11 +343,7 @@ int __kprobes kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr)
 		 * normal page fault.
 		 */
 		regs->ARM_pc = (long)cur->addr;
-		if (kcb->kprobe_status == KPROBE_REENTER) {
-			restore_previous_kprobe(kcb);
-		} else {
-			reset_current_kprobe();
-		}
+		pop_current_kprobe(kcb);
 		break;
 
 	case KPROBE_HIT_ACTIVE:
diff --git a/arch/arm/probes/kprobes/core.h b/arch/arm/probes/kprobes/core.h
index c3db468650ce..aaff1e0f2153 100644
--- a/arch/arm/probes/kprobes/core.h
+++ b/arch/arm/probes/kprobes/core.h
@@ -34,6 +34,36 @@ typedef enum probes_insn (kprobe_decode_insn_t)(probes_opcode_t,
 						const union decode_action *,
 						const struct decode_checker *[]);
 
+
+static nokprobe_inline void save_previous_kprobe(struct kprobe_ctlblk *kcb)
+{
+	int i = kcb->nested++;
+
+	kcb->prev[i].kp = kprobe_running();
+	kcb->prev[i].status = kcb->kprobe_status;
+}
+
+static nokprobe_inline void restore_previous_kprobe(struct kprobe_ctlblk *kcb)
+{
+	int i = --kcb->nested;
+
+	__this_cpu_write(current_kprobe, kcb->prev[i].kp);
+	kcb->kprobe_status = kcb->prev[i].status;
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
 #ifdef CONFIG_THUMB2_KERNEL
 
 extern const union decode_action kprobes_t32_actions[];
diff --git a/arch/arm/probes/kprobes/opt-arm.c b/arch/arm/probes/kprobes/opt-arm.c
index 7a449df0b359..cb4cb13bff88 100644
--- a/arch/arm/probes/kprobes/opt-arm.c
+++ b/arch/arm/probes/kprobes/opt-arm.c
@@ -161,13 +161,15 @@ optimized_callback(struct optimized_kprobe *op, struct pt_regs *regs)
 	local_irq_save(flags);
 	kcb = get_kprobe_ctlblk();
 
-	if (kprobe_running()) {
+	if (!kprobe_can_nest(kcb)) {
 		kprobes_inc_nmissed_count(&op->kp);
 	} else {
+		if (kprobe_running())
+			save_previous_kprobe(kcb);
 		__this_cpu_write(current_kprobe, &op->kp);
 		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
 		opt_pre_handler(&op->kp, regs);
-		__this_cpu_write(current_kprobe, NULL);
+		pop_current_kprobe(kcb);
 	}
 
 	/*


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
