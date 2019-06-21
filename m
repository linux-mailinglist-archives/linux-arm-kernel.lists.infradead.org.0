Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62D94E652
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:41:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58wpv261DXTEBRZ7qkCAvABxX7mLrNdKVzMTroMFNnk=; b=Ur9hIXjbopZvb4
	N1BOmA4842yNAEpUMhaRNKqKe/JDCITwbu+k9Jsx3I0rtthRgRnDabXERY2LJz++xlHt/cmyDL2wR
	okSgZrOvvs/71AqqNTj0iek4o0hHdfKtawxaQQjW6CdCUQTSHR/rcIZlI3Ubf0LUCRRpMmLMha5/m
	i5UO1BRq9KNWgM10FpxBOdN7Teb0Q3VrCK0rv8HiACnXwvAv1w5WBzak7lZbjQ/1n724vpP+lLIk3
	oMrfPrMHoFN8E/XS/z+aeihfl4toikzlqYkKFleSeqURx45Jk/vk4MtE6FdPu3rjFFPCB3QTiJkIW
	fHk4CO9AqheJoKr4mPBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGzS-00027m-P8; Fri, 21 Jun 2019 10:41:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGuB-0004Df-8Q
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:36:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 922C8147A;
 Fri, 21 Jun 2019 03:36:26 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C53963F718;
 Fri, 21 Jun 2019 03:36:25 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:36:23 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 13/13] kselftest: arm64: fake_sigreturn_overflow_reserved
Message-ID: <20190621103623.GU2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-14-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111335.7645-14-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033627_518956_082C033B 
X-CRM114-Status: GOOD (  21.79  )
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

On Thu, Jun 13, 2019 at 12:13:35PM +0100, Cristian Marussi wrote:
> Added a simple fake_sigreturn testcase which builds a ucontext_t
> with the whole __reserved area overflowed with ESR_MAGIC headers
> and place it onto the stack.
> Expects a SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  .../arm64/signal/testcases/.gitignore         |  1 +
>  .../fake_sigreturn_overflow_reserved.c        | 48 +++++++++++++++++++
>  2 files changed, 49 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_overflow_reserved.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> index 66ba865b3b7e..69a18391c220 100644
> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> @@ -10,3 +10,4 @@ fake_sigreturn_misaligned
>  fake_sigreturn_bad_magic
>  fake_sigreturn_bad_size
>  fake_sigreturn_bad_size_for_magic0
> +fake_sigreturn_overflow_reserved
> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_overflow_reserved.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_overflow_reserved.c
> new file mode 100644
> index 000000000000..eba109453a65
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_overflow_reserved.c
> @@ -0,0 +1,48 @@
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
> +static int fake_sigreturn_overflow_reserved_run(struct tdescr *td,
> +						siginfo_t *si,
> +						ucontext_t *uc)
> +{
> +	size_t offset = 0;
> +	struct _aarch64_ctx *head = GET_SF_RESV_HEAD(sf);
> +
> +	/* just to fill the ucontext_t with something real */
> +	if (!get_current_context(td, &sf.uc))
> +		return 1;
> +
> +	/* find the terminator, preserving existig headers */
> +	head = get_terminator(head, GET_SF_RESV_SIZE(sf), &offset);
> +	if (head) {
> +		/* fill the __reserved area till the end */
> +		do {
> +			head->magic = ESR_MAGIC;

Comment on why this magic is chosen.

Since it is useful for test purposes to have a record that the kernel
ignores completely, it might be worth dropping in comment in
parse_user_sigframe() so that we don't add stricter checks by accident.

We could alternatively add a special-purpose dummy record with its own
magic.  This might be better than abusing esr_context ... but I could be
persuaded either way.

> +			head->size = sizeof(struct esr_context);

Can we end up with a hole at the end of the frame that is smaller than
esr_context and so can't be filled properly?  If not, why not?

> +			offset += head->size;
> +			head = GET_RESV_NEXT_HEAD(head);
> +		} while (offset < GET_SF_RESV_SIZE(sf));
> +
> +		ASSERT_BAD_CONTEXT(&sf.uc);
> +		fake_sigreturn(&sf, sizeof(sf), 16);

We should have something that looks like a valid terminator after the
end of the signal frame, so that we can be sure the overrun is
detected, rather than the kernel just rejecting the garbage after the
last record.

> +	}
> +
> +	return 1;
> +}

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
