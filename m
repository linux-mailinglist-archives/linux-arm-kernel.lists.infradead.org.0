Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBB1389EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 14:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2chDvdu2tlXx2seYpDwb5aA4LefQYQkG2WPddXNqfow=; b=hHqKJpdhPMRvi+
	qUIoRM01rRdqBOKnRiu1k13/JCWiz+BhvqE+CCcFiEglYenitHSTX7tvRAHLAvtwNtxi0Gyfh+sfH
	oIVUetPh2IBmG+UPK2fTDle0Zp4nIw/LGQluGnrLhT2YWyAlnfpen0Lu6cAjGBDLvojNjN4+nilbL
	0J1p2B5R9aeP99FWzgTZ4Dv77NfAK78E1+A/mXNtSHDunuwm+NjqFfd2q+Bmb3TrBZh50udzB0F2c
	DBV8UGEXdKWUwcoYNdTESTo1CID17jHyaqm57LcMPizmsYTGdYqziWIBCSgd6NWCNdImUv0nvUwz7
	rLz6piuqujriepp6dj3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZDjK-0008Qo-PF; Fri, 07 Jun 2019 12:12:22 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZDjA-0008QQ-OB
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 12:12:14 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2B4B085376;
 Fri,  7 Jun 2019 12:11:58 +0000 (UTC)
Received: from [10.36.116.67] (ovpn-116-67.ams2.redhat.com [10.36.116.67])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F2857D951;
 Fri,  7 Jun 2019 12:11:50 +0000 (UTC)
Subject: Re: [PATCH 2/8] KVM: arm/arm64: vgic: Add __vgic_put_lpi_locked
 primitive
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190606165455.162478-1-marc.zyngier@arm.com>
 <20190606165455.162478-3-marc.zyngier@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <8048ab7f-a429-df29-43da-05ef97c9dc7a@redhat.com>
Date: Fri, 7 Jun 2019 14:11:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190606165455.162478-3-marc.zyngier@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Fri, 07 Jun 2019 12:12:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_051212_823222_6D580A81 
X-CRM114-Status: GOOD (  20.39  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,
On 6/6/19 6:54 PM, Marc Zyngier wrote:
> Our LPI translation cache needs to be able to drop the refcount
> on an LPI whilst already holding the lpi_list_lock.
> 
> Let's add a new primitive for this.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric
> ---
>  virt/kvm/arm/vgic/vgic.c | 26 +++++++++++++++++---------
>  virt/kvm/arm/vgic/vgic.h |  1 +
>  2 files changed, 18 insertions(+), 9 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
> index 191deccf60bf..376a297e2169 100644
> --- a/virt/kvm/arm/vgic/vgic.c
> +++ b/virt/kvm/arm/vgic/vgic.c
> @@ -130,6 +130,22 @@ static void vgic_irq_release(struct kref *ref)
>  {
>  }
>  
> +/*
> + * Drop the refcount on the LPI. Must be called with lpi_list_lock held.
> + */
> +void __vgic_put_lpi_locked(struct kvm *kvm, struct vgic_irq *irq)
> +{
> +	struct vgic_dist *dist = &kvm->arch.vgic;
> +
> +	if (!kref_put(&irq->refcount, vgic_irq_release))
> +		return;
> +
> +	list_del(&irq->lpi_list);
> +	dist->lpi_list_count--;
> +
> +	kfree(irq);
> +}
> +
>  void vgic_put_irq(struct kvm *kvm, struct vgic_irq *irq)
>  {
>  	struct vgic_dist *dist = &kvm->arch.vgic;
> @@ -139,16 +155,8 @@ void vgic_put_irq(struct kvm *kvm, struct vgic_irq *irq)
>  		return;
>  
>  	raw_spin_lock_irqsave(&dist->lpi_list_lock, flags);
> -	if (!kref_put(&irq->refcount, vgic_irq_release)) {
> -		raw_spin_unlock_irqrestore(&dist->lpi_list_lock, flags);
> -		return;
> -	};
> -
> -	list_del(&irq->lpi_list);
> -	dist->lpi_list_count--;
> +	__vgic_put_lpi_locked(kvm, irq);
>  	raw_spin_unlock_irqrestore(&dist->lpi_list_lock, flags);
> -
> -	kfree(irq);
>  }
>  
>  void vgic_flush_pending_lpis(struct kvm_vcpu *vcpu)
> diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
> index a58e1b263dca..80cd40575bc9 100644
> --- a/virt/kvm/arm/vgic/vgic.h
> +++ b/virt/kvm/arm/vgic/vgic.h
> @@ -172,6 +172,7 @@ vgic_get_mmio_region(struct kvm_vcpu *vcpu, struct vgic_io_device *iodev,
>  		     gpa_t addr, int len);
>  struct vgic_irq *vgic_get_irq(struct kvm *kvm, struct kvm_vcpu *vcpu,
>  			      u32 intid);
> +void __vgic_put_lpi_locked(struct kvm *kvm, struct vgic_irq *irq);
>  void vgic_put_irq(struct kvm *kvm, struct vgic_irq *irq);
>  bool vgic_get_phys_line_level(struct vgic_irq *irq);
>  void vgic_irq_set_phys_pending(struct vgic_irq *irq, bool pending);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
