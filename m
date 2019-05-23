Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B245278C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NLnJZqdrzeeZATJseLbPNc7elrBZpqzEwM6j+sDlj4k=; b=Cam424qU+z1qnfRRCkEoTaAH1w
	w/e3ggeXQLPLsHs058vqtRG3oVeygwrgqFzjvQOEQmvEwjthn9q8xjejfrfBcbzQ+DPL6WkLN2/SY
	pM7VTByUnUjEE9ngcUuUGkxhYcFnk26zsrWT/pyZIBn3d9BpJxH0XPz4x72ZtGYYrEdLU5NS/BhGI
	uKZpctRrCk47zXdvccH9uHj+XwCMJx2vsuF68atiT9HXJMZbel6DvLggPql6zxdddI5kpQtjLtT+6
	MKO1X5P19mDq+6F1DDll0f6OglNlib18bK/uPWIjVMafCq/wSJV13J7N5uRkjrY3alTIxMsUU9tuH
	zGhE7pRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjgf-0004GK-GQ; Thu, 23 May 2019 09:06:57 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjgI-0003w8-Vd
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:06:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A6F1A78;
 Thu, 23 May 2019 02:06:34 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CD7EC3F575;
 Thu, 23 May 2019 02:06:31 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: x86@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] ptrace: move clearing of TIF_SYSCALL_EMU flag to core
Date: Thu, 23 May 2019 10:06:15 +0100
Message-Id: <20190523090618.13410-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523090618.13410-1-sudeep.holla@arm.com>
References: <20190523090618.13410-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_020635_016953_BF1E67AD 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Michael Ellerman <mpe@ellerman.id.au>,
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

Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Acked-by: Oleg Nesterov <oleg@redhat.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/powerpc/kernel/ptrace.c | 1 -
 arch/x86/kernel/ptrace.c     | 3 ---
 kernel/ptrace.c              | 3 +++
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/kernel/ptrace.c b/arch/powerpc/kernel/ptrace.c
index 684b0b315c32..8c92febf5f44 100644
--- a/arch/powerpc/kernel/ptrace.c
+++ b/arch/powerpc/kernel/ptrace.c
@@ -2521,7 +2521,6 @@ void ptrace_disable(struct task_struct *child)
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
