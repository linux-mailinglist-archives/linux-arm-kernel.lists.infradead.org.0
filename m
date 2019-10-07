Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B60DCEBB2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 20:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r79C46TqjiygIW9rjrprkxmdmPdDcbY4X6Qjiq1ejh4=; b=YB+z/naUhbV15e
	U4v6IBvjoBWmk0LOtLw0tJfjKiY+CpPOekmsH+LPyOFjAmVWN8q3gSoBu0zlswiBZfz1mxVF4H+06
	uJd17x7J0qLkwvPl7QN8FiCEJf/bTG/Xjx+jiXIlTft/YK4Yt+ko/Rnu0tQhSjeS0cp9i6oF6F8Hy
	VG1MACsdCpPDUKyL69FvRRNEtmbc5IlP/T1yB1f9OORU10nZU3taiXg1AmWKdkDR6JHBzvjTpCSTr
	lQ/UXTAdLdep35kjSw4WxzExxvVfzvOKe8RAkj0/F2kybR12TtUSOF/d6TACgQc9b2kO2Nup67jTg
	Tmt52radFe+2Nu0eBAFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXg1-0002N3-Tx; Mon, 07 Oct 2019 18:24:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXfr-0002M1-WE
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 18:24:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 83F821570;
 Mon,  7 Oct 2019 11:23:59 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B73693F68E;
 Mon,  7 Oct 2019 11:23:58 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v6 06/11] kselftest: arm64: fake_sigreturn_bad_magic
To: Dave Martin <Dave.Martin@arm.com>
References: <20190910123111.33478-1-cristian.marussi@arm.com>
 <20190910123111.33478-7-cristian.marussi@arm.com>
 <20190917160603.GN27757@arm.com>
