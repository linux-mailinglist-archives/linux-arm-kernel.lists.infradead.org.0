Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C6E56764
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 13:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDTUoBebgyS4/1A+QUcz3a6woikk7VxZbQgg9l6LTAM=; b=O2oZ9y5R9gWdmE
	frDDzQbmf/qmImqNaaFAnbzSVHDjfBIoPIfB1fpHUvPeJay1WSlHGBdm6CkAZlVRk3LVQ68YcBtdG
	leHgCe9Hk3m8Pj7cVKG6A1up2fVy6K8s9qvBv7tF1hotI7Mr1FvVLKg80kfMZrBOPpYT7UYA+Zv4R
	SO4Bn3V4NQqF0o2MOzF8BDvxIy9KwihMPTPT7Bb3C9ncnfZHaeFIG4lLTfLv8FOG+rh1Bqo1WW30c
	ApbPvSJlkHdrIlp679fjd32qA8kOklFZqf3X03ntJgj/Eg2nGeb53oqAcw1rKinj5sWbyaSzkb+RA
	RL3lvuIKouFH1ZgX/GZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg5nA-0003vc-37; Wed, 26 Jun 2019 11:08:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg5n0-0003uq-IP
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 11:08:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E47E9D6E;
 Wed, 26 Jun 2019 04:08:33 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C3E43F718;
 Wed, 26 Jun 2019 04:08:31 -0700 (PDT)
Subject: Re: lib/vdso: Make delta calculation work correctly
To: Thomas Gleixner <tglx@linutronix.de>
References: <20190624133607.GI29497@fuggles.cambridge.arm.com>
 <20190625161804.38713-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906251851350.32342@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1906260832470.32342@nanos.tec.linutronix.de>
 <4ff43de4-fe51-eed4-a155-31a05edf2f11@arm.com>
 <alpine.DEB.2.21.1906261159230.32342@nanos.tec.linutronix.de>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <601481b9-aced-d03c-03a3-3de36bc58ffb@arm.com>
Date: Wed, 26 Jun 2019 12:08:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1906261159230.32342@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_040834_708515_621E922D 
X-CRM114-Status: GOOD (  32.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arch@vger.kernel.org, shuah@kernel.org, sthotton@marvell.com,
 andre.przywara@arm.com, Arnd Bergmann <arnd@arndb.de>, huw@codeweavers.com,
 catalin.marinas@arm.com, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, paul.burton@mips.com,
 linux-kselftest@vger.kernel.org, linux@rasmusvillemoes.dk,
 linux@armlinux.org.uk, 0x7f454c46@gmail.com, salyzyn@android.com,
 pcc@google.com, LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On 26/06/2019 11:02, Thomas Gleixner wrote:
> The x86 vdso implementation on which the generic vdso library is based on
> has subtle (unfortunately undocumented) twists:
> 
>  1) The code assumes that the clocksource mask is U64_MAX which means that
>     no bits are masked. Which is true for any valid x86 VDSO clocksource.
>     Stupidly it still did the mask operation for no reason and at the wrong
>     place right after reading the clocksource.
> 
>  2) It contains a sanity check to catch the case where slightly
>     unsynchronized TSC values can be overserved which would cause the delta
>     calculation to make a huge jump. It therefore checks whether the
>     current TSC value is larger than the value on which the current
>     conversion is based on. If it's not larger the base value is used to
>     prevent time jumps.
> 
> #1 Is not only stupid for the X86 case because it does the masking for no
> reason it is also completely wrong for clocksources with a smaller mask
> which can legitimately wrap around during a conversion period. The core
> timekeeping code does it correct by applying the mask after the delta
> calculation:
> 
> 	(now - base) & mask
> 
> #2 is equally broken for clocksources which have smaller masks and can wrap
> around during a conversion period because there the now > base check is
> just wrong and causes stale time stamps and time going backwards issues.
> 
> Unbreak it by:
> 
>   1) Removing the mask operation from the clocksource read which makes the
>      fallback detection work for all clocksources
> 
>   2) Replacing the conditional delta calculation with a overrideable inline
>      function.
> 
> #2 could reuse clocksource_delta() from the timekeeping code but that
> results in a significant performance hit for the x86 VSDO. The timekeeping
> core code must have the non optimized version as it has to operate
> correctly with clocksources which have smaller masks as well to handle the
> case where TSC is discarded as timekeeper clocksource and replaced by HPET
> or pmtimer. For the VDSO there is no replacement clocksource. If TSC is
> unusable the syscall is enforced which does the right thing.
> 
> To accomodate to the needs of various architectures provide an overrideable
> inline function which defaults to the regular delta calculation with
> masking:
> 
> 	(now - base) & mask
> 
> Override it for x86 with the non-masking and checking version.
> 
> This unbreaks the ARM64 syscall fallback operation, allows to use
> clocksources with arbitrary width and preserves the performance
> optimization for x86.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

