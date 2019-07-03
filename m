Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C095EABF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 19:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pGADnpK1PFnQctLkNaEp0QjiKIW7bKx0GGjR7rJsW74=; b=r5x6nrVG43Pw/8IitjN9l/3Z4
	Ea8GCvkhiDOdZXrnR5PAVy0NI42MVpKnHmfNWsgT5YK2GdKqlKCs9IRBsG4dFCNA5HwIlR6/twuil
	vbBlqWUIY5vVZZXWvLAh0CCk7POIv/XTmD6aQz8GND4dv0MXgdtLS2y6H4QOWDKBTzgNYUBXq9BTN
	G/jJD01rz4k78Poyx6R07BCtHPmsksdMmu8w/lAlGKPglAh4VW5CqCktt/BzwOcbU3YZjrd1O+AmM
	8UN5ZPiywzX3+ulcq4+FyOdDvx8rVJLpxSax+t9Pmese1sH2SwMfLPupgaRaYvWeGnGeUhFiepkJE
	RU9TOpCdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijLC-0001eg-Sh; Wed, 03 Jul 2019 17:46:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hijKm-0001Ui-NX
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 17:46:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E95A344;
 Wed,  3 Jul 2019 10:46:20 -0700 (PDT)
Received: from [10.1.35.169] (majettta.cambridge.arm.com [10.1.35.169])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 12FFD3F718;
 Wed,  3 Jul 2019 10:46:18 -0700 (PDT)
Subject: Re: [PATCH 11/13] kselftest: arm64: fake_sigreturn_bad_size
To: Dave Martin <Dave.Martin@arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-12-cristian.marussi@arm.com>
 <20190621103612.GS2790@e103592.cambridge.arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <ecac0d06-768a-e113-f3c4-debea97d6e1e@arm.com>
Date: Wed, 3 Jul 2019 18:46:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190621103612.GS2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_104620_909341_A95D2FD7 
X-CRM114-Status: GOOD (  22.81  )
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
> On Thu, Jun 13, 2019 at 12:13:33PM +0100, Cristian Marussi wrote:
>> Added a simple fake_sigreturn testcase which builds a ucontext_t
>> with a badly sized header and place it onto the stack.
>> Expects a SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>>   .../arm64/signal/testcases/.gitignore         |  1 +
>>   .../testcases/fake_sigreturn_bad_size.c       | 40 +++++++++++++++++++
>>   2 files changed, 41 insertions(+)
>>   create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> index c353b7bd899d..9ad1735e0018 100644
>> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> @@ -8,3 +8,4 @@ mangle_pstate_invalid_mode_el3
>>   mangle_pstate_ssbs_regs
>>   fake_sigreturn_misaligned
>>   fake_sigreturn_bad_magic
>> +fake_sigreturn_bad_size
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
>> new file mode 100644
>> index 000000000000..d54f79d63bf6
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
>> @@ -0,0 +1,40 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
>> +#include <asm/sigcontext.h>
>> +#include <ucontext.h>
>> +
>> +#include "test_signals_utils.h"
>> +#include "testcases.h"
>> +
>> +struct a_sigframe sf;
>> +
>> +static int fake_sigreturn_bad_size_run(struct tdescr *td,
>> +				       siginfo_t *si, ucontext_t *uc)
>> +{
>> +	struct _aarch64_ctx *head = GET_SF_RESV_HEAD(sf);
>> +
>> +	/* just to fill the ucontext_t with something real */
>> +	if (!get_current_context(td, &sf.uc))
>> +		return 1;
>> +
>> +	/* Tampering size to an unplausible number should cause a SEGV */
>> +	head = get_terminator(head, GET_SF_RESV_SIZE(sf), NULL);
>> +	if (head) {
>> +		head->magic = ESR_MAGIC;
> 
> Add a comment to say why we're using this magic?
> 
>> +		head->size = GET_SF_RESV_SIZE(sf) * 2;
> 
> If we have extra_context, this might not be an invalid size, because
> extra_context can be much larger than sizeof(__reserved) ... but also
> we will overrun anyway, because extra_context should already be only
> just large enough to accommodate the original terminator.
> 
> As with the previous test, we should probably throw away the
> extra_context record (if any) and replace it with this new record.
> 
> We should check the actual boundary condition here, rather than just
> testing with a giant size: we want to make the kernel detects any
> overrun, however small.
> 
> We should also write a valid terminator after the new record, so
> that we know the kernel is detecting the size overrun instead of
> rejecting the next record because it is garbage.
> 

Fixed in V2: throwing away the extra when needed, and adding a bogus 
ESR_MAGIC with a bogus size, large enough to fit all the remaining free 
__reserved (- NULL terminator space)  + 16 bytes (to be still aligned 
and crashing out on an overrun of the least minimum size) and terminated 
with another NULL

Cristian

>> +
>> +		ASSERT_BAD_CONTEXT(&sf.uc);
>> +		fake_sigreturn(&sf, sizeof(sf), 16);
>> +	}
>> +
>> +	return 1;
>> +}
> 
> [...]
> 
> Cheers
> ---Dave
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
