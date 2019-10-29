Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B589FE87A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:01:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JxnOJSFGH/+K9keeVJZKAzpcvmh7XlEmX/xatBhM0kA=; b=VZdUkyleMHUnN7+Catq5v++Ye
	HOoSB/FhrNqs69AYb4mR0ERqoFvipvOXjX1bQJDX8EaLij+F7eU0D4EVAIiIx7A19w7IbC45eXhjl
	IGqbF+QoWEgfnGgfjr6l4nwyZxYI5qX+XYkXbUY4jzQJN6i12jyqlkrrqxaaTRj4q6Li12xTAsmMJ
	/7Lr1pYnjtiEItjIXFoFt7N/RK1uGex8Fbrv9tBdOjR0+F5TiA2HoT5sce8Ls/FD8FMCyk+1NyBjK
	T9AH/Cf5ut9PALodd9mUlXf8Z1sl7WRo8hX8jCoVQO7W+Led63Q6kO45cxS/mYGiBBmuL+LTV9ggw
	zRPNdeTPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQBJ-0008Lp-MI; Tue, 29 Oct 2019 12:01:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQB5-0008D4-OH
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:00:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C98F41F1;
 Tue, 29 Oct 2019 05:00:44 -0700 (PDT)
Received: from [10.37.13.3] (unknown [10.37.13.3])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 261F03F71E;
 Tue, 29 Oct 2019 05:00:42 -0700 (PDT)
Subject: Re: [PATCH] arm64: cpufeature: Enable Qualcomm erratas
To: will@kernel.org, bjorn.andersson@linaro.org
References: <20191029060432.1208859-1-bjorn.andersson@linaro.org>
 <20191029113956.GC12103@willie-the-truck>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <1d1a3dca-16ce-f541-5d78-e61ad24227e0@arm.com>
Date: Tue, 29 Oct 2019 12:04:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20191029113956.GC12103@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_050047_855435_CDAEC735 
X-CRM114-Status: GOOD (  20.28  )
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, broonie@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/29/2019 11:39 AM, Will Deacon wrote:
> On Mon, Oct 28, 2019 at 11:04:32PM -0700, Bjorn Andersson wrote:
>> With the introduction of 'cce360b54ce6 ("arm64: capabilities: Filter the
>> entries based on a given mask")' the Qualcomm erratas are no long
>> applied.
>>
>> The result of not applying errata 1003 is that MSM8996 runs into various
>> RCU stalls and fails to boot most of the times.
>>
>> Give both 1003 and 1009 a "type" to ensure they are not filtered out in
>> update_cpu_capabilities().
> 
> Oh nasty. Thanks for debugging and fixing this.
> 
>> Fixes: cce360b54ce6 ("arm64: capabilities: Filter the entries based on a given mask")
>> Cc: stable@vger.kernel.org
>> Reported-by: Mark Brown <broonie@kernel.org>
>> Suggested-by: Will Deacon <will@kernel.org>
>> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>> ---
>>   arch/arm64/kernel/cpu_errata.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
>> index df9465120e2f..cdd8df033536 100644
>> --- a/arch/arm64/kernel/cpu_errata.c
>> +++ b/arch/arm64/kernel/cpu_errata.c
>> @@ -780,6 +780,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
>>   	{
>>   		.desc = "Qualcomm Technologies Falkor/Kryo erratum 1003",
>>   		.capability = ARM64_WORKAROUND_QCOM_FALKOR_E1003,
>> +		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
>>   		.matches = cpucap_multi_entry_cap_matches,
> 
> This should probably be ARM64_CPUCAP_LOCAL_CPU_ERRATUM instead, but I'll
> want Suzuki's ack before I take the change.

Yes, it must be ARM64_CPUCAP_LOCAL_CPU_ERRATUM.

It may be a good idea to stick in a check to make sure that the scope is
set for all the capabilities in a separate patch. e.g,

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index d260e3bdf07b..51a79b4a44eb 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -546,6 +546,8 @@ static void __init
  init_cpu_hwcaps_indirect_list_from_array(const struct 
arm64_cpu_capabilities *caps)
  {
  	for (; caps->matches; caps++) {
+		WARN(!cpucap_default_scope(caps),
+		     "Invalid scope for capability %d\n", caps->capability);
  		if (WARN(caps->capability >= ARM64_NCAPS,
  			"Invalid capability %d\n", caps->capability))
			continue;

Otherwise looks good to me.

>>   		.match_list = qcom_erratum_1003_list,
>>   	},
>> @@ -788,6 +789,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
>>   	{
>>   		.desc = "Qualcomm erratum 1009, ARM erratum 1286807",
>>   		.capability = ARM64_WORKAROUND_REPEAT_TLBI,
>> +		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
>>   		ERRATA_MIDR_RANGE_LIST(arm64_repeat_tlbi_cpus),
> 
> ERRATA_MIDR_RANGE_LIST sets the type already, so I think this is redundant.
> 
> Will
> 



Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
