Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8F55EA91
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 19:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAOQyed0ssqbOAEKwGPR9K0mpBWlX1lJhh5ckxVfxhk=; b=rxLY3CtL589rDi
	3rkkUW4rd1MEP0GeyRpzEbZlH6uKqnOvIalXikTASCEYnUknD8sogPCbObYu+ykT5AVOdTeEnJazy
	M0yGX8XhRT46npmt9Bp56Nb+dVapcmM80TLh3Hb/t8JyRIBqUPiOOBl3Vu/NJ+NCUuJ4wSEEtzRPg
	QCNLecR/k4UIRTFwtmAfFm+8VJB3gFRQX0RN++QL4VyHsOLYaCRljlFIFFgyWKqwYd9dcdhmZQFwj
	0cTEEEDftHkx+L5Fh1q8aZ4BM2rKpZSCowiMA9dMKz8bkcyB3RlEm3//V2DvOMqwd4EBXEKmBBr4I
	ssuaXS/z0+AKqCmpoH7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijBA-0005ih-MN; Wed, 03 Jul 2019 17:36:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hijAy-0005hq-DR
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 17:36:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E3A06344;
 Wed,  3 Jul 2019 10:36:11 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B89013F718;
 Wed,  3 Jul 2019 10:36:10 -0700 (PDT)
Subject: Re: [RFC v2 14/14] kvm/arm: Align the VMID allocation with the arm64
 ASID one
To: Julien Grall <julien.grall@arm.com>
References: <20190620130608.17230-1-julien.grall@arm.com>
 <20190620130608.17230-15-julien.grall@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <39d47f54-459f-ce07-91c0-0158896a6783@arm.com>
Date: Wed, 3 Jul 2019 18:36:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190620130608.17230-15-julien.grall@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_103612_544367_B54C2947 
X-CRM114-Status: GOOD (  29.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

On 20/06/2019 14:06, Julien Grall wrote:
> At the moment, the VMID algorithm will send an SGI to all the CPUs to
> force an exit and then broadcast a full TLB flush and I-Cache
> invalidation.
> 
> This patch re-use the new ASID allocator. The
> benefits are:
>     - CPUs are not forced to exit at roll-over. Instead the VMID will be
>     marked reserved and the context will be flushed at next exit. This
>     will reduce the IPIs traffic.
>     - Context invalidation is now per-CPU rather than broadcasted.

+ Catalin has a model of the asid-allocator.


> With the new algo, the code is now adapted:
>     - The function __kvm_flush_vm_context() has been renamed to
>     __kvm_flush_cpu_vmid_context and now only flushing the current CPU context.
>     - The call to update_vttbr() will be done with preemption disabled
>     as the new algo requires to store information per-CPU.
>     - The TLBs associated to EL1 will be flushed when booting a CPU to
>     deal with stale information. This was previously done on the
>     allocation of the first VMID of a new generation.
> 
> The measurement was made on a Seattle based SoC (8 CPUs), with the
> number of VMID limited to 4-bit. The test involves running concurrently 40
> guests with 2 vCPUs. Each guest will then execute hackbench 5 times
> before exiting.

> diff --git a/arch/arm64/include/asm/kvm_asid.h b/arch/arm64/include/asm/kvm_asid.h
> new file mode 100644
> index 000000000000..8b586e43c094
> --- /dev/null
> +++ b/arch/arm64/include/asm/kvm_asid.h
> @@ -0,0 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ARM64_KVM_ASID_H__
> +#define __ARM64_KVM_ASID_H__
> +
> +#include <asm/asid.h>
> +
> +#endif /* __ARM64_KVM_ASID_H__ */
> +
> diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
> index ff73f5462aca..06821f548c0f 100644
> --- a/arch/arm64/include/asm/kvm_asm.h
> +++ b/arch/arm64/include/asm/kvm_asm.h
> @@ -62,7 +62,7 @@ extern char __kvm_hyp_init_end[];
>  
>  extern char __kvm_hyp_vector[];
>  
> -extern void __kvm_flush_vm_context(void);
> +extern void __kvm_flush_cpu_vmid_context(void);
>  extern void __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa);

As we've got a __kvm_tlb_flush_local_vmid(), would __kvm_tlb_flush_local_all() fit in
better? (This mirrors local_flush_tlb_all() too)


>  extern void __kvm_tlb_flush_vmid(struct kvm *kvm);
>  extern void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu);
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 4bcd9c1291d5..7ef45b7da4eb 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -68,8 +68,8 @@ int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext);
>  void __extended_idmap_trampoline(phys_addr_t boot_pgd, phys_addr_t idmap_start);
>  
>  struct kvm_vmid {
> -	/* The VMID generation used for the virt. memory system */
> -	u64    vmid_gen;
> +	/* The ASID used for the ASID allocator */
> +	atomic64_t asid;

Can we call this 'id' as happens in mm_context_t? (calling it asid is confusing)

>  	u32    vmid;

Can we filter out the generation bits in kvm_get_vttbr() in the same way the arch code
does in cpu_do_switch_mm().

I think this saves writing back a cached pre-filtered version every time, or needing
special hooks to know when the value changed. (so we can remove this variable)


>  };


> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index bd5c55916d0d..e906278a67cd 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -449,35 +447,17 @@ bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)

(git made a mess of the diff here... squashed to just the new code:)


> +static void vmid_update_ctxt(void *ctxt)
>  {
> +	struct kvm_vmid *vmid = ctxt;
> +	u64 asid = atomic64_read(&vmid->asid);

> +	vmid->vmid = asid & ((1ULL << kvm_get_vmid_bits()) - 1);

I don't like having to poke this through the asid-allocator as a kvm-specific hack. Can we
do it in kvm_get_vttbr()?


>  }

> @@ -487,48 +467,11 @@ static bool need_new_vmid_gen(struct kvm_vmid *vmid)

(git made a mess of the diff here... squashed to just the new code:)

>  static void update_vmid(struct kvm_vmid *vmid)
>  {

> +	int cpu = get_cpu();
>  
> +	asid_check_context(&vmid_info, &vmid->asid, cpu, vmid);
>  
> +	put_cpu();

If we're calling update_vmid() in a pre-emptible context, aren't we already doomed?

Could we use smp_processor_id() instead.


>  }


> @@ -1322,6 +1271,8 @@ static void cpu_init_hyp_mode(void *dummy)
>  
>  	__cpu_init_hyp_mode(pgd_ptr, hyp_stack_ptr, vector_ptr);
>  	__cpu_init_stage2();


> +	kvm_call_hyp(__kvm_flush_cpu_vmid_context);

I think we only need to do this for VHE systems too. cpu_hyp_reinit() only does the call
to cpu_init_hyp_mode() if !is_kernel_in_hyp_mode().


>  }
>  
>  static void cpu_hyp_reset(void)
> @@ -1429,6 +1380,17 @@ static inline void hyp_cpu_pm_exit(void)
>  
>  static int init_common_resources(void)
>  {
> +	/*
> +	 * Initialize the ASID allocator telling it to allocate a single
> +	 * VMID per VM.
> +	 */
> +	if (asid_allocator_init(&vmid_info, kvm_get_vmid_bits(), 1,
> +				vmid_flush_cpu_ctxt, vmid_update_ctxt))
> +		panic("Failed to initialize VMID allocator\n");

Couldn't we return an error instead? The asid allocator is needed for user-space, its
pointless to keep running if it fails. The same isn't true here. (and it would make it
easier to debug what went wrong!)


> +	vmid_info.active = &active_vmids;
> +	vmid_info.reserved = &reserved_vmids;
> +
>  	kvm_set_ipa_limit();


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
