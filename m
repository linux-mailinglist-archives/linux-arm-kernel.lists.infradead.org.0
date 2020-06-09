Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFCF1F4A3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 01:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSL04yc82JIPMHBwE+uc9N5IjS1cVt+eE6/0su/cR8w=; b=lUa3qy/6S6mm5R
	EoeriGdbA1J7LgRF4zMogblF6/gZDtYaOuC2eh+xg67fyyshjUgctqdGGJylHZBSThUCNBJbx/GQN
	0JGo4Jdpq71QmgV6oVFe1SGlbYVDAZE/PmutwB4ujJCPq1IXT1rQ7mIjF9KVOfiuEU00/tPQnDIoK
	Fp4g0z4pv2saGZTEZT30V9Sbem5VhiHrhDyGgi9jcNKCV7DUu5ZSdLsTOfO7OvezVjCfY1OvULhQS
	6y/tTVoSaZ2UbG/+BEiZ9nX8nGnWK0NkIDGOBbkKH6ctqQi6RmKs+f46Lbs6naWj1/O/rV+Gu9O3z
	iYd2muXPBGqZzA4wi39w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jio6u-0000Wq-Hq; Tue, 09 Jun 2020 23:56:52 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jio6U-0000Q3-Ka
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 23:56:28 +0000
Received: by mail-ua1-x941.google.com with SMTP id v6so226420uam.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 16:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4sxWZx3UI6VKLDq8Qy1UYUg5vtAHPMsTevThfv39TWA=;
 b=WLpRcLXqwdVOvuMgwWkmR8Gr4lwaHRK/EF6daq2IMeFXYgWSJrphnkQvLEH+41LO0x
 pBkEeJfVAEq/uryeN4HHM4Hb3NfdIqrrZcULOeMuMtGfZEKTK0JPggE4ybLNYEuiV0pp
 hiSCdaRlAd+ayR3yLwkLqaPFRVUUau1KjcEyNNFF5lmfQTLhnmvgVGyA1JJV3qaW45Fh
 jEN3gjAjfZpQCTtGPfowcu+cTV09P9OWMskURcxzz2UEuwU2bgMY7NSPvwSFJYRc6/bv
 5cAINv0x9snM9p3flSgBPUFTJrC9TtnEnQ07K+dBbcgAeuIsCrM4zFy5fBTuIldM5yBs
 xNEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4sxWZx3UI6VKLDq8Qy1UYUg5vtAHPMsTevThfv39TWA=;
 b=TilHG4ZLFJ2EnYmKyIW+jDDprbKRNhfLJwcVwVehNAxqf+rgf3CZeRYCySqfRuHlBe
 8F0R0VQMt1kt4gikQWKEe8jRtLh3YjIF93Ggztn4CL9uKaVv+fa7QHVYSXOU6eWU6sD3
 VxwiEK24hZ3gNRKbbt4OXTiqDJp/bxwI3vSeZa8/oxYGg3joeyh9AMOlV82a+I/p/UxW
 ErSHU+YPMYpfz82mgZGo6uGaXhYZSDJLf7VHX18Sps0ISVJGFspW9lESqEhUu1g4tWqV
 iWe3D/IAeLvskTMPSjkMV4j0VH2ynDXD3m0OxyK+wYi828JfX+601XUR0tZJbLCrayOE
 T0Og==
X-Gm-Message-State: AOAM532QPEF5jTu63DOQGIj7D7Ri4ueYdTwkmFxAQABoyK14bEn90+f5
 jUB3qmppDJglgUQd4aZlj+nLxt2W+xNU2C7MTgeAYA==
X-Google-Smtp-Source: ABdhPJyXAGLXljdkHhgQRDD2Vm3KO3b89VigddFLuju4QbS8KbKbayXYphsX76+lBqoc+5yPzGQnUDz7icYaQgNy+rs=
X-Received: by 2002:ab0:6012:: with SMTP id j18mr679163ual.69.1591746985111;
 Tue, 09 Jun 2020 16:56:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-10-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-10-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Tue, 9 Jun 2020 16:56:13 -0700
