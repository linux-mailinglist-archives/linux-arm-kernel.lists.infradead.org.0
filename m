Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21CC160E9D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:32:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SCo7CVpHbL6ZiumIvlxhlbeKclQjrgWkS8nDZv4iKVA=; b=CWJp7gQNs92xgGbjYQdocV05MA
	URmvPSuWE6xM3EDZb10WC6qoAbm+iBv9JilQqgquYWqSuKAId7z/xbDs4DP1VLl3ZL73Q/ezuh+K0
	JglQ7MrW3XY1+UNLk5ovWvxHUQMPnYpfNtWsLjkdD0Wjr1NwdGRcGXoH5jVnLhkghxOh2nZqXJZQL
	hYrNAAcWdqekifXwLVoeSqBB3IWdQQ1eXavzk+Jb90zWCNYSAwx9D0DDLizFoXv7PyIlLznYrwqTM
	CpgRTsMSx3n0Ib8txeHlxfV5ZrPh8F3D4OrKneOXcDeRua4mp20Dgne/Ax31nSqLC5eGYdOfBBplu
	/O0ptBoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cla-0002eO-7s; Mon, 17 Feb 2020 09:32:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ciI-0006b6-H0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:29:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 000A1328;
 Mon, 17 Feb 2020 01:29:13 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BD5DF3F6CF;
 Mon, 17 Feb 2020 01:29:09 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 16/17] arm64: compile the kernel with ptrauth return
 address signing
Date: Mon, 17 Feb 2020 14:57:47 +0530
Message-Id: <1581931668-11559-17-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_012914_679883_2FBA640B 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kristina Martsenko <kristina.martsenko@arm.com>

Compile all functions with two ptrauth instructions: PACIASP in the
prologue to sign the return address, and AUTIASP in the epilogue to
authenticate the return address (from the stack). If authentication
fails, the return will cause an instruction abort to be taken, followed
by an oops and killing the task.

This should help protect the kernel against attacks using
return-oriented programming. As ptrauth protects the return address, it
can also serve as a replacement for CONFIG_STACKPROTECTOR, although note
that it does not protect other parts of the stack.

The new instructions are in the HINT encoding space, so on a system
without ptrauth they execute as NOPs.

CONFIG_ARM64_PTR_AUTH now not only enables ptrauth for userspace and KVM
guests, but also automatically builds the kernel with ptrauth
instructions if the compiler supports it. If there is no compiler
support, we do not warn that the kernel was built without ptrauth
instructions.

GCC 7 and 8 support the -msign-return-address option, while GCC 9
deprecates that option and replaces it with -mbranch-protection. Support
both options.

Clang uses an external assembler hence this patch makes sure that the
correct parameters (-march=armv8.3-a) are passed down to help it recognize
the ptrauth instructions. This option is not used for GNU toolchain.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Co-developed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
[Amit: Cover leaf function, comments]
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 arch/arm64/Kconfig  | 20 +++++++++++++++++++-
 arch/arm64/Makefile | 11 +++++++++++
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 115ceea..0f3ea01 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1499,6 +1499,7 @@ config ARM64_PTR_AUTH
 	bool "Enable support for pointer authentication"
 	default y
 	depends on !KVM || ARM64_VHE
+	depends on (CC_HAS_SIGN_RETURN_ADDRESS || CC_HAS_BRANCH_PROT_PAC_RET) && AS_HAS_PAC
 	help
 	  Pointer authentication (part of the ARMv8.3 Extensions) provides
 	  instructions for signing and authenticating pointers against secret
@@ -1506,11 +1507,17 @@ config ARM64_PTR_AUTH
 	  and other attacks.
 
 	  This option enables these instructions at EL0 (i.e. for userspace).
-
 	  Choosing this option will cause the kernel to initialise secret keys
 	  for each process at exec() time, with these keys being
 	  context-switched along with the process.
 
+	  If the compiler supports the -mbranch-protection or
+	  -msign-return-address flag (e.g. GCC 7 or later), then this option
+	  will also cause the kernel itself to be compiled with return address
+	  protection. In this case, and if the target hardware is known to
+	  support pointer authentication, then CONFIG_STACKPROTECTOR can be
+	  disabled with minimal loss of protection.
+
 	  The feature is detected at runtime. If the feature is not present in
 	  hardware it will not be advertised to userspace/KVM guest nor will it
 	  be enabled. However, KVM guest also require VHE mode and hence
@@ -1522,6 +1529,17 @@ config ARM64_PTR_AUTH
 	  but with the feature disabled. On such a system, this option should
 	  not be selected.
 
+config CC_HAS_BRANCH_PROT_PAC_RET
+	# GCC 9 or later, clang 8 or later
+	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
+
+config CC_HAS_SIGN_RETURN_ADDRESS
+	# GCC 7, 8
+	def_bool $(cc-option,-msign-return-address=all)
+
+config AS_HAS_PAC
+	def_bool $(as-option,-Wa$(comma)-march=armv8.3-a)
+
 endmenu
 
 menu "ARMv8.5 architectural features"
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index dca1a97..ce5bdeb 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -65,6 +65,17 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
+branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
+branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
+# -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the compiler
+# to generate them and consequently to break the single image contract we pass it
+# only to the assembler when clang is selected as a compiler. For the GNU toolchain
+# this option is not used.
+branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
+KBUILD_CFLAGS += $(branch-prot-flags-y)
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
