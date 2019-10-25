Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C67E52E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:01:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2e5Ay141XHiQyoSDSdmyS0YB9XIydsZzxWF/IXAoYm8=; b=q8gDIqqQYEktek0pIPOKJaY2+M
	E3ensZ3fzMKN4/XbdiUPTaDAHRra00WxLG1sylsU1eQt5fGa5Q3/XgQnS5x0yxhdaBiRSCCpOk/A0
	P9Us5ynnNi5Wc95PtsipsSNR+XBh4ct8Alo35RxeWCk82oW32MldwpWOgHEAJ1zt3yuBBC8YLMF1e
	Plr4tbcvnEduwbip3uLSSyEaGV/CyHIpZtsk9J1JcwFSc6dD0Ye+zroABtYsVFpAr51qgymenIBf6
	c8Vx5G2/9MbOsCqiG9MLN746hxC8a2gSKSKcUJnkiGRgfKh9a/kTtqa4K7xGA1rHsYowkS66qzcTU
	NPEB9OSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3tf-0007Qx-NO; Fri, 25 Oct 2019 18:01:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3qq-000491-RE
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:58:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69BBE493;
 Fri, 25 Oct 2019 10:58:16 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 62F543F6C4;
 Fri, 25 Oct 2019 10:58:15 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v10 05/12] kselftest: arm64: extend test_init functionalities
