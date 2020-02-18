Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0167162359
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 10:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3O9jOwaK/VNZ7RUpHz0VXyAeIR+U8zpQoDbr2ylppNU=; b=Bi8Q0xtrUOvB6VDRe0NKapDxE
	nNuKSAivJBKw5Qytfa79PkOdFS5i9x6LanwPz7N6a96tNxXlMWpo/ZMjUS3DkqQHcHGJdZldBXnUN
	7EV9q/QTVz3s74EH1YFMlsgkoduzsnytmNjGbTkTJFddqh68z1BF2u473lZrULFVFC1xh02roWRRg
	O7l0mxhfagMaRcPuw8pClWa+ExHVIMCdFSEzujt0tJRxVOSSiN7mHvBQPfz0safXUdWTXdqK40pCg
	AI3uMGB9bCt9QmwuuzXiXKTBj64rqtBZXD+TwDgqYheRj+e3EfiDHPFZaSH/XzIgFnuusEoYD/rrs
	gLuB0jO2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zAb-0002PE-Tr; Tue, 18 Feb 2020 09:27:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zAR-0002Oc-Hv
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 09:27:49 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8FD9206EF;
 Tue, 18 Feb 2020 09:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582018066;
 bh=JfpnX0/9AXLX0SUbepC6ix94WfC2VqtqT6BShq+yOfY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=i1haDJBjVgMh5Z7iwcxqIPg/WGXs7z0EMLSEMdnH/za4diZ8awNNMtjwGtabI/lIp
 VqU2FVFh4bDIRMvJpSNwBU0pVTDG/F9SEdf0JMsf1n237Pn+/e0cHW7rCudfCcUM3F
 UNa9nlJINV2tawUiRWnD29FGW09j4zoy/Fj888bY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j3zAP-006BEh-0t; Tue, 18 Feb 2020 09:27:45 +0000
MIME-Version: 1.0
Date: Tue, 18 Feb 2020 09:27:44 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v4 08/20] irqchip/gic-v4.1: Plumb get/set_irqchip_state
 SGI callbacks
In-Reply-To: <4b7f71f1-5e7f-e6af-f47d-7ed0d3a8739f@huawei.com>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-9-maz@kernel.org>
 <4b7f71f1-5e7f-e6af-f47d-7ed0d3a8739f@huawei.com>
