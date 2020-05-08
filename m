Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EEC1CA27B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 07:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wp9i4yckfEO7gHJs+czVxTMqj/zqIyuElJL1+AjnZRI=; b=RMLy4uGTyx1pd7
	G5NBe6cx8PDxYeiVUvGDVXWkbnKLKmwSoFkvVNvUVKpSGJp/6kFEdzxGHxUuEQ83BsYCFZKWoP3em
	Byb8Q/dSj15NlR2aOaOQoIggDXyvoPCJ5i4MFZCKwQMBH02zueQyli8h7cR1c/jHg4kuLeB6VU7Cz
	ItXX0BdPy6N8I3DTavFFtS+B8eQ3qhySd+za8qBLizVZEyx4UoM9SgKBj5Sj0w2EeXpVEpzO1LuWU
	828kHE2eyA5M/Z1SIJcQoJrjB+S2zBSh0Z6/ej/mw6B5YCWVj3jC1mBqgz4QPmmvs0rbC+h+VtqSp
	yLybzzvZ5weS4TrI/PVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWv7W-0004YJ-CK; Fri, 08 May 2020 05:00:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWv7M-0004Xt-NM
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 05:00:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B83F530E;
 Thu,  7 May 2020 22:00:11 -0700 (PDT)
Received: from [10.163.73.155] (unknown [10.163.73.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 946313F71F;
 Thu,  7 May 2020 22:00:09 -0700 (PDT)
Subject: Re: [PATCH V3 03/16] arm64/cpufeature: Make doublelock a signed
 feature in ID_AA64DFR0
To: Will Deacon <will@kernel.org>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-4-git-send-email-anshuman.khandual@arm.com>
 <20200505111045.GE19710@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <5cfe374b-d4fa-e17a-9fce-4334356caa19@arm.com>
Date: Fri, 8 May 2020 10:29:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200505111045.GE19710@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_220012_811819_0C746773 
X-CRM114-Status: GOOD (  21.49  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/05/2020 04:40 PM, Will Deacon wrote:
> On Sat, May 02, 2020 at 07:03:52PM +0530, Anshuman Khandual wrote:
>> Double lock feature can have the following possible values.
>>
>> 0b0000 - Double lock implemented
>> 0b1111 - Double lock not implemented
>>
>> But in case of a conflict the safe value should be 0b1111. Hence this must
>> be a signed feature instead. Also change FTR_EXACT to FTR_LOWER_SAFE.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-kernel@vger.kernel.org
>>
>> Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>> ---
>>  arch/arm64/kernel/cpufeature.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>> index 51386dade423..cba43e4a5c79 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -338,7 +338,7 @@ static const struct arm64_ftr_bits ftr_id_mmfr0[] = {
>>  };
>>  
>>  static const struct arm64_ftr_bits ftr_id_aa64dfr0[] = {
>> -	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_EXACT, 36, 28, 0),
>> +	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 36, 28, 0),
> 
> Wait, isn't this buggered today? Shouldn't that 28 be a 4? I think we really

Ahh, right. Will fix it.

> need to:
> 
> 	1. Make it impossible to describe overlapping fields, incomplete
> 	   registers etc (ideally at build-time)

AFICS the _SHIFT defines for a given register must be placed sequentially
with dummy place holders (4 bit wide) for any missing fields. In that case
we could just call BUILD_BUG_ON() for any possible breakage or overlap. But
wondering how and where to loop over these SHIFT values for these registers.

Another way (not build time though) will be to scan through ftr_id_xxx[],
fetch individual arm64_ftr_bits (assuming there are dummy entries for non
existing fields) and assert that arm6r_ftr_bits[shift, width] validates
against the previous arm6r_ftr_bits[shift, width] in an increasing manner.

Either of these methods will require some more thoughts.

> 
> 	2. Have a macro that for 4-bit fields so you don't have to type '4'
> 	   all the time

Except for ftr_single32[], all other arm64_ftr_bits entries have the exact
same shift value (i.e 4). ARM64_FTR_WIDTH sounds good ?

> 
> Suzuki, any ideas how we can make this a bit more robust?
> 
> Will
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
