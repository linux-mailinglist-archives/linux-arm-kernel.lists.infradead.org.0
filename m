Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DC513714F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:32:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsICC8WodzGzJ4VupasabIOiRYCbIRtorr4ibG9uCH8=; b=f5Hu3n3Yth2jTH
	GqubIwUVaPOgDC3sTIS7vZ3uQfZkErkBTWTJKmVqVEoLFT5Lzxd8fRL1PgnqK+UUXzpud+gt/2Q5M
	ISdnxDnKLXWpFVSsGenIp7vuJgLOsgg67u4uI8XrHsKqEkmFcQogH2mUpDQzPeP39TlzNF05lqCIr
	R2U8YXRR0S8R4z5EvCl0Ht5bmE6MWZuZlUpPG/ZIfEm5XynVFP2OieY6bXgHfzT6RuaBdNwYrDIEr
	xG+3FH29QEnAUd6zI5byU7/W2PJXQW/qnaCfPkcWf59bkRNgng0qc/DIyhc594YaYSbRu4BIs/hvy
	U7MTEpNWoJo5CVpciZVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwGU-0004kV-IK; Fri, 10 Jan 2020 15:31:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwEr-0003Zq-Ps
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:30:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A40C830E;
 Fri, 10 Jan 2020 07:30:16 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1AEBC3F6C4; Fri, 10 Jan 2020 07:30:16 -0800 (PST)
Date: Fri, 10 Jan 2020 15:30:14 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/2] arm64: Move the LSE gas support detection to Kconfig
Message-ID: <20200110153013.GH8786@arrakis.emea.arm.com>
References: <20200109174948.48211-1-catalin.marinas@arm.com>
 <20200109174948.48211-3-catalin.marinas@arm.com>
 <fb5f92cd-8f67-911d-8849-177689702bb9@arm.com>
 <20200110120826.GC10066@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110120826.GC10066@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_073017_911996_C2A9ADDE 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 12:08:26PM +0000, Will Deacon wrote:
> On Fri, Jan 10, 2020 at 11:54:38AM +0000, Vladimir Murzin wrote:
> > On 1/9/20 5:49 PM, Catalin Marinas wrote:
> > > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > > index 04cf64e9f0c9..2595c2886d3f 100644
> > > --- a/arch/arm64/kernel/cpufeature.c
> > > +++ b/arch/arm64/kernel/cpufeature.c
> > > @@ -1291,7 +1291,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
> > >  		.cpu_enable = cpu_enable_pan,
> > >  	},
> > >  #endif /* CONFIG_ARM64_PAN */
> > > -#if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
> > > +#ifdef CONFIG_ARM64_LSE_ATOMICS
> > >  	{
> > >  		.desc = "LSE atomic instructions",
> > >  		.capability = ARM64_HAS_LSE_ATOMICS,
> > > @@ -1302,7 +1302,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
> > >  		.sign = FTR_UNSIGNED,
> > >  		.min_field_value = 2,
> > >  	},
> > > -#endif /* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
> > > +#endif /* CONFIG_ARM64_LSE_ATOMICS */
> > >  	{
> > >  		.desc = "Software prefetching using PRFM",
> > >  		.capability = ARM64_HAS_NO_HW_PREFETCH,
> > > 
> > 
> > I was not lucky with the similar patch [1], anyway
> > 
> > Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
> > 
> > 
> > [1] https://www.spinics.net/lists/linux-crypto/msg36059.html
> 
> It's the loss of the warning that I object to, since I think it's a useful
> diagnostic to have. Is there some way we can keep that, but using the new
> kbuild logic?

With the kbuild logic, you can't select CONFIG_ARM64_LSE_ATOMICS because
CONFIG_AS_HAS_LSE is n (when gas doesn't support LSE). I consider this a
good indication to the user trying to enable it without the need for a
warning.

The alternative is to let the user state their preference with a config
option without any dependencies:

config ARM64_WANT_LSE_ATOMICS
	bool "..."
	depends on JUMP_LABEL
	default y

config ARM64_LSE_ATOMICS
	def_bool CONFIG_ARM64_WANT_LSE_ATOMICS
	depends on CONFIG_AS_HAS_LSE

and in the Makefile, warn if CONFIG_ARM64_WANT_LSE_ATOMICS &&
!CONFIG_ARM64_LSE_ATOMICS.

You can even get the warning directly from kbuild if you select
ARM64_LSE_ATOMICS from ARM64_WANT_* (unmet dependency).

I personally don't think it's worth the hassle. We don't warn if the
compiler doesn't support jump labels, why would we do this for LSE.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
