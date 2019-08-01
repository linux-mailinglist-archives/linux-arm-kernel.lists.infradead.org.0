Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E07E7E642
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 01:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Adat9qkY26uEULc6Eyebzm4e2pPlEarabkPtyg+jRy0=; b=Esn2Yk4Y++7bLk
	sokBG+0kyXZi9Mh0k2noKwoGACnyqAxUc+zhPEGOIsdIlfzC7Blwsxxkbq+JqEvxhqiQQN58zxIHi
	/eBS6W2GvjSi4ISg+sng703LKbq8AE8IC87ek22bDh6xl5gdR2pqPvLYvBeaR3niF457jxaFALsCN
	p1hNACH+gJoGMQ+6moyU3kzH1KhM6MWqzKbEsd3qvfPmmxnNnYR3o6jXcGeqMM5MBmpciI2DVtsE0
	Bt4KEYDOPuifSzPM29AIvW4QIqBV27Uty7UzoTe20k6wmLsltXgtsz6f79wf5S1yCbhLIQ9ReFwOi
	KKLo1TqlRUIwsxqTGaeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKDy-0004o2-GU; Thu, 01 Aug 2019 23:11:06 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKDr-0004nO-L1
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 23:11:01 +0000
Received: by mail-qt1-x849.google.com with SMTP id o16so66146428qtj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 16:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=ffo0BEX4jn42Yj5bUFNrkZDBWd6yUTSShv6ZHrslX3E=;
 b=mNeODb68KyfrlgjqNv33Xg/FSlCCmow4/hK2vhdiK+OD+CTeUXLyspZ5BtEPOvKIc6
 /dJSoM9T6cBhwiYd+NMaegQx90ASLf/iCJxcuu8GRVFkfTTxd6bmcTkFV18N/j181Kgy
 EIUcgyhm4T007BOE4bTLbGwWSguEX2ltfDJs5JMmCbofOQn7nIPl7ORwp/RWD+YbSxwB
 Q5I5yrCP0UTGwD7bvVL9jTiza3kAmRgxusu6MnaRMvQgdLyAQpQRD+F9OcOE6i5bnYZE
 4IRiFAysIAsmi95HXRBmf7/o/w3m0dV8sczmAK36Y8Y/ea0VecIsgdzxRVtTO1ShX5R9
 X16g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=ffo0BEX4jn42Yj5bUFNrkZDBWd6yUTSShv6ZHrslX3E=;
 b=BZrsuENFKrrjZufGf/1MrsQlRVqh/c1+wzsXMzNiMCNcYiqDcyu6yAqJqTu4rSJ8qo
 qbNixK54dV0rqoEWObmwc+Bn0QF7jIjkamb6kX6T895IYXnn7GfBbrIcgAAFUQynvOvr
 zZRYAhRqIEyZfF3o9amduefilBkHQismEaJQ67gF1Jkp02Ruc2E5pYLXj4PDOm6cF1+E
 qfufTfWflUO5tpxUMJulekVfqBBBAmu/0/Dvxs4ufnA2zUneNVnrFZ+1aWf7+iklFT6C
 f25bfGt0jWU7QuowR56tFdBbzqM+ipVOfwPq+J1WAH5w7+nAMXHnnO5YWkwT1eLvs1kL
 LzZg==
X-Gm-Message-State: APjAAAWXO199mKUVf5bJZ3AZU4DjCyA4wd6Ue6/3lTPu6uOCr8S066/3
 xUsj7Tvbc99J8i81LKrzE9rIYwt6sQ==
X-Google-Smtp-Source: APXvYqx3/2L7Ue39VqTWAOtf5PC9qB/K8/QDnKZdPk8vOdoQ7Y9a9as1I3budbZKzaojusFLgDXZORBsaA==
X-Received: by 2002:ac8:524a:: with SMTP id y10mr94383841qtn.100.1564701057204; 
 Thu, 01 Aug 2019 16:10:57 -0700 (PDT)
