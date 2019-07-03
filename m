Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B85105EAB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 19:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8KkGqYlTJGH1yZcHtM6drd41zHC715cDfBDx9g57asY=; b=aKuxI2ILkqMnRpPPbRrrwEwUZ
	PE8M2JlJm5RpwTyMm+npHw9MZ/hahWCcrTMnMFGgfCWqaRQ003fanZFiJfgFUXlugqdgUO1YaPiAQ
	29NicZtYll86mkxtr5llngU7TF3kS6WoftXl+FClnQ8+Y/iwAIFTpOSSCEBmyDQA6pke7vU4nTFOT
	/6Hpupn26UUQuIBsgColYJLd+yRpBuVd86W8m9H+4iGHRWdqerHasfo7cxQxNxGgsrOeJAwD4xUx/
	gChPaL7FfjWEnVVbpJP30joYwP6dUE/9bPoGi2GtjQzo713zPeVfsG5cip3SbURkT1ewig8sQxsOg
	WBoblWlZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijGW-0007e1-D1; Wed, 03 Jul 2019 17:41:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hijGL-0007d8-ON
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 17:41:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ECEC1344;
 Wed,  3 Jul 2019 10:41:44 -0700 (PDT)
Received: from [10.1.35.169] (majettta.cambridge.arm.com [10.1.35.169])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AED463F718;
 Wed,  3 Jul 2019 10:41:43 -0700 (PDT)
Subject: Re: [PATCH 10/13] kselftest: arm64: fake_sigreturn_bad_magic
To: Dave Martin <Dave.Martin@arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-11-cristian.marussi@arm.com>
 <20190621103606.GR2790@e103592.cambridge.arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <334040bb-7fe2-6353-2fe1-0361ea28b725@arm.com>
Date: Wed, 3 Jul 2019 18:41:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190621103606.GR2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_104145_882301_984AB1D6 
X-CRM114-Status: GOOD (  31.28  )
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
Cc: andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave

a few updates related to v2 of this patchset

On 6/21/19 11:36 AM, Dave Martin wrote:
> On Thu, Jun 13, 2019 at 12:13:32PM +0100, Cristian Marussi wrote:
>> Added a simple fake_sigreturn testcase which builds a ucontext_t
>> with a bad magic header and place it onto the stack.
>> Expects a SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>>   .../arm64/signal/testcases/.gitignore         |  1 +
>>   .../testcases/fake_sigreturn_bad_magic.c      | 42 +++++++++++++++++++
>>   2 files changed, 43 insertions(+)
>>   create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> index 3e6b26be6727..c353b7bd899d 100644
>> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> @@ -7,3 +7,4 @@ mangle_pstate_invalid_mode_el2
>>   mangle_pstate_invalid_mode_el3
>>   mangle_pstate_ssbs_regs
>>   fake_sigreturn_misaligned
>> +fake_sigreturn_bad_magic
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
>> new file mode 100644
>> index 000000000000..de81ea10393f
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
>> @@ -0,0 +1,42 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
>> +#include <asm/sigcontext.h>
>> +#include <ucontext.h>
>> +#include <stdio.h>
>> +
>> +#include "test_signals_utils.h"
>> +#include "testcases.h"
>> +
>> +struct a_sigframe sf;
>> +
>> +static int fake_sigreturn_bad_magic_run(struct tdescr *td,
>> +					siginfo_t *si, ucontext_t *uc)
>> +{
>> +	struct _aarch64_ctx *head = GET_SF_RESV_HEAD(sf);
>> +
>> +	/* just to fill the ucontext_t with something real */
>> +	if (!get_current_context(td, &sf.uc))
>> +		return 1;
>> +
>> +	/* find the terminator, preserving existig headers */
>> +	head = get_terminator(head, GET_SF_RESV_SIZE(sf), NULL);
>> +	if (head) {
>> +		head->magic = 0xdeadbeef;
>> +		head->size = 128;
> 
> How can we be sure this won't overrun the end of the sigframe, once
> the new terminator is appended?
> 
> If there is extra_context in the frame, the frame is only as large as
> needed, so adding another record will always overrun the size of the
> frame in that case.

I underestimated this, since extra is currently never found and the 
__reserved area is mostly empty.

I have fixed in these regards some tests in V2, taking care to verify 
the available space and throwing away EXTRA to make room as advised.

> 
> I suggest splitting this test into a few cases, something like the
> following.
> 
> (Note, some of these are already covered by your tests.  I'm just trying
> to give the broad view here.)
> 
> 1) Add a bogus record that doesn't overrun the frame.
> 
> 2) Add a bogus record that does overrun the frame.
> 
> 3) Add a record with a bogus size (i.e., not a multiple of 16 bytes, or
> smaller than _aarch64_ctx).

These are tests TBD...in V2 I did something similar with wrong sizes and 
aligments (and overrun) but not full cases. I'll add something or some 
TODO notes in V3.

> 
> 3) Hack the size field of an existing record so that it overruns the
> frame.  Thee are two subcases here: a record big enough that the next
> _aarch64_ctx doesn't fit (probably already tested by
> fake_sigreturn_overflow_reserved),
fake_sigreturn_overflow_reserved has been removed in V2, will fix and 
re-enable in V3

and a record that overruns the frame
> all by itself (tested by fake_sigreturn_bad_size, but it would be good
> to check the exact boundary condition -- see my comments on that patch).

This should have been fixed now in fake_sigreturn_bad_size following 
advice (hopefuly)
> 
> When checking that the kernel rejects an _aarch64_ctx header that
> overruns the end of the frame, we should nonetheless write data for it
> that looks valid, so that we know the kernel is rejecting it because of
> the overrun and not because the header contents are invalid.
> 
> 4) Delete a required record from the frame (say, fpsimd_context).
> Or just delete everything.
> 
2 tests added in V2 about fpsimd: mising and duplicated

> 
> For this series, maybe just do (1): this test nearly does that.
> 
> If there is extra_context, we can delete it and replace it with our
> bogus record: this can't overrun if the bogus record's size is no bigger
> than extra_context.
> 
Followed this approach in v2
> We should have tests to cover the other cases, but they can be TODO for
> now.
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
