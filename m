Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65571E957B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 05:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pxc6OxQaDYcJ3o1DptiSq7HBqunZyM9lkX8mxBs/8B4=; b=NyFxpzSZQlui4llv/8JB6WZps
	wOdssjDDpPBJRev6uJ20n7Tn9fDDFeO2zjfqK4xO5HwNBleDCYpGvtyFLdiGrJ24lvE3n60xOeC6C
	IEqJlJ2wrosq2uw5QhYVopBKAMXZQNB4+5MtY2p0PW+KIZDvCntq0NeJiuDzc+yyAxc3/HXU02R4x
	4wlGkjOwswOszn3iShz87cceilNc4jfcOGOsVy1uJSOaUiiLCoQMTO8kS6ta+GVPeQLSTZDVsBkDH
	rwVMnaQgi9k7nwToD986qY4FJrvBvEBeNLv6qi4u9+qFMSL4WFKb4uhpJVw+YgQb1O0+ZCuekEN/8
	0SIdVvWSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPfB2-0007Ax-M2; Wed, 30 Oct 2019 04:01:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPfAp-0007AR-KK
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 04:01:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E749B1F1;
 Tue, 29 Oct 2019 21:01:30 -0700 (PDT)
Received: from [10.162.0.144] (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C020F3F6C4;
 Tue, 29 Oct 2019 21:01:27 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH 05/11] arm64: enable ptrauth earlier
To: James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
 <1571300065-10236-6-git-send-email-amit.kachhap@arm.com>
 <dc7ea4ea-5113-8420-22e4-56ed49cc0da9@arm.com>
Message-ID: <de48a8c5-dd9e-f052-1585-7a2f7c6fa1dc@arm.com>
Date: Wed, 30 Oct 2019 09:31:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <dc7ea4ea-5113-8420-22e4-56ed49cc0da9@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_210131_757805_1934CD2C 
X-CRM114-Status: GOOD (  26.80  )
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

Hi,

On 10/23/19 11:02 PM, James Morse wrote:
> Hi Amit,
> 
> On 17/10/2019 09:14, Amit Daniel Kachhap wrote:
>> From: Kristina Martsenko <kristina.martsenko@arm.com>
>>
>> When the kernel is compiled with pointer auth instructions, the boot CPU
>> needs to start using address auth very early, so change the cpucap to
>> account for this.
>>
>> Pointer auth must be enabled before we call C functions, because it is
>> not possible to enter a function with pointer auth disabled and exit it
>> with pointer auth enabled. Note, mismatches between architected and
>> IMPDEF algorithms will still be caught by the cpufeature framework (the
>> separate *_ARCH and *_IMP_DEF cpucaps).
>>
>> Note the change in behavior: if the boot CPU has address auth and a late
>> CPU does not, then we offline the late CPU. Until now we would have just
>> disabled address auth in this case.
>>
>> Leave generic authentication as a "system scope" cpucap for now, since
>> initially the kernel will only use address authentication.
> 
> 
>> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
>> index e58e5975..157c811 100644
>> --- a/arch/arm64/kernel/head.S
>> +++ b/arch/arm64/kernel/head.S
>> @@ -13,6 +13,7 @@
>>   #include <linux/init.h>
>>   #include <linux/irqchip/arm-gic-v3.h>
>>   
>> +#include <asm/alternative.h>
>>   #include <asm/assembler.h>
>>   #include <asm/boot.h>
>>   #include <asm/ptrace.h>
>> @@ -119,6 +120,8 @@ ENTRY(stext)
>>   	 * the TCR will have been set.
>>   	 */
>>   	bl	__cpu_setup			// initialise processor
>> +	mov	x1, #1
>> +	bl	__ptrauth_setup
>>   	b	__primary_switch
>>   ENDPROC(stext)
>>   
>> @@ -713,6 +716,8 @@ secondary_startup:
>>   	 */
>>   	bl	__cpu_secondary_check52bitva
>>   	bl	__cpu_setup			// initialise processor
>> +	mov	x1, #0
>> +	bl	__ptrauth_setup
>>   	adrp	x1, swapper_pg_dir
>>   	bl	__enable_mmu
>>   	ldr	x8, =__secondary_switched
> 
> __cpu_setup creates the SCTLR_EL1 value for us, it already reads ID registers for stuff
> like AFDBM. It seems odd that you don't do the ptrauth check in there.
Yes it makes sense to do __ptrauth_checkup before those stuffs.
> 
> Not putting it in __cpu_setup means you've missed the other caller: sleep.S's cpu_resume,
> which brings the wakeup CPU back as if it were a secondary. (although the value set at
> boot will be restored in _cpu_resume).
Yes sctlr_el1 is overridden later.
	
