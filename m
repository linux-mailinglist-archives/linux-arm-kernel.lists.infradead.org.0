Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06A12190D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 15:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7HKDnnW6T5wNSG7J6AhIH+SuwTT2ljehe8YRGbHwvM=; b=OMY1ZjFcu/15qV
	4f/8J5uuR3+1YS9J/dEVpbq9xmEKJqlFfTXh/u6ZOWsqezG4b2/eLriDjB9GGDVw5H9zJukhH076Y
	+NdK6TG/oRkHOv6kFdB2X40CaYg1cOSmLwArMCjOP/BYVMB9+3AZNwUdex4jeH7Nl7BaqRZi8/+RJ
	NFnZuoa3/r4iupiRNPWI3Rd4iJxvtksHhlB4pzTh66xoDL8ICcJ8LE8bzFjqzdQSN4neDmjz7LQN+
	PbGL+jS28DroqCfSoJwvb0+41UxjVUr2mcGvYR2UlkOec9Vf/lhOmFzx23c7gQpngloySizA5sl4c
	QtxSC17uQmM91wjePopg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRcns-0003dE-DH; Fri, 17 May 2019 13:21:40 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRcnl-0003cW-9L
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 13:21:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 72B8A1715;
 Fri, 17 May 2019 06:21:29 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ECE1D3F5AF;
 Fri, 17 May 2019 06:21:27 -0700 (PDT)
Date: Fri, 17 May 2019 14:21:25 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [PATCH 3/6] arm64: pmu: Add function implementation to update
 event index in userpage.
Message-ID: <20190517132124.GB48991@lakrids.cambridge.arm.com>
References: <20190516132148.10085-1-raphael.gault@arm.com>
 <20190516132148.10085-4-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516132148.10085-4-raphael.gault@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_062133_338900_0D58638E 
X-CRM114-Status: GOOD (  22.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 02:21:45PM +0100, Raphael Gault wrote:
> In order to be able to access the counter directly for userspace,
> we need to provide the index of the counter using the userpage.
> We thus need to override the event_idx function to retrieve and
> convert the perf_event index to armv8 hardware index.

It would be worth noting that since the arm_pmu framework can be used
with other versions of the PMU architecture which could not permit safe
userspace access, we allow the arch code to opt-in with the
ARMPMU_EL0_RD_CNTR flag.

> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  arch/arm64/kernel/perf_event.c |  4 ++++
>  drivers/perf/arm_pmu.c         | 10 ++++++++++
>  include/linux/perf/arm_pmu.h   |  2 ++
>  3 files changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 6164d389eed6..e6316f99f66b 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -890,6 +890,8 @@ static int __armv8_pmuv3_map_event(struct perf_event *event,
>  	if (armv8pmu_event_is_64bit(event))
>  		event->hw.flags |= ARMPMU_EVT_64BIT;
>  
> +	event->hw.flags |= ARMPMU_EL0_RD_CNTR;
> +
>  	/* Only expose micro/arch events supported by this PMU */
>  	if ((hw_event_id > 0) && (hw_event_id < ARMV8_PMUV3_MAX_COMMON_EVENTS)
>  	    && test_bit(hw_event_id, armpmu->pmceid_bitmap)) {
> @@ -1188,6 +1190,8 @@ void arch_perf_update_userpage(struct perf_event *event,
>  	 */
>  	freq = arch_timer_get_rate();
>  	userpg->cap_user_time = 1;
> +	userpg->cap_user_rdpmc =
> +		!!(event->hw.flags & ARMPMU_EL0_RD_CNTR);

This is under 80 columns when placed on a single line, so it doesn't
need to be split here.

>  
>  	clocks_calc_mult_shift(&userpg->time_mult, &shift, freq,
>  			NSEC_PER_SEC, 0);
> diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
> index eec75b97e7ea..3f4c2ec7ff89 100644
> --- a/drivers/perf/arm_pmu.c
> +++ b/drivers/perf/arm_pmu.c
> @@ -777,6 +777,15 @@ static void cpu_pmu_destroy(struct arm_pmu *cpu_pmu)
>  					    &cpu_pmu->node);
>  }
>  
> +
> +static int armpmu_event_idx(struct perf_event *event)
> +{
> +	if (!(event->hw.flags & ARMPMU_EL0_RD_CNTR))
> +		return 0;
> +
> +	return event->hw.idx;

I think this needs to remap ARMV8_IDX_CYCLE_COUNTER to 32, to match the
offset applie to the rest of counter indices.

Otherwise, this looks good to me.

Thanks,
Mark.

> +}
> +
>  static struct arm_pmu *__armpmu_alloc(gfp_t flags)
>  {
>  	struct arm_pmu *pmu;
> @@ -803,6 +812,7 @@ static struct arm_pmu *__armpmu_alloc(gfp_t flags)
>  		.start		= armpmu_start,
>  		.stop		= armpmu_stop,
>  		.read		= armpmu_read,
> +		.event_idx	= armpmu_event_idx,
>  		.filter_match	= armpmu_filter_match,
>  		.attr_groups	= pmu->attr_groups,
>  		/*
> diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
> index 4641e850b204..3bef390c1069 100644
> --- a/include/linux/perf/arm_pmu.h
> +++ b/include/linux/perf/arm_pmu.h
> @@ -30,6 +30,8 @@
>   */
>  /* Event uses a 64bit counter */
>  #define ARMPMU_EVT_64BIT		1
> +/* Allow access to hardware counter from userspace */
> +#define ARMPMU_EL0_RD_CNTR		2
>  
>  #define HW_OP_UNSUPPORTED		0xFFFF
>  #define C(_x)				PERF_COUNT_HW_CACHE_##_x
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
