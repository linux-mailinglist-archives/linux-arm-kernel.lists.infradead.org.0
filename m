Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F158A0894
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 19:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zJW6UU+hOL1m04JQr+ODia2MhHjf6cyHAY3fLZLGI4=; b=Z0vlnsBPYh0I0t
	qLnn/cqhbRbxvq5UYu+dm97a8OxcYHWZ7ZfHqCM2W6C+fwgmSqKuGMoO70kRdx/miE0lGJCn5Ss/+
	wIWogi3KLAQRlXLAoHdFbqUdvUipMiwswuXxRxVa72GrTovV4Si70XO1FVwMZgsIWJDKSgWLQhEwN
	mRPEZ9nrH90gn7+C0F2rp9WLkfgT9VlsNRYBQw7qXRLsUA+W6hS6EZm1kudnXY1fu9PHnzw+HfsBy
	1BCKgiYnMAESY4OE2fcWCgeXmQ9UJYr42H9pB/L+8w72/SoegcBe695N2by5pYFmVvqAFhrFCJXj6
	Vk4zujv04hS7CwnJfXkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31q3-0007qp-Kz; Wed, 28 Aug 2019 17:34:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i31po-0007qQ-PG
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 17:34:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF37E28;
 Wed, 28 Aug 2019 10:34:13 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D5AF93F59C;
 Wed, 28 Aug 2019 10:34:12 -0700 (PDT)
Subject: Re: [PATCH v3 02/11] kselftest: arm64: adds first test and common
 utils
To: Dave Martin <Dave.Martin@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-3-cristian.marussi@arm.com>
 <20190813162411.GZ10425@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <a76adb28-00f9-3c32-60e5-bc746db6f2fd@arm.com>
Date: Wed, 28 Aug 2019 18:34:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813162411.GZ10425@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_103416_973240_45564F8E 
X-CRM114-Status: GOOD (  40.27  )
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

On 13/08/2019 17:24, Dave Martin wrote:
> For the subject line, maybe name the test being added (same as for the
> other patches).

I doubt to be able to fit within 50 chars Subject line constraint, if I add
the test case name.

> 
> On Fri, Aug 02, 2019 at 06:02:51PM +0100, Cristian Marussi wrote:
>> Added some arm64/signal specific boilerplate and utility code to help
>> further testcase development.
>>
>> A simple testcase and related helpers are also introduced in this commit:
>> mangle_pstate_invalid_compat_toggle is a simple mangle testcase which
>> messes with the ucontext_t from within the sig_handler, trying to toggle
> 
> "signal handler"?
> 

ok

>> PSTATE state bits to switch the system between 32bit/64bit execution state.
>> Expects SIGSEGV on test PASS.
>>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>> A few fixes:
>> - test_arm64_signals.sh runner script generation has been reviewed in order to
>>   be safe against the .gitignore
>> - using kselftest.h officially provided defines for tests' return values
>> - removed SAFE_WRITE()/dump_uc()
>> - looking for si_code==SEGV_ACCERR on SEGV test cases to better understand if
>>   the sigfault had been directly triggered by Kernel
>> ---
>>  tools/testing/selftests/arm64/Makefile        |   2 +-
>>  .../testing/selftests/arm64/signal/.gitignore |   6 +
>>  tools/testing/selftests/arm64/signal/Makefile |  88 ++++++
>>  tools/testing/selftests/arm64/signal/README   |  59 ++++
>>  .../arm64/signal/test_arm64_signals.src_shell |  55 ++++
>>  .../selftests/arm64/signal/test_signals.c     |  26 ++
>>  .../selftests/arm64/signal/test_signals.h     | 137 +++++++++
>>  .../arm64/signal/test_signals_utils.c         | 261 ++++++++++++++++++
>>  .../arm64/signal/test_signals_utils.h         |  13 +
>>  .../arm64/signal/testcases/.gitignore         |   1 +
>>  .../mangle_pstate_invalid_compat_toggle.c     |  25 ++
>>  .../arm64/signal/testcases/testcases.c        | 150 ++++++++++
>>  .../arm64/signal/testcases/testcases.h        |  83 ++++++
>>  13 files changed, 905 insertions(+), 1 deletion(-)
>>  create mode 100644 tools/testing/selftests/arm64/signal/.gitignore
>>  create mode 100644 tools/testing/selftests/arm64/signal/Makefile
>>  create mode 100644 tools/testing/selftests/arm64/signal/README
>>  create mode 100755 tools/testing/selftests/arm64/signal/test_arm64_signals.src_shell
>>  create mode 100644 tools/testing/selftests/arm64/signal/test_signals.c
>>  create mode 100644 tools/testing/selftests/arm64/signal/test_signals.h
>>  create mode 100644 tools/testing/selftests/arm64/signal/test_signals_utils.c
>>  create mode 100644 tools/testing/selftests/arm64/signal/test_signals_utils.h
>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/.gitignore
>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c
>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/testcases.c
>>  create mode 100644 tools/testing/selftests/arm64/signal/testcases/testcases.h
>>
>> diff --git a/tools/testing/selftests/arm64/Makefile b/tools/testing/selftests/arm64/Makefile
>> index 03a0d4f71218..af59dc74e0dc 100644
>> --- a/tools/testing/selftests/arm64/Makefile
>> +++ b/tools/testing/selftests/arm64/Makefile
>> @@ -6,7 +6,7 @@ ARCH ?= $(shell uname -m)
>>  ARCH := $(shell echo $(ARCH) | sed -e s/aarch64/arm64/)
>>  
>>  ifeq ("x$(ARCH)", "xarm64")
>> -SUBDIRS :=
>> +SUBDIRS := signal
>>  else
>>  SUBDIRS :=
>>  endif
>> diff --git a/tools/testing/selftests/arm64/signal/.gitignore b/tools/testing/selftests/arm64/signal/.gitignore
>> new file mode 100644
>> index 000000000000..434f65c15f03
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/.gitignore
>> @@ -0,0 +1,6 @@
>> +# Helper script's internal testcases list (TPROGS) is regenerated
>> +# each time by Makefile on standalone (non KSFT driven) runs.
>> +# Committing such list creates a dependency between testcases
>> +# patches such that they are no more easily revertable. Just ignore.
>> +test_arm64_signals.src_shell
>> +test_arm64_signals.sh
>> diff --git a/tools/testing/selftests/arm64/signal/Makefile b/tools/testing/selftests/arm64/signal/Makefile
>> new file mode 100644
>> index 000000000000..8c8d08be4b0d
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/Makefile
>> @@ -0,0 +1,88 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +# Copyright (C) 2019 ARM Limited
>> +
>> +# Supports also standalone invokation out of KSFT-tree
>> +# Compile standalone and run on your device with:
>> +#
>> +#  $ make -C tools/testing/selftests/arm64/signal INSTALL_PATH=<your-dir> install
> 
> I'm wondering whether supporting stand-alone invocation is actually
> worth it.  Maybe this just adds complexity for little benefit.
> 
> Although it's useful for debugging and development, it doesn't look like
> other tests in kselftest support standalone invocation -- did I miss
> some?

