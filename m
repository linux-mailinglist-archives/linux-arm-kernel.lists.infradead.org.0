Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5764C17F76A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 13:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I9A2xL/bbb9TAs92Q324C/RCI1yO11P3IM1FbtU1CNQ=; b=GGHRJZEVj+ZffWHVLm8girY2Q
	Y0y+Hfq7kIXlWijDqwxXcvELsUfQb2W+oyvCsj8wJ1Vnc9oX9cw3dWYSU+JFi+dQa7qSkA0XfwFT1
	wQEynkn0zdFsusLg+urb4LqWm7WoLSy4I85wG9GyipCf5pRR/Ue6glQbhGKrEOsBaGNm97d3Jl62D
	EH+fIsOUIwzIFwGjwOVAsSpdhhN040DCmmeAfA6F17DJoHtLRvMQSV1jHhQwtt1sDABKdE3xi1nn8
	ewWmbNfu2EQuR5uc5Ljrtr/L64EYma6AA7iCpDi9e5xajPKUkI5QRgPcUzRfTQ4RRt18XluYJ6lWx
	CYo8Kmo9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBe0B-0001N8-TB; Tue, 10 Mar 2020 12:28:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBe03-0001Me-Sr
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 12:28:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6258230E;
 Tue, 10 Mar 2020 05:28:41 -0700 (PDT)
Received: from [10.162.16.120] (a075563-lin.blr.arm.com [10.162.16.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 16D003F67D;
 Tue, 10 Mar 2020 05:28:37 -0700 (PDT)
Subject: Re: [PATCH v6 13/18] arm64: unwind: strip PAC from kernel addresses
To: James Morse <james.morse@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-14-git-send-email-amit.kachhap@arm.com>
 <ec2c78db-31e7-9e82-525e-921b9bf6b3a3@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <cfab1e7c-61af-f3ff-a09b-2c5d78264e02@arm.com>
Date: Tue, 10 Mar 2020 17:58:38 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ec2c78db-31e7-9e82-525e-921b9bf6b3a3@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_052844_018985_2FF53FFD 
X-CRM114-Status: GOOD (  24.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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

On 3/10/20 12:33 AM, James Morse wrote:
> Hi Amit,
> 
> On 06/03/2020 06:35, Amit Daniel Kachhap wrote:
>> From: Mark Rutland <mark.rutland@arm.com>
>>
>> When we enable pointer authentication in the kernel, LR values saved to
>> the stack will have a PAC which we must strip in order to retrieve the
>> real return address.
>>
>> Strip PACs when unwinding the stack in order to account for this.
> 
> This patch had me looking at the wider pointer-auth + ftrace interaction...

Thanks for your effort.

> 
> 
>> diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
>> index a336cb1..b479df7 100644
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
>> @@ -101,6 +102,8 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
> 
> There is an earlier reader of frame->pc:
> | #ifdef CONFIG_FUNCTION_GRAPH_TRACER
> | 	if (tsk->ret_stack &&
> | 			(frame->pc == (unsigned long)return_to_handler)) {
> 
> 
> Which leads down the rat-hole of: does this need ptrauth_strip_insn_pac()?
> 
> The version of GCC on my desktop supports patchable-function-entry, the function pre-amble
> has two nops for use by ftrace[0]. This means if prepare_ftrace_return() re-writes the
> saved LR, it does it before the caller paciasp's it.
> 
> I think that means if you stack-trace from a function that had been hooked by the
> function_graph_tracer, you will see the LR with a PAC, meaning the above == won't match.
> 
> 
> The version of LLVM on my desktop however doesn't support patchable-function-entry, it
> uses _mcount() to do the ftrace stuff[1]. Here prepare_ftrace_return() overwrites a
> paciasp'd LR with one that isn't, which will fail.
> 
> 
> Could the ptrauth_strip_insn_pac() call move above the CONFIG_FUNCTION_GRAPH_TRACER block,

This may not be required as we never explicitly sign return_to_handler 
and frame->pc may store it without any PAC signature for 
patchable-function-entry.

While testing patchable-function-entry, I had an observation regarding 
WARN messages,

[  541.030265] Hardware name: Foundation-v8A (DT)
[  541.033500] pstate: 60400009 (nZCv daif +PAN -UAO)
[  541.036880] pc : change_pac_parameters+0x40/0x4c
[  541.040279] lr : return_to_handler+0x0/0x3c
[  541.043373] sp : ffff8000126e3d00

Here lr may need some logic to display correct return address although 
it is unrelated to this ptrauth series. (arch/arm64/kernel/process.c +264)

> and could we add something like:
> |	depends on (!FTRACE || HAVE_DYNAMIC_FTRACE_WITH_REGS)
> 
> to the Kconfig to prevent both FTRACE and PTR_AUTH being enabled unless the compiler has
> support for patchable-function-entry?

Yes this is a good condition to have. I feel below condition is more 
suitable as there is issue only with FUNCTION_GRAPH_TRACER,

depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)

Thanks,
Amit Daniel

> 
> 
>>   	}
>>   #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
>>   
>> +	frame->pc = ptrauth_strip_insn_pac(frame->pc);
>> +
>>   	/*
>>   	 * Frames created upon entry from EL0 have NULL FP and PC values, so
>>   	 * don't bother reporting these. Frames created by __noreturn functions
> 
> 
> Thanks,
> 
> James
> 
> [0] gcc (Debian 9.2.1-28) 9.2.1 20200203
> 0000000000000048 <sync_icache_aliases>:
>    48:   d503201f        nop
>    4c:   d503201f        nop
>    50:   90000002        adrp    x2, 0 <__icache_flags>
>    54:   d503233f        paciasp
>    58:   a9bf7bfd        stp     x29, x30, [sp, #-16]!
>    5c:   910003fd        mov     x29, sp
>    60:   f9400044        ldr     x4, [x2]
>    64:   36000124        tbz     w4, #0, 88 <sync_icache_al
> 
> 
> [1] clang version 9.0.0-1 (tags/RELEASE_900/final)
> 0000000000000000 <sync_icache_aliases>:
>     0:   d503233f        paciasp
>     4:   a9be4ff4        stp     x20, x19, [sp, #-32]!
>     8:   a9017bfd        stp     x29, x30, [sp, #16]
>     c:   910043fd        add     x29, sp, #0x10
>    10:   aa0103f4        mov     x20, x1
>    14:   aa0003f3        mov     x19, x0
>    18:   94000000        bl      0 <_mcount>
>    1c:   90000008        adrp    x8, 0 <__icache_flags>
>    20:   f9400108        ldr     x8, [x8]
>    24:   370000a8        tbnz    w8, #0, 38 <sync_icache_aliases+0x38>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
