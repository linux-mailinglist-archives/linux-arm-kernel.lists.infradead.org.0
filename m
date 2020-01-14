Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D599413B0AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 18:19:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRndHMHsF7eoRzo5j7sDp5zvVZKS28ueYHjLJ1igP0g=; b=BHtvvsMod5Cs++
	zFQ0nY3eAoNSwqHvqmWFWhZAAMUdqEXw5vByrpNJvhYdJQwahDjwJ7QI84eEdEt5lrZ4DoDiSruEX
	GZfqQh3TAwUBRAMB+gskcVfgYiyemM9g8VhEBSJ331sLO7elpt+zEo76NsYCy1xLAsrOmyKgwRGgF
	2/DfOvqlAyk9eStlqg9caC8JQGRYgydQRymdjUOwoIH/J/szGZiEUeM8TeaGN01b6zw35++eUyamW
	osZuXdHvqoLXODGOAConevq/fhROhrt3yYJp+pIDIMFoR1kd0MPtOUxpS+D9NgWwqnc55I6vFnwsA
	n1nRVESCc+OQ8IGS70CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPqc-0000AW-D5; Tue, 14 Jan 2020 17:19:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPqR-0000A6-GW
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 17:19:15 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A72C24656;
 Tue, 14 Jan 2020 17:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579022351;
 bh=0vOERnsL7xxR3QnzxgN9jVHEsMmkb0MC3cyY16Y8zNE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mN6I8MpziSWn/S3G7BebQ295r1UT1pUn3BlRVEMFSTNLSytnPw1PTNk4dJVR1nNpR
 nS9FLFWz93tLP9i2hJGhf0jxFUIN1/0XYzT8CvMpeOFspcswuK8cNnXFqPzRBP6xbc
 d02p4UTec1o34EbmSmnEmvGNHUJKhot/TEYD1ZKA=
Date: Tue, 14 Jan 2020 17:19:07 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 2/2] arm64: Move the LSE gas support detection to Kconfig
Message-ID: <20200114171906.GF2579@willie-the-truck>
References: <20200109174948.48211-1-catalin.marinas@arm.com>
 <20200109174948.48211-3-catalin.marinas@arm.com>
 <fb5f92cd-8f67-911d-8849-177689702bb9@arm.com>
 <20200110120826.GC10066@willie-the-truck>
 <20200110153013.GH8786@arrakis.emea.arm.com>
 <20200110154542.GB24322@willie-the-truck>
 <20200113113613.GA1876@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113113613.GA1876@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_091911_594024_B8A212DD 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 11:36:14AM +0000, Catalin Marinas wrote:
> On Fri, Jan 10, 2020 at 03:45:43PM +0000, Will Deacon wrote:
> > On Fri, Jan 10, 2020 at 03:30:14PM +0000, Catalin Marinas wrote:
> > > On Fri, Jan 10, 2020 at 12:08:26PM +0000, Will Deacon wrote:
> > > > On Fri, Jan 10, 2020 at 11:54:38AM +0000, Vladimir Murzin wrote:
> > > > > I was not lucky with the similar patch [1], anyway
> > > > > 
> > > > > Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
> > > > > 
> > > > > [1] https://www.spinics.net/lists/linux-crypto/msg36059.html
> > > > 
> > > > It's the loss of the warning that I object to, since I think it's a useful
> > > > diagnostic to have. Is there some way we can keep that, but using the new
> > > > kbuild logic?
> [...]
> > The thing I dislike about it is that if somebody sends you a .config with
> > LSE enabled, and your compiler doesn't support it, then it silently get
> > disabled.
> 
> I was thinking the other way. Someone sending me a .config file and I
> can't tell whether LSE was built into their kernel or not unless they
> also send the build log (I haven't seen anyone do this). At least for my
> local compiler, I have some control over it and can compare the
> resulting .config file. It would have been nice if oldconfig warned of
> features being disabled but I guess it would become too noisy.
> 
> To accommodate the two scenarios, what about this diff on top of patch 2
> (I can fold it in in v2 and feel free to suggest better config names):
> 
> -------8<-------------------------
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 2a0521f0f156..cf3b6d2a67cf 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1362,12 +1362,13 @@ config ARM64_PAN
>  	 The feature is detected at runtime, and will remain as a 'nop'
>  	 instruction if the cpu does not implement the feature.
>  
> -config ARM64_AS_HAS_LSE
> -	def_bool $(as-instr,.arch_extension lse)
> -
>  config ARM64_LSE_ATOMICS
> +	bool
> +	default ARM64_USE_LSE_ATOMICS
> +	depends on $(as-instr,.arch_extension lse)
> +
> +config ARM64_USE_LSE_ATOMICS
>  	bool "Atomic instructions"
> -	depends on ARM64_AS_HAS_LSE
>  	depends on JUMP_LABEL
>  	default y
>  	help
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index cca6de192d42..6dd8ecacc428 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -30,6 +30,12 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
>    endif
>  endif
>  
> +ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
> +  ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
> +$(warning LSE atomics not supported by binutils)
> +  endif
> +endif
> +

This looks good to me; I'll apply v2 when you post it.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
