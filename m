Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9A1B61F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 13:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwbSmYeysO86BwfpzPYV5mSZUHoORwEVlOCi2FI9sIo=; b=uIxjpmfSx2Dv15
	xM0Ssh5C+usHQ6cLGzFSamSRDK0jC9iPumKE+zro0UJP8+LuAu7hQXNFZ3W9Pz71J7s0PoLOQN+gO
	1a4gZIk1Z+glYw+pJiBWRFF8B9gu258gFKpDvqgiiqaVSmvH2FcVfdAZ43kxkSYobXxEyyBrmFXJq
	z402Bs7/ljZtYUZFTPq57oFAjIhxbkncgmpo4WLbhRh6yhWvHyXsk2Zyc1h/4IQClW7BBo7lTgAcJ
	ZqTjwGWu0SgWBwJAoJGG30jn3eciWLFOwY7rj2R25syCVxoBLtRbLgDGz/VxrNkL2LREm4/F8pkV9
	3L5l3dKqDZAAlV98IEYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXgz-0007iW-DE; Wed, 18 Sep 2019 11:00:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXgn-0007BE-IM
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 11:00:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDF2A142F;
 Wed, 18 Sep 2019 04:00:00 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 08BAD3F59C;
 Wed, 18 Sep 2019 03:59:59 -0700 (PDT)
Subject: Re: [PATCH v6 01/11] kselftest: arm64: extend toplevel skeleton
 Makefile
To: shuah <shuah@kernel.org>, Dave Martin <Dave.Martin@arm.com>
References: <20190910123111.33478-1-cristian.marussi@arm.com>
 <20190910123111.33478-2-cristian.marussi@arm.com>
 <20190917160534.GK27757@arm.com>
 <119aaea7-10b5-0fdf-269d-e86df07b4831@kernel.org>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <ba61ad6f-be69-6e30-d563-cfeb8503bea2@arm.com>
