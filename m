Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 703AAA3995
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 16:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4DjfoVz5teycrTSAF63Ri00R+oA4HiTvlR9mzDahOM=; b=VBMOn3Ph8tq8A6
	WE5ffXmOWqJ8LnmjLE+/02d6lk9HwYYNgjh55IKt3xjZADnZOkaDTyteBECzq9JMhUzYCSGR/Gfrw
	B35PIIxU736JUIbvdTSgDBtfhNCfPqDiHOqsXf14O+2+eeGPKMo3KNMD7kTi9GY1sZ1EwrTxwSYjI
	RL+Eda28Ix+y9Y+xThx8zMNYPbbDPZI+h9Htc1AK/jVt2d0astT87ys8KfG7V5rpx7x1nDXkRQcrX
	RpD81eDvaSbLKnNvDI65MWSwwQD/KngiUzlGnf3qFNMM2IQHv50wZUYZMxYwvyasZ9m7WFaEDHmez
	qR+k6sBZBF1u89z6hFUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3iDm-0007jU-RS; Fri, 30 Aug 2019 14:49:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3iDb-0007iz-0x
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 14:49:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 87D34344;
 Fri, 30 Aug 2019 07:49:38 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D0FEC3F703;
 Fri, 30 Aug 2019 07:49:37 -0700 (PDT)
Subject: Re: [PATCH v3 07/11] kselftest: arm64:
 fake_sigreturn_bad_size_for_magic0
To: Dave Martin <Dave.Martin@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-8-cristian.marussi@arm.com>
 <20190813162550.GE10425@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <1a4f4b81-d8fa-ece3-125d-6235b8972bbb@arm.com>
Date: Fri, 30 Aug 2019 15:49:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813162550.GE10425@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_074939_155359_6C7CB109 
X-CRM114-Status: GOOD (  19.54  )
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
Cc: andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/08/2019 17:25, Dave Martin wrote:
> On Fri, Aug 02, 2019 at 06:02:56PM +0100, Cristian Marussi wrote:
>> Added a simple fake_sigreturn testcase which builds a ucontext_t
> 
> Add

Ok
> 
>> with a badly sized magic0 header and place it onto the stack.
> 
> I usually call a record with magic number 0 a "terminator record".
> 

Ok
>> Expects a SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>>  .../arm64/signal/testcases/.gitignore         |  1 +
>>  .../fake_sigreturn_bad_size_for_magic0.c      | 57 +++++++++++++++++++
>>  2 files changed, 58 insertions(+)
>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> index 0ea6fdc3765c..cf2a73599818 100644
>> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> @@ -5,3 +5,4 @@ mangle_pstate_invalid_mode_el2
>>  mangle_pstate_invalid_mode_el3
>>  mangle_pstate_ssbs_regs
>>  fake_sigreturn_bad_magic
>> +fake_sigreturn_bad_size_for_magic0
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c
>> new file mode 100644
>> index 000000000000..2f53c4740c85
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c
>> @@ -0,0 +1,57 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
> 
> #include <signal.h> ?
> 

Ok
>> +#include <stdio.h>
>> +#include <ucontext.h>
>> +
>> +#include "test_signals_utils.h"
>> +#include "testcases.h"
>> +
>> +struct fake_sigframe sf;
>> +
>> +#define MIN_SZ_ALIGN	16
>> +
>> +static int fake_sigreturn_bad_size_for_magic0_run(struct tdescr *td,
>> +						  siginfo_t *si, ucontext_t *uc)
>> +{
>> +	size_t resv_sz, offset;
>> +	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
>> +
>> +	/* just to fill the ucontext_t with something real */
>> +	if (!get_current_context(td, &sf.uc))
>> +		return 1;
>> +
>> +	resv_sz = GET_SF_RESV_SIZE(sf);
>> +	/*
>> +	 * find the terminator, preserving existing headers
>> +	 * and verify amount of spare room in __reserved area.
>> +	 */
>> +	head = get_terminator(shead, resv_sz, &offset);
>> +	/*
>> +	 * try stripping extra_context header when low on space:
>> +	 * we need at least HDR_SZ + 16 space for the bad sized terminator.
>> +	 */
>> +	if (head && resv_sz - offset < HDR_SZ + MIN_SZ_ALIGN) {
>> +		fprintf(stderr, "Low on space:%zd. Discarding extra_context.\n",
>> +			resv_sz - offset);
>> +		head = get_header(shead, EXTRA_MAGIC, resv_sz, &offset);
>> +	}
>> +	/* just give up and timeout if still not enough space */
>> +	if (head && resv_sz - offset >= HDR_SZ + MIN_SZ_ALIGN) {
>> +		head->magic = 0;
>> +		head->size = MIN_SZ_ALIGN;
> 
> This is different from the amount of space we tested for
> (HDR_SZ + MIN_SZ_ALIGN) earlier.
> 
> I'm not sure it matters which we use, but we should be consistent.
> 
> I suggest sticking with HDR_SZ, unless there's something I've missed.
> 
I'll stick to HDR_SZ in this case and use the new helper from 06/11
(get_starting_head)

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
