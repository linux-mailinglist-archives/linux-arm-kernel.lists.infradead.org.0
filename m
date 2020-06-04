Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B031EE5DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:51:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZgOpbsMZ3tRHov0LEDbeUsEM9BnBmrimQTbcHazQrQ=; b=dU1GOLpLJlfAcV
	DsHs9mn++PMHc4Mx7DIGKGAGGW8FRI9AnkvwRhz4Y99ZEW9R2RJlTKYH6oQVYXUWIIszyYw944SK9
	uiZjsS2AqwGF62HChXePDBjzxBI6S0H5oAU7etfOvyi16CmtB+9eG2U5Du3ntWZvAt3zoVf82U+9L
	cvtNjC/O/qDQYxD8wjW2J/k1FW605qUsMFaSeZi4uGdfUgX0lkqp9d+zw+hZWKpp027K8XAqx2r+n
	zb9PnwYVn8CLMO5YWyw28DixVxRJgPaNNdcjNZndL3XR/eVgNMc9p6LzuykdTfMQ1IBr1+rgu+Wfd
	U2TGqMJozCYS3tAO6+XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqHZ-0007m8-Oy; Thu, 04 Jun 2020 13:51:45 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqGk-0007AP-Ex
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:50:57 +0000
Received: by mail-lj1-f193.google.com with SMTP id z18so7329936lji.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 06:50:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=veE4ryhNxfX6ZFy5y/056vSNcU7CVnJM+8TvlXBsnxg=;
 b=WV8yj+M+Siq88BfnMLpX8cnvH95oFC/FiS1aPCQqloJg++ST4F3MC9+LSnoHs6slen
 bQswcMCQgO6CUwOeEA0gkMT5Wmrqf73i3uAkiu+kRiAtDDh0uqpgEgrCyplE1wRbuq1m
 vRHQQKyMdgQ+f4Jdh2Lm7wFJ76DmebEXPPceUGvM3CFs+c37cBhSuWiIzlIr0FaTJLbW
 SMF2wZ+T/jlZk91kL0vpxFUdIiI5L8b6FiD54IZm1OKbBhmkw6neBiZDi6+wVa5tRuC/
 +esKhgaMj3NpFiw0VVD8rVIUVyxgjazL69pqqOLz0UXA7N3l/fFEkeJ4TixJdF20kuh3
 iGZg==
X-Gm-Message-State: AOAM533NLqJPz/j701r+fnZLHdeAJz/9g24QaUqEMk25fsQ5QnQ2V6WL
 XarkF3xhUU4us2bfLzVmBrw=
X-Google-Smtp-Source: ABdhPJz45dvq67oRkAcFtWa0JEo3iXihFP3HlC8qTG+v1AYwJ3zV75VqaPI1cWNLL3tULYWeEuqGdw==
X-Received: by 2002:a2e:85da:: with SMTP id h26mr465715ljj.170.1591278652554; 
 Thu, 04 Jun 2020 06:50:52 -0700 (PDT)
Received: from localhost.localdomain ([185.248.161.177])
 by smtp.gmail.com with ESMTPSA id u16sm1202140lji.58.2020.06.04.06.50.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:50:51 -0700 (PDT)
From: Alexander Popov <alex.popov@linux.com>
To: Kees Cook <keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Andrew Morton <akpm@linux-foundation.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Sven Schnelle <svens@stackframe.org>, Iurii Zaikin <yzaikin@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 Naohiro Aota <naohiro.aota@wdc.com>,
 Alexander Monakov <amonakov@ispras.ru>,
 Mathias Krause <minipli@googlemail.com>, PaX Team <pageexec@freemail.hu>,
 Brad Spengler <spender@grsecurity.net>, Laura Abbott <labbott@redhat.com>,
 Florian Weimer <fweimer@redhat.com>,
 Alexander Popov <alex.popov@linux.com>,
 kernel-hardening@lists.openwall.com, linux-kbuild@vger.kernel.org,
 x86@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, gcc@gcc.gnu.org
Subject: [PATCH 2/5] gcc-plugins/stackleak: Use asm instrumentation to avoid
 useless register saving
