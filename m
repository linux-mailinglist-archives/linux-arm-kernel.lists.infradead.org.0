Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EF3CAD96
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQOiiUOjiUfudsWRv1wfb/1Dos6L/g/nWC5iYzjLRdY=; b=Iy8DRW5cLAEwTY
	RXFvMgvyg4kGRrmfYhApxHgwVkrJZyJGZpxSCNSWu8Dyafa7Ro9Uzgq8fyasjOztbM2MrCpKvZEmB
	9u7uSoqMYtBfqISuAMaO0M5/MZZAyeKVz2KP3cm8WBbgWmyVu75RRbjUxaf1O5ZwVMDZFQXf2EjTm
	X8jBAq0a18OUS/O32T/pj2rp/b2Ag0XadEi9CCIEf1fQTJ/OJ6O2yMelqQvUnmeJn2R/HnVl3d7DF
	+tYb/8b3On7qRGYqrcEQr8z0KG7Ho5I2T6qBQ2NMrcky+ALQ3YegLSKYToOkmmH49DWlv9p1Wbf8R
	f7EvON4LIWKxgR92AJyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5EI-0008KJ-63; Thu, 03 Oct 2019 17:49:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5Df-0007ny-VU
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:48:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99B421597;
 Thu,  3 Oct 2019 10:48:51 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 612ED3F739;
 Thu,  3 Oct 2019 10:48:50 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/6] arm64: vdso32: Detect binutils support for dmb ishld
Date: Thu,  3 Oct 2019 18:48:34 +0100
Message-Id: <20191003174838.8872-3-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003174838.8872-1-vincenzo.frascino@arm.com>
References: <20191003174838.8872-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_104852_075423_FF7ED137 
X-CRM114-Status: GOOD (  12.30  )
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
 luto@kernel.org, tglx@linutronix.de, vincenzo.frascino@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Older versions of binutils that do not support certain types of memory
barriers can cause build failure of the vdso32 library.

Add a compilation time mechanism that detects if binutils supports those
instructions and configure the kernel accordingly.

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Reported-by: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/vdso/compat_barrier.h | 2 +-
 arch/arm64/kernel/vdso32/Makefile            | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

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
index 19e0d3115ffe..77aa61340374 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -15,6 +15,8 @@ cc32-disable-warning = $(call try-run,\
 	$(COMPATCC) -W$(strip $(1)) -c -x c /dev/null -o "$$TMP",-Wno-$(strip $(1)))
 cc32-ldoption = $(call try-run,\
         $(COMPATCC) $(1) -nostdlib -x c /dev/null -o "$$TMP",$(1),$(2))
+cc32-as-instr = $(call try-run,\
+	printf "%b\n" "$(1)" | $(COMPATCC) $(VDSO_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
 
 # We cannot use the global flags to compile the vDSO files, the main reason
 # being that the 32-bit compiler may be older than the main (64-bit) compiler
@@ -53,6 +55,7 @@ endif
 VDSO_CAFLAGS += -fPIC -fno-builtin -fno-stack-protector
 VDSO_CAFLAGS += -DDISABLE_BRANCH_PROFILING
 
+
 # Try to compile for ARMv8. If the compiler is too old and doesn't support it,
 # fall back to v7. There is no easy way to check for what architecture the code
 # is being compiled, so define a macro specifying that (see arch/arm/Makefile).
@@ -89,6 +92,12 @@ VDSO_CFLAGS += -Wno-int-to-pointer-cast
 VDSO_AFLAGS := $(VDSO_CAFLAGS)
 VDSO_AFLAGS += -D__ASSEMBLY__
 
+# Check for binutils support for dmb ishld
+dmbinstr := $(call cc32-as-instr,dmb ishld,-DCONFIG_AS_DMB_ISHLD=1)
+
+VDSO_CFLAGS += $(dmbinstr)
+VDSO_AFLAGS += $(dmbinstr)
+
 VDSO_LDFLAGS := $(VDSO_CPPFLAGS)
 # From arm vDSO Makefile
 VDSO_LDFLAGS += -Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
