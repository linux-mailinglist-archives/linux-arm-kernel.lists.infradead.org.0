Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F7C1AFA15
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 14:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKPoim2KBnX/wqFVclI1YGzaOEhhorfcvk+MctYhgdo=; b=qleB3wP0xlMHT6
	sSeDvMbljFl/8kikHSjzNInvW+Oq9Q6xvD79Etdl+/OP9l3/bHAHHgUIwxt8CoG65wkLwrL8UIsc8
	K03kyUTMI8bfN8nHgCLuVsGhxHYlOQnNlYns0HUmHu17KaoIPXUoQkG6DtyJy5PvL09bLKkk7nj41
	z6JHMiARS1/Q+EyWKn3qqAoyHPJXUIpatxnFHWh7ihy/+PrxcNdZWH8zWySpTYZ0VXaZYvT3DfEMt
	zaAnVb8IV3GfpJ/StVwCOzjSmgxN8pgV83p9ZZRReDpDCcdJEAD8okhM7A42NjkEKOoNinGyGhQab
	DmVa2+pIujBu7FEdOUcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9CA-0003OE-OD; Sun, 19 Apr 2020 12:37:10 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9B4-0002av-RO
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 12:36:06 +0000
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 114375C9AEE;
 Sun, 19 Apr 2020 14:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1587299760;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=afph382MGIZHOV/SgbQAXZBFlcKW7h50wb1w1sw4fu0=;
 b=H2WCPhp5YNS3xUqqSeOZokvdIiez3kTU74UFIjRAFTaLyxlCfwxIGL1IVLq4x8T73hkKBb
 tflE1k+DCIaPObAw6SuQHKDkPWWrJ5P8M/skZgMItB/Z+E9cFkZrMU23UQXMyG6OYL63nI
 Ej0Y1Q3vnSBF1uv0TdLI826poGSF4vY=
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Subject: [PATCH v2 3/3] ARM: use VFP assembler mnemonics if available
Date: Sun, 19 Apr 2020 14:35:51 +0200
Message-Id: <b897ffa09d664620835c116066f0382aaeae9910.1587299429.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1587299429.git.stefan@agner.ch>
References: <cover.1587299429.git.stefan@agner.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_053603_178909_00B3D9BA 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: clang-built-linux@googlegroups.com, arnd@arndb.de,
 ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 jiancai@google.com, yamada.masahiro@socionext.com, manojgupta@google.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang's integrated assembler does not allow to to use the mcr
instruction to access floating point co-processor registers:
arch/arm/vfp/vfpmodule.c:342:2: error: invalid operand for instruction
        fmxr(FPEXC, fpexc & ~(FPEXC_EX|FPEXC_DEX|FPEXC_FP2V|FPEXC_VV|FPEXC_TRAP_MASK));
        ^
arch/arm/vfp/vfpinstr.h:79:6: note: expanded from macro 'fmxr'
        asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vfp_ ", %0" \
            ^
<inline asm>:1:6: note: instantiated into assembly here
        mcr p10, 7, r0, cr8, cr0, 0 @ fmxr      FPEXC, r0
            ^

Ideally we would replace this code with the unified assembler language
mnemonics vmrs/vmsr on call sites along with .fpu assembler directives.
The GNU assembler supports the .fpu directive at least since 2.17 (when
documentation has been added). Since Linux requires binutils 2.21 it is
safe to use .fpu directive. However, binutils does not allow to use
FPINST or FPINST2 as an argument to vmrs/vmsr instructions up to
binutils 2.24 (see binutils commit 16d02dc907c5):
arch/arm/vfp/vfphw.S: Assembler messages:
arch/arm/vfp/vfphw.S:162: Error: operand 0 must be FPSID or FPSCR pr FPEXC -- `vmsr FPINST,r6'
arch/arm/vfp/vfphw.S:165: Error: operand 0 must be FPSID or FPSCR pr FPEXC -- `vmsr FPINST2,r8'
arch/arm/vfp/vfphw.S:235: Error: operand 1 must be a VFP extension System Register -- `vmrs r3,FPINST'
arch/arm/vfp/vfphw.S:238: Error: operand 1 must be a VFP extension System Register -- `vmrs r12,FPINST2'

Use as-instr in Kconfig to check if FPINST/FPINST2 can be used. If they
can be used make use of .fpu directives and UAL VFP mnemonics for
register access.

This allows to build vfpmodule.c with Clang and its integrated assembler.

Link: https://github.com/ClangBuiltLinux/linux/issues/905
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
Changes in v2:
- Check assembler capabilities in Kconfig instead of Makefile

 arch/arm/Kconfig                 |  2 ++
 arch/arm/Kconfig.assembler       |  6 ++++++
 arch/arm/include/asm/vfp.h       |  2 ++
 arch/arm/include/asm/vfpmacros.h | 12 +++++++++++-
 arch/arm/vfp/vfphw.S             |  1 +
 arch/arm/vfp/vfpinstr.h          | 23 +++++++++++++++++++----
 6 files changed, 41 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/Kconfig.assembler

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 66a04f6f4775..49564cc32688 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -2090,3 +2090,5 @@ source "drivers/firmware/Kconfig"
 if CRYPTO
 source "arch/arm/crypto/Kconfig"
 endif
