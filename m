Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4A0CDE5D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 11:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d86PoXFVqhyM5bxZdQP8yVNzHM4zwKN7E/YBxSOZtrE=; b=cFN11FdqAXQrp2
	uJaB626uSnCNPQn9mUdVfwDQ/+Md7G5/Lc34nrJ+MOl/Ioi6ppnuiPxXJj7GJonyy+oFGfiiVOkhE
	buXPnK0mHdklRKwnZKOgaTWpGx9zcj5AwsRFKuNMCm1AWOlL8WwyRPuSDbA6I1zQUn9M/BmRvW/vX
	afQ28xWuDMJlPrgsQoFmmuAI62T0bgJFEbqnm46QJyRSxbJZmPie/vC6OoW6YxbDnEd1yjU+rMUoU
	XMogNmIEaRfsmiMbZ8XRKSOxNK6Vl8xYergcxZq26ja8+rLKdgsO0+2Tzz77Fnxoy4HvyCZyWSWGo
	jTe3w5lygpn3G/51ZIZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHPYI-0005ja-7y; Mon, 07 Oct 2019 09:43:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHPYA-0005j1-KA
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 09:43:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE99015BE;
 Mon,  7 Oct 2019 02:43:29 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 51FC03F68E;
 Mon,  7 Oct 2019 02:43:29 -0700 (PDT)
Date: Mon, 7 Oct 2019 10:43:27 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: maz@kernel.org
Subject: Re: [PATCH 3/3] KVM: arm64: pmu: Reset sample period on overflow
 handling
Message-ID: <20191007094325.GX42880@e119886-lin.cambridge.arm.com>
References: <20191006104636.11194-1-maz@kernel.org>
 <20191006104636.11194-4-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006104636.11194-4-maz@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_024330_744527_211573DA 
X-CRM114-Status: GOOD (  28.52  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 06, 2019 at 11:46:36AM +0100, maz@kernel.org wrote:
> From: Marc Zyngier <maz@kernel.org>
> 
> The PMU emulation code uses the perf event sample period to trigger
> the overflow detection. This works fine  for the *first* overflow
> handling

Although, even though the first overflow is timed correctly, the value
the guest reads may be wrong...

Assuming a Linux guest with the arm_pmu.c driver, if I recall correctly
this writes the -remainingperiod to the counter upon stopping/starting.
In the case of a perf_event that is pinned to a task, this will happen
upon every context switch of that task. If the counter was getting close
to overflow before the context switch, then the value written to the
guest counter will be very high and thus the sample_period written in KVM
will be very low...

The best scenario is when the host handles the overflow, the guest
handles its overflow and rewrites the guest counter (resulting in a new
host perf_event) - all before the first host perf_event fires again. This
is clearly the assumption the code makes.

Or - the host handles its overflow and kicks the guest, but the guest
doesn't respond in time, so we end up endlessly and pointlessly kicking it
for each host overflow - thus resulting in the large difference between number
of interrupts between host and guest. This isn't ideal, because when the
guest does read its counter, the value isn't correct (because it overflowed
a zillion times at a value less than the arrchitected max).

Worse still is when the sample_period is so small, the host doesn't
even keep up.

> , but results in a huge number of interrupts on the host,
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

This seems a reasonable pragmatic approach - though of course you will end
up counting slightly slower due to the host interrupt latency. But that's
better than the status quo.

It may be possible with perf to have a single-fire counter (this mitigates
against my third scenario but you still end up with a loss of precision) -
See PERF_EVENT_IOC_REFRESH.

Ideally the PERF_EVENT_IOC_REFRESH type of functionality could be updated
to reload to a different value after the first hit.

This problem also exists on arch/x86/kvm/pmu.c (though I'm not sure what
their PMU drivers do with respect to the value they write).

> 
> Fixes: b02386eb7dac ("arm64: KVM: Add PMU overflow interrupt routing")
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  virt/kvm/arm/pmu.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> index c30c3a74fc7f..3ca4761fc0f5 100644
> --- a/virt/kvm/arm/pmu.c
> +++ b/virt/kvm/arm/pmu.c
> @@ -444,6 +444,18 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
>  	struct kvm_pmc *pmc = perf_event->overflow_handler_context;
>  	struct kvm_vcpu *vcpu = kvm_pmc_to_vcpu(pmc);
>  	int idx = pmc->idx;
> +	u64 val, period;
> +
> +	/* Start by resetting the sample period to the architectural limit */
> +	val = kvm_pmu_get_pair_counter_value(vcpu, pmc);
> +
> +	if (kvm_pmu_idx_is_64bit(vcpu, pmc->idx))

This is correct, because in this case we *do* care about _PMCR_LC.

> +		period = (-val) & GENMASK(63, 0);
> +	else
> +		period = (-val) & GENMASK(31, 0);
> +
> +	pmc->perf_event->attr.sample_period = period;
> +	pmc->perf_event->hw.sample_period = period;

I'm not sure about the above line - does direct manipulation of sample_period
work on a running perf event? As far as I can tell this is already done in the
kernel with __perf_event_period - however this also does other stuff (such as
disable and re-enable the event).

>  

Thanks,

Andrew Murray

>  	__vcpu_sys_reg(vcpu, PMOVSSET_EL0) |= BIT(idx);
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