A part a typo that leads to compilation errors on non-x86 platforms the rest
looks fine by me.

I tested it on arm64 and behaves correctly.

With this:

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> ---
>  arch/x86/include/asm/vdso/gettimeofday.h |   27 +++++++++++++++++++++++++++
>  lib/vdso/gettimeofday.c                  |   19 +++++++++++++++----
>  2 files changed, 42 insertions(+), 4 deletions(-)
> 
> --- a/arch/x86/include/asm/vdso/gettimeofday.h
> +++ b/arch/x86/include/asm/vdso/gettimeofday.h
> @@ -229,6 +229,33 @@ static __always_inline const struct vdso
>  	return __vdso_data;
>  }
>  
> +/*
> + * x86 specific delta calculation.
> + *
> + * The regular implementation assumes that clocksource reads are globally
> + * monotonic. The TSC can be slightly off across sockets which can cause
> + * the regular delta calculation (@cycles - @last) to return a huge time
> + * jump.
> + *
> + * Therefore it needs to be verified that @cycles are greater than
> + * @last. If not then use @last, which is the base time of the current
> + * conversion period.
> + *
> + * This variant also removes the masking of the subtraction because the
> + * clocksource mask of all VDSO capable clocksources on x86 is U64_MAX
> + * which would result in a pointless operation. The compiler cannot
> + * optimize it away as the mask comes from the vdso data and is not compile
> + * time constant.
> + */
> +static __always_inline
> +u64 vdso_calc_delta(u64 cycles, u64 last, u64 mask, u32 mult)
> +{
> +	if (cycles > last)
> +		return (cycles - last) * mult;
> +	return 0;
> +}
> +#define vdso_calc_delta vdso_calc_delta
> +
>  #endif /* !__ASSEMBLY__ */
>  
>  #endif /* __ASM_VDSO_GETTIMEOFDAY_H */
> --- a/lib/vdso/gettimeofday.c
> +++ b/lib/vdso/gettimeofday.c
> @@ -26,6 +26,18 @@
>  #include <asm/vdso/gettimeofday.h>
>  #endif /* ENABLE_COMPAT_VDSO */
>  
> +#ifndef vdso_calc_delta
> +/*
> + * Default implementation which works for all sane clocksources. That
> + * obviously excludes x86/TSC.
> + */
> +static __always_inline
> +u64 vdso_calc_delta(u64 cycles, u64 last, u64 mask, u32 mult)
> +{
> +	return ((cyles - last) & mask) * mult;

Typo here:

s/cyles/cycles/

> +}
> +#endif
> +
>  static int do_hres(const struct vdso_data *vd, clockid_t clk,
>  		   struct __kernel_timespec *ts)
>  {
> @@ -35,14 +47,13 @@ static int do_hres(const struct vdso_dat
>  
>  	do {
>  		seq = vdso_read_begin(vd);
> -		cycles = __arch_get_hw_counter(vd->clock_mode) &
> -			vd->mask;
> +		cycles = __arch_get_hw_counter(vd->clock_mode);
>  		ns = vdso_ts->nsec;
>  		last = vd->cycle_last;
>  		if (unlikely((s64)cycles < 0))
>  			return clock_gettime_fallback(clk, ts);
> -		if (cycles > last)
> -			ns += (cycles - last) * vd->mult;
> +
> +		ns += vdso_calc_delta(cycles, last, vd->mask, vd->mult);
>  		ns >>= vd->shift;
>  		sec = vdso_ts->sec;
>  	} while (unlikely(vdso_read_retry(vd, seq)));
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
