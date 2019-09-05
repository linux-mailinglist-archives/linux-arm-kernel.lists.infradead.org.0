Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17C8AA47B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkYG/36anc/+kBH6oTv8JfvnaTZyBxvjro/Jg4Vft2c=; b=coOnAolqzC+oBV
	sta+saTYaNyo4hDrrc+B/bCwVFSvsiJAeiI2Y3mXQ0hSopDshYG50+Ls3lYqMi07SHvxevm582Pgt
	X1KaPND8ib7Ak6uA+QFMATHc7DT3OPKridd8+LnFcmHHSa+faZ+MattzeNDKmwtP4cKAbdD22C71e
	ytBLOcvNicEgWNU3ja0O6gttannQQtL24xXS1Q4IZpTDdG+xssBz5aMDk2r0qwB/KWA3smjRy9pir
	+/jTDg4VyneGTLrvgw9mSeAKO5wwo1ErYxceSQeR1dP6Eto+xN1vEelwKqrF7dl/sGDQL9yC3Vs6u
	qdCgnv92Z1GN5rejauLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rsA-0002kL-En; Thu, 05 Sep 2019 13:32:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rrw-0002ju-UM
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:32:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 270351597;
 Thu,  5 Sep 2019 06:32:12 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E2D03F67D;
 Thu,  5 Sep 2019 06:32:11 -0700 (PDT)
Subject: Re: [PATCH v5 09/11] kselftest: arm64:
 fake_sigreturn_duplicated_fpsimd
To: Dave Martin <Dave.Martin@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-10-cristian.marussi@arm.com>
 <20190904114923.GZ27757@arm.com>
 <f29dbde7-90eb-3a06-71a0-e434afa9f89d@arm.com>
 <20190905123904.GD27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <365b527e-793e-ad83-47a8-5d8692ed50c4@arm.com>
Date: Thu, 5 Sep 2019 14:32:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905123904.GD27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_063213_067912_A180223D 
X-CRM114-Status: GOOD (  18.93  )
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
 linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/09/2019 13:39, Dave Martin wrote:
> On Thu, Sep 05, 2019 at 01:15:58PM +0100, Cristian Marussi wrote:
>> Hi
>>
>> On 04/09/2019 12:49, Dave Martin wrote:
>>> On Mon, Sep 02, 2019 at 12:29:30pm +0100, Cristian Marussi wrote:
>>>> Add a simple fake_sigreturn testcase which builds a ucontext_t with
>>>> an anomalous additional fpsimd_context and place it onto the stack.
>>>> Expects a SIGSEGV on test PASS.
>>>>
>>>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>>>> ---
>>>> v3 --> v4
>>>> - fix commit
>>>> - missing include
>>>> - using new get_starting_head() helper
>>>> - added test description
>>>> ---
>>>>  .../fake_sigreturn_duplicated_fpsimd.c        | 52 +++++++++++++++++++
>>>>  1 file changed, 52 insertions(+)
>>>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
>>>>
>>>> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
>>>> new file mode 100644
>>>> index 000000000000..c7122c44f53f
>>>> --- /dev/null
>>>> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
>>>> @@ -0,0 +1,52 @@
>>>> +// SPDX-License-Identifier: GPL-2.0
>>>> +/*
>>>> + * Copyright (C) 2019 ARM Limited
>>>> + *
>>>> + * Place a fake sigframe on the stack including an additional FPSIMD
>>>> + * record: on sigreturn Kernel must spot this attempt and the test
>>>> + * case is expected to be terminated via SEGV.
>>>> + */
>>>> +
>>>> +#include <signal.h>
>>>> +#include <ucontext.h>
>>>> +
>>>> +#include "test_signals_utils.h"
>>>> +#include "testcases.h"
>>>> +
>>>> +struct fake_sigframe sf;
>>>> +
>>>> +static int fake_sigreturn_duplicated_fpsimd_run(struct tdescr *td,
>>>> +						siginfo_t *si, ucontext_t *uc)
>>>> +{
>>>> +	size_t resv_sz, need_sz;
>>>> +	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
>>>> +
>>>> +	/* just to fill the ucontext_t with something real */
>>>> +	if (!get_current_context(td, &sf.uc))
>>>> +		return 1;
>>>> +
>>>> +	resv_sz = GET_SF_RESV_SIZE(sf);
>>>> +	need_sz = HDR_SZ + sizeof(struct fpsimd_context);
>>>
>>> Nit: Maybe write this sum in the same order as the records we're going 
>>> o append, i.e.:
>>>
>>> 	need_sz = sizeof(struct fpsimd_context) + HDR_SZ; /* for terminator */
>>
>> Ok
>>
>>>
>>> Also, maybe fail this test if there is no fpsimd_context in the initial
>>> frame from get_current_context(): that would be a kernel bug, but we
>>> wouldn't be giving fake_sigreturn() duplicate fpsimd_contexts in that
>>> case -- so this test wouldn't test the thing it's supposed to test.
>>>
>>
>> Any context grabbed by get_current_context() is verified at first to be sane
>> when is copied in the handler by ASSERT_GOOD_CONTEXT()
>>
>>>   } else if (signum == sig_copyctx && current->live_uc) {
>>>                 memcpy(current->live_uc, uc, current->live_sz);
>>>                 ASSERT_GOOD_CONTEXT(current->live_uc);
>>>                 current->live_uc_valid = 1;
>>
>> A missing fpsimd in the original sigframe would lead to an abort()
>> straight away while preparing the test, and the test will fail.
> 
> OK, but there is no abort() in ASSERT_GOOD_CONTEXT(), only assert(0).
> Can you add an abort() after the assert() in there in patch 2?
> 
Ok yes, I meant the abort coming from assert(0) in fact....I'll review all
the critical asserts for additional aborts in V6

> People probably aren't going to be building the tests with -DNDEBUG, but
> we should avoid unnecessary surprises...
> 
> Cheers
> ---Dave
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
