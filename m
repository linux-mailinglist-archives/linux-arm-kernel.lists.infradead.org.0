Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6965FC52E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:17:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rJdLgIVQCv+/oToch0rxRgJmEOaOGee8EjFGarCwoXM=; b=kua0aBuy2yneEUxppNqM5QwPh
	JVPajWTlX/10TdxPGzhwmW4RlOIp5pnsqkJQ5zR5Z982Nu22HbP0uKWM4QDsSTlPfI7aJTbJReItJ
	xksaaJx8IdgmhlJoTk2uiz2oRoK9Z1fkd47HTAprMLy5iAv82Pxx9Wc4BTwdxU31CnXHGysXelZ8j
	GHCMyUEOHzmGPI9fxd0zfSk53A6be2qP+5IH/EjCSbQEmgp19rM2UXsrbB0Y4WUNj7qAKjdYNd/Kn
	19Ut7np0EpkZ+K4PVAyksjx7jZpBPo+g3oe0/cli0cQ/9DZCqnCEtGv8dzcWKNuJaQ1tLp7EoV1yZ
	DYbyWh+yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVD7c-0002VY-2f; Thu, 14 Nov 2019 11:17:08 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVD7S-0002VB-Ot
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:17:00 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iVD7P-0001vT-EV; Thu, 14 Nov 2019 12:16:55 +0100
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 2/3] kvm: arm: VGIC: Scan all IRQs when interrupt group
 gets enabled
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 14 Nov 2019 11:16:55 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191112093658.08f248c5@donnerap.cambridge.arm.com>
References: <20191108174952.740-1-andre.przywara@arm.com>
 <20191108174952.740-3-andre.przywara@arm.com> <20191110142914.6ffdfdfa@why>
 <20191112093658.08f248c5@donnerap.cambridge.arm.com>
Message-ID: <9ddab86ca3959acbb8b7aad24be5f1ad@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: andre.przywara@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_031658_959092_00960476 
X-CRM114-Status: GOOD (  35.55  )
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-12 09:36, Andre Przywara wrote:
> On Sun, 10 Nov 2019 14:29:14 +0000
> Marc Zyngier <maz@kernel.org> wrote:
>
> Hi Marc,
>
>> On Fri,  8 Nov 2019 17:49:51 +0000
>> Andre Przywara <andre.przywara@arm.com> wrote:
>>
>> > Our current VGIC emulation code treats the "EnableGrpX" bits in 
>> GICD_CTLR
>> > as a single global interrupt delivery switch, where in fact the 
>> GIC
>> > architecture asks for this being separate for the two interrupt 
>> groups.
>> >
>> > To implement this properly, we have to slightly adjust our design, 
>> to
>> > *not* let IRQs from a disabled interrupt group be added to the 
>> ap_list.
>> >
>> > As a consequence, enabling one group requires us to re-evaluate 
>> every
>> > pending IRQ and potentially add it to its respective ap_list. 
>> Similarly
>> > disabling an interrupt group requires pending IRQs to be removed 
>> from
>> > the ap_list (as long as they have not been activated yet).
>> >
>> > Implement a rather simple, yet not terribly efficient algorithm to
>> > achieve this: For each VCPU we iterate over all IRQs, checking for
>> > pending ones and adding them to the list. We hold the ap_list_lock
>> > for this, to make this atomic from a VCPU's point of view.
>> >
>> > When an interrupt group gets disabled, we can't directly remove 
>> affected
>> > IRQs from the ap_list, as a running VCPU might have already 
>> activated
>> > them, which wouldn't be immediately visible to the host.
>> > Instead simply kick all VCPUs, so that they clean their ap_list's
>> > automatically when running vgic_prune_ap_list().
>> >
>> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>> > ---
>> >  virt/kvm/arm/vgic/vgic.c | 88 
>> ++++++++++++++++++++++++++++++++++++----
>> >  1 file changed, 80 insertions(+), 8 deletions(-)
>> >
>> > diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
>> > index 3b88e14d239f..28d9ff282017 100644
>> > --- a/virt/kvm/arm/vgic/vgic.c
>> > +++ b/virt/kvm/arm/vgic/vgic.c
>> > @@ -339,6 +339,38 @@ int vgic_dist_enable_group(struct kvm *kvm, 
>> int group, bool status)
>> >  	return 0;
>> >  }
>> >
>> > +/*
>> > + * Check whether a given IRQs need to be queued to this ap_list, 
>> and do
>> > + * so if that's the case.
>> > + * Requires the ap_list_lock to be held (but not the irq lock).
>> > + *
>> > + * Returns 1 if that IRQ has been added to the ap_list, and 0 if 
>> not.
>> > + */
>> > +static int queue_enabled_irq(struct kvm *kvm, struct kvm_vcpu 
>> *vcpu,
>> > +			     int intid)
>>
>> true/false seems better than 1/0.
>
> Mmh, indeed. I think I had more in there in an earlier version.
>
>> > +{
>> > +	struct vgic_irq *irq = vgic_get_irq(kvm, vcpu, intid);
>> > +	int ret = 0;
>> > +
>> > +	raw_spin_lock(&irq->irq_lock);
>> > +	if (!irq->vcpu && vcpu == vgic_target_oracle(irq)) {
>> > +		/*
>> > +		 * Grab a reference to the irq to reflect the
>> > +		 * fact that it is now in the ap_list.
>> > +		 */
>> > +		vgic_get_irq_kref(irq);
>> > +		list_add_tail(&irq->ap_list,
>> > +			      &vcpu->arch.vgic_cpu.ap_list_head);
>>
>> Two things:
>> - This should be the job of vgic_queue_irq_unlock. Why are you
>>   open-coding it?
>
> I was *really* keen on reusing that, but couldn't  for two reasons:
> a) the locking code inside vgic_queue_irq_unlock spoils that: It
> requires the irq_lock to be held, but not the ap_list_lock. Then it
> takes both locks, but returns with both of them dropped. We need to
> hold the ap_list_lock all of the time, to prevent any VCPU returning
> to the HV to interfere with this routine.
> b) vgic_queue_irq_unlock() kicks the VCPU already, where I want to
> just add all of them first, then kick the VCPU at the end.

