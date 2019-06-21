Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4444E648
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnzcuSKZ9o+yXjAdF37C5qIc8MccUuwKpwowwt/Yv10=; b=E0fpetHShp9gZV
	Kj7JWsSTXjThfe/uB4lofKxVeSME+A9lmMvQB9Hdh3CTDPYA8cb5J2aJE53l+dfodHnne5AInbygb
	erU/b/vCw+MaJQVYke2ajlGavpX1mEI8teVbSGYHxTw+db72Mq7fbwQMbBe+VE/BPdWqTUf9BWQcJ
	GifuvV7aE79u6PoyTcGdrp7NIgihJimAOp5wqhGOn4jcDS5vqyskRku9tr2eN1Awr+qEJSjUW5L1F
	y7Ku4Ktr30tvKtwgPdsWvJXdP+lZAUCYd6q2u532tKH7T6IM1koOUPbcfy6LH9keedpsXjGHGseEe
	oDd0c5TtyXO+G+dyMzug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGxF-000781-8z; Fri, 21 Jun 2019 10:39:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGtF-0003Un-Hr
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:35:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 047EE1478;
 Fri, 21 Jun 2019 03:35:29 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 373F03F718;
 Fri, 21 Jun 2019 03:35:28 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:35:26 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 04/13] kselftest: arm64: mangle_pc_invalid
Message-ID: <20190621103526.GL2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-5-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111335.7645-5-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033529_676327_564F9662 
X-CRM114-Status: GOOD (  18.07  )
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

On Thu, Jun 13, 2019 at 12:13:26PM +0100, Cristian Marussi wrote:
> Added a simple mangle testcase which messes with the ucontext_t
> from within the sig_handler, trying to badly modify the PC to point
> toward Kernel land.
> Expects SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  .../arm64/signal/testcases/.gitignore         |  1 +
>  .../signal/testcases/mangle_pc_invalid.c      | 24 +++++++++++++++++++
>  2 files changed, 25 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pc_invalid.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> index 7f7414d241f2..a87fb0f0d2cf 100644
> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> @@ -1 +1,2 @@
>  mangle_sp_misaligned
> +mangle_pc_invalid
> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pc_invalid.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pc_invalid.c
> new file mode 100644
> index 000000000000..0024032528bc
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pc_invalid.c
> @@ -0,0 +1,24 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2019 ARM Limited */
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +static int mangle_invalid_pc_run(struct tdescr *td, siginfo_t *si,
> +				 ucontext_t *uc)
> +{
> +	ASSERT_GOOD_CONTEXT(uc);
> +
> +	uc->uc_mcontext.pc = 0xffffffffcccccccc;

Similarly to the previous test, I don't think this is testing the
sigreturn behaviour: the kernel just restores the bogus PC value and
returns to userspace.  We then rely on the architecture to generate a
prefetch abort when trying to fetch from the bogus PC.

Am I missing anything?

Could we have a test that points SP to kernel memory and the calls
sigreturn: there is a real behaviour to test there: we must not be able
to trick the kernel into interpreting kernel memory as a signal frame.

[...]

Cheers
--Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
