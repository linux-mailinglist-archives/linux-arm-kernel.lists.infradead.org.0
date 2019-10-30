Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CE9E957C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 05:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pUtB9xziAIoacIgI9G65tMDZ8pUtFNI8furW4SFwLt0=; b=uj0piS8kgFelXAncEdHIsigLg
	wKcvo0e5fzqrWuEsE5PwfWSbpsMBP7IhFrLhFlQX4CiM7m4nWrCe0B0HJpo5I3urReJ/PGBLD/b20
	HDIx5AQVwvdZeE975etZp0/+EHqWHpKYWp44qstFFiWRgefrjuKhvnCkoivFBhuE6MlXXmlF/abk0
	m7jr7TsTlWt/X9cYn61ZndAPD3elYSsJvNK+r1iBrMbKJCZNzGhJ1IPYFyVrseqB7RQF0YsYiTJr5
	qcBixo9G2aYWJa8xc+S4rluiQt3jVhOWmiAJylsLmHrzdVW3d597i8J/8CrAgbwDJQpSPInNOAfmf
	G0NZCbqAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPfBy-0007WJ-6V; Wed, 30 Oct 2019 04:02:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPfBk-0007Va-9V
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 04:02:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 27B9D1F1;
 Tue, 29 Oct 2019 21:02:27 -0700 (PDT)
Received: from [10.162.0.144] (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 01C883F6C4;
 Tue, 29 Oct 2019 21:02:23 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH 07/11] arm64: initialize and switch ptrauth kernel keys
To: James Morse <james.morse@arm.com>
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
 <1571300065-10236-8-git-send-email-amit.kachhap@arm.com>
 <e49ffc1c-5f2a-2e5a-6fe3-93d82566ed7a@arm.com>
Message-ID: <f324924e-4bd5-1b87-5aa3-1e939cb08a45@arm.com>
Date: Wed, 30 Oct 2019 09:32:21 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <e49ffc1c-5f2a-2e5a-6fe3-93d82566ed7a@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_210228_420738_E03083FA 
X-CRM114-Status: GOOD (  29.62  )
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
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 10/23/19 11:05 PM, James Morse wrote:
> Hi Amit,
> 
> On 17/10/2019 09:14, Amit Daniel Kachhap wrote:
>> From: Kristina Martsenko <kristina.martsenko@arm.com>
>>
>> Set up keys to use pointer authentication within the kernel. The kernel
>> will be compiled with APIAKey instructions, the other keys are currently
>> unused. Each task is given its own APIAKey, which is initialized during
>> fork. The key is changed during context switch and on kernel entry from
>> EL0.
>>
>> The keys for idle threads need to be set before calling any C functions,
>> because it is not possible to enter and exit a function with different
>> keys.
> 
> 
>> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
>> index 8ec792d..c12c98d 100644
>> --- a/arch/arm64/include/asm/processor.h
>> +++ b/arch/arm64/include/asm/processor.h
>> @@ -145,6 +145,7 @@ struct thread_struct {
>>   	struct debug_info	debug;		/* debugging */
>>   #ifdef CONFIG_ARM64_PTR_AUTH
>>   	struct ptrauth_keys_user	keys_user;
>> +	struct ptrauth_keys_kernel	keys_kernel;
>>   #endif
>>   };
>>   
>> diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
>> index 46e2b05..2294e93 100644
>> --- a/arch/arm64/include/asm/smp.h
>> +++ b/arch/arm64/include/asm/smp.h
>> @@ -88,6 +88,8 @@ asmlinkage void secondary_start_kernel(void);
>>   struct secondary_data {
>>   	void *stack;
>>   	struct task_struct *task;
>> +	unsigned long ptrauth_key_lo;
>> +	unsigned long ptrauth_key_hi;
> 
> How come this isn't a struct ptrauth_keys_kernel, like the thread struct?
> Everywhere else you ldp it as one 128 bit quantity, here its split into lo/hi and loaded
> independently.
It can be updated to struct ptrauth_keys_kernel.
> 
> I think this is safe for big-endian... but it hurts to think about it.
> 
> I'd like the lo/hi not to matter, its a randomly generated key, as long as we always read
> it from memory and write it to the CPU registers in the same way, it doesn't matter which
> bits end up in the hi/lo registers.
> 
> 
>>   	long status;
>>   };
>>   
> 
>> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
>> index 157c811..e518511 100644
>> --- a/arch/arm64/kernel/head.S
>> +++ b/arch/arm64/kernel/head.S
>> @@ -858,6 +858,16 @@ alternative_endif
>>   	orr	x2, x2, x1	// primary || system_supports_address_auth()
>>   	cbz	x2, 3f
>>   
>> +	/* Install ptrauth key */
>> +	mov	x3, xzr
>> +	mov	x4, xzr
>> +	cbnz	x1, 1f
>> +	adr_l	x2, secondary_data
>> +	ldr	x3, [x2, CPU_BOOT_PTRAUTH_KEY_LO]
>> +	ldr	x4, [x2, CPU_BOOT_PTRAUTH_KEY_HI]
>> +1:	msr_s	SYS_APIAKEYLO_EL1, x3
>> +	msr_s	SYS_APIAKEYHI_EL1, x4
> 
> Why do we store zero to those registers if !system_supports_address_auth()?
> Is this for the boot CPU?
Yes. This is a limitation in the current implementation. Is it better to 
leave it uninitialized here?
> 
> It would be good to keep the code accessing secondary_data together. The boot-cpu's values
> are always going to come from somewhere funny, so it makes sense to keep the secondarys
> separate.
ok.
> 
> (We test values from secondary_data in case the cpu-online code has given up on us. I
> don't think we can test the PTRAUTH_KEY against 0 for too-slow secondaries, as 0 may be
> the random key we generated).
Ok thanks for the details. After looking at the code, it seems 
secondary_data.ptrauth_key_lo/hi is not required as 
secondary_data.task.thread.keys_kernel.apia.lo can fetch us the same 
information.
> 
> This assembly function is a bit of a swiss-army-knife, it does everything to do with
> ptrauth. The code-patching makes it difficult to work out what happens. In general I think
> it would be simpler if these functions did one thing, even if there ends up being more

ok I will try to simplify them in next iteration.

Thanks,
Amit
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
