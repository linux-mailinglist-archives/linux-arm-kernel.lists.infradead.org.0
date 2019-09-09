Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732D8ADEFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FHMPzK53jNXmnM6VnYzFDDVB+3ra5skVdDLW1KFQVw=; b=Wx0OgVOlQLlfGs
	y2nxw+H43C7OzXBc43Rd450jvU8jiX+x2k2haj6dXRWamCOJYXlWOSr2Ejl+AO030j4/FPXMDOT9/
	O1FFQeeqJEgr/sWjs5PCzPaLOFLl9YnJ1oomi3uiRuYuK3TiY+3RYklC42sgfg6AL5ZppayYv8+Oi
	TQj7WlLApa/z7A/qG7bZOUd7ENUg7atUpwPHn4ndgJll1OpIidMxcW7cl1BtMoDQ59YJf62IV07IT
	2JKOOcZ1cx3WeFWPFUSokcu2YhQ0Vm2boCYt4TOvAOlkBjXrpQ5DtSZZS4o4dWy8jBl36PW5RayIy
	+g/cKY1p4ZxfzjxY0/5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OSq-0003WV-Tr; Mon, 09 Sep 2019 18:32:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7OSi-0003W1-4g
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:32:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F26FC1000;
 Mon,  9 Sep 2019 11:32:26 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2D25F3F71F;
 Mon,  9 Sep 2019 11:32:26 -0700 (PDT)
Subject: Re: [PATCH v5 11/11] kselftest: arm64: fake_sigreturn_misaligned_sp
To: Dave Martin <Dave.Martin@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-12-cristian.marussi@arm.com>
 <20190904114944.GB27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <28314ab6-efd6-34b2-ed32-5f0f4fbf5cae@arm.com>
Date: Mon, 9 Sep 2019 19:32:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904114944.GB27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_113228_228814_30CEE116 
X-CRM114-Status: GOOD (  18.48  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/09/2019 12:49, Dave Martin wrote:
> On Mon, Sep 02, 2019 at 12:29:32pm +0100, Cristian Marussi wrote:
>> Add a simple fake_sigreturn testcase which places a valid sigframe on a
>> non-16 bytes aligned SP. Expects a SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> v3 --> v4
>> - fix commit
>> - use new fake_sigreturn misalig_bytes params
>> - removed TODO
>> - added test description
>> ---
>>  .../testcases/fake_sigreturn_misaligned_sp.c  | 37 +++++++++++++++++++
>>  1 file changed, 37 insertions(+)
>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c
>> new file mode 100644
>> index 000000000000..1e089e66f9f3
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c
>> @@ -0,0 +1,37 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (C) 2019 ARM Limited
>> + *
>> + * Place a fake sigframe on the stack at a misaligned SP: on sigreturn
>> + * Kernel must spot this attempt and the test case is expected to be
>> + * terminated via SEGV.
>> + */
>> +
>> +#include <signal.h>
>> +#include <ucontext.h>
>> +
>> +#include "test_signals_utils.h"
>> +#include "testcases.h"
>> +
>> +struct fake_sigframe sf;
>> +
>> +static int fake_sigreturn_misaligned_run(struct tdescr *td,
>> +					 siginfo_t *si, ucontext_t *uc)
>> +{
>> +	/* just to fill the ucontext_t with something real */
>> +	if (!get_current_context(td, &sf.uc))
>> +		return 1;
>> +
>> +	/* Forcing sigframe on misaligned SP (16 + 3) */
>> +	fake_sigreturn(&sf, sizeof(sf), 3);
> 
> Can we add tests on the TODO list for other misalignments?
> 
>  a) 4 (i.e., __alignof__(struct _aarch64_ctx))
>  b) 8 (i.e., sizeof(struct _aarch64_ctx))
> 
> This may help catch potential wrong-bitmask bugs in the kernel when
> checking the alignment.  Similarly to my suggestion on patch 10, these
> can go on the TODO list and added later (probably macro-ised).
> 
Ok
> For now, let's get this series settled as-is -- so, after responding to
> nits:
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> 

Thanks

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
