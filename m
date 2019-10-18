Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0CEDCA95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HocY0Gno6rpATTkNjMOw2BVNFy2xrTurE64aaKllcqs=; b=ZDx+iTcMJSdhEg
	I+WlZ6TdsfLDNmtcRRkp3dSGJJq4hlWk5zK/3tmKLO6vEffeOysTWwFuEvKsEP2CWytRSrXNHJc89
	8RaTaPELPnnlT/58qncrBMocKP29ruCprJkvVYzC42nPDNCsh0JHuRMvVnlfkVl3TazWv8WkhA8+a
	ylDwXGj5VxS7iezNGQM79S2+kAh7QZNluT041XWhsE+D+zpM2LqM4SWnISvSSBA2w2GZ534CavYT+
	8J+2YZSLje23oz5hJrJ0njNntH3wkDn/AYMN29MbmID3DPGkGNbZ6XmkHhrzH4r0RVYe3VWOYbTZb
	Y1bbPG2+4f7T7ByrjMew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUsH-0003VL-Fe; Fri, 18 Oct 2019 16:13:09 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUqK-0001iK-BE
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:11:11 +0000
Received: by mail-pg1-x54a.google.com with SMTP id w13so4578138pge.15
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=nb/Sj1uUqCudVY1GzIbe2UX9PioIzl4YsjEJIj4hCD8=;
 b=V/G2C0eHJuPFOwRh3Dly/jwzcNCfbqXZV4MkzwN2SNOr80mirycaX1gRYAdHm2nLaX
 L3s1Hdym5MJqVVC7EbxIONG5E9OrsLDGm/g9rxl9q6VkEYbJizPFWhrE2SoYG1EEa5bd
 kmq3AFfoHkK/lcfP+YMHK2P6rD4c7/BqU34GihwEPvGXsvWycorPC3nB1T5iQJLYZ0wp
 HthLQe47pJySnkhLNgFPMCMXC5bz7pk/D1ENZQ/6v4J+34an+emFSzLC4n5CC8ZphyVn
 M8eWlCdd8FlM2IxWOnFsNm/Gruld+HPi/gc5fIJl8YF1FQBw3r+c3wE58gfz3/IRXdN9
 WEUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=nb/Sj1uUqCudVY1GzIbe2UX9PioIzl4YsjEJIj4hCD8=;
 b=I0pHyxMAQyyBQOQ5+/Ynh9dC6vNzBU0+95srnI3w6Ot90suW3zeHa/TKgUg6LJs7Ub
 2KnaVvJINSGZqfcg1l6l+PyPcL6NerUt6T6vyHTpPZZTS2dICffpLDjDtawJVeFryjqE
 OWZJHL3nvJKdLG805DVV2yBIhIMj4sjJ2INee0hMfbCx2lHT+XGMgWJkoF4as3Is9bjI
 m1bv4UXOAED0vXa1KBFe78FqsPu5JDBtT7CwrtYIs9m3SSWC7aOWi/b3KUsVHdYx+9yq
 dH7T69dLgryiZ4m8i/VV8HFQLQAqxx2u6JiP5dmvqXtPLiI240dKe3fxp2CWu3+EuebF
 1Iqw==
X-Gm-Message-State: APjAAAVBtj9T1jCvxGX2xbyvSjm2WxhIdKSxBV1RaQmtLg4cbPmzo0Sd
 P9K4esWPyHe49xE5Z7+FAcZWA1kT1ujbiTSb430=
X-Google-Smtp-Source: APXvYqw0i1ys5Qza3Rohx9re+KGxZAQHbujZiTFqNgG2/0VGDxLHssWCSip4KyplPyALaC1/Qrg6JgVmOYQ2+WCmJ30=
X-Received: by 2002:a63:ce07:: with SMTP id y7mr10981743pgf.234.1571415065039; 
 Fri, 18 Oct 2019 09:11:05 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:21 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091108_473670_D6498881 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change adds generic support for Clang's Shadow Call Stack, which
uses a shadow stack to protect return addresses from being overwritten
by an attacker. Details are available here:

  https://clang.llvm.org/docs/ShadowCallStack.html

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile                       |   6 ++
 arch/Kconfig                   |  39 ++++++++
 include/linux/compiler-clang.h |   2 +
 include/linux/compiler_types.h |   4 +
 include/linux/scs.h            |  88 ++++++++++++++++++
 init/init_task.c               |   6 ++
 init/main.c                    |   3 +
 kernel/Makefile                |   1 +
 kernel/fork.c                  |   9 ++
 kernel/sched/core.c            |   2 +
 kernel/sched/sched.h           |   1 +
 kernel/scs.c                   | 162 +++++++++++++++++++++++++++++++++
 12 files changed, 323 insertions(+)
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

