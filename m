Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31D01F14DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoKy5WlMhxZhUcRNy4+qhgzp12fPqDXo5klxO3H/hNE=; b=RJQwPNHZfBd1lJ
	Tj8V6jSIWZVNmUu5yw8AqqkCMwCP7w5pmpTdcLMTq6UvhCNZ7tJJo1I2RybMmg8xyXrqowG3TPRuZ
	+x74ZhBnVrgvHH5SYgAcjsVEGPLLmasIXlNw0M9MLUjE5LkrohILHR4HAy9BprEGEzVIMwfLPqGZ4
	u7pxG+EhXwPp9Mf+Oj6ZJawfpuqXySUR7djYwQH+BM5+hWLbn/tMxTfZ1miSYe5qtfQ71RYttRJ2/
	Byx8oVTqYS7jD3RRq9NRTEwya3kjN+yeW4osA8b6HeFnh1S+9IyH0DEi8kcDq3utx7DgY63Pt8xFf
	BaJbY1iczsY0fLC6FanQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDbe-00069I-V2; Mon, 08 Jun 2020 08:58:10 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDb3-0005rC-9I
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:57:35 +0000
Received: by mail-il1-x143.google.com with SMTP id 9so15923141ilg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 01:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZhUJIihNsOJBPcBzEUBiE7/iTHmbpkI3L5KiEBlzlAw=;
 b=Y9+UtojWa2WvofBKlqksrH2UxqOeor9ywSsTiV/vDSFGtDp5oN9ImT7jixVrCmdrv7
 KqNvYCOlvk6+QKy0dRkO4iGrNI1kmjIN/u1NVSqW1i1b/KF63PcNOO/bFR5fou29C499
 imfbf9MzdZyRbHyCiRH8irRF8ehZh/IUDpq6TclCsORYbkamGlPncs3p/d40LqM/8v0O
 +fDZsW+XFyhc934YqXtULIaXiGVuUIDbErtxW3Jcylu0nj4HGVsGOYIqFaPoNNpjmbZy
 2J56AZj9w8fwtGQ2NO7AePx8m8uSEytRjzYL5oCw63lDRsB4J+xLIy9/+aw4NX/Oh//i
 Tqkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZhUJIihNsOJBPcBzEUBiE7/iTHmbpkI3L5KiEBlzlAw=;
 b=BTKMPQtHvAa9NhCgtP/Qij5XkSi1y+dPvpDMhnSjJvPybFmf3ZnrVeH8u/NDZG+yWn
 WniYTgy/grp0EZ+Z/4vMGWj6ojKqRuLPwyz22juHgu4OGASkbRlK02UhgcOOOwm+AGyG
 ddJr1LF0ZojbRbxtBvj8Mph8sJCITbuCWCropZVy2h0MQd0NSTp90Wm3y/aVTDdZLx1g
 YvPi1jr62D7cnV359G4S2I+I0lwmgMe2VOB6JiT5CqQ7C3NAWRiprSmo7cxEg7/8k0jz
 a9y6BUalav8RnoPEamw7jmF6iAky3B5aNyVZy7hNFk4r3VGVL6D+SyWfbXjruHoyCaJH
 XOuQ==
X-Gm-Message-State: AOAM532hxOry2j9O+DJCtGgwOpz4zohOpOSoCLhQa0Pls06kbSq1TbFs
 IKSUsPzOhLMo/aO5v84W8L6a8xyNEEXgq0SN4Lc=
X-Google-Smtp-Source: ABdhPJwyPmJaXLtSbRr/u7WSBpcrHXUO5Dpivercq2zRD4AQJbzLRnckACLEYWNLFcrCuA7qfpn1FslH2bosTiVE5PA=
X-Received: by 2002:a92:9f12:: with SMTP id u18mr20674915ili.287.1591606651183; 
 Mon, 08 Jun 2020 01:57:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-22-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-22-sean.j.christopherson@intel.com>
