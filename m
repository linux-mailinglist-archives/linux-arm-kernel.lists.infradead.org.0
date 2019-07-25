Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FDD75438
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDS+avppRsw545nLmItpUxQiCvGixobTdKc5TkHd3RY=; b=OeSYz2i/AW5PMG
	ZpOa/zqgRFtsKK+k116Nlq6YQxcF01yWSROf6nyV3UilYdwY3rxp07YFodhLPJgBgrsfVWaM0jGfG
	C7go6RZK9o64sDeJlf49USKkbd4HBmDVWVVC5pudwYg3zaQDxVZOvZ+XOsAl+lD9u+JVJkyby1pHz
	bQ46DTxJEWSnpGhTBb4c64r2dmNVuYClmAdes6WGiSJY95PgcqEqwVgWmXeTJ7T/OIK58wMT3SB82
	QsaZ4+CN7B6bp9vFYvRGyWlNTiznm4Sjq8rMuoxN6xAxXXfgSiWB+VcKZPAiEZ2WC3Oe8n3mGMKT7
	ONPcVrEjaN/cT5mNjOGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqglR-0000lf-3z; Thu, 25 Jul 2019 16:38:45 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgku-0000ip-QB
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:38:14 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6109AC065138;
 Thu, 25 Jul 2019 16:38:12 +0000 (UTC)
Received: from [10.36.116.102] (ovpn-116-102.ams2.redhat.com [10.36.116.102])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FD0563F67;
 Thu, 25 Jul 2019 16:38:09 +0000 (UTC)
Subject: Re: [PATCH v3 09/10] KVM: arm/arm64: vgic-its: Check the LPI
 translation cache on MSI injection
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20190725153543.24386-1-maz@kernel.org>
 <20190725153543.24386-10-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <01a5da1f-86ec-9497-7c4e-7c046404cf36@redhat.com>
Date: Thu, 25 Jul 2019 18:38:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190725153543.24386-10-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 25 Jul 2019 16:38:12 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_093813_003026_5B86278F 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Andre Przywara <Andre.Przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, James Morse <james.morse@arm.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 7/25/19 5:35 PM, Marc Zyngier wrote:
> From: Marc Zyngier <marc.zyngier@arm.com>
> 
> When performing an MSI injection, let's first check if the translation
> is already in the cache. If so, let's inject it quickly without
> going through the whole translation process.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric
> ---
>  virt/kvm/arm/vgic/vgic-its.c | 36 ++++++++++++++++++++++++++++++++++++
>  virt/kvm/arm/vgic/vgic.h     |  1 +
>  2 files changed, 37 insertions(+)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
> index e61d3ea0ab40..2be6b66b3856 100644
> --- a/virt/kvm/arm/vgic/vgic-its.c
> +++ b/virt/kvm/arm/vgic/vgic-its.c
> @@ -566,6 +566,20 @@ static struct vgic_irq *__vgic_its_check_cache(struct vgic_dist *dist,
>  	return NULL;
>  }
>  
> +static struct vgic_irq *vgic_its_check_cache(struct kvm *kvm, phys_addr_t db,
> +					     u32 devid, u32 eventid)
> +{
> +	struct vgic_dist *dist = &kvm->arch.vgic;
> +	struct vgic_irq *irq;
> +	unsigned long flags;
> +
> +	raw_spin_lock_irqsave(&dist->lpi_list_lock, flags);
> +	irq = __vgic_its_check_cache(dist, db, devid, eventid);
> +	raw_spin_unlock_irqrestore(&dist->lpi_list_lock, flags);
> +
> +	return irq;
> +}
> +
>  static void vgic_its_cache_translation(struct kvm *kvm, struct vgic_its *its,
>  				       u32 devid, u32 eventid,
>  				       struct vgic_irq *irq)
> @@ -725,6 +739,25 @@ static int vgic_its_trigger_msi(struct kvm *kvm, struct vgic_its *its,
>  	return 0;
>  }
>  
> +int vgic_its_inject_cached_translation(struct kvm *kvm, struct kvm_msi *msi)
> +{
> +	struct vgic_irq *irq;
> +	unsigned long flags;
> +	phys_addr_t db;
> +
> +	db = (u64)msi->address_hi << 32 | msi->address_lo;
> +	irq = vgic_its_check_cache(kvm, db, msi->devid, msi->data);
> +
> +	if (!irq)
> +		return -1;
> +
> +	raw_spin_lock_irqsave(&irq->irq_lock, flags);
> +	irq->pending_latch = true;
> +	vgic_queue_irq_unlock(kvm, irq, flags);
> +
> +	return 0;
> +}
> +
>  /*
>   * Queries the KVM IO bus framework to get the ITS pointer from the given
>   * doorbell address.
> @@ -736,6 +769,9 @@ int vgic_its_inject_msi(struct kvm *kvm, struct kvm_msi *msi)
>  	struct vgic_its *its;
>  	int ret;
>  
> +	if (!vgic_its_inject_cached_translation(kvm, msi))
> +		return 1;
> +
>  	its = vgic_msi_to_its(kvm, msi);
>  	if (IS_ERR(its))
>  		return PTR_ERR(its);
> diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
> index 09908b80fb1e..db308a62b34d 100644
> --- a/virt/kvm/arm/vgic/vgic.h
> +++ b/virt/kvm/arm/vgic/vgic.h
> @@ -306,6 +306,7 @@ int vgic_copy_lpi_list(struct kvm *kvm, struct kvm_vcpu *vcpu, u32 **intid_ptr);
>  int vgic_its_resolve_lpi(struct kvm *kvm, struct vgic_its *its,
>  			 u32 devid, u32 eventid, struct vgic_irq **irq);
>  struct vgic_its *vgic_msi_to_its(struct kvm *kvm, struct kvm_msi *msi);
> +int vgic_its_inject_cached_translation(struct kvm *kvm, struct kvm_msi *msi);
>  void vgic_lpi_translation_cache_init(struct kvm *kvm);
>  void vgic_lpi_translation_cache_destroy(struct kvm *kvm);
>  void vgic_its_invalidate_cache(struct kvm *kvm);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
