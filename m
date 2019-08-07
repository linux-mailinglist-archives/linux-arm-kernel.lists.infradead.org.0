Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A7B84A36
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35e5woSPDknJu27ulZaxK47oMDV73Qxy4/U4lovxwDQ=; b=jZoN8qdwe+yrj4
	H2mz9aHxqQUznY2rOvXxOGJCXiI6Mx4PtKz9w2q92kGGqRhkiVrx8G3KbSspaS+Cn17CAvye52AEW
	wOzN7yNDdDh2+ajS3tspflDVEQ91UEiJNQPRAS/2q5H3ufD5A0Ry7XO66lOuEoqAaNd8GBTZBVXSa
	WriAUJ8/Gd6M9KrCZTYJKlT8hiW1f0nOeChDilWdWnKKpXKaGJWd7BPHJ/xuFPtUgSM4hjel28dap
	s5VmJouIoWAp0c+LuxS0h+5pGDRxeGP4VnJ/lx5uaqqK8RsJhnOGMKhrNPX268YDG54lSQu0bjGms
	V+EflGLWccknvP7HDrGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJd0-0006ZN-G8; Wed, 07 Aug 2019 10:57:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJco-0006Z0-16
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:56:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7796321E6A;
 Wed,  7 Aug 2019 10:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565175417;
 bh=E+jdnPAL8byjVs25HbPkNIC+Qlh+GYI7JlSAMKjNmOY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j0v7RK71k0oqk5weJNib/8LBsqGyJuYACUDft4NB8ckJHk84Ro4o9VTusqDkVFveE
 hInp6nbV+z6+c+eRkSZVJv21dWsErYP1VHjdJ7RmC2SBGYizMOpOtiO+ScxwmbGTe9
 r4JvYQc42MzUUHLNSqnCb0q5hGDm1JjgcMaFR6GU=
Date: Wed, 7 Aug 2019 11:56:53 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH v2] arm64/cache: fix -Woverride-init compiler warnings
Message-ID: <20190807105652.cyi3fou2rfsxhxrk@willie-the-truck>
References: <20190806193434.965-1-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806193434.965-1-cai@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_035658_093510_2B7A5F2B 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 03:34:34PM -0400, Qian Cai wrote:
> diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
> index 876055e37352..a0c495a3f4fd 100644
> --- a/arch/arm64/kernel/cpuinfo.c
> +++ b/arch/arm64/kernel/cpuinfo.c
> @@ -34,10 +34,7 @@ DEFINE_PER_CPU(struct cpuinfo_arm64, cpu_data);
>  static struct cpuinfo_arm64 boot_cpu_data;
>  
>  static char *icache_policy_str[] = {
> -	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN",
> -	[ICACHE_POLICY_VIPT]		= "VIPT",
> -	[ICACHE_POLICY_PIPT]		= "PIPT",
> -	[ICACHE_POLICY_VPIPT]		= "VPIPT",
> +	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN"
>  };
>  
>  unsigned long __icache_flags;
> @@ -310,13 +307,16 @@ static void cpuinfo_detect_icache_policy(struct cpuinfo_arm64 *info)
>  
>  	switch (l1ip) {
>  	case ICACHE_POLICY_PIPT:
> +		icache_policy_str[ICACHE_POLICY_PIPT] = "PIPT";
>  		break;
>  	case ICACHE_POLICY_VPIPT:
> +		icache_policy_str[ICACHE_POLICY_VPIPT] = "VPIPT";
>  		set_bit(ICACHEF_VPIPT, &__icache_flags);
>  		break;
>  	default:
>  		/* Fallthrough */
>  	case ICACHE_POLICY_VIPT:
> +		icache_policy_str[ICACHE_POLICY_VIPT] = "VIPT";
>  		/* Assume aliasing */
>  		set_bit(ICACHEF_ALIASING, &__icache_flags);

I still think this is worse than the code in mainline. I don't think
-Woverride-init should warn when overriding a field from a GCC range
designated initialiser, since it makes them considerably less useful
imo.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
