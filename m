Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486FA134929
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:21:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyL9wsICU5DmUL/dc3Lpuu+yXf4r1GdEIWUrATUUiJ4=; b=s8iJuKvsvxFTNB
	drrbD9QIG0Su94nWYmVJFbmosbc8AE2sr/9ZRgMw53iVhiAj4bllxNZiFTJCcvPmNgjWtZn6NAIC0
	KjUA1X/VpGDSzrc2lYhBzGLD1V1Z4yeOLT0nbxfYR0HwxTMr1Pa3NqrLqVYLWPwROn/dzgIhEf8db
	WpFKX5Ke6gzePP1MGa3q2ys7dbEpcQ639fT74NYY0hmPfnCqtpZbqqT3+DFET2v8LM/AbzLn4K7WO
	qUm53HopDIzcdj96a997VzO01EV5DKN7wg4NEhsY0u3bfneC5gyQs8VzslSfSKbElD4VkpGhxY8Wb
	mMrX5eKs0aWoqUuyqrpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipF0t-0001Ii-5r; Wed, 08 Jan 2020 17:20:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipF0f-0001GT-AF
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 17:20:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C3E61FB;
 Wed,  8 Jan 2020 09:20:44 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C4883F534;
 Wed,  8 Jan 2020 09:20:43 -0800 (PST)
Date: Wed, 8 Jan 2020 17:20:41 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v8 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200108172041.GI49203@lakrids.cambridge.arm.com>
References: <20200107183540.54794-1-broonie@kernel.org>
 <20200107183540.54794-3-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107183540.54794-3-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_092045_524497_2E802AEA 
X-CRM114-Status: GOOD (  25.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: suzuki.poulose@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 ard.biesheuvel@linaro.org, Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 06:35:39PM +0000, Mark Brown wrote:
> Since the arm64 ARCH_RANDOM implementation is not available until
> cpufeature has determined the system capabilities it can't be used by
> the generic random code to initialize the entropy pool for early use.
> Instead explicitly add some data to the pool from setup_arch() if the
> boot CPU supports v8.5-RNG, this is the point recommended by the generic
> code.

This structure looks good to me.

> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/include/asm/archrandom.h | 24 ++++++++++++++++++++++++
>  arch/arm64/kernel/setup.c           |  2 ++
>  2 files changed, 26 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/archrandom.h b/arch/arm64/include/asm/archrandom.h
> index 364177954bef..1d9b94fa9c45 100644
> --- a/arch/arm64/include/asm/archrandom.h
> +++ b/arch/arm64/include/asm/archrandom.h
> @@ -59,9 +59,33 @@ static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
>  	return ok;
>  }
>  
> +/*
> + * Our ARCH_RANDOM implementation does not function until relatively
> + * late in the boot when cpufeature has detertmined system
> + * capabilities so the core code can't use arch_get_random*() to
> + * initialize, instead we call this function to inject data from
> + * setup_arch() if the boot CPU supports v8.5-RNG.
> + */
> +static inline void arm64_add_early_rndr_entropy(void)

Can we mark this as __init so that people aren't tempted to use it at
runtime? I realsie it's inline, but it's at least something sparse can
check.

> +{
> +	unsigned long val;
> +	int i;
> +
> +	/* Open code as we run prior to the first call to cpufeature. */
> +	val = read_sysreg_s(SYS_ID_AA64ISAR0_EL1);
> +	if (!((val >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf))
> +		return;
> +
> +	/* Add multiple values to mirror the generic code. */
> +	for (i = 0; i < 16; i++)
> +		if (__arm64_rndr(&val))
> +			add_device_randomness(&val, sizeof(val));
> +}

Given the next patch also needs to check the I reckon it is worth
factoring the ID register check into a helper:

/* Used on the boot CPU before the CPU feature framework is up */
static inline bool __init __early_cpu_has_rndr(void)
{
	unsigned long ftr = read_sysreg_s(SYS_ID_AA64ISAR0_EL1);
	return (ftr >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf;
}

> +
>  #else
>  
>  static inline bool __arm64_rndr(unsigned long *v) { return false; }
> +static inline void arm64_add_early_rndr_entropy(void) { }

... with a stub here:

static inline bool __init __early_cpu_has_rndr(void) { return false; }

... so the KASLR code can just check __early_cpu_has_rndr().

Thanks,
Mark.

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
