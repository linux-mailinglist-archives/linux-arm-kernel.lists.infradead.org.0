Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B15AEA77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K1LUbp2EWhHcuXre5fehGYSY0BxQsF8LoPJHYZe5Uhg=; b=nAk6/8INdKSU39onsMsoCsitps
	6czVL3qJ2kRCrWXxxD7OkM3hJavBr6B4HrXyaIUPUMu1TQQ+8HYqRS0KLBW1rPdVvJ85jS6tAt04D
	GqdFdV9NxYxY25GLe21B2ouixHr/nwZ2VjODWPH2PXyT2hG7xcBdCOwGQ2etd8F2MkxrLND7A1WB0
	6kO2epFlpjveoxIKDY8Q849GEDrIG3zR/k5n3oFR5Sz80w9XPI+u3QZDpXRPFHSjsl3TK7OCbs3kg
	EYlJMXqAGzqk0Og9ZjPl6b5icOvhsr9zIhXG63I6KoQPbbSksPUPAsr+JIVzXRYZq+XjPLjLN/MyQ
	nxDaPhCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fKx-0000q7-DB; Tue, 10 Sep 2019 12:33:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fJA-0008BC-B5
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:31:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EF5A1000;
 Tue, 10 Sep 2019 05:31:43 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B78083F59C;
 Tue, 10 Sep 2019 05:31:42 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v6 05/11] kselftest: arm64: mangle_pstate_ssbs_regs
