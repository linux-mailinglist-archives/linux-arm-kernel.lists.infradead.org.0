Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDBA136CBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:08:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tBXEJVSdxNH6SwUKnpbKRKbmK1F/AkW0Nbym7OWnlE=; b=X0wqYsTm2MjRdz
	IsPRpy8HC1AjPLL5KhVxDL4ds9VpOyg+fgu0DJQwQd3U4ojOm3Pmv1ARuxdqkgKPJAnR7wgQHWjXK
	gzzuCqQKEszIFzxx1DhVLB1REdcFIhmM/7rV9nF0Gafa2mwVZpr8lJX49dzdywW9hl01rkLa2VcDb
	9n9bCV3j1zYjicxxXctTBDZ1qj8pImbbsjzaqrZHJZv1MoEwPeFEa3PBN89i+KoHZGR+6LMYHfnYu
	6eOwt+LiCDvvOEZTgjEF0zkQKTmh5vI+eVtblzyFMblp18BfCoomB7lTBTxscNb7WtDg338dUi7mB
	RF4wXxmzfgzfZrga+oxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipt5k-0007h9-3n; Fri, 10 Jan 2020 12:08:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipt5c-0007gK-U7
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 12:08:34 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E879C2072A;
 Fri, 10 Jan 2020 12:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578658110;
 bh=larVmVkeU3WRfxDwAQPsKTqJF1qSNwd1xhwAG5vCcC8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K/A4vxFDuOPaUCeiyHjr6ShLxRsAqlO6/dHE7cOWeWOfD6pvq5i0E5xNYBXBhvQmO
 CYWI2M0FTJ5mFSVJiePLU3eSAVgBto1yYdjW+h6eJVY6LV/nqHv3Oc69pJ+KWQAq4V
 goyLD+/yRA5vQ92tsnuqAR8QF+7McDNkLWw+Q178=
Date: Fri, 10 Jan 2020 12:08:26 +0000
From: Will Deacon <will@kernel.org>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH 2/2] arm64: Move the LSE gas support detection to Kconfig
Message-ID: <20200110120826.GC10066@willie-the-truck>
References: <20200109174948.48211-1-catalin.marinas@arm.com>
 <20200109174948.48211-3-catalin.marinas@arm.com>
 <fb5f92cd-8f67-911d-8849-177689702bb9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fb5f92cd-8f67-911d-8849-177689702bb9@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_040832_995953_00A6DBD4 
X-CRM114-Status: GOOD (  13.94  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 11:54:38AM +0000, Vladimir Murzin wrote:
> On 1/9/20 5:49 PM, Catalin Marinas wrote:
> > diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> > index 04cf64e9f0c9..2595c2886d3f 100644
> > --- a/arch/arm64/kernel/cpufeature.c
> > +++ b/arch/arm64/kernel/cpufeature.c
> > @@ -1291,7 +1291,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
> >  		.cpu_enable = cpu_enable_pan,
> >  	},
> >  #endif /* CONFIG_ARM64_PAN */
> > -#if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
> > +#ifdef CONFIG_ARM64_LSE_ATOMICS
> >  	{
> >  		.desc = "LSE atomic instructions",
> >  		.capability = ARM64_HAS_LSE_ATOMICS,
> > @@ -1302,7 +1302,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
> >  		.sign = FTR_UNSIGNED,
> >  		.min_field_value = 2,
> >  	},
> > -#endif /* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
> > +#endif /* CONFIG_ARM64_LSE_ATOMICS */
> >  	{
> >  		.desc = "Software prefetching using PRFM",
> >  		.capability = ARM64_HAS_NO_HW_PREFETCH,
> > 
> 
> I was not lucky with the similar patch [1], anyway
> 
> Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
> 
> 
> [1] https://www.spinics.net/lists/linux-crypto/msg36059.html

It's the loss of the warning that I object to, since I think it's a useful
diagnostic to have. Is there some way we can keep that, but using the new
kbuild logic?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
