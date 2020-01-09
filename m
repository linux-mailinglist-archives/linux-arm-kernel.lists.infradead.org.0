Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C073E135B21
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:13:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zMBGiJDw9Zkri8p1JphU02MkvmRWW2YqYXmZm8vdMxA=; b=uwJegtH7DT70JA
	+SIMd+/P2TyY6eOh80pt45cDgR6rDUf17PlSaHk07+zF8ZJTUlWJqERYlBc1Jxe2WqvtsPD0izRh5
	JnS7mGngGAboyAS+kBxLnBh3cWB/47q7j3uIwmQdePho7YFOgKNk5QGlwaNnDUg+67GeLkSh+GUZO
	JyyoiTIMiWIJ2GTKHQxcyzKRUHReBP1f4jluHcz3MvPHl8ENt/iSAmIaJPbVLcvftz4jioQ+tT412
	CdE54yKH8szYLn1lQwaU3WWdjihMrllaDQLQR/g+cnSY5MbjPOr4Qj07q0gkmG2z2fMl8+SgJI/zT
	nZBT870nUy1qUjWkKFHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYYc-0001uz-Hc; Thu, 09 Jan 2020 14:13:06 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYYU-0001tr-CA
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:13:01 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1697D9ABB84B413FC16B;
 Thu,  9 Jan 2020 22:12:49 +0800 (CST)
Received: from huawei.com (10.175.104.193) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Thu, 9 Jan 2020
 22:12:41 +0800
From: Cheng Jian <cj.chengjian@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [RFC PATCH] arm64/ftrace: support dynamically allocated trampolines
Date: Thu, 9 Jan 2020 14:27:36 +0000
Message-ID: <20200109142736.1122-1-cj.chengjian@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.193]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_061258_746334_AB2F5575 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, cj.chengjian@huawei.com, xiexiuqi@huawei.com,
 catalin.marinas@arm.com, bobo.shaobowang@huawei.com, duwe@lst.de,
 huawei.libin@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we tracing multiple functions, it has to use a list
function and cause all the other functions being traced
to check the hash of the ftrace_ops. But this is very
inefficient.

we can call a dynamically allocated trampoline which calls
the callback directly to solve this problem. This patch
introduce dynamically alloced trampolines for ARM64.

If a callback is registered to a function and there's no
other callback registered to that function, the ftrace_ops
will get its own trampoline allocated for it that will call
the function directly.

We merge two functions (ftrace_caller/ftrace_regs_caller and
ftrace_common) into one function, so we no longer need a jump
to ftrace_common and fix it to NOP.

similar to X86_64, save the local ftrace_ops at the end.

the ftrace trampoline layout :

                          low
ftrace_(regs_)caller  => +---------------+
                         | ftrace_caller |
ftrace_common         => +---------------+
                         | ftrace_common |
function_trace_op_ptr => | ...           | ldr x2, <ftrace_ops>
           |             | b ftrace_stub |
	   |             | nop           | fgraph call
           |             +---------------+
           +------------>| ftrace_ops    |
                         +---------------+
			 | PLT entrys    | (TODO)
                         +---------------+
                          high

Known issues :
If kaslr is enabled, the address of tramp and ftrace call
may be far away. Therefore, long jump support is required.
Here I intend to use the same solution as module relocating,
Reserve enough space for PLT at the end when allocating, can
use PLT to complete these long jumps.

Signed-off-by: Cheng Jian <cj.chengjian@huawei.com>
---
 arch/arm64/kernel/entry-ftrace.S |   4 +
 arch/arm64/kernel/ftrace.c       | 310 +++++++++++++++++++++++++++++++
 2 files changed, 314 insertions(+)

diff --git a/arch/arm64/kernel/entry-ftrace.S b/arch/arm64/kernel/entry-ftrace.S
index 7d02f9966d34..f5ee797804ac 100644
--- a/arch/arm64/kernel/entry-ftrace.S
+++ b/arch/arm64/kernel/entry-ftrace.S
@@ -77,17 +77,20 @@
 
 ENTRY(ftrace_regs_caller)
 	ftrace_regs_entry	1
+GLOBAL(ftrace_regs_caller_end)
 	b	ftrace_common
 ENDPROC(ftrace_regs_caller)
 
 ENTRY(ftrace_caller)
 	ftrace_regs_entry	0
