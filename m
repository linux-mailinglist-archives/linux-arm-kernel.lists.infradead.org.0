Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EE4425BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ED5og7Gs9k93dvs7Mo/sZ9VrsRvN06/JdSBR1A0I+JY=; b=GCzsl6ZeFILtc8
	BRkNMkrWsGtKKFnEUojids0URYEIruZjgjrSGvtSsbCaJ4Zs2Tl4Fujbpp/LmjmKwmPYlsmdIDQlO
	K6HUFRdR5Y3yLir/hmC518CHmcnY0S+ahcNvmizra6p99aGDN7EKl3sO/D0cVPeuVmH6tfiLM6eLN
	5gkQpmtaB6Hd9vC4XHAG754eyWOIaGVrQ73g3npz7npj54DLCrgbYmEpiWil1GLtPSeXfkp+PtJrU
	WM+mS8cr2liigr9dQ/oRDGuTgUX1iJTtXeWZoR28lgcvpVsiZ/u13RiTTv6zOTN3szMn7WAPZ5J8R
	cplfKdlaP/SrJx30dN8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2Mn-00008h-MQ; Wed, 12 Jun 2019 12:28:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2Mf-00007q-2E
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:28:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E37B928;
 Wed, 12 Jun 2019 05:28:25 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F03F13F246;
 Wed, 12 Jun 2019 05:30:07 -0700 (PDT)
Subject: Re: [PATCH v2 1/9] KVM: arm/arm64: vgic: Add LPI translation cache
 definition
From: Julien Thierry <julien.thierry@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
References: <20190611170336.121706-1-marc.zyngier@arm.com>
 <20190611170336.121706-2-marc.zyngier@arm.com>
 <54c8547a-51fb-8ae5-975f-261d3934221a@arm.com>
 <86ef3zgmg6.wl-marc.zyngier@arm.com>
 <13655730-165b-d67b-a1da-11c8869c7053@arm.com>
Message-ID: <29cdb9f5-86c6-e86f-3827-4426a4fa8ac1@arm.com>
Date: Wed, 12 Jun 2019 13:28:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <13655730-165b-d67b-a1da-11c8869c7053@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_052829_205523_3516F88B 
X-CRM114-Status: GOOD (  32.21  )
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
Cc: "Raslan, KarimAllah" <karahmed@amazon.de>,
 linux-arm-kernel@lists.infradead.org, "Saidi, Ali" <alisaidi@amazon.com>,
 kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/06/2019 11:58, Julien Thierry wrote:
