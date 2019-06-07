Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FC038671
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 10:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PW3LAjPWLZucnuZ8afYhZxQUQoVOztkGrurHgc96CKc=; b=n7i+VH46E4pEcY
	86z1CrNuz+DTIOIrgkscjmo4509zb6qDtyMTQynboJh2KN8tT6gkvrPk16Lyvn0kxz9//BzFGzemr
	rejbcwl0jsf4OiIVeD7GL0/jH3ZWWsBJc5OQdZrl3VspKxYiVz6E5o/0XssMOil/zqSwYFRNonLql
	pzEbpMG9CJjrXP20RaP+HTI3XLCWVTepECl/0BA5L2rjSQ7QE8tTGjdxUjqGBF9zdkvBARdmfccFO
	RvHpTvmbCz7m8EPWtxfAgb2UOHgow+ktpSY1rIf5rI0ez9dRy1WpREnPySqZBZpi18nOqJJtIvUUv
	kqsO3ioqO0SebJ1xkvWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZAOh-0004gV-CS; Fri, 07 Jun 2019 08:38:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAOV-0004g8-Ah
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 08:38:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81BBE337;
 Fri,  7 Jun 2019 01:38:38 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EE3743F246; Fri,  7 Jun 2019 01:38:36 -0700 (PDT)
Subject: Re: [PATCH 1/8] KVM: arm/arm64: vgic: Add LPI translation cache
 definition
To: Julien Thierry <julien.thierry@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190606165455.162478-1-marc.zyngier@arm.com>
 <20190606165455.162478-2-marc.zyngier@arm.com>
 <39841e6f-bdba-d2f8-0a68-8783d611dfb4@arm.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
Organization: ARM Ltd
Message-ID: <933de99e-c1bb-07ca-269e-f38768e3aa0c@arm.com>
Date: Fri, 7 Jun 2019 09:38:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <39841e6f-bdba-d2f8-0a68-8783d611dfb4@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_013839_461317_26901BE6 
X-CRM114-Status: GOOD (  21.63  )
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

Hi Julien,

On 07/06/2019 09:12, Julien Thierry wrote:
> Hi Marc,
> 
> On 06/06/2019 17:54, Marc Zyngier wrote:
>> Add the basic data structure that expresses an MSI to LPI
>> translation as well as the allocation/release hooks.
>>
>> THe size of the cache is arbitrarily defined as 4*nr_vcpus.
>>
> 
> Since this arbitrary and that people migh want to try it with different
> size, could the number of (per vCPU) ITS translation cache entries be
> passed as a kernel parameter?

I'm not overly keen on the kernel parameter, but I'm open to this being
an optional parameter at vITS creation time, for particularly creative
use cases... What I'd really want is a way to dynamically dimension it,
but I can't really think of a way.

