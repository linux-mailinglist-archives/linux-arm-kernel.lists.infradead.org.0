Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3919A18C0D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NJHl3XkQWidx7WglYft1z8Tj7ybEYB1PVsmbdU7uqGI=; b=iMx4zPjlE7+lGas6weiBOXpoq
	ZjG6eR5wzVF26fJtj5/IzSWEf2gyGO4wvjNj9uBDr9S/KH8iFhieSYO0sVYf51lHXSIqyjYpNUrHx
	PcJUmSaAmCh4QMhuM2y2bXzEVnn8E6eAop81lKRPbycj3uztmgKUNoHv0TZMLsx6U/ZpruRrvPyI6
	aOvzHw1QVE3QUEz+HZuuPRSDUQ1NVqMn0ohFIMlzSHWh5HVlrwt2aeyEfOQL8EZsEzny7UGBmPjXt
	j7vaVugANvSCbBqDfxmtPat+z9cuu1LrrLNLp5YLkat0voiXwyHRHuYAmC97IluC+4P8mjEdKrU9d
	Rwb7AGq+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1Ef-0004KL-Rb; Thu, 19 Mar 2020 19:53:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1Dh-0003bM-7t
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:52:49 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19B8A206D7;
 Thu, 19 Mar 2020 19:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584647564;
 bh=UMFRuMeWN29pb4882uOYxANHVABCplgj+koAb1z+2dE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qkSTKb4utIarMQd8CDJcC0r66jjv4E6Grgajl0GaZ2NsWZFpgnSsxvNw5d1trhyVf
 m/hfAowH8zpNjr3UjCBAXtljDdoHJ8gci0Db/rlJFpoF62Ej37wABUnI3eg2J6bWh9
 n0uwur1NEU7m4GqQdTUpOURPTJro6MWBSuqnHrzk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jF1Dd-00E46F-Ts; Thu, 19 Mar 2020 19:52:42 +0000
MIME-Version: 1.0
Date: Thu, 19 Mar 2020 19:52:41 +0000
From: Marc Zyngier <maz@kernel.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH v5 19/23] KVM: arm64: GICv4.1: Allow SGIs to switch
 between HW and SW interrupts
In-Reply-To: <8a6cf87a-7eee-5502-3b54-093ea0ab5e2d@redhat.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-20-maz@kernel.org>
 <8a6cf87a-7eee-5502-3b54-093ea0ab5e2d@redhat.com>
Message-ID: <877ba4711c6b9456314ea580b9c4718c@kernel.org>
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
X-CRM114-CacheID: sfid-20200319_125245_353685_9E4882BF 
X-CRM114-Status: GOOD (  15.50  )
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

On 2020-03-19 16:16, Auger Eric wrote:
> Hi Marc,
> 
> On 3/4/20 9:33 PM, Marc Zyngier wrote:
>> In order to let a guest buy in the new, active-less SGIs, we
>> need to be able to switch between the two modes.
>> 
>> Handle this by stopping all guest activity, transfer the state
>> from one mode to the other, and resume the guest. Nothing calls
>> this code so far, but a later patch will plug it into the MMIO
>> emulation.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>  include/kvm/arm_vgic.h      |  3 ++
>>  virt/kvm/arm/vgic/vgic-v4.c | 94 
>> +++++++++++++++++++++++++++++++++++++
>>  virt/kvm/arm/vgic/vgic.h    |  1 +
>>  3 files changed, 98 insertions(+)
>> 
>> diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
>> index 63457908c9c4..69f4164d6477 100644
>> --- a/include/kvm/arm_vgic.h
>> +++ b/include/kvm/arm_vgic.h
>> @@ -231,6 +231,9 @@ struct vgic_dist {
>>  	/* distributor enabled */
>>  	bool			enabled;
>> 
>> +	/* Wants SGIs without active state */
>> +	bool			nassgireq;
>> +
>>  	struct vgic_irq		*spis;
>> 
>>  	struct vgic_io_device	dist_iodev;
>> diff --git a/virt/kvm/arm/vgic/vgic-v4.c b/virt/kvm/arm/vgic/vgic-v4.c
>> index c2fcde104ea2..a65dc1c85363 100644
>> --- a/virt/kvm/arm/vgic/vgic-v4.c
>> +++ b/virt/kvm/arm/vgic/vgic-v4.c
>> @@ -97,6 +97,100 @@ static irqreturn_t vgic_v4_doorbell_handler(int 
>> irq, void *info)
>>  	return IRQ_HANDLED;
>>  }
>> 
>> +static void vgic_v4_sync_sgi_config(struct its_vpe *vpe, struct 
>> vgic_irq *irq)
>> +{
>> +	vpe->sgi_config[irq->intid].enabled	= irq->enabled;
>> +	vpe->sgi_config[irq->intid].group 	= irq->group;
>> +	vpe->sgi_config[irq->intid].priority	= irq->priority;
>> +}
>> +
>> +static void vgic_v4_enable_vsgis(struct kvm_vcpu *vcpu)
>> +{
>> +	struct its_vpe *vpe = &vcpu->arch.vgic_cpu.vgic_v3.its_vpe;
>> +	int i;
>> +
>> +	/*
>> +	 * With GICv4.1, every virtual SGI can be directly injected. So
>> +	 * let's pretend that they are HW interrupts, tied to a host
>> +	 * IRQ. The SGI code will do its magic.
>> +	 */
>> +	for (i = 0; i < VGIC_NR_SGIS; i++) {
>> +		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, i);
>> +		struct irq_desc *desc;
>> +		int ret;
> Is is safe without holding the irq->irq_lock?

The assumption here is that we're coming vgic_v4_configure_vsgis(), 
which starts
by stopping the whole guest. My guess is that it should be safe enough, 
but
maybe you are thinking of something else?

Thanks,

          M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
