Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A921818BAFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:22:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sEVh+6ts02xV4zCQ9wCVJGGta5C9uNgpn072qAOgksQ=; b=XNrjKntEWGHSYwW3t7Q6wxpvp
	/Z59k5fgEcXttQ8KYCeF1MHQQTFOE/0lffHLuvLIVRmvaH/Rba9zf4lOkJYZRZUR7yZ4F7+IHSTWE
	KmT+pqfRdl4lwpQFmxsxaDhhjycNFvQmNRwAZxYZCLMEwsZ1AH1HPzXcpQuwKufSO5KNp315rfy3S
	NwMr5gsMk4yfQmMi815Ul1eyKPQnxy3eJRY1sa+jOyBYdV42PPjnzGk8GbK7s7xKpo/CRt7TIfBGi
	GabZpBKoKiHT/JMjyzfUSOSd0EB/f1UdBiuq+bS/tzVraa81r/io9hfebCOO1TAQqC3vj7udsRIsk
	rOEYx9Hxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEwzd-0000Ej-TQ; Thu, 19 Mar 2020 15:21:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEwzR-0000EK-N1
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:21:47 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A324B20658;
 Thu, 19 Mar 2020 15:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584631304;
 bh=F6q5btvbklLUG07V2Lwbtfvpc+8jDG0/MxA3HQ9VDtM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JPA1J07If5eZNL6QR32IQDwuMxW4CIFSKTHedniqtt3qhjXMQhUB0dICE2zwCdK9P
 nGKPdsozIqPbRjniOwNbVCEGMzJgiYD4vsaMD870QC6D5Dy5d4Zif2wVhbSZOrHljp
 Z+KtwSGLZYHEmw+7UEHx938eVIzH5NvTBxnGMKsg=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jEwzO-00E0De-PQ; Thu, 19 Mar 2020 15:21:42 +0000
MIME-Version: 1.0
Date: Thu, 19 Mar 2020 15:21:42 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v5 23/23] KVM: arm64: GICv4.1: Expose HW-based SGIs in
 debugfs
In-Reply-To: <4cb4c3d4-7b02-bb77-cd7a-c185346b6a2f@redhat.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-24-maz@kernel.org>
 <4cb4c3d4-7b02-bb77-cd7a-c185346b6a2f@redhat.com>
Message-ID: <45c282bddd43420024633943c1befac3@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: eric.auger@redhat.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, yuzenghui@huawei.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_082145_796626_260AB428 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On 2020-03-19 15:05, Auger Eric wrote:
> Hi Marc,
> 
> On 3/4/20 9:33 PM, Marc Zyngier wrote:
>> The vgic-state debugfs file could do with showing the pending state
>> of the HW-backed SGIs. Plug it into the low-level code.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  virt/kvm/arm/vgic/vgic-debug.c | 14 +++++++++++++-
>>  1 file changed, 13 insertions(+), 1 deletion(-)
>> 
>> diff --git a/virt/kvm/arm/vgic/vgic-debug.c 
>> b/virt/kvm/arm/vgic/vgic-debug.c
>> index cc12fe9b2df3..b13a9e3f99dd 100644
>> --- a/virt/kvm/arm/vgic/vgic-debug.c
>> +++ b/virt/kvm/arm/vgic/vgic-debug.c
>> @@ -178,6 +178,8 @@ static void print_irq_state(struct seq_file *s, 
>> struct vgic_irq *irq,
>>  			    struct kvm_vcpu *vcpu)
>>  {
>>  	char *type;
>> +	bool pending;
> nit: can be directly initialized to irq->pending_latch
>> +
>>  	if (irq->intid < VGIC_NR_SGIS)
>>  		type = "SGI";
>>  	else if (irq->intid < VGIC_NR_PRIVATE_IRQS)
>> @@ -190,6 +192,16 @@ static void print_irq_state(struct seq_file *s, 
>> struct vgic_irq *irq,
>>  	if (irq->intid ==0 || irq->intid == VGIC_NR_PRIVATE_IRQS)
>>  		print_header(s, irq, vcpu);
>> 
>> +	pending = irq->pending_latch;
>> +	if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
>> +		int err;
>> +
>> +		err = irq_get_irqchip_state(irq->host_irq,
>> +					    IRQCHIP_STATE_PENDING,
>> +					    &pending);
>> +		WARN_ON_ONCE(err);
>> +	}
>> +
>>  	seq_printf(s, "       %s %4d "
>>  		      "    %2d "
>>  		      "%d%d%d%d%d%d%d "
>> @@ -201,7 +213,7 @@ static void print_irq_state(struct seq_file *s, 
>> struct vgic_irq *irq,
>>  		      "\n",
>>  			type, irq->intid,
>>  			(irq->target_vcpu) ? irq->target_vcpu->vcpu_id : -1,
>> -			irq->pending_latch,
>> +			pending,
>>  			irq->line_level,
>>  			irq->active,
>>  			irq->enabled,
>> 
> The patch looks good to me but I am now lost about how we retrieve the
> pending stat of other hw mapped interrupts. Looks we use
> irq->pending_latch always. Is that correct?

Correct. GICv4.0 doesn't give us an architectural way to look at the
vLPI pending state (there isn't even a guarantee about when the GIC
will stop writing to memory, if it ever does).

With GICv4.1, you can introspect the HW state for SGIs. You can also
look at the vLPI state by peeking at the virtual pending table, but
you'd need to unmap the VPE first, which I obviously don't want to do
for this debug interface, specially as it can be used whilst the guest
is up and running.

In the future, we'll have to implement that in order to support guest
save/restore from a GICv4.1 system. I haven't given much thought to it
though.

> For the patch:
> Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
