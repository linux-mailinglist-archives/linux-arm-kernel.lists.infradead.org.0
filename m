Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1506A3C6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nQBqpgxvIZsP4NcHu1qiDmpcpAeD4UjYSTp/6h6qOu0=; b=hAS/GZh5LH1yUwU2LYOY89Z3aj
	Vk4ZSo3+atkcVIvR+48Piwzo8KHafRkJY2L/iv/UGu9h/VGwOaSULkUX3SMt3wEyST8++5yT8XHI4
	ZetVN99lSR3dCYK4ypFmNTdDKMaLHMMe1L8YAA43EbI/xYOBDkygwnY2LAnhmwEs9kZOpYN8D+2hm
	32VhS2ls+qFddbDlIMJfDMNc2JulDn+N6AeQG8co5BJITkiQwXg4q2Y+NdJJAVzWKMX+dGeiSXe9E
	EpkeblmbH4J1jqvUO4pEX9qlkg23ujso8o/RmHO9ElrEOgXPw4nZZoXN/hxMJ5BPHCIRNslO8wAY6
	VhIT3snQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k1W-0004LJ-DZ; Fri, 30 Aug 2019 16:45:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jzx-0002zd-LU
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:43:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E20E7344;
 Fri, 30 Aug 2019 09:43:40 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 05AD93F718;
 Fri, 30 Aug 2019 09:43:39 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v4 06/11] kselftest: arm64: fake_sigreturn_bad_magic
Date: Fri, 30 Aug 2019 17:42:43 +0100
Message-Id: <20190830164248.16238-7-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830164248.16238-1-cristian.marussi@arm.com>
References: <20190830164248.16238-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_094341_895876_DF8A2365 
X-CRM114-Status: GOOD (  17.57  )
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

Add a simple fake_sigreturn testcase which builds a ucontext_t with a bad
magic header and place it onto the stack. Expects a SIGSEGV on test PASS.

Introduce a common utility assembly trampoline function to invoke a
sigreturn while placing the provided sigframe at wanted alignment and
also an helper to make space when needed inside the sigframe reserved
area.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v3 --> v4
- fix commit
- fix signal.S, handle misalign requests too
- remove unneeded comments
- add signal.h include
- added get_starting_head() helper
- added test description
---
 tools/testing/selftests/arm64/signal/Makefile |  2 +-
 .../testing/selftests/arm64/signal/signals.S  | 62 +++++++++++++++++++
 .../arm64/signal/test_signals_utils.h         |  1 +
 .../testcases/fake_sigreturn_bad_magic.c      | 54 ++++++++++++++++
 .../arm64/signal/testcases/testcases.c        | 28 +++++++++
 .../arm64/signal/testcases/testcases.h        |  4 ++
 6 files changed, 150 insertions(+), 1 deletion(-)
 create mode 100644 tools/testing/selftests/arm64/signal/signals.S
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c

diff --git a/tools/testing/selftests/arm64/signal/Makefile b/tools/testing/selftests/arm64/signal/Makefile
index 852f0a73ca00..11af7b843d8e 100644
--- a/tools/testing/selftests/arm64/signal/Makefile
+++ b/tools/testing/selftests/arm64/signal/Makefile
@@ -42,7 +42,7 @@ clean:
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
index 000000000000..b89fec0d5ba0
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/signals.S
@@ -0,0 +1,62 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 ARM Limited */
+
+#include <asm/unistd.h>
+
+.section        .rodata, "a"
+call_fmt:
+	.asciz "Calling sigreturn with fake sigframe sized:%zd at SP @%08lX\n"
+
+.text
+
+.globl fake_sigreturn
+
+/*	fake_sigreturn	x0:&sigframe,  x1:sigframe_size,  x2:misalign_bytes */
+fake_sigreturn:
+	mov x20, x0
+	mov x21, x1
+	mov x22, x2
+	mov x23, sp
+
+	/* create space on the stack for fake sigframe 16 bytes-aligned */
+	add x0, x21, #16
+	bic x0, x0, #15
+	sub x23, x23, x0
+	/* any misalignment requested ? */
+	add x23, x23, x22
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
+	 * for unrelated reasons, so we should consider the possibly observed
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
index ce35be8ebc8e..68930f1e46e5 100644
--- a/tools/testing/selftests/arm64/signal/test_signals_utils.h
+++ b/tools/testing/selftests/arm64/signal/test_signals_utils.h
@@ -12,4 +12,5 @@ int test_run(struct tdescr *td);
 void test_result(struct tdescr *td);
 
 bool get_current_context(struct tdescr *td, ucontext_t *dest_uc);
