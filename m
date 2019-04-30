Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5DBF334
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:43:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R00hvKiu7vvhLQGVW228zUJoUmG1J8rXIxJXdX7qXjY=; b=ih4ZdDte1XY6sI
	roU0htHkAoFe1HoGzRwANezQRG3dd9d8xOOAoBQUV/1/82aB0k7sNukQnWugfm7zkn96x7wo2Nsn/
	qx21pkLoywdkgx2GtrfPz9JsKDKen7f8WNPrXpCCKRjlgKE4XpBMItDn/wfL9/lkmTuVt//4w1BvA
	QOrEsADRtxBfqJsm/BnVwK4zw2vghzPDPQoWmYXKMhvo9/w41yJTnzQ5hhY82TmcEeGoHaLwAdAxf
	9k+nxy8S3xmPyzkhDb0VJGSuuznmyhLSewr8Cw94lpnJIGq7bjJvNvxcSifpXPGA1bCvW3deQPdaf
	4P7q90aZ+YOjJFM+hhAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPHz-00062p-1V; Tue, 30 Apr 2019 09:43:03 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPHq-00062R-AP
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 09:42:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E147780D;
 Tue, 30 Apr 2019 02:42:52 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E97733F5C1;
 Tue, 30 Apr 2019 02:42:51 -0700 (PDT)
Subject: Re: [PATCH] arm64: arch_timer: Ensure counter register reads occur
 with seqlock held
