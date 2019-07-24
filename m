Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A3572923
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 09:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ha8hJPW0siWTji6zpo389kChK/4TFdayy5Z2VEtcpGQ=; b=ZkcA4y7nGAbcHE
	Rfed0Xv6dWx9aZuj3jp8DIjTQaA1YhoYOGRHyMxz0ly32YxwHRobToB0DdQp6ySsUiToQZYIsuQ/0
	1iV5az7zgxwmWIQC2J3FkZbDJtVu2AJGDrqtPeJ7YYGSNoaPvZ2H8kV0miVOQa/yeXFcn2KQLoX0g
	MHP6vc20fgxJYwEKtfih61KKcm1/n+KxPxlNEwAcwikZuywcLNF4IQAzKzuVS+YctGE65ViiiSMO5
	5z8EXaB0Idiu5lBpnsCUhJr7Ii2VegeZM7DHuPcn0oUg7vqkvyB/7O8BZJaJDiifxylOAEIQq7bxU
	dm3QCUiDcFeebSRxdQcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBua-0006ca-4S; Wed, 24 Jul 2019 07:42:08 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBuM-0006c8-Fs
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 07:41:55 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8D6A430B8DE4;
 Wed, 24 Jul 2019 07:41:53 +0000 (UTC)
Received: from [10.36.116.102] (ovpn-116-102.ams2.redhat.com [10.36.116.102])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EE5E160603;
 Wed, 24 Jul 2019 07:41:50 +0000 (UTC)
Subject: Re: [PATCH v2 8/9] KVM: arm/arm64: vgic-its: Check the LPI
 translation cache on MSI injection
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190611170336.121706-1-marc.zyngier@arm.com>
 <20190611170336.121706-9-marc.zyngier@arm.com>
 <485d9990-a6ad-2be0-e829-a0290d7d6a6f@redhat.com>
 <3e3bf6bc-d1ab-ec77-e94c-d5defd133c5b@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <1642a2fb-153b-070c-465d-fca27b76e3a0@redhat.com>
Date: Wed, 24 Jul 2019 09:41:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <3e3bf6bc-d1ab-ec77-e94c-d5defd133c5b@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Wed, 24 Jul 2019 07:41:53 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_004154_575991_363FF083 
X-CRM114-Status: GOOD (  23.65  )
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
 Zenghui Yu <yuzenghui@huawei.com>, "Saidi, Ali" <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 7/23/19 5:45 PM, Marc Zyngier wrote:
> Hi Eric,
> 
> On 23/07/2019 16:10, Auger Eric wrote:
>> Hi Marc,
>>
>> On 6/11/19 7:03 PM, Marc Zyngier wrote:
>>> When performing an MSI injection, let's first check if the translation
>>> is already in the cache. If so, let's inject it quickly without
>>> going through the whole translation process.
>>>
>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>>> ---
>>>  virt/kvm/arm/vgic/vgic-its.c | 36 ++++++++++++++++++++++++++++++++++++
>>>  virt/kvm/arm/vgic/vgic.h     |  1 +
>>>  2 files changed, 37 insertions(+)
>>>
>>> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
>>> index 62932458476a..83d80ec33473 100644
>>> --- a/virt/kvm/arm/vgic/vgic-its.c
>>> +++ b/virt/kvm/arm/vgic/vgic-its.c
>>> @@ -577,6 +577,20 @@ static struct vgic_irq *__vgic_its_check_cache(struct vgic_dist *dist,
>>>  	return irq;
>>>  }
>>>  
>>> +static struct vgic_irq *vgic_its_check_cache(struct kvm *kvm, phys_addr_t db,
>>> +					     u32 devid, u32 eventid)
>>> +{
>>> +	struct vgic_dist *dist = &kvm->arch.vgic;
>>> +	struct vgic_irq *irq;
>>> +	unsigned long flags;
>>> +
>>> +	raw_spin_lock_irqsave(&dist->lpi_list_lock, flags);
>>> +	irq = __vgic_its_check_cache(dist, db, devid, eventid);
>>> +	raw_spin_unlock_irqrestore(&dist->lpi_list_lock, flags);
>>> +
>>> +	return irq;
>>> +}
>>> +
>>>  static void vgic_its_cache_translation(struct kvm *kvm, struct vgic_its *its,
>>>  				       u32 devid, u32 eventid,
>>>  				       struct vgic_irq *irq)
>>> @@ -736,6 +750,25 @@ static int vgic_its_trigger_msi(struct kvm *kvm, struct vgic_its *its,
>>>  	return 0;
>>>  }
>>>  
>>> +int vgic_its_inject_cached_translation(struct kvm *kvm, struct kvm_msi *msi)
>>> +{
>>> +	struct vgic_irq *irq;
>>> +	unsigned long flags;
>>> +	phys_addr_t db;
>>> +
>>> +	db = (u64)msi->address_hi << 32 | msi->address_lo;
>>> +	irq = vgic_its_check_cache(kvm, db, msi->devid, msi->data);
>>
>> I think we miss a check of its->enabled. This is currently done in
>> vgic_its_resolve_lpi() but now likely to be bypassed.
> 
> But why would a translation be cached if the ITS is disabled? It should
> never haver been there the first place (vgic_its_resolve_lpi does check
> for the ITS being enabled, as you pointed out).
> 
> Which makes me think that we miss an invalidate on an ITS being disabled:
> 
> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
> index 2633b0e88981..5f2ad74ad834 100644
> --- a/virt/kvm/arm/vgic/vgic-its.c
> +++ b/virt/kvm/arm/vgic/vgic-its.c
> @@ -1719,6 +1719,8 @@ static void vgic_mmio_write_its_ctlr(struct kvm *kvm, struct vgic_its *its,
>  		goto out;
>  
>  	its->enabled = !!(val & GITS_CTLR_ENABLE);
> +	if (!its->enabled)
> +		vgic_its_invalidate_cache(kvm);
>  
>  	/*
>  	 * Try to process any pending commands. This function bails out early
> 
> 
> What do you think?

Yes I agree this is the right way to fix it.

Thanks

Eric
> 
> 	M.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
