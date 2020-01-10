Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BA613719D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:46:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IxzIZKd8s7TFe6FUMsOBCYvlaPAnPfBRUXiJ2F3VIEg=; b=p2E0HimTzB2Bc+
	Bw+oBd2TWAcHY8OIeDsTWItbBbLycBvDQu0GHQ3BSDRwN2b+JUd9CI7mDQWrq/6R6ay30/Lt7aMyK
	xx0UqHRiMF9vaa0uN+sAgPEFyu66YgD2TequHVYla6gErnHIQb6Gg7FQBu1LTZcIPSxBIMEXrk42K
	H5CM/9vk1ULKQZnrk6JmHPec+F5I8oQ/Alt1Te/eeWi2ROp2CB4la+oRJ8IJqEfF4JDGP9BfgVv3b
	DDwmMdjXlZbWJLHfORB/6tYloQ8YudJGrwxqL33m/vrQ5CdiZIS3HSh77ZaAhm2YHk7mnfTIgE7AT
	/aZ/TDKPdlYp1Dy9F/gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwTy-0004M6-UM; Fri, 10 Jan 2020 15:45:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwTr-0004LZ-Gj
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:45:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8313A20721;
 Fri, 10 Jan 2020 15:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578671147;
 bh=90ahBolX25qUsAcxNDXTmKxnI5LtOfuRIIECghRrV+M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ob4HqYr6iHPOSoqyWVIKJB4ru+VVfypOi9n0lEo1XXbmTWLxNdEX3UtOaY3HmW1Je
 Rx/qmFVhP4vxEl/NvRnROJDZ9SRHascbZ0tkqnCNmTWkFIQ597DyQbma3alX15tZ01
 YeYclnoI3jXP6ElwlUttlwhTpLe3sjg2NWjZo1es=
Date: Fri, 10 Jan 2020 15:45:43 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 2/2] arm64: Move the LSE gas support detection to Kconfig
Message-ID: <20200110154542.GB24322@willie-the-truck>
References: <20200109174948.48211-1-catalin.marinas@arm.com>
 <20200109174948.48211-3-catalin.marinas@arm.com>
 <fb5f92cd-8f67-911d-8849-177689702bb9@arm.com>
 <20200110120826.GC10066@willie-the-truck>
 <20200110153013.GH8786@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110153013.GH8786@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_074547_595393_6993FB13 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Jan 10, 2020 at 03:30:14PM +0000, Catalin Marinas wrote:
> On Fri, Jan 10, 2020 at 12:08:26PM +0000, Will Deacon wrote:
> > On Fri, Jan 10, 2020 at 11:54:38AM +0000, Vladimir Murzin wrote:
> > > On 1/9/20 5:49 PM, Catalin Marinas wrote:
> > > > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > > > index 04cf64e9f0c9..2595c2886d3f 100644
> > > > --- a/arch/arm64/kernel/cpufeature.c
> > > > +++ b/arch/arm64/kernel/cpufeature.c
> > > > @@ -1291,7 +1291,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
> > > >  		.cpu_enable = cpu_enable_pan,
> > > >  	},
> > > >  #endif /* CONFIG_ARM64_PAN */
> > > > -#if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
> > > > +#ifdef CONFIG_ARM64_LSE_ATOMICS
> > > >  	{
> > > >  		.desc = "LSE atomic instructions",
> > > >  		.capability = ARM64_HAS_LSE_ATOMICS,
> > > > @@ -1302,7 +1302,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
> > > >  		.sign = FTR_UNSIGNED,
> > > >  		.min_field_value = 2,
> > > >  	},
> > > > -#endif /* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
> > > > +#endif /* CONFIG_ARM64_LSE_ATOMICS */
> > > >  	{
> > > >  		.desc = "Software prefetching using PRFM",
> > > >  		.capability = ARM64_HAS_NO_HW_PREFETCH,
> > > > 
> > > 
> > > I was not lucky with the similar patch [1], anyway
> > > 
> > > Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
> > > 
> > > 
> > > [1] https://www.spinics.net/lists/linux-crypto/msg36059.html
> > 
> > It's the loss of the warning that I object to, since I think it's a useful
> > diagnostic to have. Is there some way we can keep that, but using the new
> > kbuild logic?
> 
> With the kbuild logic, you can't select CONFIG_ARM64_LSE_ATOMICS because
> CONFIG_AS_HAS_LSE is n (when gas doesn't support LSE). I consider this a
> good indication to the user trying to enable it without the need for a
> warning.
> 
> The alternative is to let the user state their preference with a config
> option without any dependencies:
> 
> config ARM64_WANT_LSE_ATOMICS
> 	bool "..."
> 	depends on JUMP_LABEL
> 	default y
> 
> config ARM64_LSE_ATOMICS
> 	def_bool CONFIG_ARM64_WANT_LSE_ATOMICS
> 	depends on CONFIG_AS_HAS_LSE
> 
> and in the Makefile, warn if CONFIG_ARM64_WANT_LSE_ATOMICS &&
> !CONFIG_ARM64_LSE_ATOMICS.
> 
> You can even get the warning directly from kbuild if you select
> ARM64_LSE_ATOMICS from ARM64_WANT_* (unmet dependency).
> 
> I personally don't think it's worth the hassle. We don't warn if the
> compiler doesn't support jump labels, why would we do this for LSE.

The thing I dislike about it is that if somebody sends you a .config with
LSE enabled, and your compiler doesn't support it, then it silently get
disabled. There are two differences with jump labels:

  1. Most compilers support jump labels
  2. LSE atomics also depend on the CPU features before they get enabled
     at runtime.

Mainly because of (2), I think silently disabling LSE at build time is
really confusing when you're trying to figure out why it's not in use.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
