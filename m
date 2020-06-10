Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EBA1F5B85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 20:53:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0CblQX5HztaQceV8FjLUL48TP7S708jH5fkxhpaL1M=; b=A8ld32e46m1MSF
	N0++owke2l+7bnORVgvCJyRypBlBK9Ja8f+2FPvcXG///XHHvju66zy6sC5wgY4JmSH2n3DyM/+CD
	Vj7Moe5aeMYM5yYkGw5NdAB0XcX+alTAOubxxcggA2K8UGEFrtaJfKAQg7KreTv5RrF1FguGsgpdP
	eXwYapVCI6pnb/AeLecV4J6ZpdxBRc2xbBf1g3+QJsX+asIhad65qplLRDNn6SEL2z3IdU6GwdUeN
	SLrg/GRRMWpf8rre0EqrzNmyQ018IWX6BZujZd0+cU8zaX6MNxYk2wikrTzTwZ9ume+HmaiIQ2w60
	AbtKvnhZgwCjJjX67xRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5qM-0003Mk-E2; Wed, 10 Jun 2020 18:52:58 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5qD-0003Lz-3J
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 18:52:50 +0000
Received: by mail-vk1-xa43.google.com with SMTP id f126so837942vkb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ou/05hPwTWsJc4qPHUfA/rNqmKzeeLE9v7tAAiFJL6k=;
 b=gEc2R+rVmIe8RhTsWZBHBO23RbA0tr/u76/Es88LGQ/CPuIjId85GC2NsVm8kMoKgL
 xypuOsx9V+65XCavLo3ndTbi2lygTsd1FRAfHTRZ/ft4YFsvaQVS/90q3h6tRE9n54Mf
 xP6C42BDu/Xvcj+jMurPTuDkG8obmR20jvUI42vHwTjju14b7EiA89IQ+Io3L6jolyt7
 RP98ow/xYCC63pO16c+NjSTt4hjR/4a+L2b7Y5x1LoYmsGXUQEMAl+anxxVhRMjwEbfx
 c6Wfd+JbNHcTCTk0eLPkpkHtk69QBNuyxUainnJ40usnuLbLhv3qVR/McNQMZsJakaY8
 2yBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ou/05hPwTWsJc4qPHUfA/rNqmKzeeLE9v7tAAiFJL6k=;
 b=QslyOwCapdD3azE/BENVSn52Xi25YUftfrtDU/zqCdULymkr41O2ln/EsYfSz5CDnt
 yGU8jmoXy0BUtjrBVDMhglUKQEgakVYcufZ7ymMYKk5mzPlHKzrD7z+sioZXtMLUdq0q
 igI94lRAXxza2gxzpUkLi/1wKYweOD526DjRoMxVXSrDrpx9p8gZgqgQGPUqpQ0ciNnd
 suuJP7jlVPVIM2bBkeoT2PJznN8JPODNg0Gn5x/6uuecCpn7jMxKOpn6iq9QH3K8n4uX
 wTrSJ/jTKP6WBxASEkmRJ0o9qA9SX/wECZesPpd/CF19dmK4geoEoUNHkZDMDVO57LS0
 x4UA==
X-Gm-Message-State: AOAM533pEW7T4i6143cmgFQSIE7jUtyf7rWLLkXdBIZBk+B5Hm9x5ltS
 wPk+MEZ5KRsMZqH3HdWzdh6xSuvDMwHKYCbolCPMqQ==
X-Google-Smtp-Source: ABdhPJxdhrcI3GxwX+s2Z6W5dcJTIvbNz9DMjdWBqnMt5wpbMQTIwtRhtuhfggqhbSRYlsDnW4UACO8A1irmUlXnjZ8=
X-Received: by 2002:a05:6122:106f:: with SMTP id
 k15mr3512065vko.21.1591815167751; 
 Wed, 10 Jun 2020 11:52:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-13-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-13-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 11:52:35 -0700
