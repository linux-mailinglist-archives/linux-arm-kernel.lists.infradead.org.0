Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA1654DF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 13:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WQxSbh2rm0l/I4Fg7XH9uaVmdDKmIvkWDL20c1qo+TI=; b=ee/qv8QdKazTNCjiCinroH1H/
	rs5mKj1Ec/QvmIACn4UrHQ9Oo/NaCHmlncH9+dgLVsv76n4oW7/+/Gpw+v3noZtdq2JxF7JAHk5EM
	PIBsM8hp+eZCZsZahrLzHjoWDfLjprKB3jR9Dewiu7LGuQT4bTpYNWpHyx6wXIRYLlOkwu+j3Z94r
	Zj92kvTJtqYeavBm28yi9jrr4Q+1VB8EWYsRKi3fBoakvIIgQK24WvTsZbPphByJOvqDgQcXwlSac
	ZddeTBwkTIu6kF2obiI0LQUdde+yrQUUoaw5gzxRBDuYYja4SbP/hF3W4+2N33idk9mCZKMxDnLy8
	NISrYyxCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfjyV-0003mz-NZ; Tue, 25 Jun 2019 11:50:59 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfjyH-0003km-MK
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 11:50:47 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D2A5EB1D8DF8C982AA7F;
 Tue, 25 Jun 2019 19:50:32 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Tue, 25 Jun 2019
 19:50:26 +0800
Subject: Re: [PATCH v2 7/9] KVM: arm/arm64: vgic-its: Cache successful
 MSI->LPI translation
To: Marc Zyngier <marc.zyngier@arm.com>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>
References: <20190611170336.121706-1-marc.zyngier@arm.com>
 <20190611170336.121706-8-marc.zyngier@arm.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <53de88e9-3550-bd7f-8266-35c5e75fae4e@huawei.com>
Date: Tue, 25 Jun 2019 19:50:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20190611170336.121706-8-marc.zyngier@arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_045045_961578_815E92D4 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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

On 2019/6/12 1:03, Marc Zyngier wrote:
> On a successful translation, preserve the parameters in the LPI
> translation cache. Each translation is reusing the last slot
> in the list, naturally evincting the least recently used entry.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>   virt/kvm/arm/vgic/vgic-its.c | 86 ++++++++++++++++++++++++++++++++++++
>   1 file changed, 86 insertions(+)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
> index 0aa0cbbc3af6..62932458476a 100644
> --- a/virt/kvm/arm/vgic/vgic-its.c
> +++ b/virt/kvm/arm/vgic/vgic-its.c
> @@ -546,6 +546,90 @@ static unsigned long vgic_mmio_read_its_idregs(struct kvm *kvm,
>   	return 0;
>   }
>   
> +static struct vgic_irq *__vgic_its_check_cache(struct vgic_dist *dist,
> +					       phys_addr_t db,
> +					       u32 devid, u32 eventid)
> +{
> +	struct vgic_translation_cache_entry *cte;
> +	struct vgic_irq *irq = NULL;
> +
> +	list_for_each_entry(cte, &dist->lpi_translation_cache, entry) {
> +		/*
> +		 * If we hit a NULL entry, there is nothing after this
> +		 * point.
> +		 */
> +		if (!cte->irq)
> +			break;
> +
> +		if (cte->db == db &&
> +		    cte->devid == devid &&
> +		    cte->eventid == eventid) {
> +			/*
> +			 * Move this entry to the head, as it is the
> +			 * most recently used.
> +			 */
> +			list_move(&cte->entry, &dist->lpi_translation_cache);

Only for performance reasons: if we hit at the "head" of the list, we
don't need to do a list_move().
In our tests, we found that a single list_move() takes nearly (sometimes
even more than) one microsecond, for some unknown reason...


Thanks,
zenghui

> +			irq = cte->irq;
> +			break;
> +		}
> +	}
> +
> +	return irq;
> +}
> +
> +static void vgic_its_cache_translation(struct kvm *kvm, struct vgic_its *its,
> +				       u32 devid, u32 eventid,
> +				       struct vgic_irq *irq)
> +{
> +	struct vgic_dist *dist = &kvm->arch.vgic;
> +	struct vgic_translation_cache_entry *cte;
> +	unsigned long flags;
> +	phys_addr_t db;
> +
> +	/* Do not cache a directly injected interrupt */
> +	if (irq->hw)
> +		return;
> +
> +	raw_spin_lock_irqsave(&dist->lpi_list_lock, flags);
> +
> +	if (unlikely(list_empty(&dist->lpi_translation_cache)))
> +		goto out;
> +
> +	/*
> +	 * We could have raced with another CPU caching the same
> +	 * translation behind our back, so let's check it is not in
> +	 * already
> +	 */
> +	db = its->vgic_its_base + GITS_TRANSLATER;
> +	if (__vgic_its_check_cache(dist, db, devid, eventid))
> +		goto out;
> +
> +	/* Always reuse the last entry (LRU policy) */
> +	cte = list_last_entry(&dist->lpi_translation_cache,
> +			      typeof(*cte), entry);
> +
> +	/*
> +	 * Caching the translation implies having an extra reference
> +	 * to the interrupt, so drop the potential reference on what
> +	 * was in the cache, and increment it on the new interrupt.
> +	 */
> +	if (cte->irq)
> +		__vgic_put_lpi_locked(kvm, cte->irq);
> +
> +	vgic_get_irq_kref(irq);
> +
> +	cte->db		= db;
> +	cte->devid	= devid;
> +	cte->eventid	= eventid;
> +	cte->irq	= irq;
> +
> +	/* Move the new translation to the head of the list */
> +	list_move(&cte->entry, &dist->lpi_translation_cache);
> +
> +out:
> +	raw_spin_unlock_irqrestore(&dist->lpi_list_lock, flags);
> +}
> +
>   void vgic_its_invalidate_cache(struct kvm *kvm)
>   {
>   	struct vgic_dist *dist = &kvm->arch.vgic;
> @@ -589,6 +673,8 @@ int vgic_its_resolve_lpi(struct kvm *kvm, struct vgic_its *its,
>   	if (!vcpu->arch.vgic_cpu.lpis_enabled)
>   		return -EBUSY;
>   
> +	vgic_its_cache_translation(kvm, its, devid, eventid, ite->irq);
> +
>   	*irq = ite->irq;
>   	return 0;
>   }
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
