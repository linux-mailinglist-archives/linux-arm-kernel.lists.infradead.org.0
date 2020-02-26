Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC211700F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 15:18:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRHDCekrnQDMVQQcUF4ZpQUQmi2Fvn0+X7hEdJaB1d0=; b=aceYtuyUgOx9Un
	wuwGzjhZ13HdvUs+JG8GNH4QemeITMo81kdwy+bv2u3Ct9rrRCkUl8lKyTJRnEwUa5Bwqmupv4Ern
	o94hpfB1bupru7/oyoA9ZiNr7S8g1gtmfK1yz5iQNWgsfeEkhAlU+qzWV87LcH9eTw7m4CCVZCjnq
	mTL0A8lOZKKDfWwAPWmbFSmeDg8w/BuinHULG3jefeD4cgmrXkE8VC+RVxozAZUGQVWOLaFcxxmT4
	1p9uQy38BFlazTUjTxnOZauGHUVlCLWsoCChCQkksrLu2xsTYhA/nhppQ58wD3mmfOh7ie+QuWL03
	ickNDD2o+41nPXRqS8NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xWC-0007ik-HQ; Wed, 26 Feb 2020 14:18:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xW3-0007iG-EY
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 14:18:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A71130E;
 Wed, 26 Feb 2020 06:18:21 -0800 (PST)
Received: from [10.1.31.129] (e121487-lin.cambridge.arm.com [10.1.31.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD04A3F9E6;
 Wed, 26 Feb 2020 06:18:20 -0800 (PST)
Subject: Re: [PATCH v2] arm64: context: Fix ASID limit in boot warning
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 catalin.marinas@arm.com, will@kernel.org
References: <20200226123738.582547-1-jean-philippe@linaro.org>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <91a2ad0e-638b-d9db-3eda-93e01aa6f2d7@arm.com>
Date: Wed, 26 Feb 2020 14:18:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200226123738.582547-1-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_061823_530448_F1646429 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/26/20 12:37 PM, Jean-Philippe Brucker wrote:
> Since commit f88f42f853a8 ("arm64: context: Free up kernel ASIDs if KPTI
> is not in use"), the NUM_USER_ASIDS macro doesn't correspond to the
> effective number of ASIDs when KPTI is enabled. Get an accurate number
> of available ASIDs in an arch_initcall, once we've discovered all CPUs'
> capabilities and know if we still need to halve the ASID space for KPTI.
> 
> Fixes: f88f42f853a8 ("arm64: context: Free up kernel ASIDs if KPTI is not in use")
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> v1->v2: move warning to arch_initcall(), post capabilities (e.g. E0PD)
>         discovery
> 
> This change may be a little invasive for just a validation warning, but
> it will likely be needed later, in the asid-pinning patch I'd like to
> introduce for IOMMU SVA.
> ---
>  arch/arm64/mm/context.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
> index 8ef73e89d514..efe98f0dcc89 100644
> --- a/arch/arm64/mm/context.c
> +++ b/arch/arm64/mm/context.c
> @@ -260,14 +260,23 @@ asmlinkage void post_ttbr_update_workaround(void)
>  			CONFIG_CAVIUM_ERRATUM_27456));
>  }
>  
> -static int asids_init(void)
> +static int asids_update_limit(void)
>  {
> -	asid_bits = get_cpu_asid_bits();
>  	/*
>  	 * Expect allocation after rollover to fail if we don't have at least
>  	 * one more ASID than CPUs. ASID #0 is reserved for init_mm.
>  	 */
> -	WARN_ON(NUM_USER_ASIDS - 1 <= num_possible_cpus());
> +	bool kpti = arm64_kernel_unmapped_at_el0();
> +	unsigned long num_available_asids = (1UL << (asid_bits - kpti)) - 1;
> +
> +	WARN_ON(num_available_asids <= num_possible_cpus());
> +	return 0;
> +}

Since we have actual number of ASIDs here can we move pr_info here as well? No
need to re-spin immediately.

Cheers
Vladimir

> +arch_initcall(asids_update_limit);
> +
> +static int asids_init(void)
> +{
> +	asid_bits = get_cpu_asid_bits();
>  	atomic64_set(&asid_generation, ASID_FIRST_VERSION);
>  	asid_map = kcalloc(BITS_TO_LONGS(NUM_USER_ASIDS), sizeof(*asid_map),
>  			   GFP_KERNEL);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
