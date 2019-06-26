Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA4156A6E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uDBuHOb9mlxMyw+FFcKKpMOW5vsxkOAmXovrt98WOs=; b=dD5GKQzL3qZGMq
	gHT5nz7RLwmyYQS8exNDW6W0dE5hYYxSaMfKP5yVNV29a4D+imk62oy7yemaDhTvRfOLDY/E9PI3Z
	Y3pA/cz949SogtxToM/9/1VCt7lkBU3CZHiig9spmLc3fkjp+s5UNEPBX8X/AJi0J/NttkU5+7uez
	vFMbaZD+q9FcJG5C+Mm8vMF5vuYPMqMMc6/Bg6oS6ximqUn9z8SL3yubO5AAbPKGmdParEaIV8fc9
	81pt1rwA3fJNEhkqAK+UVmCpjhk4Ffn25QEovEkuYnoSnHYvFvUlBU9P59twVZFXhuZq2EmX19+i8
	fnnwcWg2Q7l6c6YJlKww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7yK-0006f4-K8; Wed, 26 Jun 2019 13:28:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7y0-0006ea-Ug
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:28:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A6DE360;
 Wed, 26 Jun 2019 06:28:03 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D00BA3F71E;
 Wed, 26 Jun 2019 06:28:00 -0700 (PDT)
Subject: Re: [PATCH v7 04/25] arm64: Substitute gettimeofday with C
 implementation
To: Dave Martin <Dave.Martin@arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-5-vincenzo.frascino@arm.com>
 <20190625153336.GZ2790@e103592.cambridge.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <f5ac379a-731d-0662-2f5b-bd046e3bd1c5@arm.com>
Date: Wed, 26 Jun 2019 14:27:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190625153336.GZ2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_062805_086115_E18FF431 
X-CRM114-Status: GOOD (  24.31  )
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
Cc: linux-arch@vger.kernel.org, Shijith Thotton <sthotton@marvell.com>,
 Peter Collingbourne <pcc@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Andre Przywara <andre.przywara@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kselftest@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Shuah Khan <shuah@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 25/06/2019 16:33, Dave Martin wrote:
> On Fri, Jun 21, 2019 at 10:52:31AM +0100, Vincenzo Frascino wrote:
>> To take advantage of the commonly defined vdso interface for
>> gettimeofday the architectural code requires an adaptation.
>>
>> Re-implement the gettimeofday vdso in C in order to use lib/vdso.
>>
>> With the new implementation arm64 gains support for CLOCK_BOOTTIME
>> and CLOCK_TAI.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> Tested-by: Shijith Thotton <sthotton@marvell.com>
>> Tested-by: Andre Przywara <andre.przywara@arm.com>
> 
> [...]
> 
>> diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
>> new file mode 100644
>> index 000000000000..bc3cb6738051
>> --- /dev/null
>> +++ b/arch/arm64/include/asm/vdso/gettimeofday.h
>> @@ -0,0 +1,86 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (C) 2018 ARM Limited
>> + */
>> +#ifndef __ASM_VDSO_GETTIMEOFDAY_H
>> +#define __ASM_VDSO_GETTIMEOFDAY_H
>> +
>> +#ifndef __ASSEMBLY__
>> +
>> +#include <asm/unistd.h>
>> +#include <uapi/linux/time.h>
>> +
>> +#define VDSO_HAS_CLOCK_GETRES		1
>> +
>> +static __always_inline int gettimeofday_fallback(
>> +					struct __kernel_old_timeval *_tv,
>> +					struct timezone *_tz)
> 
> Out of interest, does this need to be __always_inline?
> 

It is a design choice. Philosophically, I prefer to control and reduce the scope
of the decisions the compiler has to make in order to not have surprises.

