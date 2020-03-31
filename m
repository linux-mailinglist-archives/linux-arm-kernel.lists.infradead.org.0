Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77089199F5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 21:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fwAd+jmtyw1BbB/gvnYUbXBvz2dbqqhLyf/r33pvUyM=; b=rd4t5BA5e7tjQ/
	Yd0KBxSgUE9PZWNNz4dxJCkBxwbUrR6YCMEzeMX7BDq8yKc0Q0tFPvJ1uZL+KZPqxnBABKqWB98/c
	1AAWGUMMJAADXELm7jSGoMWqr7zzGsBmskp6WwuIBeZUhfhTVay/UwI+SF1Q9FM/5cRbWcaDtdyxN
	RMqTyClBtmkEht/35vkvqyw/ycJNoxUQJv+6h9JJ2jAs6oeZ3o3CU/TezzE6ZNW376Zwe3/OELicc
	X93peOxxc55AlIPtCX87JTsIkKs5KnnZLHBzkPO6Hdv9NsOWgJ8yvGKzEVY5Zxe6SJsXGPrBrOLI9
	5AYmOMo35+yqjVArH4Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJMp3-0001ll-Jg; Tue, 31 Mar 2020 19:45:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJMos-0008Mu-6M
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 19:45:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D3D430E;
 Tue, 31 Mar 2020 12:45:02 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1C283F68F;
 Tue, 31 Mar 2020 12:45:01 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: Always force a branch protection mode when the
 compiler has one
Date: Tue, 31 Mar 2020 20:44:59 +0100
Message-Id: <20200331194459.54740-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_124506_287082_309ACE36 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Szabolcs Nagy <szabolcs.nagy@arm.com>, stable@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compilers with branch protection support can be configured to enable it by
default, it is likely that distributions will do this as part of deploying
branch protection system wide. As well as the slight overhead from having
some extra NOPs for unused branch protection features this can cause more
serious problems when the kernel is providing pointer authentication to
userspace but not built for pointer authentication itself. In that case our
switching of keys for userspace can affect the kernel unexpectedly, causing
pointer authentication instructions in the kernel to corrupt addresses.

To ensure that we get consistent and reliable behaviour always explicitly
initialise the branch protection mode, ensuring that the kernel is built
the same way regardless of the compiler defaults.

Fixes: 7503197562567 (arm64: add basic pointer authentication support)
Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: stable@vger.kernel.org
---
 arch/arm64/Kconfig  | 4 ++++
 arch/arm64/Makefile | 7 ++++++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index d3efdc095a17..1e46746e8392 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1537,6 +1537,10 @@ config ARM64_PTR_AUTH
 	  This feature works with FUNCTION_GRAPH_TRACER option only if
 	  DYNAMIC_FTRACE_WITH_REGS is enabled.
 
+config CC_HAS_BRANCH_PROT_NONE
+	# GCC 9 or later, clang 8 or later
+	def_bool $(cc-option,-mbranch-protection=none)
+
 config CC_HAS_BRANCH_PROT_PAC_RET
 	# GCC 9 or later, clang 8 or later
 	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index f15f92ba53e6..370fca6663c8 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -65,6 +65,10 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+# Ensure that if the compiler supports branch protection we default it
+# off, this will be overridden if we are using branch protection.
+branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_NONE) := -mbranch-protection=none
+
 ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
 branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
 branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
@@ -73,9 +77,10 @@ branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pa
 # we pass it only to the assembler. This option is utilized only in case of non
 # integrated assemblers.
 branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
-KBUILD_CFLAGS += $(branch-prot-flags-y)
 endif
 
+KBUILD_CFLAGS += $(branch-prot-flags-y)
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
