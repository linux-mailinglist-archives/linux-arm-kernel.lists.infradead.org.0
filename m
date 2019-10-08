Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD27CFC84
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NA5uv1wWzzSKLlDcD5SNARAovQ7GMCnCcURqC2DyfsU=; b=V/ooLboUXUpLai
	a3/KRgFJbRbcKGVnavTDLgSQ3VVsL5yeGmJb7B8DnokOd7hVImFsnKfR712kt8ThoxnMf3Hs+R3s3
	xHEDDvB8zwSHjLKILeVeRZJiVC+s6R6+oAkU5tzyIFuOlm9xPVZ7nu9Y0O9K4nmYuUyUGBk7i0ecI
	T001RA47dga9C/Z/BmsKAvNuPczhlei3Fp9fNuf6wf6h/1b7l0//Ip/iCHn4USqYagwrqDc8usL+Q
	Rb6gW7Emzfnd0hEulyBfyr2ux+GcCiEu3hn99N/MhECLCDLmXpVXCCObaJX8LMdI0WfKzXwQwmfrX
	9+YGLVIDhFP7j6Z7E70Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqag-0006Rd-O4; Tue, 08 Oct 2019 14:35:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqaY-0006R1-OI
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:35:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8BD251570;
 Tue,  8 Oct 2019 07:35:43 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 506CB3F703;
 Tue,  8 Oct 2019 07:35:42 -0700 (PDT)
Date: Tue, 8 Oct 2019 15:35:37 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC/RFT PATCH 01/16] arm64: cpufeature: Detect SSBS and
 advertise to userspace
Message-ID: <20191008143537.GA14523@lakrids.cambridge.arm.com>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
 <20191004120430.11929-2-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004120430.11929-2-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_073546_879465_2AC78C7A 
