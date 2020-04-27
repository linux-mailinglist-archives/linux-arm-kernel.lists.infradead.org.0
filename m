Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE061BA9B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:04:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZV6Z3TunlF5LSC5PTkOb3WxWsb7qntgJo9sDgd3soso=; b=ohRnFrOVpCaz2r
	g0iH9EQhm9PPnHaZutYWlihb6PyZ8ZO7ccwjGCdV4gf4Le7dPppnDOshqCHc/feuTbGjbyLatX6L4
	/TWX4zdNPrnZYF8uEFY1Pel/FuTNCjHjT89ZY6KTMio1EpOVSY35vvwLUGeu6ZvMhFaiiYJSDYGPI
	RGXEM4jbpuP9+mCehYkHT+k5s6pS2rHPz8UF/igTRYAQJThD5X9ktCtE/ukqGCqTvLycsA1FlYxjb
	aWU4J6u1Tfun2yVPCeABA2ovTxYmik8HDgS6y7eKuEOjDIvYPaxGQaZrFyHpmBlqIxTzGC8Ls7zIb
	l0+ElN0t1ePAE5mvnMiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6Eb-00052j-Hl; Mon, 27 Apr 2020 16:03:53 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6Bo-0002W9-Sz
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:01:08 +0000
Received: by mail-qt1-x849.google.com with SMTP id x7so20890136qtv.23
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 09:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=mTuo+Q1m3yKttGwW9SEPV1YXcR0ZfdxZB+S+BHE7GOg=;
 b=DIh3ZpqH3JorDafuYNCRIaDH7QVxSM16VgoQMighevMCD4FrDjlhM3IVNYJOjOWaE9
 u8C6UWBxnucwvlXWJNM0ZSWYzn9+SI1rMDMNpvXpnJ8GGC6yy7Bjs3/KirGL0Ecy84e/
 dPcN+UWEJ4U79yFPR2tYBNwJGosY0VUt4CL7ZZZWwYCPWfUovsujNRT06S/K43Gbc/if
 K2tAGPhsmq0wlV3dzi+xhSG4RKZxDr+5DZmpLHIq+u9l9HqgyVzxeFdpl5LBJ6Ib3Leu
 YqLifV/Huv23y05O1T83NYLZWlVqYOXd4W2NH2m9Sc6NF88AUFdLjMW4cPboprmzjCGF
 4Tzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=mTuo+Q1m3yKttGwW9SEPV1YXcR0ZfdxZB+S+BHE7GOg=;
 b=lVyBzmnyrJlDGkddgULPiG9QSWdDVc6YGNlDcrsIcEUXg0NzJPAv+JyPjsTi6W+YT3
 MkUK7YidcZ6ZLIe2dP+AJQYgz6m/AmaZiE+pB0dadDoHtIbqc4cFXA5m4fgfjpvgcBPX
 trxdbMIceuk4wZ5f8iNN/DYYbLRAcI+K/hztMTEv1Yq3AFIJlfpnHZWWVFT6JvjZrAND
 mElF806FyfTOPWKLs42JbTcpLEgIu9BoS2GnNPS5aT5NRtA0B/aKDHKlcjlFTeD067Sz
 EwyaH+7WMINgxOz7UHhnP4bOFVipvzFG37RCDJhrCB5clvDH4hmPAe7BOXxJzTYKVt1M
 h08g==
X-Gm-Message-State: AGi0PuZc1lEQRf0eCqqGgHik3D0AFuKB/2fbYHbkoUhoW7/Wg3gAtukW
 zyWU0MITE1+lgTdZmFUFLx+2C+J8KeXJf1wEA0U=
X-Google-Smtp-Source: APiQypLOMueDmQsfet9TCWUzm3JBg3meRr/pTKYD6act4/mQMOJMVmQOPBTLPJeLGAgmLRgTR+erltvq+zOuSfT2ri8=
X-Received: by 2002:a0c:8324:: with SMTP id j33mr1090078qva.23.1588003256950; 
 Mon, 27 Apr 2020 09:00:56 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:16 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 10/12] arm64: implement Shadow Call Stack
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_090100_987447_AC60F7BE 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change implements shadow stack switching, initial SCS set-up,
and interrupt shadow stacks for arm64.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig                   |  5 +++
 arch/arm64/include/asm/scs.h         | 46 ++++++++++++++++++++++++++++
 arch/arm64/include/asm/thread_info.h | 13 ++++++++
 arch/arm64/kernel/Makefile           |  1 +
 arch/arm64/kernel/asm-offsets.c      |  4 +++
 arch/arm64/kernel/entry.S            | 24 +++++++++++++--
 arch/arm64/kernel/head.S             |  6 ++++
 arch/arm64/kernel/process.c          |  2 ++
 arch/arm64/kernel/scs.c              | 15 +++++++++
 9 files changed, 114 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/include/asm/scs.h
 create mode 100644 arch/arm64/kernel/scs.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..c380a16533f6 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -64,6 +64,7 @@ config ARM64
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
+	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
@@ -1025,6 +1026,10 @@ config ARCH_HAS_CACHE_LINE_SIZE
 config ARCH_ENABLE_SPLIT_PMD_PTLOCK
 	def_bool y if PGTABLE_LEVELS > 2
 
