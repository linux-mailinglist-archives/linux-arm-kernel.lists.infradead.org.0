Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5F211BC21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSz75fcMYmrE+28a6yj+UdIV77sCQQlnJelAZGnPeTE=; b=AA0z9EOCiL/uDZ
	+QzVIaGTgHzEzirTTKWEzDMklBC03gz2FXbMpPNHMOFLgjRGmxwVAIMDyb0GKRghtqcR/uZDeXXr4
	FV+uv8lpTcqsupw/QDiV6K7RCR9uU4jhgDduMV4lwl3NbWSFon9BMiJ0WnZ2Foax+O7Aazp9zqmoe
	o0pthr4oFwFp79LKCwmJ0QcGoKgDe2tjudg0gHkDsoDmiPTkK/kHUb2yX/iwHQiYgpypbGnkYg3xr
	hEoPistAr6SUs/GI2kQPgE3DstsKOh/dn7GKDlzJ2qh9dxdOgNbWsNlaTrnUhThGYiqRqDstgrx1P
	O4cwqDymn9kkc7Lu5LWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6zW-0000UH-EB; Wed, 11 Dec 2019 18:45:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6v7-0003RU-GE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:41:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3EC2E14F6;
 Wed, 11 Dec 2019 10:41:09 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CA4783F6CF;
 Wed, 11 Dec 2019 10:41:07 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 19/22] arm64: mte: Allow user control of the tag check mode
 via prctl()
Date: Wed, 11 Dec 2019 18:40:24 +0000
Message-Id: <20191211184027.20130-20-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191211184027.20130-1-catalin.marinas@arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_104109_847034_0CBBEE5F 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By default, even if PROT_MTE is set on a memory range, there is no tag
check fault reporting (SIGSEGV). Introduce a set of option to the
exiting prctl(PR_SET_TAGGED_ADDR_CTRL) to allow user control of the tag
check fault mode:

  PR_MTE_TCF_NONE  - no reporting (default)
  PR_MTE_TCF_SYNC  - synchronous tag check fault reporting
  PR_MTE_TCF_ASYNC - asynchronous tag check fault reporting

These options translate into the corresponding SCTLR_EL1.TCF0 bitfield,
context-switched by the kernel. Note that uaccess done by the kernel is
not checked and cannot be configured by the user.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/processor.h |   3 +
 arch/arm64/kernel/process.c        | 119 +++++++++++++++++++++++++++--
 include/uapi/linux/prctl.h         |   6 ++
 3 files changed, 123 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5ba63204d078..91aa270afc7d 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -148,6 +148,9 @@ struct thread_struct {
 #ifdef CONFIG_ARM64_PTR_AUTH
 	struct ptrauth_keys	keys_user;
 #endif
+#ifdef CONFIG_ARM64_MTE
+	u64			sctlr_tcf0;
+#endif
 };
 
 static inline void arch_thread_struct_whitelist(unsigned long *offset,
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index dd98d539894e..47ce98f47253 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -317,11 +317,22 @@ static void flush_tagged_addr_state(void)
 		clear_thread_flag(TIF_TAGGED_ADDR);
 }
 
+#ifdef CONFIG_ARM64_MTE
+static void flush_mte_state(void)
+{
+	if (!system_supports_mte())
+		return;
+
+	/* clear any pending asynchronous tag fault */
+	clear_thread_flag(TIF_MTE_ASYNC_FAULT);
+	/* disable tag checking */
+	current->thread.sctlr_tcf0 = 0;
+}
+#else
 static void flush_mte_state(void)
 {
-	if (system_supports_mte())
-		clear_thread_flag(TIF_MTE_ASYNC_FAULT);
 }
+#endif
 
 void flush_thread(void)
 {
@@ -484,6 +495,29 @@ static void ssbs_thread_switch(struct task_struct *next)
 		set_ssbs_bit(regs);
 }
 
