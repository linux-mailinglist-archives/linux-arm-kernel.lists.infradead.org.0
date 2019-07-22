Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76576FAAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 09:49:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwajMuB32j0VwDPXpDhFT4s3oxEmNm6yWdbY/Sq3X5U=; b=Rxd+xawOGrQwDJ
	+CW+ghPm7zbTUaIe7XqFfB3tpK1j5Hfx5O9j7QVjx6XZtGMP2A8zPyXEm3f2eQhz5i5s5bVWzL4V0
	SC7IIuxDe9fMcZbO1f2Kf/cOe1iKAUxQZtG8gQlGlvwdTCwkVXu1J2INz+kCjHAnm+wG70a+ixOIj
	YQ3seiBrXSmjvXdca6d3YYH+jLmTT0iO3gZ5qR6EUxD4/x/jADogFigi3Sseq5NvqQvLHxuyhL7iN
	suxt8qxRnRGko/6WFhipO9SSsvcuwC6auTPS6d+MDDk/uCrtquDFLGBcjhAVl5Xco62qZKzn4hSWJ
	n1DVLD1vAtATG4A/qs8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpT4r-0000pq-Vi; Mon, 22 Jul 2019 07:49:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpT4C-0000Vc-QM
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 07:49:06 +0000
Received: from localhost.localdomain (NE2965lan1.rev.em-net.ne.jp
 [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 178222199C;
 Mon, 22 Jul 2019 07:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563781744;
 bh=Tk06rDxfxwcnU8GxOBG3evUypupDiE24pVhJ+efr87Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k2RwWlw1doena07PHahRUyGYZa0VJaFztH9ifYRFrwnG2z4+i8ZX/wdVTd75xnhUj
 h9IaKFmJrYgQ40ce/Sya9pT/10O7hYnSrjJic1sqo5KxfFi+n68J3vkwnx5mcgEdw5
 YGXWIJshFAiqwOYR8eOwPaODS6p53pItpfmbiDzM=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 3/4] arm64: Make debug exception handlers visible from RCU
Date: Mon, 22 Jul 2019 16:48:58 +0900
Message-Id: <156378173770.12011.3832608237079432765.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <156378170297.12011.17385386326930403235.stgit@devnote2>
References: <156378170297.12011.17385386326930403235.stgit@devnote2>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_004905_036946_043BB04A 
X-CRM114-Status: GOOD (  13.75  )
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
 Matt Hart <matthew.hart@linaro.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org, mhiramat@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make debug exceptions visible from RCU so that synchronize_rcu()
correctly track the debug exception handler.

This also introduces sanity checks for user-mode exceptions as same
as x86's ist_enter()/ist_exit().

The debug exception can interrupt in idle task. For example, it warns
if we put a kprobe on a function called from idle task as below.
The warning message showed that the rcu_read_lock() caused this
problem. But actually, this means the RCU is lost the context which
is already in NMI/IRQ.

  /sys/kernel/debug/tracing # echo p default_idle_call >> kprobe_events
  /sys/kernel/debug/tracing # echo 1 > events/kprobes/enable
  /sys/kernel/debug/tracing # [  135.122237]
  [  135.125035] =============================
  [  135.125310] WARNING: suspicious RCU usage
  [  135.125581] 5.2.0-08445-g9187c508bdc7 #20 Not tainted
  [  135.125904] -----------------------------
  [  135.126205] include/linux/rcupdate.h:594 rcu_read_lock() used illegally while idle!
  [  135.126839]
  [  135.126839] other info that might help us debug this:
  [  135.126839]
  [  135.127410]
  [  135.127410] RCU used illegally from idle CPU!
  [  135.127410] rcu_scheduler_active = 2, debug_locks = 1
  [  135.128114] RCU used illegally from extended quiescent state!
  [  135.128555] 1 lock held by swapper/0/0:
  [  135.128944]  #0: (____ptrval____) (rcu_read_lock){....}, at: call_break_hook+0x0/0x178
  [  135.130499]
  [  135.130499] stack backtrace:
  [  135.131192] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.2.0-08445-g9187c508bdc7 #20
  [  135.131841] Hardware name: linux,dummy-virt (DT)
  [  135.132224] Call trace:
  [  135.132491]  dump_backtrace+0x0/0x140
  [  135.132806]  show_stack+0x24/0x30
  [  135.133133]  dump_stack+0xc4/0x10c
  [  135.133726]  lockdep_rcu_suspicious+0xf8/0x108
  [  135.134171]  call_break_hook+0x170/0x178
  [  135.134486]  brk_handler+0x28/0x68
  [  135.134792]  do_debug_exception+0x90/0x150
  [  135.135051]  el1_dbg+0x18/0x8c
  [  135.135260]  default_idle_call+0x0/0x44
  [  135.135516]  cpu_startup_entry+0x2c/0x30
  [  135.135815]  rest_init+0x1b0/0x280
  [  135.136044]  arch_call_rest_init+0x14/0x1c
  [  135.136305]  start_kernel+0x4d4/0x500
  [  135.136597]

So make debug exception visible to RCU can fix this warning.

Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Paul E. McKenney <paulmck@linux.ibm.com>
Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
---
 arch/arm64/mm/fault.c |   40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 9568c116ac7f..a6b244240db6 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -777,6 +777,42 @@ void __init hook_debug_fault_code(int nr,
 	debug_fault_info[nr].name	= name;
 }
 
+/*
+ * In debug exception context, we explicitly disable preemption.
+ * This serves two purposes: it makes it much less likely that we would
+ * accidentally schedule in exception context and it will force a warning
+ * if we somehow manage to schedule by accident.
+ */
+static void debug_exception_enter(struct pt_regs *regs)
+{
+	if (user_mode(regs)) {
+		RCU_LOCKDEP_WARN(!rcu_is_watching(), "entry code didn't wake RCU");
+	} else {
+		/*
+		 * We might have interrupted pretty much anything.  In
+		 * fact, if we're a debug exception, we can even interrupt
+		 * NMI processing.  We don't want in_nmi() to return true,
+		 * but we need to notify RCU.
+		 */
+		rcu_nmi_enter();
+	}
+
+	preempt_disable();
+
+	/* This code is a bit fragile.  Test it. */
+	RCU_LOCKDEP_WARN(!rcu_is_watching(), "exception_enter didn't work");
+}
+NOKPROBE_SYMBOL(debug_exception_enter);
+
+static void debug_exception_exit(struct pt_regs *regs)
+{
+	preempt_enable_no_resched();
+
+	if (!user_mode(regs))
+		rcu_nmi_exit();
+}
+NOKPROBE_SYMBOL(debug_exception_exit);
+
 #ifdef CONFIG_ARM64_ERRATUM_1463225
 DECLARE_PER_CPU(int, __in_cortex_a76_erratum_1463225_wa);
 
@@ -824,6 +860,8 @@ asmlinkage void __exception do_debug_exception(unsigned long addr_if_watchpoint,
 	if (interrupts_enabled(regs))
 		trace_hardirqs_off();
 
+	debug_exception_enter(regs);
+
 	if (user_mode(regs) && !is_ttbr0_addr(pc))
 		arm64_apply_bp_hardening();
 
@@ -832,6 +870,8 @@ asmlinkage void __exception do_debug_exception(unsigned long addr_if_watchpoint,
 				 inf->sig, inf->code, (void __user *)pc, esr);
 	}
 
+	debug_exception_exit(regs);
+
 	if (interrupts_enabled(regs))
 		trace_hardirqs_on();
 }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
