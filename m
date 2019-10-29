Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB18FE8D81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 18:01:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A81Qpc7nlAssE11MIsI8qSIHe+jTBMu4SA9LxH1u3r4=; b=e56xEeENnNBwoTiSZAHCm4crxZ
	SHFO/1hJbXN8CflSdNLOBoVCuNamvF0qNcjWq74RMxA6bD5sGC79SUB4uiO/uQiBBm2DOEfQhlJ5O
	EKJeI8Yc71hhNy5ZOkVlT5Q3zyzA5Ik8i7E+5Vc1qjNu7VHzRs1X7EbYYqRY8kem8tEbTc+qwPtO1
	1KTRJnYaSM9wP4eRw/iTlDiZuSGAdor7XzKPOI3Gpwp6naUyiFp0Mb4cCgkIRoEPBGbmxiKCZIaSm
	HOQTLfsJFdsdBlUld23d1bwkz2q7nhyc8fGY6f2JWVkmj+6JULzkUVOwhgEJWIKIaYGDJZgRqN+h9
	Mo7Z3JTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPUrq-0000Dw-BT; Tue, 29 Oct 2019 17:01:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPUq4-0005jv-Qp
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 16:59:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1DB368D;
 Tue, 29 Oct 2019 09:59:23 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 598613F71F;
 Tue, 29 Oct 2019 09:59:21 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 7/8] arm64: implement ftrace with regs
