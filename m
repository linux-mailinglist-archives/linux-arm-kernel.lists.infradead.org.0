Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1901111F72F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 11:28:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:From:Date:Reply-To:To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yxFCLPMKWEt2/f0nc/EvX8xCq6CXU9xLAuCe+Y5iMDs=; b=LjwB9Yrm1ndZhk
	TIZ1G7aScVEdEI8MdLwqQH905aFcxKeNDufR3PZoiBEitxVWqO1pa+3yH+5jnrMZPKSiOPppajoju
	D1xFDOHGvBPHdYzgNPJFdsmms4RyS5M4ltoA1Det4+3A/p8JepFR+eXQ8iqyi7of7aIcQCPeLjvwR
	o6EUyXdOxeVOqw3iER3XNSGGcHga5y0/l3ckjT8t7jkcGLctOK+eGA0Qz/Idh/14AFEI6L8IQT79v
	IngkGpWB85XPQhoHB0teGkXEnjzWXK0kVL+POUmFZymabd1MImqkdBiQj5oOiFng5K0WjK0p+D8uQ
	SrB+AooE8FoyLVlFEUVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igR8N-00041n-1i; Sun, 15 Dec 2019 10:28:19 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igR8F-00041E-9H
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 10:28:13 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1igR7x-0007eF-3A; Sun, 15 Dec 2019 11:27:53 +0100
Date: Sun, 15 Dec 2019 10:27:51 +0000
From: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH 1/7] KVM: Pass mmu_notifier_range down to
 kvm_unmap_hva_range()
Message-ID: <20191215102751.197b7d81@why>
In-Reply-To: <20191213182503.14460-2-maz@kernel.org>
References: <20191213182503.14460-1-maz@kernel.org>
 <20191213182503.14460-2-maz@kernel.org>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kvm-ppc@vger.kernel.org, wanpengli@tencent.com,
 kvm@vger.kernel.org, jhogan@kernel.org, joro@8bytes.org,
 linux-mips@vger.kernel.org, sean.j.christopherson@intel.com, paulus@ozlabs.org,
 linux-arm-kernel@lists.infradead.org, pbonzini@redhat.com, vkuznets@redhat.com,
 kvmarm@lists.cs.columbia.edu, jmattson@google.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_022811_469176_1FF02C17 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.2 MISSING_HEADERS        Missing To: header
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 linux-mips@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 18:24:57 +0000
Marc Zyngier <maz@kernel.org> wrote:

