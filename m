Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C01DE1AE27E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fI8ghUciNdNRRJjOVCZv9GAW6Gb7KUfwp4mrESjNQVA=; b=TvX4gF7Co2Gs6R
	8UhDjsSM28alSAGNDN77kOnvVLXUIrqZXg1J2E/Qb1KW0Q2lEJ83BNekF7SHkMO8Akw921Pqn63t5
	zz2fvgd5TgjkYhzBAUaLwIC+vwI/AogHQnIY3lFrMNzmyDuLTCBgjIVT+rwkc83lQoQLy4N4RNzv9
	pqQT65EeXf2wy6veGj2XdWTn867fSFml+fruMW0lbVG+zRsBLN3c3WslNlWXGHUqalxvMrK2Zs8K5
	F7edNGMus3KnXkgsHxOSVzykAEy9Rr4ckPXMKhH5SybYQUzZ6gkZkV7PaOPGA27W4QIy/nbkpUJ34
	vw7j1m1/XOYlkELbHkKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUAb-0006bH-RI; Fri, 17 Apr 2020 16:48:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUAS-0006aa-8D
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:48:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64671C14;
 Fri, 17 Apr 2020 09:48:37 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A5553F6C4;
 Fri, 17 Apr 2020 09:48:35 -0700 (PDT)
Subject: Re: [PATCH v2 4/6] KVM: arm: vgic-v2: Only use the virtual state when
 userspace accesses pending bits
To: Marc Zyngier <maz@kernel.org>
References: <20200417083319.3066217-1-maz@kernel.org>
 <20200417083319.3066217-5-maz@kernel.org>
 <4133d5f2-ed0e-9c4a-8a66-953fb6bf6e70@arm.com> <20200417134140.0a901749@why>
