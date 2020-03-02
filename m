Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B44175AC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 13:48:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ohV3IN6u6LEHswJovrALOonh08ZagFFwQuHYXefOx4Y=; b=HOtQm5XCyKx/eUlzt7fXBvaPg
	9z8bWKvaVl0mDcWro81h6hhE7QHagUxDAtcwqRU+P3qB1VZok30lSJDKzvNrtEpz76jzaocJP0qmW
	Eydfz8YnWO1BnQGmQkwLY4b2vlEuvzqauHq8nJf6haD7waukq5p1eRCY6TbAJa+TEpWIccJhTxevo
	C/lwnmQ+c3ZrhSBwfnmQj03pK3i5pwNzThcM1FsLDYlQEy3F6xU0TNMpgSI8nXsnrzO8aFZ/rg7dO
	gTdsSiVPbo64Kr7QCl75m2KoJte7NwwcVkdkdHpCxPFywnzrt5H+HMMbnWmZcAzCwUoeyLGJZGTNy
	gbXLj9Mrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8kUm-00078Q-EH; Mon, 02 Mar 2020 12:48:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8kUe-00077A-Qs
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 12:48:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF5B22F;
 Mon,  2 Mar 2020 04:48:19 -0800 (PST)
Received: from [10.163.1.6] (unknown [10.163.1.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9181E3F534;
 Mon,  2 Mar 2020 04:48:16 -0800 (PST)
Subject: Re: [PATCH 1/2] arm64: ptrauth: add pointer authentication Armv8.6
 enhanced feature
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <1582117240-15330-1-git-send-email-amit.kachhap@arm.com>
 <1582117240-15330-2-git-send-email-amit.kachhap@arm.com>
 <20200228115736.GA3275@willie-the-truck>
 <20200228120314.GD36089@lakrids.cambridge.arm.com>
 <20200228122345.GC3275@willie-the-truck>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <194f0008-4071-b143-f326-2f067e3b82fe@arm.com>
Date: Mon, 2 Mar 2020 18:18:17 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200228122345.GC3275@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_044820_960330_3BCCCED9 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2/28/20 5:53 PM, Will Deacon wrote:
> On Fri, Feb 28, 2020 at 12:03:14PM +0000, Mark Rutland wrote:
>> On Fri, Feb 28, 2020 at 11:57:37AM +0000, Will Deacon wrote:
>>> On Wed, Feb 19, 2020 at 06:30:39PM +0530, Amit Daniel Kachhap wrote:
>>>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>>>> index 8d1c979..a4f8adb 100644
>>>> --- a/arch/arm64/kernel/cpufeature.c
>>>> +++ b/arch/arm64/kernel/cpufeature.c
>>>> @@ -154,9 +154,9 @@ static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
>>>>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FCMA_SHIFT, 4, 0),
>>>>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_JSCVT_SHIFT, 4, 0),
>>>>   	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
>>>> -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_API_SHIFT, 4, 0),
>>>> +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_API_SHIFT, 4, 0),
>>>>   	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
>>>> -		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_APA_SHIFT, 4, 0),
>>>> +		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_APA_SHIFT, 4, 0),
>>>>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_DPB_SHIFT, 4, 0),
>>>>   	ARM64_FTR_END,
>>>
>>> Hmm. This is a user-visible change and should probably be in its own patch.
>>> It also means we will no longer advertise PAC on systems where not all of
>>> the cores have "Enhanced PAC"; is that really necessary?
>>
>> It matters for KVM, since a guest won't expect the enhanced PAC trap if
>> the ID registers say it does not have it.
>>
>> For userspace, the difference is it'll get a SIGILL on the AUT*
>> instruction rather than a SIGSEGV when using the result of the AUT*
>> instruction.
> 
> Yes, if PAC is enabled.
> 
>>> Generally we rely on incremental updates to unsigned ID register fields
>>> being a superset (i.e. compatible with) the old behaviour. If that's not
>>> the case here, then older kernels are broken and we may need new HWCAPs.
>>
>> In this case, the behaviour isn't a strict superset. Enhanced PAC
>> unconditionally changed the behaviour of AUT* (i.e. there's no opt-in
>> with a control bit), but it's not clear to me how much this matters for
>> userspace.
> 
> Doesn't that violate D13.1.3 "Principles of the ID scheme for fields in
> ID registers"?
> 
> The part I dislike is that older kernels will happily advertise PAC to
> userspace on a system with mismatched legacy/enhanced PAC, and so the
> change above doesn't make sense for userspace because the HWCAPs are
> already unreliable.

How to got about it? Shall I send this part as a separate fix patch
mentioning the requirement for doing it?

//Amit
> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
