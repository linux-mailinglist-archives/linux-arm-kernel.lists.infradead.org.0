Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882B2D3EA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08kDUlqAMyqkxZUvC6sdxvm7zvaOVxanH2DToFTGCQs=; b=UWaP6xk5pgUsyD
	5LRWweoaKCnY1Kfb7KEkMsyoAIFGHgzdp/6eztrWvuKDSeyb/9WKv3LRuAKF8pAWufv9Ib0gD4vUa
	PV7VbIsB0odrPOjnOePWRu78WuAkP40QgdsLBfCp8nyCbWEAwLus3u9v9pbkHZKMnnD6rhY8jici1
	ThpxSsw9bf0AoDYmgt9nnkNVHnx29YfOj4uFaOx1Xy1tNi0Y/3f1z+Tzg2nrSigkadWOvh8oP5a6z
	DE17aq4G5H9dAPo3JmUd37bZRNU8lybOQHinQhdCONSg0/bDrpg9DUZKniKKz4ekrjfj2Ow3q4EiU
	1x8jIFcBqLEgBI8feVvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iItIu-00008j-Sc; Fri, 11 Oct 2019 11:41:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iItIl-00007v-9A
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:41:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20A2228;
 Fri, 11 Oct 2019 04:41:41 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B1D03F703;
 Fri, 11 Oct 2019 04:41:40 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:41:38 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 5/5] KVM: arm64: pmu: Reset sample period on overflow
 handling
Message-ID: <20191011114138.GP42880@e119886-lin.cambridge.arm.com>
References: <20191008160128.8872-1-maz@kernel.org>
 <20191008160128.8872-6-maz@kernel.org>
 <20191008224221.GK42880@e119886-lin.cambridge.arm.com>
 <20191011122848.748da6f6@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011122848.748da6f6@why>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_044143_405260_B6197F9A 
X-CRM114-Status: GOOD (  38.86  )
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

