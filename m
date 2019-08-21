Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38F5981B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 19:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Sm6VOmQY4+fZXP6j52wHxhKUZaWkNa9haE9/YxtpY8=; b=GQrXc3dglqwdg+
	litqUN/zBtrqO8WlcsuUbxfekWyj3TRjAtVGfwGtFMNL6Bj3XeinxQlqv6YYa+/F1WKC0Y24eZJnX
	nie/8641CV21zj5cRy4spWwFZfCJQsrdyJHk1SA4fondXHu5xk3N1XHdg54FszLharaBkhOZ11SxJ
	U9gIBIaPRiS7ksk5w30rg2QzKIarFurb/QEOcTYPquZQvPEjp+t+eD3N1uPbfJS8fQnzhM3RnGVIG
	sdbVSBHyKFL9VP6td/5zhiLBYTc8df6HDLHLzcdbL5jIrawGbJUqIzdulJ0vJuzJhCO0feDIFjQmW
	Sy/YUiZKGIiz+GBW4e8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Ugs-0008TP-GT; Wed, 21 Aug 2019 17:46:34 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Ugi-0008Sk-Ru
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 17:46:26 +0000
Received: by mail-pf1-x449.google.com with SMTP id b21so2080589pfb.17
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 10:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=JQSRePDzCPl3TptPqCKZb0r1MA+qHGTjezQh5N7pYVM=;
 b=MgwoT24KCNyTGJXjuKwI0IaLEe9qI1v049LoFXnMjCOw1lfzCm+Pzyt4xeTAYnSMsa
 OsUcEH0rwKBuOj0jFKYbXuOsPzcIZbNDUaGZx8IwL31aoVsK2A1tmdPbSJ+i64TRa8r/
 S8jdzMmU8S4+N7Yi8NzfFBt0mIQeBimVos5Vg5j0DIq4gyCEgvKYPjb/21vehdgf7BQL
 1KQwhVsWzwVvhnNpC0vKvf1vhzCvhdVSPk06XI6IO2Emyp2lj0/zq68xdw5dEh7gZ6Q9
 /YH/3/NkKxu5M+Z9Brw+Bef5bR0VJu/SRE8sFwxpjuwxpkzhfjXcPP/VAAZnff/kc0PD
 OmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=JQSRePDzCPl3TptPqCKZb0r1MA+qHGTjezQh5N7pYVM=;
 b=KC2CULoM7m3FJryOnDsV+YOs0k7ciPdX9Brlq5HSrLz8QVtBzDP9D+AyEH/l7GY1iI
 GOQGkqHEtf1SIusadusiOH0kbh9gbqPoBZ7cDqQWOyfvybWsFrkySgALqDLxtgOsACVB
 u5mgcYIkimleOZYnk+WgY2YbG5y/quC112lh664ap/bL1dBCf+iNc6zz+iyq5dlc0gao
 Iosp1ZDTrsnshozM/D4PmbuWhy3ILlLZ8U3tEFrZG3KQJOUXP+hM01QRSme41NsuCncK
 JsFDjsz3vECzRnjDCU3c8pAs3AbNtRU7tDxMhr4MBaOFyvPUGxbtrMApm/AnCl4BEYu4
 ffFg==
X-Gm-Message-State: APjAAAWTMbvKsMs53BNoW6vejRe2URtt3R9ZX26E758IbR34GCsl8DMu
 8UhViB+Ylm5D7iCG3/EY6Xa+uMaHMg==
X-Google-Smtp-Source: APXvYqwzr9QqHlMfMpJ+/VvnryR5TJcUVTjOJyDke5PPWQ9DXZomxWAzgjanq007hNuF8rOpTHiZL7hRPA==
X-Received: by 2002:a65:684c:: with SMTP id q12mr28055332pgt.405.1566409582636; 
 Wed, 21 Aug 2019 10:46:22 -0700 (PDT)
