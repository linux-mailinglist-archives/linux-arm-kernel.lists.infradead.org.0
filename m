Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CAA1F5E15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 00:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSJ5EdXOflgDYjCuLKWWMJWKRi8Ae2wIN5EHs6xEGl0=; b=ls7tbZzfG4mu0/
	XBvROzWfFHDCfvm80rfLDNHGEzOvYat98MEVuT72Bxh/3naVG9ZwiI8zsc6BiMTUckPXJVHEYA+3S
	WIWczjBZe6rKHgH8fiY0Rc9I+umKTrK3cQ2CyJ65BTMe7/HFx1mZuIeUaVh1IYxeqFYM1VxGbbNQa
	2MRbBJtk6UB4JMUqux0ViXfPDCdFm1Ikc9tlxEdvVch6IYL8DwU38hs3jEwmEK0ffjf1Cqhxc1hOo
	pFZnMsNx9T61seIDofDYpReKXz4uB1rnLSuR1AlsqAMYZitgGk8jVdiVMTKrpYkbyVjidZft7gRrx
	9xgcClhKQI1khgGi08og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj8pE-0002rM-Ar; Wed, 10 Jun 2020 22:04:00 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj8p5-0002qF-OB
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 22:03:53 +0000
Received: by mail-vs1-xe43.google.com with SMTP id 190so2225867vsr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 15:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vDWPbvyM3cqJd2ORoD0SPltk6IcPQq+mA/Xeq0EsR5Q=;
 b=HtBemui3S+wlJlJDJ02Q481rDHDfxLfLvNajFyxAV+3MgJgw3oMaW3w+9xkzOJHdOU
 OzI3lyiSjv6lYHSB6aO+fOX8oTLV1e+4dTEvg0Bb3jYIltK/8hP7WE2rTFWFLo0BKv+g
 jChlOJLa2VmIeGOlncQkZ+6vIdpbi3ZVjs/+gIMU9m/V7BQmRgkLIDPlHOBzNvHwA7He
 z3s054JQpPVmd5YxEVf2WtDoip/eqp+jrUiBedV1cRI0/JEKwBwm9TwQyKRXySbhpoEO
 8JOOuQ6iXe4IMpPwP/km8+5+pozfjgb/vmU+yBmORAc7J+MYPgsGqfxUKYCncbmW1xJc
 d1nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vDWPbvyM3cqJd2ORoD0SPltk6IcPQq+mA/Xeq0EsR5Q=;
 b=dyOaNUbZARemqPD7ZyQ+EQVWSvs/xX6fhOBF+YuMmag3SgBalHpy/A2C613JBcrffo
 B8TnM2uOO/1+YQsZsBHOxSGCLYZfn3a9bEUItBsLo6iPLWA9cxdU9OenwwvIjPYJXtkL
 pymToSqkXzH7LPoHXj4Z5aiesjykwNOkIl50V0wTq6V1R8Xn9TXjBRdxPT79XdTHjY8w
 ih0HqXu+J3OwoIyERUxvWWdsl5ld547apLCKlYzd7TC36VNXnuu+5aTaUKyW4AvRqGev
 8rdU6v8DxNiVDfRwh1OTLcPhCx/XbBUj65nNQLs8aLvcvma8dPpxf7InNcF6Wbxj5ZQj
 3neg==
X-Gm-Message-State: AOAM533ZZM37yi5A4O+6mBBVsCV/F44K/XrfKZVGq8Mr+LLA6Hs260ID
 HQyKU2RYFMkkwz2VlDyaCONxlJZUgzPgV+YnXTOJow==
X-Google-Smtp-Source: ABdhPJzQqRq1kSgZfPTBAuvGye9mC+iq+87t5Ox/WTN7eShxqXFGWQvbS00c/EdH8V5E91+Dg9ynPn922dWRj734K9w=
X-Received: by 2002:a67:70c3:: with SMTP id l186mr4267734vsc.117.1591826626254; 
 Wed, 10 Jun 2020 15:03:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-4-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-4-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 15:03:35 -0700
Message-ID: <CANgfPd9tOLb2ipbm9-zyo0G4Onh6LqmYq1rg9o93k90DoMsx2A@mail.gmail.com>
Subject: Re: [PATCH 03/21] KVM: x86/mmu: Use consistent "mc" name for
 kvm_mmu_memory_cache locals
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_150351_803908_EA251B6B 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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
> Use "mc" for local variables to shorten line lengths and provide
> consistent names, which will be especially helpful when some of the
> helpers are moved to common KVM code in future patches.
>
> No functional change intended.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/kvm/mmu/mmu.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index cbc101663a89..36c90f004ef4 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -1060,27 +1060,27 @@ static void walk_shadow_page_lockless_end(struct kvm_vcpu *vcpu)
>         local_irq_enable();
>  }
>
> -static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache, int min)
> +static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
>  {
>         void *obj;
>
> -       if (cache->nobjs >= min)
> +       if (mc->nobjs >= min)
>                 return 0;
> -       while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
> -               if (cache->kmem_cache)
> -                       obj = kmem_cache_zalloc(cache->kmem_cache, GFP_KERNEL_ACCOUNT);
> +       while (mc->nobjs < ARRAY_SIZE(mc->objects)) {
> +               if (mc->kmem_cache)
> +                       obj = kmem_cache_zalloc(mc->kmem_cache, GFP_KERNEL_ACCOUNT);
>                 else
>                         obj = (void *)__get_free_page(GFP_KERNEL_ACCOUNT);
>                 if (!obj)
> -                       return cache->nobjs >= min ? 0 : -ENOMEM;
> -               cache->objects[cache->nobjs++] = obj;
> +                       return mc->nobjs >= min ? 0 : -ENOMEM;
> +               mc->objects[mc->nobjs++] = obj;
>         }
>         return 0;
>  }
>
> -static int mmu_memory_cache_free_objects(struct kvm_mmu_memory_cache *cache)
> +static int mmu_memory_cache_free_objects(struct kvm_mmu_memory_cache *mc)
>  {
> -       return cache->nobjs;
> +       return mc->nobjs;
>  }
>
>  static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
> @@ -1395,10 +1395,10 @@ static struct kvm_rmap_head *gfn_to_rmap(struct kvm *kvm, gfn_t gfn,
>
>  static bool rmap_can_add(struct kvm_vcpu *vcpu)
>  {
> -       struct kvm_mmu_memory_cache *cache;
> +       struct kvm_mmu_memory_cache *mc;
>
> -       cache = &vcpu->arch.mmu_pte_list_desc_cache;
> -       return mmu_memory_cache_free_objects(cache);
> +       mc = &vcpu->arch.mmu_pte_list_desc_cache;
> +       return mmu_memory_cache_free_objects(mc);
>  }
>
>  static int rmap_add(struct kvm_vcpu *vcpu, u64 *spte, gfn_t gfn)
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