> kvm_unmap_hva_range() is currently passed both start and end
> fields from the mmu_notifier_range structure. As this struct
> now contains important information about the reason of the
> unmap (the event field), replace the start/end parameters
> with the range struct, and update all architectures.
> 
> No functionnal change.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  arch/arm/include/asm/kvm_host.h     | 2 +-
>  arch/arm64/include/asm/kvm_host.h   | 2 +-
>  arch/mips/include/asm/kvm_host.h    | 2 +-
>  arch/mips/kvm/mmu.c                 | 6 ++++--
>  arch/powerpc/include/asm/kvm_host.h | 2 +-
>  arch/powerpc/kvm/book3s.c           | 5 +++--
>  arch/powerpc/kvm/e500_mmu_host.c    | 4 ++--
>  arch/x86/include/asm/kvm_host.h     | 3 ++-
>  arch/x86/kvm/mmu/mmu.c              | 5 +++--
>  arch/x86/kvm/x86.c                  | 4 ++--
>  include/linux/kvm_host.h            | 2 +-
>  virt/kvm/arm/mmu.c                  | 8 ++++----
>  virt/kvm/kvm_main.c                 | 7 +++----
>  13 files changed, 28 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
> index 556cd818eccf..621c71594499 100644
> --- a/arch/arm/include/asm/kvm_host.h
> +++ b/arch/arm/include/asm/kvm_host.h
> @@ -276,7 +276,7 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
>  
>  #define KVM_ARCH_WANT_MMU_NOTIFIER
>  int kvm_unmap_hva_range(struct kvm *kvm,
> -			unsigned long start, unsigned long end);
> +			const struct mmu_notifier_range *range);
>  int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
>  
>  unsigned long kvm_arm_num_regs(struct kvm_vcpu *vcpu);
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index c61260cf63c5..dd850f5e81e3 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -441,7 +441,7 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
>  
>  #define KVM_ARCH_WANT_MMU_NOTIFIER
>  int kvm_unmap_hva_range(struct kvm *kvm,
> -			unsigned long start, unsigned long end);
> +			const struct mmu_notifier_range *range);
>  int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
>  int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end);
>  int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
> diff --git a/arch/mips/include/asm/kvm_host.h b/arch/mips/include/asm/kvm_host.h
> index 41204a49cf95..0ed065870f1b 100644
> --- a/arch/mips/include/asm/kvm_host.h
> +++ b/arch/mips/include/asm/kvm_host.h
> @@ -935,7 +935,7 @@ enum kvm_mips_fault_result kvm_trap_emul_gva_fault(struct kvm_vcpu *vcpu,
>  
>  #define KVM_ARCH_WANT_MMU_NOTIFIER
>  int kvm_unmap_hva_range(struct kvm *kvm,
> -			unsigned long start, unsigned long end);
> +			const struct mmu_notifier_range *range);
>  int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
>  int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end);
>  int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
> diff --git a/arch/mips/kvm/mmu.c b/arch/mips/kvm/mmu.c
> index 7dad7a293eae..32ef868258b9 100644
> --- a/arch/mips/kvm/mmu.c
> +++ b/arch/mips/kvm/mmu.c
> @@ -518,9 +518,11 @@ static int kvm_unmap_hva_handler(struct kvm *kvm, gfn_t gfn, gfn_t gfn_end,
>  	return 1;
>  }
>  
> -int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end)
> +int kvm_unmap_hva_range(struct kvm *kvm,
> +			const struct mmu_notifier_range *range)
>  {
> -	handle_hva_to_gpa(kvm, start, end, &kvm_unmap_hva_handler, NULL);
> +	handle_hva_to_gpa(kvm, range->start, range->end,
> +			  &kvm_unmap_hva_handler, NULL);
>  
>  	kvm_mips_callbacks->flush_shadow_all(kvm);
>  	return 0;
> diff --git a/arch/powerpc/include/asm/kvm_host.h b/arch/powerpc/include/asm/kvm_host.h
> index 0a398f2321c2..8cef585e0abe 100644
> --- a/arch/powerpc/include/asm/kvm_host.h
> +++ b/arch/powerpc/include/asm/kvm_host.h
> @@ -58,7 +58,7 @@
>  #define KVM_ARCH_WANT_MMU_NOTIFIER
>  
>  extern int kvm_unmap_hva_range(struct kvm *kvm,
> -			       unsigned long start, unsigned long end);
> +			       const struct mmu_notifier_range *range);
>  extern int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end);
>  extern int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
>  extern int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
> diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
> index 58a59ee998e2..a1529a0dd656 100644
> --- a/arch/powerpc/kvm/book3s.c
> +++ b/arch/powerpc/kvm/book3s.c
> @@ -842,9 +842,10 @@ void kvmppc_core_commit_memory_region(struct kvm *kvm,
>  	kvm->arch.kvm_ops->commit_memory_region(kvm, mem, old, new, change);
>  }
>  
> -int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end)
> +int kvm_unmap_hva_range(struct kvm *kvm,
> +			const struct mmu_notifier_range *range)
>  {
> -	return kvm->arch.kvm_ops->unmap_hva_range(kvm, start, end);
> +	return kvm->arch.kvm_ops->unmap_hva_range(kvm, range->start, range->end);
>  }
>  
>  int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end)
> diff --git a/arch/powerpc/kvm/e500_mmu_host.c b/arch/powerpc/kvm/e500_mmu_host.c
> index 425d13806645..5a7211901063 100644
> --- a/arch/powerpc/kvm/e500_mmu_host.c
> +++ b/arch/powerpc/kvm/e500_mmu_host.c
> @@ -734,10 +734,10 @@ static int kvm_unmap_hva(struct kvm *kvm, unsigned long hva)
>  	return 0;
>  }
>  
> -int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end)
> +int kvm_unmap_hva_range(struct kvm *kvm, const struct mmu_notifier_range *range)
>  {
>  	/* kvm_unmap_hva flushes everything anyways */
> -	kvm_unmap_hva(kvm, start);
> +	kvm_unmap_hva(kvm, range->start);
>  
>  	return 0;
>  }
> diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
> index b79cd6aa4075..c479fa845d72 100644
> --- a/arch/x86/include/asm/kvm_host.h
> +++ b/arch/x86/include/asm/kvm_host.h
> @@ -1569,7 +1569,8 @@ asmlinkage void kvm_spurious_fault(void);
>  	_ASM_EXTABLE(666b, 667b)
>  
>  #define KVM_ARCH_WANT_MMU_NOTIFIER
> -int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end);
> +int kvm_unmap_hva_range(struct kvm *kvm,
> +			const struct mmu_notifier_range *range);
>  int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end);
>  int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
>  int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
> diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
> index 6f92b40d798c..86831be07c17 100644
> --- a/arch/x86/kvm/mmu/mmu.c
> +++ b/arch/x86/kvm/mmu/mmu.c
> @@ -2040,9 +2040,10 @@ static int kvm_handle_hva(struct kvm *kvm, unsigned long hva,
>  	return kvm_handle_hva_range(kvm, hva, hva + 1, data, handler);
>  }
>  
> -int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end)
> +int kvm_unmap_hva_range(struct kvm *kvm,
> +			const struct mmu_notifier_range *range);
>  {
> -	return kvm_handle_hva_range(kvm, start, end, 0, kvm_unmap_rmapp);
> +	return kvm_handle_hva_range(kvm, range->start, range->end, 0, kvm_unmap_rmapp);
>  }

As kindly pointed out by the kbuild robot, this doesn't even compile...
I've fixed it locally, incorporating Suzuki's feedback at the same time.

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