+int fake_sigreturn(void *sigframe, size_t sz, int misalign_bytes);
 #endif
diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
new file mode 100644
index 000000000000..7fb700b9801b
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_magic.c
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Place a fake sigframe on the stack including a BAD Unknown magic
+ * record: on sigreturn Kernel must spot this attempt and the test
+ * case is expected to be terminated via SEGV.
+ */
+
+#include <signal.h>
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
+	size_t resv_sz, need_sz;
+	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
+
+	/* just to fill the ucontext_t with something real */
+	if (!get_current_context(td, &sf.uc))
+		return 1;
+
+	resv_sz = GET_SF_RESV_SIZE(sf);
+	/* need at least 2*HDR_SZ space: KSFT_BAD_MAGIC + terminator. */
+	need_sz = HDR_SZ * 2;
+	head = get_starting_head(shead, need_sz, resv_sz, NULL);
+	if (head) {
+		/*
+		 * use a well known NON existent bad magic...something
+		 * we should pretty sure won't be ever defined in Kernel
+		 */
+		head->magic = KSFT_BAD_MAGIC;
+		head->size = HDR_SZ;
+		write_terminator_record(GET_RESV_NEXT_HEAD(head));
+
+		ASSERT_BAD_CONTEXT(&sf.uc);
+		fake_sigreturn(&sf, sizeof(sf), 0);
+	}
+
+	return 1;
+}
+
+struct tdescr tde = {
+		.name = "FAKE_SIGRETURN_BAD_MAGIC",
+		.descr = "Trigger a sigreturn with a sigframe with a bad magic",
+		.sig_ok = SIGSEGV,
+		.timeout = 3,
+		.run = fake_sigreturn_bad_magic_run,
+};
diff --git a/tools/testing/selftests/arm64/signal/testcases/testcases.c b/tools/testing/selftests/arm64/signal/testcases/testcases.c
index 72e3f482b177..2effb8ded935 100644
--- a/tools/testing/selftests/arm64/signal/testcases/testcases.c
+++ b/tools/testing/selftests/arm64/signal/testcases/testcases.c
@@ -149,3 +149,31 @@ bool validate_reserved(ucontext_t *uc, size_t resv_sz, char **err)
 
 	return true;
 }
+
+struct _aarch64_ctx *get_starting_head(struct _aarch64_ctx *shead,
+				       size_t need_sz, size_t resv_sz,
+				       size_t *offset)
+{
+	size_t offs = 0;
+	struct _aarch64_ctx *head;
+
+	head = get_terminator(shead, resv_sz, &offs);
+	/* not found a terminator...no need to update offset if any */
+	if (!head)
+		return head;
+	if (resv_sz - offs < need_sz) {
+		fprintf(stderr, "Low on space:%zd. Discarding extra_context.\n",
+			resv_sz - offs);
+		head = get_header(shead, EXTRA_MAGIC, resv_sz, &offs);
+		if (!head || resv_sz - offs < need_sz) {
+			fprintf(stderr,
+				"Failed to reclaim space on sigframe.\n");
+			return NULL;
+		}
+	}
+
+	fprintf(stderr, "Available space:%zd\n", resv_sz - offs);
+	if (offset)
+		*offset = offs;
+	return head;
+}
diff --git a/tools/testing/selftests/arm64/signal/testcases/testcases.h b/tools/testing/selftests/arm64/signal/testcases/testcases.h
index 00618c3202bb..7653f8a64b3d 100644
--- a/tools/testing/selftests/arm64/signal/testcases/testcases.h
+++ b/tools/testing/selftests/arm64/signal/testcases/testcases.h
@@ -83,4 +83,8 @@ static inline void write_terminator_record(struct _aarch64_ctx *tail)
 		tail->size = 0;
 	}
 }
+
+struct _aarch64_ctx *get_starting_head(struct _aarch64_ctx *shead,
+				       size_t need_sz, size_t resv_sz,
+				       size_t *offset);
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
