Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4807CADE72
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pa0C+Fl1mZu5YCMUTKRSimLz9JZxkfk9TRNImAPoT9w=; b=M4TsHn/Eo/NxKl
	rj6wrllcO6ZYGSltPf32qdW56HcfQczSVjfJ4rlTMW7OkqQf17r8SPT9H5FYP3lUmjfZ9k2NOZm2g
	Khd038A1xI5ir7pyRkDXA/Qja4BWM88XFJIJkn9ySDqmXWbBPVMqM7nRep4ee6S+lqffnozcd6WxH
	e3WQ63hFSo/TfV5Mj1VFdg88WLPrpJOpXEIjamPN9PuJMSg+Ni5IiD9Uecn2qxRLG+p28unnBX/Iq
	S2/n4dhZRezmykXokzjG/5lXq2ZwOZiMuKWdjDPLO/gFxn46CSrBBSCj0Je32BLN/iTWjwzHW+CxL
	r3marTNX54M4NMQN9F8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7O8I-0007xX-TW; Mon, 09 Sep 2019 18:11:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O87-0007x0-HT
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:11:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32E041000;
 Mon,  9 Sep 2019 11:11:11 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E53D3F71F;
 Mon,  9 Sep 2019 11:11:10 -0700 (PDT)
Subject: Re: [PATCH v5 10/11] kselftest: arm64: fake_sigreturn_bad_size
To: Dave Martin <Dave.Martin@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-11-cristian.marussi@arm.com>
 <20190904114933.GA27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <eadec3f3-279c-28a8-a894-c0e6082cdb14@arm.com>
Date: Mon, 9 Sep 2019 19:11:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904114933.GA27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111111_711993_2307C8AD 
X-CRM114-Status: GOOD (  20.50  )
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

On 04/09/2019 12:49, Dave Martin wrote:
> On Mon, Sep 02, 2019 at 12:29:31pm +0100, Cristian Marussi wrote:
>> Add a simple fake_sigreturn testcase which builds a ucontext_t with a
>> badly sized header that causes a overrun in the __reserved area and
>> place it onto the stack. Expects a SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> v3 --> v4
>> - fix commit
>> - missing include
>> - using new get_starting_head() helper
>> - added test description
>> ---
>>  .../testcases/fake_sigreturn_bad_size.c       | 77 +++++++++++++++++++
>>  1 file changed, 77 insertions(+)
>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
>> new file mode 100644
>> index 000000000000..b1156afdb691
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
>> @@ -0,0 +1,77 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (C) 2019 ARM Limited
>> + *
>> + * Place a fake sigframe on the stack including a bad record overflowing
>> + * the __reserved space: on sigreturn Kernel must spot this attempt and
>> + * the test case is expected to be terminated via SEGV.
>> + */
>> +
>> +#include <signal.h>
>> +#include <ucontext.h>
>> +
>> +#include "test_signals_utils.h"
>> +#include "testcases.h"
>> +
>> +struct fake_sigframe sf;
>> +
>> +#define MIN_SZ_ALIGN	16
>> +
>> +static int fake_sigreturn_bad_size_run(struct tdescr *td,
>> +				       siginfo_t *si, ucontext_t *uc)
>> +{
>> +	size_t resv_sz, need_sz, offset;
>> +	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
>> +
>> +	/* just to fill the ucontext_t with something real */
>> +	if (!get_current_context(td, &sf.uc))
>> +		return 1;
>> +
>> +	resv_sz = GET_SF_RESV_SIZE(sf);
>> +	/* at least HDR_SZ + bad sized esr_context needed */
>> +	need_sz = HDR_SZ + sizeof(struct esr_context);
> 
> Nit: can we write this sum the other way round (see comment on patch 9)?
> 

Ok
>> +	head = get_starting_head(shead, need_sz, resv_sz, &offset);

I'll also fail straight away too here on !head (no timeout) like in others

>> +	if (head) {
>> +		/*
>> +		 * Use an esr_context to build a fake header with a
>> +		 * size greater then the free __reserved area minus HDR_SZ;
>> +		 * using ESR_MAGIC here since it is not checked for size nor
>> +		 * is limited to one instance.
>> +		 *
>> +		 * At first inject an additional normal esr_context
>> +		 */
>> +		head->magic = ESR_MAGIC;
>> +		head->size = sizeof(struct esr_context);
>> +		/* and terminate properly */
>> +		write_terminator_record(GET_RESV_NEXT_HEAD(head));
>> +		ASSERT_GOOD_CONTEXT(&sf.uc);
>> +
>> +		/*
>> +		 * now mess with fake esr_context size: leaving less space than
>> +		 * needed while keeping size value 16-aligned
>> +		 *
>> +		 * It must trigger a SEGV from Kernel on:
>> +		 *
>> +		 *	resv_sz - offset < sizeof(*head)
>> +		 */
>> +		/* at first set the maximum good 16-aligned size */
>> +		head->size =
>> +			(resv_sz - offset - need_sz + MIN_SZ_ALIGN) & ~0xfUL;
>> +		/* plus a bit more of 16-aligned sized stuff */
>> +		head->size += MIN_SZ_ALIGN;
> 
> Can we also have versions of this test that try:
> 
>  a) a size that doesn't overflow __reserved[], but is not a multiple of 16
>  b) a size that is less than 16
>  c) a size that does overflow __reserved[], but by less than 16 bytes?
> 
> These tests are all closely related and can probably be macro-ised
> easily.  They can go on the TODO list for now anyway: let's get this
> series settled in its current form first.
> 
Ok

> In any case:
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> 

Thanks

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
