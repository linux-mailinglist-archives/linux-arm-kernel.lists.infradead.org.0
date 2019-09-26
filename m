Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD28BEBD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 08:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGwVOUkR7ST0pfGxTgtTVTD7n8H7+HOcAaS+nP/JhgA=; b=m4qD13j87byOc1
	mdYKzF4IyotrDTz0sUVm65QdcBY/PeWeROVUXRWi0cpSEctqv9acZoPJhX1GsouF+TDNIoQxgVp5d
	AUyjwGknh3saird8eKnJgwGuO1lgOebUGKS2T1ti98e12YwMZvvTugChn2yR95TWkmGZqVUiZCG7J
	HAzzAFAgHyY1jlqoJYbiKGQvPfIjtpJPTcofxq3+eB2NsIYBNSk8pmafirLJVbY/c1mP56+Q+0e52
	F0m4ETR50XvnIhyN8eG4ixi2bLI9aTvpWDV9gSKle8taxmXTgfcuyyYBfwdhwyH1Kvwxybtzmg4iV
	ro1NF4TuUaIUJvjcyHEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDMtj-0002eV-3I; Thu, 26 Sep 2019 06:05:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDMsx-0002DS-GJ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 06:04:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EBA091596;
 Wed, 25 Sep 2019 23:04:14 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 087603F836;
 Wed, 25 Sep 2019 23:06:48 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] arm64: vdso32: Detect binutils support for dmb ishld
Date: Thu, 26 Sep 2019 07:03:51 +0100
Message-Id: <20190926060353.54894-3-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190926060353.54894-1-vincenzo.frascino@arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926060353.54894-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_230415_580907_0144DB92 
X-CRM114-Status: GOOD (  12.02  )
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 tglx@linutronix.de, vincenzo.frascino@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As reported by Will Deacon, older versions of binutils that do not
support certain types of memory barriers can cause build failure of the
vdso32 library.

Add a compilation time mechanism that detects if binutils supports those
instructions and configure the kernel accordingly.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/vdso/compat_barrier.h | 2 +-
 arch/arm64/kernel/vdso32/Makefile            | 5 ++++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/compat_barrier.h b/arch/arm64/include/asm/vdso/compat_barrier.h
index fb60a88b5ed4..3fd8fd6d8fc2 100644
--- a/arch/arm64/include/asm/vdso/compat_barrier.h
+++ b/arch/arm64/include/asm/vdso/compat_barrier.h
@@ -20,7 +20,7 @@
 
 #define dmb(option) __asm__ __volatile__ ("dmb " #option : : : "memory")
 
-#if __LINUX_ARM_ARCH__ >= 8
+#if __LINUX_ARM_ARCH__ >= 8 && defined(CONFIG_AS_DMB_ISHLD)
 #define aarch32_smp_mb()	dmb(ish)
 #define aarch32_smp_rmb()	dmb(ishld)
 #define aarch32_smp_wmb()	dmb(ishst)
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 1fba0776ed40..1a3299d901b1 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -55,6 +55,9 @@ endif
 VDSO_CAFLAGS += -fPIC -fno-builtin -fno-stack-protector
 VDSO_CAFLAGS += -DDISABLE_BRANCH_PROFILING
 
+# Check for binutils support for dmb ishld
+dmbinstr := $(call as-instr,dmb ishld,-DCONFIG_AS_DMB_ISHLD=1)
+
 # Try to compile for ARMv8. If the compiler is too old and doesn't support it,
 # fall back to v7. There is no easy way to check for what architecture the code
 # is being compiled, so define a macro specifying that (see arch/arm/Makefile).
@@ -62,7 +65,7 @@ VDSO_CAFLAGS += $(call cc32-option,-march=armv8-a -D__LINUX_ARM_ARCH__=8,\
                                    -march=armv7-a -D__LINUX_ARM_ARCH__=7)
 
 VDSO_CFLAGS := $(VDSO_CAFLAGS)
-VDSO_CFLAGS += -DENABLE_COMPAT_VDSO=1
+VDSO_CFLAGS += -DENABLE_COMPAT_VDSO=1 $(dmbinstr)
 # KBUILD_CFLAGS from top-level Makefile
 VDSO_CFLAGS += -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
                -fno-strict-aliasing -fno-common \
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
