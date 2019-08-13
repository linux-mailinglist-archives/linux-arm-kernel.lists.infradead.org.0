Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E23E08BE86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKJ0QhhRci1bKBUdL5ACStblgaYwyr/edJJPHAQPn/s=; b=MIt4dL7BHXEvPn
	aVVNzzavZCwHL+D+AURlg6X9wIjLJ/4FmyR9AyL+pUa5Ru0r+1vwaRbcAbtEWTd1/dMRQroUEYp+X
	kIMdpK5ggGo3HqsxXe0F0Wxo/cpXB6UsCJ8Thj2d9iX7tIZXGFJOmCuILMvT6qwevQL9FdMThl3dg
	fgcF/UHeCaJQBCQxWLo4pWkdszmcSlL8N+VomEhKYNWRCE6b190oGZX0JPMDke/ujeTvtssVbFzLg
	B2gAneVri1PV1AaVCsmIpM5kN+CuGiK6PcZhY5MUhBz6VqLc5zEUdHsAMT0StG7FIyIR04BxaDCHy
	GgtRXCUP+ylgemPDiBHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZeM-0007Ze-VO; Tue, 13 Aug 2019 16:27:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZbS-0003PO-VR
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 16:24:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7CB2F337;
 Tue, 13 Aug 2019 09:24:54 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B01F23F706;
 Tue, 13 Aug 2019 09:24:53 -0700 (PDT)
Date: Tue, 13 Aug 2019 17:24:51 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v3 04/11] kselftest: arm64: mangle_pstate_invalid_mode_el
Message-ID: <20190813162451.GB10425@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-5-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802170300.20662-5-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092455_107899_766AE488 
X-CRM114-Status: GOOD (  17.37  )
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
Cc: andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 06:02:53PM +0100, Cristian Marussi wrote:
> Added 3 simple mangle testcases that mess with the ucontext_t

Add

> from within the sig_handler, trying to toggle PSTATE mode bits to

signal handler

> trick the system into switching to EL1/EL2/EL3. Expects SIGSEGV
> on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  .../arm64/signal/testcases/.gitignore         |  3 ++
>  .../mangle_pstate_invalid_mode_el1.c          | 29 +++++++++++++++++++
>  .../mangle_pstate_invalid_mode_el2.c          | 29 +++++++++++++++++++
>  .../mangle_pstate_invalid_mode_el3.c          | 29 +++++++++++++++++++
>  4 files changed, 90 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2.c
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> index 8a0a29f0cc2a..226bb179b673 100644
> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> @@ -1,2 +1,5 @@
>  mangle_pstate_invalid_compat_toggle
>  mangle_pstate_invalid_daif_bits
> +mangle_pstate_invalid_mode_el1
> +mangle_pstate_invalid_mode_el2
> +mangle_pstate_invalid_mode_el3

What about having

	!*.[ch]
	mangle_*

rather than having to update .gitignore to list every test executable?

> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c
> new file mode 100644
> index 000000000000..07aed7624383
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c
> @@ -0,0 +1,29 @@
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
> +	/*
> +	 * This config should trigger a SIGSEGV by Kernel
> +	 * when checking valid_user_regs()
> +	 */
> +	uc->uc_mcontext.pstate &= ~PSR_MODE_MASK;
> +	uc->uc_mcontext.pstate |= PSR_MODE_EL1t;
> +
> +	return 1;
> +}
> +
> +struct tdescr tde = {
> +		.sanity_disabled = true,
> +		.name = "MANGLE_PSTATE_INVALID_MODE_EL1t",
> +		.descr = "Mangling uc_mcontext with INVALID MODE EL1t",
> +		.sig_trig = SIGUSR1,
> +		.sig_ok = SIGSEGV,
> +		.run = mangle_invalid_pstate_run,
> +};

These tests seem identical except for the EL number.
Can we macro-ise them?

mangle_pstate_invalid_mode_el1.c could become

--8<--

#include "mangle_pstate_invalid_mode.h"

DEFINE_TESTCASE_MANGLE_PSTATE_INVALID_MODE(1)

-->8--

(for example).

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
