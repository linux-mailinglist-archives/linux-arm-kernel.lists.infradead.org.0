Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3738CA39AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 16:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LN3LfdufTu7HjI68IIqSmzNRjbSGegXS6IUjFIySQiI=; b=Jb+pWM29D8Qjhf
	cC39l91GKltLWcz4Fm99DE5GLheBVlxiVZEixegelK3phR9UIyTTia2lrQqFfr66fciMN/l8KkOYA
	KD/zU+VcC5Sggy9ZiJbd7FCES9AJBJojh8O0G/rD8+t08Zy1yRftajchpMjzDTJFBl9Tdkses2aCz
	y41FVciNsz2njGXyW2DncUaECaHbQlEfyOQhiwHTOM1GsKkU4qpI0lyNINWgOSJH0nGWEpUtudm01
	/HOOozFIYiERGIEMqx+qOFlNsGzLaLXCMioBFr7qD91UkgDOiJV5WBlpOrHUNXFaTDLxXvyDYgMH8
	7+zCLROxUPDg3exVqBsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3iK0-0002QG-4f; Fri, 30 Aug 2019 14:56:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3iJd-0002Pk-Qm
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 14:55:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5EF86344;
 Fri, 30 Aug 2019 07:55:53 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB8053F703;
 Fri, 30 Aug 2019 07:55:52 -0700 (PDT)
Subject: Re: [PATCH v3 08/11] kselftest: arm64: fake_sigreturn_missing_fpsimd
To: Dave Martin <Dave.Martin@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-9-cristian.marussi@arm.com>
 <20190813162622.GF10425@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <35f30b95-5b0b-52f0-5b73-954713f0682d@arm.com>
Date: Fri, 30 Aug 2019 15:55:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813162622.GF10425@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_075554_904668_FB030B5C 
X-CRM114-Status: GOOD (  15.49  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 13/08/2019 17:26, Dave Martin wrote:
> On Fri, Aug 02, 2019 at 06:02:57PM +0100, Cristian Marussi wrote:
>> Added a simple fake_sigreturn testcase which builds a ucontext_t
> 
> Add
Ok

> 
>> without the required fpsimd_context and place it onto the stack.
>> Expects a SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>>  .../arm64/signal/testcases/.gitignore         |  1 +
>>  .../testcases/fake_sigreturn_missing_fpsimd.c | 44 +++++++++++++++++++
>>  2 files changed, 45 insertions(+)
>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c
>>
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> index cf2a73599818..17d1c5e73319 100644
>> --- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> @@ -6,3 +6,4 @@ mangle_pstate_invalid_mode_el3
>>  mangle_pstate_ssbs_regs
>>  fake_sigreturn_bad_magic
>>  fake_sigreturn_bad_size_for_magic0
>> +fake_sigreturn_missing_fpsimd
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c
>> new file mode 100644
>> index 000000000000..b8dd57ce6844
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_missing_fpsimd.c
>> @@ -0,0 +1,44 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
> 
> signal.h?
> 
Ok
>> +#include <stdio.h>
>> +#include <ucontext.h>
>> +
>> +#include "test_signals_utils.h"
>> +#include "testcases.h"
>> +
>> +struct fake_sigframe sf;
>> +
>> +static int fake_sigreturn_missing_fpsimd_run(struct tdescr *td,
>> +					     siginfo_t *si, ucontext_t *uc)
>> +{
>> +	size_t resv_sz, offset;
>> +	struct _aarch64_ctx *head = GET_SF_RESV_HEAD(sf);
>> +
>> +	/* just to fill the ucontext_t with something real */
>> +	if (!get_current_context(td, &sf.uc))
>> +		return 1;
>> +
>> +	resv_sz = GET_SF_RESV_SIZE(sf);
>> +	head = get_header(head, FPSIMD_MAGIC, resv_sz, &offset);
>> +	/* just give up and timeout if still not enough space */
>> +	if (head && resv_sz - offset >= HDR_SZ) {
>> +		fprintf(stderr, "Mangling template header. Spare space:%zd\n",
>> +			resv_sz - offset);
>> +		/* Just overwrite fpsmid_context */
>> +		write_terminator_record(head);
>> +
>> +		ASSERT_BAD_CONTEXT(&sf.uc);
>> +		fake_sigreturn(&sf, sizeof(sf), 16);
>> +	}
>> +
>> +	return 1;
>> +}
> 
> [...]
> 
> Seems reasonable otherwise.
> 
> Cheers
> ---Dave
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
