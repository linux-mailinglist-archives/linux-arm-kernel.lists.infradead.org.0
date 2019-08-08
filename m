Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD98E85E1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cpcDTjH6v1e3ISv0PcmQjOfrUiKOsRKOkOXqfxlSgz4=; b=rQnDrVa7SP/hB3ADk+0Ph2oYj
	Q+xuvVyDCK6qoDQsYFEJMToqniSUGalKoN7yiOtRyjuVQ3dWJu6K6lHIpHqbrcAWXQUNCvs22ur/W
	YDzg5ar2N8U/CunVGI829AFKjwddTxhSOeOSkf0ACwAbCwTo3U8xJLnAHpiuPXqx+LVZFQu3QMQK2
	AH+Or4SdVJPtVHYnqapAAGeGDbjjyPR0kj2bg1Lx6VKpS9ce3icwqDhnBAhJDW20nJOStUdA8Ye2T
	BJas5HDDADQY4HoUCpEKd4T+R3dS0U4JFRsUfIwlQ/vdvavWe8c0TLWW+IhLL3JfW6J0I/Q4k0z95
	jK54Roz6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvebY-0000O8-61; Thu, 08 Aug 2019 09:21:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hveak-0008Tf-J5
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:20:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B46CB1576;
 Thu,  8 Aug 2019 02:20:13 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 22ED33F706;
 Thu,  8 Aug 2019 02:20:13 -0700 (PDT)
Subject: Re: [PATCH] arm64: Clarify when cpu_enable() is called
To: will@kernel.org, broonie@kernel.org
References: <20190806170043.35588-1-broonie@kernel.org>
 <20190807160107.fpanxo4iimhg743c@willie-the-truck>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <460ad751-9b15-03c8-2279-d90837e94219@arm.com>
Date: Thu, 8 Aug 2019 10:20:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807160107.fpanxo4iimhg743c@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_022014_889603_9A08F33E 
X-CRM114-Status: GOOD (  21.63  )
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
Cc: catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/08/2019 17:01, Will Deacon wrote:
> [+Suzuki]
> 
> On Tue, Aug 06, 2019 at 06:00:43PM +0100, Mark Brown wrote:
>> Strengthen the wording in the documentation for cpu_enable() to make it
>> more obvious to readers not already familiar with the code when the core
>> will call this callback and that this is intentional.
>>
>> Signed-off-by: Mark Brown <broonie@kernel.org>
>> ---
>>   arch/arm64/include/asm/cpufeature.h | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
>> index cf65a47ee6b4..3d8afcf687d9 100644
>> --- a/arch/arm64/include/asm/cpufeature.h
>> +++ b/arch/arm64/include/asm/cpufeature.h
>> @@ -289,9 +289,9 @@ struct arm64_cpu_capabilities {
>>   	u16 type;
>>   	bool (*matches)(const struct arm64_cpu_capabilities *caps, int scope);
>>   	/*
>> -	 * Take the appropriate actions to enable this capability for this CPU.
>> -	 * For each successfully booted CPU, this method is called for each
>> -	 * globally detected capability.
>> +	 * Take the appropriate actions to configure this capability for this
>> +	 * CPU.  This will be called on all CPUs in the system if the
>> +	 * capability is detected anywhere in the system.
>>   	 */
>>   	void (*cpu_enable)(const struct arm64_cpu_capabilities *cap);
>>   	union {
> 
> That's not quite right though either, is it? We need to take into account
> the scope of the capability/erratum as well, 

Exactly. Each capability is detected based on the "SCOPE" of the capability.
So, the above statement is clearly misleading (i.e, mentioning the case for the
LOCAL_CPU scope capabilities) and is wrong for SYSTEM scope. For that matter,
one should not talk about the "where" it is detected, as long as he understands
the "scope" of the capability.

since we don't /always/ call
> this function for everybody.
> 
> Suzuki, are there any cases where ->cpu_enable() may be called on a CPU
> without the feature outside of ARM64_CPUCAP_LOCAL_CPU_ERRATUM or
> ARM64_CPUCAP_BOOT_RESTRICTED_CPU_LOCAL_FEATURE?

The callback can be issued for any "capability" with LOCAL_CPU scope, provided
the capability is detected before the system finalizes the list. So, it applies
for both the above and the ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