Date: Tue, 10 Sep 2019 13:31:05 +0100
Message-Id: <20190910123111.33478-6-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910123111.33478-1-cristian.marussi@arm.com>
References: <20190910123111.33478-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_053144_500714_1A1EC293 
X-CRM114-Status: GOOD (  34.27  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a simple mangle testcase which messes with the ucontext_t from within
the signal handler, trying to set the PSTATE SSBS bit and verify that
SSBS bit set is preserved across sigreturn.
When available, use MRS SBSS support to set/get SSBS bit, otherwise lookup
PSTATE.SSBS directly.

Additionally, in order to support this test specific needs:
- extend signal testing framework to allow the definition of a custom
  per test initialization function to be run at the end of test setup
  and before test run routine.
- introduce a set_regval() helper to set system register values in a
  toolchain independent way.
- introduce also a new common utility function: get_current_context()
  which can be used to grab a ucontext without the help of libc, and
  detect if such ucontext has been actively used to jump back.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v5 --> v6
- using SIGTRAP as sig_copyctx for get_current_context()
- get_current_context() is now __always_inline
- last minute check for SSBS cleared
- restore volatile usage, dropping useless DSB
- output clobber on *dest_uc
- no abort() on SSSB not cleared
- refactored/relocated test_init() call to be after test_setup()
  [to catch early SIGILL while initializing]
- avoid MRS SSBS when !feats_ok()...use instead PSTATE.SSBS
- refactored SIG_COPYCTX usage to fit new splitted-by-signal layout
v3 --> v4
- fix commit message
- missing include signal.h
- added .init per-test init-func
- added set_regval() helper
- added SSBS clear to 0 custom .init function
- removed volatile qualifier associated with sig_atomic_t data
- added dsb inside handler to ensure the writes related to the
  grabbed ucontext have completed
- added test description
---
 .../selftests/arm64/signal/test_signals.c     |  2 +-
 .../selftests/arm64/signal/test_signals.h     | 54 ++++++----
 .../arm64/signal/test_signals_utils.c         | 41 +++++++-
 .../arm64/signal/test_signals_utils.h         | 99 +++++++++++++++++++
 .../testcases/mangle_pstate_ssbs_regs.c       | 88 +++++++++++++++++
 5 files changed, 258 insertions(+), 26 deletions(-)
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c

diff --git a/tools/testing/selftests/arm64/signal/test_signals.c b/tools/testing/selftests/arm64/signal/test_signals.c
index cb970346b280..6e4da9c920d4 100644
--- a/tools/testing/selftests/arm64/signal/test_signals.c
+++ b/tools/testing/selftests/arm64/signal/test_signals.c
@@ -19,7 +19,7 @@ int main(int argc, char *argv[])
 	current = &tde;
 
 	ksft_print_msg("%s :: %s\n", current->name, current->descr);
-	if (test_setup(current)) {
+	if (test_setup(current) && test_init(current)) {
 		test_run(current);
 		test_result(current);
 		test_cleanup(current);
diff --git a/tools/testing/selftests/arm64/signal/test_signals.h b/tools/testing/selftests/arm64/signal/test_signals.h
index 0dd71700ff67..753fe64cbe11 100644
--- a/tools/testing/selftests/arm64/signal/test_signals.h
+++ b/tools/testing/selftests/arm64/signal/test_signals.h
@@ -27,6 +27,14 @@
 	: "memory");					\
 }
 
+#define set_regval(regname, in)				\
+{							\
+	asm volatile("msr " __stringify(regname) ", %0" \
+	:						\
+	: "r" (in)					\
+	: "memory");					\
+}
+
 /* Regs encoding and masks naming copied in from sysreg.h */
 #define SYS_ID_AA64MMFR1_EL1	S3_0_C0_C7_1	/* MRS Emulated */
 #define SYS_ID_AA64MMFR2_EL1	S3_0_C0_C7_2	/* MRS Emulated */
@@ -62,39 +70,47 @@ enum {
  */
 struct tdescr {
 	/* KEEP THIS FIELD FIRST for easier lookup from assembly */
-	void		*token;
+	void			*token;
 	/* when disabled token based sanity checking is skipped in handler */
-	bool		sanity_disabled;
+	bool			sanity_disabled;
 	/* just a name for the test-case; manadatory field */
-	char		*name;
-	char		*descr;
-	unsigned long	feats_required;
+	char			*name;
+	char			*descr;
+	unsigned long		feats_required;
 	/* bitmask of effectively supported feats: populated at run-time */
-	unsigned long	feats_supported;
-	bool		initialized;
-	unsigned int	minsigstksz;
+	unsigned long		feats_supported;
+	bool			initialized;
+	unsigned int		minsigstksz;
 	/* signum used as a test trigger. Zero if no trigger-signal is used */
-	int		sig_trig;
+	int			sig_trig;
 	/*
 	 * signum considered as a successful test completion.
 	 * Zero when no signal is expected on success
 	 */
-	int		sig_ok;
+	int			sig_ok;
 	/* signum expected on unsupported CPU features. */
-	int		sig_unsupp;
+	int			sig_unsupp;
 	/* a timeout in second for test completion */
-	unsigned int	timeout;
-	bool		triggered;
-	bool		pass;
+	unsigned int		timeout;
+	bool			triggered;
+	bool			pass;
 	/* optional sa_flags for the installed handler */
-	int		sa_flags;
-	ucontext_t	saved_uc;
+	int			sa_flags;
+	ucontext_t		saved_uc;
+	/* used by get_current_ctx() */
+	size_t			live_sz;
+	ucontext_t		*live_uc;
 
-	/* a custom setup function to be called before test starts */
+	volatile sig_atomic_t	live_uc_valid;
+	/* optional test private data */
+	void			*priv;
+	/* a custom setup: called alternatively to default_setup */
 	int (*setup)(struct tdescr *td);
+	/* a custom init: called by default test init after test_setup */
+	void (*init)(struct tdescr *td);
 	/* a custom cleanup function called before test exits */
 	void (*cleanup)(struct tdescr *td);
-	/* an optional function to be used as a trigger for test starting */
+	/* an optional function to be used as a trigger for starting test */
 	int (*trigger)(struct tdescr *td);
 	/*
 	 * the actual test-core: invoked differently depending on the
@@ -103,8 +119,6 @@ struct tdescr {
 	int (*run)(struct tdescr *td, siginfo_t *si, ucontext_t *uc);
 	/* an optional function for custom results' processing */
 	void (*check_result)(struct tdescr *td);
-
-	void *priv;
 };
 
 extern struct tdescr tde;
diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.c b/tools/testing/selftests/arm64/signal/test_signals_utils.c
index 7324e8a7f47f..133105755683 100644
--- a/tools/testing/selftests/arm64/signal/test_signals_utils.c
+++ b/tools/testing/selftests/arm64/signal/test_signals_utils.c
@@ -4,19 +4,22 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <signal.h>
-#include <string.h>
 #include <unistd.h>
 #include <assert.h>
 #include <sys/auxv.h>
 #include <linux/auxvec.h>
 #include <ucontext.h>
 
+#include <asm/unistd.h>
+
 #include "test_signals.h"
 #include "test_signals_utils.h"
 #include "testcases/testcases.h"
 
 extern struct tdescr *current;
 
+static int sig_copyctx = SIGTRAP;
+
 static char const *const feats_names[FMAX_END] = {
 	" SSBS ",
 	" PAN ",
@@ -148,6 +151,20 @@ static bool handle_signal_ok(struct tdescr *td,
 	return true;
 }
 
+static bool handle_signal_copyctx(struct tdescr *td,
+				  siginfo_t *si, void *uc)
+{
+	/* Mangling PC to avoid loops on original BRK instr */
+	((ucontext_t *)uc)->uc_mcontext.pc += 4;
+	memcpy(td->live_uc, uc, td->live_sz);
+	ASSERT_GOOD_CONTEXT(td->live_uc);
+	td->live_uc_valid = 1;
+	fprintf(stderr,
+		"GOOD CONTEXT grabbed from sig_copyctx handler\n");
+
+	return true;
+}
+
 static void default_handler(int signum, siginfo_t *si, void *uc)
 {
 	if (current->sig_unsupp && signum == current->sig_unsupp &&
@@ -159,6 +176,9 @@ static void default_handler(int signum, siginfo_t *si, void *uc)
 	} else if (current->sig_ok && signum == current->sig_ok &&
 		   handle_signal_ok(current, si, uc)) {
 		fprintf(stderr, "Handled SIG_OK\n");
+	} else if (signum == sig_copyctx && current->live_uc &&
+		   handle_signal_copyctx(current, si, uc)) {
+		fprintf(stderr, "Handled SIG_COPYCTX\n");
 	} else {
 		if (signum == SIGALRM && current->timeout) {
 			fprintf(stderr, "-- Timeout !\n");
@@ -211,8 +231,17 @@ static inline int default_trigger(struct tdescr *td)
 	return !raise(td->sig_trig);
 }
 
-static int test_init(struct tdescr *td)
+int test_init(struct tdescr *td)
 {
+	if (td->sig_trig == sig_copyctx) {
+		fprintf(stdout,
+			"Signal %d is RESERVED, cannot be used as a trigger. Aborting\n",
+			sig_copyctx);
+		return 0;
+	}
+	/* just in case */
+	unblock_signal(sig_copyctx);
+
 	td->minsigstksz = getauxval(AT_MINSIGSTKSZ);
 	if (!td->minsigstksz)
 		td->minsigstksz = MINSIGSTKSZ;
@@ -253,7 +282,12 @@ static int test_init(struct tdescr *td)
 						~td->feats_supported));
 	}
 
+	/* Perform test specific additional initialization */
+	if (td->init)
+		td->init(td);
 	td->initialized = 1;
+	fprintf(stderr, "Testcase initialized.\n");
+
 	return 1;
 }
 
@@ -265,9 +299,6 @@ int test_setup(struct tdescr *td)
 	assert(td->name);
 	assert(td->run);
 
-	if (!test_init(td))
-		return 0;
-
 	if (td->setup)
 		return td->setup(td);
 	else
diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.h b/tools/testing/selftests/arm64/signal/test_signals_utils.h
index 47a7592b7c53..3ad062af1fa7 100644
--- a/tools/testing/selftests/arm64/signal/test_signals_utils.h
+++ b/tools/testing/selftests/arm64/signal/test_signals_utils.h
@@ -4,8 +4,13 @@
 #ifndef __TEST_SIGNALS_UTILS_H__
 #define __TEST_SIGNALS_UTILS_H__
 
+#include <assert.h>
+#include <stdio.h>
+#include <string.h>
+
 #include "test_signals.h"
 
+int test_init(struct tdescr *td);
 int test_setup(struct tdescr *td);
 void test_cleanup(struct tdescr *td);
 int test_run(struct tdescr *td);
@@ -16,4 +21,98 @@ static inline bool feats_ok(struct tdescr *td)
 	return (td->feats_required & td->feats_supported) == td->feats_required;
 }
 
+/*
+ * Obtaining a valid and full-blown ucontext_t from userspace is tricky:
+ * libc getcontext does() not save all the regs and messes with some of
+ * them (pstate value in particular is not reliable).
+ *
+ * Here we use a service signal to grab the ucontext_t from inside a
+ * dedicated signal handler, since there, it is populated by Kernel
+ * itself in setup_sigframe(). The grabbed context is then stored and
+ * made available in td->live_uc.
+ *
+ * As service-signal is used a SIGTRAP induced by a 'brk' instruction,
+ * because here we have to avoid syscalls to trigger the signal since
+ * they would cause any SVE sigframe content (if any) to be removed.
+ *
+ * Anyway this function really serves a dual purpose:
+ *
+ * 1. grab a valid sigcontext into td->live_uc for result analysis: in
+ * such case it returns 1.
+ *
+ * 2. detect if, somehow, a previously grabbed live_uc context has been
+ * used actively with a sigreturn: in such a case the execution would have
+ * magically resumed in the middle of this function itself (seen_already==1):
+ * in such a case return 0, since in fact we have not just simply grabbed
+ * the context.
+ *
+ * This latter case is useful to detect when a fake_sigreturn test-case has
+ * unexpectedly survived without hitting a SEGV.
+ *
+ * Note that the case of runtime dynamically sized sigframes (like in SVE
+ * context) is still NOT addressed: sigframe size is supposed to be fixed
+ * at sizeof(ucontext_t).
+ */
+static __always_inline bool get_current_context(struct tdescr *td,
+						ucontext_t *dest_uc)
+{
+	static volatile bool seen_already;
+
+	assert(td && dest_uc);
+	/* it's a genuine invocation..reinit */
+	seen_already = 0;
+	td->live_uc_valid = 0;
+	td->live_sz = sizeof(*dest_uc);
+	memset(dest_uc, 0x00, td->live_sz);
+	td->live_uc = dest_uc;
+	/*
+	 * Grab ucontext_t triggering a SIGTRAP.
+	 *
+	 * Note that:
+	 * - live_uc_valid is declared volatile sig_atomic_t in
+	 *   struct tdescr since it will be changed inside the
+	 *   sig_copyctx handler
+	 * - the additional 'memory' clobber is there to avoid possible
+	 *   compiler's assumption on live_uc_valid, seen-already and
+	 *   the content pointed by dest_uc, which are all changed inside
+	 *   the signal handler
+	 * - BRK causes a debug exception which is handled by the Kernel
+	 *   and finally causes the SIGTRAP signal to be delivered to this
+	 *   test thread. Since such delivery happens on the ret_to_user()
+	 *   /do_notify_resume() debug exception return-path, we are sure
+	 *   that the registered SIGTRAP handler has been run to completion
+	 *   before the execution path is restored here: as a consequence
+	 *   we can be sure that the volatile sig_atomic_t live_uc_valid
+	 *   carries a meaningful result. Being in a single thread context
+	 *   we'll also be sure that any access to memory modified by the
+	 *   handler (namely ucontext_t) will be visible once returned.
+	 * - note that since we are using a breakpoint instruction here
+	 *   to cause a SIGTRAP, the ucontext_t grabbed from the signal
+	 *   handler would naturally contain a PC pointing exactly to this
+	 *   BRK line, which means that, on return from the signal handler,
+	 *   or if we place the ucontext_t on the stack to fake a sigreturn,
+	 *   we'll end up in an infinite loop of BRK-SIGTRAP-handler.
+	 *   For this reason we take care to artificially move forward the
+	 *   PC to the next instruction while inside the signal handler.
+	 */
+	asm volatile ("brk #666"
+		      : "=m" (*dest_uc)
+		      :
+		      : "memory");
+
+	/*
+	 * If we get here with seen_already==1 it implies the td->live_uc
+	 * context has been used to get back here....this probably means
+	 * a test has failed to cause a SEGV...anyway live_uc does not
+	 * point to a just acquired copy of ucontext_t...so return 0
+	 */
+	if (seen_already) {
+		fprintf(stdout,
+			"Unexpected successful sigreturn detected: live_uc is stale !\n");
+		return 0;
+	}
+	seen_already = 1;
+
+	return td->live_uc_valid;
+}
 #endif
diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
new file mode 100644
index 000000000000..e2b87ea4c11f
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_ssbs_regs.c
@@ -0,0 +1,88 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Try to mangle the ucontext from inside a signal handler, setting the
+ * SSBS bit to 1 and veryfing that such modification is preserved.
+ */
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <signal.h>
+#include <ucontext.h>
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+static void mangle_invalid_pstate_ssbs_init(struct tdescr *td)
+{
+	if (feats_ok(td)) {
+		fprintf(stderr, "Clearing SSBS to 0\n");
+		set_regval(SSBS_SYSREG, 0);
+	}
+}
+
+static int mangle_invalid_pstate_ssbs_run(struct tdescr *td,
+					  siginfo_t *si, ucontext_t *uc)
+{
+	ASSERT_GOOD_CONTEXT(uc);
+
+	/*
+	 * If HW_SSBS is supported but we weren't able to clear SSBS during
+	 * test_init, or if something has reset SSBS in the meantime, abort.
+	 */
+	if (feats_ok(td) && (uc->uc_mcontext.pstate & PSR_SSBS_BIT)) {
+		fprintf(stderr,
+			"SSBS unexpectedly NOT zeroed ! Something's wrong. Abort\n");
+		abort();
+	}
+
+	/* set bit value ... should NOT be cleared by Kernel on sigreturn */
+	uc->uc_mcontext.pstate |= PSR_SSBS_BIT;
+	fprintf(stderr, "SSBS set to 1 -- PSTATE: 0x%016llX\n",
+		uc->uc_mcontext.pstate);
+	/* Save after mangling...it should be preserved */
+	td->saved_uc = *uc;
+
+	return 1;
+}
+
+static void pstate_ssbs_bit_checks(struct tdescr *td)
+{
+	uint64_t val = 0;
+	ucontext_t uc;
+
+	/* This check reports some result even if MRS SSBS unsupported */
+	if (get_current_context(td, &uc))
+		fprintf(stderr,
+			"INFO: live_uc - got PSTATE: 0x%016llX -> SSBS %s\n",
+			uc.uc_mcontext.pstate,
+			(td->saved_uc.uc_mcontext.pstate & PSR_SSBS_BIT) ==
+			(uc.uc_mcontext.pstate & PSR_SSBS_BIT) ?
+			"PRESERVED" : "CLEARED");
+
+	/* Choose check method depending of supported features */
+	if (feats_ok(td)) {
+		fprintf(stderr, "Checking with MRS SSBS...\n");
+		get_regval(SSBS_SYSREG, val);
+		fprintf(stderr, "INFO: MRS SSBS - got: 0x%016lX\n", val);
+	} else {
+		fprintf(stderr, "Checking with PSTATE.SSBS...\n");
+		val = uc.uc_mcontext.pstate;
+	}
+	/* pass when preserved */
+	td->pass = (val & PSR_SSBS_BIT) ==
+		   (td->saved_uc.uc_mcontext.pstate & PSR_SSBS_BIT);
+}
+
+struct tdescr tde = {
+		.sanity_disabled = true,
+		.name = "MANGLE_PSTATE_SSBS_REGS",
+		.descr = "Mangle uc_mcontext setting SSBS bit.(MUST PRESERVE)",
+		.feats_required = FEAT_SSBS,
+		.sig_trig = SIGUSR1,
+		.sig_unsupp = SIGILL,
+		.init = mangle_invalid_pstate_ssbs_init,
+		.run = mangle_invalid_pstate_ssbs_run,
+		.check_result = pstate_ssbs_bit_checks,
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
