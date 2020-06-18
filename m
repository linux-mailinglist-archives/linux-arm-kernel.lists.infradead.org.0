Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB151FFA4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 19:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=d6TQvqUvCaUKIeiwr9EY8hIcd7vbwimMaez0jotyoj0=; b=R0X
	sLYbPqQ3InGiJMI34U0CCVLdkcpj4dM8DeoTBVxDaIdHYyyZpA+rvxFe0qzLl2yixaH0twNzwKl11
	GJLqapROg9hI/38/jEpnnewnyodOB2y04fy34VFVxDeZ5ZqLxb+g46OFeK0JRriSVx/q0mg5lu2gx
	VQGETEqjCcfjoIvkX8oJWy0tWv6q/o/zr7e6wCzAFZNjIN4D53qjUXdzlCwY5laLRXjAq6wrTpHgk
	/D5NF95QVQqCp492GO5pqeij5KTmFfC2n3QU9P6VmUAVrZ6I14tW/PgOA/33Z2X6uwpYOXiCftew2
	W3hQDoT1zz63PX/buBBAaRXxMXwrJxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyOA-0002QZ-4D; Thu, 18 Jun 2020 17:31:46 +0000
Received: from mail.windriver.com ([147.11.1.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyMR-0006yr-7A
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 17:30:02 +0000
Received: from yow-cube1.wrs.com (yow-cube1.wrs.com [128.224.56.98])
 by mail.windriver.com (8.15.2/8.15.2) with ESMTP id 05IHTm8o023501;
 Thu, 18 Jun 2020 10:29:48 -0700 (PDT)
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: don't preempt_disable in do_debug_exception
Date: Thu, 18 Jun 2020 13:29:29 -0400
Message-Id: <1592501369-27645-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_102959_310636_97CCB4A2 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.11.1.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [147.11.1.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, stable@vger.kernel.org,
 Paul Gortmaker <paul.gortmaker@windriver.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit d8bb6718c4db ("arm64: Make debug exception handlers visible
from RCU") debug_exception_enter and exit were added to deal with better
tracking of RCU state - however, in addition to that, but not mentioned
in the commit log, a preempt_disable/enable pair were also added.

Based on the comment (being removed here) it would seem that the pair
were not added to address a specific problem, but just as a proactive,
preventative measure - as in "seemed like a good idea at the time".

The problem is that do_debug_exception() eventually calls out to
generic kernel code like do_force_sig_info() which takes non-raw locks
and on -rt enabled kernels, results in things looking like the following,
since on -rt kernels, it is noticed that preemption is still disabled.

 BUG: sleeping function called from invalid context at kernel/locking/rtmutex.c:975
 in_atomic(): 1, irqs_disabled(): 0, pid: 35658, name: gdbtest
 Preemption disabled at:
 [<ffff000010081578>] do_debug_exception+0x38/0x1a4
 Call trace:
 dump_backtrace+0x0/0x138
 show_stack+0x24/0x30
 dump_stack+0x94/0xbc
 ___might_sleep+0x13c/0x168
 rt_spin_lock+0x40/0x80
 do_force_sig_info+0x30/0xe0
 force_sig_fault+0x64/0x90
 arm64_force_sig_fault+0x50/0x80
 send_user_sigtrap+0x50/0x80
 brk_handler+0x98/0xc8
 do_debug_exception+0x70/0x1a4
 el0_dbg+0x18/0x20

The reproducer was basically an automated gdb test that set a breakpoint
on a simple "hello world" program and then quit gdb once the breakpoint
was hit - i.e. "(gdb) A debugging session is active.  Quit anyway? "

Fixes: d8bb6718c4db ("arm64: Make debug exception handlers visible from RCU")
Cc: stable@vger.kernel.org
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Paul E. McKenney <paulmck@linux.ibm.com>
Cc: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 arch/arm64/mm/fault.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 8afb238ff335..4d83ec991b33 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -788,13 +788,6 @@ void __init hook_debug_fault_code(int nr,
 	debug_fault_info[nr].name	= name;
 }
 
-/*
- * In debug exception context, we explicitly disable preemption despite
- * having interrupts disabled.
- * This serves two purposes: it makes it much less likely that we would
- * accidentally schedule in exception context and it will force a warning
- * if we somehow manage to schedule by accident.
- */
 static void debug_exception_enter(struct pt_regs *regs)
 {
 	/*
@@ -816,8 +809,6 @@ static void debug_exception_enter(struct pt_regs *regs)
 		rcu_nmi_enter();
 	}
 
-	preempt_disable();
-
 	/* This code is a bit fragile.  Test it. */
 	RCU_LOCKDEP_WARN(!rcu_is_watching(), "exception_enter didn't work");
 }
@@ -825,8 +816,6 @@ NOKPROBE_SYMBOL(debug_exception_enter);
 
 static void debug_exception_exit(struct pt_regs *regs)
 {
-	preempt_enable_no_resched();
-
 	if (!user_mode(regs))
 		rcu_nmi_exit();
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
