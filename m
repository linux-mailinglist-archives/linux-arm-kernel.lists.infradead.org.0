Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAD7EB551
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:49:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6H7LsqWHwK6VkheSvURZmvbNal+ZIj5dAPxBLHdVcU=; b=DzNplyQu6PZB13
	uhGjsQlh+3fWWrZ3RLNrKNVJTgQkdwdJnOgRdYAEI3PgC+hmSWv/fyvz/E3jhp23ppV+369apDSpY
	Q/h8Q/FIL+YVgJBjTwBu7ZoI4cuc3zINbFs4vcuhZIREuZcp3rJxl9VXoKKDzAHazCtAhnqT0/JLT
	HnoreFniuX+G8Y0K8qrBJVL979Cj9BozZKIgmK+moOBAgc+YREXVPvxSZPuqd4FnsUFG6y+1DroTK
	6w50Fiegoir8kkmmGcO8pG0TbTxQYMrauco4Ye5KDZbmjGwInHaC9TOz0T80i/4iculSZeQ6eIw0+
	aWSvMAYCiGmHhvbL570g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDd1-0008CO-Cx; Thu, 31 Oct 2019 16:48:55 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDb9-0006sF-Rr
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:47:02 +0000
Received: by mail-pg1-x549.google.com with SMTP id w13so4763996pge.15
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=QhD+o6YtodNWQks2/cBiCtYNgYirv7RnSf25vOq25FU=;
 b=Cxw4194Te26mFFrAgTYbGN0KlK6jXK4//XYwoa8r1k6llrqyB0MXRr6V9cxYXN+WAv
 kptewk5/ZVEwJ2ab6YLpSXZNCX8DQq9qwkB1vTOchr99UymttB8fIRWU1/r9JRgS3yvn
 iAcSq0GkTbYeeJYWJP+rbxlPvpCwrQFzLZJQ1mmu2rsN3e42MGTOdV+76BKcnDMaCFSX
 hc8d03rUnkvqjf5JDTEThHMurXRejhQelQgqUsBHRMK7D/YoT6dr9B07IXmlES2toXCm
 r7EvDb4AI+NVlnwhoqAqiyKonqjFWbQmus/iUJktA1itPgnyC7kG8LvMm6OkaLlJSacx
 uSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=QhD+o6YtodNWQks2/cBiCtYNgYirv7RnSf25vOq25FU=;
 b=KVhgVOn+IxFcwgBXXUuQ6cB+pMYRobcC9AbPI/2tLh/25luDMaixeM+fCV0BaGNK2O
 m23tpx0DsiVLnfRSh6iHa8wQZgM0c61W6RSekWxnkf8NEBccTqeGh/zVrW0GrXoH2mYa
 ndT/wMeLPS7TldRTSCbvmQtrfmIXk83VyN5EdkDuLzSyx6h0uGGC/oxNpYZEV77d8qff
 o9Wa36S5YsKSb6LF/565NRVgIDcy1nvV3KTgX8nvliRZCOHVVdrT2q4rs07nkpC4sW2I
 m5fI77gjIruWmVXVLx9bo3g9+fBYh0Kf6Waga02nOAPZdjfOJGRtD6RYlFcU5mGROpH+
 A9ng==
X-Gm-Message-State: APjAAAWlwSMO9k+ov6SrUxg8z4XCqN9s//zwT+n2z1Dvco7+lWkv1HfR
 D0yH1Hx/6dGvY+V7sR9Iv0lJjG6DVo6TdJwsfLM=
X-Google-Smtp-Source: APXvYqz5LBjcUcj9+3lOPpLyX/xIcUOnwsH4DpfYlRjtpSW4HreHRWnV0Fn5Up3iU9AaGgj2FvBOEqunpQZFvArtsVA=
X-Received: by 2002:a63:d703:: with SMTP id d3mr7706600pgg.102.1572540416660; 
 Thu, 31 Oct 2019 09:46:56 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:25 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 05/17] add support for Clang's Shadow Call Stack (SCS)
