Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC051CB4E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 18:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=31k3DO/X0F7lnFZCpjNmCJyTDWy9HUDIovRvFi3weIQ=; b=Fly4wAD6hqqyoXxfJiLybMlSa
	ppdLmfdVun5l8vh4zfP4xULs5WRg1dDvyBUVR0GQ+0DjrTl9LZAiZLUNFtmiD/pZrZYhsIQEMRzzl
	4FIMY1+xNabs81DsThR6Z53/PmNhZt4Y5+c2SCKfW2b50MCfngKcuGPNv4DLryaTHnmvilm7dzzsR
	O6SiV1/Jo96Qcg24UNq/MIg+UaSbViGJIFLXbFwgEnv9wJmrgD0HBVsowFIgVCa0PPnjOD5X3C+f3
	5Px5hiJmRWL/LbdsOGYR79fJMHo+5NCit6CRqxtOJHlVDTBMQxc8Oxi+Cb5KqivGCJoIAsdqqlww/
	Ply7umyoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX5lh-0008QR-JG; Fri, 08 May 2020 16:22:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX5lZ-0008Pt-LH
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 16:22:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F06111FB;
 Fri,  8 May 2020 09:22:21 -0700 (PDT)
Received: from [10.57.27.192] (unknown [10.57.27.192])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 296413F71F;
 Fri,  8 May 2020 09:22:17 -0700 (PDT)
Subject: Re: [PATCH v2 3/4] arm64: cpufeature: Modify address authentication
 cpufeature to exact
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
 <1586842314-19527-4-git-send-email-amit.kachhap@arm.com>
 <20200506171350.GH2878@gaia>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <426d96ef-6a89-6ee5-c0e0-383b297f7f9f@arm.com>
Date: Fri, 8 May 2020 21:51:53 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200506171350.GH2878@gaia>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_092225_738363_FE921D6E 
X-CRM114-Status: GOOD (  18.67  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 5/6/20 10:43 PM, Catalin Marinas wrote:
> On Tue, Apr 14, 2020 at 11:01:53AM +0530, Amit Daniel Kachhap wrote:
>> This patch modifies the address authentication cpufeature type to EXACT
>> from earlier LOWER_SAFE as the different configurations added for Armv8.6
>> enhanced PAC have different behaviour and there is no tunable to enable the
>> lower safe versions. The safe value is set as 0.
>>
>> After this change, if there is any variation in configurations in secondary
>> cpus from boot cpu then those cpus are marked tainted. The KVM guests may
>> completely disable address authentication if there is any such variations
>> detected.
>>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>>   arch/arm64/kernel/cpufeature.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>> index 08795025409c..599b03df2f93 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -154,9 +154,9 @@ static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
>>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FCMA_SHIFT, 4, 0),
>>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_JSCVT_SHIFT, 4, 0),
>>   	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
>> -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_API_SHIFT, 4, 0),
>> +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_API_SHIFT, 4, 0),
>>   	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
>> -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_APA_SHIFT, 4, 0),
>> +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_APA_SHIFT, 4, 0),
>>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_DPB_SHIFT, 4, 0),
>>   	ARM64_FTR_END,
> 
> Is this sufficient? If we have the boot CPU already enabling the ptrauth
> and we get a secondary CPU with a different ISAR1 field that matches the
> address auth in cpufeature.c, we still allow it to boot. We no longer
> report the feature to the user system_supports_address_auth() is true
> while system_supports_generic_auth() would be false as it checks the
> sanitised feature registers.

Yes agreed. Generic authentication also needs EXACT cpufeature type.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
