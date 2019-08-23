Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 259879AED6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P4nowV1u0Cz1psrGmoFGk16Jk9vvnwvzo5RABHV8KJ4=; b=dSrmtyZj5+pCh+vrUCZIqgPsP
	gZWD0Z0c3c8hn+uVqhWxP6dFiIQzzUuxuknryclg4UMakjLethpkWPT9aY95wUmklpVfOXncgarpN
	wUEr/q88y+P2yPhoKSbUUgKkGUh8bFbP8iYISVv4mbJ9FrSckhhPcbU0rOpvyFhGbOSG/CM1xcOq9
	e6yv9MM5GNeci7H5tmwSK0dB1jZU1DjAIJslV1Bvc6lJ57esOEgcFdH9YMHYR8LV99HGd4cysbmFq
	pbqAssgmLjs0kcJK+6dGoQoKMSdJY4fe4BB1EjPMmzBh1+qzQL6pPmWIBpOarMnUJ4p1kL+8o6T9D
	rLK5/Qb2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18Ph-0002lg-Cd; Fri, 23 Aug 2019 12:11:29 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18PX-0002kI-Gx
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:11:22 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id BE2BFF005BB6C6F12B79;
 Fri, 23 Aug 2019 20:11:13 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Fri, 23 Aug 2019
 20:11:03 +0800
Subject: Re: [PATCH v3 05/10] KVM: arm64: Support stolen time reporting via
 shared structure
To: Steven Price <steven.price@arm.com>, Marc Zyngier <maz@kernel.org>, "Will
 Deacon" <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>
References: <20190821153656.33429-1-steven.price@arm.com>
 <20190821153656.33429-6-steven.price@arm.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <d3c493f0-31e8-2334-0ac3-f27bfe9fa976@huawei.com>