From: samitolvanen@google.com
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_094700_150524_06F42968 
X-CRM114-Status: GOOD (  27.24  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Jann Horn <jannh@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>,
 kernel-hardening@lists.openwall.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This change adds generic support for Clang's Shadow Call Stack,
which uses a shadow stack to protect return addresses from being
overwritten by an attacker. Details are available here:

  https://clang.llvm.org/docs/ShadowCallStack.html

Note that security guarantees in the kernel differ from the
ones documented for user space. The kernel must store addresses
of shadow stacks used by other tasks and interrupt handlers in
memory, which means an attacker capable reading and writing
arbitrary memory may be able to locate them and hijack control
flow by modifying shadow stacks that are not currently in use.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile                       |   6 ++
 arch/Kconfig                   |  33 +++++++
 include/linux/compiler-clang.h |   6 ++
 include/linux/compiler_types.h |   4 +
 include/linux/scs.h            |  54 +++++++++++
 init/init_task.c               |   8 ++
 kernel/Makefile                |   1 +
 kernel/fork.c                  |   9 ++
 kernel/sched/core.c            |   2 +
 kernel/sched/sched.h           |   1 +
 kernel/scs.c                   | 169 +++++++++++++++++++++++++++++++++
 11 files changed, 293 insertions(+)
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

diff --git a/Makefile b/Makefile
index 79be70bf2899..e6337314f8fb 100644
--- a/Makefile
+++ b/Makefile
@@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
 KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
 endif
 
+ifdef CONFIG_SHADOW_CALL_STACK
+CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
+KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
+export CC_FLAGS_SCS
+endif
+
 # arch Makefile may override CC so keep this after arch Makefile is included
 NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 
diff --git a/arch/Kconfig b/arch/Kconfig
index 5f8a5d84dbbe..5e34cbcd8d6a 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -521,6 +521,39 @@ config STACKPROTECTOR_STRONG
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
+	bool
+	depends on SHADOW_CALL_STACK
+	help
+	  Use virtually mapped shadow call stacks. Selecting this option
+	  provides better stack exhaustion protection, but increases per-thread
+	  memory consumption as a full page is allocated for each shadow stack.
+
+config SHADOW_CALL_STACK
+	bool "Clang Shadow Call Stack"
+	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
+	help
+	  This option enables Clang's Shadow Call Stack, which uses a
+	  shadow stack to protect function return addresses from being
+	  overwritten by an attacker. More information can be found from
+	  Clang's documentation:
+
+	    https://clang.llvm.org/docs/ShadowCallStack.html
+
+	  Note that security guarantees in the kernel differ from the ones
+	  documented for user space. The kernel must store addresses of shadow
+	  stacks used by other tasks and interrupt handlers in memory, which
+	  means an attacker capable reading and writing arbitrary memory may
+	  be able to locate them and hijack control flow by modifying shadow
+	  stacks that are not currently in use.
+
 config HAVE_ARCH_WITHIN_STACK_FRAMES
 	bool
 	help
diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 333a6695a918..18fc4d29ef27 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -42,3 +42,9 @@
  * compilers, like ICC.
  */
 #define barrier() __asm__ __volatile__("" : : : "memory")
+
+#if __has_feature(shadow_call_stack)
+# define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
+#else
+# define __noscs
+#endif
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
index 000000000000..0b70aff3846a
--- /dev/null
+++ b/include/linux/scs.h
@@ -0,0 +1,54 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
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
+/*
+ * In testing, 1 KiB shadow stack size (i.e. 128 stack frames on a 64-bit
+ * architecture) provided ~40% safety margin on stack usage while keeping
+ * memory allocation overhead reasonable.
+ */
+#define SCS_SIZE	1024
+#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
+
+/* A random number to mark the end of the shadow stack. */
+#define SCS_END_MAGIC	0xaf0194819b1635f6UL
+
+#define task_scs(tsk)	(task_thread_info(tsk)->shadow_call_stack)
+
+static inline void task_set_scs(struct task_struct *tsk, void *s)
+{
+	task_scs(tsk) = s;
+}
+
+extern void scs_init(void);
+extern void scs_task_reset(struct task_struct *tsk);
+extern int scs_prepare(struct task_struct *tsk, int node);
+extern bool scs_corrupted(struct task_struct *tsk);
+extern void scs_release(struct task_struct *tsk);
+
+#else /* CONFIG_SHADOW_CALL_STACK */
+
+#define task_scs(tsk)	NULL
+
+static inline void task_set_scs(struct task_struct *tsk, void *s) {}
+static inline void scs_init(void) {}
+static inline void scs_task_reset(struct task_struct *tsk) {}
+static inline int scs_prepare(struct task_struct *tsk, int node) { return 0; }
+static inline bool scs_corrupted(struct task_struct *tsk) { return false; }
+static inline void scs_release(struct task_struct *tsk) {}
+
+#endif /* CONFIG_SHADOW_CALL_STACK */
+
+#endif /* _LINUX_SCS_H */
diff --git a/init/init_task.c b/init/init_task.c
index 9e5cbe5eab7b..cbd40460e903 100644
--- a/init/init_task.c
+++ b/init/init_task.c
@@ -11,6 +11,7 @@
 #include <linux/mm.h>
 #include <linux/audit.h>
 #include <linux/numa.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <linux/uaccess.h>
@@ -184,6 +185,13 @@ struct task_struct init_task
 };
 EXPORT_SYMBOL(init_task);
 
