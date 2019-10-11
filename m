Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 717B1D3F4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/iPnYkD4r5EwkKaLG8FcjAQ599VSIuwHNY8Otkb+CTU=; b=nLeojNBEdmOY0yNqeMwE/q2fP
	wKpBGeant/yjl9zp/cwX8ES+nP/lI5Q7N3lnWLt7rS0NdWfDaQOjRNDyBYgP8lbxNtb3XZGW8od14
	nKP/MURpCHg9VpV1OUsGXfiDUXm/DmeVjXmVRecinSC4td1jQvfhRi5RnBkZnID86oK8keBmzNqUQ
	dPklYa81ltRd3FNc/hmIFsuAtLOCuKDx8kv0/A/TmZQ6imrgvcBPAKGNFP2o1wbpPw1KY2HoK3tkW
	7cjZe26cylS31UvJcglyu2ikJmNeuMUudgeLwRTNuf5A1PC+LAa5OzRhVvCtF667feA1nz3+lHP5h
	N78tFSe2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iItnX-0003lc-Ne; Fri, 11 Oct 2019 12:13:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iItnN-0003kt-Eb
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:13:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EFA028;
 Fri, 11 Oct 2019 05:13:20 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CBF023F6C4;
 Fri, 11 Oct 2019 05:13:19 -0700 (PDT)
Subject: Re: [PATCH 1/3] arm64: cpufeature: Fix the type of no FP/SIMD
 capability
To: Dave Martin <Dave.Martin@arm.com>
References: <20191010171517.28782-1-suzuki.poulose@arm.com>
 <20191010171517.28782-2-suzuki.poulose@arm.com>
 <20191011113620.GG27757@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <4ba5c423-4e2a-d810-cd36-32a16ad42c91@arm.com>
Date: Fri, 11 Oct 2019 13:13:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191011113620.GG27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_051321_529260_4A195615 
X-CRM114-Status: GOOD (  24.70  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave

On 11/10/2019 12:36, Dave Martin wrote:
> On Thu, Oct 10, 2019 at 06:15:15PM +0100, Suzuki K Poulose wrote:
>> The NO_FPSIMD capability is defined with scope SYSTEM, which implies
>> that the "absence" of FP/SIMD on at least one CPU is detected only
>> after all the SMP CPUs are brought up. However, we use the status
>> of this capability for every context switch. So, let us change
>> the scop to LOCAL_CPU to allow the detection of this capability
>> as and when the first CPU without FP is brought up.
>>
>> Also, the current type allows hotplugged CPU to be brought up without
>> FP/SIMD when all the current CPUs have FP/SIMD and we have the userspace
>> up. Fix both of these issues by changing the capability to
>> BOOT_RESTRICTED_LOCAL_CPU_FEATURE.
>>
>> Fixes: 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> ---
>>   arch/arm64/kernel/cpufeature.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>> index 9323bcc40a58..0f9eace6c64b 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -1361,7 +1361,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>>   	{
>>   		/* FP/SIMD is not implemented */
>>   		.capability = ARM64_HAS_NO_FPSIMD,
>> -		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
>> +		.type = ARM64_CPUCAP_BOOT_RESTRICTED_CPU_LOCAL_FEATURE,
> 
> ARM64_HAS_NO_FPSIMD is really a disability, not a capability.
> 
> Although we have other things that smell like this (CPU errata for
> example), I wonder whether inverting the meaning in the case would
> make the situation easier to understand.

Yes, it is indeed a disability, more on that below.

> 
> So, we'd have ARM64_HAS_FPSIMD, with a minimum (signed) feature field
> value of 0.  Then this just looks like an ARM64_CPUCAP_SYSTEM_FEATURE
> IIUC.  We'd just need to invert the sense of the check in
> system_supports_fpsimd().

This is particularly something we want to avoid with this patch. We want
to make sure that we have the up-to-date status of the disability right
when it happens. i.e, a CPU without FP/SIMD is brought up. With SYSTEM_FEATURE
you have to wait until we bring all the CPUs up. Also, for HAS_FPSIMD,
you must wait until all the CPUs are up, unlike the negated capability.

> 
>>   		.min_field_value = 0,
> 
> (Does .min_field_value == 0 make sense, or is it even used?  I thought
> only the default has_cpuid_feature() match logic uses that.)

True, it is not used for this particular case.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
