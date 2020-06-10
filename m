Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131131F5D1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 22:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LOuzhk8M4z5pYXYEHz83NX26lZzouFDMQOxacY5Tns=; b=rdi3wQX2Jm0rO0
	RrgqE4/YL4jVvsXTDB6rb3P4mVb1zvXFNXIK+KQaKwt/UaxoWFVtWUzUMLQ9xem2a8CJZnvGteAS7
	t4UPoa3YYrAkWQkTLfu5YHIlD4DavspMJELBZzMgCJ73G1xp6R8gAlFCYfCHsX2MPvfgiynAghoMV
	QcEpbRHY5ehCpPX7c1LNLw3TBWZoQVzvOwvu/uKSNWfY/JelD17OBhqMJSR3EFdj8i7mVaciQirm+
	MQDKCSjLAjre8XFWX8BfcoyvXbOqbVbkpV+Th6YzQV5zJZqwoQfEF3WkceTbCiox+nn88dnBWmpkJ
	kVAbd1vuVrlMDzY2nOkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj7H9-0002Lo-UB; Wed, 10 Jun 2020 20:24:43 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj7H1-0002Kv-2K
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 20:24:36 +0000
Received: by mail-ua1-x941.google.com with SMTP id t26so1316229ual.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 13:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OYjqAVwtvPl7Y3hFy8cg2FHFUeVaZTx/znZrNTcOHyg=;
 b=c2GBWEymOyDmHxxDIPkNDniIbX3TqlOV7Ry9nkanRvVCrSn2NMJ1GnwEfVB5/R50jP
 77Rjx/4tfzv/21jbJwgXQWYHRcGohQXCaWO3gsp+nHajYQM5boFPucGIPLgfHX2MDKZ9
 +OTXs9o5nIuxF0NxV+MOUmd1vMtcj2kdrDNZSP44fW4w0h/heaF22VAQQKgm2rqnMc6V
 NJb+uAZ7l7pOtCuqjyYuB03gXscyCe3TL+JYrlC+kUJVKogfkmlGDaS6Z3tJZHdjtIyR
 8GoO1sGjzYWFt6lmc/+nI7dUOUzM6fyQMlG2J8rvlAJmgx36NdSbKub1xcaNcasqobbn
 Zo8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OYjqAVwtvPl7Y3hFy8cg2FHFUeVaZTx/znZrNTcOHyg=;
 b=oHZ2DednEjbMDdC4TVaI5yL5Pj5LREah6Bpx25i9XFDGS9st3Do1C1ra/2fhaf8g+z
 43ycpXtzQSkWc8K4mqvsm3pyuyacIrRaSfQSxpVFTdWdqerQ2uXCYsf75DxWX+5+XiaF
 rtyHCTtRy9Okh42fjHWO/ZB8BJlfIXDF2kJhw0TmGOXbxcHP0CGh37Y3Lj3zY6lCWUxJ
 JD7SX9Xwd14bF+/Va2RSq2xKN9OYJQWyz+DZDZhcpIUgGi4q6f7MdZH27gpToy2Bjzo5
 kmk8vmDbJTghkPK+a1l6/D6OMDLM519PpWShl4+V2KpC+VsRMb2ksimQdVoM5p/SNepx
 5STA==
X-Gm-Message-State: AOAM530cxwVU3646oF+TBrFacZ1Q7mFpMCTzCKmZO9rZSn4ac7DX8nQS
 u188V0O2KF73niyA5N5uP/LHVx+klJV8tRWyDhuvLA==
X-Google-Smtp-Source: ABdhPJzuDO175rlKEOjx+cUrssRUoDydSEqe6opXAVLnE5jRaJ0s7w5Cvs20/NG/qvzCO9X/JYv7sNtKVyijp2/LQvA=
X-Received: by 2002:ab0:5642:: with SMTP id z2mr4013044uaa.6.1591820670801;
 Wed, 10 Jun 2020 13:24:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-16-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-16-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 13:24:18 -0700