Date: Fri, 23 Aug 2019 20:07:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20190821153656.33429-6-steven.price@arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_051120_323003_FA64E8ED 
X-CRM114-Status: GOOD (  24.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steven,

Only one comment, at the bottom.

On 2019/8/21 23:36, Steven Price wrote:
> Implement the service call for configuring a shared structure between a
> VCPU and the hypervisor in which the hypervisor can write the time
> stolen from the VCPU's execution time by other tasks on the host.
> 
> The hypervisor allocates memory which is placed at an IPA chosen by user
> space. The hypervisor then updates the shared structure using
> kvm_put_guest() to ensure single copy atomicity of the 64-bit value
> reporting the stolen time in nanoseconds.
> 
> Whenever stolen time is enabled by the guest, the stolen time counter is
> reset.
> 
> The stolen time itself is retrieved from the sched_info structure
> maintained by the Linux scheduler code. We enable SCHEDSTATS when
> selecting KVM Kconfig to ensure this value is meaningful.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>   arch/arm/include/asm/kvm_host.h   | 20 +++++++++
>   arch/arm64/include/asm/kvm_host.h | 25 +++++++++++-
>   arch/arm64/kvm/Kconfig            |  1 +
>   include/linux/kvm_types.h         |  2 +
>   virt/kvm/arm/arm.c                | 10 +++++
>   virt/kvm/arm/hypercalls.c         |  3 ++
>   virt/kvm/arm/pvtime.c             | 67 +++++++++++++++++++++++++++++++
>   7 files changed, 127 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
> index 369b5d2d54bf..47d2ced99421 100644
> --- a/arch/arm/include/asm/kvm_host.h
> +++ b/arch/arm/include/asm/kvm_host.h
> @@ -39,6 +39,7 @@
>   	KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
>   #define KVM_REQ_IRQ_PENDING	KVM_ARCH_REQ(1)
>   #define KVM_REQ_VCPU_RESET	KVM_ARCH_REQ(2)
> +#define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
>   
>   DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
>   
> @@ -329,6 +330,25 @@ static inline int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu)
>   	return SMCCC_RET_NOT_SUPPORTED;
>   }
>   
> +static inline int kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu)
> +{
> +	return SMCCC_RET_NOT_SUPPORTED;
> +}
> +
> +static inline int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init)
> +{
> +	return -ENOTSUPP;
> +}
> +
> +static inline void kvm_pvtime_init_vm(struct kvm_arch *kvm_arch)
> +{
> +}
> +
> +static inline bool kvm_is_pvtime_enabled(struct kvm_arch *kvm_arch)
> +{
> +	return false;
> +}
> +
>   void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
>   
>   struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 583b3639062a..b6fa7beffd8a 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -44,6 +44,7 @@
>   	KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
>   #define KVM_REQ_IRQ_PENDING	KVM_ARCH_REQ(1)
>   #define KVM_REQ_VCPU_RESET	KVM_ARCH_REQ(2)
> +#define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
>   
>   DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
>   
> @@ -83,6 +84,11 @@ struct kvm_arch {
>   
>   	/* Mandated version of PSCI */
>   	u32 psci_version;
> +
> +	struct kvm_arch_pvtime {
> +		gpa_t st_base;
> +		u64 st_size;
> +	} pvtime;
>   };
>   
>   #define KVM_NR_MEM_OBJS     40
> @@ -338,8 +344,13 @@ struct kvm_vcpu_arch {
>   	/* True when deferrable sysregs are loaded on the physical CPU,
>   	 * see kvm_vcpu_load_sysregs and kvm_vcpu_put_sysregs. */
>   	bool sysregs_loaded_on_cpu;
> -};
>   
> +	/* Guest PV state */
> +	struct {
> +		u64 steal;
> +		u64 last_steal;
> +	} steal;
> +};
>   /* Pointer to the vcpu's SVE FFR for sve_{save,load}_state() */
>   #define vcpu_sve_pffr(vcpu) ((void *)((char *)((vcpu)->arch.sve_state) + \
>   				      sve_ffr_offset((vcpu)->arch.sve_max_vl)))
> @@ -479,6 +490,18 @@ int kvm_perf_init(void);
>   int kvm_perf_teardown(void);
>   
>   int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu);
> +int kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu);
> +int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init);
> +
> +static inline void kvm_pvtime_init_vm(struct kvm_arch *kvm_arch)
> +{
> +	kvm_arch->pvtime.st_base = GPA_INVALID;
> +}
> +
> +static inline bool kvm_is_pvtime_enabled(struct kvm_arch *kvm_arch)
> +{
> +	return (kvm_arch->pvtime.st_base != GPA_INVALID);
> +}
>   
>   void kvm_set_sei_esr(struct kvm_vcpu *vcpu, u64 syndrome);
>   
> diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
> index a67121d419a2..d8b88e40d223 100644
> --- a/arch/arm64/kvm/Kconfig
> +++ b/arch/arm64/kvm/Kconfig
> @@ -39,6 +39,7 @@ config KVM
>   	select IRQ_BYPASS_MANAGER
>   	select HAVE_KVM_IRQ_BYPASS
>   	select HAVE_KVM_VCPU_RUN_PID_CHANGE
> +	select SCHEDSTATS
>   	---help---
>   	  Support hosting virtualized guest machines.
>   	  We don't support KVM with 16K page tables yet, due to the multiple
> diff --git a/include/linux/kvm_types.h b/include/linux/kvm_types.h
> index bde5374ae021..1c88e69db3d9 100644
> --- a/include/linux/kvm_types.h
> +++ b/include/linux/kvm_types.h
> @@ -35,6 +35,8 @@ typedef unsigned long  gva_t;
>   typedef u64            gpa_t;
>   typedef u64            gfn_t;
>   
> +#define GPA_INVALID	(~(gpa_t)0)
> +
>   typedef unsigned long  hva_t;
>   typedef u64            hpa_t;
>   typedef u64            hfn_t;
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 35a069815baf..5e8343e2dd62 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -40,6 +40,10 @@
>   #include <asm/kvm_coproc.h>
>   #include <asm/sections.h>
>   
> +#include <kvm/arm_hypercalls.h>
> +#include <kvm/arm_pmu.h>
> +#include <kvm/arm_psci.h>
> +
>   #ifdef REQUIRES_VIRT
>   __asm__(".arch_extension	virt");
>   #endif
> @@ -135,6 +139,7 @@ int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
>   	kvm->arch.max_vcpus = vgic_present ?
>   				kvm_vgic_get_max_vcpus() : KVM_MAX_VCPUS;
>   
> +	kvm_pvtime_init_vm(&kvm->arch);
>   	return ret;
>   out_free_stage2_pgd:
>   	kvm_free_stage2_pgd(kvm);
> @@ -379,6 +384,8 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
>   	kvm_vcpu_load_sysregs(vcpu);
>   	kvm_arch_vcpu_load_fp(vcpu);
>   	kvm_vcpu_pmu_restore_guest(vcpu);
> +	if (kvm_is_pvtime_enabled(&vcpu->kvm->arch))
> +		kvm_make_request(KVM_REQ_RECORD_STEAL, vcpu);
>   
>   	if (single_task_running())
>   		vcpu_clear_wfe_traps(vcpu);
> @@ -644,6 +651,9 @@ static void check_vcpu_requests(struct kvm_vcpu *vcpu)
>   		 * that a VCPU sees new virtual interrupts.
>   		 */
>   		kvm_check_request(KVM_REQ_IRQ_PENDING, vcpu);
> +
> +		if (kvm_check_request(KVM_REQ_RECORD_STEAL, vcpu))
> +			kvm_update_stolen_time(vcpu, false);
>   	}
>   }
>   
> diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
> index 63ae629c466a..ac678eabf15f 100644
> --- a/virt/kvm/arm/hypercalls.c
> +++ b/virt/kvm/arm/hypercalls.c
> @@ -56,6 +56,9 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>   	case ARM_SMCCC_HV_PV_FEATURES:
>   		val = kvm_hypercall_pv_features(vcpu);
>   		break;
> +	case ARM_SMCCC_HV_PV_TIME_ST:
> +		val = kvm_hypercall_stolen_time(vcpu);
> +		break;
>   	default:
>   		return kvm_psci_call(vcpu);
>   	}
> diff --git a/virt/kvm/arm/pvtime.c b/virt/kvm/arm/pvtime.c
> index 6201d71cb1f8..28603689f6e0 100644
> --- a/virt/kvm/arm/pvtime.c
> +++ b/virt/kvm/arm/pvtime.c
> @@ -3,8 +3,51 @@
>   
>   #include <linux/arm-smccc.h>
>   
> +#include <asm/pvclock-abi.h>
> +
>   #include <kvm/arm_hypercalls.h>
>   
> +int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init)
> +{
> +	struct kvm *kvm = vcpu->kvm;
> +	struct kvm_arch_pvtime *pvtime = &kvm->arch.pvtime;
> +	u64 steal;
> +	u64 steal_le;
> +	u64 offset;
> +	int idx;
> +	const int stride = sizeof(struct pvclock_vcpu_stolen_time);
> +
> +	if (pvtime->st_base == GPA_INVALID)
> +		return -ENOTSUPP;
> +
> +	/* Let's do the local bookkeeping */
> +	steal = vcpu->arch.steal.steal;
> +	steal += current->sched_info.run_delay - vcpu->arch.steal.last_steal;
> +	vcpu->arch.steal.last_steal = current->sched_info.run_delay;
> +	vcpu->arch.steal.steal = steal;
> +
> +	offset = stride * kvm_vcpu_get_idx(vcpu);
> +
> +	if (unlikely(offset + stride > pvtime->st_size))
> +		return -EINVAL;
> +
> +	steal_le = cpu_to_le64(steal);
> +	idx = srcu_read_lock(&kvm->srcu);
> +	if (init) {
> +		struct pvclock_vcpu_stolen_time init_values = {
> +			.revision = 0,
> +			.attributes = 0
> +		};
> +		kvm_write_guest(kvm, pvtime->st_base + offset, &init_values,
> +				sizeof(init_values));
> +	}
> +	offset += offsetof(struct pvclock_vcpu_stolen_time, stolen_time);
> +	kvm_put_guest(kvm, pvtime->st_base + offset, steal_le, u64);
> +	srcu_read_unlock(&kvm->srcu, idx);
> +
> +	return 0;
> +}
> +
>   int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu)
>   {
>   	u32 feature = smccc_get_arg1(vcpu);
> @@ -12,6 +55,7 @@ int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu)
>   
>   	switch (feature) {
>   	case ARM_SMCCC_HV_PV_FEATURES:
> +	case ARM_SMCCC_HV_PV_TIME_ST:
>   		val = SMCCC_RET_SUCCESS;
>   		break;
>   	}
> @@ -19,3 +63,26 @@ int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu)
>   	return val;
>   }
>   
> +int kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu)
> +{
> +	u64 ret;
> +	int err;
> +
> +	/*
> +	 * Start counting stolen time from the time the guest requests
> +	 * the feature enabled.
> +	 */
> +	vcpu->arch.steal.steal = 0;
> +	vcpu->arch.steal.last_steal = current->sched_info.run_delay;
> +
> +	err = kvm_update_stolen_time(vcpu, true);
> +
> +	if (err)
> +		ret = SMCCC_RET_NOT_SUPPORTED;
> +	else
> +		ret = vcpu->kvm->arch.pvtime.st_base +
> +			(sizeof(struct pvclock_vcpu_stolen_time) *
> +			 kvm_vcpu_get_idx(vcpu));
> +
> +	return ret;

The *type* of the 'ret' here looks a bit messy to me:
(1)u64 -> (2)int -> (3)u32 -> (4)unsigned long

(1)->(2): just inside kvm_hypercall_stolen_time()
(2)->(3): inside kvm_hvc_call_handler(), assign 'ret' to 'val'
(3)->(4): through smccc_set_retval()

I really have seen an issue caused by (2)->(3).

When the PV guest running without PV_TIME device supporting, the result
of the ARM_SMCCC_HV_PV_TIME_ST hypercall is expected to be -1 (which
means "not supported"), but the actual result I got is 4294967295.
Guest continues to run blindly, bad things would happen then...

I think this needs a fix?


Thanks,
zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
