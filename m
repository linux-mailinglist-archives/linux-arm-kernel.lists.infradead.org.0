Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337395D318
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yJCG6G/UPIby2Hb8FHiquYhiCss0+5ARnF6wmKtV5fQ=; b=IB1AAONTW3zcA3nCOyspQCbaW
	okKyDEXx4ZzJbo0tijpQaJDEUBO7YJuqMtNYraGekpgyhMoh5Tv5E1UD6S7Pmg02O6uf4hzT8b+cg
	QubGRWz7NpfViIgKq2fyvuJ/PrkzmiHXnz2QwBzX2/LRc2WyNYjqHt9K4sUjCIceGvCbsO4yyDySn
	2I6n2YrMx7R7KnTCIFzFUOfnNB71jSVfBOtc+lIyO1VRy7/D+UUN0X55vo0/MmuEwr8609qTv81v/
	NfhLiVsXzE92nT5HIq6VBD0hX8a24vH+/STQBJlE3zGBqeSuR2O80/BMJWYdC60rovsefzVnveSUB
	OJSTZmrBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKt6-0005U0-1K; Tue, 02 Jul 2019 15:40:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKsm-0005RO-GX
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 15:39:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65E4B28;
 Tue,  2 Jul 2019 08:39:46 -0700 (PDT)
Received: from [10.1.26.178] (unknown [10.1.26.178])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A97B63F246;
 Tue,  2 Jul 2019 08:39:45 -0700 (PDT)
Subject: Re: [PATCH 03/13] kselftest: arm64: mangle_sp_misaligned
To: Dave Martin <Dave.Martin@arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
 <20190613111335.7645-4-cristian.marussi@arm.com>
 <20190621103518.GK2790@e103592.cambridge.arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <68cc7940-4ee0-b06c-7bd3-b1fbfbc9e142@arm.com>
Date: Tue, 2 Jul 2019 16:39:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190621103518.GK2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_083948_743043_E5EBBD3D 
X-CRM114-Status: GOOD (  21.68  )
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
> On Thu, Jun 13, 2019 at 12:13:25PM +0100, Cristian Marussi wrote:
>> Added a simple mangle testcase which messes with the ucontext_t
>> from within the sig_handler, trying to badly modify and misalign the SP.
>> Expects SIGBUS on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>>   .../arm64/signal/testcases/.gitignore         |  1 +
>>   .../signal/testcases/mangle_sp_misaligned.c   | 24 +++++++++++++++++++
>>   2 files changed, 25 insertions(+)
>>   create mode 100644 tools/testing/selftests/arm64/signal/testcases/.gitignore
>>   create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> new file mode 100644
>> index 000000000000..7f7414d241f2
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> @@ -0,0 +1 @@
>> +mangle_sp_misaligned
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c b/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
>> new file mode 100644
>> index 000000000000..41bd27312e54
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
>> @@ -0,0 +1,24 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
>> +#include "test_signals_utils.h"
>> +#include "testcases.h"
>> +
>> +static int mangle_misaligned_sp_run(struct tdescr *td, siginfo_t *si,
>> +				    ucontext_t *uc)
>> +{
>> +	ASSERT_GOOD_CONTEXT(uc);
>> +
>> +	uc->uc_mcontext.sp += 3;
> 
> What are we testing here?
> 
> It is archietcturally permitted (if unusual) to have a misaligned sp in
> userspace.
> 
> So are we just getting a SIGBUS after the sigreturn, when the thread
> tries to dereference sp?  If so, we aren't really testing anything about
> sigreturn here -- I don't see any check in the kernel when restoring sp
> in sigreturn.
> 
> Even if there were no SIGBUS, the thread stack is now corrupt (due to
> wrong sp), so the interrupted code is unlikely to continue running
> successfully.
> 
> Am I missing something?
> 

The initial (flawed) attempt was to test the check in arm64 rt_sigreturn 
kernel code:

if (regs->sp & 15)
	goto badframe;

BUT in fact such initial check happens at the start of rt_sigreturn 
syscall well before the regs are restored from the uc context in the 
sigframe which I mangled

i.e.
restore_sigframe() -->> __get_user_error(regs->sp...)

==>> uc.uc_mcontext.sp --> regs->sp

happens AFTER the above regs->sp alignment check.

So the check is performed on the effective SP value at the time of 
kernel entry of sigreturn NOT on the uc.uc_mcontext.sp MANGLED value, so 
this is not really a sigreturn related test at this point. (and hence 
the SIGBUS instead of the SEGV).

So an option could be as you proposed in another similarly flawed test 
to mangle uc.uc_mcontext.sp to point to something unreasonable and in 
Kernel space (at least virtually)

I'll give it a try.

Cristian

> [...]
> 
> Cheers
> ---Dave
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
