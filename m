Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5349B120043
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:50:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4K9YNaLFHRlxqfxMLoUujyIxLS+K65WdteAG8V0F89M=; b=uopsyYmYBTY2H9YFD8d4wz5Lyt
	tyryuuDSri9qm5iPLpqyXzac/IOOOljLc5TNP5X04/6UfAzX418UHinF619RZhpsBwbqLCwYjOKB6
	cMu6mGiXdse9NexsZgjunCimSHvs+dAPl0oHwvoKb9klI5HKjnMOh0SVfwVdyCmZjxvUJDfWz5a31
	U8vJy6PKnXtLITA4n1rVLKy2smPmrWnuPvpNlGl2+035tWtFlpI7wZNHLLxG75QzgY27DxhDmFFnR
	k4lVChjWk/JnHi/ApA8eNDYzXFNGYFCdWzWVGEzNvQlgQ5pvhw1iaPfEpUZCtEffeA7EAkIhCEYN3
	8AyqXGNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igm5V-0007c4-Dt; Mon, 16 Dec 2019 08:50:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igm2x-0004Up-4L
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:48:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCC411007;
 Mon, 16 Dec 2019 00:48:05 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 081A63F6CF;
 Mon, 16 Dec 2019 00:51:16 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 07/16] arm64: initialize and switch ptrauth kernel keys
Date: Mon, 16 Dec 2019 14:17:09 +0530
Message-Id: <1576486038-9899-8-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_004807_295418_0C292B91 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <Mark.Brown@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kristina Martsenko <kristina.martsenko@arm.com>

Set up keys to use pointer authentication within the kernel. The kernel
will be compiled with APIAKey instructions, the other keys are currently
unused. Each task is given its own APIAKey, which is initialized during
fork. The key is changed during context switch and on kernel entry from
EL0.

The keys for idle threads need to be set before calling any C functions,
because it is not possible to enter and exit a function with different
keys.

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
[Amit: Modified secondary cores key structure, comments]
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since last version:
* Moved 2 instructions inside alternative_if as pointed by Richard.

 arch/arm64/include/asm/asm_pointer_auth.h | 14 ++++++++++++++
 arch/arm64/include/asm/pointer_auth.h     | 13 +++++++++++++
 arch/arm64/include/asm/processor.h        |  1 +
 arch/arm64/include/asm/smp.h              |  4 ++++
 arch/arm64/kernel/asm-offsets.c           |  5 +++++
 arch/arm64/kernel/entry.S                 |  3 +++
 arch/arm64/kernel/process.c               |  2 ++
 arch/arm64/kernel/smp.c                   |  8 ++++++++
 arch/arm64/mm/proc.S                      | 12 ++++++++++++
 9 files changed, 62 insertions(+)

diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
index 3d39788..c5fbbf5 100644
--- a/arch/arm64/include/asm/asm_pointer_auth.h
+++ b/arch/arm64/include/asm/asm_pointer_auth.h
@@ -35,11 +35,25 @@ alternative_if ARM64_HAS_GENERIC_AUTH
 alternative_else_nop_endif
 	.endm
 
+	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
+alternative_if ARM64_HAS_ADDRESS_AUTH
+	mov	\tmp1, #THREAD_KEYS_KERNEL
+	add	\tmp1, \tsk, \tmp1
+	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KERNEL_KEY_APIA]
+	msr_s	SYS_APIAKEYLO_EL1, \tmp2
+	msr_s	SYS_APIAKEYHI_EL1, \tmp3
+	isb
+alternative_else_nop_endif
+	.endm
+
 #else /* CONFIG_ARM64_PTR_AUTH */
 
 	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3
 	.endm
 
+	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
+	.endm
+
 #endif /* CONFIG_ARM64_PTR_AUTH */
 
 #endif /* __ASM_ASM_POINTER_AUTH_H */
diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index dabe026..aa956ca 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -30,6 +30,10 @@ struct ptrauth_keys_user {
 	struct ptrauth_key apga;
 };
 