Date: Thu,  4 Jun 2020 16:49:54 +0300
Message-Id: <20200604134957.505389-3-alex.popov@linux.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200604134957.505389-1-alex.popov@linux.com>
References: <20200604134957.505389-1-alex.popov@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_065054_658576_A32553A4 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [a13xp0p0v88[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [a13xp0p0v88[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: notify@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The kernel code instrumentation in stackleak gcc plugin works in two stages.
At first, stack tracking is added to GIMPLE representation of every function
(except some special cases). And later, when stack frame size info is
available, stack tracking is removed from the RTL representation of the
functions with small stack frame. There is an unwanted side-effect for these
functions: some of them do useless work with caller-saved registers.

As an example of such case, proc_sys_write without instrumentation:
    55                      push   %rbp
    41 b8 01 00 00 00       mov    $0x1,%r8d
    48 89 e5                mov    %rsp,%rbp
    e8 11 ff ff ff          callq  ffffffff81284610 <proc_sys_call_handler>
    5d                      pop    %rbp
    c3                      retq
    0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
    66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
    00 00 00

proc_sys_write with instrumentation:
    55                      push   %rbp
    48 89 e5                mov    %rsp,%rbp
    41 56                   push   %r14
    41 55                   push   %r13
    41 54                   push   %r12
    53                      push   %rbx
    49 89 f4                mov    %rsi,%r12
    48 89 fb                mov    %rdi,%rbx
    49 89 d5                mov    %rdx,%r13
    49 89 ce                mov    %rcx,%r14
    4c 89 f1                mov    %r14,%rcx
    4c 89 ea                mov    %r13,%rdx
    4c 89 e6                mov    %r12,%rsi
    48 89 df                mov    %rbx,%rdi
    41 b8 01 00 00 00       mov    $0x1,%r8d
    e8 f2 fe ff ff          callq  ffffffff81298e80 <proc_sys_call_handler>
    5b                      pop    %rbx
    41 5c                   pop    %r12
    41 5d                   pop    %r13
    41 5e                   pop    %r14
    5d                      pop    %rbp
    c3                      retq
    66 0f 1f 84 00 00 00    nopw   0x0(%rax,%rax,1)
    00 00

Let's improve the instrumentation to avoid this:

1. Make stackleak_track_stack() save all register that it works with.
Use no_caller_saved_registers attribute for that function. This attribute
is available for x86_64 and i386 starting from gcc-7.

2. Insert calling stackleak_track_stack() in asm:
  asm volatile("call stackleak_track_stack" :: "r" (current_stack_pointer))
Here we use ASM_CALL_CONSTRAINT trick from arch/x86/include/asm/asm.h.
The input constraint is taken into account during gcc shrink-wrapping
optimization. It is needed to be sure that stackleak_track_stack() call is
inserted after the prologue of the containing function, when the stack
frame is prepared.

This work is a deep reengineering of the idea described on grsecurity blog
  https://grsecurity.net/resolving_an_unfortunate_stackleak_interaction

Signed-off-by: Alexander Popov <alex.popov@linux.com>
---
 include/linux/compiler_attributes.h    |  13 ++
 kernel/stackleak.c                     |  16 +-
 scripts/Makefile.gcc-plugins           |   2 +
 scripts/gcc-plugins/stackleak_plugin.c | 206 +++++++++++++++++++++----
 4 files changed, 196 insertions(+), 41 deletions(-)

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index cdf016596659..522d57ae8532 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -41,6 +41,7 @@
 # define __GCC4_has_attribute___nonstring__           0
 # define __GCC4_has_attribute___no_sanitize_address__ (__GNUC_MINOR__ >= 8)
 # define __GCC4_has_attribute___fallthrough__         0
+# define __GCC4_has_attribute___no_caller_saved_registers__ 0
 #endif
 
 /*
@@ -175,6 +176,18 @@
  */
 #define __mode(x)                       __attribute__((__mode__(x)))
 
+/*
+ * Optional: only supported since gcc >= 7
+ *
+ *   gcc: https://gcc.gnu.org/onlinedocs/gcc/x86-Function-Attributes.html#index-no_005fcaller_005fsaved_005fregisters-function-attribute_002c-x86
+ * clang: https://clang.llvm.org/docs/AttributeReference.html#no-caller-saved-registers
+ */
+#if __has_attribute(__no_caller_saved_registers__)
+# define __no_caller_saved_registers	__attribute__((__no_caller_saved_registers__))
+#else
+# define __no_caller_saved_registers
+#endif
+
 /*
  * Optional: not supported by clang
  *
diff --git a/kernel/stackleak.c b/kernel/stackleak.c
index b193a59fc05b..a8fc9ae1d03d 100644
--- a/kernel/stackleak.c
+++ b/kernel/stackleak.c
@@ -104,19 +104,9 @@ asmlinkage void notrace stackleak_erase(void)
 }
 NOKPROBE_SYMBOL(stackleak_erase);
 
-void __used notrace stackleak_track_stack(void)
+void __used __no_caller_saved_registers notrace stackleak_track_stack(void)
 {
-	/*
-	 * N.B. stackleak_erase() fills the kernel stack with the poison value,
-	 * which has the register width. That code assumes that the value
-	 * of 'lowest_stack' is aligned on the register width boundary.
-	 *
-	 * That is true for x86 and x86_64 because of the kernel stack
-	 * alignment on these platforms (for details, see 'cc_stack_align' in
-	 * arch/x86/Makefile). Take care of that when you port STACKLEAK to
-	 * new platforms.
-	 */
-	unsigned long sp = (unsigned long)&sp;
+	unsigned long sp = current_stack_pointer;
 
 	/*
 	 * Having CONFIG_STACKLEAK_TRACK_MIN_SIZE larger than
@@ -125,6 +115,8 @@ void __used notrace stackleak_track_stack(void)
 	 */
 	BUILD_BUG_ON(CONFIG_STACKLEAK_TRACK_MIN_SIZE > STACKLEAK_SEARCH_DEPTH);
 
+	/* 'lowest_stack' should be aligned on the register width boundary */
+	sp = ALIGN(sp, sizeof(unsigned long));
 	if (sp < current->lowest_stack &&
 	    sp >= (unsigned long)task_stack_page(current) +
 						sizeof(unsigned long)) {
diff --git a/scripts/Makefile.gcc-plugins b/scripts/Makefile.gcc-plugins
index 5f7df50cfe7a..952e46876329 100644
--- a/scripts/Makefile.gcc-plugins
+++ b/scripts/Makefile.gcc-plugins
@@ -33,6 +33,8 @@ gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_STACKLEAK)		\
 		+= -DSTACKLEAK_PLUGIN
 gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_STACKLEAK)		\
 		+= -fplugin-arg-stackleak_plugin-track-min-size=$(CONFIG_STACKLEAK_TRACK_MIN_SIZE)
+gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_STACKLEAK)		\
+		+= -fplugin-arg-stackleak_plugin-arch=$(SRCARCH)
 ifdef CONFIG_GCC_PLUGIN_STACKLEAK
     DISABLE_STACKLEAK_PLUGIN += -fplugin-arg-stackleak_plugin-disable
 endif
diff --git a/scripts/gcc-plugins/stackleak_plugin.c b/scripts/gcc-plugins/stackleak_plugin.c
index 1ecfe50d0bf5..0769c5b9156d 100644
--- a/scripts/gcc-plugins/stackleak_plugin.c
+++ b/scripts/gcc-plugins/stackleak_plugin.c
@@ -19,7 +19,7 @@
  *
  * Debugging:
  *  - use fprintf() to stderr, debug_generic_expr(), debug_gimple_stmt(),
- *     print_rtl() and print_simple_rtl();
+ *     print_rtl_single() and debug_rtx();
  *  - add "-fdump-tree-all -fdump-rtl-all" to the plugin CFLAGS in
  *     Makefile.gcc-plugins to see the verbose dumps of the gcc passes;
  *  - use gcc -E to understand the preprocessing shenanigans;
@@ -31,6 +31,7 @@
 __visible int plugin_is_GPL_compatible;
 
 static int track_frame_size = -1;
+static bool build_for_x86 = false;
 static const char track_function[] = "stackleak_track_stack";
 
 /*
@@ -42,27 +43,28 @@ static GTY(()) tree track_function_decl;
 static struct plugin_info stackleak_plugin_info = {
 	.version = "201707101337",
 	.help = "track-min-size=nn\ttrack stack for functions with a stack frame size >= nn bytes\n"
+		"arch=target_arch\tspecify target build arch\n"
 		"disable\t\tdo not activate the plugin\n"
 };
 
-static void stackleak_add_track_stack(gimple_stmt_iterator *gsi)
+static void add_stack_tracking_gcall(gimple_stmt_iterator *gsi)
 {
 	gimple stmt;
-	gcall *stackleak_track_stack;
+	gcall *gimple_call;
 	cgraph_node_ptr node;
 	basic_block bb;
 
-	/* Insert call to void stackleak_track_stack(void) */
+	/* Insert calling stackleak_track_stack() */
 	stmt = gimple_build_call(track_function_decl, 0);
-	stackleak_track_stack = as_a_gcall(stmt);
-	gsi_insert_before(gsi, stackleak_track_stack, GSI_SAME_STMT);
+	gimple_call = as_a_gcall(stmt);
+	gsi_insert_before(gsi, gimple_call, GSI_SAME_STMT);
 
 	/* Update the cgraph */
-	bb = gimple_bb(stackleak_track_stack);
+	bb = gimple_bb(gimple_call);
 	node = cgraph_get_create_node(track_function_decl);
 	gcc_assert(node);
 	cgraph_create_edge(cgraph_get_node(current_function_decl), node,
-			stackleak_track_stack, bb->count,
+			gimple_call, bb->count,
 			compute_call_stmt_bb_frequency(current_function_decl, bb));
 }
 
@@ -79,6 +81,76 @@ static bool is_alloca(gimple stmt)
 	return false;
 }
 