+#ifdef CONFIG_ARM64_MTE
+static void update_sctlr_el1_tcf0(u64 tcf0)
+{
+	/* no need for ISB since this only affects EL0, implicit with ERET */
+	sysreg_clear_set(sctlr_el1, SCTLR_EL1_TCF0_MASK, tcf0);
+}
+
+/* Handle MTE thread switch */
+static void mte_thread_switch(struct task_struct *next)
+{
+	if (!system_supports_mte())
+		return;
+
+	/* avoid expensive SCTLR_EL1 accesses if no change */
+	if (current->thread.sctlr_tcf0 != next->thread.sctlr_tcf0)
+		update_sctlr_el1_tcf0(next->thread.sctlr_tcf0);
+}
+#else
+static void mte_thread_switch(struct task_struct *next)
+{
+}
+#endif
+
 /*
  * We store our current task in sp_el0, which is clobbered by userspace. Keep a
  * shadow copy so that we can restore this upon entry from userspace.
@@ -514,6 +548,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
 	uao_thread_switch(next);
 	ptrauth_thread_switch(next);
 	ssbs_thread_switch(next);
+	mte_thread_switch(next);
 
 	/*
 	 * Complete any pending TLB or cache maintenance on this CPU in case
@@ -574,6 +609,67 @@ void arch_setup_new_exec(void)
 	ptrauth_thread_init_user(current);
 }
 
+#ifdef CONFIG_ARM64_MTE
+static long set_mte_ctrl(unsigned long arg)
+{
+	u64 tcf0;
+
+	if (!system_supports_mte())
+		return 0;
+
+	switch (arg & PR_MTE_TCF_MASK) {
+	case PR_MTE_TCF_NONE:
+		tcf0 = 0;
+		break;
+	case PR_MTE_TCF_SYNC:
+		tcf0 = SCTLR_EL1_TCF0_SYNC;
+		break;
+	case PR_MTE_TCF_ASYNC:
+		tcf0 = SCTLR_EL1_TCF0_ASYNC;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	/*
+	 * mte_thread_switch() checks current->thread.sctlr_tcf0 as an
+	 * optimisation. Disable preemption so that it does not see
+	 * the variable update before the SCTLR_EL1.TCF0 one.
+	 */
+	preempt_disable();
+	current->thread.sctlr_tcf0 = tcf0;
+	update_sctlr_el1_tcf0(tcf0);
+	preempt_enable();
+
+	return 0;
+}
+
+static long get_mte_ctrl(void)
+{
+	if (!system_supports_mte())
+		return 0;
+
+	switch (current->thread.sctlr_tcf0) {
+	case SCTLR_EL1_TCF0_SYNC:
+		return PR_MTE_TCF_SYNC;
+	case SCTLR_EL1_TCF0_ASYNC:
+		return PR_MTE_TCF_ASYNC;
+	}
+
+	return 0;
+}
+#else
+static long set_mte_ctrl(unsigned long arg)
+{
+	return 0;
+}
+
+static long get_mte_ctrl(void)
+{
+	return 0;
+}
+#endif
+
 #ifdef CONFIG_ARM64_TAGGED_ADDR_ABI
 /*
  * Control the relaxed ABI allowing tagged user addresses into the kernel.
@@ -582,9 +678,15 @@ static unsigned int tagged_addr_disabled;
 
 long set_tagged_addr_ctrl(unsigned long arg)
 {
+	unsigned long valid_mask = PR_TAGGED_ADDR_ENABLE;
+
 	if (is_compat_task())
 		return -EINVAL;
-	if (arg & ~PR_TAGGED_ADDR_ENABLE)
+
+	if (system_supports_mte())
+		valid_mask |= PR_MTE_TCF_MASK;
+
+	if (arg & ~valid_mask)
 		return -EINVAL;
 
 	/*
@@ -594,6 +696,9 @@ long set_tagged_addr_ctrl(unsigned long arg)
 	if (arg & PR_TAGGED_ADDR_ENABLE && tagged_addr_disabled)
 		return -EINVAL;
 
+	if (set_mte_ctrl(arg) != 0)
+		return -EINVAL;
+
 	update_thread_flag(TIF_TAGGED_ADDR, arg & PR_TAGGED_ADDR_ENABLE);
 
 	return 0;
@@ -601,13 +706,17 @@ long set_tagged_addr_ctrl(unsigned long arg)
 
 long get_tagged_addr_ctrl(void)
 {
+	long ret = 0;
+
 	if (is_compat_task())
 		return -EINVAL;
 
 	if (test_thread_flag(TIF_TAGGED_ADDR))
-		return PR_TAGGED_ADDR_ENABLE;
+		ret = PR_TAGGED_ADDR_ENABLE;
 
-	return 0;
+	ret |= get_mte_ctrl();
+
+	return ret;
 }
 
 /*
diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
index 7da1b37b27aa..5e9323e66a38 100644
--- a/include/uapi/linux/prctl.h
+++ b/include/uapi/linux/prctl.h
@@ -233,5 +233,11 @@ struct prctl_mm_map {
 #define PR_SET_TAGGED_ADDR_CTRL		55
 #define PR_GET_TAGGED_ADDR_CTRL		56
 # define PR_TAGGED_ADDR_ENABLE		(1UL << 0)
+/* MTE tag check fault modes */
+# define PR_MTE_TCF_SHIFT		1
+# define PR_MTE_TCF_NONE		(0UL << PR_MTE_TCF_SHIFT)
+# define PR_MTE_TCF_SYNC		(1UL << PR_MTE_TCF_SHIFT)
+# define PR_MTE_TCF_ASYNC		(2UL << PR_MTE_TCF_SHIFT)
+# define PR_MTE_TCF_MASK		(3UL << PR_MTE_TCF_SHIFT)
 
 #endif /* _LINUX_PRCTL_H */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
