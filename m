Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0D31BA92A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 17:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=faY/Lyvm6tIgaUVkAOUv0XRbsVpxKzlEHCy1v/tHuyY=; b=SaJ6x/g7+3Vd6Ak+IF/a2L+/o
	XYLosUrdZ+5Jg+fKLzmMznrnzGJX8pkTaUk02gmqKG22Nt8LjlszZ4eRndJyha6AHeGfvlw+NCmng
	vR0HxB5SDGvaHFn90iwpWfmerCqM77/WtuyCSBnpCl1lDV/nYjEyaAlen+sM/Ab8B42mY/Dn9aKfe
	uoJCdmZPeO2VcfWxXsMPvR2px5QCSv+pOaWuQK0twE7rrS78Y9jUNDvWg4FGa+vsxE+kJBAvE8EmK
	pZ/GOci4ynk3AXcpDxaOV68wDFUJzZqYUCEJEfiM9DCRf7W69VCHfZWgh6+s1UBCaGHcP33Ibggdt
	Qd/lwOZ6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT61Y-0002xS-Vt; Mon, 27 Apr 2020 15:50:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT61N-0002wa-Po
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 15:50:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 927BC31B;
 Mon, 27 Apr 2020 08:50:12 -0700 (PDT)
Received: from [10.37.12.144] (unknown [10.37.12.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5DB53F68F;
 Mon, 27 Apr 2020 08:50:08 -0700 (PDT)
Subject: Re: [PATCH 04/26] arm64: Detect the ARMv8.4 TTL feature
To: maz@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-5-maz@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <d6032191-ba0e-82a4-4dde-11beef369a11@arm.com>
Date: Mon, 27 Apr 2020 16:55:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200422120050.3693593-5-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_085013_935784_E6A942F6 
X-CRM114-Status: GOOD (  18.24  )
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

On 04/22/2020 01:00 PM, Marc Zyngier wrote:
> In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
> feature allows TLBs to be issued with a level allowing for quicker
> invalidation.
> 
> Let's detect the feature for now. Further patches will implement
> its actual usage.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---


>   arch/arm64/include/asm/cpucaps.h |  3 ++-
>   arch/arm64/include/asm/sysreg.h  |  1 +
>   arch/arm64/kernel/cpufeature.c   | 11 +++++++++++
>   3 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
> index 8eb5a088ae658..cabb0c49a1d11 100644
> --- a/arch/arm64/include/asm/cpucaps.h
> +++ b/arch/arm64/include/asm/cpucaps.h
> @@ -61,7 +61,8 @@
>   #define ARM64_HAS_AMU_EXTN			51
>   #define ARM64_HAS_ADDRESS_AUTH			52
>   #define ARM64_HAS_GENERIC_AUTH			53
> +#define ARM64_HAS_ARMv8_4_TTL			54
>   
> -#define ARM64_NCAPS				54
> +#define ARM64_NCAPS				55
>   
>   #endif /* __ASM_CPUCAPS_H */
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 5d10c9148e844..79cf186b7e471 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -726,6 +726,7 @@
>   
>   /* id_aa64mmfr2 */
>   #define ID_AA64MMFR2_E0PD_SHIFT		60
> +#define ID_AA64MMFR2_TTL_SHIFT		48
>   #define ID_AA64MMFR2_FWB_SHIFT		40
>   #define ID_AA64MMFR2_AT_SHIFT		32
>   #define ID_AA64MMFR2_LVA_SHIFT		16
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 9892a845d06c9..d8ab4f1e93bee 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -252,6 +252,7 @@ static const struct arm64_ftr_bits ftr_id_aa64mmfr1[] = {
>   
>   static const struct arm64_ftr_bits ftr_id_aa64mmfr2[] = {
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_E0PD_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_TTL_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_FWB_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_AT_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_LVA_SHIFT, 4, 0),
> @@ -1630,6 +1631,16 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>   		.matches = has_cpuid_feature,
>   		.cpu_enable = cpu_has_fwb,
>   	},
> +	{
> +		.desc = "ARMv8.4 Translation Table Level",
> +		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> +		.capability = ARM64_HAS_ARMv8_4_TTL,
> +		.sys_reg = SYS_ID_AA64MMFR2_EL1,
> +		.sign = FTR_UNSIGNED,
> +		.field_pos = ID_AA64MMFR2_TTL_SHIFT,
> +		.min_field_value = 1,
> +		.matches = has_cpuid_feature,
> +	},

Reviewed-by : Suzuki K Polose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
