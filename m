Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E7BDA714
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qP4EIuxYla0KIy4QTnkADNQ1AamaIjPpu3NBryZ4exQ=; b=iLolGPHw26Bu38E1VJEo4cexe2
	7AFe/zHOHWbjpDwBpDF7UNJoJH4FlH/aaaOl/X/y/6siDXoh1+SVMJMEyjpVWKh0O3nHWILkcwiOv
	kgADKTgyO5oqMtjORvMtdv+4+xyIjCzh514dLtmQeNmafAU80rhQw1ybMSuLhDrmo7rF1IOVTC5nh
	TAdP+tO7vFIwgOlFPwZ5zYHjFmTINpuMacDXvZ4o286hZjZmcq8NN4WXgYQPniGKTXmO4tV+LAj9W
	QFe0aBQK5t+bOE6omy90nchMBSiVD/L0LKGxesghEhoGz162qUImQgSoIDgJ6zi2e4X6eiKdoLITg
	hYv3ARzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0yS-0004FN-1l; Thu, 17 Oct 2019 08:17:32 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0wG-0001HF-5m
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 08:15:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3BFA428;
 Thu, 17 Oct 2019 01:15:09 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 951C93F6C4;
 Thu, 17 Oct 2019 01:15:05 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/11] arm64: initialize and switch ptrauth kernel keys
Date: Thu, 17 Oct 2019 13:44:21 +0530
Message-Id: <1571300065-10236-8-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_011516_427231_DE6A8064 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
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
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since RFC v2:
 - Moved early key setting and key switching from C to assembly, and no longer
   use the pointer auth C function attribute; added new secondary_data fields
   to do so [Suzuki]
 - Removed ISBs in ptrauth_keys_install_user, added a comment in kernel_exit [Catalin]
 - Separate struct for kernel keys [Dave]

 arch/arm64/include/asm/asm_pointer_auth.h | 14 ++++++++++++++
 arch/arm64/include/asm/pointer_auth.h     | 13 +++++++++++++
 arch/arm64/include/asm/processor.h        |  1 +
 arch/arm64/include/asm/smp.h              |  2 ++
 arch/arm64/kernel/asm-offsets.c           |  4 ++++
 arch/arm64/kernel/entry.S                 |  3 +++
 arch/arm64/kernel/head.S                  | 10 ++++++++++
 arch/arm64/kernel/process.c               |  2 ++
 arch/arm64/kernel/smp.c                   |  6 ++++++
 9 files changed, 55 insertions(+)

diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
index 3d39788..172548a 100644
--- a/arch/arm64/include/asm/asm_pointer_auth.h
+++ b/arch/arm64/include/asm/asm_pointer_auth.h
@@ -35,11 +35,25 @@ alternative_if ARM64_HAS_GENERIC_AUTH
 alternative_else_nop_endif
 	.endm
 
+	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
+	mov	\tmp1, #THREAD_KEYS_KERNEL
+	add	\tmp1, \tsk, \tmp1
+alternative_if ARM64_HAS_ADDRESS_AUTH
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
index cc42145..599dd09 100644
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
@@ -43,6 +47,12 @@ static inline void ptrauth_keys_init_user(struct ptrauth_keys_user *keys)
 		get_random_bytes(&keys->apga, sizeof(keys->apga));
 }
 
+static inline void ptrauth_keys_init_kernel(struct ptrauth_keys_kernel *keys)
+{
+	if (system_supports_address_auth())
+		get_random_bytes(&keys->apia, sizeof(keys->apia));
+}
+
 extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
 
 /*
@@ -59,11 +69,14 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
 
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
index 8ec792d..c12c98d 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -145,6 +145,7 @@ struct thread_struct {
 	struct debug_info	debug;		/* debugging */
 #ifdef CONFIG_ARM64_PTR_AUTH
 	struct ptrauth_keys_user	keys_user;
+	struct ptrauth_keys_kernel	keys_kernel;
 #endif
 };
 
diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index 46e2b05..2294e93 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -88,6 +88,8 @@ asmlinkage void secondary_start_kernel(void);
 struct secondary_data {
 	void *stack;
 	struct task_struct *task;
+	unsigned long ptrauth_key_lo;
+	unsigned long ptrauth_key_hi;
 	long status;
 };
 
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index cf15182..78ab279 100644
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
@@ -90,6 +91,8 @@ int main(void)
   BLANK();
   DEFINE(CPU_BOOT_STACK,	offsetof(struct secondary_data, stack));
   DEFINE(CPU_BOOT_TASK,		offsetof(struct secondary_data, task));
+  DEFINE(CPU_BOOT_PTRAUTH_KEY_LO,	offsetof(struct secondary_data, ptrauth_key_lo));
+  DEFINE(CPU_BOOT_PTRAUTH_KEY_HI,	offsetof(struct secondary_data, ptrauth_key_hi));
   BLANK();
 #ifdef CONFIG_KVM_ARM_HOST
   DEFINE(VCPU_CONTEXT,		offsetof(struct kvm_vcpu, arch.ctxt));
@@ -136,6 +139,7 @@ int main(void)
   DEFINE(PTRAUTH_USER_KEY_APDA,		offsetof(struct ptrauth_keys_user, apda));
   DEFINE(PTRAUTH_USER_KEY_APDB,		offsetof(struct ptrauth_keys_user, apdb));
   DEFINE(PTRAUTH_USER_KEY_APGA,		offsetof(struct ptrauth_keys_user, apga));
+  DEFINE(PTRAUTH_KERNEL_KEY_APIA,	offsetof(struct ptrauth_keys_kernel, apia));
   BLANK();
 #endif
   return 0;
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index b6272a3..0619065 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -173,6 +173,7 @@ alternative_cb_end
 
 	apply_ssbd 1, x22, x23
 
+	ptrauth_keys_install_kernel tsk, x20, x22, x23
 	.else
 	add	x21, sp, #S_FRAME_SIZE
 	get_current_task tsk
@@ -342,6 +343,7 @@ alternative_else_nop_endif
 	msr	cntkctl_el1, x1
 4:
 #endif
+	/* No kernel C function calls after this as user keys are set. */
 	ptrauth_keys_install_user tsk, x0, x1, x2
 
 	apply_ssbd 0, x0, x1
@@ -1155,6 +1157,7 @@ ENTRY(cpu_switch_to)
 	ldr	lr, [x8]
 	mov	sp, x9
 	msr	sp_el0, x1
+	ptrauth_keys_install_kernel x1, x8, x9, x10
 	ret
 ENDPROC(cpu_switch_to)
 NOKPROBE(cpu_switch_to)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 157c811..e518511 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -858,6 +858,16 @@ alternative_endif
 	orr	x2, x2, x1	// primary || system_supports_address_auth()
 	cbz	x2, 3f
 
+	/* Install ptrauth key */
+	mov	x3, xzr
+	mov	x4, xzr
+	cbnz	x1, 1f
+	adr_l	x2, secondary_data
+	ldr	x3, [x2, CPU_BOOT_PTRAUTH_KEY_LO]
+	ldr	x4, [x2, CPU_BOOT_PTRAUTH_KEY_HI]
+1:	msr_s	SYS_APIAKEYLO_EL1, x3
+	msr_s	SYS_APIAKEYHI_EL1, x4
+
 	/* Enable ptrauth instructions */
 	ldr	x2, =SCTLR_ELx_ENIA | SCTLR_ELx_ENIB | \
 		     SCTLR_ELx_ENDA | SCTLR_ELx_ENDB
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 5b2b158..b737f55 100644
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
index a6a5f24..230d21f 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -110,6 +110,10 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 	 */
 	secondary_data.task = idle;
 	secondary_data.stack = task_stack_page(idle) + THREAD_SIZE;
+#if defined(CONFIG_ARM64_PTR_AUTH)
+	secondary_data.ptrauth_key_lo = idle->thread.keys_kernel.apia.lo;
+	secondary_data.ptrauth_key_hi = idle->thread.keys_kernel.apia.hi;
+#endif
 	update_cpu_boot_status(CPU_MMU_OFF);
 	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
 
@@ -136,6 +140,8 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 
 	secondary_data.task = NULL;
 	secondary_data.stack = NULL;
+	secondary_data.ptrauth_key_lo = 0;
+	secondary_data.ptrauth_key_hi = 0;
 	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
 	status = READ_ONCE(secondary_data.status);
 	if (ret && status) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
