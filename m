Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B425E1B55C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hZsJruPt8PgO6JNt8bVRI4JlyS3YJhSIifYtGd/BS0A=; b=FhWzDAF7qpyE4637FgCQrpxFB
	u5ipBs64d0chLQlSOKqpgfrVa64s0B/uBV+9QeKD/tX80ByrOlnrPa+FJZoipTH83Q3nC3hOrTqth
	1zFa/Tzh0KNBWX3KHoIkjNfdC0YV+QudcPAkotyJuFyOenmntiow64M+uB5DHR3HMewQaP5lGDSw7
	2OwRxXFSwuGEBBTVUV/bisg64bNc30OWLVd8XNSzzJOOpT2xZQL1wOkudlNKrcx/NRp9MDUj168aY
	Tw1HtWjlThSgeQV2B26YPUuQrqMtvdMtiAR8k92Ub2bjusexx2RWnWqoaCMmRxj9wwKu6zoOCG68E
	RD0Sb37Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ9aj-0002Hg-HM; Mon, 13 May 2019 11:58:01 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9ac-0002DJ-Cl
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:57:56 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1A687BF275AA98292D00;
 Mon, 13 May 2019 19:57:49 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Mon, 13 May 2019
 19:57:39 +0800
Subject: Re: [RFC PATCH] irqchip/gic-v3: Correct the usage of GICD_CTLR's RWP
 field
To: Andre Przywara <andre.przywara@arm.com>
References: <1557720954-6592-1-git-send-email-yuzenghui@huawei.com>
 <20190513093704.0b293de0@donnerap.cambridge.arm.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <0d1febde-30de-6474-4cca-a0a17963a329@huawei.com>
Date: Mon, 13 May 2019 19:55:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20190513093704.0b293de0@donnerap.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_045754_650387_4E7BF0AC 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: drjones@redhat.com, jason@lakedaemon.net, marc.zyngier@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 wanghaibin.wang@huawei.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

On 2019/5/13 16:37, Andre Przywara wrote:
> On Mon, 13 May 2019 04:15:54 +0000
> Zenghui Yu <yuzenghui@huawei.com> wrote:
> 
> Hi,
> 
>> As per ARM IHI 0069D, GICD_CTLR's RWP field tracks updates to:
>>
>> 	GICD_CTLR's Group Enable bits, for transitions from 1 to 0 only
>> 	GICD_CTLR's ARE bits, E1NWF bit and DS bit (if we have)
>> 	GICD_ICENABLER<n>
>>
>> We seemed use this field in an inappropriate way, somewhere in the
>> GIC-v3 driver. For some examples:
>>
>> In gic_set_affinity(), if the interrupt was not enabled, we only need
>> to write GICD_IROUTER<n> with the appropriate mpidr value. Updates to
>> GICD_IROUTER will not be tracked by RWP field, and we can remove the
>> unnecessary RWP waiting.
> 
> I am not sure this is the proper fix, see below inline.
> 
>> In gic_dist_init(), we "Enable distributor with ARE, Group1" by writing
>> to GICD_CTLR, and we should use gic_dist_wait_for_rwp() here.
> 
> That looks reasonable, yes.
> 
>> These two are obvious cases, and there are some other cases where we don't
>> need to do RWP waiting, such as in gic_configure_irq() and gic_poke_irq().
>> But too many modifications makes me not confident. It's hard for me to say
>> whether this patch is doing the right thing and how does the RWP waiting
>> affect the system, thus RFC.
> 
> So did you actually see a problem, and this patch fixes it? Or was this
> just discovered by code inspection and comparing to the spec?

The latter ;-)

>> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
>> ---
>>   drivers/irqchip/irq-gic-v3.c | 8 ++------
>>   1 file changed, 2 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
>> index 15e55d3..8d63950 100644
>> --- a/drivers/irqchip/irq-gic-v3.c
>> +++ b/drivers/irqchip/irq-gic-v3.c
>> @@ -600,6 +600,7 @@ static void __init gic_dist_init(void)
>>   	/* Enable distributor with ARE, Group1 */
>>   	writel_relaxed(GICD_CTLR_ARE_NS | GICD_CTLR_ENABLE_G1A |
>> GICD_CTLR_ENABLE_G1, base + GICD_CTLR);
>> +	gic_dist_wait_for_rwp();
>>   
>>   	/*
>>   	 * Set all global interrupts to the boot CPU only. ARE must be
>> @@ -986,14 +987,9 @@ static int gic_set_affinity(struct irq_data *d,
>> const struct cpumask *mask_val,
>>   	gic_write_irouter(val, reg);
>>   
>> -	/*
>> -	 * If the interrupt was enabled, enabled it again. Otherwise,
>> -	 * just wait for the distributor to have digested our changes.
>> -	 */
>> +	/* If the interrupt was enabled, enabled it again. */
>>   	if (enabled)
>>   		gic_unmask_irq(d);
>> -	else
>> -		gic_dist_wait_for_rwp();
> 
> I think you are right in this is not needed here.
> But I guess this call belongs further up in this function, after the
> gic_mask_irq() call, as this one writes to GICD_ICENABLER. So in case this
> IRQ was enabled, we should wait for the distributor to have properly
> disabled it, before changing its affinity.

I still think we don't need this call in gic_set_affinity().
Actually, the writes to GICD_ICENABLER happens in gic_poke_irq(). And we
already have a gic_dist_wait_for_rwp() there, named rwp_wait().


thanks,
zenghui

> 
> Cheers,
> Andre.
> 
>>   
>>   	irq_data_update_effective_affinity(d, cpumask_of(cpu));
>>   
> 
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
