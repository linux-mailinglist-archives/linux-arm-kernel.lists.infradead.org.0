Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E038B581FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 13:58:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQb4yKG7A7NdstNf+saynCTiIj2T4Lf1EWZaM7/XQ3Y=; b=P4IsmxzYABcfB4
	n1bW590rjvhGxc3cel1zMJJII1U3r+k1PJ6ykk7PIHPtKyZx8IPFHezI6seTSrQYEigrqEpHiPhm/
	6EiYUrcxzHg5IVxYYq8tCktsThyXWDefmDH09vvmzUbINopTAYWO6ozn97T5cvpJQeYENA9oXAv6k
	twLlj6CbfCEU+UELuYCOeaECZ0rvc+tWVX4YnstLCqL89QwaZtAdRC0N9YKlgnwlGzo/nRFMSlXyf
	mBAl4k/qllKDDMo9Nnp6wvewdoRPyH6eam5K4+WIE5D+QcHKGyBGag1jB/sgcxMD1uvjd9taz0867
	PNyNQM3t4YvB379MB2oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgT2z-0007lq-V7; Thu, 27 Jun 2019 11:58:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgT2j-0007lP-LV
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 11:58:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D6C62B;
 Thu, 27 Jun 2019 04:58:20 -0700 (PDT)
Received: from [10.37.13.7] (unknown [10.37.13.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B23FD3F718;
 Thu, 27 Jun 2019 04:58:16 -0700 (PDT)
Subject: Re: [PATCH v7 04/25] arm64: Substitute gettimeofday with C
 implementation
To: Dave Martin <Dave.Martin@arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-5-vincenzo.frascino@arm.com>
 <20190625153336.GZ2790@e103592.cambridge.arm.com>
 <f5ac379a-731d-0662-2f5b-bd046e3bd1c5@arm.com>
 <20190626161413.GA2790@e103592.cambridge.arm.com>
 <19ebd45a-b666-d7de-fd9e-2b72e18892d9@arm.com>
 <20190627100150.GC2790@e103592.cambridge.arm.com>
 <85808e79-27a0-d3ab-3fb0-445f79ff87a4@arm.com>
 <20190627112731.GF2790@e103592.cambridge.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <a07b66cb-186f-a743-4f1d-41227f23db74@arm.com>
Date: Thu, 27 Jun 2019 12:59:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190627112731.GF2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_045821_801054_7CD9BC35 
X-CRM114-Status: GOOD (  30.97  )
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
Cc: linux-arch@vger.kernel.org, Shijith Thotton <sthotton@marvell.com>,
 Peter Collingbourne <pcc@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Andre Przywara <andre.przywara@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-kernel@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kselftest@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Shuah Khan <shuah@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/27/19 12:27 PM, Dave Martin wrote:
> On Thu, Jun 27, 2019 at 11:57:36AM +0100, Vincenzo Frascino wrote:
>> Hi Dave,
>>
>> Overall, I want to thank you for bringing out the topic. It helped me to
>> question some decisions and make sure that we have no holes left in
>> the approach.
> 
> Fair enough.
> 
> This is really just a nasty compiler corner-case... the validity of the
> overall approach isn't affected.
> 
>>>>
>>>> vDSO library is a shared object not compiled with LTO as far as I can
>>>> see, hence if this involved LTO should not applicable in this case.
>>>
>>> That turned to be a spurious hypothesis on my part -- LTO isn't the
>>> smoking gun.  (See below.)
>>>
>>
>> Ok.
>>
>>>>> The classic example of this (triggered directly and not due to inlining)
>>>>> would be something like:
>>>>>
>>>>> int bar(int, int);
>>>>>
>>>>> void foo(int x, int y)
>>>>> {
>>>>> 	register int x_ asm("r0") = x;
>>>>> 	register int y_ asm("r1") = bar(x, y);
>>>>>
>>>>> 	asm volatile (
>>>>> 		"svc	#0"
>>>>> 		:: "r" (x_), "r" (y_)
>>>>> 		: "memory"
>>>>> 	);
>>>>> }
>>>>>
>>>>> ->
>>>>>
>>>>> 0000000000000000 <foo>:
>>>>>    0:   a9bf7bfd        stp     x29, x30, [sp, #-16]!
>>>>>    4:   910003fd        mov     x29, sp
>>>>>    8:   94000000        bl      0 <bar>
>>>>>    c:   2a0003e1        mov     w1, w0
>>>>>   10:   d4000001        svc     #0x0
>>>>>   14:   a8c17bfd        ldp     x29, x30, [sp], #16
>>>>>   18:   d65f03c0        ret
>>>>>
>>>>
>>>> Contextualized to what my vdso fallback functions do, this should not be a
>>>> concern because in no case a function result is directly set to a variable
>>>> declared as register.
>>>>
>>>> Since the vdso fallback functions serve a very specific and limited purpose, I
>>>> do not expect that that code is going to change much in future.
>>>>
>>>> The only thing that can happen is something similar to what I wrote in my
>>>> example, which as I empirically proved does not trigger the problematic behavior.
>>>>
>>>>>
>>>>> The gcc documentation is vague and ambiguous about precisely whan this
>>>>> can happen and about how to avoid it.
>>>>>
>>>>
>>>> On this I agree, it is not very clear, but this seems more something to raise
>>>> with the gcc folks in order to have a more "explicit" description that leaves no
>>>> room to the interpretation.
>>>>
>>>> ...
>>>>
>>>>>
>>>>> However, the workaround is cheap, and to avoid the chance of subtle
>>>>> intermittent code gen bugs it may be worth it:
>>>>>
>>>>> void foo(int x, int y)
>>>>> {
>>>>> 	asm volatile (
>>>>> 		"mov	x0, %0\n\t"
>>>>> 		"mov	x1, %1\n\t"
>>>>> 		"svc	#0"
>>>>> 		:: "r" (x), "r" (bar(x, y))
>>>>> 		: "r0", "r1", "memory"
>>>>> 	);
>>>>> }
>>>>>
>>>>> ->
>>>>>
>>>>> 0000000000000000 <foo>:
>>>>>    0:   a9be7bfd        stp     x29, x30, [sp, #-32]!
>>>>>    4:   910003fd        mov     x29, sp
>>>>>    8:   f9000bf3        str     x19, [sp, #16]
>>>>>    c:   2a0003f3        mov     w19, w0
>>>>>   10:   94000000        bl      0 <bar>
>>>>>   14:   2a0003e2        mov     w2, w0
>>>>>   18:   aa1303e0        mov     x0, x19
>>>>>   1c:   aa0203e1        mov     x1, x2
>>>>>   20:   d4000001        svc     #0x0
>>>>>   24:   f9400bf3        ldr     x19, [sp, #16]
>>>>>   28:   a8c27bfd        ldp     x29, x30, [sp], #32
>>>>>   2c:   d65f03c0        ret
>>>>>
>>>>>
>>>>> What do you think?
>>>>>
>>>>
>>>> The solution seems ok, thanks for providing it, but IMHO I think we
>>>> should find a workaround for something that is broken, which, unless
>>>> I am missing something major, this seems not the case.
>>>
>>> So, after a bit of further experimentation, I found that I could trigger
>>> it with implicit function calls on an older compiler.  I couldn't show
>>> it with explicit function calls (as in your example).
>>>
>>> With the following code, inlining if an expression that causes an
>>> implicit call to a libgcc helper can trigger this issue, but I had to
>>> try an older compiler:
>>>
>>> int foo(int x, int y)
>>> {
>>> 	register int res asm("r0");
>>> 	register const int x_ asm("r0") = x;
>>> 	register const int y_ asm("r1") = y;
>>>
>>> 	asm volatile (
>>> 		"svc	#0"
>>> 		: "=r" (res)
>>> 		: "r" (x_), "r" (y_)
>>> 		: "memory"
>>> 	);
>>>
>>> 	return res;
>>> }
>>>
>>> int bar(int x, int y)
>>> {
>>> 	return foo(x, x / y);
>>> }
>>>
>>> -> (arm-linux-gnueabihf-gcc 9.1 -O2)
>>>
>>> 00000000 <foo>:
>>>    0:   df00            svc     0
>>>    2:   4770            bx      lr
>>>
>>> 00000004 <bar>:
>>>    4:   b510            push    {r4, lr}
>>>    6:   4604            mov     r4, r0
>>>    8:   f7ff fffe       bl      0 <__aeabi_idiv>
>>>    c:   4601            mov     r1, r0
>>>    e:   4620            mov     r0, r4
>>>   10:   df00            svc     0
>>>   12:   bd10            pop     {r4, pc}
>>>
>>> -> (arm-linux-gnueabihf-gcc 5.1 -O2)
>>>
>>> 00000000 <foo>:
>>>    0:   df00            svc     0
>>>    2:   4770            bx      lr
>>>
>>> 00000004 <bar>:
>>>    4:   b508            push    {r3, lr}
>>>    6:   f7ff fffe       bl      0 <__aeabi_idiv>
>>>    a:   4601            mov     r1, r0
>>>    c:   df00            svc     0
>>>    e:   bd08            pop     {r3, pc}
>>>
>>
>> Thanks for reporting this. I had a go with gcc-5.1 on the vDSO library and seems
>> Ok, but it was worth trying.
>>
>> For obvious reasons I am not reporting the objdump here :)
>>
>>> I was struggling to find a way to emit an implicit function call for
>>> AArch64, except for 128-bit divide, which would complicate things since
>>> uint128_t doesn't fit in a single register anyway.
>>>
>>> Maybe this was considered a bug and fixed sometime after GCC 5, but I
>>> think the GCC documentation is still quite unclear on the semantics of
>>> register asm vars that alias call-clobbered registers in the PCS.
>>>
>>> If we can get a promise out of the GCC folks that this will not happen
>>> with any future compiler, then maybe we could just require a new enough
>>> compiler to be used.
>>>
>>
>> On this I fully agree, the compiler should never change an "expected" behavior.
>>
>> If the issue comes from a gray area in the documentation, we have to address it
>> and have it fixed there.
>>
>> The minimum version of the compiler from linux-4.19 is 4.6, hence I had to try
>> that the vDSO lib does not break with 5.1 [1].
>>
>> [1]
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cafa0010cd51fb711fdcb50fc55f394c5f167a0a
> 
> OK
> 
>>> Then of course there is clang.
>>>
>>
>> I could not help myself and I tried clang.8 and clang.7 as well with my example,
>> just to make sure that we are fine even in that case. Please find below the
>> results (pretty identical).
>>
>> main.clang.7.o:	file format ELF64-aarch64-little
>>
>> Disassembly of section .text:
>> 0000000000000000 show_it:
>>        0:	e8 03 1f aa 	mov	x8, xzr
>>        4:	09 68 68 38 	ldrb	w9, [x0, x8]
>>        8:	08 05 00 91 	add	x8, x8, #1
>>        c:	c9 ff ff 34 	cbz	w9, #-8 <show_it+0x4>
>>       10:	02 05 00 51 	sub	w2, w8, #1
>>       14:	e1 03 00 aa 	mov	x1, x0
>>       18:	08 08 80 d2 	mov	x8, #64
>>       1c:	01 00 00 d4 	svc	#0
>>       20:	c0 03 5f d6 	ret
>>
>> main.clang.8.o:	file format ELF64-aarch64-little
>>
>> Disassembly of section .text:
>> 0000000000000000 show_it:
>>        0:	e8 03 1f aa 	mov	x8, xzr
>>        4:	09 68 68 38 	ldrb	w9, [x0, x8]
>>        8:	08 05 00 91 	add	x8, x8, #1
>>        c:	c9 ff ff 34 	cbz	w9, #-8 <show_it+0x4>
>>       10:	02 05 00 51 	sub	w2, w8, #1
>>       14:	e1 03 00 aa 	mov	x1, x0
>>       18:	08 08 80 d2 	mov	x8, #64
>>       1c:	01 00 00 d4 	svc	#0
>>       20:	c0 03 5f d6 	ret
>>
>> Commands used:
>>
>> $ clang -target aarch64-linux-gnueabi main.c -O -c -o main.clang.<x>.o
>> $ llvm-objdump -d main.clang.<x>.o
> 
> Actually, I'm not sure this is comparable with the reproducer I quoted
> in my last reply.
>

As explained in my previous email, this is the only case that can realistically
happen. vDSO has no dependency on any other library (i.e. libgcc you were
mentioning) and we are referring to the fallbacks which fall in this category.

> The compiler can see the definition of strlen and fully inlines it.
> I only ever saw the problem when the compiler emits an out-of-line
> implicit function call.
> > What does clang do with my example on 32-bit?

When clang is selected compat vDSOs are currently disabled on arm64, will be
introduced with a future patch series.

Anyway since I am curious as well, this is what happens with your example with
clang.8 target=arm-linux-gnueabihf:

dave-code.clang.8.o:	file format ELF32-arm-little

Disassembly of section .text:
0000000000000000 foo:
       0:	00 00 00 ef 	svc	#0
       4:	1e ff 2f e1 	bx	lr

0000000000000008 bar:
       8:	10 4c 2d e9 	push	{r4, r10, r11, lr}
       c:	08 b0 8d e2 	add	r11, sp, #8
      10:	00 40 a0 e1 	mov	r4, r0
      14:	fe ff ff eb 	bl	#-8 <bar+0xc>
      18:	00 10 a0 e1 	mov	r1, r0
      1c:	04 00 a0 e1 	mov	r0, r4
      20:	00 00 00 ef 	svc	#0
      24:	10 8c bd e8 	pop	{r4, r10, r11, pc}

Compiled with -O2, -O3, -Os never inlines.

Same thing happens for aarch64-linux-gnueabi:

dave-code.clang.8.o:	file format ELF64-aarch64-little

Disassembly of section .text:
0000000000000000 foo:
       0:	e0 03 00 2a 	mov	w0, w0
       4:	e1 03 01 2a 	mov	w1, w1
       8:	01 00 00 d4 	svc	#0
       c:	c0 03 5f d6 	ret

0000000000000010 bar:
      10:	01 0c c1 1a 	sdiv	w1, w0, w1
      14:	e0 03 00 2a 	mov	w0, w0
      18:	01 00 00 d4 	svc	#0
      1c:	c0 03 5f d6 	ret


Based on this I think we can conclude our investigation.

> 
> Cheers
> ---Dave
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
