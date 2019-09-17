Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDE7B5188
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 17:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XJ07BNmAiXsXh7UrFabGAcrxVpy1d3llW6usaCaWfVI=; b=Hq6w9fuTTQryVX5rWipWkC+1u
	UAPW5Avn7FJbaPkYDbXJ3qyOkSTtsUH9Ps62pecOVmafIWMcf2TUTo15S55nKZqwa6jvCtE14fr5S
	NklqXtQ1045umGbtZv4nqmCW6DRDmUM3JMB3ZWBqtYOu3MyK3eSPmxrRF6UrLMNW3I4zH/h1Io+aI
	BUHDUfB7n3WJCwygRHCTSrUVbdr0crn9XrI2A0f9qHuoLwuMsshsmkFZsP1QHkVhWAMsF/pgA6ttR
	UrIrUwsS0nHQAbJDd2L92cLLTnH6Ok7oHjN30l6bB35jLN4jhEjhB2JlWs2T034XcuAiBSQDtqCI/
	kSv15G+aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFQN-00069x-Rl; Tue, 17 Sep 2019 15:29:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFQ9-00063g-AK
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 15:29:39 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D048D206C2;
 Tue, 17 Sep 2019 15:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568734174;
 bh=qDG68RC/o9W9oKF/go9xLM1rjkgi/7fraX8Po8BAxt8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=jlCJ9QmPSvLeTiY4i90pf1UdD4EWVNKIN+GVnPEtvi465rq52p9xmMs+97kLR0S6S
 NHP+F726kUgPj30ZUbYD7tZ5frCzqUZxCajJ/u3n6bfQCfipnoD0FZkoiOQdnsvt93
 Mrz7PMA0QCQHcBCYX7YiHflECRLKe80O24wl3tlg=
Subject: Re: [PATCH v6 01/11] kselftest: arm64: extend toplevel skeleton
 Makefile
To: Cristian Marussi <cristian.marussi@arm.com>,
 Anders Roxell <anders.roxell@linaro.org>
References: <20190910123111.33478-1-cristian.marussi@arm.com>
 <20190910123111.33478-2-cristian.marussi@arm.com>
 <20190917134223.GA2695@localhost.localdomain>
 <38863e6e-4d6f-b7a6-2add-937fff9e5ef2@arm.com>
From: shuah <shuah@kernel.org>
Message-ID: <0b2e5db7-906d-f783-ec06-461028424048@kernel.org>
Date: Tue, 17 Sep 2019 09:29:33 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <38863e6e-4d6f-b7a6-2add-937fff9e5ef2@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_082937_400590_24F38B2F 
X-CRM114-Status: GOOD (  22.81  )
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
Cc: andreyknvl@google.com, linux-kselftest@vger.kernel.org,
 amit.kachhap@arm.com, shuah <shuah@kernel.org>, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/17/19 9:17 AM, Cristian Marussi wrote:
> Hi Anders
> 
> thanks for the review.
> 
> On 17/09/2019 14:42, Anders Roxell wrote:
>> On 2019-09-10 13:31, Cristian Marussi wrote:
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
>>> +emit_tests: all
>>> +	@for DIR in $(SUBTARGETS); do				\
>>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>>> +	done
>>> +
>>> +clean:
>>> +	@for DIR in $(SUBTARGETS); do				\
>>> +		BUILD_TARGET=$(OUTPUT)/$$DIR;			\
>>> +		make OUTPUT=$$BUILD_TARGET -C $$DIR $@;		\
>>> +	done
>>> +
>>> +.PHONY: all clean install run_tests emit_tests
>>> diff --git a/tools/testing/selftests/arm64/README b/tools/testing/selftests/arm64/README
>>> new file mode 100644
>>> index 000000000000..cc1e51796fee
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/README
>>> @@ -0,0 +1,25 @@
>>> +KSelfTest ARM64
>>> +===============
>>> +
>>> +- These tests are arm64 specific and so not built or run but just skipped
>>> +  completely when env-variable ARCH is found to be different than 'arm64'
>>> +  and `uname -m` reports other than 'aarch64'.
>>> +
>>> +- Holding true the above, ARM64 KSFT tests can be run within the KSelfTest
>>> +  framework using standard Linux top-level-makefile targets:
>>> +
>>> +      $ make TARGETS=arm64 kselftest-clean
>>> +      $ make TARGETS=arm64 kselftest
>>> +
>>> +      or
>>> +
>>> +      $ make -C tools/testing/selftests TARGETS=arm64 \
>>> +		INSTALL_PATH=<your-installation-path> install
>>> +
>>> +      or, alternatively, only specific arm64/ subtargets can be picked:
>>> +
>>> +      $ make -C tools/testing/selftests TARGETS=arm64 SUBTARGETS="tags signal" \
>>> +		INSTALL_PATH=<your-installation-path> install
>>> +
>>> +   Further details on building and running KFST can be found in:
>>> +     Documentation/dev-tools/kselftest.rst
>>> diff --git a/tools/testing/selftests/arm64/tags/Makefile b/tools/testing/selftests/arm64/tags/Makefile
>>> new file mode 100644
>>> index 000000000000..dcc8b0467b68
>>> --- /dev/null
>>> +++ b/tools/testing/selftests/arm64/tags/Makefile
>>> @@ -0,0 +1,6 @@
>>> +# SPDX-License-Identifier: GPL-2.0
>>> +
>>> +TEST_GEN_PROGS := tags_test
>>
>> This should be TEST_GEN_FILES, since its used by run_tags_test.sh.
>> If its TEST_GEN_PROGS it will be added to the script run_kselftest.sh,
>> and I don't think thats the intent, even though it looked like that
>> before.
>>
> 
> In fact I saw the tags tests running twice (via ./tags_test and via ./run_tags_test.sh) when called
> via run_kselftest.sh....but since it was already like that in the original patch so I did not want to
> fix it in the context of this series (where tags tests are simply relocated into their own directory)
> 
> I could add a separate fix on top of this series if it could make sense.
> 

We are still in review phase I would think. It would make sense to fix
the original patch and not as a separate fix patch.

thanks,
-- Shuah


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
