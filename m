Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5F1A814D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 13:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neYb5YJRdXa2bE2L/7SfhAwa9nagBylz0MdlR7JNWLY=; b=DjHJWOYsfQ4/IC
	v+HHM8ymlPeLDIoetxcz1gVwaq8UgkJMPolRSjppTKjTH/5vrdpTTWnVFBML8R1GDwFLL2MQokyXH
	WeTDNxOCpjRNIzEGjAO5XPYnajsgb3LL/OlXDOMAChWTkTJcoUKb63JqfdStGyftO9CoMAFy9Nw+m
	nRcnaXuyXzpBPUbG3Jkx2ZoQU0fUA1E0Qk09EWjWfc4j6+7tEDYWjpNFCCY++KV/NnS8NkG8QzIp+
	UlAJnmTbhvcVtlEyHDokmo5HwYsT6VJhpWi1wiFbM5NlQNXjwykbDyrvR9ctwmCXg/3JYlOkddzvC
	7P0bW+j/mEpXVGbkWLSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Tlq-0004BZ-Q3; Wed, 04 Sep 2019 11:48:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5TlV-000470-8j
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 11:47:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 26225337;
 Wed,  4 Sep 2019 04:47:56 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1B4813F246;
 Wed,  4 Sep 2019 04:47:55 -0700 (PDT)
Date: Wed, 4 Sep 2019 12:47:53 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v5 02/11] kselftest: arm64: add common utils and one
 testcase
Message-ID: <20190904114752.GS27757@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
 <20190902112932.36129-3-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902112932.36129-3-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_044757_499097_B4103E3A 
