Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 534A3ADE40
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 19:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMdKFZp+FB8IhhjEjP7Ia5NYdfu/0dTyLKYzLO7PrtY=; b=JuE+NyZBPukNmT
	w/ELcFn63ZaWsNRSPAYnhrUWuJLK/3cSNExSbjwICjTgBhTF1R+gdt8JSblQQ3YvZF4buFI5bsM9V
	gWiDDCU0a7c/fyuuwqjZ0+w/RZYse1iqeAF9Z8twI08FZjb3XYWVyoTiwO1a8qHKIdqSePdf2p9ss
	vPKrFN3XSJs7L/de2hcBrex+FkN/02jKf1noihayxXc2CQDhLFabHV5MIhSURs+vVB/2SpyPD8GtU
	Z5Hy6wpp6TtkRvgRtHgJjkAlo+fmEo/2MgzO8/DazZlewFPcfXsCH1ejntrKrfeZgZvW3dBKdZOd0
	ZBjo1THF40v8w0AAhyfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7NpB-0001D0-AR; Mon, 09 Sep 2019 17:51:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Noy-0001CW-Gq
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 17:51:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D95BD1000;
 Mon,  9 Sep 2019 10:51:23 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE7173F71F;
 Mon,  9 Sep 2019 10:51:22 -0700 (PDT)
Subject: Re: [PATCH v5 08/11] kselftest: arm64: fake_sigreturn_missing_fpsimd
To: Dave Martin <Dave.Martin@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-9-cristian.marussi@arm.com>
 <20190904114910.GY27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <8cabc8ff-fe9f-f476-a58b-0bf0fb71c499@arm.com>
Date: Mon, 9 Sep 2019 18:51:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904114910.GY27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_105124_647635_F2E1B662 
X-CRM114-Status: GOOD (  18.74  )
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
> On Mon, Sep 02, 2019 at 12:29:29pm +0100, Cristian Marussi wrote:
>> Add a simple fake_sigreturn testcase which builds a ucontext_t without
>> the required fpsimd_context and place it onto the stack.
>> Expects a SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> v3 --> v4
>> - fix commit
>> - added signal.h
>> - added test description
>> ---
>>  .../testcases/fake_sigreturn_missing_fpsimd.c | 50 +++++++++++++++++++
>>  1 file changed, 50 insertions(+)
>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c
>> new file mode 100644
>> index 000000000000..08ecd8073a1a
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c
>> @@ -0,0 +1,50 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (C) 2019 ARM Limited
>> + *
>> + * Place a fake sigframe on the stack missing the mandatory FPSIMD
>> + * record: on sigreturn Kernel must spot this attempt and the test
>> + * case is expected to be terminated via SEGV.
>> + */
>> +
>> +#include <stdio.h>
>> +#include <signal.h>
>> +#include <ucontext.h>
>> +
>> +#include "test_signals_utils.h"
>> +#include "testcases.h"
>> +
>> +struct fake_sigframe sf;
>> +
>> +static int fake_sigreturn_missing_fpsimd_run(struct tdescr *td,
>> +					     siginfo_t *si, ucontext_t *uc)
>> +{
>> +	size_t resv_sz, offset;
>> +	struct _aarch64_ctx *head = GET_SF_RESV_HEAD(sf);
>> +
>> +	/* just to fill the ucontext_t with something real */
>> +	if (!get_current_context(td, &sf.uc))
>> +		return 1;
>> +
>> +	resv_sz = GET_SF_RESV_SIZE(sf);
>> +	head = get_header(head, FPSIMD_MAGIC, resv_sz, &offset);
>> +	if (head && resv_sz - offset >= HDR_SZ) {
>> +		fprintf(stderr, "Mangling template header. Spare space:%zd\n",
>> +			resv_sz - offset);
>> +		/* Just overwrite fpsmid_context */
>> +		write_terminator_record(head);
> 
> Strictly speaking, we may be throwing away more than just the
> fpsimd_context record here.
> 
> But I think the test works nonetheless.  fpsimd_context is the only
> record that's mandatory in any case.

Ok
> 
>> +
>> +		ASSERT_BAD_CONTEXT(&sf.uc);
>> +		fake_sigreturn(&sf, sizeof(sf), 0);
>> +	}
>> +
>> +	return 1;
>> +}
>> +
>> +struct tdescr tde = {
>> +		.name = "FAKE_SIGRETURN_MISSING_FPSIMD",
>> +		.descr = "Triggers a sigreturn with a missing fpsimd_context",
>> +		.sig_ok = SIGSEGV,
>> +		.timeout = 3,
>> +		.run = fake_sigreturn_missing_fpsimd_run,
>> +};
> 
> Assuming the comment I just posted on v3 of this patch makes sense to you,
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
