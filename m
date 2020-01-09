Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BDF135C1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 16:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=med3CPeeUGPZVUYCwW21gHuWe8yWZKqhvoIN6DNBJcc=; b=YIqPgJeLLa4nbC7bRYar687pD
	24sfQ2LHLMgyrbY028UN1S5MLakzyO+M7nCrRWuuTbVaa6aVwfhSGecqxAc4RS1hO1l19B862zf83
	ywvaSQlfE+fPXg7OW+LgvjdamAeddpRw1Nn1B3OowNYP7MGuR4e96oynXxJWWvETFTQS428lVc/fr
	A/2q59I1+rkt23CpunF4kVu7Aznlwe4RobbFvPJJBzSn80yBKcWGW8nPPjYqBktu2Eoqj2WH0Zta8
	rd5Pd5GXiUs2MUwLgP1PNDdOHtF4pyMQuZm7Mo8emlgkRuX0LnUc0TEzXJw9BbBq+weU75G2Dk8Em
	9lsV3mSwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZKI-0000rr-Es; Thu, 09 Jan 2020 15:02:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZK8-0000qb-UA
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 15:02:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3507C1FB;
 Thu,  9 Jan 2020 07:02:10 -0800 (PST)
Received: from [10.1.27.38] (e122027.cambridge.arm.com [10.1.27.38])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 35F5A3F534;
 Thu,  9 Jan 2020 07:02:08 -0800 (PST)
Subject: Re: [PATCH v2 3/6] KVM: arm64: Support pvlock preempted via shared
 structure
To: Zengruan Ye <yezengruan@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 virtualization@lists.linux-foundation.org
References: <20191226135833.1052-1-yezengruan@huawei.com>
 <20191226135833.1052-4-yezengruan@huawei.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <468e2bb4-8986-5e1e-8c4a-31aa56a9ae4f@arm.com>
Date: Thu, 9 Jan 2020 15:02:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191226135833.1052-4-yezengruan@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_070213_064799_3B5CC7D4 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, james.morse@arm.com,
 maz@kernel.org, will@kernel.org, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/12/2019 13:58, Zengruan Ye wrote:
> Implement the service call for configuring a shared structure between a
> VCPU and the hypervisor in which the hypervisor can tell the VCPU is
> running or not.
> 
> The preempted field is zero if 1) some old KVM deos not support this filed.

NIT: s/deos/does/

However, I would hope that the service call will fail if it's an old KVM not simply return zero.

