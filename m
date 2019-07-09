Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 389A5633CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 11:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lBES+XaJDlQujZBPzKLEn7Bk9z5J4oC5tqtFUVVaKI=; b=rLlUrUN90qY+nu
	dlOv15rfs4oNgx3zUBZlbYvGGwyr5BDi81Lqrjmy/8NezAWNIZR2BewaKvgkPZT2IFqM+xd4mP7j0
	+3qcmKIw338T99hqE5iSnpTwDp/1mTSdZrxHpBlwLF4b7aGdINxETbH4IE7L2KnGUpRnqB7plPM9o
	INUT1uIamFtXZQtg8udz/9sgDzqdQNtHkxowDqQkRjB5/d4DMzYFOS+7+zFcf9+yhTNnMdGefZ1KH
	av1nQ7KkkWlk6cbNuMNCejdldPMhrXXQfZj6zM4TAGWXvvExH/+TBJg0ox3op3HosB0Q56kWVha+m
	skMorMgWCf3HwY9hjzEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkmuC-000535-KV; Tue, 09 Jul 2019 09:59:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmu0-00052H-Hh
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 09:59:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D0AE28;
 Tue,  9 Jul 2019 02:59:09 -0700 (PDT)
Received: from [10.1.196.217] (unassigned-hostname.cambridge.arm.com
 [10.1.196.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 67F323F738;
 Tue,  9 Jul 2019 02:59:08 -0700 (PDT)
Subject: Re: [PATCH 40/59] KVM: arm64: nv: Don't always start an S2 MMU search
 from the beginning
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-41-marc.zyngier@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <ccb11c22-0aa9-7e6a-98b2-acdfa0603eb0@arm.com>
Date: Tue, 9 Jul 2019 10:59:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-41-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_025912_627150_A62A9887 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andre Przywara <andre.przywara@arm.com>, Dave Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/21/19 10:38 AM, Marc Zyngier wrote:
> Starting a S2 MMU search from the beginning all the time means that
> we're potentially nuking a useful context (like we'd potentially
> have on a !VHE KVM guest).
>
> Instead, let's always start the search from the point *after* the
> last allocated context. This should ensure that alternating between
> two EL1 contexts will not result in nuking the whole S2 each time.
>
> lookup_s2_mmu now has a chance to provide a hit.
>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  arch/arm64/include/asm/kvm_host.h |  1 +
>  arch/arm64/kvm/nested.c           | 14 ++++++++++++--
>  2 files changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index b71a7a237f95..b7c44adcdbf3 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -123,6 +123,7 @@ struct kvm_arch {
>  	 */
>  	struct kvm_s2_mmu *nested_mmus;
>  	size_t nested_mmus_size;
> +	int nested_mmus_next;

For consistency, shouldn't nested_mmus_next be zero initialized in
kvm_init_nested (arch/arm64/kvm/nested.c), like nested_mmus and
nested_mmus_size? Not a big deal either way, since struct kvm is allocated using
vzalloc.

>  really
>  	/* VTCR_EL2 value for this VM */
>  	u64    vtcr;
> diff --git a/arch/arm64/kvm/nested.c b/arch/arm64/kvm/nested.c
> index 09afafbdc8fe..214d59019935 100644
> --- a/arch/arm64/kvm/nested.c
> +++ b/arch/arm64/kvm/nested.c
> @@ -363,14 +363,24 @@ static struct kvm_s2_mmu *get_s2_mmu_nested(struct kvm_vcpu *vcpu)
>  	if (s2_mmu)
>  		goto out;
>  
> -	for (i = 0; i < kvm->arch.nested_mmus_size; i++) {
> -		s2_mmu = &kvm->arch.nested_mmus[i];
> +	/*
> +	 * Make sure we don't always search from the same point, or we
> +	 * will always reuse a potentially active context, leaving
> +	 * free contexts unused.
> +	 */
> +	for (i = kvm->arch.nested_mmus_next;
> +	     i < (kvm->arch.nested_mmus_size + kvm->arch.nested_mmus_next);
> +	     i++) {
> +		s2_mmu = &kvm->arch.nested_mmus[i % kvm->arch.nested_mmus_size];
>  
>  		if (atomic_read(&s2_mmu->refcnt) == 0)
>  			break;
>  	}
>  	BUG_ON(atomic_read(&s2_mmu->refcnt)); /* We have struct MMUs to spare */
>  
> +	/* Set the scene for the next search */
> +	kvm->arch.nested_mmus_next = (i + 1) % kvm->arch.nested_mmus_size;
> +
>  	if (kvm_s2_mmu_valid(s2_mmu)) {
>  		/* Clear the old state */
>  		kvm_unmap_stage2_range(s2_mmu, 0, kvm_phys_size(kvm));

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
