Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B221FABAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=592AZXuIzsopRe4Ev96EgB5RolMO3A1z70zn3gjL7sk=; b=L0BoZSWJN2ogPy
	PQMiGqATi0mFXHWFLpqSbpAWTN9lEsti4tP99fVOWmkQufM1d2ppzqiNvFQO/AMAi+1YWRgw2BO8j
	HRJ/yYdTUd6mERxEbTg10qWoRgi0TSmPDCoA74ofZ84UirRJEKuECm5ucv8CiNNszBfZL6jg5JUfs
	HPX76JSWPjMTCj/bqHJI5tSTSsYmURe7zrz9o9AKkqOs0gcGAY9bf/yRTV12P5YVFzgJrhXz2hXJK
	PQ+EMtJJKMufBEkWqFSKw/7a2MA/WpAzlQbDtx/1pjkGI6XbI2yDBDhjBrRL27iOfRZMAb/bAUdlK
	182TO+hNkRE/a/fYjz8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl7LG-0006H8-6O; Tue, 16 Jun 2020 08:53:14 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7L7-0006GC-DX
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592297582;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x6AWtnIXsr8Pf+vdCf9SuJ7M4o4r+GS5IQOCBagOKD0=;
 b=BsbLGtC5FS9SAFVgWW+Kw3H6V8saOaA+ZUCmmOaM5DbcCGnB5nkCx0Nf6DuhbUyG+dXxhc
 PBiQZUR8y9G2fAeWsznJMTU+2QEP9i64wcbMCKmGr8BUwXKnSvY9Z0Ha65XOlML5L7y4LC
 O2nN/gkqLaGMyBi/otmpd2DC8wF6m1s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-168-Kncd8T43NEerIrj_COjv7A-1; Tue, 16 Jun 2020 04:52:58 -0400
X-MC-Unique: Kncd8T43NEerIrj_COjv7A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1E637873429;
 Tue, 16 Jun 2020 08:52:57 +0000 (UTC)
Received: from [10.36.114.197] (ovpn-114-197.ams2.redhat.com [10.36.114.197])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id ABD4260BEC;
 Tue, 16 Jun 2020 08:52:54 +0000 (UTC)
Subject: Re: [PATCH v2] KVM: arm64: Allow in-atomic injection of SPIs
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org, kvmarm@lists.cs.columbia.edu
References: <20200615203844.14793-1-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <c4c2d7ec-16a2-a019-283d-18a9bd576d81@redhat.com>
Date: Tue, 16 Jun 2020 10:52:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200615203844.14793-1-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_015305_528843_7016A560 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: yuzenghui@huawei.com, kernel-team@android.com,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 6/15/20 10:38 PM, Marc Zyngier wrote:
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
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric

> ---
> * From v1:
>   - Drop confusing comment (Zenghui, Eric)
>   - Now consistently return -EWOULDBLOCK when unable to inject (Eric)
>   - Don't inject if the vgic isn't initialized yet (Eric)
> 
>  arch/arm64/kvm/vgic/vgic-irqfd.c | 24 +++++++++++++++++++-----
>  arch/arm64/kvm/vgic/vgic-its.c   |  3 +--
>  2 files changed, 20 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/kvm/vgic/vgic-irqfd.c b/arch/arm64/kvm/vgic/vgic-irqfd.c
> index d8cdfea5cc96..79f8899b234c 100644
> --- a/arch/arm64/kvm/vgic/vgic-irqfd.c
> +++ b/arch/arm64/kvm/vgic/vgic-irqfd.c
> @@ -100,19 +100,33 @@ int kvm_set_msi(struct kvm_kernel_irq_routing_entry *e,
>  
>  /**
>   * kvm_arch_set_irq_inatomic: fast-path for irqfd injection
> - *
> - * Currently only direct MSI injection is supported.
>   */
>  int kvm_arch_set_irq_inatomic(struct kvm_kernel_irq_routing_entry *e,
>  			      struct kvm *kvm, int irq_source_id, int level,
>  			      bool line_status)
>  {
> -	if (e->type == KVM_IRQ_ROUTING_MSI && vgic_has_its(kvm) && level) {
> +	if (!level)
> +		return -EWOULDBLOCK;
> +
> +	switch (e->type) {
> +	case KVM_IRQ_ROUTING_MSI: {
>  		struct kvm_msi msi;
>  
> +		if (!vgic_has_its(kvm))
> +			break;
> +
>  		kvm_populate_msi(e, &msi);
> -		if (!vgic_its_inject_cached_translation(kvm, &msi))
> -			return 0;
> +		return vgic_its_inject_cached_translation(kvm, &msi);
> +	}
> +
> +	case KVM_IRQ_ROUTING_IRQCHIP:
> +		/*
> +		 * Injecting SPIs is always possible in atomic context
> +		 * as long as the damn vgic is initialized.
> +		 */
> +		if (unlikely(!vgic_initialized(kvm)))
> +			break;
> +		return vgic_irqfd_set_irq(e, kvm, irq_source_id, 1, line_status);
>  	}
>  
>  	return -EWOULDBLOCK;
> diff --git a/arch/arm64/kvm/vgic/vgic-its.c b/arch/arm64/kvm/vgic/vgic-its.c
> index c012a52b19f5..40cbaca81333 100644
> --- a/arch/arm64/kvm/vgic/vgic-its.c
> +++ b/arch/arm64/kvm/vgic/vgic-its.c
> @@ -757,9 +757,8 @@ int vgic_its_inject_cached_translation(struct kvm *kvm, struct kvm_msi *msi)
>  
>  	db = (u64)msi->address_hi << 32 | msi->address_lo;
>  	irq = vgic_its_check_cache(kvm, db, msi->devid, msi->data);
> -
>  	if (!irq)
> -		return -1;
> +		return -EWOULDBLOCK;
>  
>  	raw_spin_lock_irqsave(&irq->irq_lock, flags);
>  	irq->pending_latch = true;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
