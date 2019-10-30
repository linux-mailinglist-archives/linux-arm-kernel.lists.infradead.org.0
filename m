Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A872E957E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 05:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Iq7mUSXnHDKAHHqEnmNe+/n0EI5PNlR1Tjpt23irsw=; b=WbANIupPRP5ceZWkOjjByi5xi
	i8lIoRrZ/tKb398gflqKl4yyYXa4qEowFC5UVmPX+NBNyUt3G6IC7W8eLZWWYyTsbX+p0MhBMx1K3
	W0VuuJxy7wtY5XPUmjnqUiqcpEUk0ZVPAbzw3iV7tla4TJsjDG5EPBYTbf3QZABklckyzNszgLnkb
	meSMCI/6AEnJJZW6VuumdxgWGo+0/5NEBGn73EldZCOc/AgIBT4/99kLghyscYczlQqJEV38dDqYs
	1mcJq67EIkzxF+MH8GFgDUoCJ4+IurtZ24IzwXSqq9jdzrpLPkKDmQGVsSoZKRePESjlRp71psSJL
	d/mrhxIUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPfCV-0007nz-A2; Wed, 30 Oct 2019 04:03:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPfCL-0007nI-7m
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 04:03:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA6E41F1;
 Tue, 29 Oct 2019 21:03:04 -0700 (PDT)
Received: from [10.162.0.144] (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9588A3F6C4;
 Tue, 29 Oct 2019 21:03:01 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH 08/11] arm64: unwind: strip PAC from kernel addresses
To: James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
 <1571300065-10236-9-git-send-email-amit.kachhap@arm.com>
 <b62449d5-63fb-cecf-ab58-148d287248c5@arm.com>
Message-ID: <f36b56a8-70b7-1c1d-ab52-89af561bd990@arm.com>
Date: Wed, 30 Oct 2019 09:32:59 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <b62449d5-63fb-cecf-ab58-148d287248c5@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_210305_367273_9FE32424 
X-CRM114-Status: GOOD (  23.94  )
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 10/23/19 11:06 PM, James Morse wrote:
> Hi Amit,
> 
> On 17/10/2019 09:14, Amit Daniel Kachhap wrote:
>> From: Kristina Martsenko <kristina.martsenko@arm.com>
>>
>> When we enable pointer authentication in the kernel, LR values saved to
>> the stack will have a PAC which we must strip in order to retrieve the
>> real return address.
>>
>> Strip PACs when unwinding the stack in order to account for this.
>>
>> Reviewed-by: Kees Cook <keescook@chromium.org>
>> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
>> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> 
> Sign-off chain Nit:
> These Signed-off-by are supposed to be a chain of who handled the patch before it got to
> Linus' tree. The first entry should match the 'From', the last should match the person
> posting the patch.
ok will do.
> 
> 
> I suspect the __builtin_return_address() patch should appear before this one, as
> start_backtrace() callers pass that in as the first 'pc' value.
> 
>> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
>> index 599dd09..a75dc89 100644
>> --- a/arch/arm64/include/asm/pointer_auth.h
>> +++ b/arch/arm64/include/asm/pointer_auth.h
>> @@ -59,12 +59,15 @@ extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
>>    * The EL0 pointer bits used by a pointer authentication code.
>>    * This is dependent on TBI0 being enabled, or bits 63:56 would also apply.
> 
> It might be worth updating the comment now we have the kernel version too.
ok.
> 
> 
>>    */
>> -#define ptrauth_user_pac_mask()	GENMASK(54, vabits_actual)
>> +#define ptrauth_user_pac_mask()		GENMASK(54, vabits_actual)
>> +#define ptrauth_kernel_pac_mask()	(GENMASK(63, 56) | GENMASK(54, VA_BITS))
> 
> (I see everywhere else we use GENMASK_ULL() for >32 bit values. It seems to work without it)
ok.
> 
> 
>> -/* Only valid for EL0 TTBR0 instruction pointers */
> 
> Hmm, I suspect this is because the psuedo code's AArch64.BranchAddr removes Tags and PAC.
> If you get a value from the LR, it should have been a PC, so it can't have a tag. It might
> have been signed, so has a PAC that this function removes.
yes.
> 
> If you gave this a Tagged pointer, it would keep the tag. Is that intended?
> (If not, can we fix the comment instead of removing it.)
I will fix the comment.
> 
> 
>>   static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
>>   {
>> -	return ptr & ~ptrauth_user_pac_mask();
>> +	if (ptr & BIT_ULL(55))
>> +		return ptr | ptrauth_kernel_pac_mask();
>> +	else
>> +		return ptr & ~ptrauth_user_pac_mask();
>>   }
>>   
>>   #define ptrauth_thread_init_user(tsk)					\
>> diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
>> index a336cb1..49eb1c3 100644
>> --- a/arch/arm64/kernel/stacktrace.c
>> +++ b/arch/arm64/kernel/stacktrace.c
>> @@ -14,6 +14,7 @@
>>   #include <linux/stacktrace.h>
>>   
>>   #include <asm/irq.h>
>> +#include <asm/pointer_auth.h>
>>   #include <asm/stack_pointer.h>
>>   #include <asm/stacktrace.h>
>>   
>> @@ -84,6 +85,8 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
>>   	frame->prev_fp = fp;
>>   	frame->prev_type = info.type;
>>   
>> +	frame->pc = ptrauth_strip_insn_pac(frame->pc);
> 
> Could this be against the frame->pc assignment? (Its evidently far enough away that diff
> would trim this line out if someone adds something just after!)
Yes there is some re-assignment later. I will check this one.
> 
> 
> Do you need to fixup __show_regs()? This reads regs->regs[30], and passes it to printk()s
> %pS which will try to find the entry in kallsyms.
Good pointer. I will check it.

Thanks,
Amit Daniel

> 
> 
> Thanks,
> 
> James
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
