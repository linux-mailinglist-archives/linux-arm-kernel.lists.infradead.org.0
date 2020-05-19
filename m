Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C6C1D94B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 12:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dm1RDKSQEVceWj2bWdwcWHL9RqCD3lWlfuyyh5C/He8=; b=VkMjWSChN054ZA8cnEBORnXUD
	G/S7Am3WiinJi15ah597WGgWS00QUZgdNf2LGY7CrriO7bhk93OyXDgEiWUu/RqtRhcNhesfWHDCJ
	sToyH4avlzo+nSfTw9Iws0EdP2A2+0WFXxUc1kgAoUyOpuFmZ0RXTg/ZiiaVHGKjsYuCaKk6jnwkR
	3DvWOxh8Kr3Hhz861LgnvInieUYurRkcpJ9b2+ZOF/3INRQi9RUvvJI5uHkrhR61ePKeYByqTUPPy
	RPxEzG9ihAAm6MZsR+du392zvq05ET4WI4wKYBKUZ1bz7h9nRh8n4sSlM74QsVOOvTCdw52QcUIlG
	V0rFyCMbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jazoc-0006WX-0I; Tue, 19 May 2020 10:49:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jazo7-0006U7-Tb
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 10:49:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6BB7101E;
 Tue, 19 May 2020 03:49:10 -0700 (PDT)
Received: from [10.37.8.206] (unknown [10.37.8.206])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A8B63F68F;
 Tue, 19 May 2020 03:49:09 -0700 (PDT)
Subject: Re: [PATCH V4 08/17] arm64/cpufeature: Add remaining feature bits in
 ID_MMFR4 register
To: anshuman.khandual@arm.com, linux-arm-kernel@lists.infradead.org
References: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
 <1589881254-10082-9-git-send-email-anshuman.khandual@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <f0264642-7eb9-b8f2-6802-4099daea5ff7@arm.com>
Date: Tue, 19 May 2020 11:53:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1589881254-10082-9-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_034912_002366_04129D8C 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, maz@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/19/2020 10:40 AM, Anshuman Khandual wrote:
> Enable all remaining feature bits like EVT, CCIDX, LSM, HPDS, CnP, XNX,
> SpecSEI in ID_MMFR4 register per ARM DDI 0487F.a.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Suggested-by: Mark Rutland <mark.rutland@arm.com>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>   arch/arm64/include/asm/sysreg.h |  8 ++++++++
>   arch/arm64/kernel/cpufeature.c  | 13 +++++++++++++
>   2 files changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 02b1246e7dbf..0a0cbb3add89 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -794,6 +794,14 @@
>   #define ID_ISAR6_DP_SHIFT		4
>   #define ID_ISAR6_JSCVT_SHIFT		0
>   
> +#define ID_MMFR4_EVT_SHIFT		28
> +#define ID_MMFR4_CCIDX_SHIFT		24
> +#define ID_MMFR4_LSM_SHIFT		20
> +#define ID_MMFR4_HPDS_SHIFT		16
> +#define ID_MMFR4_CNP_SHIFT		12
> +#define ID_MMFR4_XNX_SHIFT		8
> +#define ID_MMFR4_SPECSEI_SHIFT		0
> +
>   #define ID_MMFR5_ETS_SHIFT		0
>   
>   #define ID_PFR0_DIT_SHIFT		24
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index c929aed9fc4b..92186c40b817 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -392,7 +392,20 @@ static const struct arm64_ftr_bits ftr_id_isar5[] = {
>   };
>   
>   static const struct arm64_ftr_bits ftr_id_mmfr4[] = {
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_EVT_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_CCIDX_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_LSM_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_HPDS_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_CNP_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_MMFR4_XNX_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 4, 4, 0),	/* ac2 */

nit: Please could you add the "ID_MMFR4_AC2_SHIFT", while you are at it ?

Suzuki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
