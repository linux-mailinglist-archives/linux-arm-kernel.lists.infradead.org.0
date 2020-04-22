Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC1C1B4655
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 15:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WcVvAbW0NO6cPy9bjumVvsX4TMak4N+ugNs1LFHltik=; b=OhhCOJnUARWziYqxXTf8QeeY3
	55tqqsMPJD6L6PfV7fgT1w+j8eu+srz9k5GhCguwH45fpuVavClCEj8VC14ETUTQB3p50m+l5/+Fz
	USgeqPTIrxtezvVIFZGB0QuQ/T1xQtEV7Lz7hxOuMzpFMx+l2GgYnDiKf131848KpZz4PvYMlJasC
	6/K2Zw65rWRWaHfgOgb5Vj2pJ+Wa2Az/OKBQWO1mBKlWeuXYc2/aN/DTb0n9xxQSX6kMaV/q5U/gi
	52mFI0ZLE97T6G7HhJQg8hYAOlxn9aE+jqSkcOf5Bz1MKIMXWshroXebk5tCjXzNsdVsBrMS3xfA2
	y4pp1TyTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRFXO-0006Hh-F2; Wed, 22 Apr 2020 13:35:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRFXD-0006GK-Q2
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 13:35:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B39131B;
 Wed, 22 Apr 2020 06:35:27 -0700 (PDT)
