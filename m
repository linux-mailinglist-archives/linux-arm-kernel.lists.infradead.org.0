Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 455E210886A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 06:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zdS9ovLwer0kx8Ncjsitx9GuhrF1fEZtq5bGldHUGXk=; b=mjegUVamWdqUkYqIHcf2z1QaC
	beWarQPP6MN8L/IT/lI6tBCiYvDcRLxrpzFWJnRuPd0YH90rfxvAckh2NpBsUaVtICY2upYdmabIP
	9adB/+zfL0cmFrX8stwTnD5hPI+si+vUWymbQzjFXYCXvJULMsknoVVNi/24+4/l1C2U6SHT5NB/R
	RtEOU013YJuCZXyZUz/TA2EsBoUwKYvIHhs661NT5UZyuUzidNI6zFNu6IcmjNrkkottV5xJcF0+T
	kvhtRsVwFXJnJKVAqZuHgVw/CNx8htIoe64+vBDrzsW0C+nirY3cXi2KLFsh8AexLy0f7x5TdZBcB
	FLfDhoxiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ71s-0006fV-J1; Mon, 25 Nov 2019 05:35:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ71k-0006E8-FB
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 05:35:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7B87C31B;
 Sun, 24 Nov 2019 21:35:01 -0800 (PST)
Received: from [10.163.1.198] (unknown [10.163.1.198])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6D3893F6C4;
 Sun, 24 Nov 2019 21:34:53 -0800 (PST)
Subject: Re: [PATCH v2 14/14] lkdtm: arm64: test kernel pointer authentication
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-15-git-send-email-amit.kachhap@arm.com>
 <CAKv+Gu9wYhbtWDpXPBox-Yr-RD2P9dF8O+PRub0ECh=My_OfOg@mail.gmail.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <b6ca27c7-c9ba-17ea-8637-5c069f47246c@arm.com>
Date: Mon, 25 Nov 2019 11:04:48 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu9wYhbtWDpXPBox-Yr-RD2P9dF8O+PRub0ECh=My_OfOg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_213512_596804_FA3033C4 
X-CRM114-Status: GOOD (  20.41  )
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

Hi,

On 11/21/19 11:09 PM, Ard Biesheuvel wrote:
> On Tue, 19 Nov 2019 at 13:33, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
>>
>> This test is specific for arm64. When in-kernel Pointer Authentication
>> config is enabled, the return address stored in the stack is signed. This
>> feature helps in ROP kind of attack. If the matching signature is corrupted
>> then this will fail in authentication and lead to abort.
>>
>> e.g.
>> echo CORRUPT_PAC > /sys/kernel/debug/provoke-crash/DIRECT
>>
>> [   13.118166] lkdtm: Performing direct entry CORRUPT_PAC
>> [   13.118298] lkdtm: Clearing PAC from the return address
>> [   13.118466] Unable to handle kernel paging request at virtual address bfff8000108648ec
>> [   13.118626] Mem abort info:
>> [   13.118666]   ESR = 0x86000004
>> [   13.118866]   EC = 0x21: IABT (current EL), IL = 32 bits
>> [   13.118966]   SET = 0, FnV = 0
>> [   13.119117]   EA = 0, S1PTW = 0
>>
>> Cc: Kees Cook <keescook@chromium.org>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>> Change since last version:
>>   * New patch
>>
>>   drivers/misc/lkdtm/bugs.c  | 17 +++++++++++++++++
>>   drivers/misc/lkdtm/core.c  |  1 +
>>   drivers/misc/lkdtm/lkdtm.h |  1 +
>>   3 files changed, 19 insertions(+)
>>
>> diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
>> index 7284a22..c9bb493 100644
>> --- a/drivers/misc/lkdtm/bugs.c
>> +++ b/drivers/misc/lkdtm/bugs.c
>> @@ -337,3 +337,20 @@ void lkdtm_UNSET_SMEP(void)
>>          pr_err("FAIL: this test is x86_64-only\n");
>>   #endif
>>   }
>> +
>> +void lkdtm_CORRUPT_PAC(void)
>> +{
>> +#if IS_ENABLED(CONFIG_ARM64_PTR_AUTH)
>> +       u64 ret;
>> +
>> +       pr_info("Clearing PAC from the return address\n");
>> +       /*
>> +        * __builtin_return_address masks the PAC bits of return
>> +        * address, so set the same again.
>> +        */
>> +       ret = (u64)__builtin_return_address(0);
>> +       asm volatile("str %0, [sp, 8]" : : "r" (ret) : "memory");
> 
> This looks a bit fragile to me. You are making assumptions about the
> location of the return address in the stack frame which are not
> guaranteed to hold.
Yes agreed.
> 
> Couldn't you do this test simply by changing the key?
Yes it should be possible. I will update it in my next iteration.

Regards,
Amit D
> 
>> +#else
>> +       pr_err("FAIL: For arm64 pointer authentication capable systems only\n");
>> +#endif
>> +}
>> diff --git a/drivers/misc/lkdtm/core.c b/drivers/misc/lkdtm/core.c
>> index cbc4c90..b9c9927 100644
>> --- a/drivers/misc/lkdtm/core.c
>> +++ b/drivers/misc/lkdtm/core.c
>> @@ -116,6 +116,7 @@ static const struct crashtype crashtypes[] = {
>>          CRASHTYPE(STACK_GUARD_PAGE_LEADING),
>>          CRASHTYPE(STACK_GUARD_PAGE_TRAILING),
>>          CRASHTYPE(UNSET_SMEP),
>> +       CRASHTYPE(CORRUPT_PAC),
>>          CRASHTYPE(UNALIGNED_LOAD_STORE_WRITE),
>>          CRASHTYPE(OVERWRITE_ALLOCATION),
>>          CRASHTYPE(WRITE_AFTER_FREE),
>> diff --git a/drivers/misc/lkdtm/lkdtm.h b/drivers/misc/lkdtm/lkdtm.h
>> index ab446e0..bf12b68 100644
>> --- a/drivers/misc/lkdtm/lkdtm.h
>> +++ b/drivers/misc/lkdtm/lkdtm.h
>> @@ -28,6 +28,7 @@ void lkdtm_CORRUPT_USER_DS(void);
>>   void lkdtm_STACK_GUARD_PAGE_LEADING(void);
>>   void lkdtm_STACK_GUARD_PAGE_TRAILING(void);
>>   void lkdtm_UNSET_SMEP(void);
>> +void lkdtm_CORRUPT_PAC(void);
>>
>>   /* lkdtm_heap.c */
>>   void __init lkdtm_heap_init(void);
>> --
>> 2.7.4
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
