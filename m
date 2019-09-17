Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5099CB52A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nk8Zl/Jkc7o29LhffB8pq1PebYpNyGcU6rSES09P5zg=; b=baq2FtWfT+DwyQ
	0CW/Cty+hJDGtY1uIppqAv23/vMhHzyoyxuxwGBp56YfvUugudISKrZ1V7RwViazwX+U4s3wG/a3I
	rp7OR/jAuWHnIlN59zLNl6TVmiftvhUf8zH4RXziJq9ncgrOkk5P7rv5j6nq1iHX1/ZR0s+SbiMN3
	YWeifvplDxiz3hnhmwxaZDXWPobDbSYM7E8vJOIPP6cPDsKdL7AI64zoew94H6/4yXLpiF1Jd+MDX
	Co720tbGvQbeRCl3XZzpxE/mON9HYAunjA/XisUDxkFBFWTULsbIe1Lgh9SxlGM7BWAjb44Ior0Iw
	et6aIBEQBEjtjS3eNPAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAG6O-0001lX-Oj; Tue, 17 Sep 2019 16:13:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFzd-0002Lm-Rv
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 16:06:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0059E15A2;
 Tue, 17 Sep 2019 09:06:17 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 181343F575;
 Tue, 17 Sep 2019 09:06:15 -0700 (PDT)
Date: Tue, 17 Sep 2019 17:06:14 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v6 09/11] kselftest: arm64:
 fake_sigreturn_duplicated_fpsimd
Message-ID: <20190917160613.GO27757@arm.com>
References: <20190910123111.33478-1-cristian.marussi@arm.com>
 <20190910123111.33478-10-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910123111.33478-10-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_090618_773958_852FCB80 
X-CRM114-Status: GOOD (  17.05  )
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

On Tue, Sep 10, 2019 at 01:31:09pm +0100, Cristian Marussi wrote:
> Add a simple fake_sigreturn testcase which builds a ucontext_t with
> an anomalous additional fpsimd_context and place it onto the stack.
> Expects a SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> v5 --> v6
> - removed unneeded locals
> - avoid timeout on failure
> v3 --> v4
> - fix commit
> - missing include
> - using new get_starting_head() helper
> - added test description
> ---
>  .../fake_sigreturn_duplicated_fpsimd.c        | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
> new file mode 100644
> index 000000000000..f0cc34dac47c
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
> @@ -0,0 +1,50 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 ARM Limited
> + *
> + * Place a fake sigframe on the stack including an additional FPSIMD
> + * record: on sigreturn Kernel must spot this attempt and the test
> + * case is expected to be terminated via SEGV.
> + */
> +
> +#include <signal.h>
> +#include <ucontext.h>
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +struct fake_sigframe sf;
> +
> +static int fake_sigreturn_duplicated_fpsimd_run(struct tdescr *td,
> +						siginfo_t *si, ucontext_t *uc)
> +{
> +	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
> +
> +	/* just to fill the ucontext_t with something real */
> +	if (!get_current_context(td, &sf.uc))
> +		return 1;
> +
> +	head = get_starting_head(shead, sizeof(struct fpsimd_context) + HDR_SZ,
> +				 GET_SF_RESV_SIZE(sf), NULL);
> +	if (!head)
> +		return 0;
> +
> +	/* Add a spurios fpsimd_context */

Nit: spurious

With that,

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
