Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFEDA3A36
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHSr73CjVTwku7S3PpbHEbsJQDcZ+KUXl+WRpkCZOek=; b=gqOQVpub64/HoU
	qzuIo4WWCmaO7Z90C+Bww/yomzPbPX9DFf8u1CJwZ35gT/RzE4cKeYsFQqstuofnRFBMjjjo+YgMG
	EaW77hypabblcVBgp1V29zrH2R8aX6ZDEVUf0lfmCN54x+Ct6pytv18jTGeP7wKRAkSezVZKIQoyM
	WM5EVfsR5/NvqIay+cC25mk5EoYlGpD2eqdmMm4COcgXkbr+IfUXjKyC02Da2+eL8V/Ktg251gCIn
	dHfdcsNWWC89SPSlqUZ1QCUTfFL/KEe3W/QAyAFPwCYN8PZo9pDURpc84adAkZbQU7SbPEfWeL1Ji
	ewKyatl3BFC0tlO9Pmvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3iid-0002j2-MX; Fri, 30 Aug 2019 15:21:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3iiS-0002iZ-L7
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:21:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81BA0344;
 Fri, 30 Aug 2019 08:21:31 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD0E43F703;
 Fri, 30 Aug 2019 08:21:30 -0700 (PDT)
Subject: Re: [PATCH v3 10/11] kselftest: arm64: fake_sigreturn_bad_size
To: Dave Martin <Dave.Martin@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-11-cristian.marussi@arm.com>
 <20190813162646.GH10425@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <599bc78e-718d-0475-0ab0-79e1277e55ab@arm.com>
Date: Fri, 30 Aug 2019 16:21:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813162646.GH10425@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_082132_785228_3896EA80 
X-CRM114-Status: GOOD (  18.51  )
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

On 13/08/2019 17:26, Dave Martin wrote:
> On Fri, Aug 02, 2019 at 06:02:59PM +0100, Cristian Marussi wrote:
>> Added a simple fake_sigreturn testcase which builds a ucontext_t
> 
> Add

Ok

> 
>> with a badly sized header that causes a overrun in the __reserved
>> area and place it onto the stack. Expects a SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>>  .../arm64/signal/testcases/.gitignore         |  1 +
>>  .../testcases/fake_sigreturn_bad_size.c       | 85 +++++++++++++++++++
>>  2 files changed, 86 insertions(+)
>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> index 94f9baaf638c..3408e0f5ba98 100644
>> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> @@ -8,3 +8,4 @@ fake_sigreturn_bad_magic
>>  fake_sigreturn_bad_size_for_magic0
>>  fake_sigreturn_missing_fpsimd
>>  fake_sigreturn_duplicated_fpsimd
>> +fake_sigreturn_bad_size
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
>> new file mode 100644
>> index 000000000000..1467fb534d8b
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
>> @@ -0,0 +1,85 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
> 
> signal.h?
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
>> +	/*
>> +	 * find the terminator, preserving existing headers
>> +	 * and verify amount of spare room in __reserved area.
>> +	 */
>> +	head = get_terminator(shead, resv_sz, &offset);
>> +	/*
>> +	 * try stripping extra_context header when low on space:
>> +	 * we need at least  for the bad sized esr_context.
> 
> double space
> 
ok.
>> +	 */
>> +	need_sz = HDR_SZ + sizeof(struct esr_context);
>> +	if (head && resv_sz - offset < need_sz) {
>> +		fprintf(stderr, "Low on space:%zd. Discarding extra_context.\n",
>> +			resv_sz - offset);
>> +		head = get_header(shead, EXTRA_MAGIC, resv_sz, &offset);
>> +	}
>> +	/* just give up and timeout if still not enough space */
>> +	if (head && resv_sz - offset >= need_sz) {
>> +		fprintf(stderr, "Mangling template header. Spare space:%zd\n",
>> +			resv_sz - offset);
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
>> +		 * neededwhile keeping size value 16-aligned
>> +		 *
>> +		 * It must trigger a SEGV from Kernel on:
>> +		 *
>> +		 *	resv_sz - offset < sizeof(*head)
>> +		 */
>> +		/* at first set the maximum good 16-aligned size */
>> +		head->size = (resv_sz - offset - need_sz + MIN_SZ_ALIGN) & ~0xfUL;
>> +		/* plus a bit more of 16-aligned sized stuff */
>> +		head->size += MIN_SZ_ALIGN;
>> +		/* and terminate properly */
>> +		write_terminator_record(GET_RESV_NEXT_HEAD(head));
>> +		ASSERT_BAD_CONTEXT(&sf.uc);
>> +		fake_sigreturn(&sf, sizeof(sf), 16);
>> +	}
>> +
>> +	return 1;
>> +}
> 

I'll convert to use new helper get_starting_head() to make space in __reserved.

> [...]
> 
> Otherwise looks reasonable.
> 
> Cheers
> ---Dave

Cheers

Cristian
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