Received: from [10.37.12.172] (unknown [10.37.12.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 86A923F6CF;
 Wed, 22 Apr 2020 06:35:23 -0700 (PDT)
Subject: Re: [PATCH 01/26] KVM: arm64: Check advertised Stage-2 page size
 capability
To: maz@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-2-maz@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <32cc9a60-1b47-f3f7-d18d-d39db397ea55@arm.com>
Date: Wed, 22 Apr 2020 14:40:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200422120050.3693593-2-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_063527_941191_D56DD0B5 
X-CRM114-Status: GOOD (  24.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, will@kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, dave.martin@arm.com, gcherian@marvell.com,
 james.morse@arm.com, prime.zeng@hisilicon.com, catalin.marinas@arm.com,
 alexandru.elisei@arm.com, jintack@cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 04/22/2020 01:00 PM, Marc Zyngier wrote:
> With ARMv8.5-GTG, the hardware (or more likely a hypervisor) can
> advertise the supported Stage-2 page sizes.
> 
> Let's check this at boot time.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   arch/arm64/include/asm/kvm_host.h |  2 +-
>   arch/arm64/include/asm/sysreg.h   |  3 +++
>   arch/arm64/kernel/cpufeature.c    |  8 +++++++
>   arch/arm64/kvm/reset.c            | 40 ++++++++++++++++++++++++++++---
>   virt/kvm/arm/arm.c                |  4 +---
>   5 files changed, 50 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 32c8a675e5a4a..7dd8fefa6aecd 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -670,7 +670,7 @@ static inline int kvm_arm_have_ssbd(void)
>   void kvm_vcpu_load_sysregs(struct kvm_vcpu *vcpu);
>   void kvm_vcpu_put_sysregs(struct kvm_vcpu *vcpu);
>   
> -void kvm_set_ipa_limit(void);
> +int kvm_set_ipa_limit(void);
>   
>   #define __KVM_HAVE_ARCH_VM_ALLOC
>   struct kvm *kvm_arch_alloc_vm(void);
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index ebc6224328318..5d10c9148e844 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -686,6 +686,9 @@
>   #define ID_AA64ZFR0_SVEVER_SVE2		0x1
>   
>   /* id_aa64mmfr0 */
> +#define ID_AA64MMFR0_TGRAN4_2_SHIFT	40
> +#define ID_AA64MMFR0_TGRAN64_2_SHIFT	36
> +#define ID_AA64MMFR0_TGRAN16_2_SHIFT	32
>   #define ID_AA64MMFR0_TGRAN4_SHIFT	28
>   #define ID_AA64MMFR0_TGRAN64_SHIFT	24
>   #define ID_AA64MMFR0_TGRAN16_SHIFT	20
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 9fac745aa7bb2..9892a845d06c9 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -208,6 +208,14 @@ static const struct arm64_ftr_bits ftr_id_aa64zfr0[] = {
>   };
>   
>   static const struct arm64_ftr_bits ftr_id_aa64mmfr0[] = {
> +	/*
> +	 * Page size not being supported at Stage-2 are not fatal. You
> +	 * just give up KVM if PAGE_SIZE isn't supported there. Go fix
> +	 * your favourite nesting hypervisor.
> +	 */
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, ID_AA64MMFR0_TGRAN4_2_SHIFT, 4, 1),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, ID_AA64MMFR0_TGRAN64_2_SHIFT, 4, 1),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, ID_AA64MMFR0_TGRAN16_2_SHIFT, 4, 1),

One minor issue with this is, if we get a system with cpus having values
0 and 2 (both of which indicates the stage-2 support), we might reset
the value to 1 for the feature indicating, we don't support and block
KVM. But, we can blame the nesting hypervisor for not emulating this to
(2). Do we need a comment to make this explicit here ?

Otherwise this looks fine to me

Suzuki



>   	/*
>   	 * We already refuse to boot CPUs that don't support our configured
>   	 * page size, so we can only detect mismatches for a page size other
> diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
> index 30b7ea680f66c..241db35a7ef4f 100644
> --- a/arch/arm64/kvm/reset.c
> +++ b/arch/arm64/kvm/reset.c
> @@ -9,6 +9,7 @@
>    */
>   
>   #include <linux/errno.h>
> +#include <linux/bitfield.h>
>   #include <linux/kernel.h>
>   #include <linux/kvm_host.h>
>   #include <linux/kvm.h>
> @@ -340,11 +341,42 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
>   	return ret;
>   }
>   
> -void kvm_set_ipa_limit(void)
> +int kvm_set_ipa_limit(void)
>   {
> -	unsigned int ipa_max, pa_max, va_max, parange;
> +	unsigned int ipa_max, pa_max, va_max, parange, tgran_2;
> +	u64 mmfr0 = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
>   
> -	parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) & 0x7;
> +	/*
> +	 * Check with ARMv8.5-GTG that our PAGE_SIZE is supported at
> +	 * Stage-2. If not, things will stop very quickly.
> +	 */
> +	switch (PAGE_SIZE) {
> +	default:
> +	case SZ_4K:
> +		tgran_2 = ID_AA64MMFR0_TGRAN4_2_SHIFT;
> +		break;
> +	case SZ_16K:
> +		tgran_2 = ID_AA64MMFR0_TGRAN16_2_SHIFT;
> +		break;
> +	case SZ_64K:
> +		tgran_2 = ID_AA64MMFR0_TGRAN64_2_SHIFT;
> +		break;
> +	}
> +
> +	switch (FIELD_GET(0xFUL << tgran_2, mmfr0)) {
> +	default:
> +	case 1:
> +		kvm_err("PAGE_SIZE not supported at Stage-2, giving up\n");
> +		return -EINVAL;
> +	case 0:
> +		kvm_debug("PAGE_SIZE supported at Stage-2 (default)\n");
> +		break;
> +	case 2:
> +		kvm_debug("PAGE_SIZE supported at Stage-2 (advertised)\n");
> +		break;
> +	}
> +
> +	parange = mmfr0 & 0x7;
>   	pa_max = id_aa64mmfr0_parange_to_phys_shift(parange);
>   
>   	/* Clamp the IPA limit to the PA size supported by the kernel */
> @@ -378,6 +410,8 @@ void kvm_set_ipa_limit(void)
>   	     "KVM IPA limit (%d bit) is smaller than default size\n", ipa_max);
>   	kvm_ipa_limit = ipa_max;
>   	kvm_info("IPA Size Limit: %dbits\n", kvm_ipa_limit);
> +
> +	return 0;
>   }
>   
>   /*
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 48d0ec44ad77e..53b3ba9173ba7 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -1387,9 +1387,7 @@ static inline void hyp_cpu_pm_exit(void)
>   
>   static int init_common_resources(void)
>   {
> -	kvm_set_ipa_limit();
> -
> -	return 0;
> +	return kvm_set_ipa_limit();
>   }
>   
>   static int init_subsystems(void)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
