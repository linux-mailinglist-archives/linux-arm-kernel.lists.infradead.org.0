Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545194E64C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UIFA801FzuC+J9mNQW6MtemXj9hQx2jSOcMNU7MgDU=; b=DS0sEraonYi3t2
	45QHKMc5C3JNJ/zEvEiL7cwixNExM9yp6VCQeD5mWDZ5AgwSQIEWvROTDCqkbGwXqPii8IxB04OeA
	UugPCGy2MF1ch8pf/o53yxtPHOJJEBHF/zMOyvvLj/q+CO2Bn/4D5iZnt1g7PoDW8HoPiUl4RGE+l
	gHVShEHYj3ljDFHXQjDhMBEyijuZy7K3mQLAyTA5icAoU+7Qh1X7qyY56QmepF3txQ9fRjWvsVQta
	HAllLZqeYhwCFB4ZfBHhl7aU4g3jJjOCfKOmeffQcnLcPO1U8NhHdJ6meb/GgT5v4g4KPvUXo7uDV
	IUQ3zRDnAyD/iwkLbMfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGyQ-000129-Og; Fri, 21 Jun 2019 10:40:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGtn-0003rw-PR
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:36:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B42B1478;
 Fri, 21 Jun 2019 03:36:03 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6DDD23F718;
 Fri, 21 Jun 2019 03:36:02 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:36:00 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 09/13] kselftest: arm64: fake_sigreturn_misaligned
Message-ID: <20190621103600.GQ2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-10-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111335.7645-10-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033603_912161_A23B857D 
X-CRM114-Status: GOOD (  16.65  )
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

On Thu, Jun 13, 2019 at 12:13:31PM +0100, Cristian Marussi wrote:
> Added a simple fake_sigreturn testcase which builds a good
> ucontext_t and tries to place it onto the stack in a misaligned way.
> Expects a SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  .../arm64/signal/testcases/.gitignore         |  1 +
>  .../testcases/fake_sigreturn_misaligned.c     | 30 +++++++++++++++++++
>  2 files changed, 31 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> index c2972c3f33ca..3e6b26be6727 100644
> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> @@ -6,3 +6,4 @@ mangle_pstate_invalid_mode_el1
>  mangle_pstate_invalid_mode_el2
>  mangle_pstate_invalid_mode_el3
>  mangle_pstate_ssbs_regs
> +fake_sigreturn_misaligned
> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned.c
> new file mode 100644
> index 000000000000..d551858dd9dd
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned.c
> @@ -0,0 +1,30 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2019 ARM Limited */
> +
> +#include <ucontext.h>
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +struct a_sigframe sf;
> +
> +static int fake_sigreturn_misaligned_run(struct tdescr *td,
> +				         siginfo_t *si, ucontext_t *uc)
> +{
> +	/* just to fill the ucontext_t with something real */
> +	if (!get_current_context(td, &sf.uc))
> +		return 1;
> +
> +	/* Forcing sigframe on misaligned (=!16) SP */
> +	fake_sigreturn(&sf, sizeof(sf), 8);

Does this do the right thing?  From the asm code, it looks like
fake_sigreturn will ensure that SP % 8 == 0, but that may still be fine
(i.e., SP % 16 == 0 and SP % 8 == 0 can both be true, depending on the
precise value of sizeof(sf)).

Maybe I misunderstood what fake_sigreturn is doing.

Instead, do we want to ensure that SP % 16 != 0 here?

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