From: Huacai Chen <chenhuacai@gmail.com>
Date: Mon, 8 Jun 2020 16:57:20 +0800
Message-ID: <CAAhV-H4XrXx9ktum-E706ggukSU77hdN-iofJ-DDGtLeGt+KPA@mail.gmail.com>
Subject: Re: [PATCH 21/21] KVM: MIPS: Use common KVM implementation of MMU
 memory caches
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_015733_372220_0A9B78E3 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chenhuacai[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Wanpeng Li <wanpengli@tencent.com>, kvm <kvm@vger.kernel.org>,
 David Hildenbrand <david@redhat.com>, LKML <linux-kernel@vger.kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, Ben Gardon <bgardon@google.com>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by: Huacai Chen <chenhc@lemote.com>

On Sat, Jun 6, 2020 at 5:41 AM Sean Christopherson
<sean.j.christopherson@intel.com> wrote:
>
> Move to the common MMU memory cache implementation now that the common
> code and MIPS's existing code are semantically compatible.
>
> No functional change intended.
>
> Suggested-by: Christoffer Dall <christoffer.dall@arm.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/mips/include/asm/kvm_host.h  | 11 ---------
>  arch/mips/include/asm/kvm_types.h |  2 ++
>  arch/mips/kvm/mmu.c               | 40 ++++---------------------------
>  3 files changed, 7 insertions(+), 46 deletions(-)
>
> diff --git a/arch/mips/include/asm/kvm_host.h b/arch/mips/include/asm/kvm_host.h
> index 363e7a89d173..f49617175f60 100644
> --- a/arch/mips/include/asm/kvm_host.h
> +++ b/arch/mips/include/asm/kvm_host.h
> @@ -335,17 +335,6 @@ struct kvm_mips_tlb {
>         long tlb_lo[2];
>  };
>
> -#define KVM_NR_MEM_OBJS     4
> -
> -/*
> - * We don't want allocation failures within the mmu code, so we preallocate
> - * enough memory for a single page fault in a cache.
> - */
> -struct kvm_mmu_memory_cache {
> -       int nobjs;
> -       void *objects[KVM_NR_MEM_OBJS];
> -};
> -
>  #define KVM_MIPS_AUX_FPU       0x1
>  #define KVM_MIPS_AUX_MSA       0x2
>
> diff --git a/arch/mips/include/asm/kvm_types.h b/arch/mips/include/asm/kvm_types.h
> index 5efeb32a5926..213754d9ef6b 100644
> --- a/arch/mips/include/asm/kvm_types.h
> +++ b/arch/mips/include/asm/kvm_types.h
> @@ -2,4 +2,6 @@
>  #ifndef _ASM_MIPS_KVM_TYPES_H
>  #define _ASM_MIPS_KVM_TYPES_H
>
> +#define KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE     4
> +
>  #endif /* _ASM_MIPS_KVM_TYPES_H */
> diff --git a/arch/mips/kvm/mmu.c b/arch/mips/kvm/mmu.c
> index 41a4a063a730..d6acd88c0c46 100644
> --- a/arch/mips/kvm/mmu.c
> +++ b/arch/mips/kvm/mmu.c
> @@ -25,39 +25,9 @@
>  #define KVM_MMU_CACHE_MIN_PAGES 2
>  #endif
>
> -static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache, int min)
> -{
> -       void *page;
> -
> -       if (cache->nobjs >= min)
> -               return 0;
> -       while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
> -               page = (void *)__get_free_page(GFP_KERNEL_ACCOUNT);
> -               if (!page)
> -                       return -ENOMEM;
> -               cache->objects[cache->nobjs++] = page;
> -       }
> -       return 0;
> -}
> -
> -static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
> -{
> -       while (mc->nobjs)
> -               free_page((unsigned long)mc->objects[--mc->nobjs]);
> -}
> -
> -static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
> -{
> -       void *p;
> -
> -       BUG_ON(!mc || !mc->nobjs);
> -       p = mc->objects[--mc->nobjs];
> -       return p;
> -}
> -
>  void kvm_mmu_free_memory_caches(struct kvm_vcpu *vcpu)
>  {
> -       mmu_free_memory_cache(&vcpu->arch.mmu_page_cache);
> +       kvm_mmu_free_memory_cache(&vcpu->arch.mmu_page_cache);
>  }
>
>  /**
> @@ -151,7 +121,7 @@ static pte_t *kvm_mips_walk_pgd(pgd_t *pgd, struct kvm_mmu_memory_cache *cache,
>
>                 if (!cache)
>                         return NULL;
> -               new_pmd = mmu_memory_cache_alloc(cache);
> +               new_pmd = kvm_mmu_memory_cache_alloc(cache);
>                 pmd_init((unsigned long)new_pmd,
>                          (unsigned long)invalid_pte_table);
>                 pud_populate(NULL, pud, new_pmd);
> @@ -162,7 +132,7 @@ static pte_t *kvm_mips_walk_pgd(pgd_t *pgd, struct kvm_mmu_memory_cache *cache,
>
>                 if (!cache)
>                         return NULL;
> -               new_pte = mmu_memory_cache_alloc(cache);
> +               new_pte = kvm_mmu_memory_cache_alloc(cache);
>                 clear_page(new_pte);
>                 pmd_populate_kernel(NULL, pmd, new_pte);
>         }
> @@ -709,7 +679,7 @@ static int kvm_mips_map_page(struct kvm_vcpu *vcpu, unsigned long gpa,
>                 goto out;
>
>         /* We need a minimum of cached pages ready for page table creation */
> -       err = mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES);
> +       err = kvm_mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES);
>         if (err)
>                 goto out;
>
> @@ -793,7 +763,7 @@ static pte_t *kvm_trap_emul_pte_for_gva(struct kvm_vcpu *vcpu,
>         int ret;
>
>         /* We need a minimum of cached pages ready for page table creation */
> -       ret = mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES);
> +       ret = kvm_mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES);
>         if (ret)
>                 return NULL;
>
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