+struct ptrauth_keys_kernel {
+	struct ptrauth_key apia;
+};
+
 static inline void ptrauth_keys_init_user(struct ptrauth_keys_user *keys)
 {
 	if (system_supports_address_auth()) {
@@ -50,6 +54,12 @@ do {								\
 	write_sysreg_s(__pki_v.hi, SYS_ ## k ## KEYHI_EL1);	\
 } while (0)
 
+static inline void ptrauth_keys_init_kernel(struct ptrauth_keys_kernel *keys)
+{
+	if (system_supports_address_auth())
+		get_random_bytes(&keys->apia, sizeof(keys->apia));
+}
+
 extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
 
 /*
@@ -66,11 +76,14 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
 
 #define ptrauth_thread_init_user(tsk)					\
 	ptrauth_keys_init_user(&(tsk)->thread.keys_user)
+#define ptrauth_thread_init_kernel(tsk)					\
+	ptrauth_keys_init_kernel(&(tsk)->thread.keys_kernel)
 
 #else /* CONFIG_ARM64_PTR_AUTH */
 #define ptrauth_prctl_reset_keys(tsk, arg)	(-EINVAL)
 #define ptrauth_strip_insn_pac(lr)	(lr)
 #define ptrauth_thread_init_user(tsk)
+#define ptrauth_thread_init_kernel(tsk)
 #endif /* CONFIG_ARM64_PTR_AUTH */
 
 #endif /* __ASM_POINTER_AUTH_H */
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 496a928..4c77da5 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -147,6 +147,7 @@ struct thread_struct {
 	struct debug_info	debug;		/* debugging */
 #ifdef CONFIG_ARM64_PTR_AUTH
 	struct ptrauth_keys_user	keys_user;
+	struct ptrauth_keys_kernel	keys_kernel;
 #endif
 };
 
diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index ddb6d70..8664ec4 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -36,6 +36,7 @@
 #include <linux/threads.h>
 #include <linux/cpumask.h>
 #include <linux/thread_info.h>
+#include <asm/pointer_auth.h>
 
 DECLARE_PER_CPU_READ_MOSTLY(int, cpu_number);
 
@@ -93,6 +94,9 @@ asmlinkage void secondary_start_kernel(void);
 struct secondary_data {
 	void *stack;
 	struct task_struct *task;
+#ifdef CONFIG_ARM64_PTR_AUTH
+	struct ptrauth_keys_kernel ptrauth_key;
+#endif
 	long status;
 };
 
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 7b1ea2a..9981a0a 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -42,6 +42,7 @@ int main(void)
   DEFINE(THREAD_CPU_CONTEXT,	offsetof(struct task_struct, thread.cpu_context));
 #ifdef CONFIG_ARM64_PTR_AUTH
   DEFINE(THREAD_KEYS_USER,	offsetof(struct task_struct, thread.keys_user));
+  DEFINE(THREAD_KEYS_KERNEL,	offsetof(struct task_struct, thread.keys_kernel));
 #endif
   BLANK();
   DEFINE(S_X0,			offsetof(struct pt_regs, regs[0]));
@@ -91,6 +92,9 @@ int main(void)
   BLANK();
   DEFINE(CPU_BOOT_STACK,	offsetof(struct secondary_data, stack));
   DEFINE(CPU_BOOT_TASK,		offsetof(struct secondary_data, task));
+#ifdef CONFIG_ARM64_PTR_AUTH
+  DEFINE(CPU_BOOT_PTRAUTH_KEY,	offsetof(struct secondary_data, ptrauth_key));
+#endif
   BLANK();
 #ifdef CONFIG_KVM_ARM_HOST
   DEFINE(VCPU_CONTEXT,		offsetof(struct kvm_vcpu, arch.ctxt));
@@ -137,6 +141,7 @@ int main(void)
   DEFINE(PTRAUTH_USER_KEY_APDA,		offsetof(struct ptrauth_keys_user, apda));
   DEFINE(PTRAUTH_USER_KEY_APDB,		offsetof(struct ptrauth_keys_user, apdb));
   DEFINE(PTRAUTH_USER_KEY_APGA,		offsetof(struct ptrauth_keys_user, apga));
+  DEFINE(PTRAUTH_KERNEL_KEY_APIA,	offsetof(struct ptrauth_keys_kernel, apia));
   BLANK();
 #endif
   return 0;
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 18067bb..5e6ebcc 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -174,6 +174,7 @@ alternative_cb_end
 
 	apply_ssbd 1, x22, x23
 
+	ptrauth_keys_install_kernel tsk, x20, x22, x23
 	.else
 	add	x21, sp, #S_FRAME_SIZE
 	get_current_task tsk
@@ -345,6 +346,7 @@ alternative_else_nop_endif
 	msr	cntkctl_el1, x1
 4:
 #endif
+	/* No kernel C function calls after this as user keys are set. */
 	ptrauth_keys_install_user tsk, x0, x1, x2
 
 	apply_ssbd 0, x0, x1
@@ -898,6 +900,7 @@ ENTRY(cpu_switch_to)
 	ldr	lr, [x8]
 	mov	sp, x9
 	msr	sp_el0, x1
+	ptrauth_keys_install_kernel x1, x8, x9, x10
 	ret
 ENDPROC(cpu_switch_to)
 NOKPROBE(cpu_switch_to)
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 3716528..0d4a3b8 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -376,6 +376,8 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
 	 */
 	fpsimd_flush_task_state(p);
 
+	ptrauth_thread_init_kernel(p);
+
 	if (likely(!(p->flags & PF_KTHREAD))) {
 		*childregs = *current_pt_regs();
 		childregs->regs[0] = 0;
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index f2761a9..3fa0fbf 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -112,6 +112,10 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 	 */
 	secondary_data.task = idle;
 	secondary_data.stack = task_stack_page(idle) + THREAD_SIZE;
+#if defined(CONFIG_ARM64_PTR_AUTH)
+	secondary_data.ptrauth_key.apia.lo = idle->thread.keys_kernel.apia.lo;
+	secondary_data.ptrauth_key.apia.hi = idle->thread.keys_kernel.apia.hi;
+#endif
 	update_cpu_boot_status(CPU_MMU_OFF);
 	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
 
@@ -138,6 +142,10 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 
 	secondary_data.task = NULL;
 	secondary_data.stack = NULL;
+#if defined(CONFIG_ARM64_PTR_AUTH)
+	secondary_data.ptrauth_key.apia.lo = 0;
+	secondary_data.ptrauth_key.apia.hi = 0;
+#endif
 	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
 	status = READ_ONCE(secondary_data.status);
 	if (ret && status) {
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 8734d99..bae8584 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -491,6 +491,10 @@ ENTRY(__cpu_setup)
 	ubfx	x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
 	cbz	x2, 3f
 
+	/*
+	 * The primary cpu keys are reset here and can be
+	 * re-initialised with some proper values later.
+	 */
 	msr_s	SYS_APIAKEYLO_EL1, xzr
 	msr_s	SYS_APIAKEYHI_EL1, xzr
 
@@ -503,6 +507,14 @@ alternative_if_not ARM64_HAS_ADDRESS_AUTH
 	b	3f
 alternative_else_nop_endif
 
+	/* Install ptrauth key for secondary cpus */
+	adr_l	x2, secondary_data
+	ldr	x3, [x2, #CPU_BOOT_TASK]	// get secondary_data.task
+	cbz	x3, 2f				// check for slow booting cpus
+	ldp	x3, x4, [x2, #CPU_BOOT_PTRAUTH_KEY]
+	msr_s	SYS_APIAKEYLO_EL1, x3
+	msr_s	SYS_APIAKEYHI_EL1, x4
+
 2:	/* Enable ptrauth instructions */
 	ldr	x2, =SCTLR_ELx_ENIA | SCTLR_ELx_ENIB | \
 		     SCTLR_ELx_ENDA | SCTLR_ELx_ENDB
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
