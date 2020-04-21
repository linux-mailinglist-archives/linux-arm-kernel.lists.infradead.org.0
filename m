Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570AF1B1BB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 04:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WceS1ngX8XoK5J5uZ/DUopyjP3xzkyT/DlT1vbCCYOM=; b=SL4PTWEMttw+/I
	9G4POwxTw5QhN6fm27b146ZQBxZQGjEE+C1cd1p0FyxqKTtD0LZDod6ILpGtGTupGaUWGJBfJdfI6
	OvPQGKs5x8G6Jh+Mxf9cRbkCK/BJG7xSNzeFFmyWHtM4CiurVhDCerrE05IjyV7EhwosbNJsolql8
	+5xMgBDpwM9oQG4UZs1cdbSdSylqFf0winwFTkZxYDcOkdreRuTiJkxCWk+fItvmqr+Nmj08rtYay
	VpkeR4zQtaS/C5pkSPIWFuJjB16E+RpZ1UvDsupISMwpLHnUXQWR//1+UfnYAF5qNIYBaXQwCe8FT
	vMNiSJgA7vFV48w0WljQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQiS1-0001Nm-Vx; Tue, 21 Apr 2020 02:15:54 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQiRB-00075j-EA
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 02:15:04 +0000
Received: by mail-pg1-x549.google.com with SMTP id 14so7133785pgf.18
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 19:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=O6cTFRpJP9X3Ho0tpm44ZbomQwaxFpLQPG8cGKQ1jrA=;
 b=f4mnh0pWascSaL/AdPEF4DCvaJe9pCemAfTP8Gw89vOMOoMs8q9dTjr695yMJKQp1I
 1Vf0ZDH4iuIajPbqdYOWdIrd43AsJf+NoxSmgKDKQMHlyTmoDsaygA1K/mLok1Xkv5m1
 Dv48+mhATsC3sLN5BxllxfM74jy5zYpXv5nP9Sq7R9GxZs8P1QbjkgKbNuNshL/Ptmha
 sC8m2yQoQdWi7tHEK5fTZ9iW+PUqrFWkpC6Tap6qwRQUKCxmIxGHOsIu4H+SyqrUPSJO
 Cgvm6dCjLy2fBOcabEZdaN73wPtfzTz2P+aFwzpPOqqbtCm/OIBU41ggdzw1zdorSj60
 voOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=O6cTFRpJP9X3Ho0tpm44ZbomQwaxFpLQPG8cGKQ1jrA=;
 b=hrLL9r9AOd58cEX4tLTBs05x1XpGPPU3te4c+6CVCLpCCOWIDT9dDYt7x1vno3JF2I
 Y/6ggbCQDZCsPXp2dP714AT5Z76wEi6xnTtpDcxFs0hbhO9GY6UauQh7zCsjuk1mfPB+
 eywX5uveZiwwz/IW9O2pwKvU+OBBQU2Sk6XRZYCiNKDjEzQjxEhgb00bhRmyIOIlKGL8
 NrJLOtlKuhcP4lXxOGpHdOiuqqF8Rcxt9JiT375qQVmIIEiGYEpz9XPNm23Q+h4p9S9Y
 mdsFL2libTA7Ttu3Yb9r8PJYbIE7a9LUEJNWe3N9oCNIRQq9lhFKyzqbw9XaAUcZ4YB/
 +b1Q==
X-Gm-Message-State: AGi0PuaTxoVEOIuRrUzKPowx9O64tUkIYNFkHy62c7kBFg2iC8je49f6
 O/3dUDBQCleaUQD5S3tCp5bQlKvckvNPvoz++9w=
