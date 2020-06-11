Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B3D1F631D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:59:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qo9snNpqec5Hhfki0CPrcIktryethqtvJr0CnQ4mUuI=; b=Jmq4OYgbHH6qHa22RRNkd5+PK
	qdQM+1lRvZ+cKuPMBP/JWs6jW1BDHJJe9C4f4l0o1jrhXfVqNYASH1VMLJD5jeC1tkdFTjnCEf4ri
	0GZwX78+ql1iapSD95Hiq2IU3TKQ6dpCIa90SfcQEW51bzaizOr83YWk8xNWOHIMwPx/TLSz3Qi4b
	hu5nJnB7Mj0PrfXeG1ujIDuo0p8gm8uCFQ5VFh0KWro7vLXZQxxX/crirF0tDGH5nypffJzpmhCB4
	fOPMFdDQI4kd36wLXOqHSpEruIP+kp9Bb97uDJY/RnL/BcJOE22Pz6jTQyeFajkwYsR2mluP5VYjB
	ADV908qUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjI7J-0007OD-B8; Thu, 11 Jun 2020 07:59:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjI79-0007Nr-69
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 07:59:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A277B204EA;
 Thu, 11 Jun 2020 07:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591862346;
 bh=OosHKHNgy/JfsuiXlWm6kqNlEzxuPgPk1Y8ZZaJeWD0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xdnE9ijSYCm2ieKcA6MjTtuO04MHTQe1Et0EXVKYQCTKFPlQEVb9Yfj8kMl8AR13w
 Qa+QrSTirgnpvN11t74TOELy0TkE+PQGhIX4EOiSYHH4YRZ7TbRRaDjLYoA1zHsodf
 +Qk2xXT4keuJXovgH5hLfKz2s8TnNRSdO4NRUwV4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jjI77-0021Wl-9L; Thu, 11 Jun 2020 08:59:05 +0100
MIME-Version: 1.0
Date: Thu, 11 Jun 2020 08:59:05 +0100
From: Marc Zyngier <maz@kernel.org>
To: Sean Christopherson <sean.j.christopherson@intel.com>
Subject: Re: [PATCH 17/21] KVM: arm64: Use common code's approach for
 __GFP_ZERO with memory caches
In-Reply-To: <20200605213853.14959-18-sean.j.christopherson@intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-18-sean.j.christopherson@intel.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <6cc08074c289cbea7b9c1deeaf18c63f@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: sean.j.christopherson@intel.com, paulus@ozlabs.org,
 borntraeger@de.ibm.com, frankja@linux.ibm.com, pbonzini@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 david@redhat.com, cohuck@redhat.com, imbrenda@linux.ibm.com,
 vkuznets@redhat.com, wanpengli@tencent.com, jmattson@google.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-mips@vger.kernel.org, kvm@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org, pfeiner@google.com,
 pshier@google.com, junaids@google.com, bgardon@google.com,
 christoffer.dall@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_005907_271227_03993EFE 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Paul Mackerras <paulus@ozlabs.org>, Ben Gardon <bgardon@google.com>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sean,

On 2020-06-05 22:38, Sean Christopherson wrote:
> Add a "gfp_zero" member to arm64's 'struct kvm_mmu_memory_cache' to 
> make
> the struct and its usage compatible with the common 'struct
> kvm_mmu_memory_cache' in linux/kvm_host.h.  This will minimize code
> churn when arm64 moves to the common implementation in a future patch, 
> at
> the cost of temporarily having somewhat silly code.
> 
> No functional change intended.
> 
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/arm64/include/asm/kvm_host.h | 1 +
>  arch/arm64/kvm/arm.c              | 2 ++
>  arch/arm64/kvm/mmu.c              | 5 +++--
>  3 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_host.h
> b/arch/arm64/include/asm/kvm_host.h
> index abbdf9703e20..2385dede96e0 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -105,6 +105,7 @@ struct kvm_arch {
>   */
>  struct kvm_mmu_memory_cache {
>  	int nobjs;
> +	gfp_t gfp_zero;
>  	void *objects[KVM_NR_MEM_OBJS];
>  };
> 
> diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
> index 45276ed50dd6..4c98c6b4d850 100644
> --- a/arch/arm64/kvm/arm.c
> +++ b/arch/arm64/kvm/arm.c
> @@ -270,6 +270,8 @@ int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
>  	vcpu->arch.target = -1;
>  	bitmap_zero(vcpu->arch.features, KVM_VCPU_MAX_FEATURES);
> 
> +	vcpu->arch.mmu_page_cache.gfp_zero = __GFP_ZERO;
> +
>  	/* Set up the timer */
>  	kvm_timer_vcpu_init(vcpu);
> 
> diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
> index 9398b66f8a87..688213ef34f0 100644
> --- a/arch/arm64/kvm/mmu.c
> +++ b/arch/arm64/kvm/mmu.c
> @@ -131,7 +131,8 @@ static int mmu_topup_memory_cache(struct
> kvm_mmu_memory_cache *cache, int min)
>  	if (cache->nobjs >= min)
>  		return 0;
>  	while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
> -		page = (void *)__get_free_page(GFP_PGTABLE_USER);
> +		page = (void *)__get_free_page(GFP_KERNEL_ACCOUNT |

This is definitely a change in the way we account for guest
page tables allocation, although I find it bizarre that not
all architectures account for it the same way.

It seems logical to me that nested page tables would be accounted
against userspace, but I'm willing to be educated on the matter.

Another possibility is that depending on the context, some allocations
should be accounted on either the kernel or userspace (NV on arm64
could definitely do something like that). If that was the case,
maybe moving most of the GFP_* flags into the per-cache flags,
and have the renaming that Ben suggested earlier.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