X-CRM114-Status: GOOD (  23.33  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard, 

I have a few general backport notes below, and one issue with this
patch/series.

On Fri, Oct 04, 2019 at 02:04:15PM +0200, Ard Biesheuvel wrote:
> From: Will Deacon <will.deacon@arm.com>
> 
> Armv8.5 introduces a new PSTATE bit known as Speculative Store Bypass
> Safe (SSBS) which can be used as a mitigation against Spectre variant 4.
> 
> Additionally, a CPU may provide instructions to manipulate PSTATE.SSBS
> directly, so that userspace can toggle the SSBS control without trapping
> to the kernel.
> 
> This patch probes for the existence of SSBS and advertise the new instructions
> to userspace if they exist.
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> (cherry picked from commit d71be2b6c0e19180b5f80a6d42039cc074a693a2)

This should be the first line, formatted like:

commit d71be2b6c0e19180b5f80a6d42039cc074a693a2 upstream.

... as documented in Documentation/process/stable-kernel-rules.rst.
I see that's sometimes not followed, but I think we should stick to that
unless there's a strong reason not to.

If you had to make any substantial changes, I'd recommend a note above
your S-o-B, e.g

[v4.9: Renamed foo() to bar() to match xxyyzz()]

... and regardless I usually add a [vX.Y backport] trailing my S-o-B to
make it clear from the log where that happened.

For this patch specifically, I believe that you also need to backport
commit:

  f54dada8274643e3 ("arm64: fix SSBS sanitization")

... which fixes the SSBS bit being cleared across sigreturns.

Otherwise, this patch looks good to me.

Thanks,
Mark.


> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  arch/arm64/include/asm/cpucaps.h    |  3 ++-
>  arch/arm64/include/asm/sysreg.h     | 16 ++++++++++++----
>  arch/arm64/include/uapi/asm/hwcap.h |  1 +
>  arch/arm64/kernel/cpufeature.c      | 19 +++++++++++++++++--
>  arch/arm64/kernel/cpuinfo.c         |  1 +
>  5 files changed, 33 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
> index 25ce9056cf64..c3de0bbf0e9a 100644
> --- a/arch/arm64/include/asm/cpucaps.h
> +++ b/arch/arm64/include/asm/cpucaps.h
> @@ -52,7 +52,8 @@
>  #define ARM64_MISMATCHED_CACHE_TYPE		31
>  #define ARM64_HAS_STAGE2_FWB			32
>  #define ARM64_WORKAROUND_1463225		33
> +#define ARM64_SSBS				34
>  
> -#define ARM64_NCAPS				34
> +#define ARM64_NCAPS				35
>  
>  #endif /* __ASM_CPUCAPS_H */
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index c1470931b897..2fc6242baf11 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -419,6 +419,7 @@
>  #define SYS_ICH_LR15_EL2		__SYS__LR8_EL2(7)
>  
>  /* Common SCTLR_ELx flags. */
> +#define SCTLR_ELx_DSSBS	(1UL << 44)
>  #define SCTLR_ELx_EE    (1 << 25)
>  #define SCTLR_ELx_IESB	(1 << 21)
>  #define SCTLR_ELx_WXN	(1 << 19)
> @@ -439,7 +440,7 @@
>  			 (1 << 10) | (1 << 13) | (1 << 14) | (1 << 15) | \
>  			 (1 << 17) | (1 << 20) | (1 << 24) | (1 << 26) | \
>  			 (1 << 27) | (1 << 30) | (1 << 31) | \
> -			 (0xffffffffUL << 32))
> +			 (0xffffefffUL << 32))
>  
>  #ifdef CONFIG_CPU_BIG_ENDIAN
>  #define ENDIAN_SET_EL2		SCTLR_ELx_EE
> @@ -453,7 +454,7 @@
>  #define SCTLR_EL2_SET	(SCTLR_ELx_IESB   | ENDIAN_SET_EL2   | SCTLR_EL2_RES1)
>  #define SCTLR_EL2_CLEAR	(SCTLR_ELx_M      | SCTLR_ELx_A    | SCTLR_ELx_C   | \
>  			 SCTLR_ELx_SA     | SCTLR_ELx_I    | SCTLR_ELx_WXN | \
> -			 ENDIAN_CLEAR_EL2 | SCTLR_EL2_RES0)
> +			 SCTLR_ELx_DSSBS | ENDIAN_CLEAR_EL2 | SCTLR_EL2_RES0)
>  
>  #if (SCTLR_EL2_SET ^ SCTLR_EL2_CLEAR) != 0xffffffffffffffff
>  #error "Inconsistent SCTLR_EL2 set/clear bits"
> @@ -477,7 +478,7 @@
>  			 (1 << 29))
>  #define SCTLR_EL1_RES0  ((1 << 6)  | (1 << 10) | (1 << 13) | (1 << 17) | \
>  			 (1 << 27) | (1 << 30) | (1 << 31) | \
> -			 (0xffffffffUL << 32))
> +			 (0xffffefffUL << 32))
>  
>  #ifdef CONFIG_CPU_BIG_ENDIAN
>  #define ENDIAN_SET_EL1		(SCTLR_EL1_E0E | SCTLR_ELx_EE)
> @@ -494,7 +495,7 @@
>  			 ENDIAN_SET_EL1 | SCTLR_EL1_UCI  | SCTLR_EL1_RES1)
>  #define SCTLR_EL1_CLEAR	(SCTLR_ELx_A   | SCTLR_EL1_CP15BEN | SCTLR_EL1_ITD    |\
>  			 SCTLR_EL1_UMA | SCTLR_ELx_WXN     | ENDIAN_CLEAR_EL1 |\
> -			 SCTLR_EL1_RES0)
> +			 SCTLR_ELx_DSSBS | SCTLR_EL1_RES0)
>  
>  #if (SCTLR_EL1_SET ^ SCTLR_EL1_CLEAR) != 0xffffffffffffffff
>  #error "Inconsistent SCTLR_EL1 set/clear bits"
> @@ -544,6 +545,13 @@
>  #define ID_AA64PFR0_EL0_64BIT_ONLY	0x1
>  #define ID_AA64PFR0_EL0_32BIT_64BIT	0x2
>  
> +/* id_aa64pfr1 */
> +#define ID_AA64PFR1_SSBS_SHIFT		4
> +
> +#define ID_AA64PFR1_SSBS_PSTATE_NI	0
> +#define ID_AA64PFR1_SSBS_PSTATE_ONLY	1
> +#define ID_AA64PFR1_SSBS_PSTATE_INSNS	2
> +
>  /* id_aa64mmfr0 */
>  #define ID_AA64MMFR0_TGRAN4_SHIFT	28
>  #define ID_AA64MMFR0_TGRAN64_SHIFT	24
> diff --git a/arch/arm64/include/uapi/asm/hwcap.h b/arch/arm64/include/uapi/asm/hwcap.h
> index 17c65c8f33cb..2bcd6e4f3474 100644
> --- a/arch/arm64/include/uapi/asm/hwcap.h
> +++ b/arch/arm64/include/uapi/asm/hwcap.h
> @@ -48,5 +48,6 @@
>  #define HWCAP_USCAT		(1 << 25)
>  #define HWCAP_ILRCPC		(1 << 26)
>  #define HWCAP_FLAGM		(1 << 27)
> +#define HWCAP_SSBS		(1 << 28)
>  
>  #endif /* _UAPI__ASM_HWCAP_H */
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 859d63cc99a3..58146d636a83 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -164,6 +164,11 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
>  	ARM64_FTR_END,
>  };
>  
> +static const struct arm64_ftr_bits ftr_id_aa64pfr1[] = {
> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_SSBS_SHIFT, 4, ID_AA64PFR1_SSBS_PSTATE_NI),
> +	ARM64_FTR_END,
> +};
> +
>  static const struct arm64_ftr_bits ftr_id_aa64mmfr0[] = {
>  	/*
>  	 * We already refuse to boot CPUs that don't support our configured
> @@ -379,7 +384,7 @@ static const struct __ftr_reg_entry {
>  
>  	/* Op1 = 0, CRn = 0, CRm = 4 */
>  	ARM64_FTR_REG(SYS_ID_AA64PFR0_EL1, ftr_id_aa64pfr0),
> -	ARM64_FTR_REG(SYS_ID_AA64PFR1_EL1, ftr_raz),
> +	ARM64_FTR_REG(SYS_ID_AA64PFR1_EL1, ftr_id_aa64pfr1),
>  	ARM64_FTR_REG(SYS_ID_AA64ZFR0_EL1, ftr_raz),
>  
>  	/* Op1 = 0, CRn = 0, CRm = 5 */
> @@ -669,7 +674,6 @@ void update_cpu_features(int cpu,
>  
>  	/*
>  	 * EL3 is not our concern.
> -	 * ID_AA64PFR1 is currently RES0.
>  	 */
>  	taint |= check_update_ftr_reg(SYS_ID_AA64PFR0_EL1, cpu,
>  				      info->reg_id_aa64pfr0, boot->reg_id_aa64pfr0);
> @@ -1254,6 +1258,16 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.cpu_enable = cpu_enable_hw_dbm,
>  	},
>  #endif
> +	{
> +		.desc = "Speculative Store Bypassing Safe (SSBS)",
> +		.capability = ARM64_SSBS,
> +		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
> +		.matches = has_cpuid_feature,
> +		.sys_reg = SYS_ID_AA64PFR1_EL1,
> +		.field_pos = ID_AA64PFR1_SSBS_SHIFT,
> +		.sign = FTR_UNSIGNED,
> +		.min_field_value = ID_AA64PFR1_SSBS_PSTATE_ONLY,
> +	},
>  	{},
>  };
>  
> @@ -1299,6 +1313,7 @@ static const struct arm64_cpu_capabilities arm64_elf_hwcaps[] = {
>  #ifdef CONFIG_ARM64_SVE
>  	HWCAP_CAP(SYS_ID_AA64PFR0_EL1, ID_AA64PFR0_SVE_SHIFT, FTR_UNSIGNED, ID_AA64PFR0_SVE, CAP_HWCAP, HWCAP_SVE),
>  #endif
> +	HWCAP_CAP(SYS_ID_AA64PFR1_EL1, ID_AA64PFR1_SSBS_SHIFT, FTR_UNSIGNED, ID_AA64PFR1_SSBS_PSTATE_INSNS, CAP_HWCAP, HWCAP_SSBS),
>  	{},
>  };
>  
> diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
> index e9ab7b3ed317..dce971f2c167 100644
> --- a/arch/arm64/kernel/cpuinfo.c
> +++ b/arch/arm64/kernel/cpuinfo.c
> @@ -81,6 +81,7 @@ static const char *const hwcap_str[] = {
>  	"uscat",
>  	"ilrcpc",
>  	"flagm",
> +	"ssbs",
>  	NULL
>  };
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