Indeed, and that is why you need to change the way you queue these
pending, enabled, group-disabled interrupts (see the LPI issue below).

>
> So I decided to go with the stripped-down version of it, because I
> didn't dare to touch the original function. I could refactor this
> "actually add to the list" part of vgic_queue_irq_unlock() into this
> new function, then call it from both vgic_queue_irq_unlock() and from
> the new users.
>
>> - What if the interrupt isn't pending? Non-pending, non-active
>>   interrupts should not be on the AP list!
>
> That should be covered by vgic_target_oracle() already, shouldn't it?

Ah, yes, you're right.

>
>> > +		irq->vcpu = vcpu;
>> > +
>> > +		ret = 1;
>> > +	}
>> > +	raw_spin_unlock(&irq->irq_lock);
>> > +	vgic_put_irq(kvm, irq);
>> > +
>> > +	return ret;
>> > +}
>> > +
>> >  /*
>> >   * The group enable status of at least one of the groups has 
>> changed.
>> >   * If enabled is true, at least one of the groups got enabled.
>> > @@ -346,17 +378,57 @@ int vgic_dist_enable_group(struct kvm *kvm, 
>> int group, bool status)
>> >   */
>> >  void vgic_rescan_pending_irqs(struct kvm *kvm, bool enabled)
>> >  {
>> > +	int cpuid;
>> > +	struct kvm_vcpu *vcpu;
>> > +
>> >  	/*
>> > -	 * TODO: actually scan *all* IRQs of the VM for pending IRQs.
>> > -	 * If a pending IRQ's group is now enabled, add it to its 
>> ap_list.
>> > -	 * If a pending IRQ's group is now disabled, kick the VCPU to
>> > -	 * let it remove this IRQ from its ap_list. We have to let the
>> > -	 * VCPU do it itself, because we can't know the exact state of 
>> an
>> > -	 * IRQ pending on a running VCPU.
>> > +	 * If no group got enabled, we only have to potentially remove
>> > +	 * interrupts from ap_lists. We can't do this here, because a 
>> running
>> > +	 * VCPU might have ACKed an IRQ already, which wouldn't 
>> immediately
>> > +	 * be reflected in the ap_list.
>> > +	 * So kick all VCPUs, which will let them re-evaluate their 
>> ap_lists
>> > +	 * by running vgic_prune_ap_list(), removing no longer enabled
>> > +	 * IRQs.
>> > +	 */
>> > +	if (!enabled) {
>> > +		vgic_kick_vcpus(kvm);
>> > +
>> > +		return;
>> > +	}
>> > +
>> > +	/*
>> > +	 * At least one group went from disabled to enabled. Now we need
>> > +	 * to scan *all* IRQs of the VM for newly group-enabled IRQs.
>> > +	 * If a pending IRQ's group is now enabled, add it to the 
>> ap_list.
>> > +	 *
>> > +	 * For each VCPU this needs to be atomic, as we need *all* newly
>> > +	 * enabled IRQs in be in the ap_list to determine the highest
>> > +	 * priority one.
>> > +	 * So grab the ap_list_lock, then iterate over all private IRQs 
>> and
>> > +	 * all SPIs. Once the ap_list is updated, kick that VCPU to
>> > +	 * forward any new IRQs to the guest.
>> >  	 */
>> > +	kvm_for_each_vcpu(cpuid, vcpu, kvm) {
>> > +		unsigned long flags;
>> > +		int i;
>> >
>> > -	 /* For now just kick all VCPUs, as the old code did. */
>> > -	vgic_kick_vcpus(kvm);
>> > +		raw_spin_lock_irqsave(&vcpu->arch.vgic_cpu.ap_list_lock, 
>> flags);
>> > +
>> > +		for (i = 0; i < VGIC_NR_PRIVATE_IRQS; i++)
>> > +			queue_enabled_irq(kvm, vcpu, i);
>> > +
>> > +		for (i = VGIC_NR_PRIVATE_IRQS;
>> > +		     i < kvm->arch.vgic.nr_spis + VGIC_NR_PRIVATE_IRQS; i++)
>> > +			queue_enabled_irq(kvm, vcpu, i);
>>
>> On top of my questions above, what happens to LPIs?
>
> Oh dear. Looks like wishful thinking on my side ;-) Iterating over
> all interrupts is probably not a good idea anymore.
> Do you think this idea of having a list with group-disabled IRQs is a
> better approach: In vgic_queue_irq_unlock, if a pending IRQ's group 
> is
> enabled, it goes into the ap_list, if not, it goes into another list
> instead. Then we would only need to consult this other list when a
> group gets enabled. Both lists protected by the same ap_list_lock.
> Does that make sense?

I think that could work. One queue for each group, holding pending,
enabled, group-disabled interrupts. Pending, disabled interrupts are
not queued anywhere, just like today.

The only snag is per-cpu interrupts. On which queue do they live?
Do you have per-CPU queues? or a global one?

>> And if a group has
>> been disabled, how do you retire these interrupts from the AP list?
>
> This is done above: we kick the respective VCPU and rely on
> vgic_prune_ap_list() to remove them (that uses vgic_target_oracle(),
> which in turn checks vgic_irq_is_grp_enabled()).

But what if the CPU isn't running? Kicking it isn't going to do much,
is it?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