Date: Tue, 29 Oct 2019 16:58:31 +0000
Message-Id: <20191029165832.33606-8-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191029165832.33606-1-mark.rutland@arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_095925_079268_23990B96 
X-CRM114-Status: GOOD (  27.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, jthierry@redhat.com, linux-parisc@vger.kernel.org,
 peterz@infradead.org, catalin.marinas@arm.com, deller@gmx.de,
 jpoimboe@redhat.com, linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 amit.kachhap@arm.com, Torsten Duwe <duwe@lst.de>, svens@stackframe.org,
 duwe@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Torsten Duwe <duwe@lst.de>

This patch implements FTRACE_WITH_REGS for arm64, which allows a traced
function's arguments (and some other registers) to be captured into a
struct pt_regs, allowing these to be inspected and/or modified. This is
a building block for live-patching, where a function's arguments may be
forwarded to another function. This is also necessary to enable ftrace
and in-kernel pointer authentication at the same time, as it allows the
LR value to be captured and adjusted prior to signing.

Using GCC's -fpatchable-function-entry=N option, we can have the
compiler insert a configurable number of NOPs between the function entry
point and the usual prologue. This also ensures functions are AAPCS
compliant (e.g. disabling inter-procedural register allocation).

For example, with -fpatchable-function-entry=2, GCC 8.1.0 compiles the
following:

| unsigned long bar(void);
|
| unsigned long foo(void)
| {
|         return bar() + 1;
| }

... to:

| <foo>:
|         nop
|         nop
|         stp     x29, x30, [sp, #-16]!
|         mov     x29, sp
|         bl      0 <bar>
|         add     x0, x0, #0x1
|         ldp     x29, x30, [sp], #16
|         ret

This patch builds the kernel with -fpatchable-function-entry=2,
prefixing each function with two NOPs. To trace a function, we replace
these NOPs with a sequence that saves the LR into a GPR, then calls an
ftrace entry assembly function which saves this and other relevant
registers:

| mov	x9, x30
| bl	<ftrace-entry>

Since patchable functions are AAPCS compliant (and the kernel does not
use x18 as a platform register), x9-x18 can be safely clobbered in the
patched sequence and the ftrace entry code.

There are now two ftrace entry functions, ftrace_regs_entry (which saves
all GPRs), and ftrace_entry (which saves the bare minimum). A PLT is
allocated for each within modules.

Signed-off-by: Torsten Duwe <duwe@suse.de>
[Mark: rework asm, comments, PLTs, initialization, commit message]
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Julien Thierry <jthierry@redhat.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/Kconfig               |   2 +
 arch/arm64/Makefile              |   5 ++
 arch/arm64/include/asm/ftrace.h  |  23 +++++++
 arch/arm64/include/asm/module.h  |   2 +-
 arch/arm64/kernel/entry-ftrace.S | 140 +++++++++++++++++++++++++++++++++++++--
 arch/arm64/kernel/ftrace.c       |  84 +++++++++++++++++++----
 arch/arm64/kernel/module-plts.c  |   3 +-
 arch/arm64/kernel/module.c       |  18 +++--
 8 files changed, 252 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 950a56b71ff0..0ffb8596b8a1 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -143,6 +143,8 @@ config ARM64
 	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_DMA_CONTIGUOUS
 	select HAVE_DYNAMIC_FTRACE
+	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
+		if $(cc-option,-fpatchable-function-entry=2)
 	select HAVE_EFFICIENT_UNALIGNED_ACCESS
 	select HAVE_FAST_GUP
 	select HAVE_FTRACE_MCOUNT_RECORD
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 2c0238ce0551..1fbe24d4fdb6 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -95,6 +95,11 @@ ifeq ($(CONFIG_ARM64_MODULE_PLTS),y)
 KBUILD_LDS_MODULE	+= $(srctree)/arch/arm64/kernel/module.lds
 endif
 
+ifeq ($(CONFIG_DYNAMIC_FTRACE_WITH_REGS),y)
+  KBUILD_CPPFLAGS += -DCC_USING_PATCHABLE_FUNCTION_ENTRY
+  CC_FLAGS_FTRACE := -fpatchable-function-entry=2
+endif
+
 # Default value
 head-y		:= arch/arm64/kernel/head.o
 
diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
index d48667b04c41..91fa4baa1a93 100644
--- a/arch/arm64/include/asm/ftrace.h
+++ b/arch/arm64/include/asm/ftrace.h
@@ -11,9 +11,20 @@
 #include <asm/insn.h>
 
 #define HAVE_FUNCTION_GRAPH_FP_TEST
+
+#ifdef CONFIG_DYNAMIC_FTRACE_WITH_REGS
+#define ARCH_SUPPORTS_FTRACE_OPS 1
+#else
 #define MCOUNT_ADDR		((unsigned long)_mcount)
+#endif
+
+/* The BL at the callsite's adjusted rec->ip */
 #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
 
+#define FTRACE_PLT_IDX		0
+#define FTRACE_REGS_PLT_IDX	1
+#define NR_FTRACE_PLTS		2
+
 /*
  * Currently, gcc tends to save the link register after the local variables
  * on the stack. This causes the max stack tracer to report the function
@@ -44,12 +55,24 @@ extern void return_to_handler(void);
 static inline unsigned long ftrace_call_adjust(unsigned long addr)
 {
 	/*
+	 * Adjust addr to point at the BL in the callsite.
+	 * See ftrace_init_nop() for the callsite sequence.
+	 */
+	if (IS_ENABLED(CONFIG_DYNAMIC_FTRACE_WITH_REGS))
+		return addr + AARCH64_INSN_SIZE;
+	/*
 	 * addr is the address of the mcount call instruction.
 	 * recordmcount does the necessary offset calculation.
 	 */
 	return addr;
 }
 
+#ifdef CONFIG_DYNAMIC_FTRACE_WITH_REGS
+struct dyn_ftrace;
+int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec);
+#define ftrace_init_nop ftrace_init_nop
+#endif
+
 #define ftrace_return_address(n) return_address(n)
 
 /*
diff --git a/arch/arm64/include/asm/module.h b/arch/arm64/include/asm/module.h
index f80e13cbf8ec..1e93de68c044 100644
--- a/arch/arm64/include/asm/module.h
+++ b/arch/arm64/include/asm/module.h
@@ -21,7 +21,7 @@ struct mod_arch_specific {
 	struct mod_plt_sec	init;
 
 	/* for CONFIG_DYNAMIC_FTRACE */
-	struct plt_entry 	*ftrace_trampoline;
+	struct plt_entry	*ftrace_trampolines;
 };
 #endif
 
diff --git a/arch/arm64/kernel/entry-ftrace.S b/arch/arm64/kernel/entry-ftrace.S
index 33d003d80121..94720388957f 100644
--- a/arch/arm64/kernel/entry-ftrace.S
+++ b/arch/arm64/kernel/entry-ftrace.S
@@ -7,10 +7,137 @@
  */
 
 #include <linux/linkage.h>
+#include <asm/asm-offsets.h>
 #include <asm/assembler.h>
 #include <asm/ftrace.h>
 #include <asm/insn.h>
 