+# Supported by clang >= 7.0
+config CC_HAVE_SHADOW_CALL_STACK
+	def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
+
 config SECCOMP
 	bool "Enable seccomp to safely compute untrusted bytecode"
 	---help---
diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
new file mode 100644
index 000000000000..96549353b0cb
--- /dev/null
+++ b/arch/arm64/include/asm/scs.h
@@ -0,0 +1,46 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_SCS_H
+#define _ASM_SCS_H
+
+#ifdef __ASSEMBLY__
+
+#ifdef CONFIG_SHADOW_CALL_STACK
+	.macro scs_load tsk, tmp
+	ldp	x18, \tmp, [\tsk, #TSK_TI_SCS_BASE]
+	add	x18, x18, \tmp
+	.endm
+
+	.macro scs_save tsk, tmp
+	ldr	\tmp, [\tsk, #TSK_TI_SCS_BASE]
+	sub	\tmp, x18, \tmp
+	str	\tmp, [\tsk, #TSK_TI_SCS_OFFSET]
+	.endm
+#else
+	.macro scs_load tsk, tmp
+	.endm
+
+	.macro scs_save tsk, tmp
+	.endm
+#endif /* CONFIG_SHADOW_CALL_STACK */
+
+#else /* __ASSEMBLY__ */
+
+#include <linux/scs.h>
+
+#ifdef CONFIG_SHADOW_CALL_STACK
+
+static inline void scs_overflow_check(struct task_struct *tsk)
+{
+	if (unlikely(scs_corrupted(tsk)))
+		panic("corrupted shadow stack detected inside scheduler\n");
+}
+
+#else /* CONFIG_SHADOW_CALL_STACK */
+
+static inline void scs_overflow_check(struct task_struct *tsk) {}
+
+#endif /* CONFIG_SHADOW_CALL_STACK */
+
+#endif /* __ASSEMBLY __ */
+
+#endif /* _ASM_SCS_H */
diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index 512174a8e789..9df79c0a4c43 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -41,6 +41,10 @@ struct thread_info {
 #endif
 		} preempt;
 	};
+#ifdef CONFIG_SHADOW_CALL_STACK
+	void			*scs_base;
+	unsigned long		scs_offset;
+#endif
 };
 
 #define thread_saved_pc(tsk)	\
@@ -100,11 +104,20 @@ void arch_release_task_struct(struct task_struct *tsk);
 				 _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP | \
 				 _TIF_SYSCALL_EMU)
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+#define INIT_SCS							\
+	.scs_base	= init_shadow_call_stack,			\
+	.scs_offset	= 0,
+#else
+#define INIT_SCS
+#endif
+
 #define INIT_THREAD_INFO(tsk)						\
 {									\
 	.flags		= _TIF_FOREIGN_FPSTATE,				\
 	.preempt_count	= INIT_PREEMPT_COUNT,				\
 	.addr_limit	= KERNEL_DS,					\
+	INIT_SCS							\
 }
 
 #endif /* __ASM_THREAD_INFO_H */
diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 4e5b8ee31442..151f28521f1e 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -63,6 +63,7 @@ obj-$(CONFIG_CRASH_CORE)		+= crash_core.o
 obj-$(CONFIG_ARM_SDE_INTERFACE)		+= sdei.o
 obj-$(CONFIG_ARM64_SSBD)		+= ssbd.o
 obj-$(CONFIG_ARM64_PTR_AUTH)		+= pointer_auth.o
+obj-$(CONFIG_SHADOW_CALL_STACK)		+= scs.o
 
 obj-y					+= vdso/ probes/
 obj-$(CONFIG_COMPAT_VDSO)		+= vdso32/
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 9981a0a5a87f..d7934250b68c 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -33,6 +33,10 @@ int main(void)
   DEFINE(TSK_TI_ADDR_LIMIT,	offsetof(struct task_struct, thread_info.addr_limit));
 #ifdef CONFIG_ARM64_SW_TTBR0_PAN
   DEFINE(TSK_TI_TTBR0,		offsetof(struct task_struct, thread_info.ttbr0));
