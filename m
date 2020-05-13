Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D39FA1D1ACB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 18:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tf52CiGr7t000v1vLE3SCrR/M7EYSVqi2mDAenaq2E=; b=ZSzvPW7Disx2jd
	em11QgWjUHvC0oMn42MEhr9KzYGiBv5Rp8WAhplwDAsMhYRcMfqIIT7zXtqSomLGSRaig6qxJzLGP
	sdB9owcK2dmJVJKdT5kkbuu+Ul2IR2UdF4ZRRMwiN0nw8CBg/uZ6Yd2YGsqc8CGEhsQv+rcEsi4nz
	phnLOK8izSNV7+O2RuMxlL8dMpFzn7ywlWJ37iP3OG2EsdlQUdghBAmGm3GnEzIDC36d7Mjq2wZDL
	86GSYZcMa44ZsQdkYbGGt739sjNhWj0lmSDvIJoj9nT9xjswy4ADg8/yFRJ/p8blulKuVOOjJO4t2
	1LGq9jmbHe1juIr1qjMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYu36-0005yV-8q; Wed, 13 May 2020 16:16:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYu2y-0005xt-Oo
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 16:15:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0D0131B;
 Wed, 13 May 2020 09:15:51 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 21D3A3F305;
 Wed, 13 May 2020 09:15:51 -0700 (PDT)
Date: Wed, 13 May 2020 17:15:49 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] ARM: drop Thumb-2 workaround for ancient binutils
Message-ID: <20200513161548.GU21779@arm.com>
References: <20200507093349.25313-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507093349.25313-1-ardb@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_091552_892874_9B4CCAF1 
X-CRM114-Status: GOOD (  23.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linus.walleij@linaro.org, arnd@arndb.de, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 11:33:49AM +0200, Ard Biesheuvel wrote:
> The CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11 workaround addresses an issue
> which was fixed before the oldest supported binutils (2.23 at this time)
> were released. So we can remove it now.

Acked-by: Dave Martin <Dave.Martin@arm.com>

If we don't need this nasty fix any more, that's good for me.  I wonder
if anyone still builds Thumb-2 kernels for real?  Maybe uclinux needs
it?

(I'll trust you on the version number)

Cheers
---Dave

> Cc: Dave Martin <Dave.Martin@arm.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/arm/Kconfig  | 31 -------------------------------
>  arch/arm/Makefile |  4 ----
>  2 files changed, 35 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 165987aa5bcd..9a4d4c14fbde 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -1425,37 +1425,6 @@ config THUMB2_KERNEL
>  
>  	  If unsure, say N.
>  
> -config THUMB2_AVOID_R_ARM_THM_JUMP11
> -	bool "Work around buggy Thumb-2 short branch relocations in gas"
> -	depends on THUMB2_KERNEL && MODULES
> -	default y
> -	help
> -	  Various binutils versions can resolve Thumb-2 branches to
> -	  locally-defined, preemptible global symbols as short-range "b.n"
> -	  branch instructions.
> -
> -	  This is a problem, because there's no guarantee the final
> -	  destination of the symbol, or any candidate locations for a
> -	  trampoline, are within range of the branch.  For this reason, the
> -	  kernel does not support fixing up the R_ARM_THM_JUMP11 (102)
> -	  relocation in modules at all, and it makes little sense to add
> -	  support.
> -
> -	  The symptom is that the kernel fails with an "unsupported
> -	  relocation" error when loading some modules.
> -
> -	  Until fixed tools are available, passing
> -	  -fno-optimize-sibling-calls to gcc should prevent gcc generating
> -	  code which hits this problem, at the cost of a bit of extra runtime
> -	  stack usage in some cases.
> -
> -	  The problem is described in more detail at:
> -	      https://bugs.launchpad.net/binutils-linaro/+bug/725126
> -
> -	  Only Thumb-2 kernels are affected.
> -
> -	  Unless you are sure your tools don't have this problem, say Y.
> -
>  config ARM_PATCH_IDIV
>  	bool "Runtime patch udiv/sdiv instructions into __aeabi_{u}idiv()"
>  	depends on CPU_32v7 && !XIP_KERNEL
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 7d5cd0f85461..ba65205ab609 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -125,10 +125,6 @@ AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
>  ifeq ($(CONFIG_THUMB2_KERNEL),y)
>  CFLAGS_ISA	:=-mthumb -Wa,-mimplicit-it=always $(AFLAGS_NOWARN)
>  AFLAGS_ISA	:=$(CFLAGS_ISA) -Wa$(comma)-mthumb
> -# Work around buggy relocation from gas if requested:
> -ifeq ($(CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11),y)
> -KBUILD_CFLAGS_MODULE	+=-fno-optimize-sibling-calls
> -endif
>  else
>  CFLAGS_ISA	:=$(call cc-option,-marm,) $(AFLAGS_NOWARN)
>  AFLAGS_ISA	:=$(CFLAGS_ISA)
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