Date: Fri, 25 Oct 2019 18:57:10 +0100
Message-Id: <20191025175717.15154-6-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191025175717.15154-1-cristian.marussi@arm.com>
References: <20191025175717.15154-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105817_000437_A4EE729B 
X-CRM114-Status: GOOD (  17.10  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, dave.martin@arm.com,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extend signal testing framework to allow the definition of a custom per
test initialization function to be run at the end of the common test_init
after test setup phase has completed and before test-run routine.

This custom per-test initialization function also enables the test writer
to decide on its own when forcibly skip the test itself using standard KSFT
mechanism.

Reviewed-by: Dave Martin <Dave.Martin@arm.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v9 --> v10
- resolving conflicts due to [v10 2/12] removal of feats tests
v7 --> v8
- per test .init() helper added new in v8 (splitted out of v7 05/11)
---
 .../selftests/arm64/signal/test_signals.c     |  6 ++--
 .../selftests/arm64/signal/test_signals.h     |  7 +++--
 .../arm64/signal/test_signals_utils.c         | 30 ++++++++++++++-----
 .../arm64/signal/test_signals_utils.h         |  1 +
 4 files changed, 31 insertions(+), 13 deletions(-)

diff --git a/tools/testing/selftests/arm64/signal/test_signals.c b/tools/testing/selftests/arm64/signal/test_signals.c
index cb970346b280..416b1ff43199 100644
--- a/tools/testing/selftests/arm64/signal/test_signals.c
+++ b/tools/testing/selftests/arm64/signal/test_signals.c
@@ -19,11 +19,11 @@ int main(int argc, char *argv[])
 	current = &tde;
 
 	ksft_print_msg("%s :: %s\n", current->name, current->descr);
-	if (test_setup(current)) {
+	if (test_setup(current) && test_init(current)) {
 		test_run(current);
-		test_result(current);
 		test_cleanup(current);
 	}
+	test_result(current);
 
-	return current->pass ? KSFT_PASS : KSFT_FAIL;
+	return current->result;
 }
diff --git a/tools/testing/selftests/arm64/signal/test_signals.h b/tools/testing/selftests/arm64/signal/test_signals.h
index d730e9041da9..c431e7b3e46c 100644
--- a/tools/testing/selftests/arm64/signal/test_signals.h
+++ b/tools/testing/selftests/arm64/signal/test_signals.h
@@ -68,17 +68,20 @@ struct tdescr {
 	unsigned int		timeout;
 	bool			triggered;
 	bool			pass;
+	unsigned int		result;
 	/* optional sa_flags for the installed handler */
 	int			sa_flags;
 	ucontext_t		saved_uc;
 	/* optional test private data */
 	void                    *priv;
 
-	/* a custom setup function to be called before test starts */
+	/* a custom setup: called alternatively to default_setup */
 	int (*setup)(struct tdescr *td);
+	/* a custom init: called by default test init after test_setup */
+	bool (*init)(struct tdescr *td);
 	/* a custom cleanup function called before test exits */
 	void (*cleanup)(struct tdescr *td);
-	/* an optional function to be used as a trigger for test starting */
+	/* an optional function to be used as a trigger for starting test */
 	int (*trigger)(struct tdescr *td);
 	/*
 	 * the actual test-core: invoked differently depending on the
diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.c b/tools/testing/selftests/arm64/signal/test_signals_utils.c
index fbce41750590..76eaa505a789 100644
--- a/tools/testing/selftests/arm64/signal/test_signals_utils.c
+++ b/tools/testing/selftests/arm64/signal/test_signals_utils.c
@@ -11,6 +11,8 @@
 #include <linux/auxvec.h>
 #include <ucontext.h>
 
+#include <kselftest.h>
+
 #include "test_signals.h"
 #include "test_signals_utils.h"
 #include "testcases/testcases.h"
@@ -52,12 +54,18 @@ static void unblock_signal(int signum)
 
 static void default_result(struct tdescr *td, bool force_exit)
 {
-	if (td->pass)
+	if (td->result == KSFT_SKIP) {
+		fprintf(stderr, "==>> completed. SKIP.\n");
+	} else if (td->pass) {
 		fprintf(stderr, "==>> completed. PASS(1)\n");
-	else
+		td->result = KSFT_PASS;
+	} else {
 		fprintf(stdout, "==>> completed. FAIL(0)\n");
+		td->result = KSFT_FAIL;
+	}
+
 	if (force_exit)
-		exit(td->pass ? EXIT_SUCCESS : EXIT_FAILURE);
+		exit(td->result);
 }
 
 /*
@@ -209,7 +217,7 @@ static inline int default_trigger(struct tdescr *td)
 	return !raise(td->sig_trig);
 }
 
-static int test_init(struct tdescr *td)
+int test_init(struct tdescr *td)
 {
 	td->minsigstksz = getauxval(AT_MINSIGSTKSZ);
 	if (!td->minsigstksz)
@@ -236,7 +244,14 @@ static int test_init(struct tdescr *td)
 						~td->feats_supported));
 	}
 
+	/* Perform test specific additional initialization */
+	if (td->init && !td->init(td)) {
+		fprintf(stderr, "FAILED Testcase initialization.\n");
+		return 0;
+	}
 	td->initialized = 1;
+	fprintf(stderr, "Testcase initialized.\n");
+
 	return 1;
 }
 
@@ -248,9 +263,8 @@ int test_setup(struct tdescr *td)
 	assert(td->name);
 	assert(td->run);
 
-	if (!test_init(td))
-		return 0;
-
+	/* Default result is FAIL if test setup fails */
+	td->result = KSFT_FAIL;
 	if (td->setup)
 		return td->setup(td);
 	else
@@ -271,7 +285,7 @@ int test_run(struct tdescr *td)
 
 void test_result(struct tdescr *td)
 {
-	if (td->check_result)
+	if (td->initialized && td->result != KSFT_SKIP && td->check_result)
 		td->check_result(td);
 	default_result(td, 0);
 }
diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.h b/tools/testing/selftests/arm64/signal/test_signals_utils.h
index 47a7592b7c53..5e3a2b7aaa8b 100644
--- a/tools/testing/selftests/arm64/signal/test_signals_utils.h
+++ b/tools/testing/selftests/arm64/signal/test_signals_utils.h
@@ -6,6 +6,7 @@
 
 #include "test_signals.h"
 
+int test_init(struct tdescr *td);
 int test_setup(struct tdescr *td);
 void test_cleanup(struct tdescr *td);
 int test_run(struct tdescr *td);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
