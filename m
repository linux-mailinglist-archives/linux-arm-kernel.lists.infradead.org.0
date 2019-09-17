Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE19B52CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pn8i6e3dnEO837P5VmG9N1Wyd/QW9ilv7Exr99/Qfts=; b=Xzzl/ReH94Y56C8AcVoCNfr9P
	J0G9DlDPJxwXh4jKZLqWL49w0CWtnBxoKaipQdQ4sSXUAkB5WPtI2RwGcYEacTlrHETsDZWdi/Kez
	VpFqGb9reAg3DUVK4Ff0ZrXVcXmhJAAeLPLFL/KHRsbJQRAsZxt7JdpoNge7qJLGpC5JzOfu2yS8V
	DoU2828sU9UJGwRH1zJSvAHLdcfGtG5ZwOmb7c52a3tjIKAk4nUwREBCcxCGysxXVqPj2UKFepER/
	MZfy9Dr8/2ThyV7usb1C97iVSgSqQOeJEKNA0+p+MOPXZsDQb2BWiinDJVqcWmANZhpCeMjIzhBxE
	xDp5ptMuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAGC6-0003po-Od; Tue, 17 Sep 2019 16:19:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGBt-0003pJ-K6
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 16:18:59 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC94720665;
 Tue, 17 Sep 2019 16:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568737137;
 bh=Jhfok+KlsSFZtyo9A8SLf3rtjgaNyjEHNBclkCtKnvY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=H1w9E3KnLMoMQ8CCBOx5fcOomIW8c5TFTpnlNb9K06bqQrpRYxIkD6Np1n6qmF3CR
 jH+qpL0/DHNwm6Nxxs6gVdL5DfM5r7lIkh2B9VyWlIVHJ21g5Vf0hy3hkJOjkaO8wr
 S/qRt9pCe/JRPNfYt74SR2RpiAeFmRyL8CIscA1E=
Subject: Re: [PATCH v6 01/11] kselftest: arm64: extend toplevel skeleton
 Makefile
To: Dave Martin <Dave.Martin@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>
References: <20190910123111.33478-1-cristian.marussi@arm.com>
 <20190910123111.33478-2-cristian.marussi@arm.com>
 <20190917160534.GK27757@arm.com>