+
+source "arch/arm/Kconfig.assembler"
diff --git a/arch/arm/Kconfig.assembler b/arch/arm/Kconfig.assembler
new file mode 100644
index 000000000000..5cb31aae1188
--- /dev/null
+++ b/arch/arm/Kconfig.assembler
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+
+config AS_VFP_VMRS_FPINST
+	def_bool $(as-instr,.fpu vfpv2\nvmrs r0$(comma)FPINST)
+	help
+	  Supported by binutils >= 2.24 and LLVM integrated assembler.
diff --git a/arch/arm/include/asm/vfp.h b/arch/arm/include/asm/vfp.h
index 7157d2a30a49..19928bfb4f9c 100644
--- a/arch/arm/include/asm/vfp.h
+++ b/arch/arm/include/asm/vfp.h
@@ -9,6 +9,7 @@
 #ifndef __ASM_VFP_H
 #define __ASM_VFP_H
 
+#ifndef CONFIG_AS_VFP_VMRS_FPINST
 #define FPSID			cr0
 #define FPSCR			cr1
 #define MVFR1			cr6
@@ -16,6 +17,7 @@
 #define FPEXC			cr8
 #define FPINST			cr9
 #define FPINST2			cr10
+#endif
 
 /* FPSID bits */
 #define FPSID_IMPLEMENTER_BIT	(24)
diff --git a/arch/arm/include/asm/vfpmacros.h b/arch/arm/include/asm/vfpmacros.h
index 947ee5395e1f..ba0d4cb5377e 100644
--- a/arch/arm/include/asm/vfpmacros.h
+++ b/arch/arm/include/asm/vfpmacros.h
@@ -8,7 +8,16 @@
 
 #include <asm/vfp.h>
 
-@ Macros to allow building with old toolkits (with no VFP support)
+#ifdef CONFIG_AS_VFP_VMRS_FPINST
+	.macro	VFPFMRX, rd, sysreg, cond
+	vmrs\cond	\rd, \sysreg
+	.endm
+
+	.macro	VFPFMXR, sysreg, rd, cond
+	vmsr\cond	\sysreg, \rd
+	.endm
+#else
+	@ Macros to allow building with old toolkits (with no VFP support)
 	.macro	VFPFMRX, rd, sysreg, cond
 	MRC\cond	p10, 7, \rd, \sysreg, cr0, 0	@ FMRX	\rd, \sysreg
 	.endm
@@ -16,6 +25,7 @@
 	.macro	VFPFMXR, sysreg, rd, cond
 	MCR\cond	p10, 7, \rd, \sysreg, cr0, 0	@ FMXR	\sysreg, \rd
 	.endm
+#endif
 
 	@ read all the working registers back into the VFP
 	.macro	VFPFLDMIA, base, tmp
diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
index e214007a20a2..90e5659827c7 100644
--- a/arch/arm/vfp/vfphw.S
+++ b/arch/arm/vfp/vfphw.S
@@ -78,6 +78,7 @@
 ENTRY(vfp_support_entry)
 	DBGSTR3	"instr %08x pc %08x state %p", r0, r2, r10
 
+	.fpu	vfpv2
 	ldr	r3, [sp, #S_PSR]	@ Neither lazy restore nor FP exceptions
 	and	r3, r3, #MODE_MASK	@ are supported in kernel mode
 	teq	r3, #USR_MODE
diff --git a/arch/arm/vfp/vfpinstr.h b/arch/arm/vfp/vfpinstr.h
index 38dc154e39ff..3c7938fd40aa 100644
--- a/arch/arm/vfp/vfpinstr.h
+++ b/arch/arm/vfp/vfpinstr.h
@@ -62,10 +62,23 @@
 #define FPSCR_C (1 << 29)
 #define FPSCR_V	(1 << 28)
 
-/*
- * Since we aren't building with -mfpu=vfp, we need to code
- * these instructions using their MRC/MCR equivalents.
- */
+#ifdef CONFIG_AS_VFP_VMRS_FPINST
+
+#define fmrx(_vfp_) ({			\
+	u32 __v;			\
+	asm(".fpu	vfpv2\n"	\
+	    "vmrs	%0, " #_vfp_	\
+	    : "=r" (__v) : : "cc");	\
+	__v;				\
+ })
+
+#define fmxr(_vfp_,_var_)		\
+	asm(".fpu	vfpv2\n"	\
+	    "vmsr	" #_vfp_ ", %0"	\
+	   : : "r" (_var_) : "cc")
+
+#else
+
 #define vfpreg(_vfp_) #_vfp_
 
 #define fmrx(_vfp_) ({			\
@@ -79,6 +92,8 @@
 	asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr	" #_vfp_ ", %0"	\
 	   : : "r" (_var_) : "cc")
 
+#endif
+
 u32 vfp_single_cpdo(u32 inst, u32 fpscr);
 u32 vfp_single_cprt(u32 inst, u32 fpscr, struct pt_regs *regs);
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
