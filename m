Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2FA5D387
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QbCIgLBiqMkGnyS/d9nA9mdpr8B6FkjVrV72XqZ25mc=; b=Y2Ruce8K0GdjW/Mm2tTlfk7Iy
	jeHZoTG9EZxW+l1HtwHoq9wlVOixvx7mgbSE7Kr8+qTy6U5rx4/h+QakT1rGFC0XSXJfdnMvOWYIU
	PAg51dYts8Wp1qYlwTGYfZCRjZHV6MWrAYKYw9kT+2vTMXFej6Tj5+LQzHC5lM9P4EnWkDNAS5Bqr
	carNQPhKANzCN7e89vgm2l+ksh80B1P4fBAIbQ/l2p7aeNXM8embvdmiSa5hbHWnj35x+G5YxqV6y
	oAp2b5fAtlHjB2MJu8C6Pn+z0V/PIlMAECijrWyaioj8z9WSFnN5uvXbRUObgVw5xRRO3Qac2wBvZ
	YqB4EEXDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiL4T-0003cP-VG; Tue, 02 Jul 2019 15:51:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiL4H-0003c1-NZ
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 15:51:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29B3A28;
 Tue,  2 Jul 2019 08:51:41 -0700 (PDT)
Received: from [10.1.26.178] (unknown [10.1.26.178])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 330173F246;
 Tue,  2 Jul 2019 08:51:40 -0700 (PDT)
Subject: Re: [PATCH 08/13] kselftest: arm64: mangle_pstate_ssbs_regs
To: Dave Martin <Dave.Martin@arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-9-cristian.marussi@arm.com>
 <20190621103554.GP2790@e103592.cambridge.arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <b4365458-2034-2f06-4235-a101f17d4751@arm.com>
Date: Tue, 2 Jul 2019 16:51:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190621103554.GP2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_085141_859412_7FC3625E 
X-CRM114-Status: GOOD (  22.21  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 6/21/19 11:35 AM, Dave Martin wrote:
> On Thu, Jun 13, 2019 at 12:13:30PM +0100, Cristian Marussi wrote:
>> Added a simple mangle testcase which messes with the ucontext_t
>> from within the sig_handler, trying to toggle PSTATE SSBS bit.
>> Expect SIGILL if SSBS feature unsupported or that the value set in
>> PSTATE.SSBS is preserved on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>>   .../arm64/signal/testcases/.gitignore         |  1 +
>>   .../testcases/mangle_pstate_ssbs_regs.c       | 41 +++++++++++++++++++
>>   2 files changed, 42 insertions(+)
>>   create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> index e7a1d998b650..c2972c3f33ca 100644
>> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> @@ -5,3 +5,4 @@ mangle_pstate_invalid_state_toggle
>>   mangle_pstate_invalid_mode_el1
>>   mangle_pstate_invalid_mode_el2
>>   mangle_pstate_invalid_mode_el3
>> +mangle_pstate_ssbs_regs
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
>> new file mode 100644
>> index 000000000000..d997ebf742d9
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
>> @@ -0,0 +1,41 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
>> +#include "test_signals_utils.h"
>> +#include "testcases.h"
>> +
>> +static int mangle_invalid_pstate_ssbs_run(struct tdescr *td,
>> +					  siginfo_t *si, ucontext_t *uc)
>> +{
>> +	ASSERT_GOOD_CONTEXT(uc);
>> +
>> +	/* toggle bit value */
>> +	uc->uc_mcontext.pstate ^= PSR_SSBS_BIT;
>> +	/* Save after mangling...it should be preserved */
>> +	td->saved_uc = *uc;
>> +
>> +	return 1;
>> +}
>> +
>> +static int pstate_ssbs_bit_checks(struct tdescr *td)
>> +{
>> +	uint64_t val = 0;
>> +
>> +	get_regval(MRS_SSBS_SYSREG, val);
>> +	/* pass when preserved */
>> +	td->pass = (!!(val & MRS_SSBS_BIT) ==
>> +		    !!(td->saved_uc.uc_mcontext.pstate & PSR_SSBS_BIT));
> 
> Nit: there's a redundant level of ! here, and the outer () are unnecessary:
> 
> 	(!!a == !!b) -> !a == !b
>

This was me badly convinced (not sure where I got this) that the bitpos 
of PSR_SSBS_BIT in pstate was different from the bitpos as reported in 
the output of MRS SSBS, so I was trying to normalize the comparison to 1 
== 1 or 0 == 0

...but in fact bitpos is the same between PSTATE and MSR SSBS so it can 
be compared directly.



> [...]
> 
> Can we trigger a second signal after the first returns, to grab the
> updated ucontext and check SSBS in there directly?
> 
> Checking that the updated value is _also_ visible via MRS remains
> useful though, so we should keep that.
> 

I have added an informational message that reports the PSTATE and the 
status of SSBS as grabbed from uc via an induced SIGUSR2.
Test outcome is anyway  determined on MRS SSBS result.

If HWCAP_SSBS is available the feature is considered available and so 
MRS SSBS MUST work.
If instead feature is NOT supported as stated in HWCAP_SSBS the test is 
anyway run but the MRS SSBS is expected to cause a SIGILL (COULD not 
SHOULD...since HW_CAP could be reporting wrong caps and so MRS SSBS will 
still work)

Moreover I fixed a small glitch: I was toggling the SSBS bit in uc 
PSTATE, BUT this make no sense...toggling to zero there's NO way I can 
check if Kernel preserve it to zero...so now I'm setting to 1 and then 
check if it has been preserved by Kernel

Cristian
> Cheers
> ---Dave
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
