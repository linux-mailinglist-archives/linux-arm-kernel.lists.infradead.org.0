Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBF3A816E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 13:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1r/Y0LOxPnJHQis1uhz5kTiSTASeaE8WMFsty+c/QTY=; b=iUTm13fOFWGYkA
	KUH+F4HI3y8mxB2VYpwMMAmqKV7CgL9Wb3bPlgBWyT1aQKiuC6zs7evFLCeKIQ3uT1rjGYPZmYZLl
	LUlsSNTr/++VaX7NkXmMLkdCfhivfC4xS89PiiF2m5Nqsed4DLOa1o0Zh4L/ASVTUrsee9IgNB1XP
	1+8Yrf6dTomAS0FxSQcA4neAiU8K/dy+7rUOVySJyMDN7+SpnvbBgb36LtKz2gj5ggYHiMJccDr/9
	wdOOGfFun4j2Vuty+nR/dJJuA/2e/nBnA91LQcOCUjhDlmVYMGX0Q9Jqa6cqCiFOaUThEISfmWvIX
	pXFczzevT/hs3VOeJW1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Tok-0007nr-KV; Wed, 04 Sep 2019 11:51:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5TnH-0005gu-MF
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 11:49:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E495337;
 Wed,  4 Sep 2019 04:49:47 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 774743F246;
 Wed,  4 Sep 2019 04:49:46 -0700 (PDT)
Date: Wed, 4 Sep 2019 12:49:44 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v5 11/11] kselftest: arm64: fake_sigreturn_misaligned_sp
Message-ID: <20190904114944.GB27757@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-12-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902112932.36129-12-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_044947_837374_3B749A0C 
X-CRM114-Status: GOOD (  18.63  )
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

On Mon, Sep 02, 2019 at 12:29:32pm +0100, Cristian Marussi wrote:
> Add a simple fake_sigreturn testcase which places a valid sigframe on a
> non-16 bytes aligned SP. Expects a SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> v3 --> v4
> - fix commit
> - use new fake_sigreturn misalig_bytes params
> - removed TODO
> - added test description
> ---
>  .../testcases/fake_sigreturn_misaligned_sp.c  | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c
> new file mode 100644
> index 000000000000..1e089e66f9f3
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c
> @@ -0,0 +1,37 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 ARM Limited
> + *
> + * Place a fake sigframe on the stack at a misaligned SP: on sigreturn
> + * Kernel must spot this attempt and the test case is expected to be
> + * terminated via SEGV.
> + */
> +
> +#include <signal.h>
> +#include <ucontext.h>
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +struct fake_sigframe sf;
> +
> +static int fake_sigreturn_misaligned_run(struct tdescr *td,
> +					 siginfo_t *si, ucontext_t *uc)
> +{
> +	/* just to fill the ucontext_t with something real */
> +	if (!get_current_context(td, &sf.uc))
> +		return 1;
> +
> +	/* Forcing sigframe on misaligned SP (16 + 3) */
> +	fake_sigreturn(&sf, sizeof(sf), 3);

Can we add tests on the TODO list for other misalignments?

 a) 4 (i.e., __alignof__(struct _aarch64_ctx))
 b) 8 (i.e., sizeof(struct _aarch64_ctx))

This may help catch potential wrong-bitmask bugs in the kernel when
checking the alignment.  Similarly to my suggestion on patch 10, these
can go on the TODO list and added later (probably macro-ised).

For now, let's get this series settled as-is -- so, after responding to
nits:

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
