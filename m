Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DD312004E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=szUHKxwF+hRE9A4K4NzOIb+iAsACCHACM2VGF7Rh28g=; b=tGrretohCgSVutAqNJYmosW9T7
	mJzgESp7zZ2aqfyrdYgZCu5p8Cij8gbZ+2LSVcDtgnnlLa+hI7AB4VJimymuOBv3whZl6Xwc98Y7t
	8QZaDnAuD2fpItjeTrKUVLqJL2f/sUNCu4tz9GiXFus7auWWeC4oKWwKnDjaRJbB9ho5tAosQhpIe
	239boJj71wh/MF96QkbZkuk17cQeQo9jvOsGkfddoTFmJRt6JDOSFKCdBctWgeaUweNmgiuNKyZOf
	GLdxwoSaKrxcXesXVVKZKAqI5cTlk67ljFaj7+hn+xnfLbrNo7vdiOlemtCGoLx10Suwo66LQsZAx
	zcmQ03rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igm7p-0001Z1-2a; Mon, 16 Dec 2019 08:53:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igm3Y-0004zR-C3
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:48:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5826F1007;
 Mon, 16 Dec 2019 00:48:43 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5DD7E3F6CF;
 Mon, 16 Dec 2019 00:51:54 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 15/16] arm64: compile the kernel with ptrauth return
 address signing
Date: Mon, 16 Dec 2019 14:17:17 +0530
Message-Id: <1576486038-9899-16-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_004844_654080_0B6ECF46 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <Mark.Brown@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
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
Reviewed-by: Kees Cook <keescook@chromium.org>
Co-developed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
[Amit: Cover leaf function, comments]
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Change since last version:
 * Introduced clang compiler support by passing flag -march=armv8.3-a to
   external assembler. There were some changes required for dwarfs
   `.cfi_negate_ra_state' in GCC toolchain. They are taken care and will
   be present in newer GCC toochains with backward compatibility.
   The issue reported by Mark Brown [1] is now fixed.

[1]: http://lists.infradead.org/pipermail/linux-arm-kernel/2019-November/696162.html

 arch/arm64/Kconfig  | 21 ++++++++++++++++++++-
 arch/arm64/Makefile | 11 +++++++++++
 2 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 06b5025..f0798b7 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1466,6 +1466,7 @@ config ARM64_PTR_AUTH
 	bool "Enable support for pointer authentication"
 	default y
 	depends on !KVM || ARM64_VHE
+	depends on GCC_VERSION >= 70000 || CLANG_VERSION >= 80000
 	help
 	  Pointer authentication (part of the ARMv8.3 Extensions) provides
 	  instructions for signing and authenticating pointers against secret
@@ -1473,11 +1474,17 @@ config ARM64_PTR_AUTH
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
@@ -1488,6 +1495,18 @@ config ARM64_PTR_AUTH
 	  have address auth and the late CPU has then system panic will occur.
 	  On such a system, this option should not be selected.
 
+config CC_HAS_BRANCH_PROT_PAC_RET
+	# GCC 9 or later, clang 8 or later
+	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
+
+config CC_HAS_SIGN_RETURN_ADDRESS
+	# GCC 7, 8
+	def_bool $(cc-option,-msign-return-address=all)
+
+config AS_HAS_PAC
+	def_bool $(as-option,-Wa,-march=armv8.3-a)
+	depends on CC_IS_CLANG
+
 endmenu
 
 config ARM64_SVE
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 1fbe24d..6a1da59 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -72,6 +72,17 @@ stack_protector_prepare: prepare0
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
