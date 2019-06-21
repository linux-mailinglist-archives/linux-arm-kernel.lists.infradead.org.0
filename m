Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819494E64A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rGPrD+mR8Hui33pes8FfYG30FIqKmh+TKlIsVA4hYY=; b=Nt5m02QL2IqwvD
	owkCpUDSE3cBzawxiUx//IWuEUBa/9J2fbYrzpfb0QUEaNXrIzd6SJU+NV/OwmpB4c0P1d4BDZPmq
	4vC7ubYgltNDXwwwodZ66trvGXmYpT6FheTbsbUk0EhezHHq4c8oX8kFiCN/dB0vsPm9ABrLThOBi
	nDjHpa8HEQ7gdUKoNOdrbcejkAnpobua+jYxr9r7acjXfYZz5JPzgdjoA3LMdEUAMWWjH8oxfRI0R
	egP9YUa5L4kzaWvnt5XJRvlIE91oHSEt3xFiBUgUOH6S6+HPGoFHERzUygrEgMsW4exdsaV6ExGmg
	Oh6y38fL2jJJXw33gPSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGxv-0007mc-US; Fri, 21 Jun 2019 10:40:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGta-0003jt-R0
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:35:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 516F328;
 Fri, 21 Jun 2019 03:35:50 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 843CB3F718;
 Fri, 21 Jun 2019 03:35:49 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:35:47 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 07/13] kselftest: arm64: mangle_pstate_invalid_mode_el?
Message-ID: <20190621103547.GO2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-8-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111335.7645-8-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033550_950655_DCB7F3E4 
X-CRM114-Status: GOOD (  17.02  )
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

^ Subject line seems to end with a ?

Typo?

On Thu, Jun 13, 2019 at 12:13:29PM +0100, Cristian Marussi wrote:
> Added 3 simple mangle testcases that mess with the ucontext_t
> from within the sig_handler, trying to toggle PSTATE mode bits to
> trick the system into switching to EL1/EL2/EL3.
> Expects SIGSEGV on test PASS.

For good measure, we may as well also test for the "h" modes.

I wonder whether this can be macro-ised somehow, since the tests are
identical except for the pstate mode field value and the name?

> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  .../arm64/signal/testcases/.gitignore         |  3 +++
>  .../mangle_pstate_invalid_mode_el1.c          | 25 +++++++++++++++++++
>  .../mangle_pstate_invalid_mode_el2.c          | 25 +++++++++++++++++++
>  .../mangle_pstate_invalid_mode_el3.c          | 25 +++++++++++++++++++
>  4 files changed, 78 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2.c
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> index 91f7aee4b666..e7a1d998b650 100644
> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> @@ -2,3 +2,6 @@ mangle_sp_misaligned
>  mangle_pc_invalid
>  mangle_pstate_invalid_daif_bits
>  mangle_pstate_invalid_state_toggle
> +mangle_pstate_invalid_mode_el1
> +mangle_pstate_invalid_mode_el2
> +mangle_pstate_invalid_mode_el3
> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c
> new file mode 100644
> index 000000000000..9f5bde2e287f
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2019 ARM Limited */
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +static int mangle_invalid_pstate_run(struct tdescr *td, siginfo_t *si,
> +				     ucontext_t *uc)
> +{
> +	ASSERT_GOOD_CONTEXT(uc);
> +
> +	/* This config should trigger a SIGSEGV by Kernel */
> +	uc->uc_mcontext.pstate |= PSR_MODE_EL1t;

For cleanliness, should we mask out the old mode field first, even if
we expect it to be initiall zero?

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
