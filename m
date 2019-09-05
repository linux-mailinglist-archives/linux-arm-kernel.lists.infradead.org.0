Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F351AA4ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vFfs2BQT+x3ZQ6hH9mVV4BuGjfQ1y5LZxpBMYb22TOQ=; b=PNdGDPYX2VaQfl
	s1TlLpyf7Olz9meYvbup204Q5bQ2SEr8mDCVmwXanZZXfEeBNePLvKw82g8Pb1XDdNtGyrmE24dXY
	D5Y/umkx7MrgdxeU3wWy5ZdRV0LtTC/WmfntJoKB0fDPQksTJJSjhpEOQu32nixy2UC0F966pFdCU
	TPV9YDGt74DG37Evzll0b2yGpOUMn8Bp2UPm4uPKq/D+Cw3FwMPEEqEt1tPdWys/MJdeFq/A1ktfV
	gzBppoi+Yy0wGnK+YnnYFP/CTPBsss6aN2IjPlEBGu1Cu4zISeCpISNr7gzy/IK+63G/BWbX0Q0uN
	UfnKbins0QNAMdJv9HRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5s5E-0000KO-Ab; Thu, 05 Sep 2019 13:45:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5s54-0000JA-2B
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:45:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0284A28;
 Thu,  5 Sep 2019 06:45:44 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 337913F67D;
 Thu,  5 Sep 2019 06:45:43 -0700 (PDT)
Subject: Re: [PATCH v5 01/11] kselftest: arm64: add skeleton Makefile
To: Dave Martin <Dave.Martin@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-2-cristian.marussi@arm.com>
 <20190904114734.GR27757@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <4e7f583f-df36-1d7b-7a41-160abc60a296@arm.com>
Date: Thu, 5 Sep 2019 14:45:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904114734.GR27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_064546_197357_45AB7396 
X-CRM114-Status: GOOD (  20.38  )
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

On 04/09/2019 12:47, Dave Martin wrote:
> On Mon, Sep 02, 2019 at 12:29:22pm +0100, Cristian Marussi wrote:
>> Add a new arm64-specific empty subsystem amongst TARGETS of KSFT build
>> framework; keep these new arm64 KSFT testcases separated into distinct
> 
> Nit: this isn't true any more, since the tags tests already added the
> arm64 subsystem here.

Ok
> 
>> subdirs inside tools/testing/selftests/arm64/ depending on the specific
>> subsystem targeted.
>>
>> Add into toplevel arm64 KSFT Makefile a mechanism to guess the effective
>> location of Kernel headers as installed by KSFT framework.
> 
> This:
> 
>> Merge with
>>
>> commit 9ce1263033cd ("selftests, arm64: add a selftest for passing
>> 		     tagged pointers to kernel")
>>
>> while moving such KSFT tags tests inside their own subdirectory
>> (arm64/tags).
> 
> ...could be put under the tearoff, but it doesn't really belong in the
> commit message IMHO.
> 
> I suggest rewriting the commit message to reflect the current
> situation (but it can be kept brief).
> 
> Basically, what this patch now seems to do is to prepare for adding
> more arm64 tests, by moving the tags tests into their own subdirectory
> and extending the existing skeleton Makefile as appropriate.
> 

Ok
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> v4 --> v5
>> - rebased on arm64/for-next/core
>> - merged this patch with KSFT arm64 tags patch, while moving the latter
>>   into its own subdir
>> - moved kernel header includes search mechanism from KSFT arm64
>>   SIGNAL Makefile
>> - export proper top_srcdir ENV for lib.mk
>> v3 --> v4
>> - comment reword
>> - simplified documentation in README
>> - dropped README about standalone
>> ---
> 
> [...]
> 
>> diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
>> index a61b2e743e99..5dbb0ffdfc9a 100644
>> --- a/tools/testing/selftests/arm64/Makefile
>> +++ b/tools/testing/selftests/arm64/Makefile
>> @@ -1,11 +1,69 @@
>>  # SPDX-License-Identifier: GPL-2.0
>> +# Copyright (C) 2019 ARM Limited
> 
> Change of copyright?  This isn't pure Arm IP upstream IIUC.
> 
> Maybe just drop it: Makefiles don't usually contain significant IP, so
> many have no copyright message anyway.
> 
Right. I'll drop.
>> -# ARCH can be overridden by the user for cross compiling
>> -ARCH ?= $(shell uname -m 2>/dev/null || echo not)
>> +# When ARCH not overridden for crosscompiling, lookup machine
>> +ARCH ?= $(shell uname -m)
>> +ARCH := $(shell echo $(ARCH) | sed -e s/aarch64/arm64/)
>>  
>> -ifneq (,$(filter $(ARCH),aarch64 arm64))
>> -TEST_GEN_PROGS := tags_test
>> -TEST_PROGS := run_tags_test.sh
>> +ifeq ("x$(ARCH)", "xarm64")
>> +SUBDIRS := tags
>> +else
>> +SUBDIRS :=
>>  endif
>>  
>> -include ../lib.mk
>> +CFLAGS := -Wall -O2 -g
>> +
>> +# A proper top_srcdir is needed by KSFT(lib.mk)
>> +top_srcdir = ../../../../..
>> +
>> +# Additional include paths needed by kselftest.h and local headers
>> +CFLAGS += -I$(top_srcdir)/tools/testing/selftests/
>> +
>> +# Guessing where the Kernel headers could have been installed
>> +# depending on ENV config
>> +ifeq ($(KBUILD_OUTPUT),)
>> +khdr_dir = $(top_srcdir)/usr/include
>> +else
>> +# the KSFT preferred location when KBUILD_OUTPUT is set
>> +khdr_dir = $(KBUILD_OUTPUT)/kselftest/usr/include
>> +endif
> 
> Looking at this, can we just pass the directory in from the toplevel
> "all" rule instead of guessing?
> 
Do you mean toplevel in KSFT ?
I think it's how should be done at the end, but I was trying to keep this series on
arm64/ lands only. (also maybe I'm missing something obvious in KSFT handling of this
situation....even though many other KSFT use built CFLAGS like: -I../../../usr/include
or similar)

> Maybe don't churn this for now though.  It's something that could be
> looked at later.
> 

Ok. I'll leave here and fix it to avoid relative paths...which could be problematic
when exported to lower level Makefiles.

Cheers

Cristian

> [...]
> 
> Apart from the comments above, the patch looks reasonable to me.
> 
> Cheers
> ---Dave
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
