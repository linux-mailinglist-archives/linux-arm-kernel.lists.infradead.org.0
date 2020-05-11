Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8741CD4D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yz3SWarAIQIuUkJ6d4jjSWldv+r2ipRxB7AxZC/30UQ=; b=X0pWbOd2Atr6+/
	4JizfDJbpPnNsVqnUoAsEZy0UxRMWiAGLQ0zv72evdzEt1g5HTitJYivs0UdGab0T44JRxu2nfrB+
	vBsVCAo/3ctz4a1rsl1BAmmUCs3i8MWNSaH9hStsYoO7ARPNjArtAmhGiT6VLFyXDyMC05tfksVqL
	sY+C4U3K4oqX9VUuytY0ie5FpcI44EWG4VkF1cWFLHbfTpwm2mJklAfxDdbEeLcKq+LZLlsS6gLwN
	4TeN2B96ewwxoW/ncOcqzeYGAcjFcrbI9Bbfc+UW8q8d1L6kW/GtK/Fz6ZB5X2nO6YtxqLvV69TD6
	c72ByqrHaV0+s2iotlIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4gi-0006ea-VJ; Mon, 11 May 2020 09:25:28 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4gb-0006eF-BY; Mon, 11 May 2020 09:25:21 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 59922301A80;
 Mon, 11 May 2020 11:25:19 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 450F2203C0863; Mon, 11 May 2020 11:25:19 +0200 (CEST)
Date: Mon, 11 May 2020 11:25:19 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 0/3] arm64: perf_event: Fix time offset prior to epoch
Message-ID: <20200511092519.GA3001@hirez.programming.kicks-ass.net>
References: <20200505135544.6003-1-leo.yan@linaro.org>
 <20200511092200.GF2957@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511092200.GF2957@hirez.programming.kicks-ass.net>
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
 Kate Stewart <kstewart@linuxfoundation.org>, Enrico Weigelt <info@metux.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Paul Cercueil <paul@crapouillou.net>,
 Alexios Zavras <alexios.zavras@intel.com>,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 11:22:00AM +0200, Peter Zijlstra wrote:

> (_completely_ untested)
> 
> ---
>  arch/arm64/kernel/perf_event.c | 27 ++++++++++++++++++---------
>  include/linux/sched_clock.h    | 28 ++++++++++++++++++++++++++++
>  kernel/time/sched_clock.c      | 41 +++++++++++++----------------------------
>  3 files changed, 59 insertions(+), 37 deletions(-)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 4d7879484cec..81a49a916660 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -1165,28 +1165,37 @@ device_initcall(armv8_pmu_driver_init)
>  void arch_perf_update_userpage(struct perf_event *event,
>  			       struct perf_event_mmap_page *userpg, u64 now)
>  {
> -	u32 freq;
> -	u32 shift;
> +	struct clock_read_data *rd;
> +	unsigned int seq;
>  
>  	/*
>  	 * Internal timekeeping for enabled/running/stopped times
>  	 * is always computed with the sched_clock.
>  	 */
> -	freq = arch_timer_get_rate();
>  	userpg->cap_user_time = 1;
> +	userpg->cap_user_time_zero = 1;
> +
> +	do {
> +		rd = sched_clock_read_begin(&seq);
> +
> +		userpg->time_mult = rd->mult;
> +		userpg->time_shift = rd->shift;
> +		userpg->time_offset = rd->epoch_ns;

			^^^^^^^ wants to be time_zero

> +
> +		userpg->time_zero -= (rd->epoch_cyc * rd->shift) >> rd->shift;
> +
> +	} while (sched_clock_read_retry(seq));
> +
> +	userpg->time_offset = userpf->time_zero - now;
>  
> -	clocks_calc_mult_shift(&userpg->time_mult, &shift, freq,
> -			NSEC_PER_SEC, 0);

And that ^^^ was complete crap.

>  	/*
>  	 * time_shift is not expected to be greater than 31 due to
>  	 * the original published conversion algorithm shifting a
>  	 * 32-bit value (now specifies a 64-bit value) - refer
>  	 * perf_event_mmap_page documentation in perf_event.h.
>  	 */
> -	if (shift == 32) {
> -		shift = 31;
> +	if (userpg->time_shift == 32) {
> +		userpg->time_shift = 31;
>  		userpg->time_mult >>= 1;
>  	}
> -	userpg->time_shift = (u16)shift;
> -	userpg->time_offset = -now;
>  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
