Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD65817022F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ASw5YtAAJtMehBQLyC88g7FSzbcPjhSqWN8jYSPfHlA=; b=Im1mgQfAcmSWfF7IHmtRmpvZO
	/c9MUntJz+h8T7wuurJSy93HRXBFtIy7QYdy6fUfEM66+3PffuPmstE/cMqIfxQA/2l7mkBpAxAGj
	+dUz1Z5YfmNeBn9yhEGLF40G/ejXGRqipn/ULLqolzqCLs2bOLwkNQv+0fi6CJ2DlzGdsjg1HI4OY
	8hr5OdauKaWahZ/WgZTgsrtYq3lTEqtZVVAdf1HGhJtt9IWNu1FIMm1ApLyBPQJmyzlVXNY3Mf4jy
	XPG17SAmiPc3MlU35i+a3/pMT0dneK9Nyi1Tcv+FP2flZkMCZIaEHuyO6rL0ZoOv4jVsP+j3a3iba
	+6IVSEwWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6yTf-0006zt-Mp; Wed, 26 Feb 2020 15:19:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6yTV-0006za-D4
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:19:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E72E30E;
 Wed, 26 Feb 2020 07:19:48 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75EF53F819;
 Wed, 26 Feb 2020 07:19:47 -0800 (PST)
Subject: Re: [PATCH v2] arm64: context: Fix ASID limit in boot warning
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 catalin.marinas@arm.com, will@kernel.org
References: <20200226123738.582547-1-jean-philippe@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <da198092-2fe8-275c-94ff-b2b2d75f0b3a@arm.com>
Date: Wed, 26 Feb 2020 15:19:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200226123738.582547-1-jean-philippe@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_071949_484541_DA72180D 
X-CRM114-Status: GOOD (  19.80  )
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
Cc: vladimir.murzin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/02/2020 12:37 pm, Jean-Philippe Brucker wrote:
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
>          discovery
> 
> This change may be a little invasive for just a validation warning, but
> it will likely be needed later, in the asid-pinning patch I'd like to
> introduce for IOMMU SVA.
> ---
>   arch/arm64/mm/context.c | 15 ++++++++++++---
>   1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
> index 8ef73e89d514..efe98f0dcc89 100644
> --- a/arch/arm64/mm/context.c
> +++ b/arch/arm64/mm/context.c
> @@ -260,14 +260,23 @@ asmlinkage void post_ttbr_update_workaround(void)
>   			CONFIG_CAVIUM_ERRATUM_27456));
>   }
>   
> -static int asids_init(void)
> +static int asids_update_limit(void)
>   {
> -	asid_bits = get_cpu_asid_bits();
>   	/*
>   	 * Expect allocation after rollover to fail if we don't have at least
>   	 * one more ASID than CPUs. ASID #0 is reserved for init_mm.
>   	 */
> -	WARN_ON(NUM_USER_ASIDS - 1 <= num_possible_cpus());
> +	bool kpti = arm64_kernel_unmapped_at_el0();
> +	unsigned long num_available_asids = (1UL << (asid_bits - kpti)) - 1;

Yikes! Could the adjustment be a little more obvious please? e.g.:

	if (arm64_kernel_unmapped_at_el0())
		num_available_asids /= 2;

I assume this isn't a path where we need to shave off every last cycle 
possible.

Robin.

> +
> +	WARN_ON(num_available_asids <= num_possible_cpus());
> +	return 0;
> +}
> +arch_initcall(asids_update_limit);
> +
> +static int asids_init(void)
> +{
> +	asid_bits = get_cpu_asid_bits();
>   	atomic64_set(&asid_generation, ASID_FIRST_VERSION);
>   	asid_map = kcalloc(BITS_TO_LONGS(NUM_USER_ASIDS), sizeof(*asid_map),
>   			   GFP_KERNEL);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
