Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1CE128D80
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 12:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URtY39rPcCAOi4hBbsSeoDHt+J/rj90k+JtGC7NnYRY=; b=TKnAlvdlBELA8Y
	ItlFKpMok1heGjuzlSsqh6W1WAZuaAPqYIcR616219NbL0KoWC7j8OEoFeUFz6uup7OqIsxvrK3kd
	97sqRO2mRyqt5t0ott6ul9AYyT+OfyJdthbnPrWHKu7r/JSaB6Jghna2ytcP26rGT8oQqItV2UGDv
	7Au8Acx5qXMb4E3BdobViEItt7osL4T2+nU1+SDaOMscch0fUEoL3CUqgeX2ZYfqZYdrU7G2TxUES
	F4ovHUDl1VH1krebYdTBI6W1fK12znKth86dHvoH7JQK6zruKNaVLXrG+gqanILgp1U10qFBkRsub
	O8GIR2ee6iGu/oQthL9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiz15-000135-Hd; Sun, 22 Dec 2019 11:03:19 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiz0w-00012J-5l
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 11:03:12 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=big-swifty.misterjones.org)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iiz0r-000668-9u; Sun, 22 Dec 2019 12:03:05 +0100
Date: Sun, 22 Dec 2019 11:03:04 +0000
Message-ID: <86a77kipw7.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 12/18] KVM: arm64: add a new vcpu device control group
 for SPEv1
In-Reply-To: <20191220143025.33853-13-andrew.murray@arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-13-andrew.murray@arm.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: andrew.murray@arm.com, catalin.marinas@arm.com,
 will@kernel.org, kvm@vger.kernel.org, linux-kernel@vger.kernel.org,
 sudeep.holla@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_030310_505331_E3089128 