> 2) the VCPU is not preempted. Other values means the VCPU has been preempted.
> 
> Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
> ---
>   arch/arm/include/asm/kvm_host.h   | 18 ++++++++++++
>   arch/arm64/include/asm/kvm_host.h | 19 +++++++++++++
>   arch/arm64/kvm/Makefile           |  1 +
>   virt/kvm/arm/arm.c                |  8 ++++++
>   virt/kvm/arm/hypercalls.c         |  8 ++++++
>   virt/kvm/arm/pvlock.c             | 46 +++++++++++++++++++++++++++++++
>   6 files changed, 100 insertions(+)
>   create mode 100644 virt/kvm/arm/pvlock.c
> 
> diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
> index 556cd818eccf..dfeaf9204875 100644
> --- a/arch/arm/include/asm/kvm_host.h
> +++ b/arch/arm/include/asm/kvm_host.h
> @@ -356,6 +356,24 @@ static inline bool kvm_arm_is_pvtime_enabled(struct kvm_vcpu_arch *vcpu_arch)
>   	return false;
>   }
>   
> +static inline void kvm_arm_pvlock_preempted_init(struct kvm_vcpu_arch *vcpu_arch)
> +{
> +}
> +
> +static inline bool kvm_arm_is_pvlock_preempted_ready(struct kvm_vcpu_arch *vcpu_arch)
> +{
> +	return false;
> +}
> +
> +static inline gpa_t kvm_init_pvlock(struct kvm_vcpu *vcpu)
> +{
> +	return GPA_INVALID;
> +}
> +
> +static inline void kvm_update_pvlock_preempted(struct kvm_vcpu *vcpu, u64 preempted)
> +{
> +}
> +
>   void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
>   
>   struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index c61260cf63c5..2818a2330f92 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -354,6 +354,12 @@ struct kvm_vcpu_arch {
>   		u64 last_steal;
>   		gpa_t base;
>   	} steal;
> +
> +	/* Guest PV lock state */
> +	struct {
> +		u64 preempted;

I'm not sure why the kernel needs to (separately) track this preempted state? It doesn't appear to be used from what I can tell.

Steve

> +		gpa_t base;
> +	} pv;
>   };
>   
>   /* Pointer to the vcpu's SVE FFR for sve_{save,load}_state() */
> @@ -515,6 +521,19 @@ static inline bool kvm_arm_is_pvtime_enabled(struct kvm_vcpu_arch *vcpu_arch)
>   	return (vcpu_arch->steal.base != GPA_INVALID);
>   }
>   
> +static inline void kvm_arm_pvlock_preempted_init(struct kvm_vcpu_arch *vcpu_arch)
> +{
> +	vcpu_arch->pv.base = GPA_INVALID;
> +}
> +
> +static inline bool kvm_arm_is_pvlock_preempted_ready(struct kvm_vcpu_arch *vcpu_arch)
> +{
> +	return (vcpu_arch->pv.base != GPA_INVALID);
> +}
> +
> +gpa_t kvm_init_pvlock(struct kvm_vcpu *vcpu);
> +void kvm_update_pvlock_preempted(struct kvm_vcpu *vcpu, u64 preempted);
> +
>   void kvm_set_sei_esr(struct kvm_vcpu *vcpu, u64 syndrome);
>   
>   struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
> diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
> index 5ffbdc39e780..e4591f56d5f1 100644
> --- a/arch/arm64/kvm/Makefile
> +++ b/arch/arm64/kvm/Makefile
> @@ -15,6 +15,7 @@ kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arm.o $(KVM)/arm/mmu.o $(KVM)/arm/mmio.
>   kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/psci.o $(KVM)/arm/perf.o
>   kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/hypercalls.o
>   kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/pvtime.o
> +kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/pvlock.o
>   
>   kvm-$(CONFIG_KVM_ARM_HOST) += inject_fault.o regmap.o va_layout.o
>   kvm-$(CONFIG_KVM_ARM_HOST) += hyp.o hyp-init.o handle_exit.o
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 8de4daf25097..36d57e77d3c4 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -383,6 +383,8 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
>   
>   	kvm_arm_pvtime_vcpu_init(&vcpu->arch);
>   
> +	kvm_arm_pvlock_preempted_init(&vcpu->arch);
> +
>   	return kvm_vgic_vcpu_init(vcpu);
>   }
>   
> @@ -421,6 +423,9 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
>   		vcpu_set_wfx_traps(vcpu);
>   
>   	vcpu_ptrauth_setup_lazy(vcpu);
> +
> +	if (kvm_arm_is_pvlock_preempted_ready(&vcpu->arch))
> +		kvm_update_pvlock_preempted(vcpu, 0);
>   }
>   
>   void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
> @@ -434,6 +439,9 @@ void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
>   	vcpu->cpu = -1;
>   
>   	kvm_arm_set_running_vcpu(NULL);
> +
> +	if (kvm_arm_is_pvlock_preempted_ready(&vcpu->arch))
> +		kvm_update_pvlock_preempted(vcpu, 1);
>   }
>   
>   static void vcpu_power_off(struct kvm_vcpu *vcpu)
> diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
> index 550dfa3e53cd..1c6a11f21bb4 100644
> --- a/virt/kvm/arm/hypercalls.c
> +++ b/virt/kvm/arm/hypercalls.c
> @@ -52,6 +52,9 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>   		case ARM_SMCCC_HV_PV_TIME_FEATURES:
>   			val = SMCCC_RET_SUCCESS;
>   			break;
> +		case ARM_SMCCC_HV_PV_LOCK_FEATURES:
> +			val = SMCCC_RET_SUCCESS;
> +			break;
>   		}
>   		break;
>   	case ARM_SMCCC_HV_PV_TIME_FEATURES:
> @@ -62,6 +65,11 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>   		if (gpa != GPA_INVALID)
>   			val = gpa;
>   		break;
> +	case ARM_SMCCC_HV_PV_LOCK_PREEMPTED:
> +		gpa = kvm_init_pvlock(vcpu);
> +		if (gpa != GPA_INVALID)
> +			val = gpa;
> +		break;
>   	default:
>   		return kvm_psci_call(vcpu);
>   	}
> diff --git a/virt/kvm/arm/pvlock.c b/virt/kvm/arm/pvlock.c
> new file mode 100644
> index 000000000000..cdfd30a903b9
> --- /dev/null
> +++ b/virt/kvm/arm/pvlock.c
> @@ -0,0 +1,46 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright(c) 2019 Huawei Technologies Co., Ltd
> + * Author: Zengruan Ye <yezengruan@huawei.com>
> + */
> +
> +#include <linux/arm-smccc.h>
> +#include <linux/kvm_host.h>
> +
> +#include <asm/pvlock-abi.h>
> +
> +#include <kvm/arm_hypercalls.h>
> +
> +gpa_t kvm_init_pvlock(struct kvm_vcpu *vcpu)
> +{
> +	struct pvlock_vcpu_state init_values = {};
> +	struct kvm *kvm = vcpu->kvm;
> +	u64 base = vcpu->arch.pv.base;
> +	int idx;
> +
> +	if (base == GPA_INVALID)
> +		return base;
> +
> +	idx = srcu_read_lock(&kvm->srcu);
> +	kvm_write_guest(kvm, base, &init_values, sizeof(init_values));
> +	srcu_read_unlock(&kvm->srcu, idx);
> +
> +	return base;
> +}
> +
> +void kvm_update_pvlock_preempted(struct kvm_vcpu *vcpu, u64 preempted)
> +{
> +	int idx;
> +	u64 offset;
> +	__le64 preempted_le;
> +	struct kvm *kvm = vcpu->kvm;
> +	u64 base = vcpu->arch.pv.base;
> +
> +	vcpu->arch.pv.preempted = preempted;
> +	preempted_le = cpu_to_le64(preempted);
> +
> +	idx = srcu_read_lock(&kvm->srcu);
> +	offset = offsetof(struct pvlock_vcpu_state, preempted);
> +	kvm_put_guest(kvm, base + offset, preempted_le, u64);
> +	srcu_read_unlock(&kvm->srcu, idx);
> +}
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