>> +{
>> +	register struct timezone *tz asm("x1") = _tz;
>> +	register struct __kernel_old_timeval *tv asm("x0") = _tv;
>> +	register long ret asm ("x0");
>> +	register long nr asm("x8") = __NR_gettimeofday;
>> +
>> +	asm volatile(
>> +	"       svc #0\n"
> 
> Can inlining of this function result in non-trivial expressions being
> substituted for _tz or _tv?
> 
> A function call can clobber register asm vars that are assigned to the
> caller-save registers or that the PCS uses for function arguments, and
> the situations where this can happen are poorly defined AFAICT.  There's
> also no reliable way to detect at build time whether the compiler has
> done this, and no robust way to stop if happening.
> 
> (IMHO the compiler is wrong to do this, but it's been that way for ever,
> and I think I saw GCC 9 show this behaviour recently when I was
> investigating something related.)
> 
> 
> To be safe, it's better to put this out of line, or remove the reg asm()
> specifiers, mark x0-x18 and lr as clobbered here (so that the compiler
> doesn't map arguments to them), and put movs in the asm to move things
> into the right registers.  The syscall number can be passed with an "i"
> constraint.  (And yes, this sucks.)
> 
> If the code this is inlined in is simple enough though, we can be fairly
> confident of getting away with it.
>

I took very seriously what you are mentioning here because I think that
robustness of the code comes before than everything especially in the kernel and
I carried on some experiments to try to verify if in this case is safe to assume
that the compiler is doing the right thing.

Based on my investigation and on previous observations of the generation of the
vDSO library, I can conclude that the approach seems safe due to the fact that
the usage of this code is very limited, the code itself is simple enough and
that gcc would inline this code anyway based on the current compilation options.

The experiment that I did was to define some self-contained code that tries to
mimic what you are describing and compile it with 3 different versions of gcc
(6.4, 8.1 and 8.3) and in all the tree cases the behavior seems correct.

Code:
=====

typedef int ssize_t;
typedef int size_t;

static int my_strlen(const char *s)
{
	int i = 0;

	while (s[i] == '\0')
		i++;

	return i;
}

static inline ssize_t my_syscall(int fd, const void *buf, size_t count)
{
	register ssize_t arg1 asm ("x0") = fd;
	register const void *arg2 asm ("x1") = buf;
	register size_t arg3 asm ("x2") = count;

	__asm__ volatile (
		"mov x8, #64\n"
		"svc #0\n"
		: "=&r" (arg1)
		: "r" (arg2), "r" (arg3)
		: "x8"
        );

        return arg1;
}

void sys_caller(const char *s)
{
	my_syscall(1, s, my_strlen(s));
}


GCC 8.3.0:
==========

main.8.3.0.o:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <sys_caller>:
   0:	39400001 	ldrb	w1, [x0]
   4:	35000161 	cbnz	w1, 30 <sys_caller+0x30>
   8:	d2800023 	mov	x3, #0x1                   	// #1
   c:	d1000404 	sub	x4, x0, #0x1
  10:	2a0303e2 	mov	w2, w3
  14:	91000463 	add	x3, x3, #0x1
  18:	38636881 	ldrb	w1, [x4, x3]
  1c:	34ffffa1 	cbz	w1, 10 <sys_caller+0x10>
  20:	aa0003e1 	mov	x1, x0
  24:	d2800808 	mov	x8, #0x40                  	// #64
  28:	d4000001 	svc	#0x0
  2c:	d65f03c0 	ret
  30:	52800002 	mov	w2, #0x0                   	// #0
  34:	17fffffb 	b	20 <sys_caller+0x20>


GCC 8.1.0:
==========

main.8.1.0.o:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <sys_caller>:
   0:	39400001 	ldrb	w1, [x0]
   4:	35000161 	cbnz	w1, 30 <sys_caller+0x30>
   8:	d2800023 	mov	x3, #0x1                   	// #1
   c:	d1000404 	sub	x4, x0, #0x1
  10:	2a0303e2 	mov	w2, w3
  14:	91000463 	add	x3, x3, #0x1
  18:	38636881 	ldrb	w1, [x4, x3]
  1c:	34ffffa1 	cbz	w1, 10 <sys_caller+0x10>
  20:	aa0003e1 	mov	x1, x0
  24:	d2800808 	mov	x8, #0x40                  	// #64
  28:	d4000001 	svc	#0x0
  2c:	d65f03c0 	ret
  30:	52800002 	mov	w2, #0x0                   	// #0
  34:	17fffffb 	b	20 <sys_caller+0x20>



GCC 6.4.0:
==========

main.6.4.0.o:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <sys_caller>:
   0:	39400001 	ldrb	w1, [x0]
   4:	35000161 	cbnz	w1, 30 <sys_caller+0x30>
   8:	d2800023 	mov	x3, #0x1                   	// #1
   c:	d1000404 	sub	x4, x0, #0x1
  10:	2a0303e2 	mov	w2, w3
  14:	91000463 	add	x3, x3, #0x1
  18:	38636881 	ldrb	w1, [x4, x3]
  1c:	34ffffa1 	cbz	w1, 10 <sys_caller+0x10>
  20:	aa0003e1 	mov	x1, x0
  24:	d2800808 	mov	x8, #0x40                  	// #64
  28:	d4000001 	svc	#0x0
  2c:	d65f03c0 	ret
  30:	52800002 	mov	w2, #0x0                   	// #0
  34:	17fffffb 	b	20 <sys_caller+0x20>


> [...]
> 
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