I introduced standalone to be able to 'detach' from KSFT during tests' devel phase,
but it does not seem worth all this work to maintain it. So I'm removing it in V4.

> 
>> +#
>> +# Run standalone on device with:
>> +#
>> +#  $ <your-device-instdir>/test_arm64_signals.sh [-k|-v]
>> +#
>> +# If INSTALL_PATH= is NOT provided it will default to ./install
>> +
>> +# A proper top_srcdir is needed both by KSFT(lib.mk)
>> +# and standalone builds
>> +top_srcdir = ../../../../..
>> +
>> +CFLAGS += -std=gnu99 -I. -I$(top_srcdir)/tools/testing/selftests/
>> +SRCS := $(filter-out testcases/testcases.c,$(wildcard testcases/*.c))
>> +PROGS := $(patsubst %.c,%,$(SRCS))
>> +
>> +# Guessing as best as we can where the Kernel headers
>> +# could have been installed depending on ENV config and
>> +# type of invocation.
>> +ifeq ($(KBUILD_OUTPUT),)
>> +khdr_dir = $(top_srcdir)/usr/include
>> +else
>> +ifeq (0,$(MAKELEVEL))
>> +khdr_dir = $(KBUILD_OUTPUT)/usr/include
>> +else
>> +# the KSFT preferred location when KBUILD_OUTPUT is set
>> +khdr_dir = $(KBUILD_OUTPUT)/kselftest/usr/include
>> +endif
>> +endif
> 
> When is KBUILD_OUTPUT set / not set?
> 

Depending how the user/CI is configured KSFT installs the kernel
headers in different places....here I'm trying to guess where they
have been installed by KSFT.

>> +
>> +CFLAGS += -I$(khdr_dir)
> 
> Do we rely on any non-UAPI headers?  If not, the default should probably
> be to rely on the system headers (or toolchain default headers) -- i.e.,
> add no -I option at all.

I only need updated UAPI headers, but I cannot build without this specific -I..
that points to the installed kernel headers directory.

As an example it fails with: undefined  HWCAP_SSBS if I remove the -I

> 
> I'm wondering why none of the other kselftests need this header search
> logic.
> 

Well... a lot of KSFT tests has something related to headers search in their Makefiles:

../kcmp/Makefile:CFLAGS += -I../../../../usr/include/
../networking/timestamping/Makefile:CFLAGS += -I../../../../../usr/include
../ipc/Makefile:CFLAGS += -I../../../../usr/include/
../memfd/Makefile:CFLAGS += -I../../../../include/uapi/
../memfd/Makefile:CFLAGS += -I../../../../include/
../memfd/Makefile:CFLAGS += -I../../../../usr/include/

which seems aimed at doing the same thing, but it is a broken approach
as far as I can see since if KBUILD_OUTPUT is set, KSFT will install the
headers accordingly, so that the above static includes won't work anymore.

Not sure if I'm missing something here, but my understanding was that

- some KSFT requires arch specific bits, usually included within the dedicated kernel
headers provided with the source itself and installed with make headers_install.

and that

- such headers can be found naturally, being included from top level libc headers
only if:

1. a fully updated toolchain containing updated headers too is available at CROSS_COMPILE=

or

2. proper -I options are specified to the compiler to specify where KSFT installed the 
  kernel headers related to this kernel and its related KSFT testcases

or

3. updated kernel headers were installed on top of the available CROSS_COMPILE toolchain

or

4. we are building and running natively, so you can install the kernel headers on
   system default path and those will be searched


My 'feeling' would have been that in the KSFT scenario we should try to stick with option  2.,
in order to be able to run KSFT and run the related testcases, relying just on the shipped
Kernel/KSFT and possibly underlying hw features, but not having any dependencies
on the toolchain/libc.

My question is: what happens on a CI-somewhere if suddenly there's the need to update
the toolchain somehow (fully or partially only the headers) to be able to simply
build/run the new KSFT included with this Kernel ?; even if we accept this need to update
the toochain, where this CI should get/scrap-from these minimum toolchain requirements ?
(in an automated manner)

If instead we can agree to stick with 2.,  I wonder if this locate-headers mechanism which I introduced
here should be in charge of the KSFT framework or if there is something broken in my tests: but 
in these regards similar issues seems to affect KSFT arm64 tags tests queued on arm64/for-next

https://lkml.org/lkml/2019/8/23/721


>> +
>> +# Standalone run
>> +ifeq (0,$(MAKELEVEL))
>> +CC := $(CROSS_COMPILE)gcc
>> +RUNNER_SRC = test_arm64_signals.src_shell
>> +RUNNER = test_arm64_signals.sh
>> +INSTALL_PATH ?= install/
>> +
>> +all: $(RUNNER)
>> +
>> +$(RUNNER): $(PROGS)
> 
> $(RUNNER_SRC) should also be in the dependencies here.
> 
>> +	cp $(RUNNER_SRC) $(RUNNER)
>> +	sed -i -e 's#PROGS=.*#PROGS="$(PROGS)"#' $@
> 
> Or just a single command: sed -e '...' <$< >$@

I'll drop all of this together with standalone mode.
> 
>> +
>> +install: all
>> +	mkdir -p $(INSTALL_PATH)/testcases
>> +	cp $(PROGS) $(INSTALL_PATH)/testcases
>> +	cp $(RUNNER) $(INSTALL_PATH)/
>> +
>> +.PHONY clean:
>> +	rm -f $(PROGS)
>> +# KSFT run
>> +else
>> +# Generated binaries to be installed by top KSFT script
>> +TEST_GEN_PROGS := $(notdir $(PROGS))
>> +
>> +# Get Kernel headers installed and use them.
>> +KSFT_KHDR_INSTALL := 1
>> +
>> +# This include mk will also mangle the TEST_GEN_PROGS list
>> +# to account for any OUTPUT target-dirs optionally provided
>> +# by the toplevel makefile
>> +include ../../lib.mk
>> +
>> +$(TEST_GEN_PROGS): $(PROGS)
>> +	cp $(PROGS) $(OUTPUT)/
>> +
>> +clean:
>> +	$(CLEAN)
>> +	rm -f $(PROGS)
>> +endif
>> +
>> +# Common test-unit targets to build common-layout test-cases executables
>> +# Needs secondary expansion to properly include the testcase c-file in pre-reqs
>> +.SECONDEXPANSION:
>> +$(PROGS): test_signals.c test_signals_utils.c testcases/testcases.c $$@.c test_signals.h test_signals_utils.h testcases/testcases.h
>> +	@if [ ! -d $(khdr_dir) ]; then \
>> +		echo -n "\n!!! WARNING: $(khdr_dir) NOT FOUND."; \
>> +		echo "===>  Are you sure Kernel Headers have been installed properly ?\n"; \
>> +	fi
>> +	$(CC) $(CFLAGS) $^ -o $@
>> diff --git a/tools/testing/selftests/arm64/signal/README b/tools/testing/selftests/arm64/signal/README
>> new file mode 100644
>> index 000000000000..53f005f7910a
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/README
>> @@ -0,0 +1,59 @@
>> +KSelfTest arm64/signal/
>> +=======================
>> +
>> +Signals Tests
>> ++++++++++++++
>> +
>> +- Tests are built around a common main compilation unit: such shared main
>> +  enforces a standard sequence of operations needed to perform a single
>> +  signal-test (setup/trigger/run/result/cleanup)
>> +
>> +- The above mentioned ops are configurable on a test-by-test basis: each test
>> +  is described (and configured) using the descriptor signals.h::struct tdescr
>> +
>> +- Each signal testcase is compiled into its own executable: a separate
>> +  executable is used for each test since many tests complete successfully
>> +  by receiving some kind of fatal signal from the Kernel, so it's safer
>> +  to run each test unit in its own standalone process, so as to start each
>> +  test from a clean slate.
>> +
>> +- New tests can be simply defined in testcases/ dir providing a proper struct
>> +  tdescr overriding all the defaults we wish to change (as of now providing a
>> +  custom run method is mandatory though)
>> +
>> +- Signals' test-cases hereafter defined belong currently to two
>> +  principal families:
>> +
>> +  - 'mangle_' tests: a real signal (SIGUSR1) is raised and used as a trigger
>> +    and then the test case code messes-up with the sigframe ucontext_t from
>> +    inside the sighandler itself.
> 
> "messes-up" makes it sound a bit like the test case code itself goes
> wrong.
> 
> Maybe just say something like "the test case code modifies the signal
> frame from inside the signal handler itself."

ok
> 
>> +
>> +  - 'fake_sigreturn_' tests: a brand new custom artificial sigframe structure
>> +    is placed on the stack and a sigreturn syscall is called to simulate a
>> +    real signal return. This kind of tests does not use a trigger usually and
>> +    they are just fired using some simple included assembly trampoline code.
>> +
>> + - Most of these tests are successfully passing if the process gets killed by
>> +   some fatal signal: usually SIGSEGV or SIGBUS. Since while writing this
>> +   kind of tests it is extremely easy in fact to end-up injecting other
>> +   unrelated SEGV bugs in the testcases, it becomes extremely tricky to
>> +   be really sure that the tests are really addressing what they are meant
>> +   to address and they are not instead falling apart due to unplanned bugs
>> +   in the test code.
>> +   In order to alleviate the misery of the life of such test-developer, a few
>> +   helpers are provided:
>> +
>> +   - a couple of ASSERT_BAD/GOOD_CONTEXT() macros to easily parse a ucontext_t
>> +     and verify if it is indeed GOOD or BAD (depending on what we were
>> +     expecting), using the same logic/perspective as in the arm64 Kernel signals
>> +     routines.
>> +
>> +   - a sanity mechanism to be used in 'fake_sigreturn_'-alike tests: enabled by
>> +     default it takes care to verify that the test-execution had at least
>> +     successfully progressed up to the stage of triggering the fake sigreturn
>> +     call.
>> +
>> +  In both cases test results are expected in terms of:
>> +   - some fatal signal sent by the Kernel to the test process
>> +  or
>> +  - analyzing some final regs state
>> diff --git a/tools/testing/selftests/arm64/signal/test_arm64_signals.src_shell b/tools/testing/selftests/arm64/signal/test_arm64_signals.src_shell
>> new file mode 100755
>> index 000000000000..163e941e2997
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/test_arm64_signals.src_shell
> 
> Unusual filename?
> 
> In the non-standalone case, is this run directly with TPROGS set in the
> environment instead of modifying the script?  (I haven't understood all
> the logic yet.)
> 
> If so, it is a shell script, and should just be called
> test_arm64_signals.sh
> 
> Otherwise, it's a non-executable template for a shell script, so should
> have 0644 permissions and could be called test_arm64_signals.sh.in or
> test_arm64_signals.sh.template, say.
> 

It's a non-executable template for a shell script and all of this is needed
only in standalone mode. I'm dropping it.
(this re-generation on the fly from a template was needed to properly .gitignoring this)

>> @@ -0,0 +1,55 @@
>> +#!/bin/sh
>> +# SPDX-License-Identifier: GPL-2.0
>> +# Copyright (C) 2019 ARM Limited
>> +
>> +ret=0
>> +keep_on_fail=0
>> +err_out="2> /dev/null"
>> +
>> +usage() {
>> +	echo "Usage: `basename $0` [-v] [-k]"
>> +	exit 1
>> +}
>> +
>> +# avoiding getopt to avoid compatibility issues on targets
>> +# with limited resources
>> +while [ $# -gt 0 ]
>> +do
>> +	case $1 in
>> +		"-k")
>> +			keep_on_fail=1
>> +			;;
>> +		"-v")
>> +			err_out=
>> +			;;
>> +		*)
>> +			usage
>> +			;;
>> +	esac
>> +	shift
>> +done
>> +
>> +TPROGS=
>> +
>> +tot=$(echo $TPROGS | wc -w)
>> +
>> +# Tests are expected in testcases/ subdir inside the installation path
>> +workdir="`dirname $0 2>/dev/null`"
>> +[ -n $workdir ] && cd $workdir
>> +
>> +passed=0
>> +run=0
>> +for test in $TPROGS
>> +do
>> +	run=$((run + 1))
>> +	eval ./$test $err_out
>> +	if [ $? != 0 ]; then
>> +		[ $keep_on_fail = 0 ] && echo "===>>> FAILED:: $test <<<===" && ret=1 && break
>> +	else
>> +		passed=$((passed + 1))
>> +	fi
>> +done
>> +
>> +echo "==>> PASSED: $passed/$run on $tot available tests."
>> +
>> +exit $ret
>> diff --git a/tools/testing/selftests/arm64/signal/test_signals.c b/tools/testing/selftests/arm64/signal/test_signals.c
>> new file mode 100644
>> index 000000000000..3447d7011aec
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/test_signals.c
>> @@ -0,0 +1,26 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
> 
> We should probably have a brief comment to say what this is.
> For example:
> 
> /*
>  * Generic test wrapper for arm64 signal tests
>  * Each test provides its own tde to link with this wrapper.
>  */
> 
Ok I'll do.

>> +
>> +#include <kselftest.h>
>> +
>> +#include "test_signals.h"
>> +#include "test_signals_utils.h"
>> +
>> +struct tdescr *current;
>> +extern struct tdescr tde;
>> +
>> +int main(int argc, char *argv[])
>> +{
>> +	current = &tde;
>> +
>> +	ksft_print_msg("%s :: %s - SIG_TRIG:%d  SIG_OK:%d -- current:%p\n",
>> +		       current->name, current->descr, current->sig_trig,
>> +		       current->sig_ok, current);
> 
> Does the user need all this?
> 
> It's sufficient to print the test name, a one-line description and
> results.  If something goes wrong, we can print a bit more detail.
> 
> Maybe just do something like
> 
> #ifdef DEBUG
> #define debug_printf(format, ...) ksft_print_msg(format, ## __VA_ARGS__)
> #else
> #define debug_printf(format, ...) ((void)0)
> #endif
> 
> (Unless kselftest already has something like this, in which case you
> could just use that.)

I don't think KSFT has this capability by itself.
I was thinking about reducing verbosity.

> 
>> +	if (test_setup(current)) {
>> +		if (test_run(current))
>> +			test_result(current);
>> +		test_cleanup(current);
>> +	}
>> +
>> +	return current->pass ? KSFT_PASS : KSFT_FAIL;
>> +}
>> diff --git a/tools/testing/selftests/arm64/signal/test_signals.h b/tools/testing/selftests/arm64/signal/test_signals.h
>> new file mode 100644
>> index 000000000000..85db3ac44b32
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/test_signals.h
>> @@ -0,0 +1,137 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
>> +#ifndef __TEST_SIGNALS_H__
>> +#define __TEST_SIGNALS_H__
>> +
>> +#include <assert.h>
>> +#include <stdbool.h>
>> +#include <signal.h>
>> +#include <ucontext.h>
>> +#include <stdint.h>
> 
> Does anything in this header use <assert.h> or <stdint.h>?
> 

Probably no more...I'll check.

>> +
>> +/*
>> + * Using ARCH specific and sanitized Kernel headers installed by KSFT
>> + * framework since we asked for it by setting flag KSFT_KHDR_INSTALL
>> + * in our Makefile.
>> + */
>> +#include <asm/ptrace.h>
>> +#include <asm/hwcap.h>
>> +
>> +/* pasted from include/linux/stringify.h */
>> +#define __stringify_1(x...)	#x
>> +#define __stringify(x...)	__stringify_1(x)
>> +
>> +/*
> 
> I think we can delete this entire comment.
> 
> The macro name is fairly self-explanatory anyway.  Although the
> rationale is interesting, our approach to reading system registers
> here is just the same as elsewhere in the kernel.

OK
> 
>> + * Reads a sysreg using the, possibly provided, S3_ encoding in order to
>> + * avoid inject any dependency on the used toolchain regarding possibly
>> + * still unsupported ARMv8 extensions.
>> + *
>> + * Using a standard mnemonic here to indicate the specific sysreg (like SSBS)
>> + * would introduce a compile-time dependency on possibly unsupported ARMv8
>> + * Extensions: you could end-up failing to build the test depending on the
>> + * available toolchain.
>> + * This is undesirable since some tests, even if specifically targeted at some
>> + * ARMv8 Extensions, can be plausibly run even on hardware lacking the above
>> + * optional ARM features. (SSBS bit preservation is an example: Kernel handles
>> + * it transparently not caring at all about the effective set of supported
>> + * features).
>> + * On the other side we will expect to observe different behaviours if the
>> + * feature is supported or not: usually getting a SIGILL when trying to use
>> + * unsupported features. For this reason we have anyway in place some
>> + * preliminary run-time checks about the cpu effectively supported features.
>> + *
>> + * This helper macro is meant to be used for regs readable at EL0, BUT some
>> + * EL1 sysregs are indeed readable too through MRS emulation Kernel-mechanism
>> + * if the required reg is included in the supported encoding space:
>> + *
>> + *  Documentation/arm64/cpu-feature-regsiters.txt
>> + *
>> + *  "The infrastructure emulates only the following system register space:
>> + *   	Op0=3, Op1=0, CRn=0, CRm=0,4,5,6,7
>> + */
>> +#define get_regval(regname, out) \
>> +	asm volatile("mrs %0, " __stringify(regname) : "=r" (out) :: "memory")
>> +
>> +/* Regs encoding and masks naming copied in from sysreg.h */
>> +#define SYS_ID_AA64MMFR1_EL1	S3_0_C0_C7_1	/* MRS Emulated */
>> +#define SYS_ID_AA64MMFR2_EL1	S3_0_C0_C7_2	/* MRS Emulated */
> 
> These ID regs are part of armv8.0-a, so we don't need to use the magic
> syntax.
> mmm... why I found them in non UAPI headers defined as follows ?

arch/arm64/include/asm/sysreg.h:#define SYS_ID_AA64MMFR1_EL1            sys_reg(3, 0, 0, 7, 1)

anyway I tried to use nonS3 regular sysreg naming (with a reasonably new compiler:

/opt/toolchains/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/bin/aarch64-linux-gnu-

and it fails (only on id_aa64mmfr2_el1) as follows:
/tmp/ccqAyE8P.s: Assembler messages:                      
/tmp/ccoGrnGc.s:1085: Error: selected processor does not support system register name 'id_aa64mmfr2_el1'

In fact this seems to remind me (not totally sure) that this was the reason to use such S3 syntax on this
sysregs too.

>> +#define ID_AA64MMFR1_PAN_SHIFT	20
>> +#define ID_AA64MMFR2_UAO_SHIFT	4
>> +
>> +/* Local Helpers */
> 
> Can these names indicate the sysreg they should be used with, e.g.
> 
> #define ID_AA64MMFR1_EL1_PAN_SUPPORTED(val) ...
> #define ID_AA64MMFR2_EL1_UAO_SUPPORTED(val) ...
> 
ok

>> +#define IS_PAN_SUPPORTED(val) \
>> +	(!!((val) & (0xfUL << ID_AA64MMFR1_PAN_SHIFT)))
>> +#define IS_UAO_SUPPORTED(val) \
>> +	(!!((val) & (0xfUL << ID_AA64MMFR2_UAO_SHIFT)))
>> +
>> +#define S3_MRS_SSBS_SYSREG		S3_3_C4_C2_6	/* EL0 supported */
> 
> Maybe just SSBS_SYSREG.
> 
> Sysreg encodings are always for use with MRS/MSR anyway, and "S3" is
> really part of the definition rather than part of the name.
> 
ok

>> +
>> +/*
>> + * Feature flags used in tdescr.feats_required to specify
>> + * any feature by the test
>> + */
>> +enum {
>> +	FSSBS_BIT,
>> +	FPAN_BIT,
>> +	FUAO_BIT,
>> +	FMAX_END
>> +};
>> +
>> +#define FEAT_SSBS		(1UL << FSSBS_BIT)
>> +#define FEAT_PAN		(1UL << FPAN_BIT)
>> +#define FEAT_UAO		(1UL << FUAO_BIT)
>> +
>> +/*
>> + * A descriptor used to describe and configure a test case.
>> + * Fields with a non-trivial meaning are described inline in the following.
>> + */
>> +struct tdescr {
>> +	/* KEEP THIS FIELD FIRST for easier lookup from assembly */
>> +	void		*token;
>> +	/* when disabled token based sanity checking is skipped in handler */
>> +	bool		sanity_disabled;
>> +	/* just a name for the test-case; manadatory field */
>> +	char		*name;
>> +	char		*descr;
>> +	unsigned long	feats_required;
>> +	/* bitmask of effectively supported feats: populated at run-time */
>> +	unsigned long	feats_supported;
>> +	bool		feats_ok;
> 
> Is feats_ok used?

Removed.

> 
>> +	bool		initialized;
>> +	unsigned int	minsigstksz;
>> +	/* signum used as a test trigger. Zero if no trigger-signal is used */
>> +	int		sig_trig;
>> +	/*
>> +	 * signum considered as a successful test completion.
>> +	 * Zero when no signal is expected on success
>> +	 */
>> +	int		sig_ok;
>> +	/* signum expected on unsupported CPU features. */
>> +	int		sig_unsupp;
>> +	/* a timeout in second for test completion */
>> +	unsigned int	timeout;
>> +	bool		triggered;
>> +	bool		pass;
>> +	/* optional sa_flags for the installed handler */
>> +	int		sa_flags;
>> +	ucontext_t	saved_uc;
>> +
>> +	/* a setup function to be called before test starts */
>> +	int (*setup)(struct tdescr *td);
>> +	void (*cleanup)(struct tdescr *td);
> 
> Add a comment to say what cleanup() is?
> 
ok
>> +
>> +	/* an optional function to be used as a trigger for test starting */
>> +	int (*trigger)(struct tdescr *td);
>> +	/*
>> +	 * the actual test-core: invoked differently depending on the
>> +	 * presence of the trigger function above; this is mandatory
>> +	 */
>> +	int (*run)(struct tdescr *td, siginfo_t *si, ucontext_t *uc);
>> +
>> +	/* an optional function for custom results' processing */
>> +	void (*check_result)(struct tdescr *td);
>> +
>> +	void *priv;
>> +};
>> +#endif
>> diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.c b/tools/testing/selftests/arm64/signal/test_signals_utils.c
>> new file mode 100644
>> index 000000000000..ac0055f6340b
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/test_signals_utils.c
>> @@ -0,0 +1,261 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
>> +#include <stdio.h>
>> +#include <stdlib.h>
>> +#include <signal.h>
>> +#include <string.h>
>> +#include <unistd.h>
>> +#include <assert.h>
>> +#include <sys/auxv.h>
>> +#include <linux/auxvec.h>
>> +#include <ucontext.h>
>> +
>> +#include "test_signals.h"
>> +#include "test_signals_utils.h"
>> +#include "testcases/testcases.h"
>> +
>> +extern struct tdescr *current;
>> +
>> +static char *feats_store[FMAX_END] = {
>> +	"SSBS",
>> +	"PAN",
>> +	"UAO"
>> +};
>> +
>> +#define MAX_FEATS_SZ	128
>> +static inline char *feats_to_string(unsigned long feats)
>> +{
>> +	static char feats_string[MAX_FEATS_SZ];
>> +
>> +	for (int i = 0; i < FMAX_END && feats_store[i][0]; i++) {
>> +		if (feats & 1UL << i)
>> +			snprintf(feats_string, MAX_FEATS_SZ - 1, "%s %s ",
>> +				 feats_string, feats_store[i]);
>> +	}
>> +
>> +	return feats_string;
>> +}
>> +
>> +static void unblock_signal(int signum)
>> +{
>> +	sigset_t sset;
>> +
>> +	sigemptyset(&sset);
>> +	sigaddset(&sset, signum);
>> +	sigprocmask(SIG_UNBLOCK, &sset, NULL);
>> +}
>> +
>> +static void default_result(struct tdescr *td, bool force_exit)
>> +{
>> +	if (td->pass)
>> +		fprintf(stderr, "==>> completed. PASS(1)\n");
>> +	else
>> +		fprintf(stdout, "==>> completed. FAIL(0)\n");
>> +	if (force_exit)
>> +		exit(td->pass ? EXIT_SUCCESS : EXIT_FAILURE);
>> +}
>> +
>> +static inline bool are_feats_ok(struct tdescr *td)
>> +{
>> +	return td ? td->feats_required == td->feats_supported : 0;
> 
> Should this be something like
> (td->feats_required & td->feats_supported) == td->feats_required ?
> 
> Otherwise additional supported features that our test doesn't care about
> will cause this check to fail.
> 
Yes better.

> 
> Do we really need to check td?
> 

Overly defensive

> assert(foo); followed by dereferincing foo is usually a bit pointless
> because you'd get a SIGSEGV anyway.
>
> However, since the tests generate deliberate SIGSEGVs too this could
> be confusing -- in which case, having an explicit assert() here does
> no harm.
> 
not sure about which assert you refer here

>> +}
>> +
>> +static void default_handler(int signum, siginfo_t *si, void *uc)
>> +{
>> +	if (current->sig_trig && signum == current->sig_trig) {
>> +		fprintf(stderr, "Handling SIG_TRIG\n");
>> +		current->triggered = 1;
>> +		/* ->run was asserted NON-NULL in test_setup() already */
>> +		current->run(current, si, uc);
>> +	} else if (signum == SIGILL && !current->initialized) {
>> +		/*
>> +		 * A SIGILL here while still not initialized means we failed
>> +		 * even to asses the existence of features during init
>> +		 */
>> +		fprintf(stdout,
>> +			"Got SIGILL test_init. Marking ALL features UNSUPPORTED.\n");
>> +		current->feats_supported = 0;
>> +	} else if (current->sig_ok && signum == current->sig_ok) {
>> +		/* it's a bug in the test code when this assert fail */
> 
> Why?  Is this because sig_ok is considered acceptable only as an effect
> of the test -- i.e., we shouldn't see it if the test hasn't been
> triggered yet?

This assert would like to ensure that when you receive a sig_ok signal,
if a sig_trig was defined != 0, the trigger have been in fact used and processed before
receiving this sig_ok here: so you didn't define a signal trigger at all, or, if defined
it has been fired to arrive here. I'll add some commenting about this.

> 
>> +		assert(!current->sig_trig || current->triggered);
>> +		fprintf(stderr,
>> +			"SIG_OK -- SP:%p  si_addr@:0x%p  si_code:%d  token@:0x%p  offset:%ld\n",
>> +			((ucontext_t *)uc)->uc_mcontext.sp,
>> +			si->si_addr, si->si_code, current->token,
>> +			current->token - si->si_addr);
>> +		/*
>> +		 * fake_sigreturn tests, which have sanity_enabled=1, set, at
>> +		 * the very last time, the token field to the SP address used
>> +		 * to place the fake sigframe: so token==0 means we never made
>> +		 * it to the end, segfaulting well-before, and the test is
>> +		 * possibly broken.
>> +		 */
>> +		if (!current->sanity_disabled && !current->token) {
>> +			fprintf(stdout,
>> +				"current->token ZEROED...test is probably broken!\n");
>> +			assert(0);
> 
> In case someone builds with -DNDEBUG, should we add abort()?
> 
Well, in such a case all the test suite is mostly compromised anyway.
But you are right, I'll add an abort() at least here when broken tests are detected.

>> +		}
>> +		/*
>> +		 * Trying to narrow down the SEGV to the ones generated by
>> +		 * Kernel itself via arm64_notify_segfault()
>> +		 */
>> +		if (current->sig_ok == SIGSEGV && si->si_code != SEGV_ACCERR) {
>> +			fprintf(stdout,
>> +				"si_code != SEGV_ACCERR...test is probably broken!\n");
>> +			assert(0);
>> +		}
> 
> I'm not sure whether si_code is really ABI here, though I'm not sure
> what else we can do to diagnose the signal more accurately.
> 
> Maybe add a comment to say that this might need to change if this
> aspect of the kernel ABI evolves.
Ok
> 
>> +		fprintf(stderr, "Handling SIG_OK\n");
>> +		current->pass = 1;
>> +		/*
>> +		 * Some tests can lead to SEGV loops: in such a case we want
>> +		 * to terminate immediately exiting straight away
>> +		 */
>> +		default_result(current, 1);
>> +	} else {
>> +		if (signum == current->sig_unsupp && !are_feats_ok(current)) {
>> +			fprintf(stderr, "-- RX SIG_UNSUPP on unsupported feature...OK\n");
>> +			current->pass = 1;
>> +		} else if (signum == SIGALRM && current->timeout) {
>> +			fprintf(stderr, "-- Timeout !\n");
>> +		} else {
>> +			fprintf(stderr,
>> +				"-- RX UNEXPECTED SIGNAL: %d\n", signum);
>> +		}
>> +		default_result(current, 1);
>> +	}
>> +}
>> +
>> +static int default_setup(struct tdescr *td)
>> +{
>> +	struct sigaction sa;
>> +
>> +	sa.sa_sigaction = default_handler;
>> +	sa.sa_flags = SA_SIGINFO;
> 
> Add SA_RESTART?
> 
> I'm not sure whether this affects these tests, but the libc stdio
> functions don't like being interrupted by signals.  SA_RESTART should
> hide most issues of this sort.
> 

Ok...I was not aware of these possible issues.

>> +	if (td->sa_flags)
>> +		sa.sa_flags |= td->sa_flags;
> 
> Do we need the if() here?  If td->sa_flags == 0, the assignment is
> harmless anyway.
True.

> 
>> +	sigemptyset(&sa.sa_mask);
>> +	/* uncatchable signals naturally skipped ... */
>> +	for (int sig = 1; sig < 32; sig++)
>> +		sigaction(sig, &sa, NULL);
>> +	/*
>> +	 * RT Signals default disposition is Term but they cannot be
>> +	 * generated by the Kernel in response to our tests; so just catch
>> +	 * them all and report them as UNEXPECTED signals.
>> +	 */
>> +	for (int sig = SIGRTMIN; sig <= SIGRTMAX; sig++)
>> +		sigaction(sig, &sa, NULL);
>> +
>> +	/* just in case...unblock explicitly all we need */
>> +	if (td->sig_trig)
>> +		unblock_signal(td->sig_trig);
>> +	if (td->sig_ok)
>> +		unblock_signal(td->sig_ok);
>> +	if (td->sig_unsupp)
>> +		unblock_signal(td->sig_unsupp);
>> +
>> +	if (td->timeout) {
>> +		unblock_signal(SIGALRM);
>> +		alarm(td->timeout);
>> +	}
>> +	fprintf(stderr, "Registered handlers for all signals.\n");
>> +
>> +	return 1;
>> +}
>> +
>> +static inline int default_trigger(struct tdescr *td)
>> +{
>> +	return !raise(td->sig_trig);
>> +}
>> +
>> +static int test_init(struct tdescr *td)
>> +{
>> +	td->minsigstksz = getauxval(AT_MINSIGSTKSZ);
>> +	if (!td->minsigstksz)
>> +		td->minsigstksz = MINSIGSTKSZ;
>> +	fprintf(stderr, "Detected MINSTKSIGSZ:%d\n", td->minsigstksz);
>> +
>> +	if (td->feats_required) {
>> +		bool feats_ok = false;
>> +		td->feats_supported = 0;
>> +		/*
>> +		 * Checking for CPU required features using both the
>> +		 * auxval and the arm64 MRS Emulation to read sysregs.
>> +		 */
>> +		if (getauxval(AT_HWCAP) & HWCAP_CPUID) {
>> +			uint64_t val = 0;
>> +
> 
> Would it be simpler just to query all these features unconditionally?
> 
> We just need to check that all the features the test needs are present.
> If other features are present, we can happily ignore them, but
> discovering them is harmless.
> 
Ok
>> +			if (td->feats_required & FEAT_SSBS) {
>> +				/* Uses HWCAP to check capability */
>> +				if (getauxval(AT_HWCAP) & HWCAP_SSBS)
>> +					td->feats_supported |= FEAT_SSBS;
>> +			}
>> +			if (td->feats_required & FEAT_PAN) {
>> +				/* Uses MRS emulation to check capability */
>> +				get_regval(SYS_ID_AA64MMFR1_EL1, val);
>> +				if (IS_PAN_SUPPORTED(val))
>> +					td->feats_supported |= FEAT_PAN;
>> +			}
>> +			if (td->feats_required & FEAT_UAO) {
>> +				/* Uses MRS emulation to check capability */
>> +				get_regval(SYS_ID_AA64MMFR2_EL1 , val);
>> +				if (IS_UAO_SUPPORTED(val))
>> +					td->feats_supported |= FEAT_UAO;
>> +			}
>> +		} else {
>> +			fprintf(stderr,
>> +				"HWCAP_CPUID NOT available. Mark ALL feats UNSUPPORTED.\n");
>> +		}
>> +		feats_ok = are_feats_ok(td);
>> +		fprintf(stderr,
>> +			"Required Features: [%s] %ssupported\n",
>> +			feats_ok ? feats_to_string(td->feats_supported) :
>> +		        feats_to_string(td->feats_required ^ td->feats_supported),
>> +			!feats_ok ? "NOT " : "");
>> +	}
>> +
>> +	td->initialized = 1;
>> +	return 1;
>> +}
>> +
>> +int test_setup(struct tdescr *td)
>> +{
>> +	/* assert core invariants symptom of a rotten testcase */
>> +	assert(current);
>> +	assert(td);
>> +	assert(td->name);
>> +	assert(td->run);
>> +
>> +	if (!test_init(td))
>> +		return 0;
>> +
>> +	if (td->setup)
>> +		return td->setup(td);
>> +	else
>> +		return default_setup(td);
>> +}
>> +
>> +int test_run(struct tdescr *td)
>> +{
>> +	if (td->sig_trig) {
>> +		if (td->trigger)
>> +			return td->trigger(td);
>> +		else
>> +			return default_trigger(td);
>> +	} else {
>> +		return td->run(td, NULL, NULL);
>> +	}
>> +}
>> +
>> +void test_result(struct tdescr *td)
>> +{
>> +	if (td->check_result)
>> +		td->check_result(td);
>> +	default_result(td, 0);
>> +}
>> +
>> +void test_cleanup(struct tdescr *td)
>> +{
>> +	if (td->cleanup)
>> +		td->cleanup(td);
>> +}
>> diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.h b/tools/testing/selftests/arm64/signal/test_signals_utils.h
>> new file mode 100644
>> index 000000000000..8658d1a7d4b9
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/test_signals_utils.h
>> @@ -0,0 +1,13 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
>> +#ifndef __TEST_SIGNALS_UTILS_H__
>> +#define __TEST_SIGNALS_UTILS_H__
>> +
>> +#include "test_signals.h"
>> +
>> +int test_setup(struct tdescr *td);
>> +void test_cleanup(struct tdescr *td);
>> +int test_run(struct tdescr *td);
>> +void test_result(struct tdescr *td);
>> +#endif
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> new file mode 100644
>> index 000000000000..8651272e3cfc
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
>> @@ -0,0 +1 @@
>> +mangle_pstate_invalid_compat_toggle
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c
>> new file mode 100644
>> index 000000000000..971193e7501b
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c
>> @@ -0,0 +1,25 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 ARM Limited */
>> +
> 
> Each testcase should have a comment explaining what it is trying to
> test, and how.
> 
Ok

>> +#include "test_signals_utils.h"
>> +#include "testcases.h"
>> +
>> +static int mangle_invalid_pstate_run(struct tdescr *td, siginfo_t *si,
>> +				     ucontext_t *uc)
>> +{
>> +	ASSERT_GOOD_CONTEXT(uc);
>> +
>> +	/* This config should trigger a SIGSEGV by Kernel */
>> +	uc->uc_mcontext.pstate ^= PSR_MODE32_BIT;
>> +
>> +	return 1;
>> +}
>> +
>> +struct tdescr tde = {
>> +		.sanity_disabled = true,
>> +		.name = "MANGLE_PSTATE_INVALID_STATE_TOGGLE",
>> +		.descr = "Mangling uc_mcontext with INVALID STATE_TOGGLE",
>> +		.sig_trig = SIGUSR1,
>> +		.sig_ok = SIGSEGV,
>> +		.run = mangle_invalid_pstate_run,
>> +};
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/testcases.c b/tools/testing/selftests/arm64/signal/testcases/testcases.c
>> new file mode 100644
>> index 000000000000..a59785092e1f
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/testcases.c
>> @@ -0,0 +1,150 @@
>> +#include "testcases.h"
>> +
>> +struct _aarch64_ctx *get_header(struct _aarch64_ctx *head, uint32_t magic,
>> +				size_t resv_sz, size_t *offset)
>> +{
>> +	size_t offs = 0;
>> +	struct _aarch64_ctx *found = NULL;
>> +
>> +	if (!head || resv_sz < HDR_SZ)
>> +		return found;
>> +
>> +	do {
>> +		if (head->magic == magic) {
>> +			found = head;
>> +			break;
>> +		}
>> +		offs += head->size;
>> +		head = GET_RESV_NEXT_HEAD(head);
> 
> Are offs and head tracking the same thing here?
> 
> Maybe it would be cleaner to have GET_RESV_NEXT_HEAD() do the bounds
> checking itself.
> 
offs is used for bound checking but it is also optionally provided to the
caller as the offset in bytes at which the header was found, and yes it tracks the
underlying same thing at the end.
I'll try to cleanup and re-org this function a bit.

>> +	} while (offs < resv_sz - HDR_SZ);
>> +
>> +	if (offset)
>> +		*offset = offs;
>> +
>> +	return found;
>> +}
>> +
>> +bool validate_extra_context(struct extra_context *extra, char **err)
>> +{
>> +	struct _aarch64_ctx *term;
>> +
>> +	if (!extra || !err)
>> +		return false;
>> +
>> +	fprintf(stderr, "Validating EXTRA...\n");
>> +	term = GET_RESV_NEXT_HEAD(extra);
>> +	if (!term || term->magic || term->size) {
>> +		*err = "UN-Terminated EXTRA context";
> 
> This sounds like the extra context doesn't contain a terminator, which
> isn't what we're checking here.  Maybe say "terminator missing after
> extra context", or similar.

ok
> 
>> +		return false;
>> +	}
>> +	if (extra->datap & 0x0fUL)
>> +		*err = "Extra DATAP misaligned";
>> +	else if (extra->size & 0x0fUL)
>> +		*err = "Extra SIZE misaligned";
>> +	else if (extra->datap != (uint64_t)term + sizeof(*term))
>> +		*err = "Extra DATAP misplaced (not contiguos)";
>> +	if (*err)
>> +		return false;
>> +
>> +	return true;
>> +}
>> +
>> +bool validate_reserved(ucontext_t *uc, size_t resv_sz, char **err)
>> +{
>> +	bool terminated = false;
>> +	size_t offs = 0;
>> +	int flags = 0;
>> +	struct extra_context *extra = NULL;
>> +	struct _aarch64_ctx *head =
>> +		(struct _aarch64_ctx *)uc->uc_mcontext.__reserved;
>> +
>> +	if (!err)
>> +		return false;
>> +	/* Walk till the end terminator verifying __reserved contents */
>> +	while (head && !terminated && offs < resv_sz) {
>> +		if ((uint64_t)head & 0x0fUL) {
>> +			*err = "Misaligned HEAD";
>> +			return false;
>> +		}
>> +
>> +		switch (head->magic) {
>> +			case 0:
>> +				if (head->size)
>> +					*err = "Bad size for MAGIC0";
> 
> Or "terminator".  We don't have an actual symbolic name for magic number
> 0.  (Arguably it would have been nice to have a name, but we managed
> without.)

ok
> 
>> +				else
>> +					terminated = true;
>> +				break;
>> +			case FPSIMD_MAGIC:
>> +				if (flags & FPSIMD_CTX)
>> +					*err = "Multiple FPSIMD_MAGIC";
>> +				else if (head->size !=
>> +					 sizeof(struct fpsimd_context))
>> +					*err = "Bad size for fpsimd_context";
>> +				flags |= FPSIMD_CTX;
>> +				break;
>> +			case ESR_MAGIC:
>> +				if (head->size != sizeof(struct esr_context))
>> +					fprintf(stderr,
>> +						"Bad size for esr_context is not an error...just ignore.\n");
> 
> Why isn't this an error?  Should the kernel ever write an esr_context
> with a different size?

There is no check on Kernel side:

    case ESR_MAGIC:
    	/* ignore */
        break;

so I sticked with that, since this function can be used to validate a Kernel originated sigframe
or a crafted one which will be passed down to the Kernel.

> 
>> +				break;
>> +			case SVE_MAGIC:
>> +				if (flags & SVE_CTX)
>> +					*err = "Multiple SVE_MAGIC";
>> +				else if (head->size !=
>> +					 sizeof(struct sve_context))
>> +					*err = "Bad size for sve_context";
>> +				flags |= SVE_CTX;
>> +				break;
>> +			case EXTRA_MAGIC:
>> +				if (flags & EXTRA_CTX)
>> +					*err = "Multiple EXTRA_MAGIC";
>> +				else if (head->size !=
>> +					 sizeof(struct extra_context))
>> +					*err = "Bad size for extra_context";
>> +				flags |= EXTRA_CTX;
>> +				extra = (struct extra_context *)head;
>> +				break;
>> +			case KSFT_BAD_MAGIC:
>> +				/*
>> +				 * This is a BAD magic header defined
>> +				 * artificially by a testcase and surely
>> +				 * unknown to the Kernel parse_user_sigframe().
>> +				 * It MUST cause a Kernel induced SEGV
>> +				 */
>> +				*err = "BAD MAGIC !";
>> +				break;
>> +			default:
>> +				/*
>> +				 * A still unknown Magic: potentially freshly added
>> +				 * to the Kernel code and still unknown to the
>> +				 * tests.
>> +				 */
>> +				fprintf(stdout,
>> +					"SKIP Unknown MAGIC: 0x%X - Is KSFT arm64/signal up to date ?\n",
>> +					head->magic);
>> +				break;
>> +		}
>> +
>> +		if (*err)
>> +			return false;
>> +
>> +		offs += head->size;
> 
> Can this addition cause offs to become > resv_sz?  If so, the next
> comparison will go wrong.

True. I'll refactor the comparison to avoid subtraction like in :

	if (resv_sz < offs + sizeof(*head)) {

> 
>> +		if (resv_sz - offs < sizeof(*head)) {
>> +			*err = "HEAD Overrun";
>> +			return false;
>> +		}
>> +
>> +		if (flags & EXTRA_CTX)
>> +			if (!validate_extra_context(extra, err))
>> +				return false;
> 
> Can we validate the contents of the extra context too?
> 
> Ideally we can use the same code to check __reserved[] and the extra
> context.
> 
Do you mean the content pointed by extra->datap ?
This extra_context validation routine is generally under review and fixes in a further
arm64/signal SVE extensions patch still to be published (and cleaned up):
[kselftest: arm64: adds SVE-related signal test], given that EXTRA_CONTEXT can effectively
appear only when SVE related instruction are used properly.

Should I introduce this and other extra-context related fixes here instead ?
(it is hard to test and debug without any triggering SVE instruction though...)

>> +
>> +		head = GET_RESV_NEXT_HEAD(head);
>> +	}
>> +
>> +	if (terminated && !(flags & FPSIMD_CTX)) {
>> +		*err = "Missing FPSIMD";
>> +		return false;
>> +	}
>> +
>> +	return true;
>> +}
>> diff --git a/tools/testing/selftests/arm64/signal/testcases/testcases.h b/tools/testing/selftests/arm64/signal/testcases/testcases.h
>> new file mode 100644
>> index 000000000000..624717c71b1d
>> --- /dev/null
>> +++ b/tools/testing/selftests/arm64/signal/testcases/testcases.h
>> @@ -0,0 +1,83 @@
>> +#ifndef __TESTCASES_H__
>> +#define __TESTCASES_H__
>> +
> 
> Pedantically, we should have <stddef.h> for NULL.
> 

ok

>> +#include <stdio.h>
>> +#include <stdbool.h>
>> +#include <stdint.h>
>> +#include <unistd.h>
> 
> Is <unistd.h> used now that SAFE_WRITE() is gone?
> 

Removed.

>> +#include <ucontext.h>
>> +#include <assert.h>
>> +
>> +/* Architecture specific sigframe definitions */
>> +#include <asm/sigcontext.h>
> 
> [...]
> 
> Cheers
> ---Dave
> 

Cheers

Cristian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
