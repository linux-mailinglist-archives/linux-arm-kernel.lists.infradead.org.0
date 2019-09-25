Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F37ABDE99
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 15:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rtansdq7VugG3TgIoiaSdP3BnMgbfejmB/1Crs+MLP8=; b=M+OJZv6Vqr0G7Q
	6jF2vsWKtK/LGWFqt2lx4qbfmcT1N0oP+G5t/ntDRWfYk+C6s5h2a9ZZhGg/nA1F8SARKwuR/ABoN
	cm/wRR8LOmGgi15DqexZ2iNvEGP9dZXkkXtZsYs+VUwIHnEHotJ9WKW+lGDuZzzmxmtfZfVHYQukU
	ObmUF+zwdM8tE/A6NjATZOCUQCANtTUGi7bmkKNEfk3WdfWt8kRkV42mLEKutZtYKJ8Z8vkkXrQYl
	5vYtoLuiUq+ofbgSp6jbH10EJpa/0ZVlZJXzmwjxxFoPVak69ylxfs0oIygVOwIdj2OVDV8Ji1YuQ
	yE+/YNjcXpZXeI8JRRmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD73k-00021W-6Q; Wed, 25 Sep 2019 13:10:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD733-0001zx-6P
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 13:09:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42D981570;
 Wed, 25 Sep 2019 06:09:32 -0700 (PDT)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 23B543F59C;
 Wed, 25 Sep 2019 06:09:31 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Allow disabling of the compat vDSO
Date: Wed, 25 Sep 2019 14:09:26 +0100
Message-Id: <20190925130926.50674-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_060937_912417_E6D025C3 
X-CRM114-Status: GOOD (  14.09  )
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The compat vDSO building requires a cross-compiler than produces AArch32
binaries, defined via CONFIG_CROSS_COMPILE_COMPAT_VDSO or the
CROSS_COMPILE_COMPAT environment variable. If none of these is defined,
building the kernel always prints a warning as there is no way to
deselect the compat vDSO.

Add an arm64 Kconfig entry to allow the deselection of the compat vDSO.
In addition, make it an EXPERT option, default n, until other issues
with the compat vDSO are solved (64-bit only kernel headers included in
user-space vDSO code, CC_IS_CLANG irrelevant to CROSS_COMPILE_COMPAT).

Fixes: bfe801ebe84f ("arm64: vdso: Enable vDSO compat support")
Cc: Will Deacon <will@kernel.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---

It looks like you can't really win with the current compat vDSO logic.
You either don't have a compat cross-compiler and you get a Makefile
warning or you have one and a get a compiler warning (or failure)
because of the 64-bit kernel headers included in 32-bit user-space code.

"depends on BROKEN" for ARM64_COMPAT_VDSO also work for me instead of
EXPERT. I'll leave it up to Will to decide but I'd like at least this
patch in -rc2 (even better if everything else is fixed before the final
5.4).

Suggestions for future improvements of the compat vDSO handling:

- replace the CROSS_COMPILE_COMPAT prefix with a full COMPATCC; maybe
  check that it indeed produces 32-bit code

- check whether COMPATCC is clang or not rather than CC_IS_CLANG, which
  only checks the native compiler

- clean up the headers includes; vDSO should not include kernel-only
  headers that may even contain code patched at run-time

 arch/arm64/Kconfig | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 866e05882799..83a9a78085c6 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -110,7 +110,6 @@ config ARM64
 	select GENERIC_STRNLEN_USER
 	select GENERIC_TIME_VSYSCALL
 	select GENERIC_GETTIMEOFDAY
-	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT)
 	select HANDLE_DOMAIN_IRQ
 	select HARDIRQS_SW_RESEND
 	select HAVE_PCI
@@ -1185,6 +1184,15 @@ config KUSER_HELPERS
 	  Say N here only if you are absolutely certain that you do not
 	  need these helpers; otherwise, the safe option is to say Y.
 
+config ARM64_COMPAT_VDSO
+	bool "Enable the 32-bit vDSO" if EXPERT
+	depends on !CPU_BIG_ENDIAN
+	select GENERIC_COMPAT_VDSO
+	help
+	  Enable the vDSO support for 32-bit applications. You would
+	  need to set the 32-bit cross-compiler prefix in
+	  CONFIG_CROSS_COMPILE_COMPAT_VDSO or the CROSS_COMPILE_COMPAT
+	  environment variable.
 
 menuconfig ARMV8_DEPRECATED
 	bool "Emulate deprecated/obsolete ARMv8 instructions"

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
