Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC2CD0061
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 20:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Lf+ibsttP+vC7hO9jtIJJLAYhaXTn0RXOWAdudYoc4=; b=q4ZLRxOv0BUCeA
	1NTcuqSxeAfNYITubMHWxTtjJKQjHpwuwikoyAE1yzNbJ3FCzUInpSzL3QdkGEYW6EmX1ntcoQ9GD
	vqtZE2Ke6+3pbdjsUSSinDyhWeUzMwGr25WabXirQKLhmNs8r7YXkzKhSIgn7avfUvokbnXHLU1de
	E1VQ7vaT7xmDX+1SPXsEkPkt5nCXyb8jQ4nmTJn7Te0jFbnlKBcUOaSvQo4cAUlFOhPIfe7io1T5c
	vfZzRKSf1GfGvuvXtDaClIgeS9Bk3C9EG/DqV/iu2N7r0c7xvhpJhjL/33pCWIVm/nRDt8EF6CaOO
	Ueu1aj0iKj3v/f/fYn0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtnk-0005WP-Dq; Tue, 08 Oct 2019 18:01:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtnQ-0005QZ-Om
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 18:01:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8DAC15BE;
 Tue,  8 Oct 2019 11:01:15 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1B683F6C4;
 Tue,  8 Oct 2019 11:01:14 -0700 (PDT)
Date: Tue, 8 Oct 2019 19:01:12 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v7 05/11] kselftest: arm64: mangle_pstate_ssbs_regs
Message-ID: <20191008180112.GY27757@arm.com>
References: <20191007182954.25730-1-cristian.marussi@arm.com>
 <20191007182954.25730-6-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007182954.25730-6-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_110116_911339_D4903EDF 
X-CRM114-Status: GOOD (  26.18  )
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

On Mon, Oct 07, 2019 at 07:29:48pm +0100, Cristian Marussi wrote:
> Add a simple mangle testcase which messes with the ucontext_t from within
> the signal handler, trying to set the PSTATE SSBS bit and verify that
> SSBS bit set is preserved across sigreturn.
> Lookup PSTATE.SSBS directly using dedicated helper to grab PSTATE from a
> live sigframe.
> 
> Additionally, in order to support this test specific needs:
> - extend signal testing framework to allow the definition of a custom
>   per test initialization function to be run at the end of test setup
>   and before test run routine. This will support also test SKIP.
> - introduce also a new common utility function: get_current_context()
>   which can be used to grab a ucontext without the help of libc, and
>   detect if such ucontext has been actively used to jump back.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> v6 --> v7
> - fixed missing header for memcpy
> - fixed misleading comment in get_current_context()
> - fixed retvalue checks on get_current_context() invocation
> - extend test_init()/test_result() and .init to report KSFT_SKIP
> - SKIP mangle_pstate_ssbs_regs if SSBS not supported at all
> - check SSBS support looking up ID_AA64PFR1_EL1.SSBS in test_init()
>   instead of using MRS/MSR

[...]

> diff --git a/tools/testing/selftests/arm64/signal/test_signals.c b/tools/testing/selftests/arm64/signal/test_signals.c
> index cb970346b280..416b1ff43199 100644
> --- a/tools/testing/selftests/arm64/signal/test_signals.c
> +++ b/tools/testing/selftests/arm64/signal/test_signals.c
> @@ -19,11 +19,11 @@ int main(int argc, char *argv[])
>  	current = &tde;
>  
>  	ksft_print_msg("%s :: %s\n", current->name, current->descr);
> -	if (test_setup(current)) {
> +	if (test_setup(current) && test_init(current)) {
>  		test_run(current);
> -		test_result(current);
>  		test_cleanup(current);
>  	}
> +	test_result(current);
>  
> -	return current->pass ? KSFT_PASS : KSFT_FAIL;
> +	return current->result;
>  }
> diff --git a/tools/testing/selftests/arm64/signal/test_signals.h b/tools/testing/selftests/arm64/signal/test_signals.h
> index f712b5daa10b..ad8175806034 100644
> --- a/tools/testing/selftests/arm64/signal/test_signals.h
> +++ b/tools/testing/selftests/arm64/signal/test_signals.h
> @@ -27,13 +27,25 @@
>  	: "memory");					\
>  }
>  
> +#define set_regval(regname, in)				\
> +{							\
> +	asm volatile("msr " __stringify(regname) ", %0" \
> +	:						\
> +	: "r" (in)					\
> +	: "memory");					\
> +}

Unused macro?  Now that the test doesn't try to change the SSBS state
via MSR, I don't think anything else is using this.

[...]

> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
> new file mode 100644
> index 000000000000..780161dbd7c0
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
> @@ -0,0 +1,92 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 ARM Limited
> + *
> + * Try to mangle the ucontext from inside a signal handler, setting the
> + * SSBS bit to 1 and veryfing that such modification is preserved.
> + */
> +
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <signal.h>
> +#include <ucontext.h>
> +
> +#include <kselftest.h>
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +static bool mangle_invalid_pstate_ssbs_init(struct tdescr *td)
> +{
> +	bool ret;
> +
> +	ret = feats_ok(td);
> +	if (!ret) {
> +		fprintf(stderr, "%s: unsupported feature - SKIP.\n", td->name);
> +		td->result = KSFT_SKIP;
> +	}
> +
> +	return ret;
> +}
> +
> +static int mangle_invalid_pstate_ssbs_run(struct tdescr *td,
> +					  siginfo_t *si, ucontext_t *uc)
> +{
> +	ASSERT_GOOD_CONTEXT(uc);
> +
> +	/* set bit value ... should NOT be cleared by Kernel on sigreturn */
> +	uc->uc_mcontext.pstate |= PSR_SSBS_BIT;
> +	fprintf(stderr, "SSBS set to 1 -- PSTATE: 0x%016llX\n",
> +		uc->uc_mcontext.pstate);
> +	/* Save after mangling...it should be preserved */
> +	td->saved_uc = *uc;

Hmmm, now I'm wondering about how things like
prctl(PR_SET_SPECULATION_CTRL) are supposed to interact with other ways
of manipulating PSTATE.SSBS.  Before we've answered this, we don't know
what result to expect from this test in various configurations...

To avoid this series depending on answering that question immediately,
can we drop this test from the series for now?

To reduce rework effort, maybe keep this patch in its current position
in the series, with just the utility code, but drop the testcase.

Sorry for the churn -- I didn't think of this issue earlier :(

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
