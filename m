Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7A8FE71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aexm55JFAC0bNTKjXa5kA1st1EtLMBP+DtL7H6EIpbA=; b=YjY5Hy/m+Q6vo014nzHsNvOvjc
	RuDx6hDqFIzYGPZtxpuRr6PrQKqZ2pgWUPXCo4H28KzpT2VozDyzK96wo+idFLJB8nOwKa8E04Z3Z
	qLe22zwT+23mb8TgzXX38l+/KecAz5xtoJ6cnjMxDftk5x65Kck1GHUirC83VFBLKb66X1YUZD8PN
	5IoFpbLp++nVyAIurGM4b6jBYA89xyXrt17NOTjTOYE6M8YN1Rh/72ceZznei6K9QgtgBe2ZyJSbE
	CHhVuvbuCQX3skJBAvdMNv3CgW9g6NZFN026Wu9n1XwUWX+moM5ljpDa73vkGWa+N5EXY7pDbHAyh
	Xt8FjFDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWCX-0005aE-Ob; Tue, 30 Apr 2019 17:05:53 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWCC-0005In-ER
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:05:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1272515A2;
 Tue, 30 Apr 2019 10:05:32 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 224E43F5C1;
 Tue, 30 Apr 2019 10:05:28 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: x86@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] ptrace: move clearing of TIF_SYSCALL_EMU flag to core
Date: Tue, 30 Apr 2019 18:05:17 +0100
Message-Id: <20190430170520.29470-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430170520.29470-1-sudeep.holla@arm.com>
References: <20190430170520.29470-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_100532_487979_417B4C50 
X-CRM114-Status: GOOD (  12.33  )
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
 Ingo Molnar <mingo@redhat.com>, Paul Mackerras <paulus@samba.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Andy Lutomirski <luto@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While the TIF_SYSCALL_EMU is set in ptrace_resume independent of any
architecture, currently only powerpc and x86 unset the TIF_SYSCALL_EMU
flag in ptrace_disable which gets called from ptrace_detach.

Let's move the clearing of TIF_SYSCALL_EMU flag to __ptrace_unlink
which gets executed from ptrace_detach and also keep it along with
or close to clearing of TIF_SYSCALL_TRACE.

Cc: Oleg Nesterov <oleg@redhat.com>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/powerpc/kernel/ptrace.c | 1 -
 arch/x86/kernel/ptrace.c     | 3 ---
 kernel/ptrace.c              | 3 +++
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/kernel/ptrace.c b/arch/powerpc/kernel/ptrace.c
index d9ac7d94656e..2e2183b800a8 100644
--- a/arch/powerpc/kernel/ptrace.c
+++ b/arch/powerpc/kernel/ptrace.c
@@ -2520,7 +2520,6 @@ void ptrace_disable(struct task_struct *child)
 {
 	/* make sure the single step bit is not set. */
 	user_disable_single_step(child);
-	clear_tsk_thread_flag(child, TIF_SYSCALL_EMU);
 }
 
 #ifdef CONFIG_PPC_ADV_DEBUG_REGS
diff --git a/arch/x86/kernel/ptrace.c b/arch/x86/kernel/ptrace.c
index 4b8ee05dd6ad..45792dbd2443 100644
--- a/arch/x86/kernel/ptrace.c
+++ b/arch/x86/kernel/ptrace.c
@@ -746,9 +746,6 @@ static int ioperm_get(struct task_struct *target,
 void ptrace_disable(struct task_struct *child)
 {
 	user_disable_single_step(child);
-#ifdef TIF_SYSCALL_EMU
-	clear_tsk_thread_flag(child, TIF_SYSCALL_EMU);
-#endif
 }
 
 #if defined CONFIG_X86_32 || defined CONFIG_IA32_EMULATION
diff --git a/kernel/ptrace.c b/kernel/ptrace.c
index 6f357f4fc859..16c7fc1eabcf 100644
--- a/kernel/ptrace.c
+++ b/kernel/ptrace.c
@@ -117,6 +117,9 @@ void __ptrace_unlink(struct task_struct *child)
 	BUG_ON(!child->ptrace);
 
 	clear_tsk_thread_flag(child, TIF_SYSCALL_TRACE);
+#ifdef TIF_SYSCALL_EMU
+	clear_tsk_thread_flag(child, TIF_SYSCALL_EMU);
+#endif
 
 	child->parent = child->real_parent;
 	list_del_init(&child->ptrace_entry);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
