Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 616CA5E059
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 10:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8WRAIrYvxSPYXPePAk+YeKdS016TtD4E/dhROLfi8Q=; b=FZZFzIZr+Ivm3l
	FYtSpVmx/tjjKB7VMr+C4rUNbHw6VFTZUiJUhKMDzXTzS4I98A1zTxzbwClTVQXHX9J1Jt+MED81d
	SrmKdjH3gksfc03ku6YEkOHh5Mt3gF7iNlCGxZJwie+bR3J+mxVfEYPDQ7veL/hifICzPwpP10Pxc
	nXdxWRTJ2Zcx0ykv7QGtS2mJ9u67mcHqqHlKAHzn+ZjYe01l/c+/dQll7fJGQ5XCjlaCIb5rsYw4P
	RpzQSnZu00H5TpxKI88XdqYNaBmH+FueFV+caFK33dUfK1Uv9ClJj/ichDsKP+Shrr0LgDnZ/W5Le
	0J5ouFp0ZoEpTpSgQvTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hib4Q-0004HS-Mz; Wed, 03 Jul 2019 08:56:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hib4B-0004Gw-QE
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 08:56:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E55C6344;
 Wed,  3 Jul 2019 01:56:38 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 23DE83F718;
 Wed,  3 Jul 2019 01:56:38 -0700 (PDT)
Date: Wed, 3 Jul 2019 09:56:36 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 08/13] kselftest: arm64: mangle_pstate_ssbs_regs
Message-ID: <20190703085633.GQ2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-9-cristian.marussi@arm.com>
 <20190621103554.GP2790@e103592.cambridge.arm.com>
 <b4365458-2034-2f06-4235-a101f17d4751@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4365458-2034-2f06-4235-a101f17d4751@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_015639_941934_085E8749 
X-CRM114-Status: GOOD (  30.09  )
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
Cc: andreyknvl@google.com, shuah@kernel.org, linux-kselftest@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 04:51:38PM +0100, Cristian Marussi wrote:
> Hi
> 
> On 6/21/19 11:35 AM, Dave Martin wrote:
> > On Thu, Jun 13, 2019 at 12:13:30PM +0100, Cristian Marussi wrote:
> >> Added a simple mangle testcase which messes with the ucontext_t
> >> from within the sig_handler, trying to toggle PSTATE SSBS bit.
> >> Expect SIGILL if SSBS feature unsupported or that the value set in
> >> PSTATE.SSBS is preserved on test PASS.
> >>
> >> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> >> ---
> >>   .../arm64/signal/testcases/.gitignore         |  1 +
> >>   .../testcases/mangle_pstate_ssbs_regs.c       | 41 +++++++++++++++++++
> >>   2 files changed, 42 insertions(+)
> >>   create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
> >>
> >> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> >> index e7a1d998b650..c2972c3f33ca 100644
> >> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
> >> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
> >> @@ -5,3 +5,4 @@ mangle_pstate_invalid_state_toggle
> >>   mangle_pstate_invalid_mode_el1
> >>   mangle_pstate_invalid_mode_el2
> >>   mangle_pstate_invalid_mode_el3
> >> +mangle_pstate_ssbs_regs
> >> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
> >> new file mode 100644
> >> index 000000000000..d997ebf742d9
> >> --- /dev/null
> >> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
> >> @@ -0,0 +1,41 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +/* Copyright (C) 2019 ARM Limited */
> >> +
> >> +#include "test_signals_utils.h"
> >> +#include "testcases.h"
> >> +
> >> +static int mangle_invalid_pstate_ssbs_run(struct tdescr *td,
> >> +					  siginfo_t *si, ucontext_t *uc)
> >> +{
> >> +	ASSERT_GOOD_CONTEXT(uc);
> >> +
> >> +	/* toggle bit value */
> >> +	uc->uc_mcontext.pstate ^= PSR_SSBS_BIT;
> >> +	/* Save after mangling...it should be preserved */
> >> +	td->saved_uc = *uc;
> >> +
> >> +	return 1;
> >> +}
> >> +
> >> +static int pstate_ssbs_bit_checks(struct tdescr *td)
> >> +{
> >> +	uint64_t val = 0;
> >> +
> >> +	get_regval(MRS_SSBS_SYSREG, val);
> >> +	/* pass when preserved */
> >> +	td->pass = (!!(val & MRS_SSBS_BIT) ==
> >> +		    !!(td->saved_uc.uc_mcontext.pstate & PSR_SSBS_BIT));
> > 
> > Nit: there's a redundant level of ! here, and the outer () are unnecessary:
> > 
> > 	(!!a == !!b) -> !a == !b
> >
> 
> This was me badly convinced (not sure where I got this) that the bitpos 
> of PSR_SSBS_BIT in pstate was different from the bitpos as reported in 
> the output of MRS SSBS, so I was trying to normalize the comparison to 1 
> == 1 or 0 == 0
> 
> ...but in fact bitpos is the same between PSTATE and MSR SSBS so it can 
> be compared directly.

Since the #defines are separate, it may be more readable to avoid
assuming that they have the same value (even if they do).

But I'm happy either way.

> > [...]
> > 
> > Can we trigger a second signal after the first returns, to grab the
> > updated ucontext and check SSBS in there directly?
> > 
> > Checking that the updated value is _also_ visible via MRS remains
> > useful though, so we should keep that.
> > 
> 
> I have added an informational message that reports the PSTATE and the 
> status of SSBS as grabbed from uc via an induced SIGUSR2.
> Test outcome is anyway  determined on MRS SSBS result.

OK, sounds reasonable.

> If HWCAP_SSBS is available the feature is considered available and so 
> MRS SSBS MUST work.

Yup

> If instead feature is NOT supported as stated in HWCAP_SSBS the test is 
> anyway run but the MRS SSBS is expected to cause a SIGILL (COULD not 
> SHOULD...since HW_CAP could be reporting wrong caps and so MRS SSBS will 
> still work)

Probably reasonable.  I don't recall whether the architecture actually
guarantees a SIGILL though, or whether other things could happen (such
as executing as a NOP, or reading a fixed value such as 0).

Can this MRS be trapped?  I'm wondering whether it will still just
execute normally if running on hardware that has it, but on an old
kernel that doesn't report HWCAP_SSBS.  Some of the other tests may
fail on such a kernel though -- valid_user_regs() would probaly
mask the bit out when setting the register through sigreturn or ptrace.

> Moreover I fixed a small glitch: I was toggling the SSBS bit in uc 
> PSTATE, BUT this make no sense...toggling to zero there's NO way I can 
> check if Kernel preserve it to zero...so now I'm setting to 1 and then 
> check if it has been preserved by Kernel

Well, I guess you can check both ways, but the bit was previously RES0,
so if the kernel masks it out it should be stuck at 0.

So agreed, attempting to set it to 1 is the more interesting test.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
