Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA46F4E64E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jk7AcEAXGKpfXvpTU45TtKvFcaCr8N2NS8/h9rISNbM=; b=Z5Rvxt5DD4TOoq
	B0FG5fU3aG2nbW2MYHeBrXOawaGOPQVSbF4PypPfwnAJhJVWh7x9b7muWkp4LYjaj5TgenO8ep5uV
	QFS0YvMW0GHtGjFCV3teI5Z946fiYscLaZ5ThY2oqZWeC2G+uDWvqQKeZJM2FD8/WIl7ngJv28iA+
	jqNRcXqUchzbo3LZRBrGFWuKAw9qU4h/agxFO9MGYAG7zHA+8CaGk6Lce+eIQRrgyA/YvlLK3+Led
	UzZxR5/2wI++myRk/S5S8NgsGNBQT/HU/j3+Y4wnsBQ8IA60RKiOqzxUOIeV4OS/uK1IVvtmeRMR1
	RAtJ6QRWRk4AgzQV0LQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGyr-0001Yq-Td; Fri, 21 Jun 2019 10:41:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGtz-00043A-85
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:36:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00C4228;
 Fri, 21 Jun 2019 03:36:15 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 335413F718;
 Fri, 21 Jun 2019 03:36:14 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:36:12 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 11/13] kselftest: arm64: fake_sigreturn_bad_size
Message-ID: <20190621103612.GS2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-12-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111335.7645-12-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033615_432760_4FF60A0C 
X-CRM114-Status: GOOD (  20.80  )
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

On Thu, Jun 13, 2019 at 12:13:33PM +0100, Cristian Marussi wrote:
> Added a simple fake_sigreturn testcase which builds a ucontext_t
> with a badly sized header and place it onto the stack.
> Expects a SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  .../arm64/signal/testcases/.gitignore         |  1 +
>  .../testcases/fake_sigreturn_bad_size.c       | 40 +++++++++++++++++++
>  2 files changed, 41 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> index c353b7bd899d..9ad1735e0018 100644
> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> @@ -8,3 +8,4 @@ mangle_pstate_invalid_mode_el3
>  mangle_pstate_ssbs_regs
>  fake_sigreturn_misaligned
>  fake_sigreturn_bad_magic
> +fake_sigreturn_bad_size
> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
> new file mode 100644
> index 000000000000..d54f79d63bf6
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
> @@ -0,0 +1,40 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2019 ARM Limited */
> +
> +#include <asm/sigcontext.h>
> +#include <ucontext.h>
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +struct a_sigframe sf;
> +
> +static int fake_sigreturn_bad_size_run(struct tdescr *td,
> +				       siginfo_t *si, ucontext_t *uc)
> +{
> +	struct _aarch64_ctx *head = GET_SF_RESV_HEAD(sf);
> +
> +	/* just to fill the ucontext_t with something real */
> +	if (!get_current_context(td, &sf.uc))
> +		return 1;
> +
> +	/* Tampering size to an unplausible number should cause a SEGV */
> +	head = get_terminator(head, GET_SF_RESV_SIZE(sf), NULL);
> +	if (head) {
> +		head->magic = ESR_MAGIC;

Add a comment to say why we're using this magic?

> +		head->size = GET_SF_RESV_SIZE(sf) * 2;

If we have extra_context, this might not be an invalid size, because
extra_context can be much larger than sizeof(__reserved) ... but also
we will overrun anyway, because extra_context should already be only
just large enough to accommodate the original terminator.

As with the previous test, we should probably throw away the
extra_context record (if any) and replace it with this new record.

We should check the actual boundary condition here, rather than just
testing with a giant size: we want to make the kernel detects any
overrun, however small.

We should also write a valid terminator after the new record, so
that we know the kernel is detecting the size overrun instead of
rejecting the next record because it is garbage.

> +
> +		ASSERT_BAD_CONTEXT(&sf.uc);
> +		fake_sigreturn(&sf, sizeof(sf), 16);
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