+static tree get_current_stack_pointer_decl(void)
+{
+	varpool_node_ptr node;
+
+	FOR_EACH_VARIABLE(node) {
+		tree var = NODE_DECL(node);
+		tree name = DECL_NAME(var);
+
+		if (DECL_NAME_LENGTH(var) != sizeof("current_stack_pointer") - 1)
+			continue;
+
+		if (strcmp(IDENTIFIER_POINTER(name), "current_stack_pointer"))
+			continue;
+
+		return var;
+	}
+
+	return NULL_TREE;
+}
+
+static void add_stack_tracking_gasm(gimple_stmt_iterator *gsi)
+{
+	gasm *asm_call = NULL;
+	tree sp_decl, input;
+	vec<tree, va_gc> *inputs = NULL;
+
+	/* 'no_caller_saved_registers' is currently supported only for x86 */
+	gcc_assert(build_for_x86);
+
+	/*
+	 * Insert calling stackleak_track_stack() in asm:
+	 *   asm volatile("call stackleak_track_stack"
+	 *		  :: "r" (current_stack_pointer))
+	 * Use ASM_CALL_CONSTRAINT trick from arch/x86/include/asm/asm.h.
+	 * This constraint is taken into account during gcc shrink-wrapping
+	 * optimization. It is needed to be sure that stackleak_track_stack()
+	 * call is inserted after the prologue of the containing function,
+	 * when the stack frame is prepared.
+	 */
+	sp_decl = get_current_stack_pointer_decl();
+	if (sp_decl == NULL_TREE) {
+		add_stack_tracking_gcall(gsi);
+		return;
+	}
+	input = build_tree_list(NULL_TREE, build_const_char_string(2, "r"));
+	input = chainon(NULL_TREE, build_tree_list(input, sp_decl));
+	vec_safe_push(inputs, input);
+	asm_call = gimple_build_asm_vec("call stackleak_track_stack",
+					inputs, NULL, NULL, NULL);
+	gimple_asm_set_volatile(asm_call, true);
+	gsi_insert_before(gsi, asm_call, GSI_SAME_STMT);
+	update_stmt(asm_call);
+}
+
+static void add_stack_tracking(gimple_stmt_iterator *gsi)
+{
+	/*
+	 * The 'no_caller_saved_registers' attribute is used for
+	 * stackleak_track_stack(). If the compiler supports this attribute for
+	 * the target arch, we can add calling stackleak_track_stack() in asm.
+	 * That improves performance: we avoid useless operations with the
+	 * caller-saved registers in the functions from which we will remove
+	 * stackleak_track_stack() call during the stackleak_cleanup pass.
+	 */
+	if (lookup_attribute_spec(get_identifier("no_caller_saved_registers")))
+		add_stack_tracking_gasm(gsi);
+	else
+		add_stack_tracking_gcall(gsi);
+}
+
 /*
  * Work with the GIMPLE representation of the code. Insert the
  * stackleak_track_stack() call into the beginning of the function.
@@ -151,7 +223,7 @@ static unsigned int stackleak_instrument_execute(void)
 		bb = single_succ(ENTRY_BLOCK_PTR_FOR_FN(cfun));
 	}
 	gsi = gsi_after_labels(bb);
-	stackleak_add_track_stack(&gsi);
+	add_stack_tracking(&gsi);
 
 	return 0;
 }
@@ -165,29 +237,10 @@ static bool large_stack_frame(void)
 #endif
 }
 
-/*
- * Work with the RTL representation of the code.
- * Remove the unneeded stackleak_track_stack() calls from the functions
- * that don't have a large enough stack frame size.
- */
-static unsigned int stackleak_cleanup_execute(void)
+static void remove_stack_tracking_gcall(void)
 {
 	rtx_insn *insn, *next;
 
-	/*
-	 * gcc before version 7 called allocate_dynamic_stack_space() from
-	 * expand_stack_vars() for runtime alignment of constant-sized stack
-	 * variables. That caused cfun->calls_alloca to be set for functions
-	 * that don't use alloca().
-	 * For more info see gcc commit 7072df0aae0c59ae437e.
-	 * Let's leave such functions instrumented.
-	 */
-	if (cfun->calls_alloca)
-		return 0;
-
-	if (large_stack_frame())
-		return 0;
-
 	/*
 	 * Find stackleak_track_stack() calls. Loop through the chain of insns,
 	 * which is an RTL representation of the code for a function.
@@ -248,6 +301,92 @@ static unsigned int stackleak_cleanup_execute(void)
 		}
 #endif
 	}
+}
+
+static bool remove_stack_tracking_gasm(void)
+{
+	bool removed = false;
+	rtx_insn *insn, *next;
+
+	/* 'no_caller_saved_registers' is currently supported only for x86 */
+	gcc_assert(build_for_x86);
+
+	/*
+	 * Find stackleak_track_stack() asm calls. Loop through the chain of
+	 * insns, which is an RTL representation of the code for a function.
+	 *
+	 * The example of a matching insn:
+	 *  (insn 11 5 12 2 (parallel [ (asm_operands/v
+	 *  ("call stackleak_track_stack") ("") 0
+	 *  [ (reg/v:DI 7 sp [ current_stack_pointer ]) ]
+	 *  [ (asm_input:DI ("r")) ] [])
+	 *  (clobber (reg:CC 17 flags)) ]) -1 (nil))
+	 */
+	for (insn = get_insns(); insn; insn = next) {
+		rtx body;
+
+		next = NEXT_INSN(insn);
+
+		/* Check the expression code of the insn */
+		if (!NONJUMP_INSN_P(insn))
+			continue;
+
+		/*
+		 * Check the expression code of the insn body, which is an RTL
+		 * Expression (RTX) describing the side effect performed by
+		 * that insn.
+		 */
+		body = PATTERN(insn);
+
+		if (GET_CODE(body) != PARALLEL)
+			continue;
+
+		body = XVECEXP(body, 0, 0);
+
+		if (GET_CODE(body) != ASM_OPERANDS)
+			continue;
+
+		if (strcmp(ASM_OPERANDS_TEMPLATE(body),
+						"call stackleak_track_stack")) {
+			continue;
+		}
+
+		delete_insn_and_edges(insn);
+		gcc_assert(!removed);
+		removed = true;
+	}
+
+	return removed;
+}
+
+/*
+ * Work with the RTL representation of the code.
+ * Remove the unneeded stackleak_track_stack() calls from the functions
+ * that don't have a large enough stack frame size.
+ */
+static unsigned int stackleak_cleanup_execute(void)
+{
+	bool removed = false;
+
+	/*
+	 * gcc before version 7 called allocate_dynamic_stack_space() from
+	 * expand_stack_vars() for runtime alignment of constant-sized stack
+	 * variables. That caused cfun->calls_alloca to be set for functions
+	 * that don't use alloca().
+	 * For more info see gcc commit 7072df0aae0c59ae437e.
+	 * Let's leave such functions instrumented.
+	 */
+	if (cfun->calls_alloca)
+		return 0;
+
+	if (large_stack_frame())
+		return 0;
+
+	if (lookup_attribute_spec(get_identifier("no_caller_saved_registers")))
+		removed = remove_stack_tracking_gasm();
+
+	if (!removed)
+		remove_stack_tracking_gcall();
 
 	return 0;
 }
@@ -383,6 +522,15 @@ __visible int plugin_init(struct plugin_name_args *plugin_info,
 					plugin_name, argv[i].key, argv[i].value);
 				return 1;
 			}
+		} else if (!strcmp(argv[i].key, "arch")) {
+			if (!argv[i].value) {
+				error(G_("no value supplied for option '-fplugin-arg-%s-%s'"),
+					plugin_name, argv[i].key);
+				return 1;
+			}
+
+			if (!strcmp(argv[i].value, "x86"))
+				build_for_x86 = true;
 		} else {
 			error(G_("unknown option '-fplugin-arg-%s-%s'"),
 					plugin_name, argv[i].key);
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
