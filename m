Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46201F489F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 23:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPXGKVZ1iQXiImJHjPChM4ZybyM3q7UmKJ5wjKWLzkk=; b=Xy0hNhN7lazu7B
	NcS3VGYPTvIhMRIIAg75Eb1uL/h1Mkz8LYruaT0WFKUcPlITyFDS456E4Y17aQwkIAYBpJYTxp0Tr
	J6R4ZwoEWuSHkLt3aGHVwja+ugo3+LlNDKKFdYGz90IRyMwooz/KBZGOxwQNBWH3J+cKMwQnDcwYL
	AWOXRrWb/B4P62S3RCgsLVgOVtcq6h6RQScT9GrYCanEaqpGjX4f7mldXNi58W7g7DszdUB0tVdzP
	ovlgr4jko5ZB5sn5z3M22rDSAEQC5HPGo5+Sr1t+bdKO7KlHq5aNy00SiNrO8WMSmNYomfb7UoBuf
	Wfo5ZP1ufvyVPXwrhPYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jilSy-0005zn-Ko; Tue, 09 Jun 2020 21:07:28 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jilSq-0005yZ-M9
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 21:07:22 +0000
Received: by mail-ua1-x941.google.com with SMTP id b10so118166uaf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 14:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f15ThlgRIs3s50AvF0kFQ8PMHdAjHFT357oOtlUx/ug=;
 b=YQTUSvv3PxEEhj5ujE/dPySButOyH55bK4Xn7FFJQPplWJdwV27lg1hiiGZPMl+Csy
 utkQv6pOjG6DMuuUAn6OW8rUDsTwDk+L09wjyrOsEHgSM9DO1jG+4DXrAkvtnH7+VocI
 GJeE84ALY1lEBJxLNfWmnbxI8H4dKWQGgYe6NIzbLwEX92BP0BVccbN5ywjf+ad2hItV
 hOK3koJ698Vs9caFgU0Oz67/J789jH+4rxh31hXP0eWCQ0G50xlrah8Vhcbhoz+wsVGG
 RvWp/Z6BsjYqNpoy5p5CsKAw38VlYjZy47xgAAr8XRHehyo5E50oaLRajAfxViZwx+CC
 YVIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f15ThlgRIs3s50AvF0kFQ8PMHdAjHFT357oOtlUx/ug=;
 b=P1Q87y8SFgSBiPO34fHx50cNbu8FFU35FusCXin/46hFiiJM/67T6EAgs7ruAeB2QD
 ftVWsJzP4G3KbEFi7Q/zkixG/vjbZg+VWGAgpNNWnNQt9w8zw+I/GlgVFWGJkVPJaaCj
 wjUL+MTMwhHlcO1VA+TgKpb2JIUAf16H1UJXyoeQgyPyCaqqJuJwCJR5sCyYwQDBKZpR
 Qv8FnIapACokZicNA8Ducykj3BcdEejTCvboTfOsgfpnRR+Ixo+O5k7l2c8oy+lXo0bd
 j47OWKbKrZMJlRCanEN5/LXJDYWK9IYxvWh4sizsjcL3wC1RBmuNipWw0vEFbK2vN8mt
 gLvQ==
X-Gm-Message-State: AOAM533IPBet+xwqI4n5Wcw/k6lhgPgIgMI6kB51JN4HwGdnR8Qg3Kie
 Ld4BYXOcjphBd2aMxrS/qeBGs9ImKLr1H0CyuPZdow==
X-Google-Smtp-Source: ABdhPJwQ+viuUyt4Xvfz0B/F5q8uWrpKqo6vNNs2uM0NepreAFEA0QuoyJVSJ76WQkzVbDy0sso7BcdwlZvUGeg7c1M=
X-Received: by 2002:ab0:6012:: with SMTP id j18mr260224ual.69.1591736832385;
 Tue, 09 Jun 2020 14:07:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-2-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-2-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Tue, 9 Jun 2020 14:07:01 -0700
