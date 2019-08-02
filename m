Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63EE7FF3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 19:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cvzwuEbrvDQPp0MX/hcOvnF6237FZJH9koaGwfYKB2A=; b=VyrrkEW5/6gEz4XeUrCiRVQR22
	znI80fL8k8CrzBj9X43pTIL+sK5ofKe2NZf5labC4DBMy0ESzJeuWjFwVQGBtpFH1Dqh3I8EuQmFb
	6MpiC0eBw0fnSsNIeV859FCeVhNHJsiWqHeqZRAgRP8Pa1gnmVYe7Cz4LZsGY/6uK6kmxFzXU5M5u
	JPNCEay9OZ+CkkifpgaCRTWd4dkBOMqaqS5gM/OPpAIUDGYQ7g4RLokrapvjcg/U4MN34PCMyqM63
	vk2jDeXbE/X5YMQfakIIxsqYywsk9BQ//tHL2/VyyZ3LJpx7ryxDlFOynILOGDODbgTKA/Twc0iYb
	pYRGpsrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htazm-00068c-Bu; Fri, 02 Aug 2019 17:05:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htaxy-0002Fv-37
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 17:03:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC2F51570;
 Fri,  2 Aug 2019 10:03:41 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 27F743F575;
 Fri,  2 Aug 2019 10:03:41 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v3 11/11] kselftest: arm64: fake_sigreturn_misaligned_sp
Date: Fri,  2 Aug 2019 18:03:00 +0100
Message-Id: <20190802170300.20662-12-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190802170300.20662-1-cristian.marussi@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_100342_332587_9FAEDD41 
X-CRM114-Status: GOOD (  13.15  )
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

Added a simple fake_sigreturn testcase which places a valid
sigframe on a non-16 bytes aligned SP.
fake_sigretrun() helper function has been patched accordingly
to support placing a sigframe on a non-16 bytes aligned address.
Expects a SIGSEGV on test PASS.

Adds also a test TODO lists holding some further test ideas.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
Re-added this text after fixing the forced misaglinment procedure in
fake_sigreturn() itself: require a ZERO alignment and you'll get
your sigframe placed on a misaligned SP (2-bytes off the 16-align)
---
 .../testing/selftests/arm64/signal/signals.S  | 21 +++++++++----
 .../arm64/signal/testcases/TODO.readme        |  8 +++++
 .../testcases/fake_sigreturn_misaligned_sp.c  | 30 +++++++++++++++++++
 3 files changed, 53 insertions(+), 6 deletions(-)
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/TODO.readme
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c

diff --git a/tools/testing/selftests/arm64/signal/signals.S b/tools/testing/selftests/arm64/signal/signals.S
index 6262b877400b..2099871176ed 100644
--- a/tools/testing/selftests/arm64/signal/signals.S
+++ b/tools/testing/selftests/arm64/signal/signals.S
@@ -13,19 +13,28 @@ call_fmt:
 
 .globl fake_sigreturn
 
-/*	fake_sigreturn	x0:&sigframe,  x1:sigframe_size,  x2:alignment_SP */
+/*	fake_sigreturn	x0:&sigframe, x1:sigframe_sz, x2:align */
 fake_sigreturn:
-	mov x20, x0
-	mov x21, x1
-	mov x22, x2
-	mov x23, sp
 
-	/* create space on the stack for fake sigframe..."x22"-aligned */
+	/* Save args and decide which aligment to enforce */
+	mov 	x23, sp
+	mov	x20, x0
+	mov 	x21, x1
+	/* x22 and x24 used for forcing alignment or misalignment */
+	mov	x22, x2
+	mov	x24, #0
+	cbnz	x22, 1f
+	mov	x22, #16
+	mov	x24, #2
+
+1:	/* create space on the stack for fake sigframe..."x22"-aligned */
 	mov x0, #0
 	add x0, x21, x22
 	sub x22, x22, #1
 	bic x0, x0, x22
 	sub x23, x23, x0
+	/* force misaligned by x24 bytes if required alignment was zero */
+	add x23, x23, x24
 
 	ldr x0, =call_fmt
 	mov x1, x21
diff --git a/tools/testing/selftests/arm64/signal/testcases/TODO.readme b/tools/testing/selftests/arm64/signal/testcases/TODO.readme
new file mode 100644
index 000000000000..5c949492e7ab
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/TODO.readme
@@ -0,0 +1,8 @@
+Some more possible ideas for signals tests:
+
+- fake_sigreturn_unmapped_sp
+- fake_sigreturn_kernelspace_sp
+- fake_sigreturn_sve_bad_extra_context
+- mangle_sve_invalid_extra_context
+- mangle_pstate_invalid_el for H modes (+ macroization ?)
+- fake_sigreturn_overflow_reserved
diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c
new file mode 100644
index 000000000000..3ee8c500c7d1
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_misaligned_sp.c
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 ARM Limited */
+
+#include <ucontext.h>
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+struct fake_sigframe sf;
+
+static int fake_sigreturn_misaligned_run(struct tdescr *td,
+				         siginfo_t *si, ucontext_t *uc)
+{
+	/* just to fill the ucontext_t with something real */
+	if (!get_current_context(td, &sf.uc))
+		return 1;
+
+	/* Forcing sigframe on misaligned (=!16) SP */
+	fake_sigreturn(&sf, sizeof(sf), 0);
+
+	return 1;
+}
+
+struct tdescr tde = {
+		.name = "FAKE_SIGRETURN_MISALIGNED_SP",
+		.descr = "Triggers a fake sigreturn with a misaligned sigframe on SP",
+		.sig_ok = SIGSEGV,
+		.timeout = 3,
+		.run = fake_sigreturn_misaligned_run,
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
