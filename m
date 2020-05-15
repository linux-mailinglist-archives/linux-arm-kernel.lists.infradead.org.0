Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5A41D4D0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=++lG4UjgiSOPhNOtaXIVerbqzAM/kiE4/lCNK+bW/90=; b=r724P7lyuNa4AgYAMUyMbpKRW
	mOsFdEPq2EDJQKvkqyMFpKw38ht2ePek0ffZf1YV2jlOqieOz2MV8DzzR4z+Ly2Rc72auaIfxSmrD
	JredvFOgFcOI+1TRsgf5A1+lZwq48nctty1B/JqA8ZU+HRy0YzllRTVsGdoBdcrMHvFOvWlUor4QW
	0PBD75Gwk0rZIZJtuhyKBYTF1XHgHVnuD316OASSeSHtQN+C/DVyYrQMl2DVZHhIrfpPVhk3JcO4C
	hK2kFnhrYLlt9d1Hd0OKCHKN+jREi818X6GHb5L0vGa/34D/PRIkTR7Qk7IPDgNXqO2j+nH43ZASk
	X6bD7G9jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYs4-0000rb-39; Fri, 15 May 2020 11:51:20 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYru-0000pz-EE
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:51:12 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 58A4C1273F1470C21441;
 Fri, 15 May 2020 12:51:04 +0100 (IST)
Received: from [127.0.0.1] (10.47.1.24) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Fri, 15 May
 2020 12:51:01 +0100
Subject: Re: [PATCH v3 0/2] irqchip/gic-v3-its: Balance LPI affinity across
 CPUs
To: Marc Zyngier <maz@kernel.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <9171c554-50d2-142b-96ae-1357952fce52@huawei.com>
 <80b673a7-1097-c5fa-82c0-1056baa5309d@huawei.com>
 <f2971d1c-50f8-bf5a-8b16-8d84a631b0ba@huawei.com>
 <7c05b08b-2edc-7f97-0175-898e9772673e@huawei.com>
 <668f819c8747104814245cd6faebdd9a@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <a22aaa72-4f5f-40d4-33e0-0aff8b65fdc2@huawei.com>
Date: Fri, 15 May 2020 12:50:06 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <668f819c8747104814245cd6faebdd9a@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.47.1.24]
X-ClientProxiedBy: lhreml709-chm.china.huawei.com (10.201.108.58) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_045110_633986_8EE864C2 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jason Cooper <jason@lakedaemon.net>,
 "chenxiang \(M\)" <chenxiang66@hisilicon.com>, Will Deacon <will@kernel.org>,
 luojiaxing <luojiaxing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ming Lei <ming.lei@redhat.com>, "Wangzhou \(B\)" <wangzhou1@hisilicon.com>,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Hi Marc,

> Absolutely. Life has got in the way, so let me page it back in...

Great

>>
>> [PATCH 2/2] irqchip/gic-v3-its: Handle no overlap of non-managed irq
>>   affinity mask
>>
>> In selecting the target CPU for a non-managed interrupt, we may select
>> a
>> target CPU outside the requested affinity mask.
>>
>> This is because there may be no overlap of the ITS node mask and the
>> requested CPU affinity mask. The requested affinity mask may be coming
>> from userspace or some drivers which try to set irq affinity, see [0].
>>
>> In this case, just ignore the ITS node cpumask. This is a deviation
>> from
>> what Thomas described. Having said that, I am not sure if the
>> interrupt is ever bound to a node for us.
>>
>> [0]
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/perf/hisilicon/hisi_uncore_pmu.c#n417
>>
>> ---
>>   drivers/irqchip/irq-gic-v3-its.c | 4 ----
>>   1 file changed, 4 deletions(-)
>>
>> diff --git a/drivers/irqchip/irq-gic-v3-its.c
>> b/drivers/irqchip/irq-gic-v3-its.c
>> index 2b18feb..12d5d4b4 100644
>> --- a/drivers/irqchip/irq-gic-v3-its.c
>> +++ b/drivers/irqchip/irq-gic-v3-its.c
>> @@ -1584,10 +1584,6 @@ static int its_select_cpu(struct irq_data *d,
>>   			cpumask_and(tmpmask, cpumask_of_node(node), aff_mask);
>>   			cpumask_and(tmpmask, tmpmask, cpu_online_mask);
>>
>> -			/* If that doesn't work, try the nodemask itself */
>> -			if (cpumask_empty(tmpmask))
>> -				cpumask_and(tmpmask, cpumask_of_node(node), cpu_online_mask);
>> -
>>   			cpu = cpumask_pick_least_loaded(d, tmpmask);
>>   			if (cpu < nr_cpu_ids)
>>   				goto out;
> 
> I'm really not sure. Shouldn't we then drop the wider search on
> cpu_inline_mask, because userspace could have given us something
> that we cannot deal with?

It's not just userspace. Some drivers call irq_set_affinity{_hint}}() 
also, with a non-overlapping affinity mask.

We could just error these requests, but some drivers rely on this 
behavior. Consider the uncore driver I mentioned above, which WARNs when 
the affinity setting fails. So it tries to set the affinity with the 
cpumask of the cluster associated with the device, but with D06's ITS 
config, below, there may be no overlap.

> 
> What you are advocating for is a strict adherence to the provided
> mask, and it doesn't seem to be what other architectures are providing.
> I consider the userspace-provided affinity as a hint more that anything
> else, as in this case the kernel does know better (routing the interrupt
> to a foreign node might be costly, or even impossible, see the TX1
> erratum).

Right

> 
>   From what I remember of the earlier discussion, you saw an issue on
> a system with two sockets and a single ITS, with the node mask limited
> to the first socket. Is that correct?

A bit more complicated: 2 sockets, 2 NUMA nodes per socket, and ITS 
config as follows:
D06ES  1x ITS with proximity node #0

root@(none)$ dmesg | grep ITS
[ 0.000000] SRAT: PXM 0 -> ITS 0 -> Node 0


D06CS
2x ITS with proximity node #0, #2

estuary:/$ dmesg | grep ITS
[    0.000000] SRAT: PXM 0 -> ITS 0 -> Node 0
[    0.000000] SRAT: PXM 2 -> ITS 1 -> Node 2

It complicates things.

We could add extra intelligence to record if an node has an ITS 
associated. In the case of that not being true, we would fallback on the 
requested affin only (for case of no overlap). It gets a bit more messy 
then.

Thanks,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
