Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F2A1E3ACD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X8MdYbYQV08qfitAbcFi8tv7QDa8z8v+XZgDYFdomk0=; b=Iyt5Lq6f5+x9PPurDn9Ta/KZ6
	3Z5C3Qh7r5gg51hQ+Y+3Vj7rOrpgU75bDg3Fj/ShQH6NFpBsgVT8YIBTVUGWLmC5oQz9Ej+N7/fKg
	CCHUzkpNwhvvqoxrzzeL2uBsChYC3fBjEco8dlXsAmhQTFPqHxvDpGVgrdSgEgMcocsXDIQq2Gd7Q
	XzWF1iFsx790tIoZRouDHSLf5GWVOntjLJzzboFy8NuUahtVrX+jvvngRyLG8v9MHH5Aq2rywWh+o
	k8SsvQyH0dtnkwWcdrzzaUUBkL8FWW2hvsaofkgVt/4Xw9OSZ42z54pnmqsusx44dXaqn1qdo2S7b
	igfRf7mVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqgv-0007b5-HB; Wed, 27 May 2020 07:41:33 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqgk-0007aA-C5
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:41:24 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2E655AB7FCECDC21846F;
 Wed, 27 May 2020 15:41:13 +0800 (CST)
Received: from [10.173.222.27] (10.173.222.27) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Wed, 27 May 2020 15:41:05 +0800
Subject: Re: [PATCH] KVM: arm64: Allow in-atomic injection of SPIs
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
References: <20200526161136.451312-1-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <47d6d521-f05e-86fe-4a94-ce21754100ae@huawei.com>
Date: Wed, 27 May 2020 15:41:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200526161136.451312-1-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_004122_575697_B9CEA26F 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Eric Auger <eric.auger@redhat.com>, kernel-team@android.com,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/5/27 0:11, Marc Zyngier wrote:
> On a system that uses SPIs to implement MSIs (as it would be
> the case on a GICv2 system exposing a GICv2m to its guests),
> we deny the possibility of injecting SPIs on the in-atomic
> fast-path.
> 
> This results in a very large amount of context-switches
> (roughly equivalent to twice the interrupt rate) on the host,
> and suboptimal performance for the guest (as measured with
> a test workload involving a virtio interface backed by vhost-net).
> Given that GICv2 systems are usually on the low-end of the spectrum
> performance wise, they could do without the aggravation.
> 
> We solved this for GICv3+ITS by having a translation cache. But
> SPIs do not need any extra infrastructure, and can be immediately
> injected in the virtual distributor as the locking is already
> heavy enough that we don't need to worry about anything.
> 
> This halves the number of context switches for the same workload.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   arch/arm64/kvm/vgic/vgic-irqfd.c | 20 ++++++++++++++++----
>   arch/arm64/kvm/vgic/vgic-its.c   |  3 +--
>   2 files changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/kvm/vgic/vgic-irqfd.c b/arch/arm64/kvm/vgic/vgic-irqfd.c
> index d8cdfea5cc96..11a9f81115ab 100644
> --- a/arch/arm64/kvm/vgic/vgic-irqfd.c
> +++ b/arch/arm64/kvm/vgic/vgic-irqfd.c
> @@ -107,15 +107,27 @@ int kvm_arch_set_irq_inatomic(struct kvm_kernel_irq_routing_entry *e,
>   			      struct kvm *kvm, int irq_source_id, int level,
>   			      bool line_status)

... and you may also need to update the comment on top of it to
reflect this change.

/**
  * kvm_arch_set_irq_inatomic: fast-path for irqfd injection
  *
  * Currently only direct MSI injection is supported.
  */


Thanks,
Zenghui

>   {
> -	if (e->type == KVM_IRQ_ROUTING_MSI && vgic_has_its(kvm) && level) {
> +	if (!level)
> +		return -EWOULDBLOCK;
> +
> +	switch (e->type) {
> +	case KVM_IRQ_ROUTING_MSI: {
>   		struct kvm_msi msi;
>   
> +		if (!vgic_has_its(kvm))
> +			return -EINVAL;
> +
>   		kvm_populate_msi(e, &msi);
> -		if (!vgic_its_inject_cached_translation(kvm, &msi))
> -			return 0;
> +		return vgic_its_inject_cached_translation(kvm, &msi);
>   	}
>   
> -	return -EWOULDBLOCK;
> +	case KVM_IRQ_ROUTING_IRQCHIP:
> +		/* Injecting SPIs is always possible in atomic context */
> +		return vgic_irqfd_set_irq(e, kvm, irq_source_id, 1, line_status);
> +
> +	default:
> +		return -EWOULDBLOCK;
> +	}
>   }
>   
>   int kvm_vgic_setup_default_irq_routing(struct kvm *kvm)
> diff --git a/arch/arm64/kvm/vgic/vgic-its.c b/arch/arm64/kvm/vgic/vgic-its.c
> index c012a52b19f5..40cbaca81333 100644
> --- a/arch/arm64/kvm/vgic/vgic-its.c
> +++ b/arch/arm64/kvm/vgic/vgic-its.c
> @@ -757,9 +757,8 @@ int vgic_its_inject_cached_translation(struct kvm *kvm, struct kvm_msi *msi)
>   
>   	db = (u64)msi->address_hi << 32 | msi->address_lo;
>   	irq = vgic_its_check_cache(kvm, db, msi->devid, msi->data);
> -
>   	if (!irq)
> -		return -1;
> +		return -EWOULDBLOCK;
>   
>   	raw_spin_lock_irqsave(&irq->irq_lock, flags);
>   	irq->pending_latch = true;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
