Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 926054E645
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRkbEYH+2ezGNVG9ip45A29ABWFj3sYsqS+LyVwGHXU=; b=dmcp7n7mVKcU1C
	QGSi5MtLf6Y/mf/7RWj9efx7Q25oBly7tVT+mID1XHU+VyMkeDDiDHEEHLM8ZxSDe9lXnJha1zqe3
	H4bL2MXQEd8jE6v4mO7wXSVoTtu1tMj4vp0xW1lewDqylHYnPOrL4XOk+1weYE6Tng/wR5IKzuswu
	5ikNJM7vbJI8zfaXvGmMvCJPZukQPlYUDaw5wcTgVCnBj+M79gJZ92yBiTE87j1nsRyBzXhTwJu/c
	nGHccMhSFOcvhDA7xqBlWqiIlC1fJEfnZGolO8nIAj3RGkK48hEEH0hnY6AkE4i59w41C6+/qDr5r
	vkdnD1Yl0ApEML2on2jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGwm-0006ae-Ah; Fri, 21 Jun 2019 10:39:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGt8-0003Qi-As
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:35:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D427028;
 Fri, 21 Jun 2019 03:35:21 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 12F2E3F718;
 Fri, 21 Jun 2019 03:35:20 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:35:19 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 03/13] kselftest: arm64: mangle_sp_misaligned
Message-ID: <20190621103518.GK2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-4-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111335.7645-4-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033522_673848_76A382D7 
X-CRM114-Status: GOOD (  15.64  )
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

On Thu, Jun 13, 2019 at 12:13:25PM +0100, Cristian Marussi wrote:
> Added a simple mangle testcase which messes with the ucontext_t
> from within the sig_handler, trying to badly modify and misalign the SP.
> Expects SIGBUS on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>  .../arm64/signal/testcases/.gitignore         |  1 +
>  .../signal/testcases/mangle_sp_misaligned.c   | 24 +++++++++++++++++++
>  2 files changed, 25 insertions(+)
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/.gitignore
>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
> 
> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> new file mode 100644
> index 000000000000..7f7414d241f2
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> @@ -0,0 +1 @@
> +mangle_sp_misaligned
> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c b/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
> new file mode 100644
> index 000000000000..41bd27312e54
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
> @@ -0,0 +1,24 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2019 ARM Limited */
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +static int mangle_misaligned_sp_run(struct tdescr *td, siginfo_t *si,
> +				    ucontext_t *uc)
> +{
> +	ASSERT_GOOD_CONTEXT(uc);
> +
> +	uc->uc_mcontext.sp += 3;

What are we testing here?

It is archietcturally permitted (if unusual) to have a misaligned sp in
userspace.

So are we just getting a SIGBUS after the sigreturn, when the thread
tries to dereference sp?  If so, we aren't really testing anything about
sigreturn here -- I don't see any check in the kernel when restoring sp
in sigreturn.

Even if there were no SIGBUS, the thread stack is now corrupt (due to
wrong sp), so the interrupted code is unlikely to continue running
successfully.

Am I missing something?

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
