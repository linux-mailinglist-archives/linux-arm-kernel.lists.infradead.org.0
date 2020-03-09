Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D510017E03A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:28:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=agm1KHScxJM3xwwlXVb7SuumqSvmzfmXLLRXtmkqOS8=; b=JGlU4AqttbN1iLaNDLpAXmiRc
	uHTGhZGLFrbGZmmac2Fy+oFrQamgMjgwC4xLQhwTNydA9warmrbyGCRDPbZ5n4Hzx7iBJ/uQmHO4d
	r6Lo9wo5JJuGHtHlD7N2OvIz75J2YJGCNfygMbgkzvG9zDZ4usBaNPEoNUC+C8UP7El2CvuiFNGCa
	tEq60XXRlFThtXs/y/TJhhJCO4rb45RBcL67t8ZnCqhlP5lHomIL1wS7wHlIV67iMrQkKWDbN7ykj
	vz0qvXXH7Ohe0VFGSiw6J9tD8GIpXu8vz8U56ZDSvonu9xFbArHtwtLcW30iNC0pwoZw+ixV59Rbs
	SbODq/DiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHVs-0006bW-OP; Mon, 09 Mar 2020 12:28:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHVl-0006b2-3B
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:27:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E944F30E;
 Mon,  9 Mar 2020 05:27:53 -0700 (PDT)
Received: from [10.163.1.218] (unknown [10.163.1.218])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 087993F6CF;
 Mon,  9 Mar 2020 05:27:46 -0700 (PDT)
Subject: Re: [PATCH v6 12/18] arm64: mask PAC bits of __builtin_return_address
To: James Morse <james.morse@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-13-git-send-email-amit.kachhap@arm.com>
 <6171e139-cc10-53b3-1121-0053fc947b49@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <44df1424-9bc5-e5e9-3c89-0eab66419bff@arm.com>
Date: Mon, 9 Mar 2020 17:57:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6171e139-cc10-53b3-1121-0053fc947b49@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_052757_225457_82D2796B 
X-CRM114-Status: GOOD (  27.91  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 3/7/20 12:37 AM, James Morse wrote:
> Hi Amit,
> 
> On 06/03/2020 06:35, Amit Daniel Kachhap wrote:
>> This redefines __builtin_return_address to mask pac bits
>> when Pointer Authentication is enabled. As __builtin_return_address
>> is used mostly used to refer to the caller function symbol address
>> so masking runtime generated pac bits will help to find the match.
> 
> I'm not entirely sure what problem you are trying to solve from this paragraph.
> 
> 
>> This patch adds a new file (asm/compiler.h) and is transitively
>> included (via include/compiler_types.h) on the compiler command line
>> so it is guaranteed to be loaded and the users of this macro will
>> not find a wrong version.
>>
>> A helper macro ptrauth_kernel_pac_mask is created for this purpose
>> and added in this file. A similar macro ptrauth_user_pac_mask exists
>> in pointer_auth.h and is now moved here for the sake of consistency.
> 
>> This change fixes the utilities like cat /proc/vmallocinfo to show
>> correct symbol names.
> 
> This is to avoid things like:
> | 0x(____ptrval____)-0x(____ptrval____)   20480 0xb8b8000100f75fc pages=4 vmalloc N0=4
> | 0x(____ptrval____)-0x(____ptrval____)   20480 0xc0f28000100f75fc pages=4 vmalloc N0=4
> 
> Where those 64bit values should be the same symbol name, not different LR values.
> 
> Could you phrase the commit message to describe the problem, then how you fix it.
> something like:
> | Functions like vmap() record how much memory has been allocated by their callers,
> | callers are identified using __builtin_return_address(). Once the kernel is using
> | pointer-auth the return address will be signed. This means it will not match any kernel
> | symbol, and will vary between threads even for the same caller.
> |
> | Use the pre-processor to add logic to strip the PAC to __builtin_return_address()
> | callers.
> 

Thanks for the detailed description. I will update my commit message.

> 
>> diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
>> new file mode 100644
>> index 0000000..085e7cd0
>> --- /dev/null
>> +++ b/arch/arm64/include/asm/compiler.h
>> @@ -0,0 +1,20 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +#ifndef __ASM_COMPILER_H
>> +#define __ASM_COMPILER_H
>> +
>> +#if defined(CONFIG_ARM64_PTR_AUTH)
>> +
>> +/*
>> + * The EL0/EL1 pointer bits used by a pointer authentication code.
>> + * This is dependent on TBI0/TBI1 being enabled, or bits 63:56 would also apply.
>> + */
>> +#define ptrauth_user_pac_mask()		GENMASK_ULL(54, vabits_actual)
>> +#define ptrauth_kernel_pac_mask()	GENMASK_ULL(63, vabits_actual)
>> +
>> +#define __builtin_return_address(val)				\
>> +	(void *)((unsigned long)__builtin_return_address(val) |	\
>> +	ptrauth_kernel_pac_mask())
> 
> 
> This is pretty manky, ideally we would have some __arch_return_address() hook for this,
> but this works, and lets us postpone any tree-wide noise until its absolutely necessary.
> (I assume if this does ever break, it will be a build error)

ok.

> 
> 
> You add ptrauth_strip_insn_pac() in this patch, but don't use it until the next one.
> However... could you use it here?

Yes ptrauth_strip_insn_pac can be used here not as a C function but as a 
macro. I will post in my next version.

> 
> This would go wrong if __builtin_return_address() legitimately returned a value that was
> mapped by TTBR0, we would force the top bits to be set instead of clearing the PAC bits.
> This would corrupt the value instead of corrupting it.
> 
> I don't think there is anywhere this could happen today, but passing callbacks into UEFI
> runtime services or making kernel calls from an idmap may both do this.

I didnt thought about this scenario so did this way.

> 
> 
> With that:
> Reviewed-by: James Morse <james.morse@arm.com>

Thankyou.

Cheers,
Amit
> 
> 
> 
> Thanks!
> 
> James
> 
> 
>> --- a/arch/arm64/include/asm/pointer_auth.h
>> +++ b/arch/arm64/include/asm/pointer_auth.h
>> @@ -68,16 +68,13 @@ static __always_inline void ptrauth_keys_switch_kernel(struct ptrauth_keys_kerne
>>   
>>   extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
>>   
>> -/*
>> - * The EL0 pointer bits used by a pointer authentication code.
>> - * This is dependent on TBI0 being enabled, or bits 63:56 would also apply.
>> - */
>> -#define ptrauth_user_pac_mask()	GENMASK(54, vabits_actual)
>> -
>> -/* Only valid for EL0 TTBR0 instruction pointers */
>> +/* Valid for EL0 TTBR0 and EL1 TTBR1 instruction pointers */
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
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
