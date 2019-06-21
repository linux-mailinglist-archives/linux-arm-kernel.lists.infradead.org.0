Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96F94E64B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsrhhJd7kX721uSr4AUghRkJNDALb91TkAhyW+rIJGI=; b=Ysd+RqMX+Iv9bs
	5fz/aA/aYU8YsdxFQ99eAH88sx5jlA9umnnMID94BzO9UJK2rPKf5z5+B/PfyFKNBlGVZnp0FnmDt
	D182U0DD6qKONKbi21+yTW18GwiAwvogqJqxBgEIypUy4ZQdU2uQgKiRM2fp+MeTeuj68ShgGTg+t
	niE/cuYl943uuY3qRRWRktXQ+zJvHaXlWwvOcRh/bjcpZrw9Dm5uMJbacNhW8B2732ImWc9+FNao0
	A4s7Nc/Bk1zGElijO/fZmZ32AQVtPTgXUrKdnwcLgL4O/fNlCh2bxEa7l5VPnqvVkgjhxIEM+K9pl
	lsd4H4jFz1g8lnwfOvZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGy9-0000nm-Sp; Fri, 21 Jun 2019 10:40:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGth-0003oG-Qx
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:36:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3505A28;
 Fri, 21 Jun 2019 03:35:57 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 679993F718;
 Fri, 21 Jun 2019 03:35:56 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:35:54 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 08/13] kselftest: arm64: mangle_pstate_ssbs_regs
Message-ID: <20190621103554.GP2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-9-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111335.7645-9-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033557_951024_FB22DE18 
X-CRM114-Status: GOOD (  17.52  )
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
Cc: andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:13:30PM +0100, Cristian Marussi wrote:
> Added a simple mangle testcase which messes with the ucontext_t
> from within the sig_handler, trying to toggle PSTATE SSBS bit.
> Expect SIGILL if SSBS feature unsupported or that the value set in
> PSTATE.SSBS is preserved on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  .../arm64/signal/testcases/.gitignore         |  1 +
>  .../testcases/mangle_pstate_ssbs_regs.c       | 41 +++++++++++++++++++
>  2 files changed, 42 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> index e7a1d998b650..c2972c3f33ca 100644
> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> @@ -5,3 +5,4 @@ mangle_pstate_invalid_state_toggle
>  mangle_pstate_invalid_mode_el1
>  mangle_pstate_invalid_mode_el2
>  mangle_pstate_invalid_mode_el3
> +mangle_pstate_ssbs_regs
> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
> new file mode 100644
> index 000000000000..d997ebf742d9
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
> @@ -0,0 +1,41 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2019 ARM Limited */
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +static int mangle_invalid_pstate_ssbs_run(struct tdescr *td,
> +					  siginfo_t *si, ucontext_t *uc)
> +{
> +	ASSERT_GOOD_CONTEXT(uc);
> +
> +	/* toggle bit value */
> +	uc->uc_mcontext.pstate ^= PSR_SSBS_BIT;
> +	/* Save after mangling...it should be preserved */
> +	td->saved_uc = *uc;
> +
> +	return 1;
> +}
> +
> +static int pstate_ssbs_bit_checks(struct tdescr *td)
> +{
> +	uint64_t val = 0;
> +
> +	get_regval(MRS_SSBS_SYSREG, val);
> +	/* pass when preserved */
> +	td->pass = (!!(val & MRS_SSBS_BIT) ==
> +		    !!(td->saved_uc.uc_mcontext.pstate & PSR_SSBS_BIT));

Nit: there's a redundant level of ! here, and the outer () are unnecessary:

	(!!a == !!b) -> !a == !b

[...]

Can we trigger a second signal after the first returns, to grab the
updated ucontext and check SSBS in there directly?

Checking that the updated value is _also_ visible via MRS remains
useful though, so we should keep that.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