+#endif
+#ifdef CONFIG_SHADOW_CALL_STACK
+  DEFINE(TSK_TI_SCS_BASE,	offsetof(struct task_struct, thread_info.scs_base));
+  DEFINE(TSK_TI_SCS_OFFSET,	offsetof(struct task_struct, thread_info.scs_offset));
 #endif
   DEFINE(TSK_STACK,		offsetof(struct task_struct, stack));
 #ifdef CONFIG_STACKPROTECTOR
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index ddcde093c433..244268d5ae47 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -23,6 +23,7 @@
 #include <asm/mmu.h>
 #include <asm/processor.h>
 #include <asm/ptrace.h>
+#include <asm/scs.h>
 #include <asm/thread_info.h>
 #include <asm/asm-uaccess.h>
 #include <asm/unistd.h>
@@ -179,6 +180,8 @@ alternative_cb_end
 	apply_ssbd 1, x22, x23
 
 	ptrauth_keys_install_kernel tsk, 1, x20, x22, x23
+
+	scs_load tsk, x20
 	.else
 	add	x21, sp, #S_FRAME_SIZE
 	get_current_task tsk
@@ -343,6 +346,8 @@ alternative_else_nop_endif
 	msr	cntkctl_el1, x1
 4:
 #endif
+	scs_save tsk, x0
+
 	/* No kernel C function calls after this as user keys are set. */
 	ptrauth_keys_install_user tsk, x0, x1, x2
 
@@ -388,6 +393,9 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
 	.macro	irq_stack_entry
 	mov	x19, sp			// preserve the original sp
+#ifdef CONFIG_SHADOW_CALL_STACK
+	mov	x24, x18		// preserve the original shadow stack
+#endif
 
 	/*
 	 * Compare sp with the base of the task stack.
@@ -405,15 +413,25 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
 
 	/* switch to the irq stack */
 	mov	sp, x26
+
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* also switch to the irq shadow stack */
+	adr_this_cpu x18, irq_shadow_call_stack, x26
+#endif
+
 9998:
 	.endm
 
 	/*
-	 * x19 should be preserved between irq_stack_entry and
-	 * irq_stack_exit.
+	 * The callee-saved regs (x19-x29) should be preserved between
+	 * irq_stack_entry and irq_stack_exit, but note that kernel_entry
+	 * uses x20-x23 to store data for later use.
 	 */
 	.macro	irq_stack_exit
 	mov	sp, x19
+#ifdef CONFIG_SHADOW_CALL_STACK
+	mov	x18, x24
+#endif
 	.endm
 
 /* GPRs used by entry code */
@@ -901,6 +919,8 @@ SYM_FUNC_START(cpu_switch_to)
 	mov	sp, x9
 	msr	sp_el0, x1
 	ptrauth_keys_install_kernel x1, 1, x8, x9, x10
+	scs_save x0, x8
+	scs_load x1, x8
 	ret
 SYM_FUNC_END(cpu_switch_to)
 NOKPROBE(cpu_switch_to)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 57a91032b4c2..2b01c19c5483 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -27,6 +27,7 @@
 #include <asm/pgtable-hwdef.h>
 #include <asm/pgtable.h>
 #include <asm/page.h>
+#include <asm/scs.h>
 #include <asm/smp.h>
 #include <asm/sysreg.h>
 #include <asm/thread_info.h>
@@ -424,6 +425,10 @@ SYM_FUNC_START_LOCAL(__primary_switched)
 	stp	xzr, x30, [sp, #-16]!
 	mov	x29, sp
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+	adr_l	x18, init_shadow_call_stack	// Set shadow call stack
+#endif
+
 	str_l	x21, __fdt_pointer, x5		// Save FDT pointer
 
 	ldr_l	x4, kimage_vaddr		// Save the offset between
@@ -737,6 +742,7 @@ SYM_FUNC_START_LOCAL(__secondary_switched)
 	ldr	x2, [x0, #CPU_BOOT_TASK]
 	cbz	x2, __secondary_too_slow
 	msr	sp_el0, x2
+	scs_load x2, x3
 	mov	x29, #0
 	mov	x30, #0
 	b	secondary_start_kernel
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 56be4cbf771f..a35d3318492c 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -52,6 +52,7 @@
 #include <asm/mmu_context.h>
 #include <asm/processor.h>
 #include <asm/pointer_auth.h>
+#include <asm/scs.h>
 #include <asm/stacktrace.h>
 
 #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
@@ -515,6 +516,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
 	entry_task_switch(next);
 	uao_thread_switch(next);
 	ssbs_thread_switch(next);
+	scs_overflow_check(next);
 
 	/*
 	 * Complete any pending TLB or cache maintenance on this CPU in case
diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
new file mode 100644
index 000000000000..acc6741d1a40
--- /dev/null
+++ b/arch/arm64/kernel/scs.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#include <linux/percpu.h>
+#include <asm/scs.h>
+
+/* Allocate a static per-CPU shadow stack */
+#define DEFINE_SCS(name)						\
+	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
+
+DEFINE_SCS(irq_shadow_call_stack);
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