diff --git a/Makefile b/Makefile
index ffd7a912fc46..e401fa500f62 100644
--- a/Makefile
+++ b/Makefile
@@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
 KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
 endif
 
+ifdef CONFIG_SHADOW_CALL_STACK
+KBUILD_CFLAGS	+= -fsanitize=shadow-call-stack
+DISABLE_SCS	:= -fno-sanitize=shadow-call-stack
+export DISABLE_SCS
+endif
+
 # arch Makefile may override CC so keep this after arch Makefile is included
 NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 
diff --git a/arch/Kconfig b/arch/Kconfig
index 5f8a5d84dbbe..a222adda8130 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -521,6 +521,45 @@ config STACKPROTECTOR_STRONG
 	  about 20% of all kernel functions, which increases the kernel code
 	  size by about 2%.
 
+config ARCH_SUPPORTS_SHADOW_CALL_STACK
+	bool
+	help
+	  An architecture should select this if it supports Clang's Shadow
+	  Call Stack, has asm/scs.h, and implements runtime support for shadow
+	  stack switching.
+
+config SHADOW_CALL_STACK_VMAP
+	def_bool n
+	depends on SHADOW_CALL_STACK
+	help
+	  Use virtually mapped shadow call stacks. Selecting this option
+	  provides better stack exhaustion protection, but increases per-thread
+	  memory consumption as a full page is allocated for each shadow stack.
+
+choice
+	prompt "Return-oriented programming (ROP) protection"
+	default ROP_PROTECTION_NONE
+	help
+	  This option controls kernel protections against return-oriented
+	  programming (ROP) attacks.
+
+config ROP_PROTECTION_NONE
+	bool "None"
+
+config SHADOW_CALL_STACK
+	bool "Clang Shadow Call Stack"
+	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
+	depends on CC_IS_CLANG && CLANG_VERSION >= 70000
+	help
+	  This option enables Clang's Shadow Call Stack, which uses a shadow
+	  stack to protect function return addresses from being overwritten by
+	  an attacker. More information can be found from Clang's
+	  documentation:
+
+	    https://clang.llvm.org/docs/ShadowCallStack.html
+
+endchoice
+
 config HAVE_ARCH_WITHIN_STACK_FRAMES
 	bool
 	help
diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 333a6695a918..9af08391f205 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -42,3 +42,5 @@
  * compilers, like ICC.
  */
 #define barrier() __asm__ __volatile__("" : : : "memory")
