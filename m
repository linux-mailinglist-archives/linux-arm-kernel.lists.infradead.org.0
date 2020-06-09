Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F7C1F49A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 00:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnz6k3k8MXbCZFUzUNh82in+T4ECl+2725iEYt53vjU=; b=WdA6OM0U8U30ZL
	wfvLIy0ycAvtHcrDILXhahc7qBPsV/km5h2XFhGSvfxO/EyC1WsfBe1Mn92MXkMtzrlOFivV3a6Mu
	CxREsTdsyrjzklAjlrD55oWgw2CK7lpss5QKa6GexLLwFRm4KrgE5/jwtnihsDyfsZSNhdT6Voa5X
	GII7nlSwzVHxr3xHauHYGzzGR1pQAgRTBCHFd1msdZtgbUjalPBVnJQr1vsokybKTJ/SUhhHoNwAj
	syU5ZYYDFYu00MNdM2LaZRCH8ftNApzoIWWMToN3ENLTtEskzjyaMAjeq1fu4aMSOxlwlPNg9mswC
	YWc/cRl80oMU7sxNTr1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jin8U-0003p0-M2; Tue, 09 Jun 2020 22:54:26 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jin8K-0003oT-HR
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 22:54:17 +0000
Received: by mail-vs1-xe44.google.com with SMTP id q2so136563vsr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 15:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uselWGWC3qoQQOxqWlrwlyYH4mqd92kQlOeG7RAljPU=;
 b=FyAfw76hywaz53lg/VPnGi9e8IgE5jPMksWxgn5Xkbqe/yhjElKv8fMDCl4QFtXQIt
 pSyJYqrnMJYgTyWBELqlUZa5CVrDBu1huuKU9dWbO6W+XR2+iweBUHxOBj0i2RvfGdFs
 8NiNQVMybZaYdmRyiKjkdD25LAg7GOjVAE2ahVKfo1TFfOTPVhQxv3vrhhJB1ZZYju2x
 Sdae+oKvdyfhBYlT1ObztTGi8b7ZlawE8tQkILK8OymFeQLH+QUknrl0lziOECLhGpgE
 9Z2h7cuvDa588K6R2CH8Tk7KwRtyK4jUdgDpy+UOvR8NULevc8eRomSXClkk9nY8gFC8
 7ASA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uselWGWC3qoQQOxqWlrwlyYH4mqd92kQlOeG7RAljPU=;
 b=GDSnTizef1p2jFH708SXiYuQF1qPsrfWGfi+oTAFEFK+FXF4XbrHeCjkErtb9Jw8/3
 b4+klkiCYPyrRuhRvQdLlzBgrKahQHhJEGh9nwz7q5op+G6YCjC4VXxOHw2XD9XgNLi/
 wl6s0G7UqGOuLCz8zTrSRAR2RYik3xzy7cWc9AbT4lJLKsGRVPABLWrj8TYmawSqJRwG
 jvSUhZgdeKc41wL2qMNJci7QioyCDyKMTxCAWP8TzflL5bNf+KVI4M0KpMYLbEkAbS/J
 RhYRAJL9t/SrxaWv6FzmHxe+lPB0RGt84vxeEqIi/tx368etXJ1r/9x1rm1NUPJOQhu+
 u96Q==
X-Gm-Message-State: AOAM5338gCoAxZ/U298pV3Xp5Gu+ZleSR4zAQ1W2AIDAw+8VHuCkxfn8
 RiUoKtkQhIIYyK+Ralf2Vgj9Cza4dQ2MymAgqxr7HA==
X-Google-Smtp-Source: ABdhPJx3dLS9VTThWqaFRDlqN1S9f5h0OrZVTBbY5/ftQgTD5GsCLfsUQ7mDqtAcQKwPK2rVrq3OTLOUBty+qRmGSEY=
X-Received: by 2002:a67:af10:: with SMTP id v16mr448564vsl.235.1591743255002; 
 Tue, 09 Jun 2020 15:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-3-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-3-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Tue, 9 Jun 2020 15:54:04 -0700
Message-ID: <CANgfPd-hDAUe188X4HNt7bQ=5_RxtOmpnEet3C3CwpJPxi4y4Q@mail.gmail.com>
Subject: Re: [PATCH 02/21] KVM: x86/mmu: Consolidate "page" variant of memory
 cache helpers
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_155416_596836_638541F4 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
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
> Drop the "page" variants of the topup/free memory cache helpers, using
> the existence of an associated kmem_cache to select the correct alloc
> or free routine.
>
> No functional change intended.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/kvm/mmu/mmu.c | 37 +++++++++++--------------------------
>  1 file changed, 11 insertions(+), 26 deletions(-)
>
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index 0830c195c9ed..cbc101663a89 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -1067,7 +1067,10 @@ static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache, int min)
>         if (cache->nobjs >= min)
>                 return 0;
>         while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
> -               obj = kmem_cache_zalloc(cache->kmem_cache, GFP_KERNEL_ACCOUNT);
> +               if (cache->kmem_cache)
> +                       obj = kmem_cache_zalloc(cache->kmem_cache, GFP_KERNEL_ACCOUNT);
> +               else
> +                       obj = (void *)__get_free_page(GFP_KERNEL_ACCOUNT);
>                 if (!obj)
>                         return cache->nobjs >= min ? 0 : -ENOMEM;
>                 cache->objects[cache->nobjs++] = obj;
> @@ -1082,30 +1085,12 @@ static int mmu_memory_cache_free_objects(struct kvm_mmu_memory_cache *cache)
>
>  static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
>  {
> -       while (mc->nobjs)
> -               kmem_cache_free(mc->kmem_cache, mc->objects[--mc->nobjs]);
> -}
> -
> -static int mmu_topup_memory_cache_page(struct kvm_mmu_memory_cache *cache,
> -                                      int min)
> -{
> -       void *page;
> -
> -       if (cache->nobjs >= min)
> -               return 0;
> -       while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
> -               page = (void *)__get_free_page(GFP_KERNEL_ACCOUNT);
> -               if (!page)
> -                       return cache->nobjs >= min ? 0 : -ENOMEM;
> -               cache->objects[cache->nobjs++] = page;
> +       while (mc->nobjs) {
> +               if (mc->kmem_cache)
> +                       kmem_cache_free(mc->kmem_cache, mc->objects[--mc->nobjs]);
> +               else
> +                       free_page((unsigned long)mc->objects[--mc->nobjs]);
>         }
> -       return 0;
> -}
> -
> -static void mmu_free_memory_cache_page(struct kvm_mmu_memory_cache *mc)
> -{
> -       while (mc->nobjs)
> -               free_page((unsigned long)mc->objects[--mc->nobjs]);
>  }
>
>  static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
> @@ -1116,7 +1101,7 @@ static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
>                                    8 + PTE_PREFETCH_NUM);
>         if (r)
>                 goto out;
> -       r = mmu_topup_memory_cache_page(&vcpu->arch.mmu_page_cache, 8);
> +       r = mmu_topup_memory_cache(&vcpu->arch.mmu_page_cache, 8);
>         if (r)
>                 goto out;
>         r = mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache, 4);
> @@ -1127,7 +1112,7 @@ static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
>  static void mmu_free_memory_caches(struct kvm_vcpu *vcpu)
>  {
>         mmu_free_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache);
> -       mmu_free_memory_cache_page(&vcpu->arch.mmu_page_cache);
> +       mmu_free_memory_cache(&vcpu->arch.mmu_page_cache);
>         mmu_free_memory_cache(&vcpu->arch.mmu_page_header_cache);
>  }
>
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
