Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B937DC01
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FT8PJEv40wDJMQMRU8vWdAWFhNWkuLf7Nwmwb1o0F78=; b=k2E3ufWc5FDc9N
	LMVbnkFNNZEoxL1n2W/WOww0+D0BUBuFiyn3H+CXnZ8qWlgx/L4hhDdEqUe35R/7UXkMT+oy+BWkm
	XJXXC67euYiAss5O1QuH8OOc49XrzE5cYx+zP2Rn7XRhdTOWrqDLReQ2f6gSeHjcrEW/fHdeB067w
	lpwkMH7AZBm58sDnpPsCF0ke45zBdKmqaIhOW9bLsBx3Em9eZB2Fnqm8KA08iRxvaeF6Jb/RurfK/
	bH6UfXJFxBb8qAHtMpawMTLNaRoBdpQKtpp4PfDxgSO5kpGG8y0oqki/vHA2rIbs8AnmpzhrFHlp/
	VUGAgm6LMmPxskz32rKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAfH-0001Y0-4t; Thu, 01 Aug 2019 12:58:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htAf6-0001Xb-FD
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:58:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D9E820838;
 Thu,  1 Aug 2019 12:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564664307;
 bh=XTsMS7uozR+j7HmIFwMbi6XKyylv3rV3IxgrTSqwYiE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nvNlOjoJYXNCECFuavzzbdSOyOLE3Q25THF7uC5AlGJnePzCIffsCOCuT5VCxwIUH
 rlUPYj9fB0vLLwPOw9w28pjl26DdhHUZhY0FKy1fTspLvL7mD8snl3Qd5af38ekJs+
 saPtuyymNVKg+qWwbaEk7dqcSBz1+K+8JnhG4SUU=
Date: Thu, 1 Aug 2019 13:58:22 +0100
From: Will Deacon <will@kernel.org>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4 2/9] arm64: perf: Remove PMU locking
Message-ID: <20190801125821.23wt657bfs2k536f@willie-the-truck>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-3-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563351432-55652-3-git-send-email-julien.thierry@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_055828_550268_212E71A4 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, peterz@infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, will.deacon@arm.com,
 acme@kernel.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 namhyung@kernel.org, sthotton@marvell.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org, liwei391@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 09:17:05AM +0100, Julien Thierry wrote:
> Since the PMU driver uses direct registers for counter
> setup/manipulation, locking around these operations is no longer needed.
> 
> For operations that can be called with interrupts enabled, preemption
> still needs to be disabled to ensure the programming of the PMU is
> done on the expected CPU and not migrated mid-programming.
> 
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/kernel/perf_event.c | 30 ++----------------------------
>  1 file changed, 2 insertions(+), 28 deletions(-)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 838758f..0e2cf5d 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -673,15 +673,10 @@ static inline u32 armv8pmu_getreset_flags(void)
> 
>  static void armv8pmu_enable_event(struct perf_event *event)
>  {
> -	unsigned long flags;
> -	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
> -
>  	/*
>  	 * Enable counter and interrupt, and set the counter to count
>  	 * the event that we're interested in.
>  	 */
> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
> 
>  	/*
>  	 * Disable counter
> @@ -702,21 +697,10 @@ static void armv8pmu_enable_event(struct perf_event *event)
>  	 * Enable counter
>  	 */
>  	armv8pmu_enable_event_counter(event);
> -
> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
>  }

With the implicit ISBs now removed by virtue of addressing the counter
register directly, what prevents the programming of the evtype being
reordered with respect to disabling/enabling the counter?

>  static void armv8pmu_disable_event(struct perf_event *event)
>  {
> -	unsigned long flags;
> -	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
> -
> -	/*
> -	 * Disable counter and interrupt
> -	 */
> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
> -
>  	/*
>  	 * Disable counter
>  	 */
> @@ -726,30 +710,20 @@ static void armv8pmu_disable_event(struct perf_event *event)
>  	 * Disable interrupt for this counter
>  	 */
>  	armv8pmu_disable_event_irq(event);
> -
> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
>  }
> 
>  static void armv8pmu_start(struct arm_pmu *cpu_pmu)
>  {
> -	unsigned long flags;
> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
> -
> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
> +	WARN_ON_ONCE(preemptible());
>  	/* Enable all counters */
>  	armv8pmu_pmcr_write(armv8pmu_pmcr_read() | ARMV8_PMU_PMCR_E);
> -	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
>  }
> 
>  static void armv8pmu_stop(struct arm_pmu *cpu_pmu)
>  {
> -	unsigned long flags;
> -	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
> -
> -	raw_spin_lock_irqsave(&events->pmu_lock, flags);
> +	WARN_ON_ONCE(preemptible());

I don't think we need these WARN_ONs -- these are very much per-CPU
operations from the context of the perf core, so we'll be ok.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
