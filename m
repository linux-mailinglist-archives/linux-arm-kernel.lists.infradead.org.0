Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE52FE75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V2Op6MyMwXRCoPWoQLAv/dYEtZ8cgZP3Q+MgcxpTIUA=; b=OrCFVrOd66rXgF7EGib5mNapjb
	yRy2R8fBb+lWkhj3ZHLLdIsUA8xqNDjODLfVZSIEzSqLLWPgARNLRPX+Vj1keai68CBWtjoqh/kba
	CYJg8s/qDD821BKm4PAEL2cVdMz3DcRwHjZ8n+g/8wAc+UAoIFzF7Q3NJtkiMPkc4U7B4mU2kOUky
	g6NUNREtme8Nzt1mzlg5te7yelh9t3o5MooA3P21OixDVk851wLHWVvnttqAe3wTbLVHVaRfaM0gL
	6xT/ulB7HfA6GxC5yCv3df7kioO0Pkma8pgGwZoVQ2pb8yOJEMXdKcTiwuGjO0u2qTlZ37OEsBfFN
	Xa2XzFUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWD2-00069c-4f; Tue, 30 Apr 2019 17:06:24 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWCK-0005TB-SF
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:05:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F8FA15A2;
 Tue, 30 Apr 2019 10:05:40 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0258C3F5C1;
 Tue, 30 Apr 2019 10:05:37 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: x86@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/4] arm64: ptrace: add support for syscall emulation
Date: Tue, 30 Apr 2019 18:05:20 +0100
Message-Id: <20190430170520.29470-5-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430170520.29470-1-sudeep.holla@arm.com>
References: <20190430170520.29470-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_100540_978399_D43FC6B6 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Richard Weinberger <richard@nod.at>, jdike@addtoit.com,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will.deacon@arm.com>,
 Oleg Nesterov <oleg@redhat.com>, Bin Lu <bin.lu@arm.com>,
 Andy Lutomirski <luto@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add PTRACE_SYSEMU and PTRACE_SYSEMU_SINGLESTEP support on arm64.
We don't need any special handling for PTRACE_SYSEMU_SINGLESTEP.

It's quite difficult to generalize handling PTRACE_SYSEMU cross
architectures and avoid calls to tracehook_report_syscall_entry twice.
Different architecture have different mechanism to indicate NO_SYSCALL
and trying to generalise adds more code for no gain.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/include/asm/thread_info.h | 5 ++++-
 arch/arm64/kernel/ptrace.c           | 6 +++++-
 2 files changed, 9 insertions(+), 2 deletions(-)

Hi Will,

While I agree with your idea of consolidation of PTRACE_SYSEMU handling
to core, it's quite a lot of change to do that, though it may be simple
and confusing with indirection from arch code to core.

Regards,
Sudeep

diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index eb3ef73e07cf..c285d1ce7186 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -75,6 +75,7 @@ void arch_release_task_struct(struct task_struct *tsk);
  *  TIF_SYSCALL_TRACE	- syscall trace active
  *  TIF_SYSCALL_TRACEPOINT - syscall tracepoint for ftrace
  *  TIF_SYSCALL_AUDIT	- syscall auditing
+ *  TIF_SYSCALL_EMU     - syscall emulation active
  *  TIF_SECOMP		- syscall secure computing
  *  TIF_SIGPENDING	- signal pending
  *  TIF_NEED_RESCHED	- rescheduling necessary
@@ -91,6 +92,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define TIF_SYSCALL_AUDIT	9
 #define TIF_SYSCALL_TRACEPOINT	10
 #define TIF_SECCOMP		11
+#define TIF_SYSCALL_EMU		12
 #define TIF_MEMDIE		18	/* is terminating due to OOM killer */
 #define TIF_FREEZE		19
 #define TIF_RESTORE_SIGMASK	20
@@ -109,6 +111,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define _TIF_SYSCALL_AUDIT	(1 << TIF_SYSCALL_AUDIT)
 #define _TIF_SYSCALL_TRACEPOINT	(1 << TIF_SYSCALL_TRACEPOINT)
 #define _TIF_SECCOMP		(1 << TIF_SECCOMP)
+#define _TIF_SYSCALL_EMU	(1 << TIF_SYSCALL_EMU)
 #define _TIF_UPROBE		(1 << TIF_UPROBE)
 #define _TIF_FSCHECK		(1 << TIF_FSCHECK)
 #define _TIF_32BIT		(1 << TIF_32BIT)
@@ -120,7 +123,7 @@ void arch_release_task_struct(struct task_struct *tsk);

 #define _TIF_SYSCALL_WORK	(_TIF_SYSCALL_TRACE | _TIF_SYSCALL_AUDIT | \
 				 _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP | \
-				 _TIF_NOHZ)
+				 _TIF_NOHZ | _TIF_SYSCALL_EMU)

 #define INIT_THREAD_INFO(tsk)						\
 {									\
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index b82e0a9b3da3..9353355cb91a 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -1819,8 +1819,12 @@ static void tracehook_report_syscall(struct pt_regs *regs,

 int syscall_trace_enter(struct pt_regs *regs)
 {
-	if (test_thread_flag(TIF_SYSCALL_TRACE))
+	if (test_thread_flag(TIF_SYSCALL_TRACE) ||
+		test_thread_flag(TIF_SYSCALL_EMU)) {
 		tracehook_report_syscall(regs, PTRACE_SYSCALL_ENTER);
+		if (!in_syscall(regs) || test_thread_flag(TIF_SYSCALL_EMU))
+			return -1;
+	}

 	/* Do the secure computing after ptrace; failures should be fast. */
 	if (secure_computing(NULL) == -1)
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