Date: Wed, 18 Sep 2019 11:59:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <119aaea7-10b5-0fdf-269d-e86df07b4831@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_040001_693561_45FEFBD7 
X-CRM114-Status: GOOD (  20.23  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/09/2019 17:18, shuah wrote:
> On 9/17/19 10:05 AM, Dave Martin wrote:
>> On Tue, Sep 10, 2019 at 01:31:01pm +0100, Cristian Marussi wrote:
>>> Modify KSFT arm64 toplevel Makefile to maintain arm64 kselftests organized
>>> by subsystem, keeping them into distinct subdirectories under arm64 custom
>>> KSFT directory: tools/testing/selftests/arm64/
>>>
>>> Add to such toplevel Makefile a mechanism to guess the effective location
>>> of Kernel headers as installed by KSFT framework.
>>>
>>> Fit existing arm64 tags kselftest into this new schema moving them into
>>> their own subdirectory (arm64/tags).
>>>
>>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>>> ---
>>> Based on:
>>> commit 9ce1263033cd ("selftests, arm64: add a selftest for passing
>>> 		     tagged pointers to kernel")
>>> ---
>>> v5 --> v6
>>> - using realpath to avoid passing down relative paths
>>> - fix commit msg & Copyright
>>> - removed unneded Makefile export
>>> - added SUBTARGETS specification, to allow building specific only some
>>>    arm64 test subsystems
>>> v4 --> v5
>>> - rebased on arm64/for-next/core
>>> - merged this patch with KSFT arm64 tags patch, while moving the latter
>>>    into its own subdir
>>> - moved kernel header includes search mechanism from KSFT arm64
>>>    SIGNAL Makefile
>>> - export proper top_srcdir ENV for lib.mk
>>> v3 --> v4
>>> - comment reword
>>> - simplified documentation in README
>>> - dropped README about standalone
>>> ---
>>>   tools/testing/selftests/Makefile              |  1 +
>>>   tools/testing/selftests/arm64/Makefile        | 63 +++++++++++++++++--
>>>   tools/testing/selftests/arm64/README          | 25 ++++++++
>>>   tools/testing/selftests/arm64/tags/Makefile   |  6 ++
>>>   .../arm64/{ => tags}/run_tags_test.sh         |  0
>>>   .../selftests/arm64/{ => tags}/tags_test.c    |  0
>>>   6 files changed, 91 insertions(+), 4 deletions(-)
>>>   create mode 100644 tools/testing/selftests/arm64/README
>>>   create mode 100644 tools/testing/selftests/arm64/tags/Makefile
>>>   rename tools/testing/selftests/arm64/{ => tags}/run_tags_test.sh (100%)
>>>   rename tools/testing/selftests/arm64/{ => tags}/tags_test.c (100%)
>>>
>>> diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
>>> index 25b43a8c2b15..1722dae9381a 100644
>>> --- a/tools/testing/selftests/Makefile
>>> +++ b/tools/testing/selftests/Makefile
>>> @@ -1,5 +1,6 @@
>>>   # SPDX-License-Identifier: GPL-2.0
>>>   TARGETS = android
>>> +TARGETS += arm64
>>>   TARGETS += bpf
>>>   TARGETS += breakpoints
>>>   TARGETS += capabilities
>>> diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
>>> index a61b2e743e99..cbb2a5a9e3fc 100644
>>> --- a/tools/testing/selftests/arm64/Makefile
>>> +++ b/tools/testing/selftests/arm64/Makefile
>>> @@ -1,11 +1,66 @@
>>>   # SPDX-License-Identifier: GPL-2.0
>>>   
>>> -# ARCH can be overridden by the user for cross compiling
>>> +# When ARCH not overridden for crosscompiling, lookup machine
>>>   ARCH ?= $(shell uname -m 2>/dev/null || echo not)
>>>   
>>>   ifneq (,$(filter $(ARCH),aarch64 arm64))
>>> -TEST_GEN_PROGS := tags_test
>>> -TEST_PROGS := run_tags_test.sh
>>> +SUBTARGETS ?= tags
>>> +else
>>> +SUBTARGETS :=
>>>   endif
>>>   
>>> -include ../lib.mk
>>> +CFLAGS := -Wall -O2 -g
>>> +
>>> +# A proper top_srcdir is needed by KSFT(lib.mk)
>>> +top_srcdir = $(realpath ../../../../)
>>> +
>>> +# Additional include paths needed by kselftest.h and local headers
>>> +CFLAGS += -I$(top_srcdir)/tools/testing/selftests/
>>> +
>>> +# Guessing where the Kernel headers could have been installed
>>> +# depending on ENV config
>>> +ifeq ($(KBUILD_OUTPUT),)
>>> +khdr_dir = $(top_srcdir)/usr/include
>>> +else
>>> +# the KSFT preferred location when KBUILD_OUTPUT is set
>>> +khdr_dir = $(KBUILD_OUTPUT)/kselftest/usr/include
>>> +endif
>>
>> I still tend to think that for now we should just do what all the other
>> tests do.
>>
>> Most tests use
>>
>> 	CFLAGS += -I../../../../usr/include/
>>
>> in their Makefiles.
>>
>> For us, the test Makefiles are nested one level deeper, so I guess
>> we would put
>>
>> 	CFLAGS += -I../../../../../usr/include/
>>
>> in each.
>>
>>
>> This will break in some cases, but only in the same cases where
>> kselftest is already broken.
>>
>> Ideally we would fix this globally, but can that instead be done
>> independently of this series?
>>
>> Fixing only arm64, by pasting some arbitrary logic from
>> selftests/Makefile doesn't seem like a future-proof approach.
>>
>>
>> Or did I miss something?
>>
>>> +
>>> +CFLAGS += -I$(khdr_dir)
>>> +
>>> +export CFLAGS
>>> +export top_srcdir
>>> +
>>> +all:
>>> +	@for DIR in $(SUBTARGETS); do				\
>>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>>> +		mkdir -p $$BUILD_TARGET;			\
>>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>>> +	done
>>> +
>>> +install: all
>>> +	@for DIR in $(SUBTARGETS); do				\
>>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>>> +	done
>>> +
>>> +run_tests: all
>>> +	@for DIR in $(SUBTARGETS); do				\
>>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>>> +	done
>>> +
>>> +# Avoid any output on non arm64 on emit_tests
>>
>> This comment can be dropped: the whole file does nothing for
>> non-arm64, and it achieves it in the same way as other arch-specific
>> Makefiles, so it's odd to have the comment here specifically (?)
>>
>>
>> With or without the above changes, I'm happy to give
>>
>> Reviewed-by: Dave Martin <Dave.Martin@arm.com>
>>
>> (but Shuah or someone will need to give a view on how this integrates
>> with kselftest overall).
>>
> 
> I am reviewing the series this week. I will provide comments in a
> day or two.
> 

Thanks Shuah.

As a side question... should I rebase next v7 (after your feedback) on latest
kselftest branch (linux-kselftest-5.4-rc1 or whatever)

Cristian


> thanks,
> -- Shuah
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
