Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8820E13DAA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 13:52:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=shU3buroL+izTOfysDei5zgKaQ6xwUytD7ZedaSiTRo=; b=L5aK80iWNFg79mlxfpoMdYf1w
	CPF5S9pbrbV3GTJ4NPTAYvYKMwSIsGu/8Tps4CjaZW6t7Z/ZrfHI8jtOCoqMLAFevOnGRBmrHvvPy
	efd604IUjhnGnpC+plQpxoqJrwEP7U5T/1YGhMO7CB+c3DtsFMPi+a5Zh9otF6CiWGmYpeOfQpSQW
	jcSGbQksuGGm9HpKgebLG85+/qUZMCt4cQqn1s0JvqckEbam6LdAra50vraU9DTTcbMyWGCZKGKZH
	+Su88e392Bo7iJ1POeyNUYynoAkdPij+F1UhW15nzgYBMDR7ctgJr1kM8RaKhPe9k0lEEOxDbQ7uC
	mNZMH8vtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4dW-0001FN-7u; Thu, 16 Jan 2020 12:52:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4dK-0001EP-SG
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:52:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 632251396;
 Thu, 16 Jan 2020 04:52:20 -0800 (PST)
Received: from [10.37.9.112] (unknown [10.37.9.112])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 020443F6C4;
 Thu, 16 Jan 2020 04:52:18 -0800 (PST)
Subject: Re: [PATCH v2] arm64: cpufeature: Export matrix and other features to
 userspace
To: Will Deacon <will@kernel.org>
References: <20191216113337.13882-1-steven.price@arm.com>
 <20200115094916.GC21692@willie-the-truck>
 <20200115095810.GD21692@willie-the-truck>
From: Steven Price <steven.price@arm.com>
Message-ID: <87d09890-146c-a9ce-a8d9-13baaa30068d@arm.com>
Date: Thu, 16 Jan 2020 12:52:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200115095810.GD21692@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_045223_003590_9DEBD783 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, julien@xen.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/01/2020 09:58, Will Deacon wrote:
> On Wed, Jan 15, 2020 at 09:49:17AM +0000, Will Deacon wrote:
>> In other words, I'll drop the SPECRES parts from this patch. Sound ok?

Yes, sounds like a good idea based on what Mark linked to. The diff 
below looks right to me.

Thanks,

Steve

> 
> Diff below.
> 
> Will
> 
> --->8
> 
> diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
> index 5382981533f8..27877d25dd9b 100644
> --- a/Documentation/arm64/cpu-feature-registers.rst
> +++ b/Documentation/arm64/cpu-feature-registers.rst
> @@ -206,8 +206,6 @@ infrastructure:
>        +------------------------------+---------+---------+
>        | BF16                         | [47-44] |    y    |
>        +------------------------------+---------+---------+
> -     | SPECRES                      | [43-40] |    y    |
> -     +------------------------------+---------+---------+
>        | SB                           | [39-36] |    y    |
>        +------------------------------+---------+---------+
>        | FRINTTS                      | [35-32] |    y    |
> diff --git a/Documentation/arm64/elf_hwcaps.rst b/Documentation/arm64/elf_hwcaps.rst
> index 183ba86ad46e..4fafc57d8e73 100644
> --- a/Documentation/arm64/elf_hwcaps.rst
> +++ b/Documentation/arm64/elf_hwcaps.rst
> @@ -232,10 +232,6 @@ HWCAP2_DGH
>   
>       Functionality implied by ID_AA64ISAR1_EL1.DGH == 0b0001.
>   
> -HWCAP2_SPECRES
> -
> -    Functionality implied by ID_AA64ISAR1_EL1.SPECRES == 0b0001.
> -
>   4. Unused AT_HWCAP bits
>   -----------------------
>   
> diff --git a/arch/arm64/include/asm/hwcap.h b/arch/arm64/include/asm/hwcap.h
> index ac7180b2c20b..fcb390ea29ea 100644
> --- a/arch/arm64/include/asm/hwcap.h
> +++ b/arch/arm64/include/asm/hwcap.h
> @@ -93,7 +93,6 @@
>   #define KERNEL_HWCAP_I8MM		__khwcap2_feature(I8MM)
>   #define KERNEL_HWCAP_DGH		__khwcap2_feature(DGH)
>   #define KERNEL_HWCAP_BF16		__khwcap2_feature(BF16)
> -#define KERNEL_HWCAP_SPECRES		__khwcap2_feature(SPECRES)
>   
>   /*
>    * This yields a mask that user programs can use to figure out what
> diff --git a/arch/arm64/include/uapi/asm/hwcap.h b/arch/arm64/include/uapi/asm/hwcap.h
> index 8f3f1b66f7b2..e6dad5924703 100644
> --- a/arch/arm64/include/uapi/asm/hwcap.h
> +++ b/arch/arm64/include/uapi/asm/hwcap.h
> @@ -72,6 +72,5 @@
>   #define HWCAP2_I8MM		(1 << 13)
>   #define HWCAP2_BF16		(1 << 14)
>   #define HWCAP2_DGH		(1 << 15)
> -#define HWCAP2_SPECRES		(1 << 16)
>   
>   #endif /* _UAPI__ASM_HWCAP_H */
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 9164ee5351a4..c88f8fb80e2e 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -138,7 +138,7 @@ static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_I8MM_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_DGH_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_BF16_SHIFT, 4, 0),
> -	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_SPECRES_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_SPECRES_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_SB_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FRINTTS_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
> @@ -1678,7 +1678,6 @@ static const struct arm64_cpu_capabilities arm64_elf_hwcaps[] = {
>   	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_LRCPC_SHIFT, FTR_UNSIGNED, 2, CAP_HWCAP, KERNEL_HWCAP_ILRCPC),
>   	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_FRINTTS_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_FRINT),
>   	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_SB_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_SB),
> -	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_SPECRES_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_SPECRES),
>   	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_BF16_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_BF16),
>   	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_DGH_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_DGH),
>   	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_I8MM_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_I8MM),
> diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
> index c689e26889c7..9013b224591a 100644
> --- a/arch/arm64/kernel/cpuinfo.c
> +++ b/arch/arm64/kernel/cpuinfo.c
> @@ -91,7 +91,6 @@ static const char *const hwcap_str[] = {
>   	"i8mm",
>   	"bf16",
>   	"dgh",
> -	"specres",
>   	NULL
>   };
>   
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
