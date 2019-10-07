Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37682CEA6B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 19:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpXtcBnzg17JbCUgpi4MHoDIQGkVL/9DOvVf+eZPxbA=; b=me3/UGvPoB2Yky
	syfYrGTfsLXPX8Ha66u7RdcU9+27KlzvuXCwLe5LRA1rfmdbJcr4C2CLyYy1L5PeQuxj9d1BnNrXz
	6eK0D7RByuGrTwW9WIceZpBX1NtW78gx4UfYKNm1ojRh0NedCpY4jZvZtZXb6fAMwizfHHsQQpEM7
	gwH0k4gud1fYHZPWawOmcQbSCqqCSloREBw6/qzi4MHAXgXv8HseHO8/U76jo0CCUbKT0fXcIqjxx
	EsWWaK3NIjBvAFL9Mpx3Zibic7Fe1P6206khIn+PQwnqUapv1ZA7r/eO5UWcIvmLU9PbJJJWuoeFf
	z+McUaJ4x+0DanoDwnMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWdt-0000zl-Vc; Mon, 07 Oct 2019 17:17:53 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWdj-0000yr-GC
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 17:17:45 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iHWdf-0006c7-Lx; Mon, 07 Oct 2019 19:17:39 +0200
Date: Mon, 7 Oct 2019 18:17:38 +0100
From: Marc Zyngier <maz@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH 3/3] KVM: arm64: pmu: Reset sample period on overflow
 handling
Message-ID: <20191007181738.1b39ded9@why>
In-Reply-To: <20191007130457.GZ42880@e119886-lin.cambridge.arm.com>
References: <20191006104636.11194-1-maz@kernel.org>
 <20191006104636.11194-4-maz@kernel.org>
 <20191007094325.GX42880@e119886-lin.cambridge.arm.com>
 <86sgo4zv9a.wl-maz@kernel.org>
 <20191007130457.GZ42880@e119886-lin.cambridge.arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: andrew.murray@arm.com, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, julien.thierry.kdev@gmail.com, james.morse@arm.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_101743_690304_0B8B2D7F 
X-CRM114-Status: GOOD (  52.07  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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

On Mon, 7 Oct 2019 14:04:58 +0100
Andrew Murray <andrew.murray@arm.com> wrote:

> On Mon, Oct 07, 2019 at 11:48:33AM +0100, Marc Zyngier wrote:
> > On Mon, 07 Oct 2019 10:43:27 +0100,
> > Andrew Murray <andrew.murray@arm.com> wrote:  
> > > 
> > > On Sun, Oct 06, 2019 at 11:46:36AM +0100, maz@kernel.org wrote:  
> > > > From: Marc Zyngier <maz@kernel.org>
> > > > 
> > > > The PMU emulation code uses the perf event sample period to trigger
> > > > the overflow detection. This works fine  for the *first* overflow
> > > > handling  
> > > 
> > > Although, even though the first overflow is timed correctly, the value
> > > the guest reads may be wrong...
> > > 
> > > Assuming a Linux guest with the arm_pmu.c driver, if I recall correctly
> > > this writes the -remainingperiod to the counter upon stopping/starting.
> > > In the case of a perf_event that is pinned to a task, this will happen
> > > upon every context switch of that task. If the counter was getting close
> > > to overflow before the context switch, then the value written to the
> > > guest counter will be very high and thus the sample_period written in KVM
> > > will be very low...
> > > 
> > > The best scenario is when the host handles the overflow, the guest
> > > handles its overflow and rewrites the guest counter (resulting in a new
> > > host perf_event) - all before the first host perf_event fires again. This
> > > is clearly the assumption the code makes.
> > > 
> > > Or - the host handles its overflow and kicks the guest, but the guest
> > > doesn't respond in time, so we end up endlessly and pointlessly kicking it
> > > for each host overflow - thus resulting in the large difference between number
> > > of interrupts between host and guest. This isn't ideal, because when the
> > > guest does read its counter, the value isn't correct (because it overflowed
> > > a zillion times at a value less than the arrchitected max).
> > > 
> > > Worse still is when the sample_period is so small, the host doesn't
> > > even keep up.  
> > 
> > Well, there are plenty of ways to make this code go mad. The
> > overarching reason is that we abuse the notion of sampling period to
> > generate interrupts, while what we'd really like is something that
> > says "call be back in that many events", rather than the sampling
> > period which doesn't match the architecture.
> > 
> > Yes, small values will results in large drifts. Nothing we can do
> > about it.
> >   
> > >   
> > > > , but results in a huge number of interrupts on the host,
> > > > unrelated to the number of interrupts handled in the guest (a x20
> > > > factor is pretty common for the cycle counter). On a slow system
> > > > (such as a SW model), this can result in the guest only making
> > > > forward progress at a glacial pace.
> > > > 
> > > > It turns out that the clue is in the name. The sample period is
> > > > exactly that: a period. And once the an overflow has occured,
> > > > the following period should be the full width of the associated
> > > > counter, instead of whatever the guest had initially programed.
> > > > 
> > > > Reset the sample period to the architected value in the overflow
> > > > handler, which now results in a number of host interrupts that is
> > > > much closer to the number of interrupts in the guest.  
> > > 
> > > This seems a reasonable pragmatic approach - though of course you will end
> > > up counting slightly slower due to the host interrupt latency. But that's
> > > better than the status quo.  
> > 
> > Slower than what?
> >   
> 
> Slower than the guest should expect. Assuming a cycle counter (with LC) is
> initially programmed to 0, you'd target a guest interrupt period of 2^64 x cycle
> period...

