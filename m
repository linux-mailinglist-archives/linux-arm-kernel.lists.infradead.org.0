Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED80ABED05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 10:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tX8/6aUB3EPL5Wwer8gKL48uaJv8bmeLFDVN4jTqgs8=; b=dVbtp1Au8K2BgO
	Ah5wOKYwDnCMtQVECD+O3ZWBU14auiXsv9ECa8jUZrbypUE4/e9em0zlYCA/Tq13k+vXvBj/e52r7
	y0H4UolAbcfbSUo3/R4c4Y7+Syx4v3VeEbOOqlnaul2AsV/Ruj4CqJCd9mDPpEWxz+Qb5M4PgHWQA
	Xa2uVA3BPt9ZbaqaLOw0xKX3bz5VEtqmTm8jZ0YFmZswUdgVFPktCsO3X8JWJS8U6ltvKQ0wRZCsW
	lRET54+vzoY6ncj0+ANRAx9R5W6gxruJsz9+x8QouvcMdoVB34/qc/RwBqB88oinnQHj1KD2gYxpK
	iDfrxGxFkBnIixbFCEew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDOnc-0001Ps-IE; Thu, 26 Sep 2019 08:06:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDOnN-0001PT-D7
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 08:06:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF6671000;
 Thu, 26 Sep 2019 01:06:36 -0700 (PDT)
Received: from iMac.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B5BB63F836;
 Thu, 26 Sep 2019 01:06:35 -0700 (PDT)
Date: Thu, 26 Sep 2019 09:06:33 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 1/4] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20190926080616.GB26802@iMac.local>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926060353.54894-1-vincenzo.frascino@arm.com>
 <20190926060353.54894-2-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926060353.54894-2-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_010637_491508_3EA4F723 
X-CRM114-Status: GOOD (  12.05  )
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

On Thu, Sep 26, 2019 at 07:03:50AM +0100, Vincenzo Frascino wrote:
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 37c610963eee..afe8c948b493 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -110,7 +110,7 @@ config ARM64
>  	select GENERIC_STRNLEN_USER
>  	select GENERIC_TIME_VSYSCALL
>  	select GENERIC_GETTIMEOFDAY
> -	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT)
> +	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT && COMPAT_CC_IS_GCC)
>  	select HANDLE_DOMAIN_IRQ
>  	select HARDIRQS_SW_RESEND
>  	select HAVE_PCI
> @@ -313,6 +313,9 @@ config KASAN_SHADOW_OFFSET
>  	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
>  	default 0xffffffffffffffff
>  
> +config COMPAT_CC_IS_GCC
> +	def_bool $(success,$(CROSS_COMPILE_COMPAT)gcc --version | head -n 1 | grep -q arm)

Nitpick: I prefer COMPATCC instead of COMPAT_CC for consistency with
HOSTCC.

Now, could we not generate a COMPATCC in the Makefile and use
$(COMPATCC) here instead of $(CROSS_COMPILE_COMPAT)gcc? It really
doesn't make sense to check that gcc is gcc.

A next step would be to check that COMPATCC can actually generate 32-bit
objects. But it's not essential at this stage.

> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 84a3d502c5a5..34f53eb11878 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -54,19 +54,8 @@ $(warning Detected assembler with broken .inst; disassembly will be unreliable)
>  endif
>  
>  ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
> -  CROSS_COMPILE_COMPAT ?= $(CONFIG_CROSS_COMPILE_COMPAT_VDSO:"%"=%)
> -
> -  ifeq ($(CONFIG_CC_IS_CLANG), y)
> -    $(warning CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built)
> -  else ifeq ($(strip $(CROSS_COMPILE_COMPAT)),)
> -    $(warning CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built)
> -  else ifeq ($(shell which $(CROSS_COMPILE_COMPAT)gcc 2> /dev/null),)
> -    $(error $(CROSS_COMPILE_COMPAT)gcc not found, check CROSS_COMPILE_COMPAT)
> -  else
> -    export CROSS_COMPILE_COMPAT
> -    export CONFIG_COMPAT_VDSO := y
> -    compat_vdso := -DCONFIG_COMPAT_VDSO=1
> -  endif
> +  export CONFIG_COMPAT_VDSO := y
> +  compat_vdso := -DCONFIG_COMPAT_VDSO=1
>  endif

Has CONFIG_CROSS_COMPILE_COMPAT_VDSO actually been removed from
lib/vdso/Kconfig? (I haven't checked the subsequent patches).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
