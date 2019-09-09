Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15940ADE30
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 19:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8IBMidbNJyQmQjl8GLtGo+Yg2dJ6RU/zFOEWsh4Yasc=; b=JErpb/kWOX79wR
	m1fyZd5vnICgxUxvZZOshKmWMsMwqlHYWZVhBhalnJR0vg6jwopFL5QI2s+VkHjYEZbAgvFf5WiX2
	8HNAJg9G5rY2gczBkoCzGsPQrkJwwdaauhWPxMAH/dfwmMjZ+gK1ZO2abgHFWKMG4Qc8OTe05k0Qr
	p4LzKIBxKaj216lr4h+vTsJGsCa0SJ9kwvxKQOYLTdvutjw/CYPDnwgmmv+6+IfMfuc9xe92U4PF0
	NYumpAl2JxmuPV88jR7aJ7QPtwBs1YBpGKJztmpw7KT5NuxIPb+Fc7Bw8IV9D2y7+aIRT1piJIBph
	pD+6Pf60y/GGE+0ZJB2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Nlg-0007t6-6q; Mon, 09 Sep 2019 17:48:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7NlV-0007sd-5K
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 17:47:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 89B461000;
 Mon,  9 Sep 2019 10:47:47 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA59A3F71F;
 Mon,  9 Sep 2019 10:47:46 -0700 (PDT)
Subject: Re: [PATCH v5 07/11] kselftest: arm64:
 fake_sigreturn_bad_size_for_magic0
To: Dave Martin <Dave.Martin@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-8-cristian.marussi@arm.com>
 <20190904114901.GX27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <5d6c52f8-d689-0665-85fa-367e1e4a148d@arm.com>
Date: Mon, 9 Sep 2019 18:47:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904114901.GX27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_104749_292195_41FE7088 
X-CRM114-Status: GOOD (  18.07  )
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
> On Mon, Sep 02, 2019 at 12:29:28pm +0100, Cristian Marussi wrote:
>> Add a simple fake_sigreturn testcase which builds a ucontext_t with a
>> badly sized terminator record and place it onto the stack.
>> Expects a SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> v3 --> v4
>> - fix commit
>> - add signal.h include
>> - using new get_starting_head() helper
>> - added test description
>> ---
>>  .../fake_sigreturn_bad_size_for_magic0.c      | 49 +++++++++++++++++++
>>  1 file changed, 49 insertions(+)
>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c
>> new file mode 100644
>> index 000000000000..25017fe18214
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size_for_magic0.c
>> @@ -0,0 +1,49 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (C) 2019 ARM Limited
>> + *
>> + * Place a fake sigframe on the stack including a badly sized terminator
>> + * record: on sigreturn Kernel must spot this attempt and the test case
>> + * is expected to be terminated via SEGV.
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
>> +static int fake_sigreturn_bad_size_for_magic0_run(struct tdescr *td,
>> +						  siginfo_t *si, ucontext_t *uc)
>> +{
>> +	size_t resv_sz, need_sz;
>> +	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
>> +
>> +	/* just to fill the ucontext_t with something real */
>> +	if (!get_current_context(td, &sf.uc))
>> +		return 1;
>> +
>> +	resv_sz = GET_SF_RESV_SIZE(sf);
>> +	/* at least HDR_SZ for the badly sized terminator. */
>> +	need_sz = HDR_SZ;
> 
> Nit: do we need the resv_sz and need_sz variables here?
> 

No

>> +	head = get_starting_head(shead, need_sz, resv_sz, NULL);
>> +	if (head) {
> 
> Perhaps we could fail immediately rather than relying on timeout here?
> 
> Probably not a huge deal though.

Yes I'll do. (I'll review slightly the exit/termination strategy in main()
but it won't be a problem)

> 
>> +		head->magic = 0;
>> +		head->size = HDR_SZ;
>> +
>> +		ASSERT_BAD_CONTEXT(&sf.uc);
>> +		fake_sigreturn(&sf, sizeof(sf), 0);
>> +	}
>> +
>> +	return 1;
>> +}
>> +
>> +struct tdescr tde = {
>> +		.name = "FAKE_SIGRETURN_BAD_SIZE_FOR_TERMINATOR",
>> +		.descr = "Trigger a sigreturn using non-zero size terminator",
>> +		.sig_ok = SIGSEGV,
>> +		.timeout = 3,
>> +		.run = fake_sigreturn_bad_size_for_magic0_run,
>> +};
> 
> Either way,
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> 

Thanks

Cheers

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