Message-ID: <CANgfPd87=eS6h=GX6CxZRwAj=MTET-AtVAjVQn4i1zkwZ4ApXw@mail.gmail.com>
Subject: Re: [PATCH 01/21] KVM: x86/mmu: Track the associated kmem_cache in
 the MMU caches
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_140720_742012_10F5EEAD 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
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
> Track the kmem_cache used for non-page KVM MMU memory caches instead of
> passing in the associated kmem_cache when filling the cache.  This will
> allow consolidating code and other cleanups.
>
> No functional change intended.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/include/asm/kvm_host.h |  1 +
>  arch/x86/kvm/mmu/mmu.c          | 24 +++++++++++-------------
>  2 files changed, 12 insertions(+), 13 deletions(-)
>
> diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
> index 1da5858501ca..16347b050754 100644
> --- a/arch/x86/include/asm/kvm_host.h
> +++ b/arch/x86/include/asm/kvm_host.h
> @@ -251,6 +251,7 @@ struct kvm_kernel_irq_routing_entry;
>   */
>  struct kvm_mmu_memory_cache {
>         int nobjs;
> +       struct kmem_cache *kmem_cache;
>         void *objects[KVM_NR_MEM_OBJS];
>  };
>
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index fdd05c233308..0830c195c9ed 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -1060,15 +1060,14 @@ static void walk_shadow_page_lockless_end(struct kvm_vcpu *vcpu)
>         local_irq_enable();
>  }
>
> -static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache,
> -                                 struct kmem_cache *base_cache, int min)
> +static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache, int min)
>  {
>         void *obj;
>
>         if (cache->nobjs >= min)
>                 return 0;
>         while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
> -               obj = kmem_cache_zalloc(base_cache, GFP_KERNEL_ACCOUNT);
> +               obj = kmem_cache_zalloc(cache->kmem_cache, GFP_KERNEL_ACCOUNT);
>                 if (!obj)
>                         return cache->nobjs >= min ? 0 : -ENOMEM;
>                 cache->objects[cache->nobjs++] = obj;
> @@ -1081,11 +1080,10 @@ static int mmu_memory_cache_free_objects(struct kvm_mmu_memory_cache *cache)
>         return cache->nobjs;
>  }
>
> -static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc,
> -                                 struct kmem_cache *cache)
> +static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
>  {
>         while (mc->nobjs)
> -               kmem_cache_free(cache, mc->objects[--mc->nobjs]);
> +               kmem_cache_free(mc->kmem_cache, mc->objects[--mc->nobjs]);
>  }
>
>  static int mmu_topup_memory_cache_page(struct kvm_mmu_memory_cache *cache,
> @@ -1115,25 +1113,22 @@ static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
>         int r;
>
>         r = mmu_topup_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache,
> -                                  pte_list_desc_cache, 8 + PTE_PREFETCH_NUM);
> +                                  8 + PTE_PREFETCH_NUM);
>         if (r)
>                 goto out;
>         r = mmu_topup_memory_cache_page(&vcpu->arch.mmu_page_cache, 8);
>         if (r)
>                 goto out;
> -       r = mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache,
> -                                  mmu_page_header_cache, 4);
> +       r = mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache, 4);
>  out:
>         return r;
>  }
>
>  static void mmu_free_memory_caches(struct kvm_vcpu *vcpu)
>  {
> -       mmu_free_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache,
> -                               pte_list_desc_cache);
> +       mmu_free_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache);
>         mmu_free_memory_cache_page(&vcpu->arch.mmu_page_cache);
> -       mmu_free_memory_cache(&vcpu->arch.mmu_page_header_cache,
> -                               mmu_page_header_cache);
> +       mmu_free_memory_cache(&vcpu->arch.mmu_page_header_cache);
>  }
>
>  static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
> @@ -5684,6 +5679,9 @@ int kvm_mmu_create(struct kvm_vcpu *vcpu)
>         uint i;
>         int ret;
>
> +       vcpu->arch.mmu_pte_list_desc_cache.kmem_cache = pte_list_desc_cache;
> +       vcpu->arch.mmu_page_header_cache.kmem_cache = mmu_page_header_cache;
> +
>         vcpu->arch.mmu = &vcpu->arch.root_mmu;
>         vcpu->arch.walk_mmu = &vcpu->arch.root_mmu;
>
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