Message-ID: <CANgfPd_oGhO4dpkejhzh1PaAc-0U068kVdoHj4_fiQveW8yXLg@mail.gmail.com>
Subject: Re: [PATCH 15/21] KVM: Move x86's MMU memory cache helpers to common
 KVM code
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_132435_125251_13C6E8B5 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
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
> Move x86's memory cache helpers to common KVM code so that they can be
> reused by arm64 and MIPS in future patches.
>
> Suggested-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/kvm/mmu/mmu.c   | 53 --------------------------------------
>  include/linux/kvm_host.h |  7 +++++
>  virt/kvm/kvm_main.c      | 55 ++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 62 insertions(+), 53 deletions(-)
>
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index b85d3e8e8403..a627437f73fd 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -1060,47 +1060,6 @@ static void walk_shadow_page_lockless_end(struct kvm_vcpu *vcpu)
>         local_irq_enable();
>  }
>
> -static inline void *mmu_memory_cache_alloc_obj(struct kvm_mmu_memory_cache *mc,
> -                                              gfp_t gfp_flags)
> -{
> -       gfp_flags |= mc->gfp_zero;
> -
> -       if (mc->kmem_cache)
> -               return kmem_cache_alloc(mc->kmem_cache, gfp_flags);
> -       else
> -               return (void *)__get_free_page(gfp_flags);
> -}
> -
> -static int kvm_mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
> -{
> -       void *obj;
> -
> -       if (mc->nobjs >= min)
> -               return 0;
> -       while (mc->nobjs < ARRAY_SIZE(mc->objects)) {
> -               obj = mmu_memory_cache_alloc_obj(mc, GFP_KERNEL_ACCOUNT);
> -               if (!obj)
> -                       return mc->nobjs >= min ? 0 : -ENOMEM;
> -               mc->objects[mc->nobjs++] = obj;
> -       }
> -       return 0;
> -}
> -
> -static int kvm_mmu_memory_cache_nr_free_objects(struct kvm_mmu_memory_cache *mc)
> -{
> -       return mc->nobjs;
> -}
> -
> -static void kvm_mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
> -{
> -       while (mc->nobjs) {
> -               if (mc->kmem_cache)
> -                       kmem_cache_free(mc->kmem_cache, mc->objects[--mc->nobjs]);
> -               else
> -                       free_page((unsigned long)mc->objects[--mc->nobjs]);
> -       }
> -}
> -
>  static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu, bool maybe_indirect)
>  {
>         int r;
> @@ -1132,18 +1091,6 @@ static void mmu_free_memory_caches(struct kvm_vcpu *vcpu)
>         kvm_mmu_free_memory_cache(&vcpu->arch.mmu_page_header_cache);
>  }
>
> -static void *kvm_mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
> -{
> -       void *p;
> -
> -       if (WARN_ON(!mc->nobjs))
> -               p = mmu_memory_cache_alloc_obj(mc, GFP_ATOMIC | __GFP_ACCOUNT);
> -       else
> -               p = mc->objects[--mc->nobjs];
> -       BUG_ON(!p);
> -       return p;
> -}
> -
>  static struct pte_list_desc *mmu_alloc_pte_list_desc(struct kvm_vcpu *vcpu)
>  {
>         return kvm_mmu_memory_cache_alloc(&vcpu->arch.mmu_pte_list_desc_cache);
> diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
> index d38d6b9c24be..802b9e2306f0 100644
> --- a/include/linux/kvm_host.h
> +++ b/include/linux/kvm_host.h
> @@ -815,6 +815,13 @@ void kvm_vcpu_on_spin(struct kvm_vcpu *vcpu, bool usermode_vcpu_not_eligible);
>  void kvm_flush_remote_tlbs(struct kvm *kvm);
>  void kvm_reload_remote_mmus(struct kvm *kvm);
>
> +#ifdef KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE
> +int kvm_mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min);
> +int kvm_mmu_memory_cache_nr_free_objects(struct kvm_mmu_memory_cache *mc);
> +void kvm_mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc);
> +void *kvm_mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc);
> +#endif
> +
>  bool kvm_make_vcpus_request_mask(struct kvm *kvm, unsigned int req,
>                                  struct kvm_vcpu *except,
>                                  unsigned long *vcpu_bitmap, cpumask_var_t tmp);
> diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
> index 4db151f6101e..fead5f1d5594 100644
> --- a/virt/kvm/kvm_main.c
> +++ b/virt/kvm/kvm_main.c
> @@ -342,6 +342,61 @@ void kvm_reload_remote_mmus(struct kvm *kvm)
>         kvm_make_all_cpus_request(kvm, KVM_REQ_MMU_RELOAD);
>  }
>
> +#ifdef KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE
> +static inline void *mmu_memory_cache_alloc_obj(struct kvm_mmu_memory_cache *mc,
> +                                              gfp_t gfp_flags)
> +{
> +       gfp_flags |= mc->gfp_zero;
> +
> +       if (mc->kmem_cache)
> +               return kmem_cache_alloc(mc->kmem_cache, gfp_flags);
> +       else
> +               return (void *)__get_free_page(gfp_flags);
> +}
> +
> +int kvm_mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
> +{
> +       void *obj;
> +
> +       if (mc->nobjs >= min)
> +               return 0;
> +       while (mc->nobjs < ARRAY_SIZE(mc->objects)) {
> +               obj = mmu_memory_cache_alloc_obj(mc, GFP_KERNEL_ACCOUNT);
> +               if (!obj)
> +                       return mc->nobjs >= min ? 0 : -ENOMEM;
> +               mc->objects[mc->nobjs++] = obj;
> +       }
> +       return 0;
> +}
> +
> +int kvm_mmu_memory_cache_nr_free_objects(struct kvm_mmu_memory_cache *mc)
> +{
> +       return mc->nobjs;
> +}
> +
> +void kvm_mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
> +{
> +       while (mc->nobjs) {
> +               if (mc->kmem_cache)
> +                       kmem_cache_free(mc->kmem_cache, mc->objects[--mc->nobjs]);
> +               else
> +                       free_page((unsigned long)mc->objects[--mc->nobjs]);
> +       }
> +}
> +
> +void *kvm_mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
> +{
> +       void *p;
> +
> +       if (WARN_ON(!mc->nobjs))
> +               p = mmu_memory_cache_alloc_obj(mc, GFP_ATOMIC | __GFP_ACCOUNT);
> +       else
> +               p = mc->objects[--mc->nobjs];
> +       BUG_ON(!p);
> +       return p;
> +}
> +#endif
> +
>  static void kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
>  {
>         mutex_init(&vcpu->mutex);
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
