Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A061F632D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 10:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=boz+6UGJHnIeI6cHYMHRsCAeXA4j5GD5R8SJvhs5czc=; b=HXBD7fTpCK/OfGUarddk6dlOv
	kE5ZbkikRbenaw73mfaqVhBBo/ufm42VqyybXTyJFnwBVY7QNYQI+zRXx5BI/VjHlqRaOXgXMTqOh
	yh9pPe0TqEdAn6S5x7TOvaxX4Qxrt/iBxokDggntKPjeTeDOIabjpIwXEYWqMoCqCBA/jByp8GZ3E
	gjcfqBH52UTuJlTmqR1ngtnFyDzxQbI4kLLsifqKOqHlNO8vKQ7Mnxp72+Ai+aKATky6oIOcSvwLj
	c6wt9by18IMXi03x24AOAu9GIDrAk1k8fHGLGfGrzuMHFvDnaSjUusK5Mklrx23lf4xXcl/GZwe3p
	3Eimi5wEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjI9r-0002CO-JI; Thu, 11 Jun 2020 08:01:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjI9i-0002Bv-SC
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 08:01:48 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65AB1204EA;
 Thu, 11 Jun 2020 08:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591862506;
 bh=WrdLLQIOoxEMsuU9Lk5Dy1SToKye9eSD7H3ebXQ4auQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BFNWtrgHmTyg+AGGrVuwbubxxA7aMIB6dBhEn5erW2tJ90Re7LmkgQh1PRU8S1tBy
 1Vf5aq5qLm3ViH955oFX5SqDRf+22SYRhv8o6a+CLJPlv/tGf0NcfQ1zvZ772LwNWR
 fmY3NiXUQ/U6YmjVuKyNJoqR2RwkIVDLBKcX1YPI=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jjI9g-0021ZL-Tz; Thu, 11 Jun 2020 09:01:45 +0100
MIME-Version: 1.0
Date: Thu, 11 Jun 2020 09:01:44 +0100
From: Marc Zyngier <maz@kernel.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH 18/21] KVM: arm64: Use common KVM implementation of MMU
 memory caches
In-Reply-To: <20200605213853.14959-19-sean.j.christopherson@intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-19-sean.j.christopherson@intel.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <3555daf3b38c890e1e74f05d6f49f9be@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: sean.j.christopherson@intel.com, paulus@ozlabs.org,
 borntraeger@de.ibm.com, frankja@linux.ibm.com, pbonzini@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 david@redhat.com, cohuck@redhat.com, imbrenda@linux.ibm.com,
 vkuznets@redhat.com, wanpengli@tencent.com, jmattson@google.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-mips@vger.kernel.org, kvm@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org, pfeiner@google.com,
 pshier@google.com, junaids@google.com, bgardon@google.com,
 christoffer.dall@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_010146_957363_98820B48 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, Ben Gardon <bgardon@google.com>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-05 22:38, Sean Christopherson wrote:
> Move to the common MMU memory cache implementation now that the common
> code and arm64's existing code are semantically compatible.
> 
> No functional change intended.
> 
> Suggested-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/arm64/include/asm/kvm_host.h  | 12 -------
>  arch/arm64/include/asm/kvm_types.h |  2 ++
>  arch/arm64/kvm/mmu.c               | 51 ++++++------------------------
>  3 files changed, 12 insertions(+), 53 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_host.h
> b/arch/arm64/include/asm/kvm_host.h
> index 2385dede96e0..d221b6b129fd 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -97,18 +97,6 @@ struct kvm_arch {
>  	bool return_nisv_io_abort_to_user;
>  };
> 
> -#define KVM_NR_MEM_OBJS     40
> -
> -/*
> - * We don't want allocation failures within the mmu code, so we 
> preallocate
> - * enough memory for a single page fault in a cache.
> - */
> -struct kvm_mmu_memory_cache {
> -	int nobjs;
> -	gfp_t gfp_zero;
> -	void *objects[KVM_NR_MEM_OBJS];
> -};
> -
>  struct kvm_vcpu_fault_info {
>  	u32 esr_el2;		/* Hyp Syndrom Register */
>  	u64 far_el2;		/* Hyp Fault Address Register */
> diff --git a/arch/arm64/include/asm/kvm_types.h
> b/arch/arm64/include/asm/kvm_types.h
> index d0987007d581..9a126b9e2d7c 100644
> --- a/arch/arm64/include/asm/kvm_types.h
> +++ b/arch/arm64/include/asm/kvm_types.h
> @@ -2,5 +2,7 @@
>  #ifndef _ASM_ARM64_KVM_TYPES_H
>  #define _ASM_ARM64_KVM_TYPES_H
> 
> +#define KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE 40
> +
>  #endif /* _ASM_ARM64_KVM_TYPES_H */
> 
> diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
> index 688213ef34f0..976405e2fbb2 100644
> --- a/arch/arm64/kvm/mmu.c
> +++ b/arch/arm64/kvm/mmu.c
> @@ -124,37 +124,6 @@ static void stage2_dissolve_pud(struct kvm *kvm,
> phys_addr_t addr, pud_t *pudp)
>  	put_page(virt_to_page(pudp));
>  }
> 
> -static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache, 
> int min)
> -{
> -	void *page;
> -
> -	if (cache->nobjs >= min)
> -		return 0;
> -	while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
> -		page = (void *)__get_free_page(GFP_KERNEL_ACCOUNT |
> -					       cache->gfp_zero);
> -		if (!page)
> -			return -ENOMEM;
> -		cache->objects[cache->nobjs++] = page;
> -	}
> -	return 0;
> -}
> -
> -static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
> -{
> -	while (mc->nobjs)
> -		free_page((unsigned long)mc->objects[--mc->nobjs]);
> -}
> -
> -static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
> -{
> -	void *p;
> -
> -	BUG_ON(!mc || !mc->nobjs);
> -	p = mc->objects[--mc->nobjs];
> -	return p;
> -}
> -
>  static void clear_stage2_pgd_entry(struct kvm *kvm, pgd_t *pgd,
> phys_addr_t addr)
>  {
>  	pud_t *pud_table __maybe_unused = stage2_pud_offset(kvm, pgd, 0UL);
> @@ -1024,7 +993,7 @@ static pud_t *stage2_get_pud(struct kvm *kvm,
> struct kvm_mmu_memory_cache *cache
>  	if (stage2_pgd_none(kvm, *pgd)) {
>  		if (!cache)
>  			return NULL;
> -		pud = mmu_memory_cache_alloc(cache);
> +		pud = kvm_mmu_memory_cache_alloc(cache);
>  		stage2_pgd_populate(kvm, pgd, pud);
>  		get_page(virt_to_page(pgd));
>  	}

Quick note: this patch (as it is) breaks on arm64 due to Mike Rapoport's
P4D rework. I've fixed it locally in order to test the series.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