Message-ID: <CANgfPd_ftZ_fC0EEt=1nOoyc6Yi6Xo3TB4woY=tkHzXbjHk4aA@mail.gmail.com>
Subject: Re: [PATCH 09/21] KVM: x86/mmu: Separate the memory caches for shadow
 pages and gfn arrays
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_165626_672809_0CB14A33 
X-CRM114-Status: GOOD (  15.97  )
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
> Use separate caches for allocating shadow pages versus gfn arrays.  This
> sets the stage for specifying __GFP_ZERO when allocating shadow pages
> without incurring extra cost for gfn arrays.
>
> No functional change intended.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/include/asm/kvm_host.h |  3 ++-
>  arch/x86/kvm/mmu/mmu.c          | 15 ++++++++++-----
>  2 files changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
> index 16347b050754..e7a427547557 100644
> --- a/arch/x86/include/asm/kvm_host.h
> +++ b/arch/x86/include/asm/kvm_host.h
> @@ -636,7 +636,8 @@ struct kvm_vcpu_arch {
>         struct kvm_mmu *walk_mmu;
>
>         struct kvm_mmu_memory_cache mmu_pte_list_desc_cache;
> -       struct kvm_mmu_memory_cache mmu_page_cache;
> +       struct kvm_mmu_memory_cache mmu_shadow_page_cache;
> +       struct kvm_mmu_memory_cache mmu_gfn_array_cache;
>         struct kvm_mmu_memory_cache mmu_page_header_cache;
>
>         /*
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index 451e0365e5dd..d245acece3cd 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -1108,8 +1108,12 @@ static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
>                                    1 + PT64_ROOT_MAX_LEVEL + PTE_PREFETCH_NUM);
>         if (r)
>                 return r;
> -       r = mmu_topup_memory_cache(&vcpu->arch.mmu_page_cache,
> -                                  2 * PT64_ROOT_MAX_LEVEL);
> +       r = mmu_topup_memory_cache(&vcpu->arch.mmu_shadow_page_cache,
> +                                  PT64_ROOT_MAX_LEVEL);
> +       if (r)
> +               return r;
> +       r = mmu_topup_memory_cache(&vcpu->arch.mmu_gfn_array_cache,
> +                                  PT64_ROOT_MAX_LEVEL);
>         if (r)
>                 return r;
>         return mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache,
> @@ -1119,7 +1123,8 @@ static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
>  static void mmu_free_memory_caches(struct kvm_vcpu *vcpu)
>  {
>         mmu_free_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache);
> -       mmu_free_memory_cache(&vcpu->arch.mmu_page_cache);
> +       mmu_free_memory_cache(&vcpu->arch.mmu_shadow_page_cache);
> +       mmu_free_memory_cache(&vcpu->arch.mmu_gfn_array_cache);
>         mmu_free_memory_cache(&vcpu->arch.mmu_page_header_cache);
>  }
>
> @@ -2096,9 +2101,9 @@ static struct kvm_mmu_page *kvm_mmu_alloc_page(struct kvm_vcpu *vcpu, int direct
>         struct kvm_mmu_page *sp;
>
>         sp = mmu_memory_cache_alloc(&vcpu->arch.mmu_page_header_cache);
> -       sp->spt = mmu_memory_cache_alloc(&vcpu->arch.mmu_page_cache);
> +       sp->spt = mmu_memory_cache_alloc(&vcpu->arch.mmu_shadow_page_cache);
>         if (!direct)
> -               sp->gfns = mmu_memory_cache_alloc(&vcpu->arch.mmu_page_cache);
> +               sp->gfns = mmu_memory_cache_alloc(&vcpu->arch.mmu_gfn_array_cache);
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