What is exactly what is expected, isn't it?

> But I'm wrong in saying that you end up counting slightly slower - as you're
> not restarting the perf counter or changing the value so there should be no change
> in the interrupt period to the guest.
> 
> I was considering the case where the kernel perf event is recreated in the
> overflow handler, in which case unless you consider the time elapsed between the
> event firing and changing the sample_period then you end up with a larger period.

The only thing that changes is the point at which the next period will
end, matching the expected overflow.

> > > 
> > > It may be possible with perf to have a single-fire counter (this mitigates
> > > against my third scenario but you still end up with a loss of precision) -
> > > See PERF_EVENT_IOC_REFRESH.  
> > 
> > Unfortunately, that's a userspace interface, not something that's
> > available to the kernel at large...  
> 
> The mechanism to change the value of event->event_limit is only available via
> ioctl, though I was implying that an in-kernel mechansim could be provided.
> This would be trivial. (But it doesn't help, as I don't think you could create
> another perf kernel event in that context).
>  
> >   
> > > Ideally the PERF_EVENT_IOC_REFRESH type of functionality could be updated
> > > to reload to a different value after the first hit.  
> > 
> > Which is what I was hinting at above. I'd like a way to reload the
> > next period on each expiration, much like a timer.
> >   
> > > 
> > > This problem also exists on arch/x86/kvm/pmu.c (though I'm not sure what
> > > their PMU drivers do with respect to the value they write).
> > >   
> > > > 
> > > > Fixes: b02386eb7dac ("arm64: KVM: Add PMU overflow interrupt routing")
> > > > Signed-off-by: Marc Zyngier <maz@kernel.org>
> > > > ---
> > > >  virt/kvm/arm/pmu.c | 12 ++++++++++++
> > > >  1 file changed, 12 insertions(+)
> > > > 
> > > > diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> > > > index c30c3a74fc7f..3ca4761fc0f5 100644
> > > > --- a/virt/kvm/arm/pmu.c
> > > > +++ b/virt/kvm/arm/pmu.c
> > > > @@ -444,6 +444,18 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
> > > >  	struct kvm_pmc *pmc = perf_event->overflow_handler_context;
> > > >  	struct kvm_vcpu *vcpu = kvm_pmc_to_vcpu(pmc);
> > > >  	int idx = pmc->idx;
> > > > +	u64 val, period;
> > > > +
> > > > +	/* Start by resetting the sample period to the architectural limit */
> > > > +	val = kvm_pmu_get_pair_counter_value(vcpu, pmc);
> > > > +
> > > > +	if (kvm_pmu_idx_is_64bit(vcpu, pmc->idx))  
> > > 
> > > This is correct, because in this case we *do* care about _PMCR_LC.
> > >   
> > > > +		period = (-val) & GENMASK(63, 0);
> > > > +	else
> > > > +		period = (-val) & GENMASK(31, 0);
> > > > +
> > > > +	pmc->perf_event->attr.sample_period = period;
> > > > +	pmc->perf_event->hw.sample_period = period;  
> > > 
> > > I'm not sure about the above line - does direct manipulation of sample_period
> > > work on a running perf event? As far as I can tell this is already done in the
> > > kernel with __perf_event_period - however this also does other stuff (such as
> > > disable and re-enable the event).  
> > 
> > I'm not sure you could do that in the handler, which is run in atomic
> > context. It doesn't look like anything bad happens when updating the
> > sample period directly (the whole thing has stopped getting crazy),
> > but I'd really like someone who understands the perf internals to help
> > here (hence Mark being on cc).  
> 
> I suspect this is working lazily - when you want to change the underlying pmu
> period, you need to write the new period to the host PMU counters. This is done
> in armpmu_start. __perf_event_period would normally stop and then start the
> PMU to achieve this (hence the PERF_EF_RELOAD flag). Your code doesn't do this.

And yet I don't get these extra interrupts, so something must be
happening.

> However, the perf counter set up in KVM is always pinned to the guest process
> and thus when switching to/from this task the counter are stopped and started.
> Therefore I suspect the sample_period you change goes into effect at this point
> in time. So it probably stops going crazy - but not immediately.

Fair enough. I wonder if we can tell perf to always stop the event
before calling the handler, and resume it on return from the handler.

> I think the underlying counter also gets reset to the new period just before it
> calls perf_event_overflow (see armv8pmu_handle_irq) - so worse case you'll wait
> until it overflows for the second time.
> 
> In any case this is still better than the status quo.

Well, I'd still like to have something that is in line with the perf
usage model... It's been broken forever, so I guess it can wait another
few weeks to be correctly solved.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
