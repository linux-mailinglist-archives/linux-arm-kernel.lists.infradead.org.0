Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34F21BA1F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pscla5gMMXTyJOluGtXxKHU9xgLdAK1IPoC8GaYughA=; b=O47nBZL2Q1zOY7CcWYHB4l6Va
	iGw/STPUYHnSunEL6wnGMb9hpGIKRBv+UrjPapCcOCy2zNtq0UiRk9r9j7YkNva6M/H7Mfgqhc3jg
	9yxdl1Rc7Vcej2PD0UPiHO599hPjGG8ozxWJ4qYdVK4UKog6DIE/A6/wvyJUrVlJ5bXuT0POqrybB
	deEo4/Sg3GbnWDRC2zv1xdaxHqcCeyhJDQmu9KrZUxs7GblvMCfoMgwoeZR/osRl2mNggha3bjwAO
	cxS5FL1oWAvSavPGf8qAlERwT3Vfr4QVTDCopg6++ZjY09beUm/P415LGEd7rpAkAO/NorDtrosmx
	H7bQ5qZVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1eR-0004oC-TG; Mon, 27 Apr 2020 11:10:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1e5-0004mo-KM
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 11:09:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4330A1FB;
 Mon, 27 Apr 2020 04:09:50 -0700 (PDT)
