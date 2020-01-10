Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2D7136D28
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 13:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yd/WyYjWUXQzyTSl4L3v5FoWEBiR/4lyOtpemapdcjc=; b=KpleA5LS9oQXHt
	A1MUNTVJw9IhE1xhQ2Yb10AU0F+to8SMD15D7ee7tmhujrEPdKBqEIphq0FHjmZp7lqa17uKBG58e
	VTpiF0tH4JWT43ruw551bm5Ct4PR9Pr3RimL53ggoPX4PPh/MEGaG4WVpWHOkjd60ab0BXQQJt2ks
	MoqHko6mpDyUimb3i+FXiYW7gCjISze7jwGDgUWji6MmBub7bcMaey35/j4eqzpn/wt2YBssxi0H9
	EINcwbO+qLoUog6cyD8HGjXMcO12vKgluRg0f/P/Fg4s/2k3m3ft03ae6mY+/ByP5SUGSw6YCl+t2
	Y32di517Skq0wQQdHztA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iptVl-0005eg-UI; Fri, 10 Jan 2020 12:35:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iptVW-0005ct-JM
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 12:35:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBA071063;
 Fri, 10 Jan 2020 04:35:15 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E77373F534;
 Fri, 10 Jan 2020 04:35:14 -0800 (PST)
Date: Fri, 10 Jan 2020 12:35:12 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200110123512.GB31707@lakrids.cambridge.arm.com>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110122341.8445-3-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_043521_132758_110520EF 
X-CRM114-Status: GOOD (  26.84  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 12:23:40PM +0000, Mark Brown wrote:
> Since the arm64 ARCH_RANDOM implementation is not available until
> cpufeature has determined the system capabilities it can't be used by
> the generic random code to initialize the entropy pool for early use.
> Instead explicitly add some data to the pool from setup_arch() if the
> boot CPU supports v8.5-RNG, this is the point recommended by the generic
> code.
> 
> Note that we are only adding data here, it will be mixed into the pool
> but won't be credited as entropy. There are currently no suitable
> interfaces for that at present - extending the random code to provide
> those will be done as a future step. Providing data is better than not
> doing so as it will still provide an increase in variation in the output
> from the random code and there will be no impact on the rate at which
> entropy is credited compared to what we have without this patch.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

This is certainly better than the current state of things so:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

> ---
>  arch/arm64/include/asm/archrandom.h | 30 +++++++++++++++++++++++++++++
>  arch/arm64/kernel/setup.c           |  2 ++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/archrandom.h b/arch/arm64/include/asm/archrandom.h
> index 5ea5a1ce5a5f..2eb1db1f0bdf 100644
> --- a/arch/arm64/include/asm/archrandom.h
> +++ b/arch/arm64/include/asm/archrandom.h
> @@ -59,9 +59,39 @@ static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
>  	return ok;
>  }
>  
> +static inline bool __init __early_cpu_has_rndr(void)
> +{
> +	/* Open code as we run prior to the first call to cpufeature. */
> +	unsigned long ftr = read_sysreg_s(SYS_ID_AA64ISAR0_EL1);
> +	return (ftr >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf;
> +}
> +
> +/*
> + * Our ARCH_RANDOM implementation does not function until relatively
> + * late in the boot when cpufeature has detertmined system
> + * capabilities so the core code can't use arch_get_random*() to
> + * initialize, instead we call this function to inject data from
> + * setup_arch() if the boot CPU supports v8.5-RNG.
> + */
> +static inline void __init arm64_add_early_rndr_entropy(void)
> +{
> +	unsigned long val;
> +	int i;
> +
> +	if (!__early_cpu_has_rndr())
> +		return;
> +
> +	/* Add multiple values to mirror the generic code. */
> +	for (i = 0; i < 16; i++)
> +		if (__arm64_rndr(&val))
> +			add_device_randomness(&val, sizeof(val));
> +}
> +
>  #else
>  
>  static inline bool __arm64_rndr(unsigned long *v) { return false; }
> +static inline bool __init __early_cpu_has_rndr(void) { return false; }
> +static inline void __init arm64_add_early_rndr_entropy(void) { }
>  
>  #endif /* CONFIG_ARCH_RANDOM */
>  #endif /* _ASM_ARCHRANDOM_H */
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index 56f664561754..170842965a32 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -344,6 +344,8 @@ void __init setup_arch(char **cmdline_p)
>  	/* Init percpu seeds for random tags after cpus are set up. */
>  	kasan_init_tags();
>  
> +	arm64_add_early_rndr_entropy();
> +
>  #ifdef CONFIG_ARM64_SW_TTBR0_PAN
>  	/*
>  	 * Make sure init_thread_info.ttbr0 always generates translation
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