Message-ID: <CANgfPd9Kjb2QH+K3KwPZBFR3wv33tq7WSX=RoJjJHfkAad5TSg@mail.gmail.com>
Subject: Re: [PATCH 12/21] KVM: x86/mmu: Skip filling the gfn cache for
 guaranteed direct MMU topups
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_115249_161965_BBB9324A 
X-CRM114-Status: GOOD (  18.26  )
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
> Don't bother filling the gfn array cache when the caller is a fully
> direct MMU, i.e. won't need a gfn array for shadow pages.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/kvm/mmu/mmu.c         | 18 ++++++++++--------
>  arch/x86/kvm/mmu/paging_tmpl.h |  4 ++--
>  2 files changed, 12 insertions(+), 10 deletions(-)
>
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index a8f8eebf67df..8d66cf558f1b 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -1101,7 +1101,7 @@ static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
>         }
>  }
>
> -static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
> +static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu, bool maybe_indirect)
>  {
>         int r;
>
> @@ -1114,10 +1114,12 @@ static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
>                                    PT64_ROOT_MAX_LEVEL);
>         if (r)
>                 return r;
> -       r = mmu_topup_memory_cache(&vcpu->arch.mmu_gfn_array_cache,
> -                                  PT64_ROOT_MAX_LEVEL);
> -       if (r)
> -               return r;
> +       if (maybe_indirect) {
> +               r = mmu_topup_memory_cache(&vcpu->arch.mmu_gfn_array_cache,
> +                                          PT64_ROOT_MAX_LEVEL);
> +               if (r)
> +                       return r;
> +       }
>         return mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache,
>                                       PT64_ROOT_MAX_LEVEL);
>  }
> @@ -4107,7 +4109,7 @@ static int direct_page_fault(struct kvm_vcpu *vcpu, gpa_t gpa, u32 error_code,
>         if (fast_page_fault(vcpu, gpa, error_code))
>                 return RET_PF_RETRY;
>
> -       r = mmu_topup_memory_caches(vcpu);
> +       r = mmu_topup_memory_caches(vcpu, false);
>         if (r)
>                 return r;
>
> @@ -5147,7 +5149,7 @@ int kvm_mmu_load(struct kvm_vcpu *vcpu)
>  {
>         int r;
>
> -       r = mmu_topup_memory_caches(vcpu);
> +       r = mmu_topup_memory_caches(vcpu, !vcpu->arch.mmu->direct_map);
>         if (r)
>                 goto out;
>         r = mmu_alloc_roots(vcpu);
> @@ -5341,7 +5343,7 @@ static void kvm_mmu_pte_write(struct kvm_vcpu *vcpu, gpa_t gpa,
>          * or not since pte prefetch is skiped if it does not have
>          * enough objects in the cache.
>          */
> -       mmu_topup_memory_caches(vcpu);
> +       mmu_topup_memory_caches(vcpu, true);
>
>         spin_lock(&vcpu->kvm->mmu_lock);
>
> diff --git a/arch/x86/kvm/mmu/paging_tmpl.h b/arch/x86/kvm/mmu/paging_tmpl.h
> index 3de32122f601..ac39710d0594 100644
> --- a/arch/x86/kvm/mmu/paging_tmpl.h
> +++ b/arch/x86/kvm/mmu/paging_tmpl.h
> @@ -818,7 +818,7 @@ static int FNAME(page_fault)(struct kvm_vcpu *vcpu, gpa_t addr, u32 error_code,
>                 return RET_PF_EMULATE;
>         }
>
> -       r = mmu_topup_memory_caches(vcpu);
> +       r = mmu_topup_memory_caches(vcpu, true);
>         if (r)
>                 return r;
>
> @@ -905,7 +905,7 @@ static void FNAME(invlpg)(struct kvm_vcpu *vcpu, gva_t gva, hpa_t root_hpa)
>          * No need to check return value here, rmap_can_add() can
>          * help us to skip pte prefetch later.
>          */
> -       mmu_topup_memory_caches(vcpu);
> +       mmu_topup_memory_caches(vcpu, true);
>
>         if (!VALID_PAGE(root_hpa)) {
>                 WARN_ON(1);
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
