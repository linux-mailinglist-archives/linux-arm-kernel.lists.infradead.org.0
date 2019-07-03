Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0835E959
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9MtKpSOf1iSJ1gyH6hqnuZ5EyHN0AeVDpE/6l0p9Jmg=; b=S3dS2HIpC2TMskvbXnfdbHwqel
	KsZh5N5+g1F8BwHpeqAyLM7NDzkxwgbSfvUTDyaRz2Qnjb55hvhOH+A1raqZ9ZdaIcLkLqM5pBgQI
	nmNP/9D2UYyCSIfHjfMyd2+m66Zq/TMVCwNkocnTFSrm+WDVR61kI7ldT9P0g34Yiu+khhhWHUORy
	YAnxyZDcTt7i/YQWaHw18b1ef5fHKa+xFVW/rm/hmd9w+bpYWAXYauy6A/UeDwBcOJm+slpT1lcJA
	fkphxE0JMeVA88/hKYg+5/0NXj7K/aWzAzsw8oob1X/LMdI1oEKXKE8UTl1aONJevsznkhz0miaQp
	hhxz4NuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiGf-0004Gj-HX; Wed, 03 Jul 2019 16:38:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiF1-00036p-QY
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 16:36:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 869BD360;
 Wed,  3 Jul 2019 09:36:19 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B9A033F718;
 Wed,  3 Jul 2019 09:36:18 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v2 06/10] kselftest: arm64: fake_sigreturn_bad_magic
Date: Wed,  3 Jul 2019 17:35:28 +0100
Message-Id: <20190703163532.7485-7-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703163532.7485-1-cristian.marussi@arm.com>
References: <20190703163532.7485-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_093619_994829_6B1174FB 
X-CRM114-Status: GOOD (  15.97  )
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
Cc: andreyknvl@google.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Added a simple fake_sigreturn testcase which builds a ucontext_t
with a bad magic header and place it onto the stack.
Expects a SIGSEGV on test PASS.
This commit also introduces a common utility assembly function to
invoke a sigreturn using a fake provided sigframe.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 tools/testing/selftests/arm64/signal/Makefile |  2 +-
 .../testing/selftests/arm64/signal/signals.S  | 64 +++++++++++++++++++
 .../arm64/signal/test_signals_utils.h         |  1 +
 .../arm64/signal/testcases/.gitignore         |  1 +
 .../testcases/fake_sigreturn_bad_magic.c      | 63 ++++++++++++++++++
 5 files changed, 130 insertions(+), 1 deletion(-)
 create mode 100644 tools/testing/selftests/arm64/signal/signals.S
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c

diff --git a/tools/testing/selftests/arm64/signal/Makefile b/tools/testing/selftests/arm64/signal/Makefile
index 5ec92a4dba48..fbef7986f8c8 100644
--- a/tools/testing/selftests/arm64/signal/Makefile
+++ b/tools/testing/selftests/arm64/signal/Makefile
@@ -78,7 +78,7 @@ endif
 # Common test-unit targets to build common-layout test-cases executables
 # Needs secondary expansion to properly include the testcase c-file in pre-reqs
 .SECONDEXPANSION:
-$(PROGS): test_signals.c test_signals_utils.c testcases/testcases.c $$@.c test_signals.h test_signals_utils.h testcases/testcases.h
+$(PROGS): test_signals.c test_signals_utils.c testcases/testcases.c signals.S $$@.c test_signals.h test_signals_utils.h testcases/testcases.h
 	@if [ ! -d $(khdr_dir) ]; then \
 		echo -n "\n!!! WARNING: $(khdr_dir) NOT FOUND."; \
 		echo "===>  Are you sure Kernel Headers have been installed properly ?\n"; \
