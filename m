Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB7938C65
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e41JadqAbn2l3Ve42P65KpIELX/a/kKH+qLQ3u1gBXE=; b=KDkkD/4FkaPjBN
	jT8/pfL0N7+uOkXYNAEeeuuIWFA9skKFBrmiBtqjKJ3NKJVCrmHi9Nh3Br9NXyzhnFEJroVDpSFjj
	GPbu+tM+Fd/GHgGvOPBftNA1m7cwfCxXmP2768sS+ZdgSNt9efhjTI8DcWwj06ejRUHWCsHS35D9t
	BeVAMbwcHhIkVqsyI0PNY7oOgWT2AFl/ttEWUjCjd64KZWTMRf/NgfEQxKQNVeitEziPJSiy/vLVy
	JsKXjqokKnvf/vsKBEBu4/xpn3tkxKwo+y5KcI6Nk8LmKfJVadNxZvL3frMVzNSIpf0Gvu4ps0t2X
	r3/famyy4URnIdWyK2Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZFfL-0002lx-08; Fri, 07 Jun 2019 14:16:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZFfA-0002lC-LZ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:16:14 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 63E9C316291B;
 Fri,  7 Jun 2019 14:15:49 +0000 (UTC)
Received: from [10.36.116.67] (ovpn-116-67.ams2.redhat.com [10.36.116.67])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 59C271001B0B;
 Fri,  7 Jun 2019 14:15:40 +0000 (UTC)
Subject: Re: [PATCH 1/8] KVM: arm/arm64: vgic: Add LPI translation cache
 definition
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190606165455.162478-1-marc.zyngier@arm.com>
 <20190606165455.162478-2-marc.zyngier@arm.com>
 <7b4a5bc3-8168-50bb-e2aa-3ff081199d04@redhat.com>
 <856ab7bd-3ba1-e10e-1bf5-7a821c753a53@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <f0c1c30a-2f95-4a74-9f8b-deac2cb2c37e@redhat.com>