+
+#define __noscs		__attribute__((no_sanitize("shadow-call-stack")))
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 72393a8c1a6c..be5d5be4b1ae 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -202,6 +202,10 @@ struct ftrace_likely_data {
 # define randomized_struct_fields_end
 #endif
 
+#ifndef __noscs
+# define __noscs
+#endif
+
 #ifndef asm_volatile_goto
 #define asm_volatile_goto(x...) asm goto(x)
 #endif
diff --git a/include/linux/scs.h b/include/linux/scs.h
new file mode 100644
index 000000000000..dfbd80faa528
--- /dev/null
+++ b/include/linux/scs.h
@@ -0,0 +1,88 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2018 Google LLC
+ */
+
+#ifndef _LINUX_SCS_H
+#define _LINUX_SCS_H
+
+#include <linux/gfp.h>
+#include <linux/sched.h>
+#include <asm/page.h>
+
+#ifdef CONFIG_SHADOW_CALL_STACK
+
+#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
+# define SCS_SIZE		PAGE_SIZE
+#else
+# define SCS_SIZE		1024
+#endif
+
+#define SCS_GFP			(GFP_KERNEL | __GFP_ZERO)
+
+extern unsigned long init_shadow_call_stack[];
+
+static inline void *task_scs(struct task_struct *tsk)
+{
+	return task_thread_info(tsk)->shadow_call_stack;
+}
+
+static inline void task_set_scs(struct task_struct *tsk, void *s)
+{
+	task_thread_info(tsk)->shadow_call_stack = s;
+}
+
+extern void scs_init(void);
+extern void scs_set_init_magic(struct task_struct *tsk);
+extern void scs_task_init(struct task_struct *tsk);
+extern void scs_task_reset(struct task_struct *tsk);
+extern int scs_prepare(struct task_struct *tsk, int node);
+extern bool scs_corrupted(struct task_struct *tsk);
+extern void scs_release(struct task_struct *tsk);
+
+#else /* CONFIG_SHADOW_CALL_STACK */
+
+static inline void *task_scs(struct task_struct *tsk)
+{
+	return 0;
+}
+
+static inline void task_set_scs(struct task_struct *tsk, void *s)
+{
+}
+
+static inline void scs_init(void)
+{
+}
+
+static inline void scs_set_init_magic(struct task_struct *tsk)
+{
+}
+
+static inline void scs_task_init(struct task_struct *tsk)
+{
+}
+
+static inline void scs_task_reset(struct task_struct *tsk)
+{
+}
+
+static inline int scs_prepare(struct task_struct *tsk, int node)
+{
+	return 0;
+}
+
+static inline bool scs_corrupted(struct task_struct *tsk)
+{
+	return false;
+}
+
+static inline void scs_release(struct task_struct *tsk)
+{
+}
+
+#endif /* CONFIG_SHADOW_CALL_STACK */
+
+#endif /* _LINUX_SCS_H */
diff --git a/init/init_task.c b/init/init_task.c
index 9e5cbe5eab7b..5e55ff45bbbf 100644
--- a/init/init_task.c
+++ b/init/init_task.c
@@ -11,6 +11,7 @@
 #include <linux/mm.h>
 #include <linux/audit.h>
 #include <linux/numa.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <linux/uaccess.h>
@@ -184,6 +185,11 @@ struct task_struct init_task
 };
 EXPORT_SYMBOL(init_task);
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+unsigned long init_shadow_call_stack[SCS_SIZE / sizeof(long)]
+	__init_task_data __aligned(SCS_SIZE);
+#endif
+
 /*
  * Initial thread structure. Alignment of this is handled by a special
  * linker map entry.
diff --git a/init/main.c b/init/main.c
index 91f6ebb30ef0..fb8bcdd729b9 100644
--- a/init/main.c
+++ b/init/main.c
@@ -93,6 +93,7 @@
 #include <linux/rodata_test.h>
 #include <linux/jump_label.h>
 #include <linux/mem_encrypt.h>
+#include <linux/scs.h>
 
 #include <asm/io.h>
 #include <asm/bugs.h>
@@ -578,6 +579,8 @@ asmlinkage __visible void __init start_kernel(void)
 	char *after_dashes;
 
 	set_task_stack_end_magic(&init_task);
+	scs_set_init_magic(&init_task);
+
 	smp_setup_processor_id();
 	debug_objects_early_init();
 
diff --git a/kernel/Makefile b/kernel/Makefile
index daad787fb795..313dbd44d576 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -102,6 +102,7 @@ obj-$(CONFIG_TRACEPOINTS) += trace/
 obj-$(CONFIG_IRQ_WORK) += irq_work.o
 obj-$(CONFIG_CPU_PM) += cpu_pm.o
 obj-$(CONFIG_BPF) += bpf/
+obj-$(CONFIG_SHADOW_CALL_STACK) += scs.o
 
 obj-$(CONFIG_PERF_EVENTS) += events/
 
diff --git a/kernel/fork.c b/kernel/fork.c
index bcdf53125210..ae7ebe9f0586 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -94,6 +94,7 @@
 #include <linux/livepatch.h>
 #include <linux/thread_info.h>
 #include <linux/stackleak.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <asm/pgalloc.h>
@@ -451,6 +452,8 @@ void put_task_stack(struct task_struct *tsk)
 
 void free_task(struct task_struct *tsk)
 {
+	scs_release(tsk);
+
 #ifndef CONFIG_THREAD_INFO_IN_TASK
 	/*
 	 * The task is finally done with both the stack and thread_info,
@@ -834,6 +837,8 @@ void __init fork_init(void)
 			  NULL, free_vm_stack_cache);
 #endif
 
+	scs_init();
+
 	lockdep_init_task(&init_task);
 	uprobes_init();
 }
@@ -907,6 +912,7 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
 	clear_user_return_notifier(tsk);
 	clear_tsk_need_resched(tsk);
 	set_task_stack_end_magic(tsk);
+	scs_task_init(tsk);
 
 #ifdef CONFIG_STACKPROTECTOR
 	tsk->stack_canary = get_random_canary();
@@ -2022,6 +2028,9 @@ static __latent_entropy struct task_struct *copy_process(
 				 args->tls);
 	if (retval)
 		goto bad_fork_cleanup_io;
+	retval = scs_prepare(p, node);
+	if (retval)
+		goto bad_fork_cleanup_thread;
 
 	stackleak_task_init(p);
 
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index dd05a378631a..e7faeb383008 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -6013,6 +6013,8 @@ void init_idle(struct task_struct *idle, int cpu)
 	raw_spin_lock_irqsave(&idle->pi_lock, flags);
 	raw_spin_lock(&rq->lock);
 
+	scs_task_reset(idle);
+
 	__sched_fork(0, idle);
 	idle->state = TASK_RUNNING;
 	idle->se.exec_start = sched_clock();
diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
index 0db2c1b3361e..c153003a011c 100644
--- a/kernel/sched/sched.h
+++ b/kernel/sched/sched.h
@@ -58,6 +58,7 @@
 #include <linux/profile.h>
 #include <linux/psi.h>
 #include <linux/rcupdate_wait.h>
+#include <linux/scs.h>
 #include <linux/security.h>
 #include <linux/stop_machine.h>
 #include <linux/suspend.h>
diff --git a/kernel/scs.c b/kernel/scs.c
new file mode 100644
index 000000000000..47324e8d313b
--- /dev/null
+++ b/kernel/scs.c
@@ -0,0 +1,162 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#include <linux/cpuhotplug.h>
+#include <linux/mm.h>
+#include <linux/slab.h>
+#include <linux/scs.h>
+#include <linux/vmalloc.h>
+#include <asm/scs.h>
+
+#define SCS_END_MAGIC	0xaf0194819b1635f6UL
+
+static inline void *__scs_base(struct task_struct *tsk)
+{
+	return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
+}
+
+#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
+
+/* Keep a cache of shadow stacks */
+#define SCS_CACHE_SIZE 2
+static DEFINE_PER_CPU(void *, scs_cache[SCS_CACHE_SIZE]);
+
+static void *scs_alloc(int node)
+{
+	int i;
+
+	for (i = 0; i < SCS_CACHE_SIZE; i++) {
+		void *s;
+
+		s = this_cpu_xchg(scs_cache[i], NULL);
+		if (s) {
+			memset(s, 0, SCS_SIZE);
+			return s;
+		}
+	}
+
+	return __vmalloc_node_range(SCS_SIZE, SCS_SIZE,
+				    VMALLOC_START, VMALLOC_END,
+				    SCS_GFP, PAGE_KERNEL, 0,
+				    node, __builtin_return_address(0));
+}
+
+static void scs_free(void *s)
+{
+	int i;
+
+	for (i = 0; i < SCS_CACHE_SIZE; i++) {
+		if (this_cpu_cmpxchg(scs_cache[i], 0, s) != 0)
+			continue;
+
+		return;
+	}
+
+	vfree_atomic(s);
+}
+
+static int scs_cleanup(unsigned int cpu)
+{
+	int i;
+	void **cache = per_cpu_ptr(scs_cache, cpu);
+
+	for (i = 0; i < SCS_CACHE_SIZE; i++) {
+		vfree(cache[i]);
+		cache[i] = NULL;
+	}
+
+	return 0;
+}
+
+void __init scs_init(void)
+{
+	cpuhp_setup_state(CPUHP_BP_PREPARE_DYN, "scs:scs_cache", NULL,
+		scs_cleanup);
+}
+
+#else /* !CONFIG_SHADOW_CALL_STACK_VMAP */
+
+static struct kmem_cache *scs_cache;
+
+static inline void *scs_alloc(int node)
+{
+	return kmem_cache_alloc_node(scs_cache, SCS_GFP, node);
+}
+
+static inline void scs_free(void *s)
+{
+	kmem_cache_free(scs_cache, s);
+}
+
+void __init scs_init(void)
+{
+	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
+				0, NULL);
+	WARN_ON(!scs_cache);
+}
+
+#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
+
+static inline unsigned long *scs_magic(struct task_struct *tsk)
+{
+	return (unsigned long *)(__scs_base(tsk) + SCS_SIZE - sizeof(long));
+}
+
+static inline void scs_set_magic(struct task_struct *tsk)
+{
+	*scs_magic(tsk) = SCS_END_MAGIC;
+}
+
+void scs_task_init(struct task_struct *tsk)
+{
+	task_set_scs(tsk, NULL);
+}
+
+void scs_task_reset(struct task_struct *tsk)
+{
+	task_set_scs(tsk, __scs_base(tsk));
+}
+
+void scs_set_init_magic(struct task_struct *tsk)
+{
+	scs_save(tsk);
+	scs_set_magic(tsk);
+	scs_load(tsk);
+}
+
+int scs_prepare(struct task_struct *tsk, int node)
+{
+	void *s;
+
+	s = scs_alloc(node);
+	if (!s)
+		return -ENOMEM;
+
+	task_set_scs(tsk, s);
+	scs_set_magic(tsk);
+
+	return 0;
+}
+
+bool scs_corrupted(struct task_struct *tsk)
+{
+	return *scs_magic(tsk) != SCS_END_MAGIC;
+}
+
+void scs_release(struct task_struct *tsk)
+{
+	void *s;
+
+	s = __scs_base(tsk);
+	if (!s)
+		return;
+
+	WARN_ON(scs_corrupted(tsk));
+
+	scs_task_init(tsk);
+	scs_free(s);
+}
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
