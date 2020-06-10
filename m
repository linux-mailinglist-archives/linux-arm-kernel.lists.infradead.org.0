Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161AF1F5B79
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 20:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bpc/DQsOLqKM91oEhVSespuvFV1f6rFZKQyRO9YkNiQ=; b=cvQArYAbeZvtwf
	qSx9z35TARbuu8qICe61u9uAzRW5dJqfWAezJWP/meO77k3f828jojqRYQcK2QX/URuyLKrgLi7OH
	/w99EYpkocNfD6BijDjqgSqYUOyJP0svjRPVGip4RSuheAXkBRM33p5DrQ720RXy4FmvfV6y3eFcd
	l++2jjhMqCgg/UkSjhPa8vWimfanu8KTFosL8BZMEjRq7tUGCgia/qK5eKgVD3LITqXLw9P+ivpUt
	PDnhE+rdru3MY7D1+kh/2HavS9YtJ/RZWg6VpPCDl6oqu4BRKCb/1lLFi30hbOYS4cNCFKeE+CanI
	oOjjRvp1ljXVkciTWybg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5mu-0000XZ-Rg; Wed, 10 Jun 2020 18:49:24 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5ml-0000XG-Fg
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 18:49:16 +0000
Received: by mail-ua1-x941.google.com with SMTP id a10so1217054uan.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0A0qTEHL/4KHt4CSQ8r/67Dw7HuODJhcnw3jBL6/4J0=;
 b=Uf3Tl88+r0ZyuZCQWfWB4PKDaMKAKtTmR6Y9IRa+cZCE9Bel4uJmzIXjeKMF6RESzG
 LfRsF4qIQ0RgpqHmWzJlWqVEBTAqGpfp3uDaBvyS+7FpOH2I5TCz8Aup8cO5pEGd0SCa
 dZZRdSK4u8zEu43fSdct+eOH+fiK8d8XsddBgDh0+mFmO/treg7/Zgl5ppH2zXln/3rm
 aHbacx6sUYuvLvgSVcBokZ6/H9kJZ2LLodZG55RSeTYZ6S48Q6/WxuvmnbLN+rlClHkk
 xZgdZAOd7KqDVNt1dPiM0Ajs/2q3d6Fqn5vfCVRThl9/PLnPIFWioYOR1khnyt7cBCZC
 QdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0A0qTEHL/4KHt4CSQ8r/67Dw7HuODJhcnw3jBL6/4J0=;
 b=hERenf4+4kGXDYwEUnYHXinC1dcsvpkhWRmRSc49owFoySDdYkBs761b9d5DhEQk2b
 uvstiXI59UnoTPUf5hBCWY/hUdKbz3vIZDQ9E27IzL1dFrt2jKoXoANiippSFriddcus
 /mnMGgsvF9gXX1byAEcaXkYT85KLeZKtP9GP0ZiBfUkKQcwMzUA81YW0wGmpTyTw301y
 /xDiIP9HAJAi87xX1aHPLY9JGlK3CQ611cNuRsKD2vwMO4S7d6HIyYpEKFvJLSh976XS
 D967WtbLGo+9xAV2sDAROW7cUk+GjaqNWcII5f8weqHBz86HXIqIiHdL9ojaVIikcY8U
 DAyA==
X-Gm-Message-State: AOAM530usOMmplBfLesEp1EuPbQAiyq7qs12/cwt0NlGICDuFk0TrQi8
 lNDxxyp7GkHBpQfQzjkIx+yo8YLLSvr9PrO1rP3Lxg==
X-Google-Smtp-Source: ABdhPJx7n1Jzu9stxSW0B8Z2yESjtTjAbgEsU5PcOtsP0CIqXpGR8ePPHUya13zr/XKYKIv2ps3RYwappcy09FCWcjM=
X-Received: by 2002:ab0:70c9:: with SMTP id r9mr3658814ual.15.1591814953932;
 Wed, 10 Jun 2020 11:49:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-12-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-12-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Wed, 10 Jun 2020 11:49:02 -0700
Message-ID: <CANgfPd9vBbX66RYWhW+Lpsrya8Q4SduDHzpbAhAqRyU3i-gHxA@mail.gmail.com>
Subject: Re: [PATCH 11/21] KVM: x86/mmu: Zero allocate shadow pages (outside
 of mmu_lock)
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_114915_539162_CC186EFA 
X-CRM114-Status: GOOD (  15.14  )
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
> Set __GFP_ZERO for the shadow page memory cache and drop the explicit
> clear_page() from kvm_mmu_get_page().  This moves the cost of zeroing a
> page to the allocation time of the physical page, i.e. when topping up
> the memory caches, and thus avoids having to zero out an entire page
> while holding mmu_lock.
>
> Cc: Peter Feiner <pfeiner@google.com>
> Cc: Peter Shier <pshier@google.com>
> Cc: Junaid Shahid <junaids@google.com>
> Cc: Jim Mattson <jmattson@google.com>
> Suggested-by: Ben Gardon <bgardon@google.com>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/kvm/mmu/mmu.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index 6b0ec9060786..a8f8eebf67df 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -2545,7 +2545,6 @@ static struct kvm_mmu_page *kvm_mmu_get_page(struct kvm_vcpu *vcpu,
>                 if (level > PG_LEVEL_4K && need_sync)
>                         flush |= kvm_sync_pages(vcpu, gfn, &invalid_list);
>         }
> -       clear_page(sp->spt);
>         trace_kvm_mmu_get_page(sp, true);
>
>         kvm_mmu_flush_or_zap(vcpu, &invalid_list, false, flush);
> @@ -5687,6 +5686,8 @@ int kvm_mmu_create(struct kvm_vcpu *vcpu)
>         vcpu->arch.mmu_page_header_cache.kmem_cache = mmu_page_header_cache;
>         vcpu->arch.mmu_page_header_cache.gfp_zero = __GFP_ZERO;
>
> +       vcpu->arch.mmu_shadow_page_cache.gfp_zero = __GFP_ZERO;
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
