Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911D11F210F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 22:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rwV2KWKUOf699blmRgYR3vVYnW05b5vZNy04STPBE4=; b=ZXNtojyjYd2VDJ
	tfVL36Y2mlt+8m/qrzDtiChmCcXjv9olcSh6euaUeEGNqnoYA69i+3+0KNUVn9raXl8SUJy/rZ63H
	+h0VLFK3D4H3gfqRuOsoXanAp0NNyF0/Pm6eKDBUgwQx6r5BHe2soEboDAYWKL4iFF9Ejx2QyUy2J
	7HciWTi/aBxaD0oTf6x1fbdiarQef41rSYjlDosQoF36Qh147cXbZ22QynAcsLFFnz1BVplrwrkN+
	aA1SE4okjdkc0K8NpBd2x9a1/0n2EWofoNGEEf9Gt/mcqezPgMEXt15xAKFJ47qu0WElqe9VdjJDf
	WbibAWeAxjwLLo8MdajA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiOph-00076A-Jh; Mon, 08 Jun 2020 20:57:25 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiOpZ-00075q-PJ
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 20:57:19 +0000
Received: by mail-qk1-x74a.google.com with SMTP id m29so15371519qkm.17
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 13:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=n0Z0MVW9fjL11OJnRXmUnpTQPi7wV6ggXRGNscFMQpE=;
 b=oo1e6e+nKKXbeOsMhQCwbm6s/L45uVQdd/hGh3/yPQQOcvkOLFMzvCnGOkZ/M4dVDX
 1oVCNc2iXN7++m4+rOZmjF0iFk1fuK/YEPAZXwUCVC7IVo878hSqVKtkRBhYi6aPbt9H
 iIStaqx25B2k3CpwnBtkUyxXbpbpZZG/SSlqAD3nKeW/3YfkmWxbR5TyhkKstzLoqyUH
 Yy90d3w2oPVcq4YL6lYzFLyB2mh8sXBHbuNJjNjZOutWJsBC9ylJF4mXEwj0O6IbUvHk
 BQzUSOYm0OUb6Xnqj5jfUYvyej9eIoZCxE9ERJwYLUo7hRSehhA1kZVJC3cTkVB0YfFM
 XHUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=n0Z0MVW9fjL11OJnRXmUnpTQPi7wV6ggXRGNscFMQpE=;
 b=YHsbqGCGG/5sbv5gIuQMD1Ka2+8WTC8uYCNjo3ZQ2hZCbLS5gp4N6et41DqJOzdkvT
 NR3dSogGwbXNjhfEFqf/RkNzZq9+jIy7OUYwzzIxeVJ/NVGWb6aNSchI4E407bGI/sFN
 Avm1uTa6NXTo1Vxvbl10IDqGjlSxvcfSoAXkteeKZnGZgPC67dmVf4LVrl0sgxD1sEs8
 j53sCeb0/bs/Z5N4TKj2nQYhhjJsCrQtPco5JJLZj09z/6FTIuJSECkrOmskLR+3MheO
 7+/WDyhGOjX3ZTBb4X4FqHlROgY/hN834bkUokRVlahxDA/WQQenxRfQT8apmM61I5Qx
 7duw==
X-Gm-Message-State: AOAM530EYQ4dEmyiqlqi7ofPo2ysHRRTSBYpB4DLn4MMtoIuhKbCHTBp
 OctwBkFxZcTI8VCYDPXDYyzivircqFA0fX/BSSc=
X-Google-Smtp-Source: ABdhPJwVKC1j3i6Ut6j8xgrtVABDjElPORqoydWyMT9uIcnpRaKe05GOFjjqf5w7zzY2GkvtF57h3f/PX45fHBLS67A=
X-Received: by 2002:a0c:f652:: with SMTP id s18mr597254qvm.96.1591649835537;
 Mon, 08 Jun 2020 13:57:15 -0700 (PDT)