On Fri, Oct 11, 2019 at 12:28:48PM +0100, Marc Zyngier wrote:
> On Tue, 8 Oct 2019 23:42:22 +0100
> Andrew Murray <andrew.murray@arm.com> wrote:
> 
> > On Tue, Oct 08, 2019 at 05:01:28PM +0100, Marc Zyngier wrote:
> > > The PMU emulation code uses the perf event sample period to trigger
> > > the overflow detection. This works fine  for the *first* overflow
> > > handling, but results in a huge number of interrupts on the host,
> > > unrelated to the number of interrupts handled in the guest (a x20
> > > factor is pretty common for the cycle counter). On a slow system
> > > (such as a SW model), this can result in the guest only making
> > > forward progress at a glacial pace.
> > > 
> > > It turns out that the clue is in the name. The sample period is
> > > exactly that: a period. And once the an overflow has occured,
> > > the following period should be the full width of the associated
> > > counter, instead of whatever the guest had initially programed.
> > > 
> > > Reset the sample period to the architected value in the overflow
> > > handler, which now results in a number of host interrupts that is
> > > much closer to the number of interrupts in the guest.
> > > 
> > > Fixes: b02386eb7dac ("arm64: KVM: Add PMU overflow interrupt routing")
> > > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > > ---
> > >  virt/kvm/arm/pmu.c | 15 +++++++++++++++
> > >  1 file changed, 15 insertions(+)
> > > 
> > > diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> > > index 25a483a04beb..8b524d74c68a 100644
> > > --- a/virt/kvm/arm/pmu.c
> > > +++ b/virt/kvm/arm/pmu.c
> > > @@ -442,6 +442,20 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
> > >  	struct kvm_pmc *pmc = perf_event->overflow_handler_context;
> > >  	struct kvm_vcpu *vcpu = kvm_pmc_to_vcpu(pmc);
> > >  	int idx = pmc->idx;
> > > +	u64 period;
> > > +
> > > +	/*
> > > +	 * Reset the sample period to the architectural limit,
> > > +	 * i.e. the point where the counter overflows.
> > > +	 */
> > > +	period = -(local64_read(&pmc->perf_event->count));
> > > +
> > > +	if (!kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
> > > +		period &= GENMASK(31, 0);
> > > +
> > > +	local64_set(&pmc->perf_event->hw.period_left, 0);
> > > +	pmc->perf_event->attr.sample_period = period;
> > > +	pmc->perf_event->hw.sample_period = period;  
> > 
> > I believe that above, you are reducing the period by the amount period_left
> > would have been - they cancel each other out.
> 
> That's not what I see happening, having put some traces:
> 
>  kvm_pmu_perf_overflow: count = 308 left = 129
>  kvm_pmu_perf_overflow: count = 409 left = 47
>  kvm_pmu_perf_overflow: count = 585 left = 223
>  kvm_pmu_perf_overflow: count = 775 left = 413
>  kvm_pmu_perf_overflow: count = 1368 left = 986
>  kvm_pmu_perf_overflow: count = 2086 left = 1716
>  kvm_pmu_perf_overflow: count = 958 left = 584
>  kvm_pmu_perf_overflow: count = 1907 left = 1551
>  kvm_pmu_perf_overflow: count = 7292 left = 6932

Indeed.

> 
> although I've now moved the stop/start calls inside the overflow
> handler so that I don't have to mess with the PMU backend.
> 
> > Given that kvm_pmu_perf_overflow is now always called between a
> > cpu_pmu->pmu.stop and a cpu_pmu->pmu.start, it means armpmu_event_update
> > has been called prior to this function, and armpmu_event_set_period will
> > be called after...
> > 
> > Therefore, I think the above could be reduced to:
> > 
> > +	/*
> > +	 * Reset the sample period to the architectural limit,
> > +	 * i.e. the point where the counter overflows.
> > +	 */
> > +	u64 period = GENMASK(63, 0);
> > +	if (!kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
> > +		period = GENMASK(31, 0);
> > +
> > +	pmc->perf_event->attr.sample_period = period;
> > +	pmc->perf_event->hw.sample_period = period;
> > 
> > This is because armpmu_event_set_period takes into account the overflow
> > and the counter wrapping via the "if (unlikely(left <= 0)) {" block.
> 
> I think that's an oversimplification. As shown above, the counter has
> moved forward, and there is a delta to be accounted for.
> 

Yeah, I probably need to spend more time understanding this...

> > Though this code confuses me easily, so I may be talking rubbish.
> 
> Same here! ;-)
> 
> > 
> > >  
> > >  	__vcpu_sys_reg(vcpu, PMOVSSET_EL0) |= BIT(idx);
> > >  
> > > @@ -557,6 +571,7 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
> > >  	attr.exclude_host = 1; /* Don't count host events */
> > >  	attr.config = (pmc->idx == ARMV8_PMU_CYCLE_IDX) ?
> > >  		ARMV8_PMUV3_PERFCTR_CPU_CYCLES : eventsel;
> > > +	attr.config1 = PERF_ATTR_CFG1_RELOAD_EVENT;  
> > 
> > I'm not sure that this flag, or patch 4 is really needed. As the perf
> > events created by KVM are pinned to the task and exclude_(host,hv) are set -
> > I think the perf event is not active at this point. Therefore if you change
> > the sample period, you can wait until the perf event gets scheduled back in
> > (when you return to the guest) where it's call to pmu.start will result in
> > armpmu_event_set_period being called. In other words the pmu.start and
> > pmu.stop you add in patch 4 is effectively being done for you by perf when
> > the KVM task is switched out.
> > 
> > I'd be interested to see if the following works:
> > 
> > +	WARN_ON(pmc->perf_event->state == PERF_EVENT_STATE_ACTIVE)
> > +
> > +	/*
> > +	 * Reset the sample period to the architectural limit,
> > +	 * i.e. the point where the counter overflows.
> > +	 */
> > +	u64 period = GENMASK(63, 0);
> > +	if (!kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
> > +		period = GENMASK(31, 0);
> > +
> > +	pmc->perf_event->attr.sample_period = period;
> > +	pmc->perf_event->hw.sample_period = period;
> > 
> > >  
> > >  	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
> > >    
> 
> The warning fires, which is expected: for event to be inactive, you
> need to have the vcpu being scheduled out. When the PMU interrupt
> fires, it is bound to preempt the vcpu itself, and the event is of
> course still active.

That makes sense. That also provides a justification for stopping and
starting the PMU.

> 
> > What about ARM 32 bit support for this?
> 
> What about it? 32bit KVM/arm doesn't support the PMU at all.

Thanks for the clarification.

Andrew Murray

> A 32bit
> guest on a 64bit host could use the PMU just fine (it is just that
> 32bit Linux doesn't have a PMUv3 driver -- I had patches for that, but
> they never made it upstream).
> 
> Thanks,
> 
> 	M.
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
