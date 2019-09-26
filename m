Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F7DBFB0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 23:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KUkea3X4qsumHIQvo5lNThRRV/qzbq68xNgs2NbpU0w=; b=TWMRHWFM1NLkY9
	Sgbd2J0fOju/vidseEdRB7evwWJ8KSDp0wtWdPlHLl5jSo7ne5aNf9lNaHrSIs2duSPn150pC03bh
	Chu9tXgj1DkuidsaJtjL6TNwjOuFHQ56qVswsv43H14PmRbsZv44c9Rl/BVsz0mWfCif+1BIvOlkP
	9WtXxlDhE212jpyKbsyuG8eAnJb3y8hZHqvq8ykWryg1lMFvnTFxwUmgZNn1Uj/riHiUDQs8Dch/Q
	5ikBSc0V3o9Dfif0efETg5kFfEsNj1vfG38JfI1c7oPBRxhbGMJk5Jh847RlrNKJnzp8vUc7rX4K1
	xakza6chsPacdYYrpG4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDbYp-00075p-V3; Thu, 26 Sep 2019 21:44:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDbYK-0006ri-V2
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 21:43:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F5E4142F;
 Thu, 26 Sep 2019 14:43:56 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 31C7A3F739;
 Thu, 26 Sep 2019 14:43:55 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Date: Thu, 26 Sep 2019 22:43:38 +0100
Message-Id: <20190926214342.34608-2-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926214342.34608-1-vincenzo.frascino@arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_144357_085146_8FED3154 
X-CRM114-Status: GOOD (  14.24  )
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 tglx@linutronix.de, vincenzo.frascino@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As reported by Will Deacon the .config file and the generated
include/config/auto.conf can end up out of sync after a set of
commands since CONFIG_CROSS_COMPILE_COMPAT_VDSO is not updated
correctly.

The sequence can be reproduced as follows:

$ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig
[...]
$ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- menuconfig
[set CONFIG_CROSS_COMPILE_COMPAT_VDSO="arm-linux-gnueabihf-"]
$ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-

Which results in:

arch/arm64/Makefile:62: CROSS_COMPILE_COMPAT not defined or empty,
the compat vDSO will not be built

even though the compat vDSO has been built:

$ file arch/arm64/kernel/vdso32/vdso.so
arch/arm64/kernel/vdso32/vdso.so: ELF 32-bit LSB pie executable, ARM,
EABI5 version 1 (SYSV), dynamically linked,
BuildID[sha1]=c67f6c786f2d2d6f86c71f708595594aa25247f6, stripped

A similar case that involves changing the configuration parameter multiple
times can be reconducted to the same family of problems.

The reason behind it comes from the fact that the master Makefile includes
that architecture Makefile twice, once before the syncconfig and one after.
Since the synchronization of the files happens only upon syncconfig, the
architecture Makefile included before this event does not see the change in
configuration.

As a consequence of this it is not possible to handle the cross compiler
definitions inside the architecture Makefile.

Address the problem removing CONFIG_CROSS_COMPILE_COMPAT_VDSO and moving
the detection of the correct compiler into Kconfig via COMPAT_CC_IS_GCC.

As a consequence of this it is not possible anymore to set the compat
cross compiler from menuconfig but it requires to be exported via
command line.

E.g.:

$ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
CROSS_COMPILE_COMPAT=arm-linux-gnueabihf

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/Kconfig                |  5 ++++-
 arch/arm64/Makefile               | 18 +++++-------------
 arch/arm64/kernel/vdso32/Makefile |  2 --
 3 files changed, 9 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 37c610963eee..0e5beb928af5 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -110,7 +110,7 @@ config ARM64
 	select GENERIC_STRNLEN_USER
 	select GENERIC_TIME_VSYSCALL
 	select GENERIC_GETTIMEOFDAY
-	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT)
+	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT && COMPATCC_IS_ARM_GCC)
 	select HANDLE_DOMAIN_IRQ
 	select HARDIRQS_SW_RESEND
 	select HAVE_PCI
@@ -313,6 +313,9 @@ config KASAN_SHADOW_OFFSET
 	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
 	default 0xffffffffffffffff
 
+config COMPATCC_IS_ARM_GCC
+	def_bool $(success,$(COMPATCC) --version | head -n 1 | grep -q "arm-.*-gcc")
+
 source "arch/arm64/Kconfig.platforms"
 
 menu "Kernel Features"
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 84a3d502c5a5..dfa6a5cb99e4 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -53,20 +53,12 @@ $(warning Detected assembler with broken .inst; disassembly will be unreliable)
   endif
 endif
 
+COMPATCC ?= $(CROSS_COMPILE_COMPAT)gcc
+export COMPATCC
+
 ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
-  CROSS_COMPILE_COMPAT ?= $(CONFIG_CROSS_COMPILE_COMPAT_VDSO:"%"=%)
-
-  ifeq ($(CONFIG_CC_IS_CLANG), y)
-    $(warning CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built)
-  else ifeq ($(strip $(CROSS_COMPILE_COMPAT)),)
-    $(warning CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built)
-  else ifeq ($(shell which $(CROSS_COMPILE_COMPAT)gcc 2> /dev/null),)
-    $(error $(CROSS_COMPILE_COMPAT)gcc not found, check CROSS_COMPILE_COMPAT)
-  else
-    export CROSS_COMPILE_COMPAT
-    export CONFIG_COMPAT_VDSO := y
-    compat_vdso := -DCONFIG_COMPAT_VDSO=1
-  endif
+  export CONFIG_COMPAT_VDSO := y
+  compat_vdso := -DCONFIG_COMPAT_VDSO=1
 endif
 
 KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)	\
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 1fba0776ed40..19e0d3115ffe 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -8,8 +8,6 @@
 ARCH_REL_TYPE_ABS := R_ARM_JUMP_SLOT|R_ARM_GLOB_DAT|R_ARM_ABS32
 include $(srctree)/lib/vdso/Makefile
 
-COMPATCC := $(CROSS_COMPILE_COMPAT)gcc
-
 # Same as cc-*option, but using COMPATCC instead of CC
 cc32-option = $(call try-run,\
         $(COMPATCC) $(1) -c -x c /dev/null -o "$$TMP",$(1),$(2))
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
