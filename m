Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E773789D7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMENFiVQk83C3Xje6b6ojnLujsCzwfnb1d/yqJ+Z/Mw=; b=RTYtRWic8gsZvv
	4tAITmdlfH61RYzeJQGeyy+50cYne+bBsJRufG+7ajkFqNbHBZ+i1ObaAr4FzgsUxaUMB7UwKVsdX
	1nPJWmxGROlxoiev5aN0OBVkcOAWRpFG7ts79v4uzXHlhYGZ//JzYKA4H4m6pFFl8MYisFy3EZ1zv
	ApF9fGC97YYEtKFDmYexC+WoaRn8zqJ12/ZF6nLgpDznEr1PKcT4SnHYTcsG0Lu8deAydso8duqWZ
	vq0AfAUCeGuNzSCp7/ZS2dxYmSh8FoRW0CiaNPoq6cYLF+hwZpwUwRqS+w8eLh0us0l1d+XG9J0Rv
	8+uIlCk9wGYAejsT39pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx91N-000501-BV; Mon, 12 Aug 2019 12:01:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hx919-0004z2-4o
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:01:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BA9915AB;
 Mon, 12 Aug 2019 05:01:34 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 450AC3F706;
 Mon, 12 Aug 2019 05:01:33 -0700 (PDT)
