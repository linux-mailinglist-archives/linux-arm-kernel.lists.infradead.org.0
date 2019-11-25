Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB06C108C7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 12:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ibwpV31J82q2dGAqqBYoi2ePm27Mqd/X/0K/RzXni6c=; b=JT+Y0/wXOUzqHBvpWcjU6AOe3
	xDFjWzGtRLN5HSC9jO+NGnCpIHmDE3F51IwjqaKJ3W24rjvgSo/J5qV6yVGPooXN1xvGC5GVVgwOz
	FVwjhjb3kfXfP9mUA9ATjsV/v7F5qj7MnFsOybUrDouJeoOkL96iK4rN8blrbf9XCxvjPhfIpKSVB
	C97gKkUWSLCsmaQJ+jMTMdTfukh9HL7wLEr+UHH/+kWsZ3Bh1NZ+EZBHCVKhXt1XQQxuvMI/rrewl
	82SK96TJtp5Zjw05XD+7aOXcrZNjtVc06v9UThS0W4JO4yF9SUMsIly3xaKT0aolyQJbjpxWShUM2
	17Vrpmq8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZC84-0004Ti-8a; Mon, 25 Nov 2019 11:02:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZC7t-0004TN-HN
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 11:01:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9CE6731B;
 Mon, 25 Nov 2019 03:01:52 -0800 (PST)
Received: from [10.163.1.198] (unknown [10.163.1.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0BB4E3F52E;
 Mon, 25 Nov 2019 03:01:42 -0800 (PST)
Subject: Re: [PATCH v2 07/14] arm64: initialize and switch ptrauth kernel keys
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-8-git-send-email-amit.kachhap@arm.com>
 <432f8082-c34f-8036-8c5e-fd1fcec9aa17@linaro.org>
 <aa92b083-ddc6-9724-6655-3abc79e78ca9@arm.com>
 <CAKv+Gu_d7RTZZU44NGEqQOgHx7PbLB4dc2qsJvdEBBS0zje1gw@mail.gmail.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <d3324130-2959-d7ed-ccaa-0d2d22a8dc65@arm.com>
Date: Mon, 25 Nov 2019 16:31:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu_d7RTZZU44NGEqQOgHx7PbLB4dc2qsJvdEBBS0zje1gw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_030153_621370_0EDEB9B9 
X-CRM114-Status: GOOD (  15.24  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will.deacon@arm.com>, James Morse <james.morse@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/25/19 3:09 PM, Ard Biesheuvel wrote:
> On Mon, 25 Nov 2019 at 10:34, Amit Kachhap <amit.kachhap@arm.com> wrote:
>>
>>
>>
>> On 11/23/19 12:49 AM, Richard Henderson wrote:
>>> On 11/19/19 12:32 PM, Amit Daniel Kachhap wrote:
>>>> --- a/arch/arm64/include/asm/asm_pointer_auth.h
>>>> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
>>>> @@ -35,11 +35,25 @@ alternative_if ARM64_HAS_GENERIC_AUTH
>>>>    alternative_else_nop_endif
>>>>       .endm
>>>>
>>>> +    .macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
>>>> +    mov     \tmp1, #THREAD_KEYS_KERNEL
>>>> +    add     \tmp1, \tsk, \tmp1
>>>> +alternative_if ARM64_HAS_ADDRESS_AUTH
>>>> +    ldp     \tmp2, \tmp3, [\tmp1, #PTRAUTH_KERNEL_KEY_APIA]
>>>> +    msr_s   SYS_APIAKEYLO_EL1, \tmp2
>>>> +    msr_s   SYS_APIAKEYHI_EL1, \tmp3
>>>> +    isb
>>>> +alternative_else_nop_endif
>>>> +    .endm
>>>
>>> Any reason you didn't put the first two insns in the alternative?
>>
>> Yes these 2 instructions can be moved below. Thanks for the catch.
>>
> 
> Do you even need them? Isn't it possible to do
> 
> ldp \tmp1, \tmp2, [\tsk, #(THREAD_KEYS_KERNEL + PTRAUTH_KERNEL_KEY_APIA)]
> 
> ? Or is the range for the offset insufficient?

Yes the offset exceeds the maximum range so done this way.
> 
> 
>>>
>>> You could have re-used tmp1 instead of requiring tmp3, but at no point are we
>>> lacking tmp registers so it doesn't matter.
>>>
> 
> I think we should fix it nonetheless.

yes.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