+GLOBAL(ftrace_caller_end)
 	b	ftrace_common
 ENDPROC(ftrace_caller)
 
 ENTRY(ftrace_common)
 	sub	x0, x30, #AARCH64_INSN_SIZE	// ip (callsite's BL insn)
 	mov	x1, x9				// parent_ip (callsite's LR)
+GLOBAL(function_trace_op_ptr)
 	ldr_l	x2, function_trace_op		// op
 	mov	x3, sp				// regs
 
@@ -121,6 +124,7 @@ ftrace_common_return:
 	/* Restore the callsite's SP */
 	add	sp, sp, #S_FRAME_SIZE + 16
 
+GLOBAL(ftrace_common_end)
 	ret	x9
 ENDPROC(ftrace_common)
 
diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
index 8618faa82e6d..95ea68ef6228 100644
--- a/arch/arm64/kernel/ftrace.c
+++ b/arch/arm64/kernel/ftrace.c
@@ -10,11 +10,13 @@
 #include <linux/module.h>
 #include <linux/swab.h>
 #include <linux/uaccess.h>
+#include <linux/vmalloc.h>
 
 #include <asm/cacheflush.h>
 #include <asm/debug-monitors.h>
 #include <asm/ftrace.h>
 #include <asm/insn.h>
+#include <asm/set_memory.h>
 
 #ifdef CONFIG_DYNAMIC_FTRACE
 /*
@@ -47,6 +49,314 @@ static int ftrace_modify_code(unsigned long pc, u32 old, u32 new,
 	return 0;
 }
 
+/* ftrace dynamic trampolines */
+#ifdef CONFIG_DYNAMIC_FTRACE_WITH_REGS
+#ifdef CONFIG_MODULES
+#include <linux/moduleloader.h>
+
+static inline void *alloc_tramp(unsigned long size)
+{
+	return module_alloc(size);
+}
+
+static inline void tramp_free(void *tramp)
+{
+	module_memfree(tramp);
+}
+#else
+static inline void *alloc_tramp(unsigned long size)
+{
+	return NULL;
+}
+
+static inline void tramp_free(void *tramp) {}
+#endif
+
+extern void ftrace_regs_caller_end(void);
+extern void ftrace_caller_end(void);
+extern void ftrace_common(void);
+extern void ftrace_common_end(void);
+
+extern void function_trace_op_ptr(void);
+
+extern struct ftrace_ops *function_trace_op;
+
+/*
+ * ftrace_caller() or ftrace_regs_caller() trampoline
+ *				+-----------------------+
+ * ftrace_(regs_)caller =>	|	......		|
+ * ftrace_(regs_)caller_end =>	| b ftrace_common	| => nop
+ *				+-----------------------+
+ * ftrace_common =>		|	......		|
+ * function_trace_op_ptr =>	| adrp x2, sym		| => nop
+ *				| ldr  x2,[x2,:lo12:sym]| => ldr x2 <ftrace_op>
+ *				|	......		|
+ * ftrace_common_end  =>	|	retq		|
+ *				+-----------------------+
+ * ftrace_opt =>		|	ftrace_opt	|
+ *				+-----------------------+
+ */
+static unsigned long create_trampoline(struct ftrace_ops *ops, unsigned int *tramp_size)
+{
+	unsigned long start_offset_caller, end_offset_caller, caller_size;
+	unsigned long start_offset_common, end_offset_common, common_size;
+	unsigned long op_offset, offset, size, ip, npages;
+	void *trampoline;
+	unsigned long *ptr;
+	/* ldr x2, <label> */
+	u32 pc_ldr = 0x58000002;
+	u32 mask = BIT(19) - 1;
+	int shift = 5;
+	int ret;
+	u32 nop;
+
+	if (ops->flags & FTRACE_OPS_FL_SAVE_REGS) {
+		start_offset_caller = (unsigned long)ftrace_regs_caller;
+		end_offset_caller = (unsigned long)ftrace_regs_caller_end;
+	} else {
+		start_offset_caller = (unsigned long)ftrace_caller;
+		end_offset_caller = (unsigned long)ftrace_caller_end;
+	}
+	start_offset_common = (unsigned long)ftrace_common;
+	end_offset_common = (unsigned long)ftrace_common_end;
+
+	op_offset = (unsigned long)function_trace_op_ptr;
+
+	/*
+	 * Merge ftrace_caller/ftrace_regs_caller and ftrace_common
+	 * to one function in ftrace trampoline.
+	 */
+	caller_size = end_offset_caller - start_offset_caller + AARCH64_INSN_SIZE;
+	common_size = end_offset_common - start_offset_common + AARCH64_INSN_SIZE;
+	size = caller_size + common_size;
+
+	trampoline = alloc_tramp(caller_size + common_size + sizeof(void *));
+	if (!trampoline)
+		return 0;
+
+	*tramp_size = caller_size + common_size + sizeof(void *);
+	npages = DIV_ROUND_UP(*tramp_size, PAGE_SIZE);
+
+	/* Copy ftrace_caller/ftrace_regs_caller onto the trampoline memory */
+	ret = probe_kernel_read(trampoline, (void *)start_offset_caller, caller_size);
+	if (WARN_ON(ret < 0))
+		goto free;
+
+	/*
+	 * Copy ftrace_common to the trampoline memory
+	 * below ftrace_caller/ftrace_regs_caller. so
+	 * we can merge the two function to one function.
+	 */
+	ret = probe_kernel_read(trampoline + caller_size, (void *)start_offset_common, common_size);
+	if (WARN_ON(ret < 0))
+		goto free;
+
+	/*
+	 * We merge the two functions to one function, so these is
+	 * no need to use jump instructions to ftrace_common, modify
+	 * it to NOP.
+	 */
+	ip = (unsigned long)trampoline + caller_size - AARCH64_INSN_SIZE;
+	nop = aarch64_insn_gen_nop();
+	memcpy((void *)ip, &nop, AARCH64_INSN_SIZE);
+
+	/*
+	 * Stored ftrace_ops at the end of the trampoline.
+	 * This will be used to load the third parameter for the callback.
+	 * Basically, that location at the end of the trampoline takes the
+	 * place of the global function_trace_op variable.
+	 */
+	ptr = (unsigned long *)(trampoline + size);
+	*ptr = (unsigned long)ops;
+
+	/*
+	 * Update the trampoline ops REF
+	 *
+	 * OLD INSNS : ldr_l x2, function_trace_op
+	 *	adrp	x2, sym
+	 *	ldr	x2, [x2, :lo12:\sym]
+	 *
+	 * NEW INSNS:
+	 *	nop
+	 *	ldr x2, <ftrace_ops>
+	 */
+	op_offset -= start_offset_common;
+	ip = (unsigned long)trampoline + caller_size + op_offset;
+	nop = aarch64_insn_gen_nop();
+	memcpy((void *)ip, &nop, AARCH64_INSN_SIZE);
+
+	op_offset += AARCH64_INSN_SIZE;
+	ip = (unsigned long)trampoline + caller_size + op_offset;
+	offset = (unsigned long)ptr - ip;
+	if (WARN_ON(offset % AARCH64_INSN_SIZE != 0))
+		goto free;
+	offset = offset / AARCH64_INSN_SIZE;
+	pc_ldr |= (offset & mask) << shift;
+	memcpy((void *)ip, &pc_ldr, AARCH64_INSN_SIZE);
+
+	ops->flags |= FTRACE_OPS_FL_ALLOC_TRAMP;
+
+	set_vm_flush_reset_perms(trampoline);
+
+	/*
+	 * Module allocation needs to be completed by making the page
+	 * executable. The page is still writable, which is a security hazard,
+	 * but anyhow ftrace breaks W^X completely.
+	 */
+	set_memory_x((unsigned long)trampoline, npages);
+
+	return (unsigned long)trampoline;
+
+free:
+	tramp_free(trampoline);
+	return 0;
+}
+
+static unsigned long calc_trampoline_call_offset(struct ftrace_ops *ops)
+{
+	unsigned call_offset, end_offset, offset;
+
+	call_offset = (unsigned long)&ftrace_call;
+	end_offset = (unsigned long)ftrace_common_end;
+	offset = end_offset - call_offset;
+
+	return ops->trampoline_size - AARCH64_INSN_SIZE - sizeof(void *) - offset;
+}
+
+static int ftrace_trampoline_modify_call(struct ftrace_ops *ops)
+{
+	unsigned long offset;
+	unsigned long pc;
+	ftrace_func_t func;
+	u32 new;
+
+	offset = calc_trampoline_call_offset(ops);
+	pc = ops->trampoline + offset;
+
+	func = ftrace_ops_get_func(ops);
+	new = aarch64_insn_gen_branch_imm(pc, (unsigned long)func, AARCH64_INSN_BRANCH_LINK);
+
+	return ftrace_modify_code(pc, 0, new, false);
+}
+
+#ifdef CONFIG_FUNCTION_GRAPH_TRACER
+
+static unsigned long calc_trampoline_graph_call_offset(struct ftrace_ops *ops)
+{
+	unsigned end_offset, call_offset, offset;
+
+	call_offset = (unsigned long)&ftrace_graph_call;
+	end_offset = (unsigned long)ftrace_common_end;
+	offset = end_offset - call_offset;
+
+	return ops->trampoline_size - AARCH64_INSN_SIZE - sizeof(void *) - offset;
+}
+
+extern int ftrace_graph_active;
+static int ftrace_trampoline_modify_graph_call(struct ftrace_ops *ops)
+{
+	unsigned long offset;
+	unsigned long pc;
+	u32 branch, nop;
+
+	offset = calc_trampoline_graph_call_offset(ops);
+	pc = ops->trampoline + offset;
+
+	branch = aarch64_insn_gen_branch_imm(pc,
+					     (unsigned long)ftrace_graph_caller,
+					     AARCH64_INSN_BRANCH_NOLINK);
+	nop = aarch64_insn_gen_nop();
+
+	if (ftrace_graph_active)
+		return ftrace_modify_code(pc, 0, branch, false);
+	else
+		return ftrace_modify_code(pc, 0, nop, false);
+}
+#else
+static inline int ftrace_trampoline_modify_graph_call(struct ftrace_ops *ops)
+{
+	return 0;
+}
+#endif
+
+void arch_ftrace_update_trampoline(struct ftrace_ops *ops)
+{
+	int npages;
+
+	if (ops->trampoline) {
+		/*
+		 * The ftrace_ops caller may set up its own trampoline.
+		 * In such a case, this code must not modify it.
+		 */
+		if (!(ops->flags & FTRACE_OPS_FL_ALLOC_TRAMP))
+			return;
+		npages = PAGE_ALIGN(ops->trampoline_size) >> PAGE_SHIFT;
+		set_memory_rw(ops->trampoline, npages);
+	} else {
+		unsigned int size;
+
+		ops->trampoline = create_trampoline(ops, &size);
+		if (!ops->trampoline)
+			return;
+		ops->trampoline_size = size;
+		npages = PAGE_ALIGN(size) >> PAGE_SHIFT;
+	}
+
+	/* atomic modify trampoline: <call func> */
+	WARN_ON(ftrace_trampoline_modify_call(ops));
+
+	/* atomic modify trampoline: <call graph func> */
+	WARN_ON(ftrace_trampoline_modify_graph_call(ops));
+
+	set_memory_ro(ops->trampoline, npages);
+}
+
+static void *addr_from_call(void *ptr)
+{
+	u32 insn;
+	unsigned long offset;
+
+	if (aarch64_insn_read(ptr, &insn))
+		return NULL;
+
+	/* Make sure this is a call */
+	if (!aarch64_insn_is_bl(insn)) {
+		pr_warn("Expected bl instruction, but not\n");
+		return NULL;
+	}
+
+	offset = aarch64_get_branch_offset(insn);
+
+	return (void *)ptr + AARCH64_INSN_SIZE + offset;
+}
+
+void prepare_ftrace_return(unsigned long self_addr, unsigned long *parent,
+			   unsigned long frame_pointer);
+
+void *arch_ftrace_trampoline_func(struct ftrace_ops *ops, struct dyn_ftrace *rec)
+{
+	unsigned long offset;
+
+	/* If we didn't allocate this trampoline, consider it static */
+	if (!ops || !(ops->flags & FTRACE_OPS_FL_ALLOC_TRAMP))
+		return NULL;
+
+	offset = calc_trampoline_call_offset(ops);
+
+	return addr_from_call((void *)ops->trampoline + offset);
+}
+
+void arch_ftrace_trampoline_free(struct ftrace_ops *ops)
+{
+	if (!ops || !(ops->flags & FTRACE_OPS_FL_ALLOC_TRAMP))
+		return;
+
+	tramp_free((void *)ops->trampoline);
+	ops->trampoline = 0;
+	ops->trampoline_size = 0;
+}
+#endif
+
 /*
  * Replace tracer function in ftrace_caller()
  */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
