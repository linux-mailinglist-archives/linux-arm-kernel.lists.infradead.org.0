Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5757FE52ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5Gw671e4d6a/zTYxXB0BCvuDzuT4DYyhmASSNA+iEsQ=; b=ZKzlRek41vZMLEeYc2oIcLKNkJ
	ze/h0oJeiqozukdj3womEdaiHuWP1HQtlnYqwO0ObhbKbeTGQ8DaIHwG0AxjOVZxmmJx6RrwW3k4B
	kjMtUd2XBSRI82wMfFw+YuDPgyunrxEAjrFZfULdERH6DDTiSuFNCcKHe8+P1dmJ3/VAPYh9k5Ep1
	Uq99GDzht3YbB3Gkru9phUfEboxcCZU3qZAZSZayCDfXPH6vZ9vo4KwsDJo/njYpSVch/lQByAKpG
	NLmAgPcBcC3GLsAAKBKCMrvkoocepydbYIYn8QuEr4bUM23u5Jnzho9L94uYP8aIltLHKrbmsWkWt
	txCSj+Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3uw-0000Nq-HI; Fri, 25 Oct 2019 18:02:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3qx-0004F3-36
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:58:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A269492;
 Fri, 25 Oct 2019 10:58:22 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 878123F6C4;
 Fri, 25 Oct 2019 10:58:21 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v10 10/12] kselftest: arm64: fake_sigreturn_duplicated_fpsimd
Date: Fri, 25 Oct 2019 18:57:15 +0100
Message-Id: <20191025175717.15154-11-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191025175717.15154-1-cristian.marussi@arm.com>
References: <20191025175717.15154-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105823_280925_1F20F37B 
X-CRM114-Status: GOOD (  11.70  )
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

Add a simple fake_sigreturn testcase which builds a ucontext_t with
an anomalous additional fpsimd_context and place it onto the stack.
Expects a SIGSEGV on test PASS.

Reviewed-by: Dave Martin <Dave.Martin@arm.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v6 --> v7
- fixed typo
v5 --> v6
- removed unneeded locals
- avoid timeout on failure
v3 --> v4
- fix commit
- missing include
- using new get_starting_head() helper
- added test description
---
 .../fake_sigreturn_duplicated_fpsimd.c        | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c

diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
new file mode 100644
index 000000000000..afe8915f0998
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Place a fake sigframe on the stack including an additional FPSIMD
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
+static int fake_sigreturn_duplicated_fpsimd_run(struct tdescr *td,
+						siginfo_t *si, ucontext_t *uc)
+{
+	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
+
+	/* just to fill the ucontext_t with something real */
+	if (!get_current_context(td, &sf.uc))
+		return 1;
+
+	head = get_starting_head(shead, sizeof(struct fpsimd_context) + HDR_SZ,
+				 GET_SF_RESV_SIZE(sf), NULL);
+	if (!head)
+		return 0;
+
+	/* Add a spurious fpsimd_context */
+	head->magic = FPSIMD_MAGIC;
+	head->size = sizeof(struct fpsimd_context);
+	/* and terminate */
+	write_terminator_record(GET_RESV_NEXT_HEAD(head));
+
+	ASSERT_BAD_CONTEXT(&sf.uc);
+	fake_sigreturn(&sf, sizeof(sf), 0);
+
+	return 1;
+}
+
+struct tdescr tde = {
+		.name = "FAKE_SIGRETURN_DUPLICATED_FPSIMD",
+		.descr = "Triggers a sigreturn including two fpsimd_context",
+		.sig_ok = SIGSEGV,
+		.timeout = 3,
+		.run = fake_sigreturn_duplicated_fpsimd_run,
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
