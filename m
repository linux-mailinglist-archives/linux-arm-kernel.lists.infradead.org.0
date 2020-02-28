Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421EC174009
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 20:00:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sHpdrXPwVV8By8p2dgnwdMl8x5vdtwyEpJzjz21w8lY=; b=YHuy2J3NDcPnCFB8zTQGBzdFM
	BZr+wAVSobZbvKEgt+SnRWCp/yL4LDFDcIeZfQGRraQPJ2k2T0fvzMWJ/tarYuWBZsk9qQOWwfk2e
	Vmb/YGAw6a8qiBuC/NrQWjZXjsOZ628Seb8Uiu0aeyZDrFpEIFmQaLfOn/seysxsb7wjfN8DYoWZV
	lb9Wh/UCUuj1Y4JPCaZCX60d9pU+MPoJ4YFQ9F4uDtliZQztzuRL4Hh0xu/jcOAwwbRgbjivHkFd+
	rY5sDVAuz2nu5V/6dVxuBlqdEbh5vlBebPTe45vx97g1kWMvS8Mi8x80Ha38cvf3aJEZ6R0kIWQfL
	cLI9NoUJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7krw-0000PB-Py; Fri, 28 Feb 2020 19:00:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7krp-0000O1-D6
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 19:00:10 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1142246A0;
 Fri, 28 Feb 2020 19:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582916409;
 bh=OTQM0R8+AqmsjTA1+kFoNN/miGIvet4k8Q05SzlET8A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iueYwt/hK/Lmh3fyKvxYlMPRoQLn7yUR7zrtRaDyRPCrdvN2e92LDS7pgV7JEillD
 dGUl0j/uLZ+pDUF6cJDmz0mrd6sUsemwKbebeVGOIYmouAemIiCIxwPN658aici6Mh
 ZboVjhnl13qexpaDHxU8aXHwF6i36NBSfDz/m7Oo=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j7krn-008pfQ-7f; Fri, 28 Feb 2020 19:00:07 +0000
MIME-Version: 1.0
Date: Fri, 28 Feb 2020 19:00:07 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v4 09/20] irqchip/gic-v4.1: Plumb set_vcpu_affinity SGI
 callbacks
In-Reply-To: <38b42ac1-5a5d-2f10-2cba-b50f37c7a965@huawei.com>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-10-maz@kernel.org>
 <38b42ac1-5a5d-2f10-2cba-b50f37c7a965@huawei.com>
Message-ID: <df752712387f706077ecfc9f8605183c@kernel.org>
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
X-CRM114-CacheID: sfid-20200228_110009_485090_4E39FE3D 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 2020-02-20 03:37, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2020/2/14 22:57, Marc Zyngier wrote:
>> As for VLPIs, there is a number of configuration bits that cannot
> 
> As for vSGIs,

No, I think this is correct, if a bit ambiguous. What I'm trying to say
here is that vSGIs have the same requirements as vLPIs, in the sense
that some of the configuration aspects cannot be expressed in terms of
the irqchip API.

> 
>> be directly communicated through the normal irqchip API, and we
>> have to use our good old friend set_vcpu_affinity.
>> 
>> This is used to configure group and priority for a given vSGI.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
> 
> Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
> 
>> ---
>>   drivers/irqchip/irq-gic-v3-its.c   | 18 ++++++++++++++++++
>>   include/linux/irqchip/arm-gic-v4.h |  5 +++++
>>   2 files changed, 23 insertions(+)
>> 
>> diff --git a/drivers/irqchip/irq-gic-v3-its.c 
>> b/drivers/irqchip/irq-gic-v3-its.c
>> index a9753435c4ff..a2e824eae43f 100644
>> --- a/drivers/irqchip/irq-gic-v3-its.c
>> +++ b/drivers/irqchip/irq-gic-v3-its.c
>> @@ -3969,6 +3969,23 @@ static int its_sgi_get_irqchip_state(struct 
>> irq_data *d,
>>   	return 0;
>>   }
>>   +static int its_sgi_set_vcpu_affinity(struct irq_data *d, void 
>> *vcpu_info)
>> +{
>> +	struct its_vpe *vpe = irq_data_get_irq_chip_data(d);
>> +	struct its_cmd_info *info = vcpu_info;
>> +
>> +	switch (info->cmd_type) {
>> +	case PROP_UPDATE_SGI:
>> +		vpe->sgi_config[d->hwirq].priority = info->priority;
>> +		vpe->sgi_config[d->hwirq].group = info->group;
>> +		its_configure_sgi(d, false);
>> +		return 0;
>> +
>> +	default:
>> +		return -EINVAL;
>> +	}
>> +}
>> +
>>   static struct irq_chip its_sgi_irq_chip = {
>>   	.name			= "GICv4.1-sgi",
>>   	.irq_mask		= its_sgi_mask_irq,
>> @@ -3976,6 +3993,7 @@ static struct irq_chip its_sgi_irq_chip = {
>>   	.irq_set_affinity	= its_sgi_set_affinity,
>>   	.irq_set_irqchip_state	= its_sgi_set_irqchip_state,
>>   	.irq_get_irqchip_state	= its_sgi_get_irqchip_state,
>> +	.irq_set_vcpu_affinity	= its_sgi_set_vcpu_affinity,
>>   };
>>     static int its_sgi_irq_domain_alloc(struct irq_domain *domain,
>> diff --git a/include/linux/irqchip/arm-gic-v4.h 
>> b/include/linux/irqchip/arm-gic-v4.h
>> index 30b4855bf766..a1a9d40266f5 100644
>> --- a/include/linux/irqchip/arm-gic-v4.h
>> +++ b/include/linux/irqchip/arm-gic-v4.h
>> @@ -98,6 +98,7 @@ enum its_vcpu_info_cmd_type {
>>   	SCHEDULE_VPE,
>>   	DESCHEDULE_VPE,
>>   	INVALL_VPE,
>> +	PROP_UPDATE_SGI,
> 
> Maybe better to use 'PROP_UPDATE_VSGI'?

That's indeed better.

Thanks,

          M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
