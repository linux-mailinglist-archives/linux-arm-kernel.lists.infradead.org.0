Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536F1A54FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 13:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=07C9c9Fw9hV30akmJZHDrRxVO/3V44d5UtErd4u8sRY=; b=HLGV4JqMATg+/MLpuuUnYyxL8x
	tMlzLGvtdbE1z4mRNRAYqgh6QBgnr2IqfAvtB4VuqTmnJPaDFzbWa5+2asEmGQq3AS9kmWU91+MGn
	3Huslwp41K1DBcn9/LxaJSD8XbxIGeesd5clpAFxQij8yxmnyQRdZ0L5+T0DQ+mQjG4Jiu0+yAxRl
	2Umw3hXaib5HvF+PqxMMC/VYAklN6HC7a4yH8c9qD9aO2yq7xGWyfgYmJ1d2uOTFBj0Ve364WZQs2
	YveIt2Y165LXFn7QhrTirUoQF1V/96bBMmKia+r96kY1V4j1W3juLgEJX+UJxbu7WVgAAmaL+xQky
	P2Er9vtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4kZi-0007d4-Qb; Mon, 02 Sep 2019 11:32:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4kX6-0004JE-9m
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 11:30:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E3F11597;
 Mon,  2 Sep 2019 04:30:03 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A6ED93F246;
 Mon,  2 Sep 2019 04:30:02 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v5 09/11] kselftest: arm64: fake_sigreturn_duplicated_fpsimd
Date: Mon,  2 Sep 2019 12:29:30 +0100
Message-Id: <20190902112932.36129-10-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190902112932.36129-1-cristian.marussi@arm.com>
References: <20190902112932.36129-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_043004_433453_CE9F2373 
X-CRM114-Status: GOOD (  11.45  )
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
Cc: amit.kachhap@arm.com, andreyknvl@google.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a simple fake_sigreturn testcase which builds a ucontext_t with
an anomalous additional fpsimd_context and place it onto the stack.
Expects a SIGSEGV on test PASS.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v3 --> v4
- fix commit
- missing include
- using new get_starting_head() helper
- added test description
---
 .../fake_sigreturn_duplicated_fpsimd.c        | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c

diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
new file mode 100644
index 000000000000..c7122c44f53f
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
@@ -0,0 +1,52 @@
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
+	size_t resv_sz, need_sz;
+	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
+
+	/* just to fill the ucontext_t with something real */
+	if (!get_current_context(td, &sf.uc))
+		return 1;
+
+	resv_sz = GET_SF_RESV_SIZE(sf);
+	need_sz = HDR_SZ + sizeof(struct fpsimd_context);
+
+	head = get_starting_head(shead, need_sz, resv_sz, NULL);
+	if (head) {
+		/* Add a spurios fpsimd_context */
+		head->magic = FPSIMD_MAGIC;
+		head->size = sizeof(struct fpsimd_context);
+		/* and terminate */
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
