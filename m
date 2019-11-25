Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A785108AC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 10:25:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R5znaL/GXrdr4PmWCrPDxDwXu8H0LWOgvKu5F8qUsV8=; b=gBUCAilTloyWEwv8xFfwGgMzC
	aqFc8gFHhs7hXsJAQchi+8Ags21Ku60+cO1UweLDz9u9rPIHiiitFgDAsO9rXLAtQEjRK9UuGFpMW
	7owmD3Gz4juov7bMTQMk2wgg+txx+G96shntMmP3KYc7KZXcpiqHJ3D/U024OgW80nGHt2JbsV2Oi
	PvxIBJJ9KjSDKipN68RSbTx6eGo7kEoTvpSIGC4TPcZXtv3YP0YQ4rE21cXKEv6OZ+qdmq4ECNH7k
	SFF9UTrYKQntdfLJXtM5I7WwPuPYWAH4M2zjRDImBqMeUW38XZUAAyhBDtJvR2cJmjOOGzx6zPSkI
	ejEzia0wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZAcr-0000jM-Ln; Mon, 25 Nov 2019 09:25:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZAci-0000iq-7k
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 09:25:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 361F0328;
 Mon, 25 Nov 2019 01:25:35 -0800 (PST)
Received: from [10.163.1.198] (unknown [10.163.1.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C61E3F6C4;
 Mon, 25 Nov 2019 01:25:23 -0800 (PST)
Subject: Re: [PATCH v2 14/14] lkdtm: arm64: test kernel pointer authentication
To: Richard Henderson <richard.henderson@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-15-git-send-email-amit.kachhap@arm.com>
 <CAKv+Gu9wYhbtWDpXPBox-Yr-RD2P9dF8O+PRub0ECh=My_OfOg@mail.gmail.com>
 <6a30eb05-9100-b92a-62d3-43e5c950de19@linaro.org>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <2274f933-4c0e-b5c3-cad8-5ca6c7eba398@arm.com>
Date: Mon, 25 Nov 2019 14:55:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6a30eb05-9100-b92a-62d3-43e5c950de19@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_012536_367783_3FAB538A 
X-CRM114-Status: GOOD (  21.31  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 11/23/19 12:21 AM, Richard Henderson wrote:
> On 11/21/19 5:39 PM, Ard Biesheuvel wrote:
>> On Tue, 19 Nov 2019 at 13:33, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
>>>
>>> This test is specific for arm64. When in-kernel Pointer Authentication
>>> config is enabled, the return address stored in the stack is signed. This
>>> feature helps in ROP kind of attack. If the matching signature is corrupted
>>> then this will fail in authentication and lead to abort.
>>>
>>> e.g.
>>> echo CORRUPT_PAC > /sys/kernel/debug/provoke-crash/DIRECT
>>>
>>> [   13.118166] lkdtm: Performing direct entry CORRUPT_PAC
>>> [   13.118298] lkdtm: Clearing PAC from the return address
>>> [   13.118466] Unable to handle kernel paging request at virtual address bfff8000108648ec
>>> [   13.118626] Mem abort info:
>>> [   13.118666]   ESR = 0x86000004
>>> [   13.118866]   EC = 0x21: IABT (current EL), IL = 32 bits
>>> [   13.118966]   SET = 0, FnV = 0
>>> [   13.119117]   EA = 0, S1PTW = 0
>>>
>>> Cc: Kees Cook <keescook@chromium.org>
>>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>>> ---
>>> Change since last version:
>>>   * New patch
>>>
>>>   drivers/misc/lkdtm/bugs.c  | 17 +++++++++++++++++
>>>   drivers/misc/lkdtm/core.c  |  1 +
>>>   drivers/misc/lkdtm/lkdtm.h |  1 +
>>>   3 files changed, 19 insertions(+)
>>>
>>> diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
>>> index 7284a22..c9bb493 100644
>>> --- a/drivers/misc/lkdtm/bugs.c
>>> +++ b/drivers/misc/lkdtm/bugs.c
>>> @@ -337,3 +337,20 @@ void lkdtm_UNSET_SMEP(void)
>>>          pr_err("FAIL: this test is x86_64-only\n");
>>>   #endif
>>>   }
>>> +
>>> +void lkdtm_CORRUPT_PAC(void)
>>> +{
>>> +#if IS_ENABLED(CONFIG_ARM64_PTR_AUTH)
>>> +       u64 ret;
>>> +
>>> +       pr_info("Clearing PAC from the return address\n");
>>> +       /*
>>> +        * __builtin_return_address masks the PAC bits of return
>>> +        * address, so set the same again.
>>> +        */
>>> +       ret = (u64)__builtin_return_address(0);
>>> +       asm volatile("str %0, [sp, 8]" : : "r" (ret) : "memory");
>>
>> This looks a bit fragile to me. You are making assumptions about the
>> location of the return address in the stack frame which are not
>> guaranteed to hold.
> 
> Indeed.
> 
>> Couldn't you do this test simply by changing the key?
> 
> That, at least, means you don't have to know the stack frame layout.  However,
> there's a chance (1/32767, I think, for the 48-bit vma case w/o TBI) that
> changing the key will result in the same hash.
> 
> Even when the stack frame happens to be layed out as Amit guesses, the result
> is akin to changing the key, such that hash(key, salt, ptr) == 0.
> 
> While testing this in qemu, I iterate until I find a <key, salt, ptr> tuple
> that definitely produces a different hash.  Usually this loop iterates just
> once, but the occasional failures that I got without iterating were annoying
> (with TBI enabled in userspace, the chance drops to 1/127, so much more frequent).

Nice suggestion. I will check doing it this way in the next iteration.

> 
> 
> r~
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
