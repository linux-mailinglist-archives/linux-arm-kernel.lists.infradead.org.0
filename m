Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393F1D0020
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 19:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0s2jJe966Vk/31uWDz7maCiiBO2GEz9fcf77CuugZNY=; b=UoQXMjlniRexHWpEQXF8CqQ+K
	hjb5nX/3/R3Sg07PmObqS3J8EEhQXvN3ZjXmIEjt1i8h/gGa9VZT51xtrwsoXQcR6iV8Ghfa5xq1/
	e544Q9IztDZGLnMCmTXCHMGRnbRH0aFqHcjUCAS9dkbp6ueGYAA5mJ+s0EHl/vEpynTfDdwNDsipd
	pV9UiF6a9JTrG/GtnNp0kvZkeGyaV0KsByZzjZrG7sB7gmmei9+6AG6okHiRO4eWyxSBTDBVSW0xW
	vFnQbtfxxESm6I2Llqvj4I/Ev8pw0oz0EU5ZFd0kfNOLP8sS7VLM9dxwXoaa150mS35Njzb2dIeB1
	Imco1q/bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtZj-0006xu-SC; Tue, 08 Oct 2019 17:47:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtZa-0006xV-IZ
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 17:47:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 46F3715BE;
 Tue,  8 Oct 2019 10:46:57 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB1653F6C4;
 Tue,  8 Oct 2019 10:46:56 -0700 (PDT)
Subject: Re: [PATCH] arm64: cpufeature: Set the FP/SIMD compat HWCAP bits
 properly
To: Will Deacon <will@kernel.org>
References: <20191007085312.27912-1-suzuki.poulose@arm.com>
 <20191007151628.wwikoxao42xl23no@willie-the-truck>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <764e6250-c04f-09ab-4432-68e4cfc32147@arm.com>
Date: Tue, 8 Oct 2019 18:46:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191007151628.wwikoxao42xl23no@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_104658_758310_592F9D68 
X-CRM114-Status: GOOD (  23.34  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 07/10/2019 16:16, Will Deacon wrote:
> Hi Suzuki,
> 
> On Mon, Oct 07, 2019 at 09:53:12AM +0100, Suzuki K Poulose wrote:
>> We set the compat_elf_hwcap bits unconditionally on arm64 to
>> include the VFP and NEON support. However, the FP/SIMD unit
>> is optional on Arm v8 and thus could be missing. We already
>> handle this properly in the kernel, but still advertise to
>> the COMPAT applications that the VFP is available. Fix this
>> to make sure we only advertise when we really have them.
> 
> Why didn't we find this in testing? Should be able to throw an armel
> Debian filesystem at the fastmodel in this configuration, no?

Apologies for this mistake. I didn't test it with the armel rootfs.
Back then it was only tested to make sure we don't set the HWCAP.

I have now tested this on an armel based initramfs and have uncovered
other issues. Patches to follow in the next version.

> 
>> Fixes: commit 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
> 
> nit: please drop "commit" from this tag.

Sure

> 
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> ---
>>   arch/arm64/kernel/cpufeature.c | 37 +++++++++++++++++++++++++++++++---
>>   1 file changed, 34 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>> index 9323bcc40a58..9a28ba10dc03 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -32,9 +32,7 @@ static unsigned long elf_hwcap __read_mostly;
>>   #define COMPAT_ELF_HWCAP_DEFAULT	\
>>   				(COMPAT_HWCAP_HALF|COMPAT_HWCAP_THUMB|\
>>   				 COMPAT_HWCAP_FAST_MULT|COMPAT_HWCAP_EDSP|\
>> -				 COMPAT_HWCAP_TLS|COMPAT_HWCAP_VFP|\
>> -				 COMPAT_HWCAP_VFPv3|COMPAT_HWCAP_VFPv4|\
>> -				 COMPAT_HWCAP_NEON|COMPAT_HWCAP_IDIV|\
>> +				 COMPAT_HWCAP_TLS|COMPAT_HWCAP_IDIV|\
>>   				 COMPAT_HWCAP_LPAE)
>>   unsigned int compat_elf_hwcap __read_mostly = COMPAT_ELF_HWCAP_DEFAULT;
>>   unsigned int compat_elf_hwcap2 __read_mostly;
>> @@ -1589,6 +1587,12 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>>   		.match_list = list,						\
>>   	}
>>   
>> +#define HWCAP_CAP_MATCH(match, cap_type, cap)					\
>> +	{									\
>> +		__HWCAP_CAP(#cap, cap_type, cap)				\
>> +		.matches = match,						\
>> +	}
> 
> Do you actually need this, or can you use HWCAP_MULTI_CAP instead to check
> the mvfr1 fields?

MULTT_CAP gives us ( cap1 || cap2 ||... ) and we want (cap1 && cap2 &&...)

> 
>> +
>>   #ifdef CONFIG_ARM64_PTR_AUTH
>>   static const struct arm64_cpu_capabilities ptr_auth_hwcap_addr_matches[] = {
>>   	{
>> @@ -1662,8 +1666,35 @@ static const struct arm64_cpu_capabilities arm64_elf_hwcaps[] = {
>>   	{},
>>   };
>>   
>> +#ifdef CONFIG_COMPAT
>> +static bool compat_has_neon(const struct arm64_cpu_capabilities *cap, int scope)
>> +{
>> +	/*
>> +	 * Check that all of MVFR1_EL1.{SIMDSP, SIMDInt, SIMDLS} are available,
>> +	 * in line with that of arm32 as in vfp_init(). We make sure that the
>> +	 * check is future proof, by making sure value is non-zero.
>> +	 */
>> +	u32 mvfr1;
>> +
>> +	WARN_ON(scope == SCOPE_LOCAL_CPU && preemptible());
>> +	if (scope == SCOPE_SYSTEM)
>> +		mvfr1 = read_sanitised_ftr_reg(SYS_MVFR1_EL1);
>> +	else
>> +		mvfr1 = read_sysreg_s(SYS_MVFR1_EL1);
>> +
>> +	return (mvfr1 & (0xf << MVFR1_SIMDSP_SHIFT)) &&
>> +		(mvfr1 & (0xf << MVFR1_SIMDINT_SHIFT)) &&
>> +		(mvfr1 & (0xf << MVFR1_SIMDLS_SHIFT));
> 
> If you can't use HWCAP_MULTI_CAP, can you use cpuid_feature_extract_field()
> instead of hardcoding shifts of 0xf?

Sure, that sounds better. will do that.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
