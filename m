Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB521C52FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXbvwEmzYspZ42u2Hv78apneE8AV9axXgA9MyXxfA+A=; b=Q03LEVR/3yDU1B
	tQ0dAfhQ+nfbOfCoo/cWwGubEKxJvSKIwGCk34i7SuFiizmjCX+UgLNlb/qDm+dbxlJvlAFS7ic4c
	GGjT7KD5MLlQw57bdtVb6wvczobhj8zIA7sI9kpUm6agcu3FSji3tsA//jlMq/Uc15SRZoajjO+x8
	gpwDqTL0tLAAB5CGRz5voc1ZktGXvPX8aAn1XddnR0CYf4RmPjmnJo/q/V5cZAj9bQsAkgp2ljwxG
	4VskQIF8aYPHVTizzzM12Hz3ly6hOEmg2mMdCt9SWLM44H2mMlT5AGTedvtBt+hNps35hDuis4TLV
	wqZm4KYcEzla4rv5wXGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVug9-0006LB-1L; Tue, 05 May 2020 10:19:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuaf-0007LC-6I
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:14:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7169531B;
 Tue,  5 May 2020 03:14:16 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 01A1D3F305;
 Tue,  5 May 2020 03:14:12 -0700 (PDT)
Date: Tue, 5 May 2020 11:14:05 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Zhenyu Ye <yezhenyu2@huawei.com>
Subject: Re: [RFC PATCH v3 1/2] arm64: tlb: Detect the ARMv8.4 TLBI RANGE
 feature
Message-ID: <20200505101405.GB82424@C02TD0UTHF1T.local>
References: <20200414112835.1121-1-yezhenyu2@huawei.com>
 <20200414112835.1121-2-yezhenyu2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414112835.1121-2-yezhenyu2@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_031417_355665_12028339 
X-CRM114-Status: GOOD (  17.14  )
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
Cc: linux-arch@vger.kernel.org, maz@kernel.org, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 steven.price@arm.com, zhangshaokun@hisilicon.com, linux-mm@kvack.org,
 arm@kernel.org, prime.zeng@hisilicon.com, guohanjun@huawei.com, olof@lixom.net,
 kuhn.chenqun@huawei.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 07:28:34PM +0800, Zhenyu Ye wrote:
> ARMv8.4-TLBI provides TLBI invalidation instruction that apply to a
> range of input addresses. This patch detect this feature.
> 
> Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
> ---
>  arch/arm64/include/asm/cpucaps.h |  3 ++-
>  arch/arm64/include/asm/sysreg.h  |  4 ++++
>  arch/arm64/kernel/cpufeature.c   | 11 +++++++++++
>  3 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
> index 8eb5a088ae65..950095a72617 100644
> --- a/arch/arm64/include/asm/cpucaps.h
> +++ b/arch/arm64/include/asm/cpucaps.h
> @@ -61,7 +61,8 @@
>  #define ARM64_HAS_AMU_EXTN			51
>  #define ARM64_HAS_ADDRESS_AUTH			52
>  #define ARM64_HAS_GENERIC_AUTH			53
> +#define ARM64_HAS_TLBI_RANGE			54
>  
> -#define ARM64_NCAPS				54
> +#define ARM64_NCAPS				55
>  
>  #endif /* __ASM_CPUCAPS_H */
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index ebc622432831..ac1b98650234 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -592,6 +592,7 @@
>  
>  /* id_aa64isar0 */
>  #define ID_AA64ISAR0_RNDR_SHIFT		60
> +#define ID_AA64ISAR0_TLBI_RANGE_SHIFT	56
>  #define ID_AA64ISAR0_TS_SHIFT		52
>  #define ID_AA64ISAR0_FHM_SHIFT		48
>  #define ID_AA64ISAR0_DP_SHIFT		44
> @@ -605,6 +606,9 @@
>  #define ID_AA64ISAR0_SHA1_SHIFT		8
>  #define ID_AA64ISAR0_AES_SHIFT		4
>  
> +#define ID_AA64ISAR0_TLBI_RANGE_NI	0x0
> +#define ID_AA64ISAR0_TLBI_RANGE		0x2
> +
>  /* id_aa64isar1 */
>  #define ID_AA64ISAR1_I8MM_SHIFT		52
>  #define ID_AA64ISAR1_DGH_SHIFT		48
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 9fac745aa7bb..31bcfd0722b5 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -124,6 +124,7 @@ static bool __system_matches_cap(unsigned int n);
>   */
>  static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RNDR_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TLBI_RANGE_SHIFT, 4, 0),

This should be FTR_HIDDEN as userspace has no reason to see this.

Otherwise this all seems to match the ARM ARM.

Mark.

>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TS_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_FHM_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_DP_SHIFT, 4, 0),
> @@ -1779,6 +1780,16 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.min_field_value = 1,
>  	},
>  #endif
> +	{
> +		.desc = "TLB range maintenance instruction",
> +		.capability = ARM64_HAS_TLBI_RANGE,
> +		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> +		.matches = has_cpuid_feature,
> +		.sys_reg = SYS_ID_AA64ISAR0_EL1,
> +		.field_pos = ID_AA64ISAR0_TLBI_RANGE_SHIFT,
> +		.sign = FTR_UNSIGNED,
> +		.min_field_value = ID_AA64ISAR0_TLBI_RANGE,
> +	},
>  	{},
>  };
>  
> -- 
> 2.19.1
> 
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
