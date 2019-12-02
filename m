Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91ECD10ECD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 17:11:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9Bv47rae9dIiknxrDId+7ZyAIOtmMjV9lRNECnudMEo=; b=TEI
	9U+a7lDbPLEbp2dz/TR+EFBL11rYWrNe8u5h5ijl9+V3ZD7es08FhO4DI5cjrYjWSdZL9ySufouo3
	Atnk2Ar47/D38xNdvG/5gE4161xocBXDyPoV84V9B/sJMrWO4Sv/Hsnv5pk0PIYhDCeQ0RPEWZG58
	IW6d49ehPs7fqpTMF29PdeSkSI7XJ4eToR8MgKglTJCY4By7iQFLuNUDo2gtWUOGFekbQ5kSsLwHJ
	LW9LyI0CTKoBNX5o9jew9WnWqxLAeMiRasqrxb38f7XjzJ/8L1yL6GSkx5DRrXJ+jRHxFZTvR2IQq
	wopiprzDq+d3m0w1wGQ2Jw7sYUVuLTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iboIF-00089r-PV; Mon, 02 Dec 2019 16:11:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iboI9-00089U-1K
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 16:11:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BA8A31B;
 Mon,  2 Dec 2019 08:11:14 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5A1433F52E;
 Mon,  2 Dec 2019 08:11:13 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, will@kernel.org,
 catalin.marinas@arm.com
