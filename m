Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A0AFAE99
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:33:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3R46x7hrvGx5KNvWmEAVLC9HPtbaU3+zsnPMI8l9ZI=; b=R2r9ZyVCYKPez7
	fskFMaSVtvvuU5dFArPxLMVsIkU+qVxtbXmb2RwiL5sypuT3tM6CIY1HqkRBrIp4Tb4J7/hQUqVac
	5NHUzDKrk8PmfOxcMpSaxYtAgF8IySNj7RyaIrVRYDV1rVqvuPhAtKFWC7b9K/J2EqhzJu6Vx/+hP
	amEdzrqKiT3Q15ldtJlBKjQw3228o4qehhX1K7OIEqvD/lTkjZw5qF58wL11HfTY5AOAj0+aZ7hEi
	BTY4VDGIiuDxcILSTwf3Bdwos7VLXan1bnfok6Dp2akRsr15MsZiQAAY7nef4HINBB5bJT2PBYmnm
	gTdhLlDlJIy9PtPKuWUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpy7-0000Xs-QY; Wed, 13 Nov 2019 10:33:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpy0-0000XW-O2
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:33:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62CF1222CD;
 Wed, 13 Nov 2019 10:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573641220;
 bh=JxJFayWcgdtF1EVaUH4pD+skHU9gsn9dqUwJZvSS4n8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y+jHpRMnT9LNK+fA4mE2FP5qjkZLBmgSxP4z2FJZD2bVEfioD1Hvefspeckc0F8mK
 av2ZIlqtGw9gBFlGaDXLZhCww7RFAmnr7bvyf10+OSFODKAHTf5I1L9LFNcyitvYWj
 1o+E6WO8ej9mIpRSXVZxry8sLC/0+CvM9PfQ37SA=
Date: Wed, 13 Nov 2019 10:33:36 +0000
From: Will Deacon <will@kernel.org>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH v2] arm64: Kconfig: add a choice for endianness
Message-ID: <20191113103335.GB25900@willie-the-truck>
References: <20191113092652.28201-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113092652.28201-1-anders.roxell@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_023340_802604_375955D5 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 10:26:52AM +0100, Anders Roxell wrote:
> When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
> CONFIG_CPU_BIG_ENDIAN gets enabled. Which tends not to be what most
> people want. Another concern that has come up is that ACPI isn't built
> for an allmodconfig kernel today since that also depends on !CPU_BIG_ENDIAN.
> 
> Rework so that we introduce a 'choice' and default the choice to
> CPU_LITTLE_ENDIAN. That means that when we build an allmodconfig kernel
> it will default to CPU_LITTLE_ENDIAN that most people tends to want.
> 
> Reviewed-by: John Garry <john.garry@huawei.com>
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>  arch/arm64/Kconfig | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 64764ca92fca..c599b6b288be 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -877,10 +877,26 @@ config ARM64_PA_BITS
>  	default 48 if ARM64_PA_BITS_48
>  	default 52 if ARM64_PA_BITS_52
>  
> +choice
> +	prompt "Endianness"
> +	default CPU_LITTLE_ENDIAN
> +	help
> +	  Select the endianness of data accesses performed by the CPU. Userspace
> +	  applications will need to be compiled and linked for the endianness
> +	  that is selected here.
> +
>  config CPU_BIG_ENDIAN
>         bool "Build big-endian kernel"
>         help
> -         Say Y if you plan on running a kernel in big-endian mode.
> +	  Say Y if you plan on running a kernel with a big-endian userspace.
> +
> +config CPU_LITTLE_ENDIAN
> +	bool "Build little-endian kernel"
> +	help
> +	  Say Y if you plan on running a kernel with a little-endian userspace.
> +	  This is usually the case for distributions targetting arm64.

Bah, my typo here: targetting -> targeting

Catalin, could you take this with the above fixed, please?

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
