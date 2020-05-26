Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FC41BFF6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ij88DeJDwryURNXN+oMX4Br93x5NznprcZbQmxmQhoA=; b=hcuawxT0HVmOjI
	87sc3SjAg1GgP0WsyK5mjVq8khig1e6xgRBDjWS9SBomurfPLT8c6FBAjRlxhX3Z3asmP02e6K92m
	KTnFWGzmlKlSrNS0jHA2yRlfAIum6mlWckZwj1tI8r87jcK8BMPXoMa7ZRNm0I431sRFxDciu2Uvf
	9/SRpJRPIyzKl+jFCzcnkVZQ8BPj5XtTd5hPW08Ygkzr707+ff49f4TjtTyXgfzxioFQTpN/GM1cQ
	Pv/pmWganU3xIQfYcCFCCBGRhbObEdeVMT6O6YyLGlgFb8nAD/8a6z8WvbMIwSMzEp7if2RiiQHqJ
	cRIPyTZsAUyRYLUarkew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAeW-000861-24; Thu, 30 Apr 2020 14:59:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAe0-0007sg-OY
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:58:34 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF7A62076D;
 Thu, 30 Apr 2020 14:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588258710;
 bh=qlM9az2Mu6qcrDqC7rjQnCbfEc3OOne2AKmDVHC22QM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ufCxGIZFIcDmQiW1DSEmDR/KL8XoZubTDhSgr2RlZfEeFvCfjUgaVoVSBEWLylpCZ
 o1VuspeFLXTSHKQrsReeaBhxtbh1Zv0punWbMc/vMeb+2qTgbRNeC8E27QcmnDBtI/
 aZnWmQGYO6rQvKAZ4o96/6YsS80P71vZYvIrfrwU=
Date: Thu, 30 Apr 2020 15:58:24 +0100
From: Will Deacon <will@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH] arm64: perf_event: Fix time_offset for arch timer
Message-ID: <20200430145823.GA25258@willie-the-truck>
References: <20200320093545.28227-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320093545.28227-1-leo.yan@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_075832_866709_688F3993 
X-CRM114-Status: GOOD (  24.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <Al.Grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <James.Clark@arm.com>,
 maz@kernel.org, Namhyung Kim <namhyung@kernel.org>, tglx@linutronix.de,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

[+Maz and tglx in case I'm barking up the wrong tree]

On Fri, Mar 20, 2020 at 05:35:45PM +0800, Leo Yan wrote:
> Between the system powering on and kernel's sched clock registration,
> the arch timer usually has been enabled at the early time and its
> counter is incremented during the period of the booting up.  Thus the
> arch timer's counter is not completely accounted into the sched clock,
> and has a delta between the arch timer's counter and sched clock.  This
> delta value should be stored into userpg->time_offset, which later can
> be retrieved by Perf tool in the user space for sample timestamp
> calculation.
> 
> Now userpg->time_offset is assigned to the negative sched clock with
> '-now', this value cannot reflect the delta between arch timer's counter
> and sched clock, so Perf cannot use it to calculate the sample time.
> 
> To fix this issue, this patch calculate the delta between the arch
> timer's and sched clock and assign the delta to userpg->time_offset.
> The detailed steps are firstly to convert counter to nanoseconds 'ns',
> then the offset is calculated as 'now' minus 'ns'.
> 
>         |<------------------- 'ns' ---------------------->|
>                                 |<-------- 'now' -------->|
>         |<---- time_offset ---->|
>         |-----------------------|-------------------------|
>         ^                       ^                         ^
>   Power on system     sched clock registration      Perf starts

FWIW, I'm /really/ struggling to understand the problem here.

If I've grokked it correctly (big 'if'), then you can't just factor in
what you call "time_offset" in the diagram above, because there isn't
a guarantee that the counter is zero-initialised at the start.

> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  arch/arm64/kernel/perf_event.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index e40b65645c86..226d25d77072 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -1143,6 +1143,7 @@ void arch_perf_update_userpage(struct perf_event *event,
>  {
>  	u32 freq;
>  	u32 shift;
> +	u64 count, ns, quot, rem;
>  
>  	/*
>  	 * Internal timekeeping for enabled/running/stopped times
> @@ -1164,5 +1165,21 @@ void arch_perf_update_userpage(struct perf_event *event,
>  		userpg->time_mult >>= 1;
>  	}
>  	userpg->time_shift = (u16)shift;
> -	userpg->time_offset = -now;
> +
> +	/*
> +	 * Since arch timer is enabled ealier than sched clock registration,
> +	 * compuate the delta (in nanosecond unit) between the arch timer
> +	 * counter and sched clock, assign the delta to time_offset and
> +	 * perf tool can use it for timestamp calculation.
> +	 *
> +	 * The formula for conversion arch timer cycle to ns is:
> +	 *   quot = (cyc >> time_shift);
> +	 *   rem  = cyc & ((1 << time_shift) - 1);
> +	 *   ns   = quot * time_mult + ((rem * time_mult) >> time_shift);
> +	 */
> +	count = arch_timer_read_counter();
> +	quot = count >> shift;
> +	rem = count & ((1 << shift) - 1);
> +	ns = quot * userpg->time_mult + ((rem * userpg->time_mult) >> shift);
> +	userpg->time_offset = now - ns;

Hmm, reading the counter and calculating the delta feels horribly
approximate to me. It would be much better if we could get hold of the
initial epoch cycles from the point at which sched_clock was initialised
using the counter. This represents the true cycle delta between the counter
and what sched_clock uses for 0 ns.

Unfortunately, I can't see a straightforward way to grab that information.
It looks like x86 pulls this directly from the TSC driver.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