Message-ID: <75597af0d2373ac4d92d8162a1338cbb@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_012747_636534_0F4F66DF 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-02-18 07:00, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2020/2/14 22:57, Marc Zyngier wrote:
>> To implement the get/set_irqchip_state callbacks (limited to the
>> PENDING state), we have to use a particular set of hacks:
>> 
>> - Reading the pending state is done by using a pair of new 
>> redistributor
>>    registers (GICR_VSGIR, GICR_VSGIPENDR), which allow the 16 
>> interrupts
>>    state to be retrieved.
>> - Setting the pending state is done by generating it as we'd otherwise 
>> do
>>    for a guest (writing to GITS_SGIR)
>> - Clearing the pending state is done by emiting a VSGI command with 
>> the
>>    "clear" bit set.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>   drivers/irqchip/irq-gic-v3-its.c   | 56 
>> ++++++++++++++++++++++++++++++
>>   include/linux/irqchip/arm-gic-v3.h | 14 ++++++++
>>   2 files changed, 70 insertions(+)
>> 
>> diff --git a/drivers/irqchip/irq-gic-v3-its.c 
>> b/drivers/irqchip/irq-gic-v3-its.c
>> index 1e448d9a16ea..a9753435c4ff 100644
>> --- a/drivers/irqchip/irq-gic-v3-its.c
>> +++ b/drivers/irqchip/irq-gic-v3-its.c
>> @@ -3915,11 +3915,67 @@ static int its_sgi_set_affinity(struct 
>> irq_data *d,
>>   	return -EINVAL;
>>   }
>>   +static int its_sgi_set_irqchip_state(struct irq_data *d,
>> +				     enum irqchip_irq_state which,
>> +				     bool state)
>> +{
>> +	if (which != IRQCHIP_STATE_PENDING)
>> +		return -EINVAL;
>> +
>> +	if (state) {
>> +		struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
>> +		struct its_node *its = find_4_1_its();
>> +		u64 val;
>> +
>> +		val  = FIELD_PREP(GITS_SGIR_VPEID, vpe->vpe_id);
>> +		val |= FIELD_PREP(GITS_SGIR_VINTID, d->hwirq);
>> +		writeq_relaxed(val, its->sgir_base + GITS_SGIR - SZ_128K);
>> +	} else {
>> +		its_configure_sgi(d, true);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int its_sgi_get_irqchip_state(struct irq_data *d,
>> +				     enum irqchip_irq_state which, bool *val)
>> +{
>> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
>> +	void __iomem *base = gic_data_rdist_cpu(vpe->col_idx)->rd_base + 
>> SZ_128K;
> 
> There might be a race on reading the 'vpe->col_idx' against a 
> concurrent
> vPE schedule (col_idx will be modified in its_vpe_set_affinity)? Will 
> we
> end up accessing the GICR_VSGI* registers of the old redistributor,
> while the vPE is now resident on the new one? Or is it harmful?

Very well spotted. There is a potential problem if old and new RDs are 
not part
of the same CommonLPIAff group.

> The same question for direct_lpi_inv(), where 'vpe->col_idx' will be
> used in irq_to_cpuid().

Same problem indeed. We need to ensure that no VMOVP operation can occur 
whilst
we use col_idx to access a redistributor. This means a vPE lock of some 
sort
that will protect the affinity.

But I think there is a slightly more general problem here, which we 
failed to
see initially: the same issue exists for physical LPIs, as col_map[] can 
be
updated (its_set_affinity()) in parallel with a direct invalidate.

The good old invalidation through the ITS does guarantee that the two 
operation
don't overlap, but direct invalidation breaks it.

Let me have a think about it.

> 
>> +	u32 count = 1000000;	/* 1s! */
>> +	u32 status;
>> +
>> +	if (which != IRQCHIP_STATE_PENDING)
>> +		return -EINVAL;
>> +
>> +	writel_relaxed(vpe->vpe_id, base + GICR_VSGIR);
>> +	do {
>> +		status = readl_relaxed(base + GICR_VSGIPENDR);
>> +		if (!(status & GICR_VSGIPENDR_BUSY))
>> +			goto out;
>> +
>> +		count--;
>> +		if (!count) {
>> +			pr_err_ratelimited("Unable to get SGI status\n");
>> +			goto out;
>> +		}
>> +		cpu_relax();
>> +		udelay(1);
>> +	} while(count);
>> +
>> +out:
>> +	*val = !!(status & (1 << d->hwirq));
>> +
>> +	return 0;
>> +}
>> +
>>   static struct irq_chip its_sgi_irq_chip = {
>>   	.name			= "GICv4.1-sgi",
>>   	.irq_mask		= its_sgi_mask_irq,
>>   	.irq_unmask		= its_sgi_unmask_irq,
>>   	.irq_set_affinity	= its_sgi_set_affinity,
>> +	.irq_set_irqchip_state	= its_sgi_set_irqchip_state,
>> +	.irq_get_irqchip_state	= its_sgi_get_irqchip_state,
>>   };
>>     static int its_sgi_irq_domain_alloc(struct irq_domain *domain,
>> diff --git a/include/linux/irqchip/arm-gic-v3.h 
>> b/include/linux/irqchip/arm-gic-v3.h
>> index a89578884263..64da945486ac 100644
>> --- a/include/linux/irqchip/arm-gic-v3.h
>> +++ b/include/linux/irqchip/arm-gic-v3.h
>> @@ -345,6 +345,15 @@
>>   #define GICR_VPENDBASER_4_1_VGRP1EN	(1ULL << 58)
>>   #define GICR_VPENDBASER_4_1_VPEID	GENMASK_ULL(15, 0)
>>   +#define GICR_VSGIR			0x0080
>> +
>> +#define GICR_VSGIR_VPEID		GENMASK(15, 0)
>> +
>> +#define GICR_VSGIPENDR			0x0088
>> +
>> +#define GICR_VSGIPENDR_BUSY		(1U << 31)
>> +#define GICR_VSGIPENDR_PENDING		GENMASK(15, 0)
>> +
>>   /*
>>    * ITS registers, offsets from ITS_base
>>    */
>> @@ -368,6 +377,11 @@
>>     #define GITS_TRANSLATER			0x10040
>>   +#define GITS_SGIR			0x20020
>> +
>> +#define GITS_SGIR_VPEID			GENMASK_ULL(47, 32)
>> +#define GITS_SGIR_VINTID		GENMASK_ULL(7, 0)
> 
> The spec says vINTID field is [3:0] of the GITS_SGIR.

Indeed, well spotted again!

Thanks,

          M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
