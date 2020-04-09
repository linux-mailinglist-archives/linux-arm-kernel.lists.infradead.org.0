Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BCD1A384C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 18:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U93LO00v5Vn+hznPNNCnSL5DSqwxgRUqdQMQ8hWiNSQ=; b=ZOTVzfOMt737Tp
	t43+zYZ2TJP92pf2UNEfPuehwVnJADhDvJDeqIC+Xo95+fAT0zrr5aviuj143HwrdiHNAzgaDie/5
	yVcyQEj1LpUEiPNUnN8DvZO0rFAWNCjIZagD/ESxYS/Yr5Nz4owgTMUwbNs1crkcv/qYA1k8i+b8L
	sAXlOycQMxco0zXvV0mtIRrgMAH8gg3Ex98HKj42aVQzMAelKNY9aKdqTtH762CsCIavLGBEdJi5j
	yHN+Fj3oXEvfuLbAfO8jqqZknqX4cTwnnxRj7H+3AUi3TUpZIqRCeBnqvnS62Dtbtix04Y1Vfo84S
	IdcP2DqodhKmyPPm8TWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMaQt-0004PO-AX; Thu, 09 Apr 2020 16:53:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMaQl-0004Ow-TM
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 16:53:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4BC8931B;
 Thu,  9 Apr 2020 09:53:30 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5264F3F73D;
 Thu,  9 Apr 2020 09:53:29 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm64: arch_timer shouldn't assume the vcpu is loaded
To: Marc Zyngier <maz@kernel.org>
References: <20200406150355.4859-1-james.morse@arm.com>
 <20200408110726.4d81bc3b@why> <cc6bed09-33dd-027a-126f-ed22389c1624@arm.com>
 <20200409092706.74e6bd1d@why>
From: James Morse <james.morse@arm.com>
Message-ID: <20498855-352b-ed7a-c851-8ecf8b77e503@arm.com>
Date: Thu, 9 Apr 2020 17:53:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200409092706.74e6bd1d@why>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_095332_035907_C7117C82 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Andre Przywara <andre.przywara@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 09/04/2020 09:27, Marc Zyngier wrote:
> On Wed, 8 Apr 2020 12:16:01 +0100
> James Morse <james.morse@arm.com> wrote:
>> On 08/04/2020 11:07, Marc Zyngier wrote:
>>> I don't fully agree with the analysis, Remember we are looking at the
>>> state of the physical interrupt associated with a virtual interrupt, so
>>> the vcpu doesn't quite make sense here if it isn't loaded.
>>>
>>> What does it mean to look at the HW timer when we are not in the right
>>> context? For all we know, it is completely random (the only guarantee
>>> we have is that it is disabled, actually).  
>>
>>> My gut feeling is that this is another instance where we should provide
>>> specific userspace accessors that would only deal with the virtual
>>> state, and leave anything that deals with the physical state of the
>>> interrupt to be exercised only by the guest.  
>>
>>> Does it make sense?  
>>
>> Broadly, yes. Specifically ... I'm not familiar enough with this code to work out where
>> such a change should go!
>>
>> ~20 mins of grepping later~
>>
>> Remove REGISTER_DESC_WITH_LENGTH() so that uaccess helpers have to be provided, and forbid
>> NULL for the ur/uw values in REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED()...?
> 
> I'd suggest something like this (untested, of course):

[...]

>> Or if that is too invasive, something like, (totally, untested):
>> ----------------%<----------------
>> diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
>> index 97fb2a40e6ba..30ae5f29e429 100644
>> --- a/virt/kvm/arm/vgic/vgic-mmio.c
>> +++ b/virt/kvm/arm/vgic/vgic-mmio.c
>> @@ -113,10 +113,11 @@ void vgic_mmio_write_senable(struct kvm_vcpu *vcpu,
>>                 struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>>
>>                 raw_spin_lock_irqsave(&irq->irq_lock, flags);
>> -               if (vgic_irq_is_mapped_level(irq)) {
>> +               if (kvm_running_vcpu() && vgic_irq_is_mapped_level(irq)) {
>>                         bool was_high = irq->line_level;
>>
>>                         /*
>> +                        * Unless we are running due to a user-space access,
>>                          * We need to update the state of the interrupt because
>>                          * the guest might have changed the state of the device
>>                          * while the interrupt was disabled at the VGIC level.
>> ----------------%<----------------
> 
> Huh, nice try! ;-) Unfortunately, I think there is more than the enable
> register that suffers from a similar problem (see how the pending
> register write is also accessing the HW state, even if accessed from
> userspace).

Yeah, I'd expect to play wack-a-mole if I actually tested it. It was just the smallest,
er, hack I could get my head round given your explanation.


I've blindly tested your version, it works for me on a gicv2 machine:
Tested-by: James Morse <james.morse@arm.com>

I'll test on the gicv3 espressobin that I originally saw this on with rc1 on Tuesday.

Do you want me to post it back to you as a tested patch? You can judge whether I
understand it from the commit message... (I'd need your Signed-off-by...)

Have a good extended weekend!
Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