X-CRM114-Status: GOOD (  34.65  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

^Nit: "add one testcase" doesn't really describe what is being added here.

Maybe the following would work as the subject line:

--8<--
kselftest: arm64: mangle_pstate_invalid_compat_toggle and common utils
-->8--

The remainder of the commit message looks fine.

On Mon, Sep 02, 2019 at 12:29:23pm +0100, Cristian Marussi wrote:
> Add some arm64/signal specific boilerplate and utility code to help
> further testcases' development.
> 
> Introduce also one simple testcase mangle_pstate_invalid_compat_toggle
> and some related helpers: it is a simple mangle testcase which messes
> with the ucontext_t from within the signal handler, trying to toggle
> PSTATE state bits to switch the system between 32bit/64bit execution
> state. Expects SIGSEGV on test PASS.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> v4 --> v5
> - moved kernel headers include search to top level KSFT arm64 Makefile
> - removed warning about kernel headers not found
> - moved testcases/.gitignore up one level
> v3 --> v4
> - removed standalone mode
> - fixed arm64/signal/README
> - add file level comments: test layout / test description
> - reduced verbosity
> - removed spurious headers includes
> - reviewed ID_AA64MMFR[1,2]_EL1 macros
> - removed unused feats_ok
> - simplified CPU features gathering
> - reviewed included headers
> - fixed/refactored get_header() and validation routines
> - added test description
> ---

[...]

> diff --git a/tools/testing/selftests/arm64/signal/test_signals.c b/tools/testing/selftests/arm64/signal/test_signals.c
> new file mode 100644
> index 000000000000..f05c6dbf8659
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/test_signals.c
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 ARM Limited
> + *
> + * Generic test wrapper for arm64 signal tests.
> + *
> + * Each test provides its own tde struct tddescr descriptor to link with

Typo?  tdescr

[...]

> diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.c b/tools/testing/selftests/arm64/signal/test_signals_utils.c
> new file mode 100644
> index 000000000000..e2a5f37e6ad3
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/test_signals_utils.c
> @@ -0,0 +1,269 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2019 ARM Limited */
> +
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <signal.h>
> +#include <string.h>
> +#include <unistd.h>
> +#include <assert.h>
> +#include <sys/auxv.h>
> +#include <linux/auxvec.h>
> +#include <ucontext.h>
> +
> +#include "test_signals.h"
> +#include "test_signals_utils.h"
> +#include "testcases/testcases.h"
> +
> +extern struct tdescr *current;
> +
> +static char *feats_store[FMAX_END] = {

Nit: can we call this feat_names[]?

"store" makes me think of loads and stores...

Also, nit: can this be static const char *const []?

String literals are immutable anyway, and I guess we don't intend too
modify the pointers to the strings either...

> +	" SSBS ",
> +	" PAN ",
> +	" UAO ",
> +};
> +
> +#define MAX_FEATS_SZ	128
> +static char feats_string[MAX_FEATS_SZ];
> +
> +static inline char *feats_to_string(unsigned long feats)
> +{
> +	size_t flen = MAX_FEATS_SZ - 1;
> +
> +	for (int i = 0; i < FMAX_END; i++) {
> +		if (feats & 1UL << i) {

Nit: maybe have () around (1UL << i), though I think it makes no
difference.

> +			size_t tlen = strlen(feats_store[i]);
> +
> +			assert(flen > tlen);
> +			flen -= tlen;
> +			strncat(feats_string, feats_store[i], flen);
> +		}
> +	}
> +
> +	return feats_string;
> +}
> +
> +static void unblock_signal(int signum)
> +{
> +	sigset_t sset;
> +
> +	sigemptyset(&sset);
> +	sigaddset(&sset, signum);
> +	sigprocmask(SIG_UNBLOCK, &sset, NULL);
> +}
> +
> +static void default_result(struct tdescr *td, bool force_exit)
> +{
> +	if (td->pass)
> +		fprintf(stderr, "==>> completed. PASS(1)\n");
> +	else
> +		fprintf(stdout, "==>> completed. FAIL(0)\n");
> +	if (force_exit)
> +		exit(td->pass ? EXIT_SUCCESS : EXIT_FAILURE);
> +}
> +
> +static inline bool are_feats_ok(struct tdescr *td)
> +{
> +	return (td->feats_required & td->feats_supported) == td->feats_required;
> +}
> +
> +static void default_handler(int signum, siginfo_t *si, void *uc)
> +{
> +	if (current->sig_trig && signum == current->sig_trig) {

(Thinking about it, signum is never 0 because there is no signal 0.
So we could write if (signum == current->sig_trig).  But I think your
code makes the intention clearer -- so no need to change it.)

> +		fprintf(stderr, "Handling SIG_TRIG\n");
> +		current->triggered = 1;
> +		/* ->run was asserted NON-NULL in test_setup() already */
> +		current->run(current, si, uc);
> +	} else if (signum == SIGILL && !current->initialized) {
> +		/*
> +		 * A SIGILL here while still not initialized means we failed
> +		 * even to asses the existence of features during init
> +		 */
> +		fprintf(stdout,
> +			"Got SIGILL test_init. Marking ALL features UNSUPPORTED.\n");
> +		current->feats_supported = 0;
> +	} else if (current->sig_ok && signum == current->sig_ok) {
> +		/*
> +		 * it's a bug in the test code when this assert fail:
> +		 * if a sig_trig was defined, it must have been used before
> +		 * arriving here.
> +		 */
> +		assert(!current->sig_trig || current->triggered);
> +		fprintf(stderr,
> +			"SIG_OK -- SP:0x%llX  si_addr@:%p  si_code:%d  token@:%p  offset:%ld\n",
> +			((ucontext_t *)uc)->uc_mcontext.sp,
> +			si->si_addr, si->si_code, current->token,
> +			current->token - si->si_addr);
> +		/*
> +		 * fake_sigreturn tests, which have sanity_enabled=1, set, at
> +		 * the very last time, the token field to the SP address used
> +		 * to place the fake sigframe: so token==0 means we never made
> +		 * it to the end, segfaulting well-before, and the test is
> +		 * possibly broken.
> +		 */
> +		if (!current->sanity_disabled && !current->token) {
> +			fprintf(stdout,
> +				"current->token ZEROED...test is probably broken!\n");
> +			abort();
> +		}
> +		/*
> +		 * Trying to narrow down the SEGV to the ones generated by
> +		 * Kernel itself via arm64_notify_segfault().
> +		 * This is a best-effort check anyway, and the si_code check may
> +		 * need to change if this aspect of the kernel ABI changes.
> +		 */
> +		if (current->sig_ok == SIGSEGV && si->si_code != SEGV_ACCERR) {
> +			fprintf(stdout,
> +				"si_code != SEGV_ACCERR...test is probably broken!\n");
> +			abort();
> +		}
> +		fprintf(stderr, "Handling SIG_OK\n");
> +		current->pass = 1;
> +		/*
> +		 * Some tests can lead to SEGV loops: in such a case we want
> +		 * to terminate immediately exiting straight away
> +		 */
> +		default_result(current, 1);
> +	} else {
> +		if (signum == current->sig_unsupp && !are_feats_ok(current)) {
> +			fprintf(stderr,
> +				"-- RX SIG_UNSUPP on unsupported feat...OK\n");
> +			current->pass = 1;
> +		} else if (signum == SIGALRM && current->timeout) {
> +			fprintf(stderr, "-- Timeout !\n");
> +		} else {
> +			fprintf(stderr,
> +				"-- RX UNEXPECTED SIGNAL: %d\n", signum);
> +		}
> +		default_result(current, 1);
> +	}
> +}
> +
> +static int default_setup(struct tdescr *td)
> +{
> +	struct sigaction sa;
> +
> +	sa.sa_sigaction = default_handler;
> +	sa.sa_flags = SA_SIGINFO | SA_RESTART;
> +	sa.sa_flags |= td->sa_flags;
> +	sigemptyset(&sa.sa_mask);
> +	/* uncatchable signals naturally skipped ... */
> +	for (int sig = 1; sig < 32; sig++)
> +		sigaction(sig, &sa, NULL);
> +	/*
> +	 * RT Signals default disposition is Term but they cannot be
> +	 * generated by the Kernel in response to our tests; so just catch
> +	 * them all and report them as UNEXPECTED signals.
> +	 */
> +	for (int sig = SIGRTMIN; sig <= SIGRTMAX; sig++)
> +		sigaction(sig, &sa, NULL);
> +
> +	/* just in case...unblock explicitly all we need */
> +	if (td->sig_trig)
> +		unblock_signal(td->sig_trig);
> +	if (td->sig_ok)
> +		unblock_signal(td->sig_ok);
> +	if (td->sig_unsupp)
> +		unblock_signal(td->sig_unsupp);
> +
> +	if (td->timeout) {
> +		unblock_signal(SIGALRM);
> +		alarm(td->timeout);
> +	}
> +	fprintf(stderr, "Registered handlers for all signals.\n");
> +
> +	return 1;
> +}
> +
> +static inline int default_trigger(struct tdescr *td)
> +{
> +	return !raise(td->sig_trig);
> +}
> +
> +static int test_init(struct tdescr *td)
> +{
> +	td->minsigstksz = getauxval(AT_MINSIGSTKSZ);
> +	if (!td->minsigstksz)
> +		td->minsigstksz = MINSIGSTKSZ;
> +	fprintf(stderr, "Detected MINSTKSIGSZ:%d\n", td->minsigstksz);
> +
> +	if (td->feats_required) {
> +		bool feats_ok = false;
> +
> +		td->feats_supported = 0;
> +		/*
> +		 * Checking for CPU required features using both the
> +		 * auxval and the arm64 MRS Emulation to read sysregs.
> +		 */
> +		if (getauxval(AT_HWCAP) & HWCAP_CPUID) {
> +			uint64_t val = 0;
> +
> +			/* Uses HWCAP to check capability */
> +			if (getauxval(AT_HWCAP) & HWCAP_SSBS)
> +				td->feats_supported |= FEAT_SSBS;

Should this be outside the HWCAP_CPUID check?

It's only the get_regval(SYS_ID_foo) based checks that depend on
HWCAP_CPUID.

> +			/* Uses MRS emulation to check capability */
> +			get_regval(SYS_ID_AA64MMFR1_EL1, val);
> +			if (ID_AA64MMFR1_EL1_PAN_SUPPORTED(val))
> +				td->feats_supported |= FEAT_PAN;
> +			/* Uses MRS emulation to check capability */
> +			get_regval(SYS_ID_AA64MMFR2_EL1, val);
> +			if (ID_AA64MMFR2_EL1_UAO_SUPPORTED(val))
> +				td->feats_supported |= FEAT_UAO;
> +		} else {
> +			fprintf(stderr,
> +				"HWCAP_CPUID NOT available. Mark ALL feats UNSUPPORTED.\n");
> +		}
> +		feats_ok = are_feats_ok(td);
> +		fprintf(stderr,
> +			"Required Features: [%s] %ssupported\n",
> +			feats_ok ? feats_to_string(td->feats_supported) :
> +			feats_to_string(td->feats_required ^
> +					td->feats_supported),

Should this be something like:
td->feats_required & ~td->feats_supported ?

Otherwise we'll include features that are supported but not required,
when printing the features that are NOT supported.

Alternatively, we could just print out the required and supported sets
separately and leave it up to the user to obverse how they are
different.

(Watch out for calling feats_to_string() twice in the same printf() call
though.)

> +			!feats_ok ? "NOT " : "");
> +	}
> +
> +	td->initialized = 1;
> +	return 1;
> +}
> +
> +int test_setup(struct tdescr *td)
> +{
> +	/* assert core invariants symptom of a rotten testcase */
> +	assert(current);
> +	assert(td);
> +	assert(td->name);
> +	assert(td->run);
> +
> +	if (!test_init(td))
> +		return 0;
> +
> +	if (td->setup)
> +		return td->setup(td);
> +	else
> +		return default_setup(td);
> +}
> +
> +int test_run(struct tdescr *td)
> +{
> +	if (td->sig_trig) {
> +		if (td->trigger)
> +			return td->trigger(td);
> +		else
> +			return default_trigger(td);
> +	} else {
> +		return td->run(td, NULL, NULL);
> +	}
> +}
> +
> +void test_result(struct tdescr *td)
> +{
> +	if (td->check_result)
> +		td->check_result(td);
> +	default_result(td, 0);
> +}
> +
> +void test_cleanup(struct tdescr *td)
> +{
> +	if (td->cleanup)
> +		td->cleanup(td);
> +}
> diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.h b/tools/testing/selftests/arm64/signal/test_signals_utils.h
> new file mode 100644
> index 000000000000..8658d1a7d4b9
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/test_signals_utils.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (C) 2019 ARM Limited */
> +
> +#ifndef __TEST_SIGNALS_UTILS_H__
> +#define __TEST_SIGNALS_UTILS_H__
> +
> +#include "test_signals.h"
> +
> +int test_setup(struct tdescr *td);
> +void test_cleanup(struct tdescr *td);
> +int test_run(struct tdescr *td);
> +void test_result(struct tdescr *td);
> +#endif
> diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c
> new file mode 100644
> index 000000000000..2cb118b0ba05
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_compat_toggle.c
> @@ -0,0 +1,31 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 ARM Limited
> + *
> + * Try to mangle the ucontext from inside a signal handler, toggling
> + * the execution state bit: this attempt must be spotted by Kernel and
> + * the test case is expected to be terminated via SEGV.
> + */
> +
> +#include "test_signals_utils.h"
> +#include "testcases.h"
> +
> +static int mangle_invalid_pstate_run(struct tdescr *td, siginfo_t *si,
> +				     ucontext_t *uc)
> +{
> +	ASSERT_GOOD_CONTEXT(uc);
> +
> +	/* This config should trigger a SIGSEGV by Kernel */
> +	uc->uc_mcontext.pstate ^= PSR_MODE32_BIT;
> +
> +	return 1;
> +}
> +
> +struct tdescr tde = {
> +		.sanity_disabled = true,
> +		.name = "MANGLE_PSTATE_INVALID_STATE_TOGGLE",
> +		.descr = "Mangling uc_mcontext with INVALID STATE_TOGGLE",
> +		.sig_trig = SIGUSR1,
> +		.sig_ok = SIGSEGV,
> +		.run = mangle_invalid_pstate_run,
> +};
> diff --git a/tools/testing/selftests/arm64/signal/testcases/testcases.c b/tools/testing/selftests/arm64/signal/testcases/testcases.c
> new file mode 100644
> index 000000000000..72e3f482b177
> --- /dev/null
> +++ b/tools/testing/selftests/arm64/signal/testcases/testcases.c
> @@ -0,0 +1,151 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2019 ARM Limited */
> +#include "testcases.h"
> +
> +struct _aarch64_ctx *get_header(struct _aarch64_ctx *head, uint32_t magic,
> +				size_t resv_sz, size_t *offset)
> +{
> +	size_t offs = 0;
> +	struct _aarch64_ctx *found = NULL;
> +
> +	if (!head)
> +		return found;
> +

I suggest you also check for resv_sz < HDR_SZ, since the while()
condition assumes that resv_sz - HDR_SZ doesn't underflow.

For now, I think resv_sz is already sizeof(__reserved) so this is never
true, but I suspect we will want to reuse this code eventually to looko
at the contents of extra_context.  Then, resv_sz would be the
extra_context size rather than a fixed constant.

> +	while (offs <= resv_sz - HDR_SZ &&
> +	       head->magic != magic && head->magic) {
> +		offs += head->size;
> +		head = GET_RESV_NEXT_HEAD(head);
> +	}
> +	if (head->magic == magic) {
> +		found = head;
> +		if (offset)
> +			*offset = offs;
> +	}

Although there appears to be some code duplication here, I guess you
need things this way to do the right thing if called with magic==0.

So I guess this is fine.

Ultimately it would be good to have GET_RESV_NEXT_HEAD() work more
like an iterator, doing integrity bounds/alignment checks and updating
offs as it goes, but for now I think the code is sufficient.  We can
always beef it up later to catch more kinds of error from the kernel.

> +
> +	return found;
> +}
> +
> +bool validate_extra_context(struct extra_context *extra, char **err)
> +{
> +	struct _aarch64_ctx *term;
> +
> +	if (!extra || !err)
> +		return false;
> +
> +	fprintf(stderr, "Validating EXTRA...\n");
> +	term = GET_RESV_NEXT_HEAD(extra);
> +	if (!term || term->magic || term->size) {
> +		*err = "Missing terminator after EXTRA context";
> +		return false;
> +	}
> +	if (extra->datap & 0x0fUL)
> +		*err = "Extra DATAP misaligned";
> +	else if (extra->size & 0x0fUL)
> +		*err = "Extra SIZE misaligned";
> +	else if (extra->datap != (uint64_t)term + sizeof(*term))
> +		*err = "Extra DATAP misplaced (not contiguos)";
> +	if (*err)
> +		return false;
> +
> +	return true;
> +}
> +
> +bool validate_reserved(ucontext_t *uc, size_t resv_sz, char **err)
> +{
> +	bool terminated = false;
> +	size_t offs = 0;
> +	int flags = 0;
> +	struct extra_context *extra = NULL;
> +	struct _aarch64_ctx *head =
> +		(struct _aarch64_ctx *)uc->uc_mcontext.__reserved;
> +
> +	if (!err)
> +		return false;
> +	/* Walk till the end terminator verifying __reserved contents */
> +	while (head && !terminated && offs < resv_sz) {
> +		if ((uint64_t)head & 0x0fUL) {
> +			*err = "Misaligned HEAD";
> +			return false;
> +		}
> +
> +		switch (head->magic) {
> +		case 0:
> +			if (head->size)
> +				*err = "Bad size for terminator";
> +			else
> +				terminated = true;
> +			break;
> +		case FPSIMD_MAGIC:
> +			if (flags & FPSIMD_CTX)
> +				*err = "Multiple FPSIMD_MAGIC";
> +			else if (head->size !=
> +				 sizeof(struct fpsimd_context))
> +				*err = "Bad size for fpsimd_context";
> +			flags |= FPSIMD_CTX;
> +			break;
> +		case ESR_MAGIC:
> +			if (head->size != sizeof(struct esr_context))
> +				fprintf(stderr,
> +					"Bad size for esr_context is not an error...just ignore.\n");
> +			break;

Although it's not essential, I'd prefer that we enforce the correct
size here.  All records, including esr_context are intended to be
fixed-size.

In the kernel we check a bit more loosely -- this allows userspace to
delete a record using head->size += next_head->size.  This way no
memmove() is needed to shuffle subsequent records down.  I don't know
whether any userspace code makes use of this -- prior to SVE there were
no optional records except for esr_context, and sigreturn ignores that
in any case so deleting it is pointless.

The kernel should never insert extra padding between records though,
so I think it makes sense to have strict size checks in this test.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