From: shuah <shuah@kernel.org>
Message-ID: <119aaea7-10b5-0fdf-269d-e86df07b4831@kernel.org>
Date: Tue, 17 Sep 2019 10:18:55 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190917160534.GK27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_091857_704740_B66F4C85 
X-CRM114-Status: GOOD (  25.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah <shuah@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/17/19 10:05 AM, Dave Martin wrote:
> On Tue, Sep 10, 2019 at 01:31:01pm +0100, Cristian Marussi wrote:
>> Modify KSFT arm64 toplevel Makefile to maintain arm64 kselftests organized
>> by subsystem, keeping them into distinct subdirectories under arm64 custom
>> KSFT directory: tools/testing/selftests/arm64/
>>
>> Add to such toplevel Makefile a mechanism to guess the effective location
>> of Kernel headers as installed by KSFT framework.
>>
>> Fit existing arm64 tags kselftest into this new schema moving them into
>> their own subdirectory (arm64/tags).
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> Based on:
>> commit 9ce1263033cd ("selftests, arm64: add a selftest for passing
>> 		     tagged pointers to kernel")
>> ---
>> v5 --> v6
>> - using realpath to avoid passing down relative paths
>> - fix commit msg & Copyright
>> - removed unneded Makefile export
>> - added SUBTARGETS specification, to allow building specific only some
>>    arm64 test subsystems
>> v4 --> v5
>> - rebased on arm64/for-next/core
>> - merged this patch with KSFT arm64 tags patch, while moving the latter
>>    into its own subdir
>> - moved kernel header includes search mechanism from KSFT arm64
>>    SIGNAL Makefile
>> - export proper top_srcdir ENV for lib.mk
>> v3 --> v4
>> - comment reword
>> - simplified documentation in README
>> - dropped README about standalone
>> ---
>>   tools/testing/selftests/Makefile              |  1 +
>>   tools/testing/selftests/arm64/Makefile        | 63 +++++++++++++++++--
>>   tools/testing/selftests/arm64/README          | 25 ++++++++
>>   tools/testing/selftests/arm64/tags/Makefile   |  6 ++
>>   .../arm64/{ => tags}/run_tags_test.sh         |  0
>>   .../selftests/arm64/{ => tags}/tags_test.c    |  0
>>   6 files changed, 91 insertions(+), 4 deletions(-)
>>   create mode 100644 tools/testing/selftests/arm64/README
>>   create mode 100644 tools/testing/selftests/arm64/tags/Makefile
>>   rename tools/testing/selftests/arm64/{ => tags}/run_tags_test.sh (100%)
>>   rename tools/testing/selftests/arm64/{ => tags}/tags_test.c (100%)
>>
>> diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
>> index 25b43a8c2b15..1722dae9381a 100644
>> --- a/tools/testing/selftests/Makefile
>> +++ b/tools/testing/selftests/Makefile
>> @@ -1,5 +1,6 @@
>>   # SPDX-License-Identifier: GPL-2.0
>>   TARGETS = android
>> +TARGETS += arm64
>>   TARGETS += bpf
>>   TARGETS += breakpoints
>>   TARGETS += capabilities
>> diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
>> index a61b2e743e99..cbb2a5a9e3fc 100644
>> --- a/tools/testing/selftests/arm64/Makefile
>> +++ b/tools/testing/selftests/arm64/Makefile
>> @@ -1,11 +1,66 @@
>>   # SPDX-License-Identifier: GPL-2.0
>>   
>> -# ARCH can be overridden by the user for cross compiling
>> +# When ARCH not overridden for crosscompiling, lookup machine
>>   ARCH ?= $(shell uname -m 2>/dev/null || echo not)
>>   
>>   ifneq (,$(filter $(ARCH),aarch64 arm64))
>> -TEST_GEN_PROGS := tags_test
>> -TEST_PROGS := run_tags_test.sh
>> +SUBTARGETS ?= tags
>> +else
>> +SUBTARGETS :=
>>   endif
>>   
>> -include ../lib.mk
>> +CFLAGS := -Wall -O2 -g
>> +
>> +# A proper top_srcdir is needed by KSFT(lib.mk)
>> +top_srcdir = $(realpath ../../../../)
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
> I still tend to think that for now we should just do what all the other
> tests do.
> 
> Most tests use
> 
> 	CFLAGS += -I../../../../usr/include/
> 
> in their Makefiles.
> 
> For us, the test Makefiles are nested one level deeper, so I guess
> we would put
> 
> 	CFLAGS += -I../../../../../usr/include/
> 
> in each.
> 
> 
> This will break in some cases, but only in the same cases where
> kselftest is already broken.
> 
> Ideally we would fix this globally, but can that instead be done
> independently of this series?
> 
> Fixing only arm64, by pasting some arbitrary logic from
> selftests/Makefile doesn't seem like a future-proof approach.
> 
> 
> Or did I miss something?
> 
>> +
>> +CFLAGS += -I$(khdr_dir)
>> +
>> +export CFLAGS
>> +export top_srcdir
>> +
>> +all:
>> +	@for DIR in $(SUBTARGETS); do				\
>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>> +		mkdir -p $$BUILD_TARGET;			\
>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>> +	done
>> +
>> +install: all
>> +	@for DIR in $(SUBTARGETS); do				\
>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>> +	done
>> +
>> +run_tests: all
>> +	@for DIR in $(SUBTARGETS); do				\
>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>> +	done
>> +
>> +# Avoid any output on non arm64 on emit_tests
> 
> This comment can be dropped: the whole file does nothing for
> non-arm64, and it achieves it in the same way as other arch-specific
> Makefiles, so it's odd to have the comment here specifically (?)
> 
> 
> With or without the above changes, I'm happy to give
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> 
> (but Shuah or someone will need to give a view on how this integrates
> with kselftest overall).
> 

I am reviewing the series this week. I will provide comments in a
day or two.

thanks,
-- Shuah

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
