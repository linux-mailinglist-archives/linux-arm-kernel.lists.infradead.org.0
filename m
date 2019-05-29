Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDB82E4FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 21:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L3etFPGknbXRH6bJFsmMrWGnprqVFG5UzgxRtxwzdy4=; b=K0jsmDInGnJaYMbtJmY3z9AMoG
	4wDTeJGdB9B8iBWReM8zcTDBRw8TzMHaIIqdZ19PxBLUNOgqKfPDQdF3xMoVNEHXE0CWqsw0wsnma
	N5RqiXC0t+b+xzQYs/NXt+4gtruDftFwfY7npzw/4kuLgZJERdbahKQqovRqEEUYw/0xVaCRFQntm
	ZG+uqmrvrbZxe3CLfjSWKtJRTZzeG8U36SAFhKZTHrKZWmiOvMQcGI9OPtGQAseByOLfPlYepS++4
	nfp52BTbdt1R6+hBYVu+bhDE/3XHz1qqQBYSEBP+Ky/knPJQmw1Nu7dNHNxbSTp/sNojQzEj8cBfv
	6DQ0e2yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW3uY-00026z-Dn; Wed, 29 May 2019 19:06:54 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW3sg-0007m0-Tb
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 19:05:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9369115A2;
 Wed, 29 May 2019 12:04:58 -0700 (PDT)
Received: from moonbear.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C60783F59C;
 Wed, 29 May 2019 12:04:56 -0700 (PDT)
From: Kristina Martsenko <kristina.martsenko@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC v2 7/7] arm64: compile the kernel with ptrauth return address
 signing
Date: Wed, 29 May 2019 20:03:32 +0100
Message-Id: <20190529190332.29753-8-kristina.martsenko@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190529190332.29753-1-kristina.martsenko@arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_120458_966362_B2CB6674 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compile all non-leaf functions with two ptrauth instructions: PACIASP in
the prologue to sign the return address, and AUTIASP in the epilogue to
authenticate the return address (from the stack). If authentication
fails, the return will cause an instruction abort to be taken, followed
by an oops and killing the task. This should help protect the kernel
against attacks using return-oriented programming.

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

Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
---

Changes since RFC v1:
 - Fixed support for compilers without ptrauth
 - Added support for the new -mbranch-protection option
 - Switched from protecting all functions to only protecting non-leaf functions
   (for no good reason, I have not done e.g. gadget analysis)
 - Moved __no_ptrauth definition to this patch, depending on compiler support
 - Updated the Kconfig symbol description
 - Updated the commit message

 arch/arm64/Kconfig                    | 12 +++++++++++-
 arch/arm64/Makefile                   |  6 ++++++
 arch/arm64/include/asm/pointer_auth.h |  6 ++++++
 3 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index f4c1e9b30129..3ce93d88fae1 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1295,11 +1295,15 @@ config ARM64_PTR_AUTH
 	  and other attacks.
 
 	  This option enables these instructions at EL0 (i.e. for userspace).
-
 	  Choosing this option will cause the kernel to initialise secret keys
 	  for each process at exec() time, with these keys being
 	  context-switched along with the process.
 
+	  If the compiler supports the -mbranch-protection or
+	  -msign-return-address flag (e.g. GCC 7 or later), then this option
+	  will also cause the kernel itself to be compiled with return address
+	  protection.
+
 	  The feature is detected at runtime. If the feature is not present in
 	  hardware it will not be advertised to userspace nor will it be
 	  enabled.
@@ -1308,6 +1312,12 @@ config ARM64_PTR_AUTH
 	  then the secondary CPU will be offlined. On such a system, this
 	  option should not be selected.
 
+config CC_HAS_BRANCH_PROT_PAC_RET
+	def_bool $(cc-option,-mbranch-protection=pac-ret)
+
+config CC_HAS_SIGN_RETURN_ADDRESS
+	def_bool $(cc-option,-msign-return-address=non-leaf)
+
 endmenu
 
 config ARM64_SVE
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index b025304bde46..1dfbe755b531 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -66,6 +66,12 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
+pac-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=non-leaf
+pac-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret
+KBUILD_CFLAGS += $(pac-flags-y)
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 5491c34b4dc3..3a83c40ffd8a 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -15,7 +15,13 @@
  * allows pointer authentication to be enabled/disabled within the function
  * (but leaves the function unprotected by pointer authentication).
  */
+#if defined(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET)
+#define __no_ptrauth	__attribute__((target("branch-protection=none")))
+#elif defined(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS)
+#define __no_ptrauth	__attribute__((target("sign-return-address=none")))
+#else
 #define __no_ptrauth
+#endif
 
 /*
  * Each key is a 128-bit quantity which is split across a pair of 64-bit
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
