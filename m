Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEBB4E649
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYfLmwHo12Hm0InB2i8iqwvF43VdovdbM4LlnGF3NKc=; b=b422NLCY4FZqab
	ByMaurTBSYxAaw6Irv1aAEyPy0QXGXZ3RFf+AarEcnqqY0mtPmszi9+fQRmEVD9gCWs10VOnHaEwo
	8F+ik6Z22tQFHKJniOWVc0wjjeRYN862gE6rhfV7ekUtQHChN02ZSvA8rolJms9VdvOwIU14v2WyY
	NDzaeJqyfo3RqVu2Q9H61un9euZCfnOorSmb+J/fgCDqL+OI2gW0USZXuk3xx6pcnmQdHWjKPWR0r
	x3e1v3WHAjp3mK92sYtXNjUKmMaRlt9ZR3AE0VaeBXxV0mZYPtPcf1QSB2iDAQd6hj6pO8BoAqZfW
	Ztc6KHJbrN9LVDTAv0MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGxP-0007Qh-Ta; Fri, 21 Jun 2019 10:39:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGtU-0003eK-73
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:35:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A45BB28;
 Fri, 21 Jun 2019 03:35:43 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D71023F718;
 Fri, 21 Jun 2019 03:35:42 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:35:40 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 06/13] kselftest: arm64: mangle_pstate_invalid_state_toggle
Message-ID: <20190621103540.GN2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-7-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111335.7645-7-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033544_352399_8E7B46F0 
X-CRM114-Status: GOOD (  17.23  )
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

On Thu, Jun 13, 2019 at 12:13:28PM +0100, Cristian Marussi wrote:
> Added a simple mangle testcase which messes with the ucontext_t
> from within the sig_handler, trying to toggle PSTATE state bits
> to switch the system between 32bit/64bit execution state.
> Expects SIGSEGV on test PASS.

Maybe say "compat_toggle" instead of "state_toggle" in the test name.
"state" is a bit of a generic term.

Once upon a time, the kernel didn't prohibit this toggle, which was a
"cool feature" before compat existed for real.  I think this probably
got sorted before the initial arm64 port was upstreamed.

> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  .../arm64/signal/testcases/.gitignore         |  1 +
>  .../mangle_pstate_invalid_state_toggle.c      | 25 +++++++++++++++++++
>  2 files changed, 26 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_state_toggle.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> index a609a08b744f..91f7aee4b666 100644
> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> @@ -1,3 +1,4 @@
>  mangle_sp_misaligned
>  mangle_pc_invalid
>  mangle_pstate_invalid_daif_bits
> +mangle_pstate_invalid_state_toggle
> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_state_toggle.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_state_toggle.c
> new file mode 100644
> index 000000000000..971193e7501b
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_state_toggle.c
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
> +	uc->uc_mcontext.pstate ^= PSR_MODE32_BIT;

As for other tests, is there a way to sanity-check that the SIGSEGV was
generated by sigreturn itself?

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
