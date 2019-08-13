Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2968BE84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWzxzi2BrEffsrJ5rod5mrYdmA2/chfLl7o1cm9rljM=; b=CJ8jXwPmxMVBnr
	3PG8/pkpAW3akII+k+z2Ok69nGUE+PEuklLGX/f5qSX29jClBrw5S1zzCQ6Oxq9H5ZmIKGFeffJWP
	urnpr+2UrIPYfn7KfpQ+zxwACItiGQT5aJlHE8y/89TB9CVY/miaVpB5TmDlq5YskJJJLR5hhqKAJ
	rtWDD3WLs61Err8xmUfB4LeoliNJu0/JUhwHciiV6JoAXT4NioiywIC2uDTiMR80ZicKzLSyaWIiR
	8BFDDo4K7AkZXbn9ayj+wWqwaJAh784s1exk9Jru2HeV+1RysTaC3Cn8X9IntzlxDNfOWk+9Pf1Tq
	ONOlsODnq0mni1YMH3oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZe8-0007DQ-Go; Tue, 13 Aug 2019 16:27:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZbC-0002tc-1x
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 16:24:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6DFCF337;
 Tue, 13 Aug 2019 09:24:37 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A1E2D3F7D8;
 Tue, 13 Aug 2019 09:24:36 -0700 (PDT)
Date: Tue, 13 Aug 2019 17:24:34 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v3 03/11] kselftest: arm64: mangle_pstate_invalid_daif_bits
Message-ID: <20190813162434.GA10425@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-4-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802170300.20662-4-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092438_164402_B163A6A2 
X-CRM114-Status: GOOD (  17.41  )
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

On Fri, Aug 02, 2019 at 06:02:52PM +0100, Cristian Marussi wrote:
> Added a simple mangle testcase which messes with the ucontext_t

Strange past tense?  How about "Add"?

> from within the sig_handler, trying to set PSTATE DAIF bits to an

"signal handler"?

> invalid value (masking everything). Expects SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  .../arm64/signal/testcases/.gitignore         |  1 +
>  .../mangle_pstate_invalid_daif_bits.c         | 28 +++++++++++++++++++
>  2 files changed, 29 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> index 8651272e3cfc..8a0a29f0cc2a 100644
> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> @@ -1 +1,2 @@
>  mangle_pstate_invalid_compat_toggle
> +mangle_pstate_invalid_daif_bits
> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c
> new file mode 100644
> index 000000000000..af899d4bb655
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c
> @@ -0,0 +1,28 @@
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
> +	 * This config should trigger a SIGSEGV by Kernel when it checks
> +	 * the sigframe consistency in valid_user_regs() routine.
> +	 */
> +	uc->uc_mcontext.pstate |= PSR_D_BIT | PSR_A_BIT | PSR_I_BIT | PSR_F_BIT;
> +
> +	return 1;
> +}

Hmmm, there was a lot of common framework code, but it seems like a good
investment if adding a new test is as simple as this :)

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
