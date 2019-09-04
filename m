Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63853A814F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 13:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRXXvF1td2AsuD/nd80wkN1jLtj0RiXZwjhiRvnFBlE=; b=f+6D3u/lEkw2c2
	Qsd+E7oReu1TFz0yygn3SWyfff3DPNuTI7zRYGiYl0VcidPj+bjQO5Ci6t1syYQRTO7hZ3bnA2oQd
	9ND32+7T0w22kj2EWiGONRVRH3HWSR5rELCSsmqx3+7pwr42aW+AzeQE16WMgBe/esqvXF0Wdd+q/
	FdzTYUMh+fl+gLDpaH1tEUe5KFwXPF6HbH+M+6W9SsS76oGUwE6aiUuTKy4mLJfIxJ345N5CJTiuR
	9FtASDV0T2b9X610LCOV7A6NED4dqvvqIyuP2NinUKmJ44EXTUYi1olSnb4fGzyy6Z+s/NkovFm98
	L0sxyxeNJT6n7Vml8oig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Tm7-0004Qd-LC; Wed, 04 Sep 2019 11:48:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Tle-0004Fk-MM
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 11:48:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B231337;
 Wed,  4 Sep 2019 04:48:06 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 43A983F246;
 Wed,  4 Sep 2019 04:48:05 -0700 (PDT)
Date: Wed, 4 Sep 2019 12:48:03 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v5 03/11] kselftest: arm64: mangle_pstate_invalid_daif_bits
Message-ID: <20190904114803.GT27757@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-4-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902112932.36129-4-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_044807_002822_AE9694B6 
X-CRM114-Status: GOOD (  19.10  )
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

On Mon, Sep 02, 2019 at 12:29:24pm +0100, Cristian Marussi wrote:
> Add a simple mangle testcase which messes with the ucontext_t from within
> the signal handler, trying to set PSTATE DAIF bits to an invalid value
> (masking everything). Expects SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

> ---
> v3 --> v4
> - fixed commit message
> - added testcase comment description
> ---
>  .../mangle_pstate_invalid_daif_bits.c         | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c
> new file mode 100644
> index 000000000000..434b82597007
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c
> @@ -0,0 +1,35 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 ARM Limited
> + *
> + * Try to mangle the ucontext from inside a signal handler, mangling the
> + * DAIF bits in an illegal manner: this attempt must be spotted by Kernel
> + * and the test case is expected to be terminated via SEGV.
> + *
> + */
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +static int mangle_invalid_pstate_run(struct tdescr *td, siginfo_t *si,
> +				     ucontext_t *uc)
> +{
> +	ASSERT_GOOD_CONTEXT(uc);
> +
> +	/*
> +	 * This config should trigger a SIGSEGV by Kernel when it checks
> +	 * the sigframe consistency in valid_user_regs() routine.
> +	 */
> +	uc->uc_mcontext.pstate |= PSR_D_BIT | PSR_A_BIT | PSR_I_BIT | PSR_F_BIT;
> +
> +	return 1;
> +}
> +
> +struct tdescr tde = {
> +		.sanity_disabled = true,
> +		.name = "MANGLE_PSTATE_INVALID_DAIF_BITS",
> +		.descr = "Mangling uc_mcontext with INVALID DAIF_BITS",
> +		.sig_trig = SIGUSR1,
> +		.sig_ok = SIGSEGV,
> +		.run = mangle_invalid_pstate_run,
> +};
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