Date: Mon, 12 Aug 2019 13:01:26 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ganapatrao Kulkarni <gkulkarni@marvell.com>
Subject: Re: [PATCH v3 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
Message-ID: <20190812120125.GA50712@lakrids.cambridge.arm.com>
References: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
 <1563873380-2003-3-git-send-email-gkulkarni@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563873380-2003-3-git-send-email-gkulkarni@marvell.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_050139_280333_B362A767 
X-CRM114-Status: GOOD (  25.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 "gklkml16@gmail.com" <gklkml16@gmail.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 09:16:28AM +0000, Ganapatrao Kulkarni wrote:
> CCPI2 is a low-latency high-bandwidth serial interface for connecting
> ThunderX2 processors. This patch adds support to capture CCPI2 perf events.

It would be worth pointing out in the commit message how the CCPI2
counters differ from the others. I realise you have that in the body of
patch 1, but it's critical information when reviewing this patch...

> 
> Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
> ---
>  drivers/perf/thunderx2_pmu.c | 248 ++++++++++++++++++++++++++++++-----
>  1 file changed, 214 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
> index 43d76c85da56..a4e1273eafa3 100644
> --- a/drivers/perf/thunderx2_pmu.c
> +++ b/drivers/perf/thunderx2_pmu.c
> @@ -17,22 +17,31 @@
>   */
>  
>  #define TX2_PMU_MAX_COUNTERS		4

Shouldn't this be 8 now?

[...]

>  /*
> - * pmu on each socket has 2 uncore devices(dmc and l3c),
> - * each device has 4 counters.
> + * pmu on each socket has 3 uncore devices(dmc, l3ci and ccpi2),
> + * dmc and l3c has 4 counters and ccpi2 8.
>   */

How about:

/*
 * Each socket has 3 uncore device associated with a PMU. The DMC and
 * L3C have 4 32-bit counters, and the CCPI2 has 8 64-bit counters.
 */

>  struct tx2_uncore_pmu {
>  	struct hlist_node hpnode;
> @@ -69,12 +86,14 @@ struct tx2_uncore_pmu {
>  	int node;
>  	int cpu;
>  	u32 max_counters;
> +	u32 counters_mask;
>  	u32 prorate_factor;
>  	u32 max_events;
> +	u32 events_mask;
>  	u64 hrtimer_interval;
>  	void __iomem *base;
>  	DECLARE_BITMAP(active_counters, TX2_PMU_MAX_COUNTERS);

This bitmap isn't big enough for the 4 new counters.

> -	struct perf_event *events[TX2_PMU_MAX_COUNTERS];
> +	struct perf_event **events;

As above, can't we bump TX2_PMU_MAX_COUNTERS to 8 rather than making
this a dynamic allocation?

[...]

>  static inline u32 reg_readl(unsigned long addr)
>  {
>  	return readl((void __iomem *)addr);
>  }
>  
> +static inline u32 reg_readq(unsigned long addr)
> +{
> +	return readq((void __iomem *)addr);
> +}

Presumably reg_readq() should return a u64.

[...]

> +static void uncore_start_event_ccpi2(struct perf_event *event, int flags)
> +{
> +	u32 emask;
> +	struct hw_perf_event *hwc = &event->hw;
> +	struct tx2_uncore_pmu *tx2_pmu;
> +
> +	tx2_pmu = pmu_to_tx2_pmu(event->pmu);
> +	emask = tx2_pmu->events_mask;
> +
> +	/* Bit [09:00] to set event id, set level and type to 1 */
> +	reg_writel((3 << 10) |

Do you mean that bits [11:10] are level and type?

What exactly are 'level' and 'type'?

Can we give those bits mnemonics?

> +			GET_EVENTID(event, emask), hwc->config_base);
> +	/* reset[4], enable[0] and start[1] counters */

Rather than using magic numbers everywhere, please give these mnemonics,
e.g.

#define CCPI2_PERF_CTL_ENABLE	BIT(0)
#define CCPI2_PERF_CTL_START	BIT(1)
#define CCPI2_PERF_CTL_RESET	BIT(4)

> +	reg_writel(0x13, hwc->event_base + CCPI2_PERF_CTL);

... and then you can OR them in here:

	ctl = CCPI2_PERF_CTL_ENABLE |
	      CCPI2_PERF_CTL_START |
	      CCPI2_PERF_CTL_RESET;
	reg_writel(ctl, hwc->event_base + CCPI2_PERF_CTL);

[...]

> @@ -456,8 +603,9 @@ static void tx2_uncore_event_start(struct perf_event *event, int flags)
>  	tx2_pmu->start_event(event, flags);
>  	perf_event_update_userpage(event);
>  
> -	/* Start timer for first event */
> -	if (bitmap_weight(tx2_pmu->active_counters,
> +	/* Start timer for first non ccpi2 event */
> +	if (tx2_pmu->type != PMU_TYPE_CCPI2 &&
> +			bitmap_weight(tx2_pmu->active_counters,
>  				tx2_pmu->max_counters) == 1) {
>  		hrtimer_start(&tx2_pmu->hrtimer,
>  			ns_to_ktime(tx2_pmu->hrtimer_interval),

This would be easier to read as two statements:

	/* No hrtimer needed with 64-bit counters */
	if (tx2_pmu->type == PMU_TYPE_CCPI2)
		return;
	
	/* Start timer for first event */
	if (bitmap_weight(tx2_pmu->active_counters,
	    tx2_pmu->max_counters) != 1) {
	    	...
	}

> @@ -495,7 +643,8 @@ static int tx2_uncore_event_add(struct perf_event *event, int flags)
>  	if (hwc->idx < 0)
>  		return -EAGAIN;
>  
> -	tx2_pmu->events[hwc->idx] = event;
> +	if (tx2_pmu->events)
> +		tx2_pmu->events[hwc->idx] = event;

So this is NULL for CCPI2?

I guess we don't strictly need the if we don't have a hrtimer to update
event counts, but this makes the code more complicated than it needs to
be.

[...]

> @@ -580,8 +732,12 @@ static int tx2_uncore_pmu_add_dev(struct tx2_uncore_pmu *tx2_pmu)
>  			cpu_online_mask);
>  
>  	tx2_pmu->cpu = cpu;
> -	hrtimer_init(&tx2_pmu->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
> -	tx2_pmu->hrtimer.function = tx2_hrtimer_callback;
> +	/* CCPI2 counters are 64 bit counters, no overflow  */
> +	if (tx2_pmu->type != PMU_TYPE_CCPI2) {
> +		hrtimer_init(&tx2_pmu->hrtimer,
> +				CLOCK_MONOTONIC, HRTIMER_MODE_REL);
> +		tx2_pmu->hrtimer.function = tx2_hrtimer_callback;
> +	}

Hmmm... this means that tx2_pmu->hrtimer.function is NULL for the CCPI2
PMU. I think it would be best to check that when (re)programming the
counters rather than the PMU type. For example, in
tx2_uncore_event_start() we could have:

	if (!tx2_pmu->hrtimer.function)
		return;
	if (bitmap_weight(tx2_pmu->active_counters,
	    tx2_pmu->max_counters) != 1) {
	    	...
	}

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
