Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65398A816A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 13:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3H4WrqnoU3RG/UyPE0nmOYHZmPsKCf7WN4trmBv2fL4=; b=lINYtwAQGaKWaS
	gJ0cipmBQz9wMXnkYuwxy1TdPIay4bVv6UGEiW9bcwNqoQLp0DVM6W1xee/+gsUrjyo/F8WF1ypcY
	GtwUSxQBCmTcqhnbmTJIXb7p05CCVmuA4bb1NHAb7H+Rfz9jJnwZXvepnhjO1hasoy44XLtZHH4cw
	S+NQw//v13UALGoQ742ArmSfX2ny9zNg6HR/8IvOqbOQJJQ3WIprwxdaYU83iAPp3ssDSV4rAZ5VG
	tHAWFIISOy93oPb61Ox5J5N4RljejnA7JpadG+/BTlxFvFCeDivqhlzJXlX1KZLCX05HDHDJaoSwI
	+p6yeeeD30/gIwuY7bPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Tnw-00077O-UQ; Wed, 04 Sep 2019 11:50:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Tmj-0005EC-Rx
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 11:49:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 609BE337;
 Wed,  4 Sep 2019 04:49:13 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 78C983F246;
 Wed,  4 Sep 2019 04:49:12 -0700 (PDT)
Date: Wed, 4 Sep 2019 12:49:10 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v5 08/11] kselftest: arm64: fake_sigreturn_missing_fpsimd
Message-ID: <20190904114910.GY27757@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-9-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902112932.36129-9-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_044914_074759_E548E1A7 
X-CRM114-Status: GOOD (  19.87  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 12:29:29pm +0100, Cristian Marussi wrote:
> Add a simple fake_sigreturn testcase which builds a ucontext_t without
> the required fpsimd_context and place it onto the stack.
> Expects a SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> v3 --> v4
> - fix commit
> - added signal.h
> - added test description
> ---
>  .../testcases/fake_sigreturn_missing_fpsimd.c | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c
> new file mode 100644
> index 000000000000..08ecd8073a1a
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c
> @@ -0,0 +1,50 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 ARM Limited
> + *
> + * Place a fake sigframe on the stack missing the mandatory FPSIMD
> + * record: on sigreturn Kernel must spot this attempt and the test
> + * case is expected to be terminated via SEGV.
> + */
> +
> +#include <stdio.h>
> +#include <signal.h>
> +#include <ucontext.h>
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +struct fake_sigframe sf;
> +
> +static int fake_sigreturn_missing_fpsimd_run(struct tdescr *td,
> +					     siginfo_t *si, ucontext_t *uc)
> +{
> +	size_t resv_sz, offset;
> +	struct _aarch64_ctx *head = GET_SF_RESV_HEAD(sf);
> +
> +	/* just to fill the ucontext_t with something real */
> +	if (!get_current_context(td, &sf.uc))
> +		return 1;
> +
> +	resv_sz = GET_SF_RESV_SIZE(sf);
> +	head = get_header(head, FPSIMD_MAGIC, resv_sz, &offset);
> +	if (head && resv_sz - offset >= HDR_SZ) {
> +		fprintf(stderr, "Mangling template header. Spare space:%zd\n",
> +			resv_sz - offset);
> +		/* Just overwrite fpsmid_context */
> +		write_terminator_record(head);

Strictly speaking, we may be throwing away more than just the
fpsimd_context record here.

But I think the test works nonetheless.  fpsimd_context is the only
record that's mandatory in any case.

> +
> +		ASSERT_BAD_CONTEXT(&sf.uc);
> +		fake_sigreturn(&sf, sizeof(sf), 0);
> +	}
> +
> +	return 1;
> +}
> +
> +struct tdescr tde = {
> +		.name = "FAKE_SIGRETURN_MISSING_FPSIMD",
> +		.descr = "Triggers a sigreturn with a missing fpsimd_context",
> +		.sig_ok = SIGSEGV,
> +		.timeout = 3,
> +		.run = fake_sigreturn_missing_fpsimd_run,
> +};

Assuming the comment I just posted on v3 of this patch makes sense to you,

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
