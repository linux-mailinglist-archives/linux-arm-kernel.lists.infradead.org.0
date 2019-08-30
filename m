Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A58D2A3C70
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V5GEsJ8Irk5AiPdta9P+9I3YbWiebH5S4Vok2lglVMQ=; b=KpDvLwc3b0oKY4J4cJ6k13gWQm
	fDBU22frNNOMpvzWDR8H/VouShcRxVX1pwS7RzYo9+nalo+avqtCEMHZwQA2cp1199kdmfNPHXo1Y
	Qpmn0zVAdwL89IQZ32rhIvVK0Iaoij127ImlUfq/dS//4j0KrKaxXl0owwU7OxuyVtu7PuMjOPKiD
	dYN4KGs4rAlGN85PCbLLEvYRscojezn6OIWp5ajV6pcFl0kJ+nuzjHE/PtAxczJf7t8paDMgqIu9s
	NEEJlYMJGFtgbe2Tc/8v+Zq/jxq71Uxf4qxvNC+NuoeKVylQTBeeaUgn7CFR1lXv37AaFTT7Ehwju
	5ZB7I/hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k2J-0006JZ-2p; Fri, 30 Aug 2019 16:46:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jzy-00036L-RD
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:43:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A9879360;
 Fri, 30 Aug 2019 09:43:38 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C251F3F718;
 Fri, 30 Aug 2019 09:43:37 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v4 04/11] kselftest: arm64:
 mangle_pstate_invalid_mode_el[123][ht]
Date: Fri, 30 Aug 2019 17:42:41 +0100
Message-Id: <20190830164248.16238-5-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830164248.16238-1-cristian.marussi@arm.com>
References: <20190830164248.16238-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_094342_991574_655F126B 
X-CRM114-Status: GOOD (  10.66  )
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

Add 6 simple mangle testcases that mess with the ucontext_t from within
the signal handler, trying to toggle PSTATE mode bits to trick the system
into switching to EL1/EL2/EL3 using both SP_EL0(t) and SP_ELx(h).
Expects SIGSEGV on test PASS.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v3 --> v4
- fixed commit message
- macroization
- splitted into 6 macro-ised testcases to address t/h SP selection modes
- added test description
---
 .../mangle_pstate_invalid_mode_el1h.c         | 15 ++++++++++
 .../mangle_pstate_invalid_mode_el1t.c         | 15 ++++++++++
 .../mangle_pstate_invalid_mode_el2h.c         | 15 ++++++++++
 .../mangle_pstate_invalid_mode_el2t.c         | 15 ++++++++++
 .../mangle_pstate_invalid_mode_el3h.c         | 15 ++++++++++
 .../mangle_pstate_invalid_mode_el3t.c         | 15 ++++++++++
 .../mangle_pstate_invalid_mode_template.h     | 28 +++++++++++++++++++
 7 files changed, 118 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1h.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1t.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2h.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2t.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3h.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3t.c
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_template.h

diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1h.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1h.c
new file mode 100644
index 000000000000..95f821abdf46
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1h.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Try to mangle the ucontext from inside a signal handler, toggling
+ * the mode bit to escalate exception level: this attempt must be spotted
+ * by Kernel and the test case is expected to be termninated via SEGV.
+ */
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+#include "mangle_pstate_invalid_mode_template.h"
+
+DEFINE_TESTCASE_MANGLE_PSTATE_INVALID_MODE(1h);
diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1t.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1t.c
new file mode 100644
index 000000000000..cc222d8a618a
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el1t.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Try to mangle the ucontext from inside a signal handler, toggling
+ * the mode bit to escalate exception level: this attempt must be spotted
+ * by Kernel and the test case is expected to be termninated via SEGV.
+ */
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+#include "mangle_pstate_invalid_mode_template.h"
+
+DEFINE_TESTCASE_MANGLE_PSTATE_INVALID_MODE(1t);
diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2h.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2h.c
new file mode 100644
index 000000000000..2188add7d28c
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2h.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Try to mangle the ucontext from inside a signal handler, toggling
+ * the mode bit to escalate exception level: this attempt must be spotted
+ * by Kernel and the test case is expected to be termninated via SEGV.
+ */
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+#include "mangle_pstate_invalid_mode_template.h"
+
+DEFINE_TESTCASE_MANGLE_PSTATE_INVALID_MODE(2h);
diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2t.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2t.c
new file mode 100644
index 000000000000..df32dd5a479c
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el2t.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Try to mangle the ucontext from inside a signal handler, toggling
+ * the mode bit to escalate exception level: this attempt must be spotted
+ * by Kernel and the test case is expected to be termninated via SEGV.
+ */
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+#include "mangle_pstate_invalid_mode_template.h"
+
+DEFINE_TESTCASE_MANGLE_PSTATE_INVALID_MODE(2t);
diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3h.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3h.c
new file mode 100644
index 000000000000..9e6829b7e5db
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3h.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Try to mangle the ucontext from inside a signal handler, toggling
+ * the mode bit to escalate exception level: this attempt must be spotted
+ * by Kernel and the test case is expected to be termninated via SEGV.
+ */
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+#include "mangle_pstate_invalid_mode_template.h"
+
+DEFINE_TESTCASE_MANGLE_PSTATE_INVALID_MODE(3h);
diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3t.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3t.c
new file mode 100644
index 000000000000..5685a4f10d06
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_el3t.c
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Try to mangle the ucontext from inside a signal handler, toggling
+ * the mode bit to escalate exception level: this attempt must be spotted
+ * by Kernel and the test case is expected to be termninated via SEGV.
+ */
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+#include "mangle_pstate_invalid_mode_template.h"
+
+DEFINE_TESTCASE_MANGLE_PSTATE_INVALID_MODE(3t);
diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_template.h b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_template.h
new file mode 100644
index 000000000000..f5bf1804d858
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_mode_template.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Utility macro to ease definition of testcases toggling mode EL
+ */
+
+#define DEFINE_TESTCASE_MANGLE_PSTATE_INVALID_MODE(_mode)		\
+									\
+static int mangle_invalid_pstate_run(struct tdescr *td, siginfo_t *si,	\
+				     ucontext_t *uc)			\
+{									\
+	ASSERT_GOOD_CONTEXT(uc);					\
+									\
+	uc->uc_mcontext.pstate &= ~PSR_MODE_MASK;			\
+	uc->uc_mcontext.pstate |= PSR_MODE_EL ## _mode;			\
+									\
+	return 1;							\
+}									\
+									\
+struct tdescr tde = {							\
+		.sanity_disabled = true,				\
+		.name = "MANGLE_PSTATE_INVALID_MODE_EL"#_mode,		\
+		.descr = "Mangling uc_mcontext INVALID MODE EL"#_mode,	\
+		.sig_trig = SIGUSR1,					\
+		.sig_ok = SIGSEGV,					\
+		.run = mangle_invalid_pstate_run,			\
+}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