diff --git a/tools/testing/selftests/arm64/signal/signals.S b/tools/testing/selftests/arm64/signal/signals.S
new file mode 100644
index 000000000000..6262b877400b
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/signals.S
@@ -0,0 +1,64 @@
+/*
+ * SPDX-License-Identifier: GPL-2.0
+ * Copyright (C) 2019 ARM Limited
+ */
+
+#include <asm/unistd.h>
+
+.section        ".rodata", "a"
+call_fmt:
+	.asciz "Calling sigreturn with fake sigframe sized:%zd at calculated SP @%08lX\n"
+
+.text
+
+.globl fake_sigreturn
+
+/*	fake_sigreturn	x0:&sigframe,  x1:sigframe_size,  x2:alignment_SP */
+fake_sigreturn:
+	mov x20, x0
+	mov x21, x1
+	mov x22, x2
+	mov x23, sp
+
+	/* create space on the stack for fake sigframe..."x22"-aligned */
+	mov x0, #0
+	add x0, x21, x22
+	sub x22, x22, #1
+	bic x0, x0, x22
+	sub x23, x23, x0
+
+	ldr x0, =call_fmt
+	mov x1, x21
+	mov x2, x23
+	bl printf
+
+	mov sp, x23
+
+	/* now fill it with the provided content... */
+	mov x0, sp
+	mov x1, x20
+	mov x2, x21
+	bl memcpy
+
+	/*
+	 * Here saving a last minute SP to current->token acts as a marker:
+	 * if we got here, we are successfully faking a sigreturn; in other
+	 * words we are sure no bad fatal signal has been raised till now
+	 * for unrelated reasons, so we should consider the possibl observed
+	 * fatal signal like SEGV coming from Kernel restore_sigframe() and
+	 * triggered as expected from our test-case.
+	 * For simplicity this assumes that current field 'token' is laid out
+	 * as first in struct tdescr
+	 */
+	ldr x0, current
+	str x23, [x0]
+	/* SP is already pointing back to the just built fake sigframe here */
+	mov x8, #__NR_rt_sigreturn
+	svc #0
+
+	/*
+	 * Above sigreturn should not return...looping here leads to a timeout
+	 * and ensure proper and clean test failure, instead of jumping around
+	 * on a potentially corrupted stack.
+	 */
+	b .
diff --git a/tools/testing/selftests/arm64/signal/test_signals_utils.h b/tools/testing/selftests/arm64/signal/test_signals_utils.h
index b37167c98ccd..cdf3018aa1aa 100644
--- a/tools/testing/selftests/arm64/signal/test_signals_utils.h
+++ b/tools/testing/selftests/arm64/signal/test_signals_utils.h
@@ -27,4 +27,5 @@ int test_run(struct tdescr *td);
 void test_result(struct tdescr *td);
 
 bool get_current_context(struct tdescr *td, ucontext_t *dest_uc);
+int fake_sigreturn(void *sigframe, size_t sz, int alignment);
 #endif
diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
index a48a118b1a1a..0ea6fdc3765c 100644
--- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
+++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
@@ -4,3 +4,4 @@ mangle_pstate_invalid_mode_el1
 mangle_pstate_invalid_mode_el2
 mangle_pstate_invalid_mode_el3
 mangle_pstate_ssbs_regs
+fake_sigreturn_bad_magic
diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
new file mode 100644
index 000000000000..b4c063e02a7a
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
@@ -0,0 +1,63 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 ARM Limited */
+
+#include <stdio.h>
+#include <ucontext.h>
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+struct fake_sigframe sf;
+
+static int fake_sigreturn_bad_magic_run(struct tdescr *td,
+					siginfo_t *si, ucontext_t *uc)
+{
+	size_t resv_sz, offset;
+	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
+
+	/* just to fill the ucontext_t with something real */
+	if (!get_current_context(td, &sf.uc))
+		return 1;
+
+	resv_sz = GET_SF_RESV_SIZE(sf);
+	/*
+	 * find the terminator, preserving existing headers
+	 * and verify amount of spare room in __reserved area.
+	 */
+	head = get_terminator(shead, resv_sz, &offset);
+	/*
+	 * try stripping extra_context header when low on space:
+	 * we need at least 2*HDR_SZ space ... one for the KSFT_BAD_MAGIC
+	 * and the other for the usual terminator.
+	 */
+	if (head && resv_sz - offset < HDR_SZ * 2) {
+		fprintf(stderr, "Low on space:%zd. Discarding extra_context.\n",
+			resv_sz - offset);
+		head = get_header(shead, EXTRA_MAGIC, resv_sz, &offset);
+	}
+	/* just give up and timeout if still not enough space */
+	if (head && resv_sz - offset >= HDR_SZ) {
+		fprintf(stderr, "Mangling template header. Spare space:%zd\n",
+			resv_sz - offset);
+		/*
+		 * use a well known NON existent bad magic...something
+		 * we should pretty sure won't be ever defined in Kernel
+		 */
+		head->magic = KSFT_BAD_MAGIC;
+		head->size = HDR_SZ;
+		write_terminator_record(GET_RESV_NEXT_HEAD(head));
+
+		ASSERT_BAD_CONTEXT(&sf.uc);
+		fake_sigreturn(&sf, sizeof(sf), 16);
+	}
+
+	return 1;
+}
+
+struct tdescr tde = {
+		.name = "FAKE_SIGRETURN_BAD_MAGIC",
+		.descr = "Triggers a fake sigreturn with a sigframe including a bad non-existent magic",
+		.sig_ok = SIGSEGV,
+		.timeout = 3,
+		.run = fake_sigreturn_bad_magic_run,
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
