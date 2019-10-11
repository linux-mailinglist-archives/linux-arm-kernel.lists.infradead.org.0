Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA42D43CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 17:08:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wAwr1eC3oQaTUN/KQbFqUs6PzAMqiIbJcW9jDGVDqik=; b=ExFVO75bzYyHAy+vONfPQ+DeMH
	ANalNbt5ru4B/OxJrWJvY9C/X4ba9aKKL/LH5uhHn0tOsSPCn26MH6nWZn1O4DyrfyChupidZb58q
	DWPECso/wXMBvXlFcYKFvTZ+YlZf4jnHumpfrwdI4NZqJaHy/a8H+yEpdVpgluu+8Ewk0igvA3cKR
	kukRv5q7LNc1MiOTV7L3WM4DtL1rpRFXHwGaO5rxjY6uQY1srPp/82AMlQhj2ND/Upx7joZXbRKz+
	3mPYvO9xKSl/ikE5N3BHxnqTO/v9+kZGSCFAySI9M06/StG/EhK3t53xHAf+laFOhMpz4NHVFEOWd
	sQVbAAdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwWH-00017E-6i; Fri, 11 Oct 2019 15:07:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwVn-0000sk-7J
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 15:07:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D54291570;
 Fri, 11 Oct 2019 08:07:22 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EDF4D3F68E;
 Fri, 11 Oct 2019 08:07:19 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [FIXUP 2/2] squash! arm64: Basic Branch Target Identification support
Date: Fri, 11 Oct 2019 16:06:29 +0100
Message-Id: <1570806389-16014-3-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1570806389-16014-1-git-send-email-Dave.Martin@arm.com>
References: <1570733080-21015-6-git-send-email-Dave.Martin@arm.com>
 <1570806389-16014-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_080723_365505_D903575D 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 Sudakshina Das <sudi.das@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Add Kconfig dependency on CONFIG_ARM64_PTR_AUTH]

Signed-off-by: Dave Martin <Dave.Martin@arm.com>

---

This one could use some discussion.

Two conforming hardware implementations containing BTI could nonetheless
have incompatible Pointer auth implementations, meaning that we expose
BTI to userspace but not Pointer auth.

That's stupid hardware design, but the architecture doesn't forbid it
today.  We _could_ detect this and hide BTI from userspace too, but
if a big.LITTLE system contains Pointer auth implementations with
mismatched IMP DEF algorithms, we lose -- we have no direct way to
detect that.

Since BTI still provides some limited value without Pointer auth,
disabling it unnecessarily might be regarded as too heavy-handed.

Changes since v2:

 * Depend on CONFIG_ARM64_PTR_AUTH=y.

   During test hacking, I observed that there are situations where
   userspace should be entitled to assume that Pointer auth is present
   if BTI is present.

   Although the kernel BTI support doesn't require any aspect of
   Pointer authentication, there are architectural dependencies:

    * ARMv8.5 requires BTI to be implemented. [1]
    * BTI requires ARMv8.4-A to be implemented. [1], [2]
    * ARMv8.4 requires ARMv8.3 to be implemented. [3]
    * ARMv8.3 requires Pointer authentication to be implemented. [4]

   i.e., an implementation that supports BTI but not Pointer auth is
   broken.

   BTI is also designed to be complementary to Pointer authentication:
   without Pointer auth, BTI would offer no protection for function
   returns, seriously undermining the value of the feature.

   See ARM ARM for ARMv8-A (ARM DDI 0487E.a) Sections:

   [1] A2.8.1, "Architectural features added by ARMv8.5"

   [2] A2.2.1, "Permitted implementation of subsets of ARMv8.x and
       ARMv8.(x+1) architectural features"

   [3] A2.6.1, "Architectural features added by Armv8.3"

   [4] A2.6, "The Armv8.3 architecture extension"
---
 arch/arm64/Kconfig | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6e26b72..a64d91d 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1418,16 +1418,21 @@ menu "ARMv8.5 architectural features"
 config ARM64_BTI
 	bool "Branch Target Identification support"
 	default y
+	depends on ARM64_PTR_AUTH
 	help
 	  Branch Target Identification (part of the ARMv8.5 Extensions)
 	  provides a mechanism to limit the set of locations to which computed
 	  branch instructions such as BR or BLR can jump.
 
-	  This is intended to provide complementary protection to other control
+	  To make use of BTI on CPUs that support it, say Y.
+
+	  BTI is intended to provide complementary protection to other control
 	  flow integrity protection mechanisms, such as the Pointer
 	  authentication mechanism provided as part of the ARMv8.3 Extensions.
+	  For this reason, it does not make sense to enable this option without
+	  also enabling support for Pointer authentication.
 
-	  To make use of BTI on CPUs that support it, say Y.
+	  Thus, to enable this option you also need to select ARM64_PTR_AUTH=y.
 
 	  Userspace binaries must also be specifically compiled to make use of
 	  this mechanism.  If you say N here or the hardware does not support
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
