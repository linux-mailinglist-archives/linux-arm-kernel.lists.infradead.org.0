Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE85BA816B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 13:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0q2ZksH7XciMLrRxyApA8Nti5bKxA2qLbpsQdp2CQ+U=; b=FFNy6wHKKfMD4L
	qC+XZAj1qickIQJUkfBfXqbvRvNagzlppvpuTVOo7jMlSIUjquMUMPtFqCMT5Uw014uKEfAOTtjFc
	w9Xkx2RTCe/T0APLHqWmcixDGgDhMrVG826P9tIErsYeEksZhasDEiRtEtjON1Ni4zXljnHzzWe2v
	fb58YDEB7fxvajbudtX+66VtxILzd+ILz/v9I8gY6eh8x9mKT2WElPIPkA9Mfh6WQfu6hFzlx1+yk
	Tmjnct0uTmBoQR+2XCETp1N+X8SKQ42mGJ1YVkj6jtWKHJuXexjys2rJKS7hBmMbMd+0HEi3qwNMw
	BYAkbQyaYH09/o4sgFaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ToD-0007Lz-84; Wed, 04 Sep 2019 11:50:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Tmw-0005Mm-L6
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 11:49:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B257337;
 Wed,  4 Sep 2019 04:49:26 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 73BDA3F246;
 Wed,  4 Sep 2019 04:49:25 -0700 (PDT)
Date: Wed, 4 Sep 2019 12:49:23 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v5 09/11] kselftest: arm64:
 fake_sigreturn_duplicated_fpsimd
Message-ID: <20190904114923.GZ27757@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-10-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902112932.36129-10-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_044926_783574_EC776A4B 
X-CRM114-Status: GOOD (  19.95  )
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

On Mon, Sep 02, 2019 at 12:29:30pm +0100, Cristian Marussi wrote:
> Add a simple fake_sigreturn testcase which builds a ucontext_t with
> an anomalous additional fpsimd_context and place it onto the stack.
> Expects a SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> v3 --> v4
> - fix commit
> - missing include
> - using new get_starting_head() helper
> - added test description
> ---
>  .../fake_sigreturn_duplicated_fpsimd.c        | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
> new file mode 100644
> index 000000000000..c7122c44f53f
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
> @@ -0,0 +1,52 @@
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
> +	size_t resv_sz, need_sz;
> +	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
> +
> +	/* just to fill the ucontext_t with something real */
> +	if (!get_current_context(td, &sf.uc))
> +		return 1;
> +
> +	resv_sz = GET_SF_RESV_SIZE(sf);
> +	need_sz = HDR_SZ + sizeof(struct fpsimd_context);

Nit: Maybe write this sum in the same order as the records we're going 
o append, i.e.:

	need_sz = sizeof(struct fpsimd_context) + HDR_SZ; /* for terminator */

Also, maybe fail this test if there is no fpsimd_context in the initial
frame from get_current_context(): that would be a kernel bug, but we
wouldn't be giving fake_sigreturn() duplicate fpsimd_contexts in that
case -- so this test wouldn't test the thing it's supposed to test.

> +
> +	head = get_starting_head(shead, need_sz, resv_sz, NULL);
> +	if (head) {
> +		/* Add a spurios fpsimd_context */
> +		head->magic = FPSIMD_MAGIC;
> +		head->size = sizeof(struct fpsimd_context);
> +		/* and terminate */
> +		write_terminator_record(GET_RESV_NEXT_HEAD(head));
> +
> +		ASSERT_BAD_CONTEXT(&sf.uc);
> +		fake_sigreturn(&sf, sizeof(sf), 0);
> +	}
> +
> +	return 1;

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
