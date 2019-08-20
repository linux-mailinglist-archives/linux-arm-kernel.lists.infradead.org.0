Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762DA9649A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkGIrn54b9Bl1MMJXO5Vee48xZSerL1ui19IARypzAI=; b=aY71wTFzba4boM
	JRGWYPjlYFlxzaBA1MbSS+vTnvsSeAfvIz+WCpZFNwwqIneYh4GpMcHEVlJOrrtVibYxJ06SE1Z8y
	H+fuOwVOt+gzLl3uPKAYsnAhNJFeqYIrlQXOPT88vfqJJzG8mu9IGSsh3R8CwcnqDDLcFIBoeCJcx
	POMviCpZgOy/tCIsOAMKn/2RF4owY8EIcvOvQUPGsHiQQndvVp8haTngEbl4LjDaG0ky3jnpkbn0y
	Lg9YBe70sggvNjMO7JY2iUwudw1CizBPS0qWiajPs9qbojQh7WKNiQ77+9ynW9r8YCuvOetYCw5Ap
	o/s2qpfhjceoECtd9kEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06AI-0001lG-4z; Tue, 20 Aug 2019 15:35:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i06A3-00016w-5y
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:35:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E9B928;
 Tue, 20 Aug 2019 08:35:02 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 34F753F246;
 Tue, 20 Aug 2019 08:35:01 -0700 (PDT)
Date: Tue, 20 Aug 2019 16:34:51 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [PATCH v3 3/5] arm64: pmu: Add function implementation to update
 event index in userpage.
Message-ID: <20190820153450.GA43412@lakrids.cambridge.arm.com>
References: <20190816125934.18509-1-raphael.gault@arm.com>
 <20190816125934.18509-4-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816125934.18509-4-raphael.gault@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_083503_321002_1E12961F 
X-CRM114-Status: GOOD (  25.18  )
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 01:59:32PM +0100, Raphael Gault wrote:
> In order to be able to access the counter directly for userspace,
> we need to provide the index of the counter using the userpage.
> We thus need to override the event_idx function to retrieve and
> convert the perf_event index to armv8 hardware index.
> 
> Since the arm_pmu driver can be used by any implementation, even
> if not armv8, two components play a role into making sure the
> behaviour is correct and consistent with the PMU capabilities:
> 
> * the ARMPMU_EL0_RD_CNTR flag which denotes the capability to access
> counter from userspace.
> * the event_idx call back, which is implemented and initialized by
> the PMU implementation: if no callback is provided, the default
> behaviour applies, returning 0 as index value.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  arch/arm64/kernel/perf_event.c | 22 ++++++++++++++++++++++
>  include/linux/perf/arm_pmu.h   |  2 ++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index a0b4f1bca491..9fe3f6909513 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -818,6 +818,22 @@ static void armv8pmu_clear_event_idx(struct pmu_hw_events *cpuc,
>  		clear_bit(idx - 1, cpuc->used_mask);
>  }
>  
> +static int armv8pmu_access_event_idx(struct perf_event *event)
> +{
> +	if (!(event->hw.flags & ARMPMU_EL0_RD_CNTR))
> +		return 0;
> +
> +	/*
> +	 * We remap the cycle counter index to 32 to
> +	 * match the offset applied to the rest of
> +	 * the counter indeces.

Typo: s/indeces/indices/

> +	 */
> +	if (event->hw.idx == ARMV8_IDX_CYCLE_COUNTER)
> +		return 32;
> +
> +	return event->hw.idx;
> +}
> +
>  /*
>   * Add an event filter to a given event.
>   */
> @@ -911,6 +927,9 @@ static int __armv8_pmuv3_map_event(struct perf_event *event,
>  	if (armv8pmu_event_is_64bit(event))
>  		event->hw.flags |= ARMPMU_EVT_64BIT;
>  
> +	if (!cpus_have_const_cap(ARM64_HAS_HETEROGENEOUS_PMU))
> +		event->hw.flags |= ARMPMU_EL0_RD_CNTR;
> +
>  	/* Only expose micro/arch events supported by this PMU */
>  	if ((hw_event_id > 0) && (hw_event_id < ARMV8_PMUV3_MAX_COMMON_EVENTS)
>  	    && test_bit(hw_event_id, armpmu->pmceid_bitmap)) {
> @@ -1031,6 +1050,8 @@ static int armv8_pmu_init(struct arm_pmu *cpu_pmu)
>  	cpu_pmu->set_event_filter	= armv8pmu_set_event_filter;
>  	cpu_pmu->filter_match		= armv8pmu_filter_match;
>  
> +	cpu_pmu->pmu.event_idx		= armv8pmu_access_event_idx;
> +
>  	return 0;
>  }
>  
> @@ -1209,6 +1230,7 @@ void arch_perf_update_userpage(struct perf_event *event,
>  	 */
>  	freq = arch_timer_get_rate();
>  	userpg->cap_user_time = 1;
> +	userpg->cap_user_rdpmc = !!(event->hw.flags & ARMPMU_EL0_RD_CNTR);

For bisectability, we should only expose this to userspace once we have
the code to enable/disable it, so the code exposing the index and
setting up the user page cap needs to be added after the context switch
code.

Thanks,
Mark.

>  
>  	clocks_calc_mult_shift(&userpg->time_mult, &shift, freq,
>  			NSEC_PER_SEC, 0);
> diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
> index 71f525a35ac2..1106a9ac00fd 100644
> --- a/include/linux/perf/arm_pmu.h
> +++ b/include/linux/perf/arm_pmu.h
> @@ -26,6 +26,8 @@
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
