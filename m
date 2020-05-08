Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B0F1CA238
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 06:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cgu4L5yUka9N+MM3i4QpxikXbNcswEuEeTjXJpf79c=; b=rQERv5peJLRE0g
	ERj6KHayo14VbKOkv1dwwjKTWjrX0hyfvt4ooVoN6EXo5+poL+zhu7W2YtZdGjYFe4utiqpApgYRz
	qG+fYpkpSL5ekln+I0HpRMhHQoleSudHI3al/sEhX0jH6BZwSq8xA5Jabq1a4mPmWxWQ5jpyWAnjm
	22TRAj4V/01kKAUlIw8Aed/qY+tdp/jFJOnxkxt4zoletW2aUp3xZBHX1i4xzfdUOUvGmjv1BBO8r
	g32pAWdxZAKfv80/C7aESpFwa5sSwt/hBoTDXM7JtGxxD2fyFQRTE+/qvtTwIbmWS4Z1ny0Xpp7y3
	zLzN3g0l60EEJplgV8aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWuao-0007it-Rj; Fri, 08 May 2020 04:26:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWuag-0007iM-3l
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 04:26:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06A7530E;
 Thu,  7 May 2020 21:26:25 -0700 (PDT)
Received: from [10.163.73.155] (unknown [10.163.73.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B8DAA3F68F;
 Thu,  7 May 2020 21:26:22 -0700 (PDT)
Subject: Re: [PATCH V3 02/16] arm64/cpufeature: Drop TraceFilt feature
 exposure from ID_DFR0 register
To: Will Deacon <will@kernel.org>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
 <1588426445-24344-3-git-send-email-anshuman.khandual@arm.com>
 <20200504202453.GA5012@willie-the-truck>
 <56cd3062-a0c2-6cdf-b7c6-c2b7bf56d23b@arm.com>
 <20200505104250.GA19710@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <26002f7f-865c-bcdb-8394-c8565bebeb5c@arm.com>
Date: Fri, 8 May 2020 09:55:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200505104250.GA19710@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_212626_241882_971E8833 
X-CRM114-Status: GOOD (  27.44  )
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/05/2020 04:12 PM, Will Deacon wrote:
> On Tue, May 05, 2020 at 12:20:41PM +0530, Anshuman Khandual wrote:
>> On 05/05/2020 01:54 AM, Will Deacon wrote:
>>> On Sat, May 02, 2020 at 07:03:51PM +0530, Anshuman Khandual wrote:
>>>> ID_DFR0 based TraceFilt feature should not be exposed to guests. Hence lets
>>>> drop it.
>>>>
>>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>>>> Cc: Will Deacon <will@kernel.org>
>>>> Cc: Marc Zyngier <maz@kernel.org>
>>>> Cc: Mark Rutland <mark.rutland@arm.com>
>>>> Cc: James Morse <james.morse@arm.com>
>>>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>>>> Cc: linux-arm-kernel@lists.infradead.org
>>>> Cc: linux-kernel@vger.kernel.org
>>>>
>>>> Suggested-by: Mark Rutland <mark.rutland@arm.com>
>>>> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>>>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>>>> ---
>>>>  arch/arm64/kernel/cpufeature.c | 1 -
>>>>  1 file changed, 1 deletion(-)
>>>>
>>>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>>>> index 6d032fbe416f..51386dade423 100644
>>>> --- a/arch/arm64/kernel/cpufeature.c
>>>> +++ b/arch/arm64/kernel/cpufeature.c
>>>> @@ -435,7 +435,6 @@ static const struct arm64_ftr_bits ftr_id_pfr1[] = {
>>>>  };
>>>>  
>>>>  static const struct arm64_ftr_bits ftr_id_dfr0[] = {
>>>> -	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 28, 4, 0),
>>>
>>> Hmm, this still confuses me. Is this not now FTR_NONSTRICT? Why is that ok?
>>
>> Mark had mentioned about it earlier (https://patchwork.kernel.org/patch/11287805/)
>> Did I misinterpret the first part ? Could not figure "capping the emulated debug
>> features" part. Probably, Mark could give some more details.
>>
>> From the earlier discussion:
>>
>> * ID_DFR0 fields need more thought; we should limit what we expose here.
>>   I don't think it's valid for us to expose TraceFilt, and I suspect we
>>   need to add capping for debug features we currently emulate.
> 
> Sorry, I for confused (again) by the cpufeature code :) I'm going to add
> the following to my comment:
> 
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index c1d44d127baa..9b05843d67af 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -53,6 +53,11 @@
>   *   arbitrary physical CPUs, but some features not present on the host are
>   *   also advertised and emulated. Look at sys_reg_descs[] for the gory
>   *   details.
> + *
> + * - If the arm64_ftr_bits[] for a register has a missing field, then this
> + *   field is treated as STRICT RES0, including for read_sanitised_ftr_reg().
> + *   This is stronger than FTR_HIDDEN and can be used to hide features from
> + *   KVM guests.
>   */
>  
>  #define pr_fmt(fmt) "CPU features: " fmt
> 

Wondering if you will take this comment via a separate patch/branch or
should I fold it here instead.

> 
> However, I think we really want to get rid of ftr_generic_32bits[] entirely
> and spell out all of the register fields, even just using comments for the
> fields we're omitting:

Should we do that later or in this series itself ?

> 
> 
> @@ -425,7 +430,7 @@ static const struct arm64_ftr_bits ftr_id_pfr1[] = {
>  };
>  
>  static const struct arm64_ftr_bits ftr_id_dfr0[] = {
> -	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 28, 4, 0),
> +	/* 31:28	TraceFilt */
>  	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 24, 4, 0xf),	/* PerfMon */
>  	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 20, 4, 0),
>  	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 16, 4, 0),
> 
> 
> Longer term, I think we'll probably want to handle these within
> ARM64_FTR_BITS, as we may end up with features that we want to hide from
> KVM guests but not from the host kernel.

Sure, but for now will fold the above changes here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
