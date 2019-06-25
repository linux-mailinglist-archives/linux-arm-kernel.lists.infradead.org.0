Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6AE553E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r3y54LU7m5JV6zY5/Hz1hMRr0XKsZJQEVgXkzskdut4=; b=rcvr2IZXfDOyY6X8qkFF+hDku
	9SzEUI3vJ619IdwaXA1g+bclvB8C86aJAVWh4SCFIIK2LE9Ux6VVUjsEn6g9Me+nB7TSZEQFFXlZ1
	omWBfUg5Ik1xKFM9jF7+eMZ4I0cSlV+GIbpLU9FeugpJfIXieyVkCe19FaUahAytleIimOZjissKX
	U09aVXw1VwU8nVG9SVvtGG8eDPb790ESSrigguM/LNSrE8t3Y5LFLDnLyAJAyYCrL4ETJ/hu8QVWZ
	kRZpftch/C0cvvS5qvzDCIkhO3ZSQlthP8CdxTfWUyZ+UBF+bJj3xdH7rrsOZgYkPjFSR/qiK8Aet
	K/mySQ07g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfntZ-0006H9-6R; Tue, 25 Jun 2019 16:02:09 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfntP-0006GA-9i
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:02:01 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5CF3AEA899F81CF85AC9;
 Wed, 26 Jun 2019 00:01:53 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Wed, 26 Jun 2019
 00:01:45 +0800
Subject: Re: [PATCH v2 7/9] KVM: arm/arm64: vgic-its: Cache successful
 MSI->LPI translation
To: Marc Zyngier <marc.zyngier@arm.com>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>
References: <20190611170336.121706-1-marc.zyngier@arm.com>
 <20190611170336.121706-8-marc.zyngier@arm.com>
 <53de88e9-3550-bd7f-8266-35c5e75fae4e@huawei.com>
 <169cc847-ebfa-44b6-00e7-c69dccdbbd62@arm.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <7af32ebf-91a8-ef63-6108-4ca506fd364e@huawei.com>
Date: Wed, 26 Jun 2019 00:00:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <169cc847-ebfa-44b6-00e7-c69dccdbbd62@arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_090159_908047_D291A225 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>, "Saidi,
 Ali" <alisaidi@amazon.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2019/6/25 20:31, Marc Zyngier wrote:
> Hi Zenghui,
> 
> On 25/06/2019 12:50, Zenghui Yu wrote:
>> Hi Marc,
>>
>> On 2019/6/12 1:03, Marc Zyngier wrote:
>>> On a successful translation, preserve the parameters in the LPI
>>> translation cache. Each translation is reusing the last slot
>>> in the list, naturally evincting the least recently used entry.
>>>
>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>>> ---
>>>    virt/kvm/arm/vgic/vgic-its.c | 86 ++++++++++++++++++++++++++++++++++++
>>>    1 file changed, 86 insertions(+)
>>>
>>> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
>>> index 0aa0cbbc3af6..62932458476a 100644
>>> --- a/virt/kvm/arm/vgic/vgic-its.c
>>> +++ b/virt/kvm/arm/vgic/vgic-its.c
>>> @@ -546,6 +546,90 @@ static unsigned long vgic_mmio_read_its_idregs(struct kvm *kvm,
>>>    	return 0;
>>>    }
>>>    
>>> +static struct vgic_irq *__vgic_its_check_cache(struct vgic_dist *dist,
>>> +					       phys_addr_t db,
>>> +					       u32 devid, u32 eventid)
>>> +{
>>> +	struct vgic_translation_cache_entry *cte;
>>> +	struct vgic_irq *irq = NULL;
>>> +
>>> +	list_for_each_entry(cte, &dist->lpi_translation_cache, entry) {
>>> +		/*
>>> +		 * If we hit a NULL entry, there is nothing after this
>>> +		 * point.
>>> +		 */
>>> +		if (!cte->irq)
>>> +			break;
>>> +
>>> +		if (cte->db == db &&
>>> +		    cte->devid == devid &&
>>> +		    cte->eventid == eventid) {
>>> +			/*
>>> +			 * Move this entry to the head, as it is the
>>> +			 * most recently used.
>>> +			 */
>>> +			list_move(&cte->entry, &dist->lpi_translation_cache);
>>
>> Only for performance reasons: if we hit at the "head" of the list, we
>> don't need to do a list_move().
>> In our tests, we found that a single list_move() takes nearly (sometimes
>> even more than) one microsecond, for some unknown reason...
> 
> Huh... That's odd.
> 
> Can you narrow down under which conditions this happens? I'm not sure if
> checking for the list head would be more efficient, as you end-up
> fetching the head anyway. Can you try replacing this line with:
> 
> 	if (!list_is_first(&cte->entry, &dist->lpi_translation_cache))
> 		list_move(&cte->entry, &dist->lpi_translation_cache);
> 
> and let me know whether it helps?

It helps. With this change, the overhead of list_move() is gone.

We run 16 4-vcpu VMs on the host, each with a vhost-user nic, and run
"iperf" in pairs between them.  It's likely to hit at the head of the
cache list in our tests.
With this change, the sys% utilization of vhostdpfwd threads will
decrease by about 10%.  But I don't know the reason exactly (I haven't
found any clues in code yet, in implementation of list_move...).


Thanks,
zenghui




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
