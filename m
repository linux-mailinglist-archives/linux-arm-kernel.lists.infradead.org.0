Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC6F1F5E2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 00:12:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tIKbuQ5ywdJK/Cois9r4KqSPWFLMc/n94nXcaHVJxg=; b=MBCvZfaZrUf8k3
	CXFxGk+NLwBz7FEimmtsHlv5LGyr1d4TCGLdS8LxWxVKNGpAHDyNUhACs+27pDT5T51WuPN18rWGc
	MJ2+7MrJweAzzkSGjiJZWWIEJ6xgTljWuTMXPtrHnh3MFXzU4VCwgrQdP3Biihr13SE23UZlGNXfT
	Vv9VUMELSngBkL6ACkFS+TkeQ7w89g4u6rL1CxN5iXowvsxZtAVc/d6dLQr+7Xb4yTHzn5LZH047s
	J56tdy+aa3FZSkbxNJeomlOn3SSyXUTVyG3BuBaxRFeCqM6Hcflu9Hrr3m/ar/gxI6oINpuWiSYF6
	U5UGCcWOnBfAqyVSFYXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj8xN-0000OO-H1; Wed, 10 Jun 2020 22:12:25 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj8xE-0000O0-Nq
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 22:12:18 +0000
Received: by mail-vs1-xe42.google.com with SMTP id 190so2237579vsr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 15:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ql4vRpj/ZWF0M5dCwe9+ml5aQlV0lcOnQe3sK6ypzM=;
 b=kTsXOfwbXO1Uvm6+8Wf5L/fmhgemJhOoPbGZtDXyP56sRmOUE+HA356ytHrF/MlXkQ
 r+1fTsody5otxHns0nzVjZjMeQJj9WoPKXg0BPcii5S2Vq1Ayu70wHvn3U6G6RqrQBvC
 jSu1p0ysxMxnJa2TzDGY4sLYXQnzRJLHj0xaUVf1zUO19aG6ujSzer2qXhNyA2X+cvfN
 QNZYptdgi9zoEJS5toP3hYFMkkzdyd1H8EpsMi509eCk6JMhMyTb06cU3CaECg/JVl6m
 tAYCYRdOo7EvNdkjSrQY9nVTNc4YUOIJmFbRZZ2waZnieyy4pcGkAdQQzGPlFugLlj6g
 3d7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ql4vRpj/ZWF0M5dCwe9+ml5aQlV0lcOnQe3sK6ypzM=;
 b=QLQy0fTJCZEN/XRvGBFFArf0t43z/SveksFd3UyVj8Yr2xFe2bXE+SghFW0j7H03tQ
 pn+HvOUVVKTFtqYvFqMspXl0pcI+eqoYZAFEvB9tA+6bh2GAH8sZYIuaNwAE/r11OrYZ
 CQYZ36jQjiScuRF8NKw+u38QUg9o5xr5TTxQebEeqJzQKkM9u6oqMvYEMDCxFPbB6SLg
 kLVq6RD/LlDzdgLvKbUyBGBy+fLaaM6PbiGXnOC9X/kQl1qZnFDgWhKsrwfPFfmU3j2w
 VCTBfn2SGiqICp10yx99Q4IbST5Rdt7Z7okk5FYS64BP+9zNMdOXZOjznM4o0QrpdplR
 iQ+Q==
X-Gm-Message-State: AOAM533gp1U1A3YybXIow48r35HqIfSAMIVaOwe/4K7wHmhs5cJrTUds
 5RMz+FFMUWWq/LKwlqEj8lxzrogXu+98f6XhpH3HHA==
X-Google-Smtp-Source: ABdhPJzdmghMx590xCu3q0oAa1Tiyl8Cd4txMWbr/Hdcmg3h07QCfUudu4lcAnLl2oYkxmlR4q6o6Uh/L8LMxNpv/bE=
X-Received: by 2002:a67:f982:: with SMTP id b2mr4434307vsq.202.1591827135387; 
 Wed, 10 Jun 2020 15:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-6-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-6-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 15:12:04 -0700
Message-ID: <CANgfPd8B5R9NRL5q_4v4xvvn_3Vo9N93Ms3EiUFANMzqAMedMw@mail.gmail.com>
Subject: Re: [PATCH 05/21] KVM: x86/mmu: Try to avoid crashing KVM if a MMU
 memory cache is empty
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_151216_808174_FCEA26B3 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
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
> Attempt to allocate a new object instead of crashing KVM (and likely the
> kernel) if a memory cache is unexpectedly empty.  Use GFP_ATOMIC for the
> allocation as the caches are used while holding mmu_lock.  The immediate
> BUG_ON() makes the code unnecessarily explosive and led to confusing
> minimums being used in the past, e.g. allocating 4 objects where 1 would
> suffice.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/x86/kvm/mmu/mmu.c | 21 +++++++++++++++------
>  1 file changed, 15 insertions(+), 6 deletions(-)
>
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index ba70de24a5b0..5e773564ab20 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -1060,6 +1060,15 @@ static void walk_shadow_page_lockless_end(struct kvm_vcpu *vcpu)
>         local_irq_enable();
>  }
>
> +static inline void *mmu_memory_cache_alloc_obj(struct kvm_mmu_memory_cache *mc,
> +                                              gfp_t gfp_flags)
> +{
> +       if (mc->kmem_cache)
> +               return kmem_cache_zalloc(mc->kmem_cache, gfp_flags);
> +       else
> +               return (void *)__get_free_page(gfp_flags);
> +}
> +
>  static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
>  {
>         void *obj;
> @@ -1067,10 +1076,7 @@ static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
>         if (mc->nobjs >= min)
>                 return 0;
>         while (mc->nobjs < ARRAY_SIZE(mc->objects)) {
> -               if (mc->kmem_cache)
> -                       obj = kmem_cache_zalloc(mc->kmem_cache, GFP_KERNEL_ACCOUNT);
> -               else
> -                       obj = (void *)__get_free_page(GFP_KERNEL_ACCOUNT);
> +               obj = mmu_memory_cache_alloc_obj(mc, GFP_KERNEL_ACCOUNT);
>                 if (!obj)
>                         return mc->nobjs >= min ? 0 : -ENOMEM;
>                 mc->objects[mc->nobjs++] = obj;
> @@ -1118,8 +1124,11 @@ static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
>  {
>         void *p;
>
> -       BUG_ON(!mc->nobjs);
> -       p = mc->objects[--mc->nobjs];
> +       if (WARN_ON(!mc->nobjs))
> +               p = mmu_memory_cache_alloc_obj(mc, GFP_ATOMIC | __GFP_ACCOUNT);
Is an atomic allocation really necessary here? In most cases, when
topping up the memory cache we are handing a guest page fault. This
bug could also be removed by returning null if unable to allocate from
the cache, and then re-trying the page fault in that case. I don't
know if this is necessary to handle other, non-x86 architectures more
easily, but I worry this could cause some unpleasantness if combined
with some other bug or the host was in a low memory situation and then
this consumed the atomic pool. Perhaps this is a moot point since we
log a warning and consider the atomic allocation something of an
error.
> +       else
> +               p = mc->objects[--mc->nobjs];
> +       BUG_ON(!p);
>         return p;
>  }
>
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