Date: Fri, 7 Jun 2019 16:15:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <856ab7bd-3ba1-e10e-1bf5-7a821c753a53@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Fri, 07 Jun 2019 14:16:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_071612_749916_402550B7 
X-CRM114-Status: GOOD (  28.74  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Julien Thierry <julien.thierry@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,
On 6/7/19 2:44 PM, Marc Zyngier wrote:
> Hi Eric,
> 
> On 07/06/2019 13:09, Auger Eric wrote:
>> Hi Marc,
>>
>> On 6/6/19 6:54 PM, Marc Zyngier wrote:
>>> Add the basic data structure that expresses an MSI to LPI
>>> translation as well as the allocation/release hooks.
>>>
>>> THe size of the cache is arbitrarily defined as 4*nr_vcpus.
>>>
>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>>> ---
>>>  include/kvm/arm_vgic.h        | 10 ++++++++++
>>>  virt/kvm/arm/vgic/vgic-init.c | 34 ++++++++++++++++++++++++++++++++++
>>>  virt/kvm/arm/vgic/vgic-its.c  |  2 ++
>>>  virt/kvm/arm/vgic/vgic.h      |  3 +++
>>>  4 files changed, 49 insertions(+)
>>>
>>> diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
>>> index c36c86f1ec9a..5a0d6b07c5ef 100644
>>> --- a/include/kvm/arm_vgic.h
>>> +++ b/include/kvm/arm_vgic.h
>>> @@ -173,6 +173,14 @@ struct vgic_io_device {
>>>  	struct kvm_io_device dev;
>>>  };
>>>  
>>> +struct vgic_translation_cache_entry {
>>> +	struct list_head	entry;
>>> +	phys_addr_t		db;
>> it is not obvious to me why you do need the db field? Isn't the LPI
>> uniquely identfiied by the devid and eventid. If I recall correctly
>> theorically the architecture allows to handle LPIs even without ITS.
> 
> Only having DID+EID is unfortunately not enough, and the translation has
> to be per ITS. Think of a system with two ITSs, and a PCI device in
> front of each of the ITSs. There is no reason why the two devices would
> have different IDs, as they belong to different PCI hierarchies.
> 
> So the cache must take the source ITS into account. The alternative
> would be to keep a separate cache per ITS, but that would lead to more
> overhead on the fast path, having to lookup the ITS first.

Yes you're right. In the meantime I double checked the IORT spec and the
deviceid only is unique within an ITS group node. But there can be
several group nodes.

"ITS group nodes describe which ITS units are in the system. A node
allows grouping of more than one ITS, but all ITSs in the group must
share a common understanding of DeviceID values. That is, a given
DeviceID must represent the same device for all ITS units in the group."
> 
> As for LPIs without ITS, that wouldn't need a cache at all.
> 
>>> +	u32			devid;
>>> +	u32			eventid;
>>> +	struct vgic_irq		*irq;
>>> +};
>>> +
>>>  struct vgic_its {
>>>  	/* The base address of the ITS control register frame */
>>>  	gpa_t			vgic_its_base;
>>> @@ -260,6 +268,8 @@ struct vgic_dist {
>>>  	struct list_head	lpi_list_head;
>>>  	int			lpi_list_count;
>>>  
>>> +	struct list_head	lpi_translation_cache;
>>> +
>>>  	/* used by vgic-debug */
>>>  	struct vgic_state_iter *iter;
>>>  
>>> diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
>>> index 3bdb31eaed64..25ae25694a28 100644
>>> --- a/virt/kvm/arm/vgic/vgic-init.c
>>> +++ b/virt/kvm/arm/vgic/vgic-init.c
>>> @@ -64,6 +64,7 @@ void kvm_vgic_early_init(struct kvm *kvm)
>>>  	struct vgic_dist *dist = &kvm->arch.vgic;
>>>  
>>>  	INIT_LIST_HEAD(&dist->lpi_list_head);
>>> +	INIT_LIST_HEAD(&dist->lpi_translation_cache);
>>>  	raw_spin_lock_init(&dist->lpi_list_lock);
>>>  }
>>>  
>>> @@ -260,6 +261,27 @@ static void kvm_vgic_vcpu_enable(struct kvm_vcpu *vcpu)
>>>  		vgic_v3_enable(vcpu);
>>>  }
>>>  
>>> +void vgic_lpi_translation_cache_init(struct kvm *kvm)
>>> +{
>>> +	struct vgic_dist *dist = &kvm->arch.vgic;
>>> +	int i;
>>> +
>>> +	if (!list_empty(&dist->lpi_translation_cache))
>>> +		return;
>>> +
>>> +	for (i = 0; i < LPI_CACHE_SIZE(kvm); i++) {
>>> +		struct vgic_translation_cache_entry *cte;
>>> +
>>> +		/* An allocation failure is not fatal */
>>> +		cte = kzalloc(sizeof(*cte), GFP_KERNEL);
>>> +		if (WARN_ON(!cte))
>>> +			break;
>>> +
>>> +		INIT_LIST_HEAD(&cte->entry);
>>> +		list_add(&cte->entry, &dist->lpi_translation_cache);
>>> +	}
>>> +}
>>> +
>>>  /*
>>>   * vgic_init: allocates and initializes dist and vcpu data structures
>>>   * depending on two dimensioning parameters:
>>> @@ -305,6 +327,7 @@ int vgic_init(struct kvm *kvm)
>>>  	}
>>>  
>>>  	if (vgic_has_its(kvm)) {
>>> +		vgic_lpi_translation_cache_init(kvm);
>>>  		ret = vgic_v4_init(kvm);
>>>  		if (ret)
>>>  			goto out;
>>> @@ -346,6 +369,17 @@ static void kvm_vgic_dist_destroy(struct kvm *kvm)
>>>  		INIT_LIST_HEAD(&dist->rd_regions);
>>>  	}
>>>  
>>> +	if (vgic_has_its(kvm)) {
>>> +		struct vgic_translation_cache_entry *cte, *tmp;
>>> +
>>> +		list_for_each_entry_safe(cte, tmp,
>>> +					 &dist->lpi_translation_cache, entry) {
>>> +			list_del(&cte->entry);
>>> +			kfree(cte);
>>> +		}
>>> +		INIT_LIST_HEAD(&dist->lpi_translation_cache);
>>> +	}
>>> +
>>>  	if (vgic_supports_direct_msis(kvm))
>>>  		vgic_v4_teardown(kvm);
>>>  }
>>> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
>>> index 44ceaccb18cf..5758504fd934 100644
>>> --- a/virt/kvm/arm/vgic/vgic-its.c
>>> +++ b/virt/kvm/arm/vgic/vgic-its.c
>>> @@ -1696,6 +1696,8 @@ static int vgic_its_create(struct kvm_device *dev, u32 type)
>>>  			kfree(its);
>>>  			return ret;
>>>  		}
>>> +
>>> +		vgic_lpi_translation_cache_init(dev->kvm);
>>>  	}
>>>  
>>>  	mutex_init(&its->its_lock);
>>> diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
>>> index abeeffabc456..a58e1b263dca 100644
>>> --- a/virt/kvm/arm/vgic/vgic.h
>>> +++ b/virt/kvm/arm/vgic/vgic.h
>>> @@ -316,6 +316,9 @@ int vgic_copy_lpi_list(struct kvm *kvm, struct kvm_vcpu *vcpu, u32 **intid_ptr);
>>>  int vgic_its_resolve_lpi(struct kvm *kvm, struct vgic_its *its,
>>>  			 u32 devid, u32 eventid, struct vgic_irq **irq);
>>>  struct vgic_its *vgic_msi_to_its(struct kvm *kvm, struct kvm_msi *msi);
>>> +void vgic_lpi_translation_cache_init(struct kvm *kvm);
>>> +
>>> +#define LPI_CACHE_SIZE(kvm)	(atomic_read(&(kvm)->online_vcpus) * 4)
>> Couldn't the cache be a function of the number of allocated lpis. We
>> could realloc the list accordingly. I miss why it is rather dependent on
>> the number of vcpus and not on the number of assigned devices/MSIs?
> 
> How do you find out about the number of LPIs? That's really for the
> guest to decide what it wants to do. Also, KVM itself doesn't have much
> of a clue about the number of assigned devices or their MSI capability.
> That's why I've suggested that userspace could be involved here.

Can't we setup an heuristic based on dist->lpi_list_count incremented on
vgic_add_lpi() used on MAPI/MAPTI? Of course not all of them are
assigned device ones. But currently the cache is being used for all LPIs
including those triggered through the user space injection (KVM_SIGNAL_MSI).

Otherwise there is an existing interface between KVM and VFIO that may
be leveraged to pass info between both?

Thanks

Eric
> 
> So far, I've used the number of vcpus as MSIs are usually used to deal
> with per-CPU queues. This allows the cache to scale with the number of
> queues that the guest is expected to deal with. Ali's reply earlier seem
> to indicate that this is a common pattern, but it is the multiplying
> factor that is hard to express.
> 
> Thanks,
> 
> 	M.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