From: James Morse <james.morse@arm.com>
Message-ID: <7b001ee4-0a8e-d79c-1be4-563dab4ca452@arm.com>
Date: Fri, 17 Apr 2020 17:48:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200417134140.0a901749@why>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_094840_378927_1A224A92 
X-CRM114-Status: GOOD (  29.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Julien Grall <julien@xen.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 17/04/2020 13:41, Marc Zyngier wrote:
> On Fri, 17 Apr 2020 12:22:10 +0100 James Morse <james.morse@arm.com> wrote:
>> On 17/04/2020 09:33, Marc Zyngier wrote:
>>> There is no point in accessing the HW when writing to any of the
>>> ISPENDR/ICPENDR registers from userspace, as only the guest should
>>> be allowed to change the HW state.
>>>
>>> Introduce new userspace-specific accessors that deal solely with
>>> the virtual state. Note that the API differs from that of GICv3,
>>> where userspace exclusively uses ISPENDR to set the state. Too
>>> bad we can't reuse it.  

>>> diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
>>> index 6e30034d1464..f1927ae02d2e 100644
>>> --- a/virt/kvm/arm/vgic/vgic-mmio.c
>>> +++ b/virt/kvm/arm/vgic/vgic-mmio.c
>>> @@ -321,6 +321,27 @@ void vgic_mmio_write_spending(struct kvm_vcpu *vcpu,  
>>
>>> +int vgic_uaccess_write_spending(struct kvm_vcpu *vcpu,
>>> +				gpa_t addr, unsigned int len,
>>> +				unsigned long val)
>>> +{
>>> +	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
>>> +	int i;
>>> +	unsigned long flags;
>>> +
>>> +	for_each_set_bit(i, &val, len * 8) {
>>> +		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);  
>>
>> vgic_mmio_write_spending() has:
>> |	/* GICD_ISPENDR0 SGI bits are WI *
>>
>> and bales out early. Is GIC_DIST_PENDING_SET the same register?
>> (If so, shouldn't that be true for PPI too?)
> 
> Hmmm. It's a bit more complicated (surprisingly).
> 
> Yes, the SGI pending bits are WI from the guest perspective (as
> required by the spec).

> But we still need to be able to restore them
> from userspace, and I bet 82e40f558de56 ("KVM: arm/arm64: vgic-v2:
> Handle SGI bits in GICD_I{S,C}PENDR0 as WI") has broken migration with
> GICv2 (if you migrated with a pending SGI, you cannot restore it...).

Fun! It looks like the ioctl() would succeed, but nothing happened. Once you restart the
guest one CPU may wait forever for the victim to respond.


> Now, there is still a bug here, in the sense that we need to indicate
> which vcpu is the source of the SGI (this is a GICv2-special).
> Unfortunately, we don't have a way to communicate this architecturally.
> The only option we have is to make it up (as a self-SGI, for example).
> But this is pretty broken at the architectural level TBH.
> On the other hand, PPIs are just fine.

Yup, wrong spec, I was looking at the same register in GICv3! It looks like the GICv3 text
is there because those registers live in the redistributor instead... duh!


>>> @@ -390,6 +411,26 @@ void vgic_mmio_write_cpending(struct kvm_vcpu *vcpu,  
>>
>>> +int vgic_uaccess_write_cpending(struct kvm_vcpu *vcpu,
>>> +				gpa_t addr, unsigned int len,
>>> +				unsigned long val)
>>> +{
>>> +	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
>>> +	int i;
>>> +	unsigned long flags;
>>> +
>>> +	for_each_set_bit(i, &val, len * 8) {
>>> +		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);  
>>
>> Same dumb question about GICD_ICPENDR0!?
> 
> Not dumb at all! Given that we previously allowed this to be accessed
> from userspace (well, before we broke it again), it should be able to
> clear *something*. If we adopt the self-SGI behaviour as above, we will
> get away with it.
> 
> Here's what I'm proposing to add to this patch, together with a
> Fixes: 82e40f558de56 ("KVM: arm/arm64: vgic-v2: Handle SGI bits in GICD_I{S,C}PENDR0 as WI")
> 
> Nobody is using GICv2, obviously... :-/

> diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
> index f1927ae02d2e..974cdcf2f232 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio.c

> @@ -334,6 +322,15 @@ int vgic_uaccess_write_spending(struct kvm_vcpu *vcpu,
>  
>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>  		irq->pending_latch = true;
> +
> +		/*
> +		 * GICv2 SGIs are terribly broken. We can't restore
> +		 * the source of the interrupt, so just pick the vcpu
> +		 * itself as the source...

Makes sense, this way you can't have an SGI coming from an offline CPU!


> +		 */
> +		if (is_vgic_v2_sgi(vcpu, irq))
> +			irq->source |= BIT(vcpu->vcpu_id);
> +
>  		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
>  
>  		vgic_put_irq(vcpu->kvm, irq);

> @@ -423,7 +415,22 @@ int vgic_uaccess_write_cpending(struct kvm_vcpu *vcpu,
>  		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>  
>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> -		irq->pending_latch = false;
> +		/*
> +		 * More fun with GICv2 SGIs! If we're clearing one of them
> +		 * from userspace, which source vcpu to clear?  Let's pick
> +		 * the target vcpu itself (consistent whith the way we
> +		 * populate them on the ISPENDR side), and only clear the
> +		 * pending state if no sources are left (insert expletive
> +		 * here).

But I'm not so sure about this. Doesn't this mean that user-space can't clear pending-SGI?
Only if its pending due to self-SGI. I'm not sure when user-space would want to do this,
so it may not matter.

Using ffs() you could clear the lowest pending source, I assume if its pending, there is
likely only one source. If not, user-space can eventually clear pending SGI with at most
nr-vcpu calls ... and ffs() could double up as the missing expletive!

(but if user-space never actually does this, then we should do the simplest thing)


> +		 */
> +		if (is_vgic_v2_sgi(vcpu, irq)) {
> +			irq->source &= ~BIT(vcpu->vcpu_id);
> +			if (!irq->source)
> +				irq->pending_latch = false;
> +		} else {
> +			irq->pending_latch = false;
> +		}
> +
>  		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>  
>  		vgic_put_irq(vcpu->kvm, irq);

Otherwise looks good to me,


Thanks,

James

[0]
https://static.docs.arm.com/ihi0069/f/IHI0069F_gic_architecture_specification_v3_and_v4.1.pdf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