X-Google-Smtp-Source: APiQypIHbEzVxzubxTWmbw4MJ4MzHiHfzQFCP034NZX7geCp0IXB6bGrLCcMJgUDsaG3JKRXB1YZ4+cAgIWLKLxGuAk=
X-Received: by 2002:a63:5b57:: with SMTP id l23mr5400781pgm.391.1587435299723; 
 Mon, 20 Apr 2020 19:14:59 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:42 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 01/12] add support for Clang's Shadow Call Stack (SCS)
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
X-CRM114-CacheID: sfid-20200420_191501_511481_0CC29718 
X-CRM114-Status: GOOD (  25.29  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
---
 Makefile                       |  6 +++
 arch/Kconfig                   | 25 +++++++++
 include/linux/compiler-clang.h |  6 +++
 include/linux/compiler_types.h |  4 ++
 include/linux/scs.h            | 92 ++++++++++++++++++++++++++++++++++
 init/init_task.c               |  8 +++
 kernel/Makefile                |  1 +
 kernel/fork.c                  |  9 ++++
 kernel/sched/core.c            |  2 +
 kernel/scs.c                   | 67 +++++++++++++++++++++++++
 10 files changed, 220 insertions(+)
 create mode 100644 include/linux/scs.h
 create mode 100644 kernel/scs.c

diff --git a/Makefile b/Makefile
index 49b2709ff44e..6094db2c7252 100644
--- a/Makefile
+++ b/Makefile
@@ -866,6 +866,12 @@ ifdef CONFIG_LIVEPATCH
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
index 786a85d4ad40..8450d56e6af6 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -533,6 +533,31 @@ config STACKPROTECTOR_STRONG
 	  about 20% of all kernel functions, which increases the kernel code
 	  size by about 2%.
 
+config ARCH_SUPPORTS_SHADOW_CALL_STACK
+	bool
+	help
+	  An architecture should select this if it supports Clang's Shadow
+	  Call Stack, has asm/scs.h, and implements runtime support for shadow
+	  stack switching.
+
+config SHADOW_CALL_STACK
+	bool "Clang Shadow Call Stack"
+	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
+	help
+	  This option enables Clang's Shadow Call Stack, which uses a
+	  shadow stack to protect function return addresses from being
+	  overwritten by an attacker. More information can be found in
+	  Clang's documentation:
+
+	    https://clang.llvm.org/docs/ShadowCallStack.html
+
+	  Note that security guarantees in the kernel differ from the ones
+	  documented for user space. The kernel must store addresses of shadow
+	  stacks used by other tasks and interrupt handlers in memory, which
+	  means an attacker capable of reading and writing arbitrary memory
+	  may be able to locate them and hijack control flow by modifying
+	  shadow stacks that are not currently in use.
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
index e970f97a7fcb..97b62f47a80d 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -193,6 +193,10 @@ struct ftrace_likely_data {
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
index 000000000000..051d27ad3da4
--- /dev/null
+++ b/include/linux/scs.h
@@ -0,0 +1,92 @@
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
+#include <linux/poison.h>
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
+#define SCS_SIZE	1024UL
+#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
+
+/* An illegal pointer value to mark the end of the shadow stack. */
+#define SCS_END_MAGIC	(0x5f6UL + POISON_POINTER_DELTA)
+
+#define task_scs(tsk)	(task_thread_info(tsk)->shadow_call_stack)
+
+static inline void task_set_scs(struct task_struct *tsk, void *s)
+{
+	task_scs(tsk) = s;
+}
+
+extern void scs_init(void);
+
+static inline void *__scs_base(struct task_struct *tsk)
+{
+	/*
+	 * To minimize the risk of exposure, architectures may clear a
+	 * task's thread_info::shadow_call_stack while that task is
+	 * running, and only save/restore the active shadow call stack
+	 * pointer when the usual register may be clobbered (e.g. across
+	 * context switches).
+	 *
+	 * The shadow call stack is aligned to SCS_SIZE, and grows
+	 * upwards, so we can mask out the low bits to extract the base
+	 * when the task is not running.
+	 */
+	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
+}
+
+static inline void scs_task_reset(struct task_struct *tsk)
+{
+	/*
+	 * Reset the shadow stack to the base address in case the task
+	 * is reused.
+	 */
+	task_set_scs(tsk, __scs_base(tsk));
+}
+
+extern int scs_prepare(struct task_struct *tsk, int node);
+
+static inline unsigned long *__scs_magic(void *s)
+{
+	return (unsigned long *)(s + SCS_SIZE) - 1;
+}
+
+static inline bool scs_corrupted(struct task_struct *tsk)
+{
+	unsigned long *magic = __scs_magic(__scs_base(tsk));
+
+	return READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC;
+}
+
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
index bd403ed3e418..aaa71366d162 100644
--- a/init/init_task.c
+++ b/init/init_task.c
@@ -11,6 +11,7 @@
 #include <linux/mm.h>
 #include <linux/audit.h>
 #include <linux/numa.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <linux/uaccess.h>
@@ -185,6 +186,13 @@ struct task_struct init_task
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
index 4cb4130ced32..c332eb9d4841 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -103,6 +103,7 @@ obj-$(CONFIG_TRACEPOINTS) += trace/
 obj-$(CONFIG_IRQ_WORK) += irq_work.o
 obj-$(CONFIG_CPU_PM) += cpu_pm.o
 obj-$(CONFIG_BPF) += bpf/
+obj-$(CONFIG_SHADOW_CALL_STACK) += scs.o
 
 obj-$(CONFIG_PERF_EVENTS) += events/
 
diff --git a/kernel/fork.c b/kernel/fork.c
index 8c700f881d92..f6339f9d232d 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -94,6 +94,7 @@
 #include <linux/thread_info.h>
 #include <linux/stackleak.h>
 #include <linux/kasan.h>
+#include <linux/scs.h>
 
 #include <asm/pgtable.h>
 #include <asm/pgalloc.h>
@@ -456,6 +457,8 @@ void put_task_stack(struct task_struct *tsk)
 
 void free_task(struct task_struct *tsk)
 {
+	scs_release(tsk);
+
 #ifndef CONFIG_THREAD_INFO_IN_TASK
 	/*
 	 * The task is finally done with both the stack and thread_info,
@@ -840,6 +843,8 @@ void __init fork_init(void)
 			  NULL, free_vm_stack_cache);
 #endif
 
+	scs_init();
+
 	lockdep_init_task(&init_task);
 	uprobes_init();
 }
@@ -899,6 +904,10 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
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
index 3a61a3b8eaa9..c99620c1ec20 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -11,6 +11,7 @@
 #include <linux/nospec.h>
 
 #include <linux/kcov.h>
+#include <linux/scs.h>
 
 #include <asm/switch_to.h>
 #include <asm/tlb.h>
@@ -6045,6 +6046,7 @@ void init_idle(struct task_struct *idle, int cpu)
 	idle->se.exec_start = sched_clock();
 	idle->flags |= PF_IDLE;
 
+	scs_task_reset(idle);
 	kasan_unpoison_task_stack(idle);
 
 #ifdef CONFIG_SMP
diff --git a/kernel/scs.c b/kernel/scs.c
new file mode 100644
index 000000000000..e1a8fc453b86
--- /dev/null
+++ b/kernel/scs.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Shadow Call Stack support.
+ *
+ * Copyright (C) 2019 Google LLC
+ */
+
+#include <linux/kasan.h>
+#include <linux/scs.h>
+#include <linux/slab.h>
+#include <asm/scs.h>
+
+static struct kmem_cache *scs_cache;
+
+static void *scs_alloc(int node)
+{
+	void *s;
+
+	s = kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
+	if (s) {
+		*__scs_magic(s) = SCS_END_MAGIC;
+		/*
+		 * Poison the allocation to catch unintentional accesses to
+		 * the shadow stack when KASAN is enabled.
+		 */
+		kasan_poison_object_data(scs_cache, s);
+	}
+
+	return s;
+}
+
+static void scs_free(void *s)
+{
+	kasan_unpoison_object_data(scs_cache, s);
+	kmem_cache_free(scs_cache, s);
+}
+
+void __init scs_init(void)
+{
+	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
+				0, NULL);
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
+	return 0;
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
+	scs_free(s);
+}
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
