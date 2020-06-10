Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFB91F5B95
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 20:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yoofAjoXPrIUpf2IsEp5uQQ7lMBv94idVvhHZB19qlM=; b=YsI3v0n5k8YFqg
	CFi+ZohBfebifYpn/ySAK7e0NUbzsqRumdJKhVSCDiVTVxneYoybyug70gG06eXasXdKNczPl+v0a
	m9OuxMjTQMPlO+owvdzt0mM0g7NrNUTwTQti4hMFgV0E6wKCLPCdKsD1jZazpvXtB8bgCfAWFXyH5
	oQGl+gC3V3aj/byytRvRSUDO8lSH9siINwZMxjqaHKRl1GPS5HXL7/D5Aj50f9n6QbnPpsl0pKI+x
	TQ7EfIE0IEw1TvRWko7kvScOoGBAFosVJXjL3wzBXCd/4cQYOM0GHmS+gdqA6dZWVHqCO21jMoNcM
	+9KcEk5uEn1NS5nXxndw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5tu-0007a7-23; Wed, 10 Jun 2020 18:56:38 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5tj-0007ZI-2o
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 18:56:28 +0000
Received: by mail-vk1-xa43.google.com with SMTP id n22so849374vkm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7eIpW1TrmjAjBk7KQrsYXoot8/oGn/0TG+dydExJy2w=;
 b=Zt0ORjDTOU4A4Z/iXipnwo1pC3JnqzSsmd5ypTkLOgKENLJmgdAk/ogZdaBrXeKm4G
 kDu+D/hjyT0rpS0gzIsFvo44p5bZGjGsJFvu2tjNW6qm7SZqMENiXuvOqnYibPGwN+1C
 QKQVWcJhGYrCDUOb1ifJ4mL1wa3UBhO4+AcKgl714BEONvkSxYjHpjLEOPxoHRErzeYA
 cDMc97eLeC7E19+RflCNmm/O27QJT802Ym6aPwq4UFRBDd5iSHVrpDJQs1/sfU10UWto
 PO8itFSobsR5+z94ReeJIINHtdccWBoSIRGorciVbvXEgDEpCuRfWrVssLkYdce1lUgI
 xinw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7eIpW1TrmjAjBk7KQrsYXoot8/oGn/0TG+dydExJy2w=;
 b=ESyV6D6zVL5CGSZzwL3JK51Mu0rLDuxssGizrSMm7+Se23xAMaObxyzKQ9XkC2Tm2b
 jZnISg8v2Y/K+YLYViz8POCrrRyTo1Ed7v69BuR5iOguftKfegDreHRWPbqcPNU0qPDT
 EFRnEsXJ/XlQ+KWB9M0C2wEFE+Tr3oSIMtIrxsc/JsV75c+ZIaR+m0I5f3EEmUXSOcb6
 r/E6OpdFzWR3N69YXGpe5fSh6GnKrYHg4kGCMkbxARDAJvHAOe8Jmk4Z4ja50Jp9uE61
 +upRz9sF06IPor8Vdu3zBKX6yPg86gnL5UwEX+dWGvma1+e4vFUGNjmOaT6g1L9CcFHI
 uZFQ==
X-Gm-Message-State: AOAM533IoBpHhPw3m9o/yyw2HQV3PSmu/qoR7Xn1R3dgW7AzB70wYKkd
 YQvszmBPNK28MgsA9myXoLuB+VIo2rN0G50MlX8Ezw==
X-Google-Smtp-Source: ABdhPJzTz3+TLBOLxyJarRjMGjCxCEXEcgNWvchhSDXNpIW/g1/IZl7i88fZ2VTc/j4GkNMODoBhJOAYiSGYjIJjENg=
X-Received: by 2002:a1f:b647:: with SMTP id g68mr2478062vkf.76.1591815385955; 
 Wed, 10 Jun 2020 11:56:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-14-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-14-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 11:56:14 -0700
