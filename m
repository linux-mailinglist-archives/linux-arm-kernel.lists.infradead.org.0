Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ABA17145D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 10:51:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZ7SWuGzLW85gm36PZe+y1IIQ8yx7bGJW1lKxUohPrQ=; b=s6DSbEuvJqutwl
	DLRih+/yTSDF6egfzJFV22zjdHloNP+f1Zw1LIGIPyiItKWwMNdmrUZBt3CfjAFRc/mvctlkrd9xO
	0baNyBrY/MqJ9YXaK9CQ2KeJO4/9egzFwJ6bSBr8cOGTAjlCouGVgLxuULGhTwAbC4g9infvjIVvt
	JPo3KbMwgKzoCzLWlT2YgxuuVUOegSRBT1SfxHFTTJgPQCppWYC6l4F7QN96wQcwZl3xcgwbnJWpB
	V+gCx+eZxNm/dGNIpdVhArv6xvvlPPkL1q5kDLTC0U+nX4rg9oki45q2n5ZXQySbrKU27XCtaTIBS
	wnNzRnniEcH+7k2poRpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Foq-0005m0-UI; Thu, 27 Feb 2020 09:51:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Fog-0005l1-5i
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 09:50:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 199061FB;
 Thu, 27 Feb 2020 01:50:45 -0800 (PST)
Received: from [10.1.39.149] (e121487-lin.cambridge.arm.com [10.1.39.149])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D337B3F881;
 Thu, 27 Feb 2020 01:50:43 -0800 (PST)
Subject: Re: [PATCH v3] arm64: context: Fix ASID limit in boot messages
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 catalin.marinas@arm.com, will@kernel.org
References: <20200227083446.677377-1-jean-philippe@linaro.org>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <c88d91de-7f59-f415-33cc-693875366e9a@arm.com>
Date: Thu, 27 Feb 2020 09:50:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200227083446.677377-1-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_015050_259409_DD3D4DA3 
X-CRM114-Status: GOOD (  21.14  )
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
Cc: robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/27/20 8:34 AM, Jean-Philippe Brucker wrote:
> Since commit f88f42f853a8 ("arm64: context: Free up kernel ASIDs if KPTI
> is not in use"), the NUM_USER_ASIDS macro doesn't correspond to the
> effective number of ASIDs when KPTI is enabled. Get an accurate number
> of available ASIDs in an arch_initcall, once we've discovered all CPUs'
> capabilities and know if we still need to halve the ASID space for KPTI.
> 
> Fixes: f88f42f853a8 ("arm64: context: Free up kernel ASIDs if KPTI is not in use")
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> v2->v3: move pr_info() as well, make it more readable.
> v1->v2: move warning to arch_initcall(), post capabilities (e.g. E0PD)
>         discovery.
> 
> This change may be a little invasive for just a validation warning, but
> it will likely be needed later, in the asid-pinning patch I'd like to
> introduce for IOMMU SVA.
> ---
>  arch/arm64/mm/context.c | 20 +++++++++++++++-----
>  1 file changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
> index 8ef73e89d514..d89bb22589f6 100644
> --- a/arch/arm64/mm/context.c
> +++ b/arch/arm64/mm/context.c
> @@ -260,14 +260,26 @@ asmlinkage void post_ttbr_update_workaround(void)
>  			CONFIG_CAVIUM_ERRATUM_27456));
>  }
>  
> -static int asids_init(void)
> +static int asids_update_limit(void)
>  {
> -	asid_bits = get_cpu_asid_bits();
> +	unsigned long num_available_asids = NUM_USER_ASIDS;
> +
> +	if (arm64_kernel_unmapped_at_el0())
> +		num_available_asids /= 2;
>  	/*
>  	 * Expect allocation after rollover to fail if we don't have at least
>  	 * one more ASID than CPUs. ASID #0 is reserved for init_mm.
>  	 */
> -	WARN_ON(NUM_USER_ASIDS - 1 <= num_possible_cpus());
> +	WARN_ON(num_available_asids - 1 <= num_possible_cpus());
> +	pr_info("ASID allocator initialised with %lu entries\n",
> +		num_available_asids);
> +	return 0;
> +}
> +arch_initcall(asids_update_limit);
> +
> +static int asids_init(void)
> +{
> +	asid_bits = get_cpu_asid_bits();
>  	atomic64_set(&asid_generation, ASID_FIRST_VERSION);
>  	asid_map = kcalloc(BITS_TO_LONGS(NUM_USER_ASIDS), sizeof(*asid_map),
>  			   GFP_KERNEL);
> @@ -282,8 +294,6 @@ static int asids_init(void)
>  	 */
>  	if (IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
>  		set_kpti_asid_bits();
> -
> -	pr_info("ASID allocator initialised with %lu entries\n", NUM_USER_ASIDS);
>  	return 0;
>  }
>  early_initcall(asids_init);
> 

FWIW

Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>

Thanks!
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
