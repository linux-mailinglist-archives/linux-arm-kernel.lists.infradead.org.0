Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B8D5EACD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 19:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iHkiPudsW6WME7m6PWRTj+ex8ikGZqKdskQ5GVuE2IA=; b=FSfG4IarB43ogtd1JnKqzSf9b
	2RzRHDPRb2Fz+soii57/wGJ1TA6CMRgyNRR+4+4uWuBtdovh0qHorRCwXKjlnR4nFhIR1axgMYINW
	VoA2gJRjSMENUo6Ww5JPcKeszzsXJKEof1DIq8ljPHJWUwxRY5iiozkVhgT6vKTk1h+GR08bgO2Rt
	MReuUdLR0ef7MHgfAhvtp5PdCx+72GCJ80ISqNqJD4WRXGoU4xOYgaA5OTKInqDpK1nWpA4oSdfxN
	O882WrpIq7zyNgnnqQP82TNtYNKBOwcWoJ4D6Nn3pf+XfO9YDG4GJjXN7CGm3PH9qX4xZmG9IP+K7
	vzuJf+hUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijOn-0003Yp-7x; Wed, 03 Jul 2019 17:50:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hijOb-0003YO-9A
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 17:50:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A401C344;
 Wed,  3 Jul 2019 10:50:16 -0700 (PDT)
Received: from [10.1.35.169] (majettta.cambridge.arm.com [10.1.35.169])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 650493F718;
 Wed,  3 Jul 2019 10:50:15 -0700 (PDT)
Subject: Re: [PATCH 12/13] kselftest: arm64: fake_sigreturn_bad_size_for_magic0
To: Dave Martin <Dave.Martin@arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-13-cristian.marussi@arm.com>
 <20190621103618.GT2790@e103592.cambridge.arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <9535a93a-94b9-65e1-9f5d-0caf14c783b8@arm.com>
Date: Wed, 3 Jul 2019 18:50:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190621103618.GT2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_105017_412142_9120F08B 
X-CRM114-Status: GOOD (  20.12  )
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

Hi

On 6/21/19 11:36 AM, Dave Martin wrote:
> On Thu, Jun 13, 2019 at 12:13:34PM +0100, Cristian Marussi wrote:
>> Added a simple fake_sigreturn testcase which builds a ucontext_t
>> with a badly sized magic0 header and place it onto the stack.
>> Expects a SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>>   .../arm64/signal/testcases/.gitignore         |  1 +
>>   .../fake_sigreturn_bad_size_for_magic0.c      | 44 +++++++++++++++++++
>>   2 files changed, 45 insertions(+)
>>   create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> index 9ad1735e0018..66ba865b3b7e 100644
>> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> @@ -9,3 +9,4 @@ mangle_pstate_ssbs_regs
>>   fake_sigreturn_misaligned
>>   fake_sigreturn_bad_magic
>>   fake_sigreturn_bad_size
>> +fake_sigreturn_bad_size_for_magic0
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c
>> new file mode 100644
>> index 000000000000..703909959473
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c
>> @@ -0,0 +1,44 @@
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
>> +static int fake_sigreturn_bad_size_for_magic0_run(struct tdescr *td,
>> +						  siginfo_t *si, ucontext_t *uc)
>> +{
>> +	struct _aarch64_ctx *head = GET_SF_RESV_HEAD(sf);
>> +
>> +	/* just to fill the ucontext_t with something real */
>> +	if (!get_current_context(td, &sf.uc))
>> +		return 1;
>> +
>> +	/*
>> +	 * Jump to the free slot...we must preserve existing
>> +	 * magics like fpsimd in order no to SEGV anyway
>> +	 */
>> +	head = get_terminator(head, GET_SF_RESV_SIZE(sf), NULL);
>> +	if (head) {
>> +		head->magic = 0;
>> +		head->size = 256;
> 
> What if this overruns the signal frame?  We want to know that the kernel
> is rejecting the terminator because its size is wrong, not because the
> size overruns the frame or is invalid is some other way.
> 
> For example, if the kernel code were refactored to check that the record
> fits in the frame first, before looking at the magic, then this test
> could pass for the wrong reason.
>

Right. Fixed in V2 to account of available space and avoding overrun 
(throwing away EXTRA if neeeded): moreover bad size is now 16 aligned to 
avoid crashing out in size % 16 chcecks

Thanks

Cristian

> [...]
> 
> Cheers
> ---Dave
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