Message-ID: <CANgfPd_YFfE_97W0y2d5dZo1CVgYAc=K3ADDz3azda42P+Ek=A@mail.gmail.com>
Subject: Re: [PATCH 13/21] KVM: x86/mmu: Prepend "kvm_" to memory cache
 helpers that will be global
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_115627_144934_BBCA26BC 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Paul Mackerras <paulus@ozlabs.org>, Claudio Imbrenda <imbrenda@linux.ibm.com>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 2:39 PM Sean Christopherson
<sean.j.christopherson@intel.com> wrote:
>
> Rename the memory helpers that will soon be moved to common code and be
> made globaly available via linux/kvm_host.h.  "mmu" alone is not a
> sufficient namespace for globally available KVM symbols.
>
> Opportunistically add "nr_" in mmu_memory_cache_free_objects() to make
> it clear the function returns the number of free objects, as opposed to
> freeing existing objects.
>
> Suggested-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/kvm/mmu/mmu.c | 42 +++++++++++++++++++++---------------------
>  1 file changed, 21 insertions(+), 21 deletions(-)
>
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index 8d66cf558f1b..b85d3e8e8403 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -1071,7 +1071,7 @@ static inline void *mmu_memory_cache_alloc_obj(struct kvm_mmu_memory_cache *mc,
>                 return (void *)__get_free_page(gfp_flags);
>  }
>
> -static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
> +static int kvm_mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
>  {
>         void *obj;
>
> @@ -1086,12 +1086,12 @@ static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
>         return 0;
>  }
>
> -static int mmu_memory_cache_free_objects(struct kvm_mmu_memory_cache *mc)
> +static int kvm_mmu_memory_cache_nr_free_objects(struct kvm_mmu_memory_cache *mc)
>  {
>         return mc->nobjs;
>  }
>
> -static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
> +static void kvm_mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
>  {
>         while (mc->nobjs) {
>                 if (mc->kmem_cache)
> @@ -1106,33 +1106,33 @@ static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu, bool maybe_indirect)
>         int r;
>
>         /* 1 rmap, 1 parent PTE per level, and the prefetched rmaps. */
> -       r = mmu_topup_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache,
> -                                  1 + PT64_ROOT_MAX_LEVEL + PTE_PREFETCH_NUM);
> +       r = kvm_mmu_topup_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache,
> +                                      1 + PT64_ROOT_MAX_LEVEL + PTE_PREFETCH_NUM);
>         if (r)
>                 return r;
> -       r = mmu_topup_memory_cache(&vcpu->arch.mmu_shadow_page_cache,
> -                                  PT64_ROOT_MAX_LEVEL);
> +       r = kvm_mmu_topup_memory_cache(&vcpu->arch.mmu_shadow_page_cache,
> +                                      PT64_ROOT_MAX_LEVEL);
>         if (r)
>                 return r;
>         if (maybe_indirect) {
> -               r = mmu_topup_memory_cache(&vcpu->arch.mmu_gfn_array_cache,
> -                                          PT64_ROOT_MAX_LEVEL);
> +               r = kvm_mmu_topup_memory_cache(&vcpu->arch.mmu_gfn_array_cache,
> +                                              PT64_ROOT_MAX_LEVEL);
>                 if (r)
>                         return r;
>         }
> -       return mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache,
> -                                     PT64_ROOT_MAX_LEVEL);
> +       return kvm_mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache,
> +                                         PT64_ROOT_MAX_LEVEL);
>  }
>
>  static void mmu_free_memory_caches(struct kvm_vcpu *vcpu)
>  {
> -       mmu_free_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache);
> -       mmu_free_memory_cache(&vcpu->arch.mmu_shadow_page_cache);
> -       mmu_free_memory_cache(&vcpu->arch.mmu_gfn_array_cache);
> -       mmu_free_memory_cache(&vcpu->arch.mmu_page_header_cache);
> +       kvm_mmu_free_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache);
> +       kvm_mmu_free_memory_cache(&vcpu->arch.mmu_shadow_page_cache);
> +       kvm_mmu_free_memory_cache(&vcpu->arch.mmu_gfn_array_cache);
> +       kvm_mmu_free_memory_cache(&vcpu->arch.mmu_page_header_cache);
>  }
>
> -static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
> +static void *kvm_mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
>  {
>         void *p;
>
> @@ -1146,7 +1146,7 @@ static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
>
>  static struct pte_list_desc *mmu_alloc_pte_list_desc(struct kvm_vcpu *vcpu)
>  {
> -       return mmu_memory_cache_alloc(&vcpu->arch.mmu_pte_list_desc_cache);
> +       return kvm_mmu_memory_cache_alloc(&vcpu->arch.mmu_pte_list_desc_cache);
>  }
>
>  static void mmu_free_pte_list_desc(struct pte_list_desc *pte_list_desc)
> @@ -1417,7 +1417,7 @@ static bool rmap_can_add(struct kvm_vcpu *vcpu)
>         struct kvm_mmu_memory_cache *mc;
>
>         mc = &vcpu->arch.mmu_pte_list_desc_cache;
> -       return mmu_memory_cache_free_objects(mc);
> +       return kvm_mmu_memory_cache_nr_free_objects(mc);
>  }
>
>  static int rmap_add(struct kvm_vcpu *vcpu, u64 *spte, gfn_t gfn)
> @@ -2104,10 +2104,10 @@ static struct kvm_mmu_page *kvm_mmu_alloc_page(struct kvm_vcpu *vcpu, int direct
>  {
>         struct kvm_mmu_page *sp;
>
> -       sp = mmu_memory_cache_alloc(&vcpu->arch.mmu_page_header_cache);
> -       sp->spt = mmu_memory_cache_alloc(&vcpu->arch.mmu_shadow_page_cache);
> +       sp = kvm_mmu_memory_cache_alloc(&vcpu->arch.mmu_page_header_cache);
> +       sp->spt = kvm_mmu_memory_cache_alloc(&vcpu->arch.mmu_shadow_page_cache);
>         if (!direct)
> -               sp->gfns = mmu_memory_cache_alloc(&vcpu->arch.mmu_gfn_array_cache);
> +               sp->gfns = kvm_mmu_memory_cache_alloc(&vcpu->arch.mmu_gfn_array_cache);
>         set_page_private(virt_to_page(sp->spt), (unsigned long)sp);
>
>         /*
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
