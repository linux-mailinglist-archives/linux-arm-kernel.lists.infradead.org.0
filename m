Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63BAD0DBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 13:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LicchPgRpIS/Vn0xMlhPNOkmC8uvI6D86Yn9felxxT4=; b=uzvGbiX7ZlZpvv
	3/MfHp9b7d02OOZBEC7GNWQ61n+7MR4iPma5RXxndj5lLiNKUe+lIEQlSSW247S5SQc7CaC9D1nN8
	Ea4Tvrt1gHKf9VHAjHVkT9vtpIk/aGm3QC4XczrBaMUbdP2nf3RLvprW7IIOwx4FZ3Q5bBH+UnwDk
	MfzTqwwHiFBaBrueAk7Boz5XPMtFDjmPyHPtEfvoqxYWwAc1EYWy2bM5fKRjyTtMunlPVxDCQ3oMt
	tveWzob2N23bjV1a6xU6gF+dQ3QlHjOopa9B25yQ9waEksxBZJ4GzUXbrCtq0BIH1yGt7GaZN9wUb
	oTWbi92N5uTNXyOSdORQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIADR-0002RQ-Pt; Wed, 09 Oct 2019 11:33:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIADE-0002PT-Td
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 11:33:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5AAEF28;
 Wed,  9 Oct 2019 04:33:00 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 732CA3F703;
 Wed,  9 Oct 2019 04:32:59 -0700 (PDT)
Date: Wed, 9 Oct 2019 12:32:57 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v8 06/12] kselftest: arm64: add helper get_current_context
Message-ID: <20191009113256.GD27757@arm.com>
References: <20191009082611.9441-1-cristian.marussi@arm.com>
 <20191009082611.9441-7-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009082611.9441-7-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_043301_053760_4D2DCA0F 
X-CRM114-Status: GOOD (  34.17  )
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