+#ifdef CONFIG_DYNAMIC_FTRACE_WITH_REGS
+/*
+ * Due to -fpatchable-function-entry=2, the compiler has placed two NOPs before
+ * the regular function prologue. For an enabled callsite, ftrace_init_nop() and
+ * ftrace_make_call() have patched those NOPs to:
+ *
+ * 	MOV	X9, LR
+ * 	BL	<entry>
+ *
+ * ... where <entry> is either ftrace_caller or ftrace_regs_caller.
+ *
+ * Each instrumented function follows the AAPCS, so here x0-x8 and x19-x30 are
+ * live, and x9-x18 are safe to clobber.
+ *
+ * We save the callsite's context into a pt_regs before invoking and ftrace
+ * callbacks. So that we can get a sensible backtrace, we create a stack record
+ * for the callsite and the ftrace entry assembly. This is not sufficient for
+ * reliable stacktrace: until we create the callsite stack record, its caller
+ * is missing from the LR and existing chain of frame records.
+ */
+	.macro  ftrace_regs_entry, allregs=0
+	/* Make room for pt_regs, plus a callee frame */
+	sub	sp, sp, #(S_FRAME_SIZE + 16)
+
+	/* Save function arguments (and x9 for simplicity) */
+	stp	x0, x1, [sp, #S_X0]
+	stp	x2, x3, [sp, #S_X2]
+	stp	x4, x5, [sp, #S_X4]
+	stp	x6, x7, [sp, #S_X6]
+	stp	x8, x9, [sp, #S_X8]
+
+	/* Optionally save the callee-saved registers, always save the FP */
+	.if \allregs == 1
+	stp	x10, x11, [sp, #S_X10]
+	stp	x12, x13, [sp, #S_X12]
+	stp	x14, x15, [sp, #S_X14]
+	stp	x16, x17, [sp, #S_X16]
+	stp	x18, x19, [sp, #S_X18]
+	stp	x20, x21, [sp, #S_X20]
+	stp	x22, x23, [sp, #S_X22]
+	stp	x24, x25, [sp, #S_X24]
+	stp	x26, x27, [sp, #S_X26]
+	stp	x28, x29, [sp, #S_X28]
+	.else
+	str	x29, [sp, #S_FP]
+	.endif
+
+	/* Save the callsite's SP and LR */
+	add	x10, sp, #(S_FRAME_SIZE + 16)
+	stp	x9, x10, [sp, #S_LR]
+
+	/* Save the PC after the ftrace callsite */
+	str	x30, [sp, #S_PC]
+
+	/* Create a frame record for the callsite above pt_regs */
+	stp	x29, x9, [sp, #S_FRAME_SIZE]
+	add	x29, sp, #S_FRAME_SIZE
+
+	/* Create our frame record within pt_regs. */
+	stp	x29, x30, [sp, #S_STACKFRAME]
+	add	x29, sp, #S_STACKFRAME
+	.endm
+
+ENTRY(ftrace_regs_caller)
+	ftrace_regs_entry	1
+	b	ftrace_common
+ENDPROC(ftrace_regs_caller)
+
+ENTRY(ftrace_caller)
+	ftrace_regs_entry	0
+	b	ftrace_common
+ENDPROC(ftrace_caller)
+
+ENTRY(ftrace_common)
+	sub	x0, x30, #AARCH64_INSN_SIZE	// ip (callsite's BL insn)
+	mov	x1, x9				// parent_ip (callsite's LR)
+	ldr_l	x2, function_trace_op		// op
+	mov	x3, sp				// regs
+
+GLOBAL(ftrace_call)
+	bl	ftrace_stub
+
+#ifdef CONFIG_FUNCTION_GRAPH_TRACER
+GLOBAL(ftrace_graph_call)		// ftrace_graph_caller();
+	nop				// If enabled, this will be replaced
+					// "b ftrace_graph_caller"
+#endif
+
+/*
+ * At the callsite x0-x8 and x19-x30 were live. Any C code will have preserved
+ * x19-x29 per the AAPCS, and we created frame records upon entry, so we need
+ * to restore x0-x8, x29, and x30.
+ */
+ftrace_common_return:
+	/* Restore function arguments */
+	ldp	x0, x1, [sp]
+	ldp	x2, x3, [sp, #S_X2]
+	ldp	x4, x5, [sp, #S_X4]
+	ldp	x6, x7, [sp, #S_X6]
+	ldr	x8, [sp, #S_X8]
+
+	/* Restore the callsite's FP, LR, PC */
+	ldr	x29, [sp, #S_FP]
+	ldr	x30, [sp, #S_LR]
+	ldr	x9, [sp, #S_PC]
+
+	/* Restore the callsite's SP */
+	add	sp, sp, #S_FRAME_SIZE + 16
+
+	ret	x9
+ENDPROC(ftrace_common)
+
+#ifdef CONFIG_FUNCTION_GRAPH_TRACER
+ENTRY(ftrace_graph_caller)
+	ldr	x0, [sp, #S_PC]
+	sub	x0, x0, #AARCH64_INSN_SIZE	// ip (callsite's BL insn)
+	add	x1, sp, #S_LR			// parent_ip (callsite's LR)
+	ldr	x2, [sp, #S_FRAME_SIZE]	   	// parent fp (callsite's FP)
+	bl	prepare_ftrace_return
+	b	ftrace_common_return
+ENDPROC(ftrace_graph_caller)
+#else
+#endif
+
+#else /* CONFIG_DYNAMIC_FTRACE_WITH_REGS */
+
 /*
  * Gcc with -pg will put the following code in the beginning of each function:
  *      mov x0, x30
@@ -160,11 +287,6 @@ GLOBAL(ftrace_graph_call)		// ftrace_graph_caller();
 
 	mcount_exit
 ENDPROC(ftrace_caller)
-#endif /* CONFIG_DYNAMIC_FTRACE */
-
-ENTRY(ftrace_stub)
-	ret
-ENDPROC(ftrace_stub)
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 /*
@@ -184,7 +306,15 @@ ENTRY(ftrace_graph_caller)
 
 	mcount_exit
 ENDPROC(ftrace_graph_caller)
+#endif /* CONFIG_FUNCTION_GRAPH_TRACER */
+#endif /* CONFIG_DYNAMIC_FTRACE */
+#endif /* CONFIG_DYNAMIC_FTRACE_WITH_REGS */
+
+ENTRY(ftrace_stub)
+	ret
+ENDPROC(ftrace_stub)
 
+#ifdef CONFIG_FUNCTION_GRAPH_TRACER
 /*
  * void return_to_handler(void)
  *
diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
index 822718eafdb4..aea652c33a38 100644
--- a/arch/arm64/kernel/ftrace.c
+++ b/arch/arm64/kernel/ftrace.c
@@ -62,6 +62,19 @@ int ftrace_update_ftrace_func(ftrace_func_t func)
 	return ftrace_modify_code(pc, 0, new, false);
 }
 
+#ifdef CONFIG_ARM64_MODULE_PLTS
+static struct plt_entry *get_ftrace_plt(struct module *mod, unsigned long addr)
+{
+	struct plt_entry *plt = mod->arch.ftrace_trampolines;
+
+	if (addr == FTRACE_ADDR)
+		return &plt[FTRACE_PLT_IDX];
+	if (addr == FTRACE_REGS_ADDR && IS_ENABLED(CONFIG_FTRACE_WITH_REGS))
+		return &plt[FTRACE_REGS_PLT_IDX];
+	return NULL;
+}
+#endif
+
 /*
  * Turn on the call to ftrace_caller() in instrumented function
  */
@@ -74,19 +87,7 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 	if (offset < -SZ_128M || offset >= SZ_128M) {
 #ifdef CONFIG_ARM64_MODULE_PLTS
 		struct module *mod;
-
-		/*
-		 * There is only one ftrace trampoline per module. For now,
-		 * this is not a problem since on arm64, all dynamic ftrace
-		 * invocations are routed via ftrace_caller(). This will need
-		 * to be revisited if support for multiple ftrace entry points
-		 * is added in the future, but for now, the pr_err() below
-		 * deals with a theoretical issue only.
-		 */
-		if (addr != FTRACE_ADDR) {
-			pr_err("ftrace: far branches to multiple entry points unsupported inside a single module\n");
-			return -EINVAL;
-		}
+		struct plt_entry *plt;
 
 		/*
 		 * On kernels that support module PLTs, the offset between the
@@ -105,7 +106,13 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 		if (WARN_ON(!mod))
 			return -EINVAL;
 
-		addr = (unsigned long)mod->arch.ftrace_trampoline;
+		plt = get_ftrace_plt(mod, addr);
+		if (!plt) {
+			pr_err("ftrace: no module PLT for %ps\n", (void *)addr);
+			return -EINVAL;
+		}
+
+		addr = (unsigned long)plt;
 #else /* CONFIG_ARM64_MODULE_PLTS */
 		return -EINVAL;
 #endif /* CONFIG_ARM64_MODULE_PLTS */
@@ -117,6 +124,55 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 	return ftrace_modify_code(pc, old, new, true);
 }
 
+#ifdef CONFIG_DYNAMIC_FTRACE_WITH_REGS
+int ftrace_modify_call(struct dyn_ftrace *rec, unsigned long old_addr,
+			unsigned long addr)
+{
+	unsigned long pc = rec->ip;
+	u32 old, new;
+
+	old = aarch64_insn_gen_branch_imm(pc, old_addr,
+					  AARCH64_INSN_BRANCH_LINK);
+	new = aarch64_insn_gen_branch_imm(pc, addr, AARCH64_INSN_BRANCH_LINK);
+
+	return ftrace_modify_code(pc, old, new, true);
+}
+
+/*
+ * The compiler has inserted two NOPs before the regular function prologue.
+ * All instrumented functions follow the AAPCS, so x0-x8 and x19-x30 are live,
+ * and x9-x18 are free for our use.
+ *
+ * At runtime we want to be able to swing a single NOP <-> BL to enable or
+ * disable the ftrace call. The BL requires us to save the original LR value,
+ * so here we insert a <MOV X9, LR> over the first NOP so the instructions
+ * before the regular prologue are:
+ *
+ * | Compiled | Disabled   | Enabled    |
+ * +----------+------------+------------+
+ * | NOP      | MOV X9, LR | MOV X9, LR |
+ * | NOP      | NOP        | BL <entry> |
+ *
+ * The LR value will be recovered by ftrace_regs_entry, and restored into LR
+ * before returning to the regular function prologue. When a function is not
+ * being traced, the MOV is not harmful given x9 is not live per the AAPCS.
+ *
+ * Note: ftrace_process_locs() has pre-adjusted rec->ip to be the address of
+ * the BL.
+ */
+int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
+{
+	unsigned long pc = rec->ip - AARCH64_INSN_SIZE;
+	u32 old, new;
+
+	old = aarch64_insn_gen_nop();
+	new = aarch64_insn_gen_move_reg(AARCH64_INSN_REG_9,
+					AARCH64_INSN_REG_LR,
+					AARCH64_INSN_VARIANT_64BIT);
+	return ftrace_modify_code(pc, old, new, true);
+}
+#endif
+
 /*
  * Turn off the call to ftrace_caller() in instrumented function
  */
diff --git a/arch/arm64/kernel/module-plts.c b/arch/arm64/kernel/module-plts.c
index b182442b87a3..65b08a74aec6 100644
--- a/arch/arm64/kernel/module-plts.c
+++ b/arch/arm64/kernel/module-plts.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/elf.h>
+#include <linux/ftrace.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/sort.h>
@@ -330,7 +331,7 @@ int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
 		tramp->sh_type = SHT_NOBITS;
 		tramp->sh_flags = SHF_EXECINSTR | SHF_ALLOC;
 		tramp->sh_addralign = __alignof__(struct plt_entry);
-		tramp->sh_size = sizeof(struct plt_entry);
+		tramp->sh_size = NR_FTRACE_PLTS * sizeof(struct plt_entry);
 	}
 
 	return 0;
diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index 5f5bc3b94da7..00d21a420c60 100644
--- a/arch/arm64/kernel/module.c
+++ b/arch/arm64/kernel/module.c
@@ -486,21 +486,31 @@ static const Elf_Shdr *find_section(const Elf_Ehdr *hdr,
 	return NULL;
 }
 
+static inline void __init_plt(struct plt_entry *plt, unsigned long addr)
+{
+	*plt = get_plt_entry(addr, plt);
+}
+
 int module_init_ftrace_plt(const Elf_Ehdr *hdr,
 			   const Elf_Shdr *sechdrs,
 			   struct module *mod)
 {
 #if defined(CONFIG_ARM64_MODULE_PLTS) && defined(CONFIG_DYNAMIC_FTRACE)
 	const Elf_Shdr *s;
-	struct plt_entry *plt;
+	struct plt_entry *plts;
 
 	s = find_section(hdr, sechdrs, ".text.ftrace_trampoline");
 	if (!s)
 		return -ENOEXEC;
 
-	plt = (void *)s->sh_addr;
-	*plt = get_plt_entry(FTRACE_ADDR, plt);
-	mod->arch.ftrace_trampoline = plt;
+	plts = (void *)s->sh_addr;
+
+	__init_plt(&plts[FTRACE_PLT_IDX], FTRACE_ADDR);
+
+	if (IS_ENABLED(CONFIG_DYNAMIC_FTRACE_WITH_REGS))
+		__init_plt(&plts[FTRACE_REGS_PLT_IDX], FTRACE_REGS_ADDR);
+
+	mod->arch.ftrace_trampolines = plts;
 #endif
 	return 0;
 }
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
