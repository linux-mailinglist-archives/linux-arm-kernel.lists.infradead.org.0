Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A651F5B9D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 20:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YG63qY/050zU8rCQWrEc5nt8eW0Qf6qsDN/Tnq0Dy8w=; b=S22lUSAzrVaQmq
	iMiivWbfReIxKjugB8j0j+MqHillkZHnYfDSaSNhfufCahoTEnKDm5Xbj8wfRiKMVn9u3t74gGZtc
	VBOCPw2BTam4ya8htVdINBqSjqPYqmGz0sDJqPLY2JLhY/ehz4wWAmH+d1QPNcLIwn3yo3BbqXRZN
	C4Ki4NnJjyc0bhfCkSlVaqEdC54y/uJ1FjPD91YNB7H7/UB/bcg6e5LFU2Qu4yCs2d5gdIsjvHslX
	tgsgKdojEtnQZUeEMCXOQpCyYeFUPfZTfat9tqIwb4sw+zEA+yZzI5Me0kTvbPZkXFqHmIFd4SvcH
	a3h5Ay4wBLvZrSNsngOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5v8-0008Bg-LF; Wed, 10 Jun 2020 18:57:54 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5uz-0008B6-1o
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 18:57:46 +0000
Received: by mail-ua1-x943.google.com with SMTP id v6so1225247uam.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vVAD935vzmk+zCqhrKriBW6qDeJ9UbWhrYXMFyoDNbk=;
 b=Sk96oRFzgKSljVnt+6mnQTGDFRR0sIInBe9XAnfxFeWo07PzQGUesvjTrqS2UETGbw
 33JxIrEdcR+6sHmE/xgF9BdVMMrsqGaNijoxzDMr0BORvnpqMlkboWl1jjWyay1ys7QO
 8bpz6ZhJVssu9zvLNYu2RNYv8V5b1aDXEFpmiTlxEmWvOQJ5IbaCgyZIBROKMbu9R0Ts
 Q+V8y6LeyXVnKp3TlABf8aS4jdt3me7MPjKJum7oyVYTDbJvsXQXN3qWMLzNS+UjFXec
 Q9ZEwZtxWUmmCPNxf8lT36jJYD1cIcpvnyeN9ijj5+wpG8wuuX1kDrzho+WryA2ZSCwZ
 pqsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vVAD935vzmk+zCqhrKriBW6qDeJ9UbWhrYXMFyoDNbk=;
 b=Hd/cnDnpIAZ2Kd8rlAha+/t3sthUSsIAx9kzuqGi2j50AiFQmosov1Ey/nhdx15GnB
 9ZX+TTXc71kmBwfHOfOtVfjRfqi26GAOsnUoJlr88sgbjq08S4nM+yhsWZ5LG3o4McWr
 DyoEi+bI6eyxUNoom3ABjgm7A046lunsjQrKATJiOj4zKSd5PkLd71qkJaZ2+tNFaeYK
 oijtxBO3T7XOEmlwfFf/3TUKyWqwPYYnbElH7VAA67621ZT9w2PoN2c2DewgCeVrevi0
 /J/FmgfzXy+TacwJSW7pmDXDhbiKAsywswaRXD9bWY+AFGkVZmbaHDgXnLKSuRpskhvH
 WX8Q==
X-Gm-Message-State: AOAM5319eRLNUEBXSC6A972mX4+TrMVIlVS5YyIxmUtvn/VqFN2rCRFx
 hFKA9K1kRvR6ZtjiOJ7VksYggAG7/Pla77rcom36wQ==
X-Google-Smtp-Source: ABdhPJwqVgX0Mxv8PTZWgFn/z7rA1Vsp5KXwbMJOCDIJ24b73HyTMCwRupwGMFcz8Y6tomohXhbM0jt7mBqkr2VcMvI=
X-Received: by 2002:ab0:70c9:: with SMTP id r9mr3681310ual.15.1591815463735;
 Wed, 10 Jun 2020 11:57:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-11-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-11-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 11:57:32 -0700
Message-ID: <CANgfPd9_BR_2NThfEs8faDxWeooZ6OeF2HAB5mUmted5sHwDPg@mail.gmail.com>
Subject: Re: [PATCH 10/21] KVM: x86/mmu: Make __GFP_ZERO a property of the
 memory cache
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_115745_111087_2AA8A961 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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
> Add a gfp_zero flag to 'struct kvm_mmu_memory_cache' and use it to
> control __GFP_ZERO instead of hardcoding a call to kmem_cache_zalloc().
> A future patch needs such a flag for the __get_free_page() path, as
> gfn arrays do not need/want the allocator to zero the memory.  Convert
> the kmem_cache paths to __GFP_ZERO now so as to avoid a weird and
> inconsistent API in the future.
>
> No functional change intended.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/include/asm/kvm_host.h | 1 +
>  arch/x86/kvm/mmu/mmu.c          | 7 ++++++-
>  2 files changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
> index e7a427547557..fb99e6776e27 100644
> --- a/arch/x86/include/asm/kvm_host.h
> +++ b/arch/x86/include/asm/kvm_host.h
> @@ -251,6 +251,7 @@ struct kvm_kernel_irq_routing_entry;
>   */
>  struct kvm_mmu_memory_cache {
>         int nobjs;
> +       gfp_t gfp_zero;
This would make more sense to me if it could be used for general extra
gfp flags and was called gfp_flags or something, or it was a boolean
that was later translated into the flag being set. Storing the
gfp_zero flag here is a little counter-intuitive. Probably not worth
changing unless you're sending out a v2 for some other reason.

>         struct kmem_cache *kmem_cache;
>         void *objects[KVM_NR_MEM_OBJS];
>  };
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index d245acece3cd..6b0ec9060786 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -1063,8 +1063,10 @@ static void walk_shadow_page_lockless_end(struct kvm_vcpu *vcpu)
>  static inline void *mmu_memory_cache_alloc_obj(struct kvm_mmu_memory_cache *mc,
>                                                gfp_t gfp_flags)
>  {
> +       gfp_flags |= mc->gfp_zero;
> +
>         if (mc->kmem_cache)
> -               return kmem_cache_zalloc(mc->kmem_cache, gfp_flags);
> +               return kmem_cache_alloc(mc->kmem_cache, gfp_flags);
>         else
>                 return (void *)__get_free_page(gfp_flags);
>  }
> @@ -5680,7 +5682,10 @@ int kvm_mmu_create(struct kvm_vcpu *vcpu)
>         int ret;
>
>         vcpu->arch.mmu_pte_list_desc_cache.kmem_cache = pte_list_desc_cache;
> +       vcpu->arch.mmu_pte_list_desc_cache.gfp_zero = __GFP_ZERO;
> +
>         vcpu->arch.mmu_page_header_cache.kmem_cache = mmu_page_header_cache;
> +       vcpu->arch.mmu_page_header_cache.gfp_zero = __GFP_ZERO;
>
>         vcpu->arch.mmu = &vcpu->arch.root_mmu;
>         vcpu->arch.walk_mmu = &vcpu->arch.root_mmu;
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