+#ifdef CONFIG_SHADOW_CALL_STACK
+unsigned long init_shadow_call_stack[SCS_SIZE / sizeof(long)] __init_task_data
+		__aligned(SCS_SIZE) = {
+	[(SCS_SIZE / sizeof(long)) - 1] = SCS_END_MAGIC
+};
+#endif
+
 /*
  * Initial thread structure. Alignment of this is handled by a special
  * linker map entry.
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
index bcdf53125210..3fa7ba64c62d 100644
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
@@ -893,6 +898,10 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
 	if (err)
 		goto free_stack;
 
+	err = scs_prepare(tsk, node);
+	if (err)
+		goto free_stack;
+
 #ifdef CONFIG_SECCOMP
 	/*
 	 * We must handle setting up seccomp filters once we're under
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
index 000000000000..7c1a40020754
--- /dev/null
+++ b/kernel/scs.c
@@ -0,0 +1,169 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#include <linux/cpuhotplug.h>
+#include <linux/mm.h>
+#include <linux/mmzone.h>
+#include <linux/scs.h>
+#include <linux/slab.h>
+#include <linux/vmalloc.h>
+#include <asm/scs.h>
+
+static inline void *__scs_base(struct task_struct *tsk)
+{
+	/*
+	 * We allow architectures to use the shadow_call_stack field in
+	 * struct thread_info to store the current shadow stack pointer
+	 * during context switches.
+	 *
+	 * This allows the implementation to also clear the field when
+	 * the task is active to avoid keeping pointers to the current
+	 * task's shadow stack in memory. This can make it harder for an
+	 * attacker to locate the shadow stack, but also requires us to
+	 * compute the base address when needed.
+	 *
+	 * We assume the stack is aligned to SCS_SIZE.
+	 */
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
+	/*
+	 * We allocate a full page for the shadow stack, which should be
+	 * more than we need. Check the assumption nevertheless.
+	 */
+	BUILD_BUG_ON(SCS_SIZE > PAGE_SIZE);
+
+	return __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
+				    VMALLOC_START, VMALLOC_END,
+				    GFP_SCS, PAGE_KERNEL, 0,
+				    node, __builtin_return_address(0));
+}
+
+static void scs_free(void *s)
+{
+	int i;
+
+	for (i = 0; i < SCS_CACHE_SIZE; i++)
+		if (this_cpu_cmpxchg(scs_cache[i], 0, s) == 0)
+			return;
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
+	return kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
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
+	return (unsigned long *)(__scs_base(tsk) + SCS_SIZE) - 1;
+}
+
+static inline void scs_set_magic(struct task_struct *tsk)
+{
+	*scs_magic(tsk) = SCS_END_MAGIC;
+}
+
+void scs_task_reset(struct task_struct *tsk)
+{
+	/*
+	 * Reset the shadow stack to the base address in case the task
+	 * is reused.
+	 */
+	task_set_scs(tsk, __scs_base(tsk));
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
+	task_set_scs(tsk, NULL);
+	scs_free(s);
+}
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
