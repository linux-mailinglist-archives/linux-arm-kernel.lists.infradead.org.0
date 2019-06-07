Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6377338697
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 10:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GjbdJrjz/vCJVv5IdqYbhK2XSbn6jPmVw3+zyCPN+I=; b=rZQxd/+QFS5XAe
	vLcOTS5EzqsB0p8DVrpJb3jHVJtUFm5YtrSZ6+5ToBQOrShePKz+9w8ZIOw5CrCoSlJlfC8YsjakU
	H5krOwG+z6reR4K3RiTOVepUvlFGy4vrqBTh52fzHxJJulCrx0P9fB7x+c79FiA+Oi3Tvi8kSOMcR
	9YShipIWBiWovpM56ApuBDs4Wum6DQrtBe0bn+FufVD9oU/vl5qXX5dqN/gwTUSZ88dWk9WIIpqch
	7r1Hn0/+9eM43jNUuph+vtjsfnVTGhkxl+1Sd/EllXRqQ357JTRKIh8fc4C2P26f8NsCBIaaX/T7J
	tig24MH0bQj4jrmsX9kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZAfr-0002vU-1W; Fri, 07 Jun 2019 08:56:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAfg-0002v8-5h
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 08:56:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 526DD337;
 Fri,  7 Jun 2019 01:56:23 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 186583F246;
 Fri,  7 Jun 2019 01:56:20 -0700 (PDT)
Subject: Re: [PATCH 3/8] KVM: arm/arm64: vgic-its: Cache successful MSI->LPI
 translation
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190606165455.162478-1-marc.zyngier@arm.com>
 <20190606165455.162478-4-marc.zyngier@arm.com>
 <d9849310-7ff9-2385-d0e2-ac1de2878517@arm.com>
 <1c81ab00-12d1-9921-e1ce-2e2233516bab@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <2baf731f-922c-c3b8-abe5-593047a8ba00@arm.com>
Date: Fri, 7 Jun 2019 09:56:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <1c81ab00-12d1-9921-e1ce-2e2233516bab@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_015624_263066_14B790DD 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, Christoffer Dall <christoffer.dall@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/06/2019 09:51, Marc Zyngier wrote:
> On 07/06/2019 09:35, Julien Thierry wrote:
>> Hi Marc,
>>
>> On 06/06/2019 17:54, Marc Zyngier wrote:
>>> On a successful translation, preserve the parameters in the LPI
>>> translation cache. Each translation is reusing the last slot
>>> in the list, naturally evincting the least recently used entry.
>>>
>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>>> ---
>>>  virt/kvm/arm/vgic/vgic-its.c | 41 ++++++++++++++++++++++++++++++++++++
>>>  1 file changed, 41 insertions(+)
>>>
>>> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
>>> index 5758504fd934..bc370b6c5afa 100644
>>> --- a/virt/kvm/arm/vgic/vgic-its.c
>>> +++ b/virt/kvm/arm/vgic/vgic-its.c
>>> @@ -538,6 +538,45 @@ static unsigned long vgic_mmio_read_its_idregs(struct kvm *kvm,
>>>  	return 0;
>>>  }
>>>  
>>> +static void vgic_its_cache_translation(struct kvm *kvm, struct vgic_its *its,
>>> +				       u32 devid, u32 eventid,
>>> +				       struct vgic_irq *irq)
>>> +{
>>> +	struct vgic_dist *dist = &kvm->arch.vgic;
>>> +	struct vgic_translation_cache_entry *cte;
>>> +	unsigned long flags;
>>> +
>>> +	/* Do not cache a directly injected interrupt */
>>> +	if (irq->hw)
>>> +		return;
>>> +
>>> +	raw_spin_lock_irqsave(&dist->lpi_list_lock, flags);
>>> +
>>> +	/* Always reuse the last entry (LRU policy) */
>>> +	cte = list_last_entry(&dist->lpi_translation_cache,
>>> +			      typeof(*cte), entry);
>>> +
>>> +	/*
>>> +	 * Caching the translation implies having an extra reference
>>> +	 * to the interrupt, so drop the potential reference on what
>>> +	 * was in the cache, and increment it on the new interrupt.
>>> +	 */
>>> +	if (cte->irq)
>>> +		__vgic_put_lpi_locked(kvm, cte->irq);
>>> +
>>> +	vgic_get_irq_kref(irq);
>>
>> If cte->irq == irq, can we avoid the ref putting and getting and just
>> move the list entry (and update cte)?
> But in that case, we should have hit in the cache the first place, no?
> Or is there a particular race I'm not thinking of just yet?
> 

Yes, I had not made it far enough in the series to see the cache hits
and assumed this function would also be used to update the LRU policy.

You can dismiss this comment, sorry for the noise.

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
