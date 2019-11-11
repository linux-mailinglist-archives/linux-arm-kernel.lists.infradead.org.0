Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11864F764D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sKbg3vzVbdztYt7rvFny7Wp4xYBIILjCJ4+jYpmP/EM=; b=KOyCvY4ysbGPMdQpW/CNSZvEG
	sSjlXv41mS9y0rJdL13Fl45LXGnO1gH7K7Wf7Q2/td5uiDwRuu8Qv8yDOBsRFM3qovCkHsQxlW5bf
	t60fgITKciu/ojKHKxQcM0nPt/Mdk7UsxO8R+2yRBozUHuyOEKOsNc0+MWPZaiE4nSOZgtWlKB2qr
	sHObDG+LNpYSwhICj0aAGvYwNxyCH0W7ZkZyMw39Sa0u2+CS4YywqxQySTdAJCUjMJ1fyA+Ay5hxs
	Z9OGDR4YcnlT3bWfWxxyxLhNMMmSHMhK4KH3wdZ25OujTe2iKonzyyKJUsY8lLmbfHfU108J8aE48
	GRTlJ2HcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAac-0000X6-BA; Mon, 11 Nov 2019 14:22:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAaT-0000WU-Ad
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:22:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B79731B;
 Mon, 11 Nov 2019 06:22:35 -0800 (PST)
Received: from localhost.localdomain (unknown [10.1.196.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A28923F534;
 Mon, 11 Nov 2019 06:22:34 -0800 (PST)
Subject: Re: [PATCH v8 1/4] arm64: Add initial support for E0PD
To: Mark Brown <broonie@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20191108170116.32105-1-broonie@kernel.org>
 <20191108170116.32105-2-broonie@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <97449111-a649-8e78-7f33-afbfae293eaf@arm.com>
Date: Mon, 11 Nov 2019 14:22:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191108170116.32105-2-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_062237_453922_63E43B27 
X-CRM114-Status: GOOD (  29.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/11/2019 17:01, Mark Brown wrote:
> Kernel Page Table Isolation (KPTI) is used to mitigate some speculation
> based security issues by ensuring that the kernel is not mapped when
> userspace is running but this approach is expensive and is incompatible
> with SPE.  E0PD, introduced in the ARMv8.5 extensions, provides an
> alternative to this which ensures that accesses from userspace to the
> kernel's half of the memory map to always fault with constant time,
> preventing timing attacks without requiring constant unmapping and
> remapping or preventing legitimate accesses.
> 
> Currently this feature will only be enabled if all CPUs in the system
> support E0PD, if some CPUs do not support the feature at boot time then
> the feature will not be enabled and in the unlikely event that a late
> CPU is the first CPU to lack the feature then we will reject that CPU.
> 
> This initial patch does not yet integrate with KPTI, this will be dealt
> with in followup patches.  Ideally we could ensure that by default we
> don't use KPTI on CPUs where E0PD is present.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>   arch/arm64/Kconfig                     | 15 ++++++++++++++
>   arch/arm64/include/asm/cpucaps.h       |  3 ++-
>   arch/arm64/include/asm/pgtable-hwdef.h |  2 ++
>   arch/arm64/include/asm/sysreg.h        |  1 +
>   arch/arm64/kernel/cpufeature.c         | 27 ++++++++++++++++++++++++++
>   5 files changed, 47 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 950a56b71ff0..9f881acb7acf 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1421,6 +1421,21 @@ config ARM64_PTR_AUTH
>   
>   endmenu
>   
> +menu "ARMv8.5 architectural features"
> +
> +config ARM64_E0PD
> +	bool "Enable support for E0PD"
> +	default y
> +	help
> +	   E0PD (part of the ARMv8.5 extensions) allows us to ensure
> +	   that EL0 accesses made via TTBR1 always fault in constant time,
> +	   providing benefits to KPTI with lower overhead and without
> +	   disrupting legitimate access to kernel memory such as SPE.
> +
> +	   This option enables E0PD for TTBR1 where available.
> +
> +endmenu
> +
>   config ARM64_SVE
>   	bool "ARM Scalable Vector Extension support"
>   	default y
> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
> index f19fe4b9acc4..f25388981075 100644
> --- a/arch/arm64/include/asm/cpucaps.h
> +++ b/arch/arm64/include/asm/cpucaps.h
> @@ -52,7 +52,8 @@
>   #define ARM64_HAS_IRQ_PRIO_MASKING		42
>   #define ARM64_HAS_DCPODP			43
>   #define ARM64_WORKAROUND_1463225		44
> +#define ARM64_HAS_E0PD				45
>   
> -#define ARM64_NCAPS				45
> +#define ARM64_NCAPS				46
>   
>   #endif /* __ASM_CPUCAPS_H */
> diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
> index 3df60f97da1f..685842e52c3d 100644
> --- a/arch/arm64/include/asm/pgtable-hwdef.h
> +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> @@ -292,6 +292,8 @@
>   #define TCR_HD			(UL(1) << 40)
>   #define TCR_NFD0		(UL(1) << 53)
>   #define TCR_NFD1		(UL(1) << 54)
> +#define TCR_E0PD0		(UL(1) << 55)
> +#define TCR_E0PD1		(UL(1) << 56)
>   
>   /*
>    * TTBR.
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 972d196c7714..36227a5a22ba 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -655,6 +655,7 @@
>   #define ID_AA64MMFR1_VMIDBITS_16	2
>   
>   /* id_aa64mmfr2 */
> +#define ID_AA64MMFR2_E0PD_SHIFT		60
>   #define ID_AA64MMFR2_FWB_SHIFT		40
>   #define ID_AA64MMFR2_AT_SHIFT		32
>   #define ID_AA64MMFR2_LVA_SHIFT		16
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index cabebf1a7976..2cf2b129ebb4 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -220,6 +220,7 @@ static const struct arm64_ftr_bits ftr_id_aa64mmfr1[] = {
>   };
>   
>   static const struct arm64_ftr_bits ftr_id_aa64mmfr2[] = {
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_E0PD_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_FWB_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_AT_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_LVA_SHIFT, 4, 0),
> @@ -1245,6 +1246,19 @@ static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
>   }
>   #endif /* CONFIG_ARM64_PTR_AUTH */
>   
> +#ifdef CONFIG_ARM64_E0PD
> +static void cpu_enable_e0pd(struct arm64_cpu_capabilities const *cap)
> +{
> +	/*
> +	 * The cpu_enable() callback gets called even on CPUs that
> +	 * don't detect the feature so we need to verify if we can
> +	 * enable.
> +	 */
> +	if (this_cpu_has_cap(ARM64_HAS_E0PD))
> +		sysreg_clear_set(tcr_el1, 0, TCR_E0PD1);

As mentioned in the previous version, this could set a superfluous model
for people to do the same check for future SYSTEM_FEATURE type capabilities.
I leave it to the maintainers.

Either ways:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