Date: Wed, 21 Aug 2019 10:46:19 -0700
In-Reply-To: <CAJkfWY4cHz+i8kYg2i1Krs-32nh7-WQU+psT=DRGYnTje6yj4Q@mail.gmail.com>
Message-Id: <20190821174619.21935-1-nhuck@google.com>
Mime-Version: 1.0
References: <CAJkfWY4cHz+i8kYg2i1Krs-32nh7-WQU+psT=DRGYnTje6yj4Q@mail.gmail.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v2] ARM: UNWINDER_FRAME_POINTER implementation for Clang
From: Nathan Huckleberry <nhuck@google.com>
To: linux@armlinux.org.uk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_104624_932848_F4BC2554 
X-CRM114-Status: GOOD (  28.99  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tri Vo <trong@google.com>, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, Nathan Huckleberry <nhuck@google.com>,
 clang-built-linux@googlegroups.com, miles.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The stackframe setup when compiled with clang is different.
Since the stack unwinder expects the gcc stackframe setup it
fails to print backtraces. This patch adds support for the
clang stackframe setup.

Link: https://github.com/ClangBuiltLinux/linux/issues/35
Cc: clang-built-linux@googlegroups.com
Suggested-by: Tri Vo <trong@google.com>
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
Changes from v1->v2
* Fix indentation in various files
* Swap spaces for tabs
* Rename Ldsi to Lopcode
* Remove unused Ldsi entry

 arch/arm/Kconfig.debug         |   2 +-
 arch/arm/Makefile              |   5 +-
 arch/arm/lib/Makefile          |   8 +-
 arch/arm/lib/backtrace-clang.S | 229 +++++++++++++++++++++++++++++++++
 4 files changed, 241 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/lib/backtrace-clang.S

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 85710e078afb..b9c674ec19e0 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -56,7 +56,7 @@ choice
 
 config UNWINDER_FRAME_POINTER
 	bool "Frame pointer unwinder"
-	depends on !THUMB2_KERNEL && !CC_IS_CLANG
+	depends on !THUMB2_KERNEL
 	select ARCH_WANT_FRAME_POINTERS
 	select FRAME_POINTER
 	help
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bc..6f251c201db0 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -36,7 +36,10 @@ KBUILD_CFLAGS	+= $(call cc-option,-mno-unaligned-access)
 endif
 
 ifeq ($(CONFIG_FRAME_POINTER),y)
-KBUILD_CFLAGS	+=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
+KBUILD_CFLAGS	+=-fno-omit-frame-pointer
+ifeq ($(CONFIG_CC_IS_GCC),y)
+KBUILD_CFLAGS += -mapcs -mno-sched-prolog
+endif
 endif
 
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index b25c54585048..6d2ba454f25b 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -5,7 +5,7 @@
 # Copyright (C) 1995-2000 Russell King
 #
 
-lib-y		:= backtrace.o changebit.o csumipv6.o csumpartial.o   \
+lib-y		:= changebit.o csumipv6.o csumpartial.o               \
 		   csumpartialcopy.o csumpartialcopyuser.o clearbit.o \
 		   delay.o delay-loop.o findbit.o memchr.o memcpy.o   \
 		   memmove.o memset.o setbit.o                        \
@@ -19,6 +19,12 @@ lib-y		:= backtrace.o changebit.o csumipv6.o csumpartial.o   \
 mmu-y		:= clear_user.o copy_page.o getuser.o putuser.o       \
 		   copy_from_user.o copy_to_user.o
 
+ifdef CONFIG_CC_IS_CLANG
+  lib-y	+= backtrace-clang.o
+else
+  lib-y	+= backtrace.o
+endif
+
 # using lib_ here won't override already available weak symbols
 obj-$(CONFIG_UACCESS_WITH_MEMCPY) += uaccess_with_memcpy.o
 
diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
new file mode 100644
index 000000000000..6f2a8a57d0fb
--- /dev/null
+++ b/arch/arm/lib/backtrace-clang.S
@@ -0,0 +1,229 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ *  linux/arch/arm/lib/backtrace-clang.S
+ *
+ *  Copyright (C) 2019 Nathan Huckleberry
+ *
+ */
+#include <linux/kern_levels.h>
+#include <linux/linkage.h>
+#include <asm/assembler.h>
+		.text
+
+/* fp is 0 or stack frame */
+
+#define frame	r4
+#define sv_fp	r5
+#define sv_pc	r6
+#define mask	r7
+#define sv_lr	r8
+
+ENTRY(c_backtrace)
+
+#if !defined(CONFIG_FRAME_POINTER) || !defined(CONFIG_PRINTK)
+		ret	lr
+ENDPROC(c_backtrace)
+#else
+
+
+/*
+ * Clang does not store pc or sp in function prologues
+ * so we don't know exactly where the function
+ * starts.
+ *
+ * We can treat the current frame's lr as the saved pc and the
+ * preceding frame's lr as the current frame's lr,
+ * but we can't trace the most recent call.
+ * Inserting a false stack frame allows us to reference the
+ * function called last in the stacktrace.
+ *
+ * If the call instruction was a bl we can look at the callers
+ * branch instruction to calculate the saved pc.
+ * We can recover the pc in most cases, but in cases such as
+ * calling function pointers we cannot. In this
+ * case, default to using the lr. This will be
+ * some address in the function, but will not
+ * be the function start.
+ *
+ * Unfortunately due to the stack frame layout we can't dump
+ *              r0 - r3, but these are less frequently saved.
+ *
+ * Stack frame layout:
+ * 		<larger addresses>
+ * 		saved lr
+ * 	frame=> saved fp
+ * 		optionally saved caller registers (r4 - r10)
+ * 		optionally saved arguments (r0 - r3)
+ * 		<top of stack frame>
+ * 		<smaller addresses>
+ *
+ * Functions start with the following code sequence:
+ * corrected pc =>  stmfd sp!, {..., fp, lr}
+ *		add fp, sp, #x
+ *		stmfd sp!, {r0 - r3} (optional)
+ *
+ *
+ *
+ *
+ *
+ *
+ * The diagram below shows an example stack setup
+ * for dump_stack.
+ *
+ * The frame for c_backtrace has pointers to the
+ * code of dump_stack. This is why the frame of
+ * c_backtrace is used to for the pc calculation
+ * of dump_stack. This is why we must move back
+ * a frame to print dump_stack.
+ *
+ * The stored locals for dump_stack are in dump_stack's
+ * frame. This means that to fully print dump_stack's frame
+ * we need both the frame for dump_stack (for locals) and the
+ * frame that was called by dump_stack (for pc).
+ *
+ * To print locals we must know where the function start is. If
+ * we read the function prologue opcodes we can determine
+ * which variables are stored in the stack frame.
+ *
+ * To find the function start of dump_stack we can look at the
+ * stored LR of show_stack. It points at the instruction
+ * directly after the bl dump_stack. We can then read the
+ * offset from the bl opcode to determine where the branch takes us.
+ * The address calculated must be the start of dump_stack.
+ *
+ * c_backtrace frame           dump_stack:
+ * {[LR]    }  ============|   ...
+ * {[FP]    }  =======|    |   bl c_backtrace
+ *                    |    |=> ...
+ * {[R4-R10]}         |
+ * {[R0-R3] }         |        show_stack:
+ * dump_stack frame   |        ...
+ * {[LR]    } =============|   bl dump_stack
+ * {[FP]    } <=======|    |=> ...
+ * {[R4-R10]}
+ * {[R0-R3] }
+ */
+
+stmfd   sp!, {r4 - r9, fp, lr}	@ Save an extra register
+				@ to ensure 8 byte alignment
+movs	frame, r0		@ if frame pointer is zero
+beq	no_frame		@ we have no stack frames
+
+tst	r1, #0x10		@ 26 or 32-bit mode?
+moveq	mask, #0xfc000003
+movne	mask, #0		@ mask for 32-bit
+
+/*
+ * Switches the current frame to be the frame for dump_stack.
+ */
+		add	frame, sp, #24		@ switch to false frame
+for_each_frame:	tst	frame, mask		@ Check for address exceptions
+		bne	no_frame
+
+/*
+ * sv_fp is the stack frame with the locals for the current considered
+ * function.
+ *
+ * sv_pc is the saved lr frame the frame above. This is a pointer to a
+ * code address within the current considered function, but
+ * it is not the function start. This value gets updated to be
+ * the function start later if it is possible.
+ */
+1001:		ldr	sv_pc, [frame, #4]	@ get saved 'pc'
+1002:		ldr	sv_fp, [frame, #0]	@ get saved fp
+
+		teq	sv_fp, mask		@ make sure next frame exists
+		beq	no_frame
+
+/*
+ * sv_lr is the lr from the function that called the current function. This
+ * is a pointer to a code address in the current function's caller.
+ * sv_lr-4 is the instruction used to call the current function.
+ *
+ * This sv_lr can be used to calculate the function start if the function
+ * was called using a bl instruction. If the function start
+ * can be recovered sv_pc is overwritten with the function start.
+ *
+ * If the current function was called using a function pointer we cannot
+ * recover the function start and instead continue with sv_pc as
+ * an arbitrary value within the current function. If this is the case
+ * we cannot print registers for the current function, but the stacktrace
+ * is still printed properly.
+ */
+1003:		ldr	sv_lr, [sv_fp, #4]	@ get saved lr from next frame
+
+		ldr	r0, [sv_lr, #-4]	@ get call instruction
+		ldr	r3, .Lopcode+4
+		and	r2, r3, r0		@ is this a bl call
+		teq	r2, r3
+		bne	finished_setup		@ give up if it's not
+		and	r0, #0xffffff		@ get call offset 24-bit int
+		lsl	r0, r0, #8		@ sign extend offset
+		asr	r0, r0, #8
+		ldr	sv_pc, [sv_fp, #4]	@ get lr address
+		add	sv_pc, sv_pc, #-4	@ get call instruction address
+		add	sv_pc, sv_pc, #8	@ take care of prefetch
+		add	sv_pc, sv_pc, r0, lsl #2@ find function start
+
+finished_setup:
+
+		bic	sv_pc, sv_pc, mask	@ mask PC/LR for the mode
+
+/*
+ * Print the function (sv_pc) and where it was called
+ * from (sv_lr).
+ */
+1004:		mov	r0, sv_pc
+
+		mov	r1, sv_lr
+		mov	r2, frame
+		bic	r1, r1, mask		@ mask PC/LR for the mode
+		bl	dump_backtrace_entry
+
+/*
+ * Test if the function start is a stmfd instruction
+ * to determine which registers were stored in the function
+ * prologue.
+ *
+ * If we could not recover the sv_pc because we were called through
+ * a function pointer the comparison will fail and no registers
+ * will print.
+ */
+1005:		ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, lr}
+		ldr	r3, .Lopcode		@ instruction exists,
+		teq	r3, r1, lsr #11
+		ldr	r0, [frame]		@ locals are stored in
+						@ the preceding frame
+		subeq	r0, r0, #4
+		bleq	dump_backtrace_stm	@ dump saved registers
+
+/*
+ * If we are out of frames or if the next frame is invalid.
+ */
+		teq	sv_fp, #0		@ zero saved fp means
+		beq	no_frame		@ no further frames
+
+		cmp	sv_fp, frame		@ next frame must be
+		mov	frame, sv_fp		@ above the current frame
+		bhi	for_each_frame
+
+1006:		adr	r0, .Lbad
+		mov	r1, frame
+		bl	printk
+no_frame:	ldmfd	sp!, {r4 - r9, fp, pc}
+ENDPROC(c_backtrace)
+		.pushsection __ex_table,"a"
+		.align	3
+		.long	1001b, 1006b
+		.long	1002b, 1006b
+		.long	1003b, 1006b
+		.long	1004b, 1006b
+		.long   1005b, 1006b
+		.popsection
+
+.Lbad:		.asciz	"Backtrace aborted due to bad frame pointer <%p>\n"
+		.align
+.Lopcode:	.word	0xe92d4800 >> 11	@ stmfd sp!, {... fp, lr}
+		.word	0x0b000000		@ bl if these bits are set
+
+#endif
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