> 
>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>> ---
>>  include/kvm/arm_vgic.h        | 10 ++++++++++
>>  virt/kvm/arm/vgic/vgic-init.c | 34 ++++++++++++++++++++++++++++++++++
>>  virt/kvm/arm/vgic/vgic-its.c  |  2 ++
>>  virt/kvm/arm/vgic/vgic.h      |  3 +++
>>  4 files changed, 49 insertions(+)
>>
>> diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
>> index c36c86f1ec9a..5a0d6b07c5ef 100644
>> --- a/include/kvm/arm_vgic.h
>> +++ b/include/kvm/arm_vgic.h
>> @@ -173,6 +173,14 @@ struct vgic_io_device {
>>  	struct kvm_io_device dev;
>>  };
>>  
>> +struct vgic_translation_cache_entry {
>> +	struct list_head	entry;
>> +	phys_addr_t		db;
>> +	u32			devid;
>> +	u32			eventid;
>> +	struct vgic_irq		*irq;
>> +};
>> +
>>  struct vgic_its {
>>  	/* The base address of the ITS control register frame */
>>  	gpa_t			vgic_its_base;
>> @@ -260,6 +268,8 @@ struct vgic_dist {
>>  	struct list_head	lpi_list_head;
>>  	int			lpi_list_count;
>>  
>> +	struct list_head	lpi_translation_cache;
>> +
>>  	/* used by vgic-debug */
>>  	struct vgic_state_iter *iter;
>>  
>> diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
>> index 3bdb31eaed64..25ae25694a28 100644
>> --- a/virt/kvm/arm/vgic/vgic-init.c
>> +++ b/virt/kvm/arm/vgic/vgic-init.c
>> @@ -64,6 +64,7 @@ void kvm_vgic_early_init(struct kvm *kvm)
>>  	struct vgic_dist *dist = &kvm->arch.vgic;
>>  
>>  	INIT_LIST_HEAD(&dist->lpi_list_head);
>> +	INIT_LIST_HEAD(&dist->lpi_translation_cache);
>>  	raw_spin_lock_init(&dist->lpi_list_lock);
>>  }
>>  
>> @@ -260,6 +261,27 @@ static void kvm_vgic_vcpu_enable(struct kvm_vcpu *vcpu)
>>  		vgic_v3_enable(vcpu);
>>  }
>>  
>> +void vgic_lpi_translation_cache_init(struct kvm *kvm)
>> +{
>> +	struct vgic_dist *dist = &kvm->arch.vgic;
>> +	int i;
>> +
>> +	if (!list_empty(&dist->lpi_translation_cache))
>> +		return;
>> +
>> +	for (i = 0; i < LPI_CACHE_SIZE(kvm); i++) {
>> +		struct vgic_translation_cache_entry *cte;
>> +
>> +		/* An allocation failure is not fatal */
>> +		cte = kzalloc(sizeof(*cte), GFP_KERNEL);
>> +		if (WARN_ON(!cte))
>> +			break;
>> +
>> +		INIT_LIST_HEAD(&cte->entry);
>> +		list_add(&cte->entry, &dist->lpi_translation_cache);
>> +	}
>> +}
>> +
>>  /*
>>   * vgic_init: allocates and initializes dist and vcpu data structures
>>   * depending on two dimensioning parameters:
>> @@ -305,6 +327,7 @@ int vgic_init(struct kvm *kvm)
>>  	}
>>  
>>  	if (vgic_has_its(kvm)) {
>> +		vgic_lpi_translation_cache_init(kvm);
>>  		ret = vgic_v4_init(kvm);
>>  		if (ret)
>>  			goto out;
>> @@ -346,6 +369,17 @@ static void kvm_vgic_dist_destroy(struct kvm *kvm)
>>  		INIT_LIST_HEAD(&dist->rd_regions);
>>  	}
>>  
>> +	if (vgic_has_its(kvm)) {
>> +		struct vgic_translation_cache_entry *cte, *tmp;
>> +
>> +		list_for_each_entry_safe(cte, tmp,
>> +					 &dist->lpi_translation_cache, entry) {
>> +			list_del(&cte->entry);
>> +			kfree(cte);
>> +		}
>> +		INIT_LIST_HEAD(&dist->lpi_translation_cache);
> 
> I would expect that removing all entries from a list would leave that
> list as a "clean" empty list. Is INIT_LIST_HEAD() really needed here?

You're right, that's a leftover from an earlier debugging session.

> 
>> +	}
>> +
>>  	if (vgic_supports_direct_msis(kvm))
>>  		vgic_v4_teardown(kvm);
>>  }
>> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
>> index 44ceaccb18cf..5758504fd934 100644
>> --- a/virt/kvm/arm/vgic/vgic-its.c
>> +++ b/virt/kvm/arm/vgic/vgic-its.c
>> @@ -1696,6 +1696,8 @@ static int vgic_its_create(struct kvm_device *dev, u32 type)
>>  			kfree(its);
>>  			return ret;
>>  		}
>> +
>> +		vgic_lpi_translation_cache_init(dev->kvm);
> 
> I'm not sure I understand why we need to call that here. Isn't the
> single call in vgic_init() enough? Are there cases where the other call
> might come to late (I guess I might discover that in the rest of the
> series).

That's because you're allowed to create the ITS after having initialized
the vgic itself (this is guarded with a vgic_initialized() check).
Overall, we follow the same pattern as the GICv4 init. Yes, the API is a
mess.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
