Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542B1A65F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 11:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOr6WT1TqY0qazPZrtwLozegBpAaNwMYxpyFw7s6jR4=; b=Uhtdf8N8NLEJjE
	v/wHqQlTtskSVYAHdJ4+HOUilFPosjmqPNSHO/TmZB6KgcnHjLmBmWKDVpDkZFCVELqxxcFLRM6TX
	o5x2cra2sf+lZZ9zmXLw3WD3SMBhTZF1JS9U3k9f+SN9zzGvT4CrCgj8V10d+xr7GyFjGMJWRgS0w
	GRttwqmg4h4xYFnkBlwCBhJzW6443gqcb9Z6FwMkKGf7FLrCYVyqs0tzDUyhYjNqTDbVEbC1PrMIT
	4ylZ+sg9yTXfkkfHS2FuB0XSGNvrlpy+JtjSEJo7GRCDqH8PzXKo1bGohTnkpVXdaM6/Avsf3rJ5g
	oYjcrloWQ9KdqDFEKSBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i55O5-00071a-Ll; Tue, 03 Sep 2019 09:46:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i55Nr-00071A-2t
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 09:45:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 768AC28;
 Tue,  3 Sep 2019 02:45:53 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 908753F59C;
 Tue,  3 Sep 2019 02:45:52 -0700 (PDT)
Subject: Re: [PATCH v5 01/11] kselftest: arm64: add skeleton Makefile
To: Amit Kachhap <Amit.Kachhap@arm.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "shuah@kernel.org" <shuah@kernel.org>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-2-cristian.marussi@arm.com>
 <cce97298-7a27-c470-6fc5-873b4447ecc9@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <7029edac-87f9-d817-4fff-ad80778f46e7@arm.com>
Date: Tue, 3 Sep 2019 10:45:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <cce97298-7a27-c470-6fc5-873b4447ecc9@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_024555_215022_20949CCC 
X-CRM114-Status: GOOD (  18.71  )
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
Cc: "andreyknvl@google.com" <andreyknvl@google.com>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit

On 03/09/2019 10:26, Amit Kachhap wrote:
> 
> Hi Cristian,
> 
> On 9/2/19 4:59 PM, Cristian Marussi wrote:
>> Add a new arm64-specific empty subsystem amongst TARGETS of KSFT build
>> framework; keep these new arm64 KSFT testcases separated into distinct
>> subdirs inside tools/testing/selftests/arm64/ depending on the specific
>> subsystem targeted.
>>
>> Add into toplevel arm64 KSFT Makefile a mechanism to guess the effective
>> location of Kernel headers as installed by KSFT framework.
>>
>> Merge with
>>
>> commit 9ce1263033cd ("selftests, arm64: add a selftest for passing
>> 		     tagged pointers to kernel")
>>
>> while moving such KSFT tags tests inside their own subdirectory
>> (arm64/tags).
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> v4 --> v5
>> - rebased on arm64/for-next/core
>> - merged this patch with KSFT arm64 tags patch, while moving the latter
>>    into its own subdir
>> - moved kernel header includes search mechanism from KSFT arm64
>>    SIGNAL Makefile
> This approach breaks the compilation of individual test cases which need 
> to export includes individually.
> 
> make -C tools/testing/selftests/arm64/signal
> 
> ../../lib.mk:25: ../../../../scripts/subarch.include: No such file or 
> directory
> Makefile:25: warning: overriding recipe for target 'clean'
> ../../lib.mk:123: warning: ignoring old recipe for target 'clean'
> make: *** No rule to make target '../../../../scripts/subarch.include'. 
> Stop.
> 

Having removed standalone mode in signal I was not expecting to be able
to run distinct arm64 subsystems as before with:

$ make -C tools/testing/selftests/arm64/signal
(which was not a standard KSFT thing)

but only using standard targets way like:

$ make -C tools/testing/selftests TARGETS=arm64 

or 

$ make -C tools/testing/selftests TARGETS=arm64 \
		INSTALL_PATH=<your-installation-path> install

or

$ make TARGETS=arm64 kselftest

which runs all tests inside arm64 as a whole.
(I should have changed arm64 README accordingly)


> However tags test works well,
> make -C tools/testing/selftests/arm64/tags
> 
> aarch64-none-linux-gnu-gcc     tags_test.c  -o 
> /home/amikac01/work/MTE_WORK/linux-server/linux/tools/testing/selftests/arm64/tags/tags_test
> 

But I'll have a look why tags expose different behavior.

> 
> Thanks,
> Amit Daniel


Thanks

Cristian
> 
>> - export proper top_srcdir ENV for lib.mk
>> v3 --> v4
>> - comment reword
>> - simplified documentation in README
>> - dropped README about standalone
>> ---
>>   tools/testing/selftests/Makefile              |  1 +
>>   tools/testing/selftests/arm64/Makefile        | 70 +++++++++++++++++--
>>   tools/testing/selftests/arm64/README          | 20 ++++++
>>   tools/testing/selftests/arm64/tags/Makefile   | 10 +++
>>   .../arm64/{ => tags}/run_tags_test.sh         |  0
>>   .../selftests/arm64/{ => tags}/tags_test.c    |  0
>>   6 files changed, 95 insertions(+), 6 deletions(-)
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
>> index a61b2e743e99..5dbb0ffdfc9a 100644
>> --- a/tools/testing/selftests/arm64/Makefile
>> +++ b/tools/testing/selftests/arm64/Makefile
>> @@ -1,11 +1,69 @@
>>   # SPDX-License-Identifier: GPL-2.0
>> +# Copyright (C) 2019 ARM Limited
>>   
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
>>   endif
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
>> +
>> +CFLAGS += -I$(khdr_dir)
>> +
>> +export CC
>> +export CFLAGS
>> +export top_srcdir
>> +
>> +all:
>> +	@for DIR in $(SUBDIRS); do				\
>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>> +		mkdir -p $$BUILD_TARGET;			\
>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>> +	done
>> +
>> +install: all
>> +	@for DIR in $(SUBDIRS); do				\
>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>> +	done
>> +
>> +run_tests: all
>> +	@for DIR in $(SUBDIRS); do				\
>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>> +	done
>> +
>> +# Avoid any output on non arm64 on emit_tests
>> +emit_tests: all
>> +	@for DIR in $(SUBDIRS); do				\
>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>> +	done
>> +
>> +clean:
>> +	@for DIR in $(SUBDIRS); do				\
>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>> +	done
>> +
>> +.PHONY: all clean install run_tests emit_tests
>> diff --git a/tools/testing/selftests/arm64/README b/tools/testing/selftests/arm64/README
>> new file mode 100644
>> index 000000000000..aca892e62a6c
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/README
>> @@ -0,0 +1,20 @@
>> +KSelfTest ARM64
>> +===============
>> +
>> +- These tests are arm64 specific and so not built or run but just skipped
>> +  completely when env-variable ARCH is found to be different than 'arm64'
>> +  and `uname -m` reports other than 'aarch64'.
>> +
>> +- Holding true the above, ARM64 KSFT tests can be run within the KSelfTest
>> +  framework using standard Linux top-level-makefile targets:
>> +
>> +      $ make TARGETS=arm64 kselftest-clean
>> +      $ make TARGETS=arm64 kselftest
>> +
>> +      or
>> +
>> +      $ make -C tools/testing/selftests TARGETS=arm64 \
>> +		INSTALL_PATH=<your-installation-path> install
>> +
>> +   Further details on building and running KFST can be found in:
>> +     Documentation/dev-tools/kselftest.rst
>> diff --git a/tools/testing/selftests/arm64/tags/Makefile b/tools/testing/selftests/arm64/tags/Makefile
>> new file mode 100644
>> index 000000000000..76205533135b
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/tags/Makefile
>> @@ -0,0 +1,10 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +# ARCH can be overridden by the user for cross compiling
>> +ARCH ?= $(shell uname -m 2>/dev/null || echo not)
>> +
>> +ifneq (,$(filter $(ARCH),aarch64 arm64))
>> +TEST_GEN_PROGS := tags_test
>> +TEST_PROGS := run_tags_test.sh
>> +endif
>> +
>> +include ../../lib.mk
>> diff --git a/tools/testing/selftests/arm64/run_tags_test.sh b/tools/testing/selftests/arm64/tags/run_tags_test.sh
>> similarity index 100%
>> rename from tools/testing/selftests/arm64/run_tags_test.sh
>> rename to tools/testing/selftests/arm64/tags/run_tags_test.sh
>> diff --git a/tools/testing/selftests/arm64/tags_test.c b/tools/testing/selftests/arm64/tags/tags_test.c
>> similarity index 100%
>> rename from tools/testing/selftests/arm64/tags_test.c
>> rename to tools/testing/selftests/arm64/tags/tags_test.c
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
