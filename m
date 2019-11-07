Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1774F2BE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K99m9b1Gs+jlJ5Gvctm+6pJ4ygPFcaEZSdNnwUMjrRg=; b=mAUEckkGVpdZeNjsuq3EIORgh
	uXBTL2/VOcwqPQucN5SiQyCE57aeceDpg3QpcL09OBsnWP7T0KkNuUN7VN6RMpn1XKyuc/VSHuJ2x
	wXAZSJOneneI7vjU9gPTRwcF+Zf3ZDyUQCWJo0EMD10haR/+5KTsC7x+dlJQntv0z4CLXWNI9fant
	L+xD4j3uUAnroRg7NR6zbCFuoMm4XLaMDLwVKbDG2MYfpj20hE4hLbwpHdBtOkCizr67KOv8cx+sp
	awd0N04JxXfNUK+H1WF88uVqpENQKwqbsS5CxeUGUqQ29Tr6SKfKCFEdoVhPP0b2+E+r5pBWBnK+P
	Pi7PTAMGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSemQ-0004gN-7w; Thu, 07 Nov 2019 10:12:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSemJ-0004fh-8H
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:12:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D20946A;
 Thu,  7 Nov 2019 02:12:32 -0800 (PST)
Received: from localhost.localdomain (unknown [10.1.196.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A35B33F71A;
 Thu,  7 Nov 2019 02:12:31 -0800 (PST)
Subject: Re: [PATCH v7 1/4] arm64: Add initial support for E0PD
To: Mark Brown <broonie@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20191106130052.10642-1-broonie@kernel.org>
 <20191106130052.10642-2-broonie@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <04d20903-f7f0-18d4-b671-4c382a47c5e2@arm.com>
Date: Thu, 7 Nov 2019 10:12:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191106130052.10642-2-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_021235_337135_EE7A0B10 
X-CRM114-Status: GOOD (  24.40  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/11/2019 13:00, Mark Brown wrote:
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
> +}

Given that this is a SYSTEM_FEATURE now, we don't need the extra check.
All CPUs are guaranteed to have the feature, otherwise they would be
rejected early.

Rest looks fine to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
