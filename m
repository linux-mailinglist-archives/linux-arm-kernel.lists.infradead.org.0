Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F14CEBAF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 20:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqJGbEjv5BQpWHxTfj6EestCRCnr/vq8hMT/qI9i958=; b=C/mG5tVFemtUDG
	q0/9w4b6bTm2s8cDxB6eSd+lYpwGUL5bPc811AP1KBby6nmB3+u9x7PJLBpt3UJtqRrdJhT5pIt/h
	dz7a43pCMJZDn+VwzUpBd2umwOGldSoMrwXCIEQwcuGAsAA9P6f9TUXWydQqvP2KR8KfbVimDmEYw
	2SrfULp14w6dsoMQHMsXgiWRWsGGBOWcqPo34o+GeRQ1tdgnTg+d45779k+ALqXvSjFu0EvJ8yQS+
	xcYfx0SGK7eAS+zqC/3LfQOn3GNy0A0xJVlxuxR0GxM+0vvR/m4fG5N0hRVKbZMiCGQ9n425cvAYC
	Ta+lNgi8ej1OJW72CYzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXfH-0001fX-CQ; Mon, 07 Oct 2019 18:23:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXer-0001WG-Lf
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 18:22:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACB901570;
 Mon,  7 Oct 2019 11:22:56 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD8983F68E;
 Mon,  7 Oct 2019 11:22:55 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v6 01/11] kselftest: arm64: extend toplevel skeleton
 Makefile
To: Dave Martin <Dave.Martin@arm.com>
References: <20190910123111.33478-1-cristian.marussi@arm.com>
 <20190910123111.33478-2-cristian.marussi@arm.com>
 <20190917160534.GK27757@arm.com>
Message-ID: <0e12898b-0892-6bd2-1736-e760f38d77c5@arm.com>
Date: Mon, 7 Oct 2019 19:22:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190917160534.GK27757@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_112257_821237_F83B75E2 
X-CRM114-Status: GOOD (  25.49  )
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

Hi

On 17/09/2019 17:05, Dave Martin wrote:
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
>>   arm64 test subsystems
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
>>  tools/testing/selftests/Makefile              |  1 +
>>  tools/testing/selftests/arm64/Makefile        | 63 +++++++++++++++++--
>>  tools/testing/selftests/arm64/README          | 25 ++++++++
>>  tools/testing/selftests/arm64/tags/Makefile   |  6 ++
>>  .../arm64/{ => tags}/run_tags_test.sh         |  0
>>  .../selftests/arm64/{ => tags}/tags_test.c    |  0
>>  6 files changed, 91 insertions(+), 4 deletions(-)
>>  create mode 100644 tools/testing/selftests/arm64/README
>>  create mode 100644 tools/testing/selftests/arm64/tags/Makefile
>>  rename tools/testing/selftests/arm64/{ => tags}/run_tags_test.sh (100%)
>>  rename tools/testing/selftests/arm64/{ => tags}/tags_test.c (100%)
>>
>> diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
>> index 25b43a8c2b15..1722dae9381a 100644
>> --- a/tools/testing/selftests/Makefile
>> +++ b/tools/testing/selftests/Makefile
>> @@ -1,5 +1,6 @@
>>  # SPDX-License-Identifier: GPL-2.0
>>  TARGETS = android
>> +TARGETS += arm64
>>  TARGETS += bpf
>>  TARGETS += breakpoints
>>  TARGETS += capabilities
>> diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
>> index a61b2e743e99..cbb2a5a9e3fc 100644
>> --- a/tools/testing/selftests/arm64/Makefile
>> +++ b/tools/testing/selftests/arm64/Makefile
>> @@ -1,11 +1,66 @@
>>  # SPDX-License-Identifier: GPL-2.0
>>  
>> -# ARCH can be overridden by the user for cross compiling
>> +# When ARCH not overridden for crosscompiling, lookup machine
>>  ARCH ?= $(shell uname -m 2>/dev/null || echo not)
>>  
>>  ifneq (,$(filter $(ARCH),aarch64 arm64))
>> -TEST_GEN_PROGS := tags_test
>> -TEST_PROGS := run_tags_test.sh
>> +SUBTARGETS ?= tags
>> +else
>> +SUBTARGETS :=
>>  endif
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

I've left this bit as it is in v7 (fixing some other minor stuff) as we discussed,
since I'm still waiting for some Shuah's comments.

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

Ok I'll fix in v7

> With or without the above changes, I'm happy to give
> 
> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
> 
> (but Shuah or someone will need to give a view on how this integrates
> with kselftest overall).
> 

I'll wait for Shuah's comments as said.

Thanks

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