To: Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20190429165912.9497-1-will.deacon@arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <8d251693-8ee0-a0f2-8a59-34939e6cede1@arm.com>
Date: Tue, 30 Apr 2019 10:42:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429165912.9497-1-will.deacon@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_024254_375126_BBEB7654 
X-CRM114-Status: GOOD (  24.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marc Zyngier <marc.zyngier@arm.com>, tglx@linutronix.de,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 29/04/2019 17:59, Will Deacon wrote:
> When executing clock_gettime(), either in the vDSO or via a system call,
> we need to ensure that the read of the counter register occurs within
> the seqlock reader critical section. This ensures that updates to the
> clocksource parameters (e.g. the multiplier) are consistent with the
> counter value and therefore avoids the situation where time appears to
> go backwards across multiple reads.
> 
> Extend the vDSO logic so that the seqlock critical section covers the
> read of the counter register as well as accesses to the data page. Since
> reads of the counter system registers are not ordered by memory barrier
> instructions, introduce dependency ordering from the counter read to a
> subsequent memory access so that the seqlock memory barriers apply to
> the counter access in both the vDSO and the system call paths.
> 

I tested it and seems ok to me, based on this:
Tested-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

-- 
Regards,
Vincenzo

> Cc: <stable@vger.kernel.org>
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Link: https://lore.kernel.org/linux-arm-kernel/alpine.DEB.2.21.1902081950260.1662@nanos.tec.linutronix.de/
> Reported-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> ---
>  arch/arm64/include/asm/arch_timer.h   | 33 +++++++++++++++++++++++++++++++--
>  arch/arm64/kernel/vdso/gettimeofday.S | 15 +++++++++++----
>  2 files changed, 42 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/arch_timer.h b/arch/arm64/include/asm/arch_timer.h
> index f2a234d6516c..93e07512b4b6 100644
> --- a/arch/arm64/include/asm/arch_timer.h
> +++ b/arch/arm64/include/asm/arch_timer.h
> @@ -148,18 +148,47 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
>  	isb();
>  }
>  
> +/*
> + * Ensure that reads of the counter are treated the same as memory reads
> + * for the purposes of ordering by subsequent memory barriers.
> + *
> + * This insanity brought to you by speculative system register reads,
> + * out-of-order memory accesses, sequence locks and Thomas Gleixner.
> + *
> + * http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631195.html
> + */
> +#define arch_counter_enforce_ordering(val) do {				\
> +	u64 tmp, _val = (val);						\
> +									\
> +	asm volatile(							\
> +	"	eor	%0, %1, %1\n"					\
> +	"	add	%0, sp, %0\n"					\
> +	"	ldr	xzr, [%0]"					\
> +	: "=r" (tmp) : "r" (_val));					\
> +} while (0)
> +
>  static inline u64 arch_counter_get_cntpct(void)
>  {
> +	u64 cnt;
> +
>  	isb();
> -	return arch_timer_reg_read_stable(cntpct_el0);
> +	cnt = arch_timer_reg_read_stable(cntpct_el0);
> +	arch_counter_enforce_ordering(cnt);
> +	return cnt;
>  }
>  
>  static inline u64 arch_counter_get_cntvct(void)
>  {
> +	u64 cnt;
> +
>  	isb();
> -	return arch_timer_reg_read_stable(cntvct_el0);
> +	cnt = arch_timer_reg_read_stable(cntvct_el0);
> +	arch_counter_enforce_ordering(cnt);
> +	return cnt;
>  }
>  
> +#undef arch_counter_enforce_ordering
> +
>  static inline int arch_timer_arch_init(void)
>  {
>  	return 0;
> diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vdso/gettimeofday.S
> index 21805e416483..856fee6d3512 100644
> --- a/arch/arm64/kernel/vdso/gettimeofday.S
> +++ b/arch/arm64/kernel/vdso/gettimeofday.S
> @@ -73,6 +73,13 @@ x_tmp		.req	x8
>  	movn	x_tmp, #0xff00, lsl #48
>  	and	\res, x_tmp, \res
>  	mul	\res, \res, \mult
> +	/*
> +	 * Fake address dependency from the value computed from the counter
> +	 * register to subsequent data page accesses so that the sequence
> +	 * locking also orders the read of the counter.
> +	 */
> +	and	x_tmp, \res, xzr
> +	add	vdso_data, vdso_data, x_tmp
>  	.endm
>  
>  	/*
> @@ -147,12 +154,12 @@ ENTRY(__kernel_gettimeofday)
>  	/* w11 = cs_mono_mult, w12 = cs_shift */
>  	ldp	w11, w12, [vdso_data, #VDSO_CS_MONO_MULT]
>  	ldp	x13, x14, [vdso_data, #VDSO_XTIME_CLK_SEC]
> -	seqcnt_check fail=1b
>  
>  	get_nsec_per_sec res=x9
>  	lsl	x9, x9, x12
>  
>  	get_clock_shifted_nsec res=x15, cycle_last=x10, mult=x11
> +	seqcnt_check fail=1b
>  	get_ts_realtime res_sec=x10, res_nsec=x11, \
>  		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
>  
> @@ -211,13 +218,13 @@ realtime:
>  	/* w11 = cs_mono_mult, w12 = cs_shift */
>  	ldp	w11, w12, [vdso_data, #VDSO_CS_MONO_MULT]
>  	ldp	x13, x14, [vdso_data, #VDSO_XTIME_CLK_SEC]
> -	seqcnt_check fail=realtime
>  
>  	/* All computations are done with left-shifted nsecs. */
>  	get_nsec_per_sec res=x9
>  	lsl	x9, x9, x12
>  
>  	get_clock_shifted_nsec res=x15, cycle_last=x10, mult=x11
> +	seqcnt_check fail=realtime
>  	get_ts_realtime res_sec=x10, res_nsec=x11, \
>  		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
>  	clock_gettime_return, shift=1
> @@ -231,7 +238,6 @@ monotonic:
>  	ldp	w11, w12, [vdso_data, #VDSO_CS_MONO_MULT]
>  	ldp	x13, x14, [vdso_data, #VDSO_XTIME_CLK_SEC]
>  	ldp	x3, x4, [vdso_data, #VDSO_WTM_CLK_SEC]
> -	seqcnt_check fail=monotonic
>  
>  	/* All computations are done with left-shifted nsecs. */
>  	lsl	x4, x4, x12
> @@ -239,6 +245,7 @@ monotonic:
>  	lsl	x9, x9, x12
>  
>  	get_clock_shifted_nsec res=x15, cycle_last=x10, mult=x11
> +	seqcnt_check fail=monotonic
>  	get_ts_realtime res_sec=x10, res_nsec=x11, \
>  		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
>  
> @@ -253,13 +260,13 @@ monotonic_raw:
>  	/* w11 = cs_raw_mult, w12 = cs_shift */
>  	ldp	w12, w11, [vdso_data, #VDSO_CS_SHIFT]
>  	ldp	x13, x14, [vdso_data, #VDSO_RAW_TIME_SEC]
> -	seqcnt_check fail=monotonic_raw
>  
>  	/* All computations are done with left-shifted nsecs. */
>  	get_nsec_per_sec res=x9
>  	lsl	x9, x9, x12
>  
>  	get_clock_shifted_nsec res=x15, cycle_last=x10, mult=x11
> +	seqcnt_check fail=monotonic_raw
>  	get_ts_clock_raw res_sec=x10, res_nsec=x11, \
>  		clock_nsec=x15, nsec_to_sec=x9
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
