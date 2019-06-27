Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03635861C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGLgU1mclrr8jVJbf5Tnhk2zhj/lH8C+kYnoO9FqtEY=; b=AgrfCe/E1zqm95
	jjn9zVC9omTpeH295UG4vT318OKeD4prwq3dLFz+2lcWTu1KmwrKqJdo25mHaFXTRnsxEpUf3Ps2J
	v2zjWmIbYvwU5CXP8cIhgPBhuJhE7nWCVwIcyfJBchQcRbHnITlMUcrj7AoITgwqzpmfATqJczUGR
	eV32+vQdfKMIQCkTn3LvkFIi72zc3d8xkod9rKUuMom9ySrMq/4MADiNd3P6EtIWRIGxs5FepUvaS
	MTwy2HJtqxZDF+sFsqAe7qOMAnzsafZ0K/LercOCXpHjwR/neRTdA4mVkdm0gHkap0opRVZKpqyOy
	PKZafUdSNgqqO9ME8sUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWW8-0005xV-4b; Thu, 27 Jun 2019 15:40:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWPW-0007QV-D9
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:34:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7709B360;
 Thu, 27 Jun 2019 08:34:05 -0700 (PDT)
Received: from [10.37.13.7] (unknown [10.37.13.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 161663F246;
 Thu, 27 Jun 2019 08:34:00 -0700 (PDT)
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
 <a07b66cb-186f-a743-4f1d-41227f23db74@arm.com>
 <20190627143826.GG2790@e103592.cambridge.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <19e192a7-f8e1-2f04-48fb-8ea668ba32ca@arm.com>
Date: Thu, 27 Jun 2019 16:34:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190627143826.GG2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_083406_906611_1EDF21BF 
X-CRM114-Status: GOOD (  25.73  )
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Mark Salyzyn <salyzyn@android.com>, Huw Davies <huw@codeweavers.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-kernel@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 linux-kselftest@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Shijith Thotton <sthotton@marvell.com>, Peter Collingbourne <pcc@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 6/27/19 3:38 PM, Dave Martin wrote:
> On Thu, Jun 27, 2019 at 12:59:07PM +0100, Vincenzo Frascino wrote:
>> On 6/27/19 12:27 PM, Dave Martin wrote:
>>> On Thu, Jun 27, 2019 at 11:57:36AM +0100, Vincenzo Frascino wrote:
> 
> [...]
> 
>>>> Disassembly of section .text:
>>>> 0000000000000000 show_it:
>>>>        0:	e8 03 1f aa 	mov	x8, xzr
>>>>        4:	09 68 68 38 	ldrb	w9, [x0, x8]
>>>>        8:	08 05 00 91 	add	x8, x8, #1
>>>>        c:	c9 ff ff 34 	cbz	w9, #-8 <show_it+0x4>
>>>>       10:	02 05 00 51 	sub	w2, w8, #1
>>>>       14:	e1 03 00 aa 	mov	x1, x0
>>>>       18:	08 08 80 d2 	mov	x8, #64
>>>>       1c:	01 00 00 d4 	svc	#0
>>>>       20:	c0 03 5f d6 	ret
>>>>
>>>> Commands used:
>>>>
>>>> $ clang -target aarch64-linux-gnueabi main.c -O -c -o main.clang.<x>.o
>>>> $ llvm-objdump -d main.clang.<x>.o
>>>
>>> Actually, I'm not sure this is comparable with the reproducer I quoted
>>> in my last reply.
>>>
>>
>> As explained in my previous email, this is the only case that can realistically
>> happen. vDSO has no dependency on any other library (i.e. libgcc you were
>> mentioning) and we are referring to the fallbacks which fall in this category.
> 
> Outlining could also introduce a local function call where none exists
> explicitly in the program IIUC.
> 
> My point is that the interaction between asm reg vars and machine-level
> procedure calls is at best ill-defined, and it is largely up to the
> compiler when to introduce such a call, even without LTO etc.
> 
> So we should not be surprised to see variations in behaviour depending
> on compiler, compiler version and compiler flags.
>

I tested 10 version of the compiler and a part gcc-5.1 that triggers the issue
in a specific case and not in the vdso library, I could not find evidence of the
problem.

>>> The compiler can see the definition of strlen and fully inlines it.
>>> I only ever saw the problem when the compiler emits an out-of-line
>>> implicit function call.
>>>> What does clang do with my example on 32-bit?
>>
>> When clang is selected compat vDSOs are currently disabled on arm64, will be
>> introduced with a future patch series.
>>
>> Anyway since I am curious as well, this is what happens with your example with
>> clang.8 target=arm-linux-gnueabihf:
>>
>> dave-code.clang.8.o:	file format ELF32-arm-little
>>
>> Disassembly of section .text:
>> 0000000000000000 foo:
>>        0:	00 00 00 ef 	svc	#0
>>        4:	1e ff 2f e1 	bx	lr
>>
>> 0000000000000008 bar:
>>        8:	10 4c 2d e9 	push	{r4, r10, r11, lr}
>>        c:	08 b0 8d e2 	add	r11, sp, #8
>>       10:	00 40 a0 e1 	mov	r4, r0
>>       14:	fe ff ff eb 	bl	#-8 <bar+0xc>
>>       18:	00 10 a0 e1 	mov	r1, r0
>>       1c:	04 00 a0 e1 	mov	r0, r4
>>       20:	00 00 00 ef 	svc	#0
>>       24:	10 8c bd e8 	pop	{r4, r10, r11, pc}
> 
>> Compiled with -O2, -O3, -Os never inlines.
> 
> Looks sane, and is the behaviour we want.
> 
>> Same thing happens for aarch64-linux-gnueabi:
>>
>> dave-code.clang.8.o:	file format ELF64-aarch64-little
>>
>> Disassembly of section .text:
>> 0000000000000000 foo:
>>        0:	e0 03 00 2a 	mov	w0, w0
>>        4:	e1 03 01 2a 	mov	w1, w1
>>        8:	01 00 00 d4 	svc	#0
>>        c:	c0 03 5f d6 	ret
>>
>> 0000000000000010 bar:
>>       10:	01 0c c1 1a 	sdiv	w1, w0, w1
>>       14:	e0 03 00 2a 	mov	w0, w0
>>       18:	01 00 00 d4 	svc	#0
>>       1c:	c0 03 5f d6 	ret
> 
> Curious, clang seems to be inserting some seemingly redundant moves
> of its own here, though this shouldn't break anything.
> 
> I suspect that clang might require an X-reg holding an int to have its
> top 32 bits zeroed for passing to an asm, whereas GCC does not.  I think
> this comes under "we should not be surprised to see variations".
> 
> GCC 9 does this instead:
> 
> 0000000000000000 <foo>:
>    0:   d4000001        svc     #0x0
>    4:   d65f03c0        ret
> 
> 0000000000000008 <bar>:
>    8:   1ac10c01        sdiv    w1, w0, w1
>    c:   d4000001        svc     #0x0
>   10:   d65f03c0        ret
> 
> 
>> Based on this I think we can conclude our investigation.
> 
> So we use non-reg vars and use the asm clobber list and explicit moves
> to get things into / out of the right registers?
> 

Since I managed to provide enough evidence, based on the behavior of various
versions of the compilers, that the library as it stands is consistent and does
not suffer any of the issues you reported I think I will keep my code as is at
least for this release, I will revisit it in future if something happens.

If you manage to prove that my library as it stands (no code additions or source
modifications) has the issues you mentioned based on some version of the
compiler, this changes everything.

Happy to hear from you.

> Cheers
> ---Dave
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
