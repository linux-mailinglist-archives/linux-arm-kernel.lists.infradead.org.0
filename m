Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549611D577C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfUohy+6J0Qizr2b4ulSqYczjGH9B1B0BxhN9b0FyBw=; b=VBAivtMC/aWZWh
	VXqC3FZaT/GVkbC5w+ms7exihmfk0HjNNDgWrsdOIDp2CYwx0qXErDPCKT3wBLTLMNjZOQ5owL1uT
	OcqL6lFGQJ0xBlNhlHcNDZGQ4JiRWC64eYZkhGz2lqKRddrMn6AIpu3nf8pPrIUS/xB2XDi76b4NT
	KFOGmHTpkvnlLOtJ0j9QaJBNmyauMMCG4MT6c3kI0SykJVryZ8E+bYbXqJkwxyZfz+P6NtXxO87ZA
	9zGCFZQCw3rX5j7lFxocPUzrF2e0hM8GJT4qh7aOCqtb6OGElwWqsSyJygDhCW0bEHCyqpspSmT9j
	B/t7eMJwm6INsBJg5Eow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe1b-0000HK-Md; Fri, 15 May 2020 17:21:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdx6-0002VV-Ll
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:16:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9BA3113E;
 Fri, 15 May 2020 10:16:51 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3589F3F305;
 Fri, 15 May 2020 10:16:50 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 15/26] arm64: mte: Allow user control of the tag check mode
 via prctl()
Date: Fri, 15 May 2020 18:16:01 +0100
Message-Id: <20200515171612.1020-16-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101652_907795_12311D7B 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>
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
Cc: Will Deacon <will@kernel.org>
---

