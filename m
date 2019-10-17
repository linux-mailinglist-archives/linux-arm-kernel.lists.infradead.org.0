Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F102ADA718
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HFnUfm04yYhpWcSZX8CKU6gsyqv/VdQgOdSQGuDdH2w=; b=brLA1cMW46WcjKKSFrWlak2lG1
	5crXw6JqYWuwGpYdAh0+oFbVHF2zBnL8prMk4Z5gquaIgOAMQH8ifMSx4i+a+3/wK41tj95MysEq0
	FXv45WbQHU4bU08/5S/NASo66om3urxX/MOpZq51YIbL9+v2Eym24D4xkAjE0TBtXXGmQew4JgEEN
	/mMia5uAkDPUJ3SIgKYZRm0PC40EDHFTf60jstvrS9vhu4MCPbTxKWqeulKF0Utf2tufn95gZMgnz
	4LMsRnKM8wiCICHtglRFTc+shYV2PCC1Pe8Dy1LzfYQcSjo+/gHGp+bKhA2RZr1FVCkOtNM3rFCzc
	1+QN8izA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0zG-0004xm-Vs; Thu, 17 Oct 2019 08:18:23 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0wS-000256-65
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 08:15:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B771428;
 Thu, 17 Oct 2019 01:15:25 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1D0E63F6C4;
 Thu, 17 Oct 2019 01:15:21 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 11/11] arm64: compile the kernel with ptrauth return address
 signing
Date: Thu, 17 Oct 2019 13:44:25 +0530
Message-Id: <1571300065-10236-12-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_011528_461741_832A4972 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
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

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since RFC v2:
 - Removed function attribute definition [Suzuki]
 - Added comments about GCC versions to Kconfig symbols [Kees]
 - Added a note in Kconfig (and the commit message) about STACKPROTECTOR
 - Changed GCC option to protect all functions with ptrauth and just non-leaf.

 arch/arm64/Kconfig  | 16 +++++++++++++++-
 arch/arm64/Makefile |  6 ++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 8e86f6a..f83db93 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1399,11 +1399,17 @@ config ARM64_PTR_AUTH
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
@@ -1413,6 +1419,14 @@ config ARM64_PTR_AUTH
 	  then the secondary CPU will be offlined. On such a system, this
 	  option should not be selected.
 
+config CC_HAS_BRANCH_PROT_PAC_RET
+	# GCC 9 or later
+	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
+
+config CC_HAS_SIGN_RETURN_ADDRESS
+	# GCC 7, 8
+	def_bool $(cc-option,-msign-return-address=all)
+
 endmenu
 
 config ARM64_SVE
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 84a3d50..4dbe86a 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -88,6 +88,12 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
+pac-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
+pac-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
+KBUILD_CFLAGS += $(pac-flags-y)
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
