Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9B31F49F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 01:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MePP870ChzBMhlGmlJHYU5ua4ALOhauwFhHH4QKnFoc=; b=jG8g6b1uy9Fk3x
	CuikBVYotp0Wsd3/ruo2H1dcuFfLOFnBsdz6BBIHhf7QDgO6EjCVC0Qw3uAS+MCVHhcM7L+ah9hC4
	Z9vS67jwW3d/acm44Cj57m4GBXSRDDk4mCG/cQiM7RcfbM0Avt7GolzVJIDIOvqtPdAaTLjbX1aJi
	yIM6pHsAGp+qvklkI+jfhDbtmywcSbr7VW44tN7vtXe3ez9jRdorwfUBNM9MTWcmPj88PTIb9DEnh
	JoNiNYsmbT9NnDX5DCg9iYndYYVC9G7xCtdWnTfjkPnVtAday6P7Ohk1TS9YfuANWgF2MixS4tb6B
	e586Gh3QJJP4Ik0qxx+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jinHm-0001Qv-9j; Tue, 09 Jun 2020 23:04:02 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jinHe-0001Qb-Jb
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 23:03:55 +0000
Received: by mail-vk1-xa42.google.com with SMTP id d22so104969vkf.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 16:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QPEA53MpdF9ON3exFjCberFh9r4WY/+iX04WGFZFtXU=;
 b=rwanDsZdo86Rv+vzZDRG+0C9QrHIbGQgfj2nwO+GiGBNVyLSExN93DGrkptklgs9I1
 AC0cy3+rivR0wtaNSSV9u8U2CqWzAr9cwayr0OtE6O+jC2+BtUr9VjUb8UFNbXJkVAi1
 WfJhopss4dvT37wHibefpDeELAXyANGodPwrJTtsn9yIlJTNlMVMXjXyhR/cP5akWDCP
 mjbboyehlJjrEud3b556BAnXu9H3ea7lZqMAdBWMg65r0d3SNuuwYPZvv8rUlGOJMmVx
 1rAQzDRF0wybOVz5i+mnG2dV7tbBHX6NxTZfN6sP+E0p5F7rIRZGBiMOtY3RefHOaxGa
 MGfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QPEA53MpdF9ON3exFjCberFh9r4WY/+iX04WGFZFtXU=;
 b=NtTDw1zH59JAU9OLCEnbBFaZrtx1t7w7pCVwH/8lnJSA+CdDRkjIt2mmy4eQO8+gho
 FYPciYNAWzxQnmoMNxL16GYKTHtGx42qq1IsNHWQRljgHWA7brg52a80dov0NzouT4X5
 kBcttCJbcsdA8UF+00250tnpGBx+wQ9ROrRRy4UyE27g8m1Jx3xVqLF3sLMOCqNb5y6R
 X31oQx+QMay7marXUVLdpE+KoyX5YKvM36aUtZnIJfLaFseBu3z6ItbywwuPUW737oww
 N+9qY6XY5mVeu9ok0KnCUKwMBRQB3TvzbxHTXBbWGWvVDdKfOrzu+Z20iixspjAqckph
 gdMQ==
X-Gm-Message-State: AOAM532jJgyrM2ziSxs2/+OIpS4ZrihFUsFqOKGcoK4atwMS60jvsPPE
 YZmb+DsNPDNzuUpdIw/PjuZVK/mGe4iUlf+IfkSOfA==
X-Google-Smtp-Source: ABdhPJwvz0K9ugkUS0zUu2sV6SC9xdH2ngcwyFlRhaY+EjhyMbUztSqGBkZnAcJGtcUe/roomwm1IuKpnHfl3gWMyfI=
X-Received: by 2002:a1f:974d:: with SMTP id z74mr401275vkd.40.1591743831579;
 Tue, 09 Jun 2020 16:03:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-7-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-7-sean.j.christopherson@intel.com>
From: Ben Gardon <bgardon@google.com>
Date: Tue, 9 Jun 2020 16:03:40 -0700
Message-ID: <CANgfPd9Y9P+-got9HmtrvChmwZBe-XOA0zSSLMsPCUKcuBv4aQ@mail.gmail.com>
Subject: Re: [PATCH 06/21] KVM: x86/mmu: Move fast_page_fault() call above
 mmu_topup_memory_caches()
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_160354_699829_D6A3D96F 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
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
> Avoid refilling the memory caches and potentially slow reclaim/swap when
> handling a fast page fault, which does not need to allocate any new
> objects.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
Reviewed-by: Ben Gardon <bgardon@google.com>
> ---
>  arch/x86/kvm/mmu/mmu.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index 5e773564ab20..4b4c3234d623 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -4095,6 +4095,9 @@ static int direct_page_fault(struct kvm_vcpu *vcpu, gpa_t gpa, u32 error_code,
>         if (page_fault_handle_page_track(vcpu, error_code, gfn))
>                 return RET_PF_EMULATE;
>
> +       if (fast_page_fault(vcpu, gpa, error_code))
> +               return RET_PF_RETRY;
> +
>         r = mmu_topup_memory_caches(vcpu);
>         if (r)
>                 return r;
> @@ -4102,9 +4105,6 @@ static int direct_page_fault(struct kvm_vcpu *vcpu, gpa_t gpa, u32 error_code,
>         if (lpage_disallowed)
>                 max_level = PG_LEVEL_4K;
>
> -       if (fast_page_fault(vcpu, gpa, error_code))
> -               return RET_PF_RETRY;
> -
>         mmu_seq = vcpu->kvm->mmu_notifier_seq;
>         smp_rmb();
>
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