Date: Thu,  1 Aug 2019 16:10:46 -0700
Message-Id: <20190801231046.105022-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [RFC PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
From: Nathan Huckleberry <nhuck@google.com>
To: linux@armlinux.org.uk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161059_723495_658599EA 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux@googlegroups.com, Tri Vo <trong@google.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The stackframe setup when compiled with clang is different.
Since the stack unwinder expects the gcc stackframe setup it
fails to print backtraces. This patch adds support for the
clang stackframe setup.

Cc: clang-built-linux@googlegroups.com
Suggested-by: Tri Vo <trong@google.com>
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 arch/arm/Kconfig.debug   |   4 +-
 arch/arm/Makefile        |   2 +-
 arch/arm/lib/backtrace.S | 134 ++++++++++++++++++++++++++++++++++++---
 3 files changed, 128 insertions(+), 12 deletions(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 85710e078afb..92fca7463e21 100644
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
@@ -1872,7 +1872,7 @@ config DEBUG_UNCOMPRESS
 	  When this option is set, the selected DEBUG_LL output method
 	  will be re-used for normal decompressor output on multiplatform
 	  kernels.
-	  
+
 
 config UNCOMPRESS_INCLUDE
 	string
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bc..a593d9c4e18a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -36,7 +36,7 @@ KBUILD_CFLAGS	+= $(call cc-option,-mno-unaligned-access)
 endif
 
 ifeq ($(CONFIG_FRAME_POINTER),y)
-KBUILD_CFLAGS	+=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
+KBUILD_CFLAGS	+=-fno-omit-frame-pointer $(call cc-option,-mapcs,) $(call cc-option,-mno-sched-prolog,)
 endif
 
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
index 1d5210eb4776..fd64eec9f6ae 100644
--- a/arch/arm/lib/backtrace.S
+++ b/arch/arm/lib/backtrace.S
@@ -14,10 +14,7 @@
 @ fp is 0 or stack frame
 
 #define frame	r4
-#define sv_fp	r5
-#define sv_pc	r6
 #define mask	r7
-#define offset	r8
 
 ENTRY(c_backtrace)
 
@@ -25,7 +22,8 @@ ENTRY(c_backtrace)
 		ret	lr
 ENDPROC(c_backtrace)
 #else
-		stmfd	sp!, {r4 - r8, lr}	@ Save an extra register so we have a location...
+		stmfd   sp!, {r4 - r8, fp, lr}	@ Save an extra register
+						@ so we have a location..
 		movs	frame, r0		@ if frame pointer is zero
 		beq	no_frame		@ we have no stack frames
 
@@ -35,11 +33,119 @@ ENDPROC(c_backtrace)
  THUMB(		orreq	mask, #0x03		)
 		movne	mask, #0		@ mask for 32-bit
 
-1:		stmfd	sp!, {pc}		@ calculate offset of PC stored
-		ldr	r0, [sp], #4		@ by stmfd for this CPU
-		adr	r1, 1b
-		sub	offset, r0, r1
 
+#if defined(CONFIG_CC_IS_CLANG)
+/*
+ * Clang does not store pc or sp in function prologues
+ * 		so we don't know exactly where the function
+ * 		starts.
+ * We can treat the current frame's lr as the saved pc and the
+ * 		preceding frame's lr as the lr, but we can't
+ * 		trace the most recent call.
+ * Inserting a false stack frame allows us to reference the
+ * 		function called last in the stacktrace.
+ * If the call instruction was a bl we can look at the callers
+ * 		branch instruction to calculate the saved pc.
+ * We can recover the pc in most cases, but in cases such as
+ * 		calling function pointers we cannot. In this
+ * 		case, default to using the lr. This will be
+ * 		some address in the function, but will not
+ * 		be the function start.
+ * Unfortunately due to the stack frame layout we can't dump
+ *              r0 - r3, but these are less frequently saved.
+ *
+ * Stack frame layout:
+ *             <larger addresses>
+ *             saved lr
+ *    frame => saved fp
+ *             optionally saved caller registers (r4 - r10)
+ *             optionally saved arguments (r0 - r3)
+ *             <top of stack frame>
+ *             <smaller addressses>
+ *
+ * Functions start with the following code sequence:
+ * corrected pc =>  stmfd sp!, {..., fp, lr}
+ *		    add fp, sp, #x
+ *		    stmfd sp!, {r0 - r3} (optional)
+ */
+#define sv_fp	r5
+#define sv_pc	r6
+#define sv_lr   r8
+		add     frame, sp, #20          @ switch to false frame
+for_each_frame:	tst	frame, mask		@ Check for address exceptions
+		bne	no_frame
+
+1001:		ldr	sv_pc, [frame, #4]	@ get saved 'pc'
+1002:		ldr	sv_fp, [frame, #0]	@ get saved fp
+
+		teq     sv_fp, #0               @ make sure next frame exists
+		beq     no_frame
+
+1003:		ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
+
+		//try to find function start
+		ldr     r0, [sv_lr, #-4]        @ get call instruction
+		ldr     r3, .Ldsi+8
+		and     r2, r3, r0              @ is this a bl call
+		teq     r2, r3
+		bne     finished_setup          @ give up if it's not
+		and     r0, #0xffffff           @ get call offset 24-bit int
+		lsl     r0, r0, #8              @ sign extend offset
+		asr     r0, r0, #8
+		ldr     sv_pc, [sv_fp, #4]      @ get lr address
+		add     sv_pc, sv_pc, #-4	@ get call instruction address
+		add     sv_pc, sv_pc, #8        @ take care of prefetch
+		add     sv_pc, sv_pc, r0, lsl #2 @ find function start
+		b       finished_setup
+
+finished_setup:
+
+		bic	sv_pc, sv_pc, mask	@ mask PC/LR for the mode
+
+1004:		mov     r0, sv_pc
+
+		mov     r1, sv_lr
+		mov	r2, frame
+		bic	r1, r1, mask		@ mask PC/LR for the mode
+		bl	dump_backtrace_entry
+
+1005:		ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, lr}
+		ldr	r3, .Ldsi		@ instruction exists,
+		teq	r3, r1, lsr #11
+		ldr     r0, [frame]             @ locals are stored in
+						@ the preceding frame
+		subeq	r0, r0, #4
+		bleq	dump_backtrace_stm	@ dump saved registers
+
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
+no_frame:	ldmfd	sp!, {r4 - r8, fp, pc}
+ENDPROC(c_backtrace)
+		.pushsection __ex_table,"a"
+		.align	3
+		.long	1001b, 1006b
+		.long	1002b, 1006b
+		.long	1003b, 1006b
+		.long	1004b, 1006b
+		.popsection
+
+.Lbad:		.asciz	"Backtrace aborted due to bad frame pointer <%p>\n"
+		.align
+.Ldsi:		.word	0xe92d4800 >> 11	@ stmfd sp!, {... fp, lr}
+		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
+		.word   0x0b000000              @ bl if these bits are set
+
+ENDPROC(c_backtrace)
+
+#else
 /*
  * Stack frame layout:
  *             optionally saved caller registers (r4 - r10)
@@ -55,6 +161,15 @@ ENDPROC(c_backtrace)
  *                  stmfd sp!, {r0 - r3} (optional)
  * corrected pc =>  stmfd sp!, {..., fp, ip, lr, pc}
  */
+#define sv_fp	r5
+#define sv_pc	r6
+#define offset	r8
+
+1:		stmfd	sp!, {pc}		@ calculate offset of PC stored
+		ldr	r0, [sp], #4		@ by stmfd for this CPU
+		adr	r1, 1b
+		sub	offset, r0, r1
+
 for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		bne	no_frame
 
@@ -98,7 +213,7 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 1006:		adr	r0, .Lbad
 		mov	r1, frame
 		bl	printk
-no_frame:	ldmfd	sp!, {r4 - r8, pc}
+no_frame:	ldmfd	sp!, {r4 - r8, fp, pc}
 ENDPROC(c_backtrace)
 		
 		.pushsection __ex_table,"a"
@@ -115,3 +230,4 @@ ENDPROC(c_backtrace)
 		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
 
 #endif
+#endif
-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