Received: from [10.37.12.144] (unknown [10.37.12.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B0ECA3F73D;
 Mon, 27 Apr 2020 04:09:47 -0700 (PDT)
Subject: Re: [PATCH v3 21/23] arm64: mte: Check the DT memory nodes for MTE
 support
To: catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-22-catalin.marinas@arm.com> <20200424135735.GB5551@gaia>
 <20200424161742.GE5551@gaia>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <43762365-60f6-e271-1338-795e8d7fbb72@arm.com>
Date: Mon, 27 Apr 2020 12:14:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200424161742.GE5551@gaia>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_040953_761935_D4F98D1E 
X-CRM114-Status: GOOD (  30.06  )
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
Cc: linux-arch@vger.kernel.org, Richard.Earnshaw@arm.com, Szabolcs.Nagy@arm.com,
 andreyknvl@google.com, kevin.brodsky@arm.com, Rob.Herring@arm.com,
 pcc@google.com, linux-mm@kvack.org, mark.rutland@arm.com,
 Vincenzo.Frascino@arm.com, will@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

On 04/24/2020 05:17 PM, Catalin Marinas wrote:
> On Fri, Apr 24, 2020 at 02:57:36PM +0100, Catalin Marinas wrote:
>> On Tue, Apr 21, 2020 at 03:26:01PM +0100, Catalin Marinas wrote:
>>> Even if the ID_AA64PFR1_EL1 register advertises the presence of MTE, it
>>> is not guaranteed that the memory system on the SoC supports the
>>> feature. In the absence of system-wide MTE support, the behaviour is
>>> undefined and the kernel should not enable the MTE memory type in
>>> MAIR_EL1.
>>>
>>> For FDT, add an 'arm,armv8.5-memtag' property to the /memory nodes and
>>> check for its presence during MTE probing. For example:
>>>
>>> 	memory@80000000 {
>>> 		device_type = "memory";
>>> 		arm,armv8.5-memtag;
>>> 		reg = <0x00000000 0x80000000 0 0x80000000>,
>>> 		      <0x00000008 0x80000000 0 0x80000000>;
>>> 	};
>>>
>>> If the /memory nodes are not present in DT or if at least one node does
>>> not support MTE, the feature will be disabled. On EFI systems, it is
>>> assumed that the memory description matches the EFI memory map (if not,
>>> it is considered a firmware bug).
>>>
>>> MTE is not currently supported on ACPI systems.
>>>
>>> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
>>> Cc: Rob Herring <Rob.Herring@arm.com>
>>> Cc: Mark Rutland <mark.rutland@arm.com>
>>> Cc: Will Deacon <will@kernel.org>
>>> Cc: Suzuki K Poulose <Suzuki.Poulose@arm.com>
>>
>> This patch turns out to be incomplete. While it does not expose the
>> HWCAP2_MTE to user when the above DT property is not present, it still
>> allows user access to the ID_AA64PFR1_EL1.MTE field (via MRS emulations)
>> since it is marked as visible.
> 
> Attempt below at moving the check to the CPUID fields setup. This way we
> can avoid the original patch entirely since the sanitised id regs will
> have a zero MTE field if DT doesn't support it.
> 
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index afc315814563..0a24d36bf231 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -61,6 +61,7 @@ struct arm64_ftr_bits {
>   	u8		shift;
>   	u8		width;
>   	s64		safe_val; /* safe value for FTR_EXACT features */
> +	s64		(*filter)(const struct arm64_ftr_bits *, s64);
>   };
>   
>   /*
> @@ -542,7 +543,10 @@ cpuid_feature_extract_field(u64 features, int field, bool sign)
>   
>   static inline s64 arm64_ftr_value(const struct arm64_ftr_bits *ftrp, u64 val)
>   {
> -	return (s64)cpuid_feature_extract_field_width(val, ftrp->shift, ftrp->width, ftrp->sign);
> +	s64 fval = (s64)cpuid_feature_extract_field_width(val, ftrp->shift, ftrp->width, ftrp->sign);
> +	if (ftrp->filter)
> +		fval = ftrp->filter(ftrp, fval);
> +	return fval;
>   }
>   

This change makes sure that the sanitised infrastructure is initialised
with masked value and all consumers see a "sanitised" value, including
KVM (unless they emulate it directly on the local CPU)




>   
> +#ifdef CONFIG_ARM64_MTE
> +s64 mte_ftr_filter(const struct arm64_ftr_bits *ftrp, s64 val)
> +{
> +	struct device_node *np;
> +	static bool memory_checked = false;
> +	static bool mte_capable = true;
> +
> +	/* EL0-only MTE is not supported by Linux, don't expose it */
> +	if (val < ID_AA64PFR1_MTE)
> +		return ID_AA64PFR1_MTE_NI;
> +
> +	if (memory_checked)
> +		return mte_capable ? val : ID_AA64PFR1_MTE_NI;
> +
> +	if (!acpi_disabled) {
> +		pr_warn("MTE not supported on ACPI systems\n");
> +		return ID_AA64PFR1_MTE_NI;
> +	}
> +
> +	/* check the DT "memory" nodes for MTE support */
> +	for_each_node_by_type(np, "memory") {
> +		memory_checked = true;
> +		mte_capable &= of_property_read_bool(np, "arm,armv8.5-memtag");
> +	}
> +
> +	if (!memory_checked || !mte_capable) {
> +		pr_warn("System memory is not MTE-capable\n");
> +		memory_checked = true;
> +		mte_capable = false;
> +		return ID_AA64PFR1_MTE_NI;
> +	}
> +
> +	return val;
> +}
> +#endif
> +
>   /*
>    * NOTE: Any changes to the visibility of features should be kept in
>    * sync with the documentation of the CPU feature register ABI.
> @@ -184,8 +225,10 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
>   
>   static const struct arm64_ftr_bits ftr_id_aa64pfr1[] = {
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_SSBS_SHIFT, 4, ID_AA64PFR1_SSBS_PSTATE_NI),
> -	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_MTE),
> -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR1_MTE_SHIFT, 4, ID_AA64PFR1_MTE_NI),
> +#ifdef CONFIG_ARM64_MTE
> +	FILTERED_ARM64_FTR_BITS(FTR_UNSIGNED, FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE,
> +				ID_AA64PFR1_MTE_SHIFT, 4, ID_AA64PFR1_MTE_NI, mte_ftr_filter),
> +#endif
>   	ARM64_FTR_END,
>   };
>   

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