Message-ID: <abcff746-ad38-5817-b256-7195337ee130@arm.com>
Date: Mon, 7 Oct 2019 19:23:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190917160603.GN27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_112400_132388_1499FD8F 
X-CRM114-Status: GOOD (  25.68  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/09/2019 17:06, Dave Martin wrote:
> On Tue, Sep 10, 2019 at 01:31:06pm +0100, Cristian Marussi wrote:
>> Add a simple fake_sigreturn testcase which builds a ucontext_t with a bad
>> magic header and place it onto the stack. Expects a SIGSEGV on test PASS.
>>
>> Introduce a common utility assembly trampoline function to invoke a
>> sigreturn while placing the provided sigframe at wanted alignment and
>> also an helper to make space when needed inside the sigframe reserved
>> area.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> v5 --> v6
>> - fake_sigreturn: cleaned up, avoiding excessive SP misalignments
>> - fake_sigreturn: better formatting and prologue
>> - get_starting_header: cleand up and commented
>> - avoid timeout on failure
> 
> [...]
> 
>> diff --git a/tools/testing/selftests/arm64/signal/signals.S b/tools/testing/selftests/arm64/signal/signals.S
>> new file mode 100644
>> index 000000000000..e670f8f2c8de
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/signals.S
>> @@ -0,0 +1,64 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
>> +#include <asm/unistd.h>
>> +
>> +.section        .rodata, "a"
>> +call_fmt:
>> +	.asciz "Calling sigreturn with fake sigframe sized:%zd at SP @%08lX\n"
>> +
>> +.text
>> +
>> +.globl fake_sigreturn
>> +
>> +/*	fake_sigreturn	x0:&sigframe,  x1:sigframe_size,  x2:misalign_bytes */
>> +fake_sigreturn:
>> +	stp	x29, x30, [sp, #-16]!
>> +	mov	x29, sp
>> +
>> +	mov	x20, x0
>> +	mov	x21, x1
>> +	mov	x22, x2
>> +
>> +	/* create space on the stack for fake sigframe 16 bytes-aligned */
>> +	add	x0, x21, x22
>> +	add	x0, x0, #16
>> +	bic	x0, x0, #15 /* round_up(sigframe_size + misalign_bytes, 16) */
> 
> If I've figured this out right, x0 as computed here actually looks
> like round_up(sigframe_size + misalign_bytes + 1, 16) - 1.
> 
> (n + (m - 1)) & ~(m - 1) is the classic way to round up when m is a
> power of 2.
> 
> That's why I originally suggested to add 15.  Your code works, but I
> think it always allocates at least one byte more than needed (?)
> 
> This is not a huge deal, and better than allocating one byte to few,
> but it would be good to understand whether this behaviour was
> intentional or not.
> 

Well the reason if that I was equally (but wrongly on my side) convinced
to have to sum +16 before clearing the lower 0b1111.

My bad. I'm fixing in v7.


>> +	sub	sp, sp, x0
>> +	add	x23, sp, x22 /* new sigframe base with misaligment if any */
>> +
>> +	ldr	x0, =call_fmt
>> +	mov	x1, x21
>> +	mov	x2, x23
>> +	bl	printf
>> +
>> +	/* memcpy the provided content, while still keeping SP aligned */
>> +	mov	x0, x23
>> +	mov	x1, x20
>> +	mov	x2, x21
>> +	bl	memcpy
>> +
>> +	/*
>> +	 * Here saving a last minute SP to current->token acts as a marker:
>> +	 * if we got here, we are successfully faking a sigreturn; in other
>> +	 * words we are sure no bad fatal signal has been raised till now
>> +	 * for unrelated reasons, so we should consider the possibly observed
>> +	 * fatal signal like SEGV coming from Kernel restore_sigframe() and
>> +	 * triggered as expected from our test-case.
>> +	 * For simplicity this assumes that current field 'token' is laid out
>> +	 * as first in struct tdescr
>> +	 */
>> +	ldr	x0, current
>> +	str	x23, [x0]
>> +	/* finally move SP to misaligned address...if any requested */
>> +	mov	sp, x23
>> +
>> +	mov	x8, #__NR_rt_sigreturn
>> +	svc	#0
>> +
>> +	/*
>> +	 * Above sigreturn should not return...looping here leads to a timeout
>> +	 * and ensure proper and clean test failure, instead of jumping around
>> +	 * on a potentially corrupted stack.
>> +	 */
>> +	b	.
> 
> [...]
> 
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/testcases.c b/tools/testing/selftests/arm64/signal/testcases/testcases.c
>> index 1914a01222a1..e3521949b800 100644
>> --- a/tools/testing/selftests/arm64/signal/testcases/testcases.c
>> +++ b/tools/testing/selftests/arm64/signal/testcases/testcases.c
>> @@ -148,3 +148,49 @@ bool validate_reserved(ucontext_t *uc, size_t resv_sz, char **err)
>>  
>>  	return true;
>>  }
>> +
>> +/*
>> + * This function walks through the records inside the provided reserved area
>> + * trying to find enough space to fit @need_sz bytes: if not enough space is
>> + * available and an extra_context record is present, it throws away the
>> + * extra_context record.
>> + *
>> + * It returns a pointer to a new header where it is possible to start storing
>> + * our need_sz bytes.
>> + *
>> + * @shead: points to the start of reserved area
>> + * @need_sz: needed bytes
>> + * @resv_sz: reserved area size in bytes
>> + * @offset: if not null, this will be filled with the offset of the return
>> + *	    head pointer from @shead
>> + *
>> + * @return: pointer to a new head where to start storing need_sz bytes, or
>> + *	    NULL if space could not be made available.
>> + */
> 
> That's much clearer now, thanks for that.
> 
>> +struct _aarch64_ctx *get_starting_head(struct _aarch64_ctx *shead,
>> +				       size_t need_sz, size_t resv_sz,
>> +				       size_t *offset)
>> +{
> 
> [...]
> 
> Cheers
> ---Dave
> 

Cheers

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
