Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E37B1CF65F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGSNojI6iANcFkV+XaTkyYZw63g9d5zhsuJk1BANiTo=; b=r4MydrCLTRZrDa
	8G455c1egavA/FV/He5NYjlTD85ht0WSDS6Yuu9qD/+mBTJm645CWB4HwsjtZ7I01oamHNeG+0krN
	c4MHCBgR9GTcZY4QF37DMjCeL7UBhkFdYyzTu67Nqn8opyxeUyY+hdNEQx5WaMrI4jgjhQ/cUYHmE
	YzB3RCZ8g0PxAb21A3nXez3TgsfqMwGZkZdlJDTxYh82mx7gwss1S8kfrlPK6uSoP4PJqqX8cZG/l
	f2nBbDbjWXIOGblaw3hGAqN/bSWEODKuZhT7NN2cIJvdjO0yXt+RzI279KmDJhdkb534X2xy8xBV5
	/wo+dMY8zMy2ajTqEBJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYVV0-0000dc-Kh; Tue, 12 May 2020 14:03:10 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYVUr-0000d7-Jx
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:03:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id l12so6190822pgr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 07:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KPYkLoC2C4Sk/B5wg5r+gTORkTgExyx51OnDHmLxSUM=;
 b=daSDd8Ykcoy3ZAgXDfNp4Qq7j5H15ZyalpHRs1vZcye7jWW948+4CnUfx5QZKxEMRS
 Ph2k67EtLEwvVEAhajcDTkiOmNkNlbtfCowAiI4ciquyj+VakuEd6nss0GnWvuyy1HaU
 My6VjjZg4Wm2A5yo36QDUijDCMnGv2ei+ptMcKRnmyWan+YOYREjwR8wttEz8mys8lLO
 t0zQvvWT8xCwxpmdG/xlSRsHnbl/awwZ6JSwhexTxDD9UEMfJ3bL2ct5/bR8AvxUsZWT
 YrwXMcRVUCCuAF/sjsE/0T1VmPGC7A0bTKISpMi4m1VHRUWL3vslSIurwXm+mI6TlAss
 POBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KPYkLoC2C4Sk/B5wg5r+gTORkTgExyx51OnDHmLxSUM=;
 b=tyJmLLEuoGCZTBe13Ax2GAO/6Vv3zjyEk8RqUJKh22B3KNIBCgNk1tjiRzOWif6c7E
 BD8XULADSwPIY1CFU4BcdYZNV0+LP3FHqsUk8gv0Kfwmmvp8ZhHS4kvdeabCuGxwJj1U
 9ZDm4iXgYqmA8jIHvHZGJuda5ENVYeRaPSvUzlP3Ncy07dgh7bFwC7ode9Yn/XPmbawY
 JAHpCNMwzniu+JL/pGhKE51SVFt8eYfA5Uj1zg66/QeI96VI9awatu/uSXubHijnKmUF
 yHDf6PJuRX2KNyM7g2Fv6CFZ0s22HDbmv8v3liiKRhSYiSv8gT5btN/3oVLj9V3IWDxh
 7Eyg==
X-Gm-Message-State: AGi0PubuOdLBhNTCys4t/eqKmOsOqIiPNlBEXFOVsm8DK9A8e/vczZ7H
 oAGlHxESYDlKp1uboSXCDK9QdA==
X-Google-Smtp-Source: APiQypKllb4iXt3nc66JTP97CFDAti23azw7/y3W2VOej8f/d+P0OaTmD8JGFLP50XpX306Bk/r5DA==
X-Received: by 2002:a63:d909:: with SMTP id r9mr18992558pgg.245.1589292180928; 
 Tue, 12 May 2020 07:03:00 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id t12sm10581769pgm.37.2020.05.12.07.02.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 May 2020 07:03:00 -0700 (PDT)
Date: Tue, 12 May 2020 22:03:01 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 2/5] arm64: perf: Implement correct cap_user_time
Message-ID: <20200512140301.GC20352@leoy-ThinkPad-X240s>
References: <20200512124058.833263033@infradead.org>
 <20200512124450.824507755@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512124450.824507755@infradead.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_070301_658825_03447C80 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2600:3c01:0:0:f03c:91ff:fe8a:bb03 listed in] [zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, alexander.shishkin@linux.intel.com,
 Marc Zyngier <maz@kernel.org>, jolsa@redhat.com, daniel.lezcano@linaro.org,
 sboyd@codeaurora.org, linux-kernel@vger.kernel.org, acme@kernel.org,
 mingo@redhat.com, john.stultz@linaro.org,
 Catalin Marinas <catalin.marinas@arm.com>, tglx@linutronix.de,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On Tue, May 12, 2020 at 02:41:00PM +0200, Peter Zijlstra wrote:
> As reported by Leo; the existing implementation is broken when the
> clock and counter don't intersect at 0.
> 
> Use the sched_clock's struct clock_read_data information to correctly
> implement cap_user_time and cap_user_time_zero.
> 
> Note that the ARM64 counter is architecturally only guaranteed to be
> 56bit wide (implementations are allowed to be wider) and the existing
> perf ABI cannot deal with wrap-around.
> 
> This implementation should also be faster than the old; seeing how we
> don't need to recompute mult and shift all the time.
> 
> Reported-by: Leo Yan <leo.yan@linaro.org>
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> ---
>  arch/arm64/kernel/perf_event.c |   36 +++++++++++++++++++++++++++---------
>  1 file changed, 27 insertions(+), 9 deletions(-)
> 
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -19,6 +19,7 @@
>  #include <linux/of.h>
>  #include <linux/perf/arm_pmu.h>
>  #include <linux/platform_device.h>
> +#include <linux/sched_clock.h>
>  #include <linux/smp.h>
>  
>  /* ARMv8 Cortex-A53 specific event types. */
> @@ -1165,28 +1166,45 @@ device_initcall(armv8_pmu_driver_init)
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
> +		userpg->time_zero = rd->epoch_ns;
> +
> +		/*
> +		 * This isn't strictly correct, the ARM64 counter can be
> +		 * 'short' and then we get funnies when it wraps. The correct
> +		 * thing would be to extend the perf ABI with a cycle and mask
> +		 * value, but because wrapping on ARM64 is very rare in
> +		 * practise this 'works'.
> +		 */
> +		userpg->time_zero -= (rd->epoch_cyc * rd->mult) >> rd->shift;
> +
> +	} while (sched_clock_read_retry(seq));
> +
> +	userpg->time_offset = userpg->time_zero - now;
>  
> -	clocks_calc_mult_shift(&userpg->time_mult, &shift, freq,
> -			NSEC_PER_SEC, 0);
>  	/*
>  	 * time_shift is not expected to be greater than 31 due to
>  	 * the original published conversion algorithm shifting a
>  	 * 32-bit value (now specifies a 64-bit value) - refer
>  	 * perf_event_mmap_page documentation in perf_event.h.
>  	 */
> -	if (shift == 32) {
> -		shift = 31;
> +	if (userpg->shift == 32) {

Thanks a lot for the patch set, some typos:

s/shift/time_shift

> +		userpg->shift = 31;

s/shift/time_shift

Thanks,
Leo

>  		userpg->time_mult >>= 1;
>  	}
> -	userpg->time_shift = (u16)shift;
> -	userpg->time_offset = -now;
> +
>  }
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