> 
> 
> It looks like you only need this to be separate to pass in the primary/secondary flag, as
> __ptrauth_setup has to work with 3 cases: the boot-CPU and secondary CPUs that must have
> the feature, or can ignore the feature. Three cases with one alternative isn't possible.
> 
> Could we pull the '__cpu_secondary_checkptrauth' out, and run it earlier? This means the
> setup call doesn't need to consider secondary CPUs that don't support ptrauth. (and it
> matches what we do for 52bit support)
Ok, separinting __cpu_secondary_checkptrauth makes sense. I will add it 
by bifurcating __ptrauth_setup.
> 
> I think passing primary-boot-cpu into __cpu_setup is something we are going to need for
> other features, so it makes sense to add it as a preparatory patch.
Setting __cpu_setup flag for boot cpu and secondary cpu seems easy in 
head.S but __cpu_setup flag in sleep.S is tricky as it already has some 
context stored so only need to set remaining context. So may be 3 flags 
can be passed to __cpu_setup like primary-cpu-full-ctxt, 
secondary-cpu-full-ctxt and cpu-partial-ctxt. In case of ptrauth, no 
change required
for cpu-partial-ctxt flag. I will check more on this.
> 
> Now the setup call can enable the feature if its supported and we are the boot cpu.
> If the feature is discovered, cpufeature can change that code to enable it unconditionally
> as we know secondaries without support will be caught in __cpu_secondary_checkptrauth.
ok.
> 
> I think this would be simpler, but the proof is in the writing... what do you think?
It is possible to implement also.

Thanks,
Amit
> 
> 
> Thanks,
> 
> James
> 
>> @@ -832,6 +837,49 @@ __no_granule_support:
>>   	early_park_cpu
>>   ENDPROC(__no_granule_support)
>>   
>> +/*
>> + * Enable pointer authentication.
>> + *   x0 = SCTLR_EL1
>> + *   x1 = 1 for primary, 0 for secondary
>> + */
>> +__ptrauth_setup:
>> +#ifdef CONFIG_ARM64_PTR_AUTH
>> +	/* Check if the CPU supports ptrauth */
>> +	mrs	x2, id_aa64isar1_el1
>> +	ubfx	x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
>> +	cbz	x2, 2f
>> +
>> +	/* x2 = system_supports_address_auth() */
>> +alternative_if ARM64_HAS_ADDRESS_AUTH
>> +	mov	x2, 1
>> +alternative_else
>> +	mov	x2, 0
>> +alternative_endif
>> +	orr	x2, x2, x1	// primary || system_supports_address_auth()
>> +	cbz	x2, 3f
>> +
>> +	/* Enable ptrauth instructions */
>> +	ldr	x2, =SCTLR_ELx_ENIA | SCTLR_ELx_ENIB | \
>> +		     SCTLR_ELx_ENDA | SCTLR_ELx_ENDB
>> +	orr	x0, x0, x2
>> +	b	3f
>> +
>> +2:	/* No ptrauth support */
>> +alternative_if ARM64_HAS_ADDRESS_AUTH
>> +	b	4f
>> +alternative_else_nop_endif
>> +3:
>> +#endif
>> +	ret
>> +
>> +#ifdef CONFIG_ARM64_PTR_AUTH
>> +4:	/* Park the secondary CPU */
>> +	update_early_cpu_boot_status \
>> +		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_NO_PTRAUTH, x0, x1
>> +	early_park_cpu
>> +#endif
>> +ENDPROC(__ptrauth_setup)
>> +
>>   #ifdef CONFIG_RELOCATABLE
>>   __relocate_kernel:
>>   	/*

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
