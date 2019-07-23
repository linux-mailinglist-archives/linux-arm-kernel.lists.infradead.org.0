Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD1C71B3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlVgITOTN1Qc0q5F3zSRrm8bxBUkmditk24hdb/1XFQ=; b=ZUCpBjDaVj1eAL
	ozmuNDbkOQHUrejbzTE5veYpQuG+NCZ2mFK2FZiV6qG9lo8s+kPiZ+62vajs1w8F16jhSzRy1z5yH
	5r+Yy/oL8HeXcwKxtvxbndlxffTabN6JdmZwqSKIc7FwNDWW58XOQhl3uP+7Kxa5iHA19Dop/hIpb
	yERD3RcRWbdqqdfY9odtpeqxb+PNk2xf4U8l19KRtJ/YLQTHM8TaRLnzrCklVcYxel4QjQVfcy7vZ
	8geZEZUFS5vWgr4dGmjDo+zdIKXi4UaFutrDY1f0zOZ/bGF7KW+3arUs5wH3CL/GzJ90lSJOst1w5
	Wzr1lo6IjB2kykdIbodw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwVY-0000n4-TI; Tue, 23 Jul 2019 15:15:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpwVJ-0000SK-IG
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:15:02 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E9CE530BD1B5;
 Tue, 23 Jul 2019 15:15:00 +0000 (UTC)
Received: from [10.36.116.111] (ovpn-116-111.ams2.redhat.com [10.36.116.111])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5908A5C25A;
 Tue, 23 Jul 2019 15:14:58 +0000 (UTC)
Subject: Re: [PATCH v2 9/9] KVM: arm/arm64: vgic-irqfd: Implement
 kvm_arch_set_irq_inatomic
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190611170336.121706-1-marc.zyngier@arm.com>
 <20190611170336.121706-10-marc.zyngier@arm.com>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <a63b08b8-9539-09b4-1060-7c0d2f2eacac@redhat.com>
Date: Tue, 23 Jul 2019 17:14:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190611170336.121706-10-marc.zyngier@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Tue, 23 Jul 2019 15:15:01 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_081501_656854_BD233385 
X-CRM114-Status: GOOD (  22.11  )
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
 Zenghui Yu <yuzenghui@huawei.com>, "Saidi, Ali" <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 6/11/19 7:03 PM, Marc Zyngier wrote:
> Now that we have a cache of MSI->LPI translations, it is pretty
> easy to implement kvm_arch_set_irq_inatomic (this cache can be
> parsed without sleeping).
> 
> Hopefully, this will improve some LPI-heavy workloads.
> 
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  virt/kvm/arm/vgic/vgic-irqfd.c | 36 ++++++++++++++++++++++++++++------
>  1 file changed, 30 insertions(+), 6 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-irqfd.c b/virt/kvm/arm/vgic/vgic-irqfd.c
> index 99e026d2dade..9f203ed8c8f3 100644
> --- a/virt/kvm/arm/vgic/vgic-irqfd.c
> +++ b/virt/kvm/arm/vgic/vgic-irqfd.c
> @@ -77,6 +77,15 @@ int kvm_set_routing_entry(struct kvm *kvm,
>  	return r;
>  }
>  
> +static void kvm_populate_msi(struct kvm_kernel_irq_routing_entry *e,
> +			     struct kvm_msi *msi)
> +{
> +	msi->address_lo = e->msi.address_lo;
> +	msi->address_hi = e->msi.address_hi;
> +	msi->data = e->msi.data;
> +	msi->flags = e->msi.flags;
> +	msi->devid = e->msi.devid;
> +}
>  /**
>   * kvm_set_msi: inject the MSI corresponding to the
s/:/ -
>   * MSI routing entry
> @@ -90,21 +99,36 @@ int kvm_set_msi(struct kvm_kernel_irq_routing_entry *e,
>  {
>  	struct kvm_msi msi;
>  
> -	msi.address_lo = e->msi.address_lo;
> -	msi.address_hi = e->msi.address_hi;
> -	msi.data = e->msi.data;
> -	msi.flags = e->msi.flags;
> -	msi.devid = e->msi.devid;
> -
>  	if (!vgic_has_its(kvm))
>  		return -ENODEV;
>  
>  	if (!level)
>  		return -1;
>  
> +	kvm_populate_msi(e, &msi);
>  	return vgic_its_inject_msi(kvm, &msi);
>  }
>  
> +/**
> + * kvm_arch_set_irq_inatomic: fast-path for irqfd injection
s/:/ -
> + *
> + * Currently only direct MSI injecton is supported.
injection
> + */
> +int kvm_arch_set_irq_inatomic(struct kvm_kernel_irq_routing_entry *e,
> +			      struct kvm *kvm, int irq_source_id, int level,
> +			      bool line_status)
> +{
> +	if (e->type == KVM_IRQ_ROUTING_MSI && vgic_has_its(kvm) && level) {
> +		struct kvm_msi msi;
> +
> +		kvm_populate_msi(e, &msi);
> +		if (!vgic_its_inject_cached_translation(kvm, &msi))
> +			return 0;
if this fails since its->enabled is false we will re-attempt the
injection though the normal injection path but that's not a big deal.
> +	}
> +
> +	return -EWOULDBLOCK;
> +}
> +
>  int kvm_vgic_setup_default_irq_routing(struct kvm *kvm)
>  {
>  	struct kvm_irq_routing_entry *entries;
> 
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
