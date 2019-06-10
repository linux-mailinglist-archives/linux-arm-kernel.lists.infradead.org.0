Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397643B3C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBPmK07Xr4zy/10ok4sDPxd1hrMSwjfgcJ9C1Ms75ps=; b=tiZH9emdwBK5BD
	6jJBLSTBtH7amxw4BzUc4/c56CR3taSgUXhYg94QpoBBQUdMzxMX2+26KUqH6tbw6353Gie1pojMg
	5bLqnh8ZFS4NsV2YUnK0FViGEi+RlTXIRH/ldbdt8bcz+b5F2Jfx/cXhFQc2rgX3evi2aQQA6GdMA
	ebeLjkHQHzui92zNseqR/h6/iXm560fEJA+pGTYyxlPWrDLU6olW6Je+eb2mwn0rv7ypc0VcMQnJ6
	22zXcvK4SAnc1yaLrmMcaVtZXCLzcxjz9QTIv9fSsv9AjSkCKVo2cdMU0a1Pn/A3hmo3JzEplj0Uz
	XoEroRxv1mh+4PGpu0dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haI9t-0000Sb-Bg; Mon, 10 Jun 2019 11:08:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haI9V-0000SF-SH
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 11:07:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C949C337;
 Mon, 10 Jun 2019 04:07:48 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D22E3F557;
 Mon, 10 Jun 2019 04:09:28 -0700 (PDT)
Subject: Re: [PATCH v6 01/19] kernel: Standardize vdso_datapage
To: Huw Davies <huw@codeweavers.com>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-2-vincenzo.frascino@arm.com>
 <20190610092751.GA11076@merlot.physics.ox.ac.uk>
 <58cedde2-0d54-7d2d-f519-77cb71f543fd@arm.com>
 <20190610103151.GD11076@merlot.physics.ox.ac.uk>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <83ab2758-0e8c-35d5-906a-0338bcee3310@arm.com>
Date: Mon, 10 Jun 2019 12:07:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190610103151.GD11076@merlot.physics.ox.ac.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_040749_959871_5292CEF8 
X-CRM114-Status: GOOD (  16.16  )
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
Cc: linux-arch@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Dmitry Safonov <0x7f454c46@gmail.com>,
 Paul Burton <paul.burton@mips.com>, linux-kselftest@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Huw,

On 10/06/2019 11:31, Huw Davies wrote:
> On Mon, Jun 10, 2019 at 11:17:48AM +0100, Vincenzo Frascino wrote:
>> On 10/06/2019 10:27, Huw Davies wrote:
>>> On Thu, May 30, 2019 at 03:15:13PM +0100, Vincenzo Frascino wrote:
>>>> --- /dev/null
>>>> +++ b/include/vdso/datapage.h
>>>> @@ -0,0 +1,91 @@
>>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>>> +#ifndef __VDSO_DATAPAGE_H
>>>> +#define __VDSO_DATAPAGE_H
>>>> +
>>>> +#ifdef __KERNEL__
>>>> +
>>>> +#ifndef __ASSEMBLY__
>>>> +
>>>> +#include <linux/bits.h>
>>>> +#include <linux/time.h>
>>>> +#include <linux/types.h>
>>>> +
>>>> +#define VDSO_BASES	(CLOCK_TAI + 1)
>>>> +#define VDSO_HRES	(BIT(CLOCK_REALTIME)		| \
>>>> +			 BIT(CLOCK_MONOTONIC)		| \
>>>> +			 BIT(CLOCK_BOOTTIME)		| \
>>>> +			 BIT(CLOCK_TAI))
>>>> +#define VDSO_COARSE	(BIT(CLOCK_REALTIME_COARSE)	| \
>>>> +			 BIT(CLOCK_MONOTONIC_COARSE))
>>>> +#define VDSO_RAW	(BIT(CLOCK_MONOTONIC_RAW))
>>>> +
>>>> +#define CS_HRES_COARSE	0
>>>> +#define CS_RAW		1
>>>
>>> CS_HRES_COARSE seems like a confusing name choice to me.  What you
>>> really mean is not RAW.
>>>
>>> How about CS_ADJ to indicate that its updated by adjtime?
>>> CS_XTIME might be another option.
>>>
>>
>> I divided the timers in 3 sets (HRES, COARSE, RAW), CS_HRES_COARSE refers to the
>> first two and CS_RAW to the third. I will ad a comment to explain the logic in
>> the next iteration.
> 
> I'm thinking ahead about a possible CLOCK_MONOTONIC_RAW_COARSE (which
> would be useful at least for Wine).  In that case you'd have four clock
> types non-raw and raw, each with either hres or coarse.
> 

Thanks for this, I was not aware of CLOCK_MONOTONIC_RAW_COARSE.
I tried to find, though, some details, but I could not find any. Could you
please provide some reference?

> Huw.
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