On Wed, Oct 09, 2019 at 09:26:05AM +0100, Cristian Marussi wrote:
> Introduce a new common utility function get_current_context() which can be
> used to grab a ucontext without the help of libc, and also to detect if
> such ucontext has been successfully used by placing it on the stack as a
> fake sigframe.

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> v7 --> v8
> - added new in v8 (splitted out from v7 05/11)
> ---
>  .../selftests/arm64/signal/test_signals.h     |  6 +-
>  .../arm64/signal/test_signals_utils.c         | 31 ++++++
>  .../arm64/signal/test_signals_utils.h         | 98 +++++++++++++++++++
>  3 files changed, 134 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/testing/selftests/arm64/signal/test_signals.h b/tools/testing/selftests/arm64/signal/test_signals.h
> index 901521188202..4fd3ba01e3b1 100644
> --- a/tools/testing/selftests/arm64/signal/test_signals.h
> +++ b/tools/testing/selftests/arm64/signal/test_signals.h
> @@ -88,8 +88,12 @@ struct tdescr {
>  	/* optional sa_flags for the installed handler */
>  	int			sa_flags;
>  	ucontext_t		saved_uc;
> +	/* used by get_current_ctx() */
> +	size_t			live_sz;
> +	ucontext_t		*live_uc;
> +	volatile sig_atomic_t	live_uc_valid;
>  	/* optional test private data */
> -	void                    *priv;
> +	void			*priv;
>  
>  	/* a custom setup: called alternatively to default_setup */
>  	int (*setup)(struct tdescr *td);
> diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.c b/tools/testing/selftests/arm64/signal/test_signals_utils.c
> index e8bbe36c2660..222148568adf 100644
> --- a/tools/testing/selftests/arm64/signal/test_signals_utils.c
> +++ b/tools/testing/selftests/arm64/signal/test_signals_utils.c
> @@ -11,14 +11,19 @@
>  #include <linux/auxvec.h>
>  #include <ucontext.h>
>  
> +#include <asm/unistd.h>
> +
>  #include <kselftest.h>
>  
>  #include "test_signals.h"
>  #include "test_signals_utils.h"
>  #include "testcases/testcases.h"
>  
> +
>  extern struct tdescr *current;
>  
> +static int sig_copyctx = SIGTRAP;
> +
>  static char const *const feats_names[FMAX_END] = {
>  	" SSBS ",
>  	" PAN ",
> @@ -156,6 +161,20 @@ static bool handle_signal_ok(struct tdescr *td,
>  	return true;
>  }
>  
> +static bool handle_signal_copyctx(struct tdescr *td,
> +				  siginfo_t *si, void *uc)
> +{
> +	/* Mangling PC to avoid loops on original BRK instr */
> +	((ucontext_t *)uc)->uc_mcontext.pc += 4;
> +	memcpy(td->live_uc, uc, td->live_sz);
> +	ASSERT_GOOD_CONTEXT(td->live_uc);
> +	td->live_uc_valid = 1;
> +	fprintf(stderr,
> +		"GOOD CONTEXT grabbed from sig_copyctx handler\n");
> +
> +	return true;
> +}
> +
>  static void default_handler(int signum, siginfo_t *si, void *uc)
>  {
>  	if (current->sig_unsupp && signum == current->sig_unsupp &&
> @@ -167,6 +186,9 @@ static void default_handler(int signum, siginfo_t *si, void *uc)
>  	} else if (current->sig_ok && signum == current->sig_ok &&
>  		   handle_signal_ok(current, si, uc)) {
>  		fprintf(stderr, "Handled SIG_OK\n");
> +	} else if (signum == sig_copyctx && current->live_uc &&
> +		   handle_signal_copyctx(current, si, uc)) {
> +		fprintf(stderr, "Handled SIG_COPYCTX\n");
>  	} else {
>  		if (signum == SIGALRM && current->timeout) {
>  			fprintf(stderr, "-- Timeout !\n");
> @@ -221,6 +243,15 @@ static inline int default_trigger(struct tdescr *td)
>  
>  int test_init(struct tdescr *td)
>  {
> +	if (td->sig_trig == sig_copyctx) {
> +		fprintf(stdout,
> +			"Signal %d is RESERVED, cannot be used as a trigger. Aborting\n",
> +			sig_copyctx);
> +		return 0;
> +	}
> +	/* just in case */
> +	unblock_signal(sig_copyctx);
> +
>  	td->minsigstksz = getauxval(AT_MINSIGSTKSZ);
>  	if (!td->minsigstksz)
>  		td->minsigstksz = MINSIGSTKSZ;
> diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.h b/tools/testing/selftests/arm64/signal/test_signals_utils.h
> index 5e3a2b7aaa8b..fd67b1f23c41 100644
> --- a/tools/testing/selftests/arm64/signal/test_signals_utils.h
> +++ b/tools/testing/selftests/arm64/signal/test_signals_utils.h
> @@ -4,6 +4,10 @@
>  #ifndef __TEST_SIGNALS_UTILS_H__
>  #define __TEST_SIGNALS_UTILS_H__
>  
> +#include <assert.h>
> +#include <stdio.h>
> +#include <string.h>
> +
>  #include "test_signals.h"
>  
>  int test_init(struct tdescr *td);
> @@ -17,4 +21,98 @@ static inline bool feats_ok(struct tdescr *td)
>  	return (td->feats_required & td->feats_supported) == td->feats_required;
>  }
>  
> +/*
> + * Obtaining a valid and full-blown ucontext_t from userspace is tricky:
> + * libc getcontext does() not save all the regs and messes with some of
> + * them (pstate value in particular is not reliable).
> + *
> + * Here we use a service signal to grab the ucontext_t from inside a
> + * dedicated signal handler, since there, it is populated by Kernel
> + * itself in setup_sigframe(). The grabbed context is then stored and
> + * made available in td->live_uc.
> + *
> + * As service-signal is used a SIGTRAP induced by a 'brk' instruction,
> + * because here we have to avoid syscalls to trigger the signal since
> + * they would cause any SVE sigframe content (if any) to be removed.
> + *
> + * Anyway this function really serves a dual purpose:
> + *
> + * 1. grab a valid sigcontext into td->live_uc for result analysis: in
> + * such case it returns 1.
> + *
> + * 2. detect if, somehow, a previously grabbed live_uc context has been
> + * used actively with a sigreturn: in such a case the execution would have
> + * magically resumed in the middle of this function itself (seen_already==1):
> + * in such a case return 0, since in fact we have not just simply grabbed
> + * the context.
> + *
> + * This latter case is useful to detect when a fake_sigreturn test-case has
> + * unexpectedly survived without hitting a SEGV.
> + *
> + * Note that the case of runtime dynamically sized sigframes (like in SVE
> + * context) is still NOT addressed: sigframe size is supposed to be fixed
> + * at sizeof(ucontext_t).
> + */
> +static __always_inline bool get_current_context(struct tdescr *td,
> +						ucontext_t *dest_uc)
> +{
> +	static volatile bool seen_already;
> +
> +	assert(td && dest_uc);
> +	/* it's a genuine invocation..reinit */
> +	seen_already = 0;
> +	td->live_uc_valid = 0;
> +	td->live_sz = sizeof(*dest_uc);
> +	memset(dest_uc, 0x00, td->live_sz);
> +	td->live_uc = dest_uc;
> +	/*
> +	 * Grab ucontext_t triggering a SIGTRAP.
> +	 *
> +	 * Note that:
> +	 * - live_uc_valid is declared volatile sig_atomic_t in
> +	 *   struct tdescr since it will be changed inside the
> +	 *   sig_copyctx handler
> +	 * - the additional 'memory' clobber is there to avoid possible
> +	 *   compiler's assumption on live_uc_valid and the content
> +	 *   pointed by dest_uc, which are all changed inside the signal
> +	 *   handler
> +	 * - BRK causes a debug exception which is handled by the Kernel
> +	 *   and finally causes the SIGTRAP signal to be delivered to this
> +	 *   test thread. Since such delivery happens on the ret_to_user()
> +	 *   /do_notify_resume() debug exception return-path, we are sure
> +	 *   that the registered SIGTRAP handler has been run to completion
> +	 *   before the execution path is restored here: as a consequence
> +	 *   we can be sure that the volatile sig_atomic_t live_uc_valid
> +	 *   carries a meaningful result. Being in a single thread context
> +	 *   we'll also be sure that any access to memory modified by the
> +	 *   handler (namely ucontext_t) will be visible once returned.
> +	 * - note that since we are using a breakpoint instruction here
> +	 *   to cause a SIGTRAP, the ucontext_t grabbed from the signal
> +	 *   handler would naturally contain a PC pointing exactly to this
> +	 *   BRK line, which means that, on return from the signal handler,
> +	 *   or if we place the ucontext_t on the stack to fake a sigreturn,
> +	 *   we'll end up in an infinite loop of BRK-SIGTRAP-handler.
> +	 *   For this reason we take care to artificially move forward the
> +	 *   PC to the next instruction while inside the signal handler.
> +	 */
> +	asm volatile ("brk #666"
> +		      : "+m" (*dest_uc)
> +		      :
> +		      : "memory");
> +
> +	/*
> +	 * If we get here with seen_already==1 it implies the td->live_uc
> +	 * context has been used to get back here....this probably means
> +	 * a test has failed to cause a SEGV...anyway live_uc does not
> +	 * point to a just acquired copy of ucontext_t...so return 0
> +	 */
> +	if (seen_already) {
> +		fprintf(stdout,
> +			"Unexpected successful sigreturn detected: live_uc is stale !\n");
> +		return 0;
> +	}
> +	seen_already = 1;
> +
> +	return td->live_uc_valid;
> +}
>  #endif
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