Date: Mon,  8 Jun 2020 13:57:08 -0700
In-Reply-To: <20200528072031.GA22156@willie-the-truck>
Message-Id: <20200608205711.109418-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200528072031.GA22156@willie-the-truck>
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
From: Nick Desaulniers <ndesaulniers@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_135717_844655_80C74C55 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Manoj Gupta <manojgupta@google.com>,
 Luis Lozano <llozano@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow the compat vdso (32b) to be compiled as either THUMB2 (default) or
ARM.

For THUMB2, the register r7 is reserved for the frame pointer, but
code in arch/arm64/include/asm/vdso/compat_gettimeofday.h
uses r7. Explicitly set -fomit-frame-pointer, since unwinding through
interworked THUMB2 and ARM is unreliable anyways. See also how
CONFIG_UNWINDER_FRAME_POINTER cannot be selected for
CONFIG_THUMB2_KERNEL for ARCH=arm.

This also helps toolchains that differ in their implicit value if the
choice of -f{no-}omit-frame-pointer is left unspecified, to not error on
the use of r7.

2019 Q4 ARM AAPCS seeks to standardize the use of r11 as the reserved
frame pointer register, but no production compiler that can compile the
Linux kernel currently implements this.  We're actively discussing such
a transition with ARM toolchain developers currently.

Link: https://static.docs.arm.com/ihi0042/i/aapcs32.pdf
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1084372
Cc: Stephen Boyd <swboyd@google.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>
Reported-by: Luis Lozano <llozano@google.com>
Tested-by: Manoj Gupta <manojgupta@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* add THUMB2_COMPAT_VDSO config, making -mthumb/-marm configurable
  rather than hard coding.
* Fixed https://reviews.llvm.org/D80828 in Clang, but still an issue.
  Not due to implicit state of -marm vs -mthumb, but actually
  -f{no-}omit-frame-pointer due to
  https://source.chromium.org/chromiumos/chromiumos/codesearch/+/master:src/third_party/toolchain-utils/compiler_wrapper/config.go;l=110,
  which prefixes -fno-omit-frame-pointer for all arches and projects.
  Projects that don't set -f{no-}omit-frame-pointer thus don't overwrite
  the prefixed -fno-omit-frame-pointer, which is an issue when inline
  asm compiled as -mthumb uses r7.
* I don't have a strong preference on the default state of this config.

 arch/arm64/Kconfig                | 8 ++++++++
 arch/arm64/kernel/vdso32/Makefile | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 7f9d38444d6d..fe9e6b231cac 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1299,6 +1299,14 @@ config COMPAT_VDSO
 	  You must have a 32-bit build of glibc 2.22 or later for programs
 	  to seamlessly take advantage of this.
 
+config THUMB2_COMPAT_VDSO
+	bool "Compile the vDSO in THUMB2 mode"
+	depends on COMPAT_VDSO
+	default y
+	help
+	  Compile the compat vDSO with -mthumb -fomit-frame-pointer if y, otherwise
+	  as -marm.
+
 menuconfig ARMV8_DEPRECATED
 	bool "Emulate deprecated/obsolete ARMv8 instructions"
 	depends on SYSCTL
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 3964738ebbde..7ea1e827e505 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -105,6 +105,14 @@ VDSO_CFLAGS += -D__uint128_t='void*'
 VDSO_CFLAGS += $(call cc32-disable-warning,shift-count-overflow)
 VDSO_CFLAGS += -Wno-int-to-pointer-cast
 
+# Compile as THUMB2 or ARM. Unwinding via frame-pointers in THUMB2 is
+# unreliable.
+ifeq ($(CONFIG_THUMB2_COMPAT_VDSO), y)
+VDSO_CFLAGS += -mthumb -fomit-frame-pointer
+else
+VDSO_CFLAGS += -marm
+endif
+
 VDSO_AFLAGS := $(VDSO_CAFLAGS)
 VDSO_AFLAGS += -D__ASSEMBLY__
 
-- 
2.27.0.278.ge193c7cf3a9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
