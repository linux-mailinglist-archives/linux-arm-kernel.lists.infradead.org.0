Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7030E4E64D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOvHs72WQHGFdSsLEfzaoogAz3JgyWZxADC992qnT4g=; b=cz2cWUGWFQ16Sx
	zBNpAn+jzxN7+awBetSdM5V/SXbc8ERgQ+jXOIox4bo2yfdVWOtBwkMmLOUN7nyQTa9uZpKN1oP9E
	yoo6ADgIpSn4cm06co8OTs5Rs2a1o2z8w+dY2xsoRuXtsdERwDkVm7QgbKYwvk5P/RrVDy2uvPLCi
	oTYn99s7b1hlHppK7zLsQTGuBy2hZWH9sNdvxfDhtLtz9gfjrWKBVlQtW6wwL1iBLNDrzdfQmHwt8
	2VwJx+4I6VOis4F1lGNZxZCbWXKUbFVS3KvQfH3Mcnar3OMUPpmywExR5e4e/FpZPne7W9iaBkJTu
	UhNm7LLE29S8wl2dsN/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGyg-0001If-Nw; Fri, 21 Jun 2019 10:41:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGtt-0003wv-Eu
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:36:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2412C28;
 Fri, 21 Jun 2019 03:36:09 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 570743F718;
 Fri, 21 Jun 2019 03:36:08 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:36:06 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 10/13] kselftest: arm64: fake_sigreturn_bad_magic
Message-ID: <20190621103606.GR2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-11-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111335.7645-11-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033609_612017_EEA2AEE7 
X-CRM114-Status: GOOD (  23.33  )
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

On Thu, Jun 13, 2019 at 12:13:32PM +0100, Cristian Marussi wrote:
> Added a simple fake_sigreturn testcase which builds a ucontext_t
> with a bad magic header and place it onto the stack.
> Expects a SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  .../arm64/signal/testcases/.gitignore         |  1 +
>  .../testcases/fake_sigreturn_bad_magic.c      | 42 +++++++++++++++++++
>  2 files changed, 43 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> index 3e6b26be6727..c353b7bd899d 100644
> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> @@ -7,3 +7,4 @@ mangle_pstate_invalid_mode_el2
>  mangle_pstate_invalid_mode_el3
>  mangle_pstate_ssbs_regs
>  fake_sigreturn_misaligned
> +fake_sigreturn_bad_magic
> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
> new file mode 100644
> index 000000000000..de81ea10393f
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
> @@ -0,0 +1,42 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2019 ARM Limited */
> +
> +#include <asm/sigcontext.h>
> +#include <ucontext.h>
> +#include <stdio.h>
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +struct a_sigframe sf;
> +
> +static int fake_sigreturn_bad_magic_run(struct tdescr *td,
> +					siginfo_t *si, ucontext_t *uc)
> +{
> +	struct _aarch64_ctx *head = GET_SF_RESV_HEAD(sf);
> +
> +	/* just to fill the ucontext_t with something real */
> +	if (!get_current_context(td, &sf.uc))
> +		return 1;
> +
> +	/* find the terminator, preserving existig headers */
> +	head = get_terminator(head, GET_SF_RESV_SIZE(sf), NULL);
> +	if (head) {
> +		head->magic = 0xdeadbeef;
> +		head->size = 128;

How can we be sure this won't overrun the end of the sigframe, once
the new terminator is appended?

If there is extra_context in the frame, the frame is only as large as
needed, so adding another record will always overrun the size of the
frame in that case.

I suggest splitting this test into a few cases, something like the
following.

(Note, some of these are already covered by your tests.  I'm just trying
to give the broad view here.)

1) Add a bogus record that doesn't overrun the frame.

2) Add a bogus record that does overrun the frame.

3) Add a record with a bogus size (i.e., not a multiple of 16 bytes, or
smaller than _aarch64_ctx).

3) Hack the size field of an existing record so that it overruns the
frame.  Thee are two subcases here: a record big enough that the next
_aarch64_ctx doesn't fit (probably already tested by
fake_sigreturn_overflow_reserved), and a record that overruns the frame
all by itself (tested by fake_sigreturn_bad_size, but it would be good
to check the exact boundary condition -- see my comments on that patch).

When checking that the kernel rejects an _aarch64_ctx header that
overruns the end of the frame, we should nonetheless write data for it
that looks valid, so that we know the kernel is rejecting it because of
the overrun and not because the header contents are invalid.

4) Delete a required record from the frame (say, fpsimd_context).
Or just delete everything.


For this series, maybe just do (1): this test nearly does that.

If there is extra_context, we can delete it and replace it with our
bogus record: this can't overrun if the bogus record's size is no bigger
than extra_context.

We should have tests to cover the other cases, but they can be TODO for
now.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