Notes:
    v3:
    - Use SCTLR_EL1_TCF0_NONE instead of 0 for consistency.
    - Move mte_thread_switch() in this patch from an earlier one. In
      addition, it is called after the dsb() in __switch_to() so that any
      asynchronous tag check faults have been registered in the TFSR_EL1
      registers (to be added with the in-kernel MTE support.
    
    v2:
    - Handle SCTLR_EL1_TCF0_NONE explicitly for consistency with PR_MTE_TCF_NONE.
    - Fix SCTLR_EL1 register setting in flush_mte_state() (thanks to Peter
      Collingbourne).
    - Added ISB to update_sctlr_el1_tcf0() since, with the latest
      architecture update/fix, the TCF0 field is used by the uaccess
      routines.

 arch/arm64/include/asm/mte.h       | 14 ++++++
 arch/arm64/include/asm/processor.h |  3 ++
 arch/arm64/kernel/mte.c            | 77 ++++++++++++++++++++++++++++++
 arch/arm64/kernel/process.c        | 26 ++++++++--
 include/uapi/linux/prctl.h         |  6 +++
 5 files changed, 123 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/mte.h b/arch/arm64/include/asm/mte.h
index c1a09499c678..c79dbffd30c4 100644
--- a/arch/arm64/include/asm/mte.h
+++ b/arch/arm64/include/asm/mte.h
@@ -21,6 +21,9 @@ void mte_clear_page_tags(void *addr, size_t size);
 void mte_sync_tags(pte_t *ptep, pte_t pte);
 void mte_copy_page_tags(void *kto, const void *kfrom);
 void flush_mte_state(void);
+void mte_thread_switch(struct task_struct *next);
+long set_mte_ctrl(unsigned long arg);
+long get_mte_ctrl(void);
 
 #else
 
@@ -36,6 +39,17 @@ static inline void mte_copy_page_tags(void *kto, const void *kfrom)
 static inline void flush_mte_state(void)
 {
 }
+static inline void mte_thread_switch(struct task_struct *next)
+{
+}
+static inline long set_mte_ctrl(unsigned long arg)
+{
+	return 0;
+}
+static inline long get_mte_ctrl(void)
+{
+	return 0;
+}
 
 #endif
 
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 240fe5e5b720..80e7f0573309 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -151,6 +151,9 @@ struct thread_struct {
 	struct ptrauth_keys_user	keys_user;
 	struct ptrauth_keys_kernel	keys_kernel;
 #endif
+#ifdef CONFIG_ARM64_MTE
+	u64			sctlr_tcf0;
+#endif
 };
 
 static inline void arch_thread_struct_whitelist(unsigned long *offset,
diff --git a/arch/arm64/kernel/mte.c b/arch/arm64/kernel/mte.c
index da2d70178a4b..3e425f124360 100644
--- a/arch/arm64/kernel/mte.c
+++ b/arch/arm64/kernel/mte.c
@@ -5,6 +5,8 @@
 
 #include <linux/bitops.h>
 #include <linux/mm.h>
+#include <linux/prctl.h>
+#include <linux/sched.h>
 #include <linux/string.h>
 #include <linux/thread_info.h>
 
@@ -49,6 +51,26 @@ int memcmp_pages(struct page *page1, struct page *page2)
 	return ret;
 }
 
+static void update_sctlr_el1_tcf0(u64 tcf0)
+{
+	/* ISB required for the kernel uaccess routines */
+	sysreg_clear_set(sctlr_el1, SCTLR_EL1_TCF0_MASK, tcf0);
+	isb();
+}
+
+static void set_sctlr_el1_tcf0(u64 tcf0)
+{
+	/*
+	 * mte_thread_switch() checks current->thread.sctlr_tcf0 as an
+	 * optimisation. Disable preemption so that it does not see
+	 * the variable update before the SCTLR_EL1.TCF0 one.
+	 */
+	preempt_disable();
+	current->thread.sctlr_tcf0 = tcf0;
+	update_sctlr_el1_tcf0(tcf0);
+	preempt_enable();
+}
+
 void flush_mte_state(void)
 {
 	if (!system_supports_mte())
@@ -58,4 +80,59 @@ void flush_mte_state(void)
 	dsb(ish);
 	write_sysreg_s(0, SYS_TFSRE0_EL1);
 	clear_thread_flag(TIF_MTE_ASYNC_FAULT);
+	/* disable tag checking */
+	set_sctlr_el1_tcf0(SCTLR_EL1_TCF0_NONE);
+}
+
+void mte_thread_switch(struct task_struct *next)
+{
+	if (!system_supports_mte())
+		return;
+
+	/* avoid expensive SCTLR_EL1 accesses if no change */
+	if (current->thread.sctlr_tcf0 != next->thread.sctlr_tcf0)
+		update_sctlr_el1_tcf0(next->thread.sctlr_tcf0);
+}
+
+long set_mte_ctrl(unsigned long arg)
+{
+	u64 tcf0;
+
+	if (!system_supports_mte())
+		return 0;
+
+	switch (arg & PR_MTE_TCF_MASK) {
+	case PR_MTE_TCF_NONE:
+		tcf0 = SCTLR_EL1_TCF0_NONE;
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
+	set_sctlr_el1_tcf0(tcf0);
+
+	return 0;
+}
+
+long get_mte_ctrl(void)
+{
+	if (!system_supports_mte())
+		return 0;
+
+	switch (current->thread.sctlr_tcf0) {
+	case SCTLR_EL1_TCF0_NONE:
+		return PR_MTE_TCF_NONE;
+	case SCTLR_EL1_TCF0_SYNC:
+		return PR_MTE_TCF_SYNC;
+	case SCTLR_EL1_TCF0_ASYNC:
+		return PR_MTE_TCF_ASYNC;
+	}
+
+	return 0;
 }
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 740047c9cd13..ff6031a398d0 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -529,6 +529,13 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
 	 */
 	dsb(ish);
 
+	/*
+	 * MTE thread switching must happen after the DSB above to ensure that
+	 * any asynchronous tag check faults have been logged in the TFSR*_EL1
+	 * registers.
+	 */
+	mte_thread_switch(next);
+
 	/* the actual thread switch */
 	last = cpu_switch_to(prev, next);
 
@@ -588,9 +595,15 @@ static unsigned int tagged_addr_disabled;
 
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
@@ -600,6 +613,9 @@ long set_tagged_addr_ctrl(unsigned long arg)
 	if (arg & PR_TAGGED_ADDR_ENABLE && tagged_addr_disabled)
 		return -EINVAL;
 
+	if (set_mte_ctrl(arg) != 0)
+		return -EINVAL;
+
 	update_thread_flag(TIF_TAGGED_ADDR, arg & PR_TAGGED_ADDR_ENABLE);
 
 	return 0;
@@ -607,13 +623,17 @@ long set_tagged_addr_ctrl(unsigned long arg)
 
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
index 07b4f8131e36..2390ab324afa 100644
--- a/include/uapi/linux/prctl.h
+++ b/include/uapi/linux/prctl.h
@@ -233,6 +233,12 @@ struct prctl_mm_map {
 #define PR_SET_TAGGED_ADDR_CTRL		55
 #define PR_GET_TAGGED_ADDR_CTRL		56
 # define PR_TAGGED_ADDR_ENABLE		(1UL << 0)
+/* MTE tag check fault modes */
+# define PR_MTE_TCF_SHIFT		1
+# define PR_MTE_TCF_NONE		(0UL << PR_MTE_TCF_SHIFT)
+# define PR_MTE_TCF_SYNC		(1UL << PR_MTE_TCF_SHIFT)
+# define PR_MTE_TCF_ASYNC		(2UL << PR_MTE_TCF_SHIFT)
+# define PR_MTE_TCF_MASK		(3UL << PR_MTE_TCF_SHIFT)
 
 /* Control reclaim behavior when allocating memory */
 #define PR_SET_IO_FLUSHER		57

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
