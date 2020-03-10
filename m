Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0F317F936
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 13:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x9UkIOz0vEGIHMuW4lspmoqfMEQQaix+MVkV3obXJ4I=; b=kyUnAlSed3hot0kul7m+SD3AQ
	hwDuVFRquHT1JnXJoaa4hQbF+g2IX1eCeFmSjbNwjktZF/PD4k/GbSj5nvg1qPWeXt0xfOJ3hEnOH
	Y42LvGD9TEXtclkR2Wsr0Ra6cxQjbeC2t17MwPXPt6pyrhGFI0wa0vnwCx25XBGO/IYHIW41Ekybd
	KOAc1ILYAABL7B/sVhRRgmBplkL1J1ztivOMp1XeNR3O93uzmnfM5lD9L6JezVcqLyQUtItX5Y5G5
	FHJlm+c8+W/cX57u6PGzw3xDojG/uQzUmljQF5kGoeIrGL+7PwWMvHlP9Xi5uk7sQvmTRuWyjBp2H
	xP3DwseMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBePG-0005Xe-CE; Tue, 10 Mar 2020 12:54:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBeNq-0004Es-V0
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 12:53:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D5B830E;
 Tue, 10 Mar 2020 05:53:18 -0700 (PDT)
Received: from [10.162.16.120] (a075563-lin.blr.arm.com [10.162.16.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D4B3D3F6CF;
 Tue, 10 Mar 2020 05:53:14 -0700 (PDT)
Subject: Re: [PATCH v6 07/18] arm64: cpufeature: Move cpu capability helpers
 inside C file
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-8-git-send-email-amit.kachhap@arm.com>
 <eb3acde3-ba4c-162d-b1d2-54183ab4e921@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <e3749f3f-e314-c3b8-cf71-b1ea9d699f4e@arm.com>
Date: Tue, 10 Mar 2020 18:23:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <eb3acde3-ba4c-162d-b1d2-54183ab4e921@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_055319_148493_255F657C 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vincenzo,

On 3/10/20 5:50 PM, Vincenzo Frascino wrote:
> Hi Amit,
> 
> On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
> 
> [...]
> 
>>   
>> -static inline bool
>> -cpucap_late_cpu_optional(const struct arm64_cpu_capabilities *cap)
>> -{
>> -	return !!(cap->type & ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU);
>> -}
>> -
>> -static inline bool
>> -cpucap_late_cpu_permitted(const struct arm64_cpu_capabilities *cap)
>> -{
>> -	return !!(cap->type & ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU);
>> -}
>> -
>>   /*
>>    * Generic helper for handling capabilties with multiple (match,enable) pairs
>>    * of call backs, sharing the same capability bit.
>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>> index b12e386..865dce6 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -1363,6 +1363,19 @@ static bool can_use_gic_priorities(const struct arm64_cpu_capabilities *entry,
>>   }
>>   #endif
>>   
>> +/* Internal helper functions to match cpu capability type */
>> +static bool
>> +cpucap_late_cpu_optional(const struct arm64_cpu_capabilities *cap)
>> +{
>> +	return !!(cap->type & ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU);
>> +}
>> +
>> +static bool
>> +cpucap_late_cpu_permitted(const struct arm64_cpu_capabilities *cap)
>> +{
>> +	return !!(cap->type & ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU);
>> +}
>> +
>>   static const struct arm64_cpu_capabilities arm64_features[] = {
>>   	{
>>   		.desc = "GIC system register CPU interface",
>>
> 
> Seems that the signature of the functions above is changed during the migration.
> In particular you dropped "inline". Is there any specific reason?

Earlier Catalin pointed me here [1]. I guess its not a hot-path function.

[1]: https://www.spinics.net/lists/arm-kernel/msg789696.html

Cheers,
Amit
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
