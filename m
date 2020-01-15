Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7272313BA7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 08:49:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=th8XYAPl4wGyrf2og/vdqnWKU2qLHxp2D+NV7AG//dQ=; b=Xvp2A0pY2gmBst
	SFoQADaBQEbwKW1ayJxsvwzkIZiwdvXLfD9N5qSkT64UJRos2iBlIkmuIlmTsC1XEqmTkXnSW6tBF
	zD4EFtTOJMto2xOIDkhvWQKM/jU93c9Oc27e3kkVpTAUsKdmtzMdAEyYIXOAOIqEJsgRmGzQ5cKUC
	Fj8qRHLnGZ61dIpk8xB9dJkAX1IPXtcjYvn2iGfZF0pO5+X85L2kx6KXSnzHMFWnlFWZqvRhXQgEZ
	JEPdCD+9yWbK21q0M+kEXnlMvGE+3fY51J5VR44EiUhoI0icCkevovSE5MNq0C5mFKFV+iFLgu/lV
	QHnjqlPXqZv7N7UlI91A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irdQN-0003QU-FO; Wed, 15 Jan 2020 07:49:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irdQB-0003Q2-B0
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 07:49:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so14731836wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 23:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N9B/yQ734wXw4JHujFZHLoMyTjSje6cpToU6kQfhEy0=;
 b=R/JqNICX2aHUnmkVpLFK1QtrllKnq6I3u4QrhLZopsd4dQwMIn03QcDZjrDGvf1D0C
 AIS4blTrKdLp3/bxIAcDy8IuIdCKQ0oR47zPk2r4g9v1aFFndgp3X4d3GVSxhzbH8tXJ
 JmJ2RTujhGYS0DoIJMQvn/TluNmLxpmA3n1RF2dFOjZJUKs6AGkhmyGR1L4H03iyl5GV
 6Oqv5uUmXjYCxbBTJtziirgLMcH2HoK8x4XMN8O3HTQJIK21Co9sT4dI35V1alteHcYd
 bHdo2mJ4I1mA6xDOOwh1Zl3r56Q7NyxUDEOfiX1/U2l3/UA6qAcwsNHRGfidLZ4FBTbt
 tRmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N9B/yQ734wXw4JHujFZHLoMyTjSje6cpToU6kQfhEy0=;
 b=s2T/lJZ5ufn7vR0uqpOOt/XlaxD2miq0eA5NpNeiOl9hQkDbRYlmew8l9xh5Y0aEB6
 Af0MJwyVIYhHMqlwfV0tKQSCnLGqLQDce7i25RWxe7fQQzs2RQyE3rhmVbZNfOCiE5ie
 lPCzWB3hfn1m9o6tIyp5ZQ7k15jqE6TrzBS+CJt4JO5iCkHliszYEWiIqHq8ETRcXbOl
 C87N/62KLPLCS1dY6VRVmbz+2QJJEjexbMT+eu56tCHG2udnoPn3IALBnuheFlE+LNgm
 /xCgfD1RoJBARl85QwCV7ngQLe8suUWchqhMbYjTuTQZ171hDRpC1BfKHSdcG/rD3UTG
 5Wfg==
X-Gm-Message-State: APjAAAUtycmqVzhnSmTMjAGsqn54Zl5VRNP9TIifbvai3QbwbX4LyD89
 j1aWy9mlWRLOtkr+7rdvOtGi9SdoRiVH34PWkdTVlQ==
X-Google-Smtp-Source: APXvYqwLHbaV+MVn8ADEG5rsC9AHTUzsGTp3uPaj0H+oC9bba1O2VFWMAaXilcfyk30hLOHCYLEH1lfoUfgDeNjqFd8=
X-Received: by 2002:a5d:6652:: with SMTP id f18mr12942941wrw.246.1579074537570; 
 Tue, 14 Jan 2020 23:48:57 -0800 (PST)
MIME-Version: 1.0
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
In-Reply-To: <20200110122341.8445-3-broonie@kernel.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 15 Jan 2020 08:48:46 +0100
Message-ID: <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_234859_382048_0816E5B4 
X-CRM114-Status: GOOD (  26.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 at 13:23, Mark Brown <broonie@kernel.org> wrote:
>
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

This is slightly unfortunate, as this way, we lose the ability to use
random.trust_cpu=1 to get the entropy credited and initialize CRNG
early.

> Signed-off-by: Mark Brown <broonie@kernel.org>
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
>         return ok;
>  }
>
> +static inline bool __init __early_cpu_has_rndr(void)
> +{
> +       /* Open code as we run prior to the first call to cpufeature. */
> +       unsigned long ftr = read_sysreg_s(SYS_ID_AA64ISAR0_EL1);
> +       return (ftr >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf;
> +}
> +
> +/*
> + * Our ARCH_RANDOM implementation does not function until relatively
> + * late in the boot when cpufeature has detertmined system

determined

> + * capabilities so the core code can't use arch_get_random*() to
> + * initialize, instead we call this function to inject data from
> + * setup_arch() if the boot CPU supports v8.5-RNG.
> + */
> +static inline void __init arm64_add_early_rndr_entropy(void)
> +{
> +       unsigned long val;
> +       int i;
> +
> +       if (!__early_cpu_has_rndr())
> +               return;
> +
> +       /* Add multiple values to mirror the generic code. */
> +       for (i = 0; i < 16; i++)
> +               if (__arm64_rndr(&val))
> +                       add_device_randomness(&val, sizeof(val));
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
>         /* Init percpu seeds for random tags after cpus are set up. */
>         kasan_init_tags();
>
> +       arm64_add_early_rndr_entropy();
> +
>  #ifdef CONFIG_ARM64_SW_TTBR0_PAN
>         /*
>          * Make sure init_thread_info.ttbr0 always generates translation
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