Subject: [PATCH] arm64: insn: consistently handle exit text
Date: Mon,  2 Dec 2019 16:11:07 +0000
Message-Id: <20191202161107.19177-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_081117_166142_C6F6872D 
X-CRM114-Status: GOOD (  16.51  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Torsten Duwe <duwe@suse.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A kernel built with KASAN && FTRACE_WITH_REGS && !MODULES, produces a
boot-time splat in the bowels of ftrace:

| [    0.000000] ftrace: allocating 32281 entries in 127 pages
| [    0.000000] ------------[ cut here ]------------
| [    0.000000] WARNING: CPU: 0 PID: 0 at kernel/trace/ftrace.c:2019 ftrace_bug+0x27c/0x328
| [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.4.0-rc3-00008-g7f08ae53a7e3 #13
| [    0.000000] Hardware name: linux,dummy-virt (DT)
| [    0.000000] pstate: 60000085 (nZCv daIf -PAN -UAO)
| [    0.000000] pc : ftrace_bug+0x27c/0x328
| [    0.000000] lr : ftrace_init+0x640/0x6cc
| [    0.000000] sp : ffffa000120e7e00
| [    0.000000] x29: ffffa000120e7e00 x28: ffff00006ac01b10
| [    0.000000] x27: ffff00006ac898c0 x26: dfffa00000000000
| [    0.000000] x25: ffffa000120ef290 x24: ffffa0001216df40
| [    0.000000] x23: 000000000000018d x22: ffffa0001244c700
| [    0.000000] x21: ffffa00011bf393c x20: ffff00006ac898c0
| [    0.000000] x19: 00000000ffffffff x18: 0000000000001584
| [    0.000000] x17: 0000000000001540 x16: 0000000000000007
| [    0.000000] x15: 0000000000000000 x14: ffffa00010432770
| [    0.000000] x13: ffff940002483519 x12: 1ffff40002483518
| [    0.000000] x11: 1ffff40002483518 x10: ffff940002483518
| [    0.000000] x9 : dfffa00000000000 x8 : 0000000000000001
| [    0.000000] x7 : ffff940002483519 x6 : ffffa0001241a8c0
| [    0.000000] x5 : ffff940002483519 x4 : ffff940002483519
| [    0.000000] x3 : ffffa00011780870 x2 : 0000000000000001
| [    0.000000] x1 : 1fffe0000d591318 x0 : 0000000000000000
| [    0.000000] Call trace:
| [    0.000000]  ftrace_bug+0x27c/0x328
| [    0.000000]  ftrace_init+0x640/0x6cc
| [    0.000000]  start_kernel+0x27c/0x654
| [    0.000000] random: get_random_bytes called from print_oops_end_marker+0x30/0x60 with crng_init=0
| [    0.000000] ---[ end trace 0000000000000000 ]---
| [    0.000000] ftrace faulted on writing
| [    0.000000] [<ffffa00011bf393c>] _GLOBAL__sub_D_65535_0___tracepoint_initcall_level+0x4/0x28
| [    0.000000] Initializing ftrace call sites
| [    0.000000] ftrace record flags: 0
| [    0.000000]  (0)
| [    0.000000]  expected tramp: ffffa000100b3344

This is due to an unfortunate combination of several factors.

Building with KASAN results in the compiler generating anonymous
functions to register/unregister global variables against the shadow
memory. These functions are placed in .text.startup/.text.exit, and
given mangled names like _GLOBAL__sub_{I,D}_65535_0_$OTHER_SYMBOL. The
kernel linker script places these in .init.text and .exit.text
respectively, which are both discarded at runtime as part of initmem.

Building with FTRACE_WITH_REGS uses -fpatchable-function-entry=2, which
also instruments KASAN's anonymous functions. When these are discarded
with the rest of initmem, ftrace removes dangling references to these
call sites.

Building without MODULES implicitly disables STRICT_MODULE_RWX, and
causes arm64's patch_map() function to treat any !core_kernel_text()
symbol as something that can be modified in-place. As core_kernel_text()
is only true for .text and .init.text, with the latter depending on
system_state < SYSTEM_RUNNING, we'll treat .exit.text as something that
can be patched in-place. However, .exit.text is mapped read-only.

Hence in this configuration the ftrace init code blows up while trying
to patch one of the functions generated by KASAN.

We could try to filter out the call sites in .exit.text rather than
initializing them, but this would be inconsistent with how we handle
.init.text, and requires hooking into core bits of ftrace. The behaviour
of patch_map() is also inconsistent today, so instead let's clean that
up and have it consistently handle .exit.text.

This patch teaches patch_map() to handle .exit.text at init time,
preventing the boot-time splat above. The flow of patch_map() is
reworked to make the logic clearer and minimize redundant
conditionality.

Fixes: 3b23e4991fb66f6d ("arm64: implement ftrace with regs")
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Torsten Duwe <duwe@suse.de>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/sections.h |  1 +
 arch/arm64/kernel/insn.c          | 22 ++++++++++++++++++----
 arch/arm64/kernel/vmlinux.lds.S   |  3 +++
 3 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/sections.h b/arch/arm64/include/asm/sections.h
index 788ae971f11c..25a73aab438f 100644
--- a/arch/arm64/include/asm/sections.h
+++ b/arch/arm64/include/asm/sections.h
@@ -15,6 +15,7 @@ extern char __hyp_text_start[], __hyp_text_end[];
 extern char __idmap_text_start[], __idmap_text_end[];
 extern char __initdata_begin[], __initdata_end[];
 extern char __inittext_begin[], __inittext_end[];
+extern char __exittext_begin[], __exittext_end[];
 extern char __irqentry_text_start[], __irqentry_text_end[];
 extern char __mmuoff_data_start[], __mmuoff_data_end[];
 extern char __entry_tramp_text_start[], __entry_tramp_text_end[];
diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 513b29c3e735..4a9e773a177f 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -21,6 +21,7 @@
 #include <asm/fixmap.h>
 #include <asm/insn.h>
 #include <asm/kprobes.h>
+#include <asm/sections.h>
 
 #define AARCH64_INSN_SF_BIT	BIT(31)
 #define AARCH64_INSN_N_BIT	BIT(22)
@@ -78,16 +79,29 @@ bool aarch64_insn_is_branch_imm(u32 insn)
 
 static DEFINE_RAW_SPINLOCK(patch_lock);
 
+static bool is_exit_text(unsigned long addr)
+{
+	/* discarded with init text/data */
+	return system_state < SYSTEM_RUNNING &&
+		addr >= (unsigned long)__exittext_begin &&
+		addr < (unsigned long)__exittext_end;
+}
+
+static bool is_image_text(unsigned long addr)
+{
+	return core_kernel_text(addr) || is_exit_text(addr);
+}
+
 static void __kprobes *patch_map(void *addr, int fixmap)
 {
 	unsigned long uintaddr = (uintptr_t) addr;
-	bool module = !core_kernel_text(uintaddr);
+	bool image = is_image_text(uintaddr);
 	struct page *page;
 
-	if (module && IS_ENABLED(CONFIG_STRICT_MODULE_RWX))
-		page = vmalloc_to_page(addr);
-	else if (!module)
+	if (image)
 		page = phys_to_page(__pa_symbol(addr));
+	else if (IS_ENABLED(CONFIG_STRICT_MODULE_RWX))
+		page = vmalloc_to_page(addr);
 	else
 		return addr;
 
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index aa76f7259668..93752718f9d5 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -161,9 +161,12 @@ SECTIONS
 	__inittext_begin = .;
 
 	INIT_TEXT_SECTION(8)
+
+	__exittext_begin = .;
 	.exit.text : {
 		ARM_EXIT_KEEP(EXIT_TEXT)
 	}
+	__exittext_end = .;
 
 	. = ALIGN(4);
 	.altinstructions : {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