X-CRM114-Status: GOOD (  32.42  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kvm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Dec 2019 14:30:19 +0000,
Andrew Murray <andrew.murray@arm.com> wrote:
> 
> From: Sudeep Holla <sudeep.holla@arm.com>
> 
> To configure the virtual SPEv1 overflow interrupt number, we use the
> vcpu kvm_device ioctl, encapsulating the KVM_ARM_VCPU_SPE_V1_IRQ
> attribute within the KVM_ARM_VCPU_SPE_V1_CTRL group.
> 
> After configuring the SPEv1, call the vcpu ioctl with attribute
> KVM_ARM_VCPU_SPE_V1_INIT to initialize the SPEv1.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  Documentation/virt/kvm/devices/vcpu.txt |  28 ++++
>  arch/arm64/include/asm/kvm_host.h       |   2 +-
>  arch/arm64/include/uapi/asm/kvm.h       |   4 +
>  arch/arm64/kvm/Makefile                 |   1 +
>  arch/arm64/kvm/guest.c                  |   6 +
>  arch/arm64/kvm/reset.c                  |   3 +
>  include/kvm/arm_spe.h                   |  45 +++++++
>  include/uapi/linux/kvm.h                |   1 +
>  virt/kvm/arm/arm.c                      |   1 +
>  virt/kvm/arm/spe.c                      | 163 ++++++++++++++++++++++++
>  10 files changed, 253 insertions(+), 1 deletion(-)
>  create mode 100644 virt/kvm/arm/spe.c
> 
> diff --git a/Documentation/virt/kvm/devices/vcpu.txt b/Documentation/virt/kvm/devices/vcpu.txt
> index 6f3bd64a05b0..cefad056d677 100644
> --- a/Documentation/virt/kvm/devices/vcpu.txt
> +++ b/Documentation/virt/kvm/devices/vcpu.txt
> @@ -74,3 +74,31 @@ Specifies the base address of the stolen time structure for this VCPU. The
>  base address must be 64 byte aligned and exist within a valid guest memory
>  region. See Documentation/virt/kvm/arm/pvtime.txt for more information
>  including the layout of the stolen time structure.
> +
> +4. GROUP: KVM_ARM_VCPU_SPE_V1_CTRL
> +Architectures: ARM64
> +
> +4.1. ATTRIBUTE: KVM_ARM_VCPU_SPE_V1_IRQ
> +Parameters: in kvm_device_attr.addr the address for SPE buffer overflow interrupt
> +	    is a pointer to an int
> +Returns: -EBUSY: The SPE overflow interrupt is already set
> +         -ENXIO: The overflow interrupt not set when attempting to get it
> +         -ENODEV: SPEv1 not supported
> +         -EINVAL: Invalid SPE overflow interrupt number supplied or
> +                  trying to set the IRQ number without using an in-kernel
> +                  irqchip.
> +
> +A value describing the SPEv1 (Statistical Profiling Extension v1) overflow
> +interrupt number for this vcpu. This interrupt should be PPI and the interrupt
> +type and number must be same for each vcpu.
> +
> +4.2 ATTRIBUTE: KVM_ARM_VCPU_SPE_V1_INIT
> +Parameters: no additional parameter in kvm_device_attr.addr
> +Returns: -ENODEV: SPEv1 not supported or GIC not initialized
> +         -ENXIO: SPEv1 not properly configured or in-kernel irqchip not
> +                 configured as required prior to calling this attribute
> +         -EBUSY: SPEv1 already initialized
> +
> +Request the initialization of the SPEv1.  If using the SPEv1 with an in-kernel
> +virtual GIC implementation, this must be done after initializing the in-kernel
> +irqchip.
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 333c6491bec7..d00f450dc4cd 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -39,7 +39,7 @@
>  
>  #define KVM_MAX_VCPUS VGIC_V3_MAX_CPUS
>  
> -#define KVM_VCPU_MAX_FEATURES 7
> +#define KVM_VCPU_MAX_FEATURES 8
>  
>  #define KVM_REQ_SLEEP \
>  	KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
> diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
> index 820e5751ada7..905a73f30079 100644
> --- a/arch/arm64/include/uapi/asm/kvm.h
> +++ b/arch/arm64/include/uapi/asm/kvm.h
> @@ -106,6 +106,7 @@ struct kvm_regs {
>  #define KVM_ARM_VCPU_SVE		4 /* enable SVE for this CPU */
>  #define KVM_ARM_VCPU_PTRAUTH_ADDRESS	5 /* VCPU uses address authentication */
>  #define KVM_ARM_VCPU_PTRAUTH_GENERIC	6 /* VCPU uses generic authentication */
> +#define KVM_ARM_VCPU_SPE_V1		7 /* Support guest SPEv1 */
>  
>  struct kvm_vcpu_init {
>  	__u32 target;
> @@ -326,6 +327,9 @@ struct kvm_vcpu_events {
>  #define   KVM_ARM_VCPU_TIMER_IRQ_PTIMER		1
>  #define KVM_ARM_VCPU_PVTIME_CTRL	2
>  #define   KVM_ARM_VCPU_PVTIME_IPA	0
> +#define KVM_ARM_VCPU_SPE_V1_CTRL	3
> +#define   KVM_ARM_VCPU_SPE_V1_IRQ	0
> +#define   KVM_ARM_VCPU_SPE_V1_INIT	1
>  
>  /* KVM_IRQ_LINE irq field index values */
>  #define KVM_ARM_IRQ_VCPU2_SHIFT		28
> diff --git a/arch/arm64/kvm/Makefile b/arch/arm64/kvm/Makefile
> index 5ffbdc39e780..526f3bf09321 100644
> --- a/arch/arm64/kvm/Makefile
> +++ b/arch/arm64/kvm/Makefile
> @@ -37,3 +37,4 @@ kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/vgic/vgic-debug.o
>  kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/irqchip.o
>  kvm-$(CONFIG_KVM_ARM_HOST) += $(KVM)/arm/arch_timer.o
>  kvm-$(CONFIG_KVM_ARM_PMU) += $(KVM)/arm/pmu.o
> +kvm-$(CONFIG_KVM_ARM_SPE) += $(KVM)/arm/spe.o
> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> index 2fff06114a8f..50fea538b8bd 100644
> --- a/arch/arm64/kvm/guest.c
> +++ b/arch/arm64/kvm/guest.c
> @@ -874,6 +874,8 @@ int kvm_arm_vcpu_arch_set_attr(struct kvm_vcpu *vcpu,
>  		break;
>  	case KVM_ARM_VCPU_PVTIME_CTRL:
>  		ret = kvm_arm_pvtime_set_attr(vcpu, attr);
> +	case KVM_ARM_VCPU_SPE_V1_CTRL:
> +		ret = kvm_arm_spe_v1_set_attr(vcpu, attr);
>  		break;
>  	default:
>  		ret = -ENXIO;
> @@ -897,6 +899,8 @@ int kvm_arm_vcpu_arch_get_attr(struct kvm_vcpu *vcpu,
>  		break;
>  	case KVM_ARM_VCPU_PVTIME_CTRL:
>  		ret = kvm_arm_pvtime_get_attr(vcpu, attr);
> +	case KVM_ARM_VCPU_SPE_V1_CTRL:
> +		ret = kvm_arm_spe_v1_get_attr(vcpu, attr);
>  		break;
>  	default:
>  		ret = -ENXIO;
> @@ -920,6 +924,8 @@ int kvm_arm_vcpu_arch_has_attr(struct kvm_vcpu *vcpu,
>  		break;
>  	case KVM_ARM_VCPU_PVTIME_CTRL:
>  		ret = kvm_arm_pvtime_has_attr(vcpu, attr);
> +	case KVM_ARM_VCPU_SPE_V1_CTRL:
> +		ret = kvm_arm_spe_v1_has_attr(vcpu, attr);
>  		break;
>  	default:
>  		ret = -ENXIO;
> diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
> index f4a8ae918827..cf17aff1489d 100644
> --- a/arch/arm64/kvm/reset.c
> +++ b/arch/arm64/kvm/reset.c
> @@ -80,6 +80,9 @@ int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext)
>  	case KVM_CAP_ARM_INJECT_SERROR_ESR:
>  		r = cpus_have_const_cap(ARM64_HAS_RAS_EXTN);
>  		break;
> +	case KVM_CAP_ARM_SPE_V1:
> +		r = kvm_arm_support_spe_v1();
> +		break;
>  	case KVM_CAP_SET_GUEST_DEBUG:
>  	case KVM_CAP_VCPU_ATTRIBUTES:
>  		r = 1;
> diff --git a/include/kvm/arm_spe.h b/include/kvm/arm_spe.h
> index 30c40b1bc385..d1f3c564dfd0 100644
> --- a/include/kvm/arm_spe.h
> +++ b/include/kvm/arm_spe.h
> @@ -8,6 +8,7 @@
>  
>  #include <uapi/linux/kvm.h>
>  #include <linux/kvm_host.h>
> +#include <linux/cpufeature.h>
>  
>  struct kvm_spe {
>  	int irq_num;
> @@ -18,8 +19,52 @@ struct kvm_spe {
>  
>  #ifdef CONFIG_KVM_ARM_SPE
>  #define kvm_arm_spe_v1_ready(v)		((v)->arch.spe.ready)
> +#define kvm_arm_spe_irq_initialized(v)		\
> +	((v)->arch.spe.irq_num >= VGIC_NR_SGIS &&	\
> +	(v)->arch.spe.irq_num <= VGIC_MAX_PRIVATE)

This is buggy, as it accepts 32 as a valid interrupt (which obviously
isn't a PPI). Having fixed it, this is a duplicate of irq_is_ppi().

And that's where we can finally confirm that 'irq_num' is a GIC
INTID. Please name it as such.

> +
> +static inline bool kvm_arm_support_spe_v1(void)
> +{
> +	u64 dfr0 = read_sanitised_ftr_reg(SYS_ID_AA64DFR0_EL1);
> +
> +	return !!cpuid_feature_extract_unsigned_field(dfr0,
> +						      ID_AA64DFR0_PMSVER_SHIFT);
> +}
> +
> +int kvm_arm_spe_v1_set_attr(struct kvm_vcpu *vcpu,
> +			    struct kvm_device_attr *attr);
> +int kvm_arm_spe_v1_get_attr(struct kvm_vcpu *vcpu,
> +			    struct kvm_device_attr *attr);
> +int kvm_arm_spe_v1_has_attr(struct kvm_vcpu *vcpu,
> +			    struct kvm_device_attr *attr);
> +int kvm_arm_spe_v1_enable(struct kvm_vcpu *vcpu);
>  #else
>  #define kvm_arm_spe_v1_ready(v)		(false)
> +#define kvm_arm_support_spe_v1()	(false)
> +#define kvm_arm_spe_irq_initialized(v)	(false)
> +
> +static inline int kvm_arm_spe_v1_set_attr(struct kvm_vcpu *vcpu,
> +					  struct kvm_device_attr *attr)
> +{
> +	return -ENXIO;
> +}
> +
> +static inline int kvm_arm_spe_v1_get_attr(struct kvm_vcpu *vcpu,
> +					  struct kvm_device_attr *attr)
> +{
> +	return -ENXIO;
> +}
> +
> +static inline int kvm_arm_spe_v1_has_attr(struct kvm_vcpu *vcpu,
> +					  struct kvm_device_attr *attr)
> +{
> +	return -ENXIO;
> +}
> +
> +static inline int kvm_arm_spe_v1_enable(struct kvm_vcpu *vcpu)
> +{
> +	return 0;
> +}
>  #endif /* CONFIG_KVM_ARM_SPE */
>  
>  #endif /* __ASM_ARM_KVM_SPE_H */
> diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
> index f0a16b4adbbd..1a362c230e4a 100644
> --- a/include/uapi/linux/kvm.h
> +++ b/include/uapi/linux/kvm.h
> @@ -1009,6 +1009,7 @@ struct kvm_ppc_resize_hpt {
>  #define KVM_CAP_PPC_GUEST_DEBUG_SSTEP 176
>  #define KVM_CAP_ARM_NISV_TO_USER 177
>  #define KVM_CAP_ARM_INJECT_EXT_DABT 178
> +#define KVM_CAP_ARM_SPE_V1 179
>  
>  #ifdef KVM_CAP_IRQ_ROUTING
>  
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 12e0280291ce..340d2388ee2c 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -22,6 +22,7 @@
>  #include <trace/events/kvm.h>
>  #include <kvm/arm_pmu.h>
>  #include <kvm/arm_psci.h>
> +#include <kvm/arm_spe.h>
>  
>  #define CREATE_TRACE_POINTS
>  #include "trace.h"
> diff --git a/virt/kvm/arm/spe.c b/virt/kvm/arm/spe.c
> new file mode 100644
> index 000000000000..83ac2cce2cc3
> --- /dev/null
> +++ b/virt/kvm/arm/spe.c
> @@ -0,0 +1,163 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 ARM Ltd.
> + */
> +
> +#include <linux/cpu.h>
> +#include <linux/kvm.h>
> +#include <linux/kvm_host.h>
> +#include <linux/uaccess.h>
> +#include <asm/kvm_emulate.h>
> +#include <kvm/arm_spe.h>
> +#include <kvm/arm_vgic.h>
> +
> +int kvm_arm_spe_v1_enable(struct kvm_vcpu *vcpu)
> +{
> +	if (!vcpu->arch.spe.created)
> +		return 0;

Shouldn't it be an error to enable something that doesn't exist?

> +
> +	/*
> +	 * A valid interrupt configuration for the SPE is either to have a

either?

> +	 * properly configured interrupt number and using an in-kernel irqchip.
> +	 */
> +	if (irqchip_in_kernel(vcpu->kvm)) {
> +		int irq = vcpu->arch.spe.irq_num;
> +
> +		if (!kvm_arm_spe_irq_initialized(vcpu))
> +			return -EINVAL;
> +
> +		if (!irq_is_ppi(irq))
> +			return -EINVAL;
> +	}
> +
> +	vcpu->arch.spe.ready = true;

And SPE is then ready even when we don't have an in-kernel irqchip?

> +
> +	return 0;
> +}
> +
> +static int kvm_arm_spe_v1_init(struct kvm_vcpu *vcpu)
> +{
> +	if (!kvm_arm_support_spe_v1())
> +		return -ENODEV;
> +
> +	if (!test_bit(KVM_ARM_VCPU_SPE_V1, vcpu->arch.features))
> +		return -ENXIO;
> +
> +	if (vcpu->arch.spe.created)
> +		return -EBUSY;
> +
> +	if (irqchip_in_kernel(vcpu->kvm)) {
> +		int ret;
> +
> +		/*
> +		 * If using the SPE with an in-kernel virtual GIC
> +		 * implementation, we require the GIC to be already
> +		 * initialized when initializing the SPE.
> +		 */
> +		if (!vgic_initialized(vcpu->kvm))
> +			return -ENODEV;
> +
> +		ret = kvm_vgic_set_owner(vcpu, vcpu->arch.spe.irq_num,
> +					 &vcpu->arch.spe);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	vcpu->arch.spe.created = true;

Same problem.

> +	return 0;
> +}
> +
> +/*
> + * For one VM the interrupt type must be same for each vcpu.
> + * As a PPI, the interrupt number is the same for all vcpus,
> + * while as an SPI it must be a separate number per vcpu.

Why do you want to support SPIs at all? And it isn't what
kvm_arm_spe_irq_initialized claims to be doing.

> + */
> +static bool spe_irq_is_valid(struct kvm *kvm, int irq)
> +{
> +	int i;
> +	struct kvm_vcpu *vcpu;
> +
> +	kvm_for_each_vcpu(i, vcpu, kvm) {
> +		if (!kvm_arm_spe_irq_initialized(vcpu))
> +			continue;
> +
> +		if (vcpu->arch.spe.irq_num != irq)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
> +int kvm_arm_spe_v1_set_attr(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
> +{
> +	switch (attr->attr) {
> +	case KVM_ARM_VCPU_SPE_V1_IRQ: {
> +		int __user *uaddr = (int __user *)(long)attr->addr;
> +		int irq;
> +
> +		if (!irqchip_in_kernel(vcpu->kvm))
> +			return -EINVAL;

Here, you forbid setting the IRQ for a VM that doesn't have an
in-kernel irqchip. And yet below, you're happy to initialise it.

> +
> +		if (!test_bit(KVM_ARM_VCPU_SPE_V1, vcpu->arch.features))
> +			return -ENODEV;
> +
> +		if (get_user(irq, uaddr))
> +			return -EFAULT;
> +
> +		/* The SPE overflow interrupt can be a PPI only */
> +		if (!(irq_is_ppi(irq)))
> +			return -EINVAL;

Ah, so you do know about irq_is_ppi()...

> +
> +		if (!spe_irq_is_valid(vcpu->kvm, irq))

But why don't you fold the interrupt validity checks in this helper?

> +			return -EINVAL;
> +
> +		if (kvm_arm_spe_irq_initialized(vcpu))
> +			return -EBUSY;
> +
> +		kvm_debug("Set kvm ARM SPE irq: %d\n", irq);
> +		vcpu->arch.spe.irq_num = irq;
> +		return 0;
> +	}
> +	case KVM_ARM_VCPU_SPE_V1_INIT:
> +		return kvm_arm_spe_v1_init(vcpu);
> +	}
> +
> +	return -ENXIO;
> +}
> +
> +int kvm_arm_spe_v1_get_attr(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
> +{
> +	switch (attr->attr) {
> +	case KVM_ARM_VCPU_SPE_V1_IRQ: {
> +		int __user *uaddr = (int __user *)(long)attr->addr;
> +		int irq;
> +
> +		if (!irqchip_in_kernel(vcpu->kvm))
> +			return -EINVAL;
> +
> +		if (!test_bit(KVM_ARM_VCPU_SPE_V1, vcpu->arch.features))
> +			return -ENODEV;
> +
> +		if (!kvm_arm_spe_irq_initialized(vcpu))
> +			return -ENXIO;
> +
> +		irq = vcpu->arch.spe.irq_num;
> +		return put_user(irq, uaddr);
> +	}
> +	}
> +
> +	return -ENXIO;
> +}
> +
> +int kvm_arm_spe_v1_has_attr(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
> +{
> +	switch (attr->attr) {
> +	case KVM_ARM_VCPU_SPE_V1_IRQ:
> +	case KVM_ARM_VCPU_SPE_V1_INIT:
> +		if (kvm_arm_support_spe_v1() &&
> +		    test_bit(KVM_ARM_VCPU_SPE_V1, vcpu->arch.features))
> +			return 0;

It is interesting that all the user interface is designed with the
feature being optional in mind, and yet you've removed all the
necessary handling code.

	M.

-- 
Jazz is not dead, it just smells funny.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