> 
> 
> On 12/06/2019 10:52, Marc Zyngier wrote:
>> Hi Julien,
>>
>> On Wed, 12 Jun 2019 09:16:21 +0100,
>> Julien Thierry <julien.thierry@arm.com> wrote:
>>>
>>> Hi Marc,
>>>
>>> On 11/06/2019 18:03, Marc Zyngier wrote:
>>>> Add the basic data structure that expresses an MSI to LPI
>>>> translation as well as the allocation/release hooks.
>>>>
>>>> THe size of the cache is arbitrarily defined as 4*nr_vcpus.
>>>>
>>>
>>> The size has been arbitrarily changed to 16*nr_vcpus :) .
>>
>> Well spotted! ;-)
>>
>>>
>>> Nit: The*
>>
>> Ah, usual lazy finger on the Shift key... One day I'll learn to type.
>>
>>>
>>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>>>> ---
>>>>  include/kvm/arm_vgic.h        |  3 +++
>>>>  virt/kvm/arm/vgic/vgic-init.c |  5 ++++
>>>>  virt/kvm/arm/vgic/vgic-its.c  | 49 +++++++++++++++++++++++++++++++++++
>>>>  virt/kvm/arm/vgic/vgic.h      |  2 ++
>>>>  4 files changed, 59 insertions(+)
>>>>
> 
> [...]
> 
>>>> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
>>>> index 44ceaccb18cf..ce9bcddeb7f1 100644
>>>> --- a/virt/kvm/arm/vgic/vgic-its.c
>>>> +++ b/virt/kvm/arm/vgic/vgic-its.c
>>>> @@ -149,6 +149,14 @@ struct its_ite {
>>>>  	u32 event_id;
>>>>  };
>>>>  
>>>> +struct vgic_translation_cache_entry {
>>>> +	struct list_head	entry;
>>>> +	phys_addr_t		db;
>>>> +	u32			devid;
>>>> +	u32			eventid;
>>>> +	struct vgic_irq		*irq;
>>>> +};
>>>> +
>>>>  /**
>>>>   * struct vgic_its_abi - ITS abi ops and settings
>>>>   * @cte_esz: collection table entry size
>>>> @@ -1668,6 +1676,45 @@ static int vgic_register_its_iodev(struct kvm *kvm, struct vgic_its *its,
>>>>  	return ret;
>>>>  }
>>>>  
>>>> +/* Default is 16 cached LPIs per vcpu */
>>>> +#define LPI_DEFAULT_PCPU_CACHE_SIZE	16
>>>> +
>>>> +void vgic_lpi_translation_cache_init(struct kvm *kvm)
>>>> +{
>>>> +	struct vgic_dist *dist = &kvm->arch.vgic;
>>>> +	unsigned int sz;
>>>> +	int i;
>>>> +
>>>> +	if (!list_empty(&dist->lpi_translation_cache))
>>>> +		return;
>>>> +
>>>> +	sz = atomic_read(&kvm->online_vcpus) * LPI_DEFAULT_PCPU_CACHE_SIZE;
>>>> +
>>>> +	for (i = 0; i < sz; i++) {
>>>> +		struct vgic_translation_cache_entry *cte;
>>>> +
>>>> +		/* An allocation failure is not fatal */
>>>> +		cte = kzalloc(sizeof(*cte), GFP_KERNEL);
>>>> +		if (WARN_ON(!cte))
>>>> +			break;
>>>> +
>>>> +		INIT_LIST_HEAD(&cte->entry);
>>>> +		list_add(&cte->entry, &dist->lpi_translation_cache);
>>>
>>> Going through the series, it looks like this list is either empty
>>> (before the cache init) or has a fixed number
>>> (LPI_DEFAULT_PCPU_CACHE_SIZE * nr_cpus) of entries.
>>
>> Well, it could also fail when allocating one of the entry, meaning we
>> can have an allocation ranging from 0 to (LPI_DEFAULT_PCPU_CACHE_SIZE
>> * nr_cpus) entries.
>>
>>> And the list never grows nor shrinks throughout the series, so it
>>> seems odd to be using a list here.
>>>
>>> Is there a reason for not using a dynamically allocated array instead of
>>> the list? (does list_move() provide a big perf advantage over swapping
>>> the data from one array entry to another? Or is there some other
>>> facility I am missing?
>>
>> The idea was to make the LRU policy cheap, on the assumption that
>> list_move (which is only a couple of pointer updates) is cheaper than
>> a memmove if you want to keep the array ordered. If we exclude the
>> list head, we end-up with 24 bytes per entry to move down to make room
>> for the new entry at the head of the array. For large caches that miss
>> very often, this will hurt badly. But is that really a problem? I
>> don't know.
>>
> 
> Yes, I realized afterwards that the LRU uses the fact you can easily
> move list entries without modifying the rest of the list.
> 
>> We could allocate an array as you suggest, and use a linked list
>> inside the array. Or something else. I'm definitely open to
>> suggestion!
> 
> If it there turns out to be some benefit to just you a fixed array, we
> could use a simple ring buffer. Have one pointer on the most recently
> inserted entry (and we know the next insertion will take place on the
> entry "just before" it) and one pointer on the least recently used entry
> (which gets moved when the most recently inserted catches up to it) so
> we know where to stop when looping. We don't really have to worry about
> the "ring buffer" full case since that means we just overwrite the LRU
> and move the pointer.
> 
> This might prove a bit more efficient when looping over the cache
> entries compared to the list. However, I have no certainty of actual
> performance gain from that and the current implementation has the
> benefit of being simple.
> 
> Let me know if you decide to give the ring buffer approach a try.
> 
> Otherwise there's always the option to add even more complex structure
> with a hashtable + linked list using hashes and tags to lookup the
> entries. But keeping things simple for now seems reasonable (also, it
> avoids having to think about what to use as hash and tag :D ).
> 

Acutally, still not a good approach for when there is a cache hit and we
want to move a entry to the most recently used position.

List seems like the best approach in terms of keeping it simple.

Sorry for the noise.

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
