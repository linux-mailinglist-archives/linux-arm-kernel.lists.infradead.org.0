Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F30BF59F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 17:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G7GVzXviMVhY+nkuJZw/lMmjF9evJEYJ6aRTdXnsS0U=; b=QMyfr2saHPKh+e
	zHNVXQthERf3HoEqw3SJOSyq7b+kG+b6gzSRUqqHzHLl5FwRsRXVqEuBc0rmXGeD4U6ZsEACm7wXJ
	lQ7o/ANg6kMriW2fWiT4w3d1mwswOSk4VIafdkqJaLLWTImaGeZU+6AJKrvci+5Svi+1Ul6/1CicW
	EZ3Vk2yK3LTxl5tqisFBiRzAD7L1dXk62PblBtR+T27dBGLXt9h3dbbc5wLIl66OC9PtguUPll3Vz
	CTKg9GM9yVVKzvL0JiM0R4tFhf2cl+1FK3c3Ofqj4FAnkWpnWby1YDNmDx9kdqa4dlQsCicv3z/lo
	DDeqTlTJeY3QMmPTfugw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDVT6-0008AM-OP; Thu, 26 Sep 2019 15:14:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDVSw-00089e-1l
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 15:13:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EADC428;
 Thu, 26 Sep 2019 08:13:54 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BDE583F534; Thu, 26 Sep 2019 08:13:53 -0700 (PDT)
Date: Thu, 26 Sep 2019 16:13:51 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2 1/4] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20190926151351.GG9689@arrakis.emea.arm.com>
References: <20190926133805.52348-1-vincenzo.frascino@arm.com>
 <20190926133805.52348-2-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926133805.52348-2-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_081358_184962_AE87D5FE 
X-CRM114-Status: GOOD (  10.13  )
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 02:38:02PM +0100, Vincenzo Frascino wrote:
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 37c610963eee..13e2d2e16af7 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -110,7 +110,7 @@ config ARM64
>  	select GENERIC_STRNLEN_USER
>  	select GENERIC_TIME_VSYSCALL
>  	select GENERIC_GETTIMEOFDAY
> -	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT)
> +	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT && COMPATCC_IS_GCC)
>  	select HANDLE_DOMAIN_IRQ
>  	select HARDIRQS_SW_RESEND
>  	select HAVE_PCI
> @@ -313,6 +313,9 @@ config KASAN_SHADOW_OFFSET
>  	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
>  	default 0xffffffffffffffff
>  
> +config COMPATCC_IS_GCC
> +	def_bool $(success,$(CROSS_COMPILE_COMPAT)gcc --version | head -n 1 | grep -q arm)

Nitpick: COMPAT_CC_IS_ARM_GCC together with 'grep -q "arm-.*-gcc"'

The patch below allows me to use $(COMPATCC) directly here and also set
either CROSS_COMPILE_COMPAT or COMPATCC on the command line:

----------8<----------------------------------
diff --git a/arch/arm64/Kbuild b/arch/arm64/Kbuild
index 75cf8c796d0e..d6465823b281 100644
--- a/arch/arm64/Kbuild
+++ b/arch/arm64/Kbuild
@@ -4,9 +4,3 @@ obj-$(CONFIG_NET)	+= net/
 obj-$(CONFIG_KVM)	+= kvm/
 obj-$(CONFIG_XEN)	+= xen/
 obj-$(CONFIG_CRYPTO)	+= crypto/
-
-# as-instr-compat
-# Usage: cflags-y += $(call as-instr-compat,instr,option1,option2)
-
-as-instr-compat = $(call try-run,\
-	printf "%b\n" "$(1)" | $(COMPATCC) $(KBUILD_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 5d4be0b4f980..811c89fa2b71 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -110,7 +110,7 @@ config ARM64
 	select GENERIC_STRNLEN_USER
 	select GENERIC_TIME_VSYSCALL
 	select GENERIC_GETTIMEOFDAY
-	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT && COMPATCC_IS_GCC)
+	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT && COMPATCC_IS_ARM_GCC)
 	select HANDLE_DOMAIN_IRQ
 	select HARDIRQS_SW_RESEND
 	select HAVE_PCI
@@ -313,8 +313,8 @@ config KASAN_SHADOW_OFFSET
 	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
 	default 0xffffffffffffffff
 
-config COMPATCC_IS_GCC
-	def_bool $(success,$(CROSS_COMPILE_COMPAT)gcc --version | head -n 1 | grep -q arm)
+config COMPATCC_IS_ARM_GCC
+	def_bool $(success,$(COMPATCC) --version | head -n 1 | grep -q "arm-.*-gcc")
 
 source "arch/arm64/Kconfig.platforms"
 
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 34f53eb11878..6b4eb5c444c5 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -53,6 +53,9 @@ $(warning Detected assembler with broken .inst; disassembly will be unreliable)
   endif
 endif
 
+COMPATCC	?= $(CROSS_COMPILE_COMPAT)gcc
+export		COMPATCC
+
 ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
   export CONFIG_COMPAT_VDSO := y
   compat_vdso := -DCONFIG_COMPAT_VDSO=1
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 22f0d31ea528..77aa61340374 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -8,8 +8,6 @@
 ARCH_REL_TYPE_ABS := R_ARM_JUMP_SLOT|R_ARM_GLOB_DAT|R_ARM_ABS32
 include $(srctree)/lib/vdso/Makefile
 
-COMPATCC := $(CROSS_COMPILE_COMPAT)gcc
-
 # Same as cc-*option, but using COMPATCC instead of CC
 cc32-option = $(call try-run,\
         $(COMPATCC) $(1) -c -x c /dev/null -o "$$TMP",$(1),$(2))

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
