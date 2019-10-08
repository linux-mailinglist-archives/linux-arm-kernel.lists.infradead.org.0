Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B74DD0381
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 00:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5OVF9W1stcpM1+K50rnylnuecN6Y9OfF3wZH98ah2s=; b=LlXQ/2RtrfH9hc
	4tcJebl0Mv4VXiWUi31Eix7W2PjdRCS2bPAbeV9WZS0YoItoQQ/ulatDjTnL9MWn4ROq8FClqdTyG
	Cissf49rRZY0GZLGbt3yq1ATQUqVvU6SpKy4mSLbUDsnyerYl0kmMbWd5e4QN8+gn+UXorH/+THVI
	BARrQ+VAARxLFmyeD7NdwUuYXhtYEnivONdehCKWwlDwFYv/+AeiNH1NiNrHc/8tFj0Jxc2kYCXvz
	NSRhABdTEFEJaI/4KJR4/BwyApBwDAJN0w65IniAZ01lR9eN2O9nzTTj7re14aulzU7xs/V2toHjV
	d8QRvJ6Mpr76c/x56I4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyBk-0004CS-6L; Tue, 08 Oct 2019 22:42:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyBa-0004Bw-S0
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 22:42:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4624337;
 Tue,  8 Oct 2019 15:42:24 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 579B13F68E;
 Tue,  8 Oct 2019 15:42:24 -0700 (PDT)
Date: Tue, 8 Oct 2019 23:42:22 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 5/5] KVM: arm64: pmu: Reset sample period on overflow
 handling
Message-ID: <20191008224221.GK42880@e119886-lin.cambridge.arm.com>
References: <20191008160128.8872-1-maz@kernel.org>
 <20191008160128.8872-6-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008160128.8872-6-maz@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_154230_993815_4B6CCE35 
X-CRM114-Status: GOOD (  26.98  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 05:01:28PM +0100, Marc Zyngier wrote:
> The PMU emulation code uses the perf event sample period to trigger
> the overflow detection. This works fine  for the *first* overflow
> handling, but results in a huge number of interrupts on the host,
> unrelated to the number of interrupts handled in the guest (a x20
> factor is pretty common for the cycle counter). On a slow system
> (such as a SW model), this can result in the guest only making
> forward progress at a glacial pace.
> 
> It turns out that the clue is in the name. The sample period is
> exactly that: a period. And once the an overflow has occured,
> the following period should be the full width of the associated
> counter, instead of whatever the guest had initially programed.
> 
> Reset the sample period to the architected value in the overflow
> handler, which now results in a number of host interrupts that is
> much closer to the number of interrupts in the guest.
> 
> Fixes: b02386eb7dac ("arm64: KVM: Add PMU overflow interrupt routing")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  virt/kvm/arm/pmu.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> index 25a483a04beb..8b524d74c68a 100644
> --- a/virt/kvm/arm/pmu.c
> +++ b/virt/kvm/arm/pmu.c
> @@ -442,6 +442,20 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
>  	struct kvm_pmc *pmc = perf_event->overflow_handler_context;
>  	struct kvm_vcpu *vcpu = kvm_pmc_to_vcpu(pmc);
>  	int idx = pmc->idx;
> +	u64 period;
> +
> +	/*
> +	 * Reset the sample period to the architectural limit,
> +	 * i.e. the point where the counter overflows.
> +	 */
> +	period = -(local64_read(&pmc->perf_event->count));
> +
> +	if (!kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
> +		period &= GENMASK(31, 0);
> +
> +	local64_set(&pmc->perf_event->hw.period_left, 0);
> +	pmc->perf_event->attr.sample_period = period;
> +	pmc->perf_event->hw.sample_period = period;

I believe that above, you are reducing the period by the amount period_left
would have been - they cancel each other out.

Given that kvm_pmu_perf_overflow is now always called between a
cpu_pmu->pmu.stop and a cpu_pmu->pmu.start, it means armpmu_event_update
has been called prior to this function, and armpmu_event_set_period will
be called after...

Therefore, I think the above could be reduced to:

+	/*
+	 * Reset the sample period to the architectural limit,
+	 * i.e. the point where the counter overflows.
+	 */
+	u64 period = GENMASK(63, 0);
+	if (!kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
+		period = GENMASK(31, 0);
+
+	pmc->perf_event->attr.sample_period = period;
+	pmc->perf_event->hw.sample_period = period;

This is because armpmu_event_set_period takes into account the overflow
and the counter wrapping via the "if (unlikely(left <= 0)) {" block.

Though this code confuses me easily, so I may be talking rubbish.

>  
>  	__vcpu_sys_reg(vcpu, PMOVSSET_EL0) |= BIT(idx);
>  
> @@ -557,6 +571,7 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
>  	attr.exclude_host = 1; /* Don't count host events */
>  	attr.config = (pmc->idx == ARMV8_PMU_CYCLE_IDX) ?
>  		ARMV8_PMUV3_PERFCTR_CPU_CYCLES : eventsel;
> +	attr.config1 = PERF_ATTR_CFG1_RELOAD_EVENT;

I'm not sure that this flag, or patch 4 is really needed. As the perf
events created by KVM are pinned to the task and exclude_(host,hv) are set -
I think the perf event is not active at this point. Therefore if you change
the sample period, you can wait until the perf event gets scheduled back in
(when you return to the guest) where it's call to pmu.start will result in
armpmu_event_set_period being called. In other words the pmu.start and
pmu.stop you add in patch 4 is effectively being done for you by perf when
the KVM task is switched out.

I'd be interested to see if the following works:

+	WARN_ON(pmc->perf_event->state == PERF_EVENT_STATE_ACTIVE)
+
+	/*
+	 * Reset the sample period to the architectural limit,
+	 * i.e. the point where the counter overflows.
+	 */
+	u64 period = GENMASK(63, 0);
+	if (!kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
+		period = GENMASK(31, 0);
+
+	pmc->perf_event->attr.sample_period = period;
+	pmc->perf_event->hw.sample_period = period;

>  
>  	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
>  

What about ARM 32 bit support for this?

Thanks,

Andrew Murray

> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
