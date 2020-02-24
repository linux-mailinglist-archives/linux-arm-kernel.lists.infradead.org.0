Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8329516A49A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 12:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjcQ0Ekaeb1PxH5hiQLbNrYoyMDGSEYAx68OEmFJIR8=; b=OQnlop5tftm43e
	RTfjUQlXyNm8++p0TL1/PG3ZBofgdIWWtp0snRN3q+Nn/VsMhScUOWt/+jlruz7JAgM5fzF49oMM4
	uyLZntkN5yLOm1CTR2e1WMcX8lLun/3gRp+3n4SsQKgeLOrM+ErWF5/u31nKuS6H9CMfb67el+zZl
	/TJa7xly9kU9xPxkDHbtyXe7gJRqpxcE7u+F5rljpc04YeYnZ60ZuEcuH/c8nylQZqMeoHwCrM9mR
	j3aUXtV3jB+4pA8ZT8J2D54cNXO3gXDGbqprmlRq9+TTvcrqP7vFUQMAl5h+l3QhHmbrlAUp7VMH5
	Q767NrnOAQmxDzFVk1MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6BZl-0003ep-L2; Mon, 24 Feb 2020 11:07:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6BZa-0003eO-Qy
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 11:06:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CD7030E;
 Mon, 24 Feb 2020 03:06:45 -0800 (PST)
Received: from [10.1.25.164] (e121487-lin.cambridge.arm.com [10.1.25.164])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D19B73F703;
 Mon, 24 Feb 2020 03:06:44 -0800 (PST)
Subject: Re: [PATCH] arm64: context: Fix ASID limit in boot warning
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 catalin.marinas@arm.com, will@kernel.org
References: <20200224103934.137314-1-jean-philippe@linaro.org>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <a54c1498-2fff-8d97-5220-e378966d3853@arm.com>
Date: Mon, 24 Feb 2020 11:06:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200224103934.137314-1-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_030650_919221_6187ACF7 
X-CRM114-Status: GOOD (  21.52  )
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

Hi Jean,

On 2/24/20 10:39 AM, Jean-Philippe Brucker wrote:
> Since commit f88f42f853a8 ("arm64: context: Free up kernel ASIDs if KPTI
> is not in use"), the NUM_USER_ASIDS macro doesn't correspond to the
> effective number of ASIDs when KPTI is enabled. Fix the number of
> available ASIDs in the boot warning.
> 
> Fixes: f88f42f853a8 ("arm64: context: Free up kernel ASIDs if KPTI is not in use")
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  arch/arm64/mm/context.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
> index 8ef73e89d514..121aba5b1941 100644
> --- a/arch/arm64/mm/context.c
> +++ b/arch/arm64/mm/context.c
> @@ -262,12 +262,16 @@ asmlinkage void post_ttbr_update_workaround(void)
>  
>  static int asids_init(void)
>  {
> +	unsigned long num_available_asids;
> +	bool kpti = IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0);
> +
>  	asid_bits = get_cpu_asid_bits();
>  	/*
>  	 * Expect allocation after rollover to fail if we don't have at least
>  	 * one more ASID than CPUs. ASID #0 is reserved for init_mm.
>  	 */
> -	WARN_ON(NUM_USER_ASIDS - 1 <= num_possible_cpus());
> +	num_available_asids = (1UL << (asid_bits - kpti)) - 1;
> +	WARN_ON(num_available_asids <= num_possible_cpus());
>  	atomic64_set(&asid_generation, ASID_FIRST_VERSION);
>  	asid_map = kcalloc(BITS_TO_LONGS(NUM_USER_ASIDS), sizeof(*asid_map),
>  			   GFP_KERNEL);
> @@ -280,7 +284,7 @@ static int asids_init(void)
>  	 * caps are not finalized yet, so it is safer to assume KPTI
>  	 * and reserve kernel ASID's from beginning.
>  	 */
> -	if (IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
> +	if (kpti)
>  		set_kpti_asid_bits();
>  
>  	pr_info("ASID allocator initialised with %lu entries\n", NUM_USER_ASIDS);
> 

I agree with what you say about  NUM_USER_ASIDS, yet looking at comment explaining
warning is seems that we may get extra ASIDs later on rollover, so warning might be
seen as false positive. Can we move the warning later on when we know how many ASIDs
we have after all CPU's are up? Maybe late_initcall?

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
