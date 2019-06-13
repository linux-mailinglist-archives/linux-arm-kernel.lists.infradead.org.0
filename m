Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDE143569
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HfE12McylBgJ9ygKKE88WdAotlQBGfwEUhEfZXmeHPk=; b=dqP4wNPO3bmtvaBS0b9Pn/8OTs
	iPPO6uN6fETnNLUzJIADamZMf4Q3CVReR9VfCqYMp3WuBlw+YIVxAkADQwJIJ+lhg9uXyi6nB4jH3
	sXpWbZAY6QGBIvw9WBl5f2ayMzlKL42myHY0513BFm2k8pLOw+jrpinJ9OVk5Qjnta86b6jUWTBEn
	kIHTHrpvWBs22xNtyVePCilScK1pOq7zJpdJHF9feP4OwKDmFT48ZeIuvVXSI0Ft3SaM8A0UJ7ks7
	DLz5GlWbUpbxFYPRtBHlItsTOe4Va4S8cuXMZnz4ElhT6AKQSxBRh5cRjkU30K2NobirlIPugN+6h
	bThDcXQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNj5-000319-AK; Thu, 13 Jun 2019 11:17:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNgf-0007cT-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 11:14:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 928993EF;
 Thu, 13 Jun 2019 04:14:33 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 247093F694;
 Thu, 13 Jun 2019 04:16:16 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH 07/13] kselftest: arm64: mangle_pstate_invalid_mode_el?
Date: Thu, 13 Jun 2019 12:13:29 +0100
Message-Id: <20190613111335.7645-8-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190613111335.7645-1-cristian.marussi@arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_041434_131710_1B1E7127 
X-CRM114-Status: GOOD (  11.11  )
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

Added 3 simple mangle testcases that mess with the ucontext_t
from within the sig_handler, trying to toggle PSTATE mode bits to
trick the system into switching to EL1/EL2/EL3.
Expects SIGSEGV on test PASS.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 .../arm64/signal/testcases/.gitignore         |  3 +++
 .../mangle_pstate_invalid_mode_el1.c          | 25 +++++++++++++++++++
 .../mangle_pstate_invalid_mode_el2.c          | 25 +++++++++++++++++++
 .../mangle_pstate_invalid_mode_el3.c          | 25 +++++++++++++++++++
 4 files changed, 78 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3.c

diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
index 91f7aee4b666..e7a1d998b650 100644
--- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
+++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
@@ -2,3 +2,6 @@ mangle_sp_misaligned
 mangle_pc_invalid
 mangle_pstate_invalid_daif_bits
 mangle_pstate_invalid_state_toggle
+mangle_pstate_invalid_mode_el1
+mangle_pstate_invalid_mode_el2
+mangle_pstate_invalid_mode_el3
diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c
new file mode 100644
index 000000000000..9f5bde2e287f
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1.c
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 ARM Limited */
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+static int mangle_invalid_pstate_run(struct tdescr *td, siginfo_t *si,
+				     ucontext_t *uc)
+{
+	ASSERT_GOOD_CONTEXT(uc);
+
+	/* This config should trigger a SIGSEGV by Kernel */
+	uc->uc_mcontext.pstate |= PSR_MODE_EL1t;
+
+	return 1;
+}
+
+struct tdescr tde = {
+		.sanity_disabled = true,
+		.name = "MANGLE_PSTATE_INVALID_MODE_EL1t",
+		.descr = "Mangling uc_mcontext with INVALID MODE EL1t",
+		.sig_trig = SIGUSR1,
+		.sig_ok = SIGSEGV,
+		.run = mangle_invalid_pstate_run,
+};
diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2.c
new file mode 100644
index 000000000000..667e04fadf7b
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2.c
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 ARM Limited */
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+static int mangle_invalid_pstate_run(struct tdescr *td, siginfo_t *si,
+				     ucontext_t *uc)
+{
+	ASSERT_GOOD_CONTEXT(uc);
+
+	/* This config should trigger a SIGSEGV by Kernel */
+	uc->uc_mcontext.pstate |= PSR_MODE_EL2t;
+
+	return 1;
+}
+
+struct tdescr tde = {
+		.sanity_disabled = true,
+		.name = "MANGLE_PSTATE_INVALID_MODE_EL2t",
+		.descr = "Mangling uc_mcontext with INVALID MODE EL2t",
+		.sig_trig = SIGUSR1,
+		.sig_ok = SIGSEGV,
+		.run = mangle_invalid_pstate_run,
+};
diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3.c
new file mode 100644
index 000000000000..17abde0c6883
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3.c
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 ARM Limited */
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+static int mangle_invalid_pstate_run(struct tdescr *td, siginfo_t *si,
+				     ucontext_t *uc)
+{
+	ASSERT_GOOD_CONTEXT(uc);
+
+	/* This config should trigger a SIGSEGV by Kernel */
+	uc->uc_mcontext.pstate |= PSR_MODE_EL3t;
+
+	return 1;
+}
+
+struct tdescr tde = {
+		.sanity_disabled = true,
+		.name = "MANGLE_PSTATE_INVALID_MODE_EL3t",
+		.descr = "Mangling uc_mcontext with INVALID MODE EL3t",
+		.sig_trig = SIGUSR1,
+		.sig_ok = SIGSEGV,
+		.run = mangle_invalid_pstate_run,
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
