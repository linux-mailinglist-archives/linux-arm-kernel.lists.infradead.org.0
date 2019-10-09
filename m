Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021CCD09D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NKzrMoDJzk9RblBFqGF1GDXeuwm++Js73REohUGKU9E=; b=si6E/jHk4ary5Og1tI88KFgl6W
	yXkw2s1BVWe5H8KeQzxYC3iM7zNSElQsxPNX687Gr+koGjZbWEdHLYI5+fa3ZVz2C7YP/soXB0bNc
	wbPwKoOEXxeuDobKLyrsQMa+OZ+TsdT4LpeMUSnuhK/heyKFGuI4pHm1mvTDcZxVrgPpYbUvVFahR
	4W8P6wNzrQ5UB8AX/BVkzLPux+IPfs2V+5BUXqO1svD+9c7XGOD0jvWBBanCOGTImklWwfAs/E4NR
	ChjG1dJrYK+ojR6PBDJAApNtcKYhSo8FoFWLhHNJOQRl72u9WSbL1+qiRoBTuosSSdwLAVikoD/Lk
	+EoRqU1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7L3-0005Bo-TF; Wed, 09 Oct 2019 08:28:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7Is-0003JV-JM
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:26:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C3DA1000;
 Wed,  9 Oct 2019 01:26:38 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 535433F68E;
 Wed,  9 Oct 2019 01:26:37 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v8 11/12] kselftest: arm64: fake_sigreturn_bad_size
Date: Wed,  9 Oct 2019 09:26:10 +0100
Message-Id: <20191009082611.9441-12-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009082611.9441-1-cristian.marussi@arm.com>
References: <20191009082611.9441-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_012638_819716_EA2A0FD6 
X-CRM114-Status: GOOD (  13.66  )
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

Add a simple fake_sigreturn testcase which builds a ucontext_t with a
badly sized header that causes a overrun in the __reserved area and
place it onto the stack. Expects a SIGSEGV on test PASS.

Reviewed-by: Dave Martin <Dave.Martin@arm.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v5 --> v6
- avoid timeout on failure
v3 --> v4
- fix commit
- missing include
- using new get_starting_head() helper
- added test description
---
 .../testcases/fake_sigreturn_bad_size.c       | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c

diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
new file mode 100644
index 000000000000..b3c362100666
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_bad_size.c
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Place a fake sigframe on the stack including a bad record overflowing
+ * the __reserved space: on sigreturn Kernel must spot this attempt and
+ * the test case is expected to be terminated via SEGV.
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
+#define MIN_SZ_ALIGN	16
+
+static int fake_sigreturn_bad_size_run(struct tdescr *td,
+				       siginfo_t *si, ucontext_t *uc)
+{
+	size_t resv_sz, need_sz, offset;
+	struct _aarch64_ctx *shead = GET_SF_RESV_HEAD(sf), *head;
+
+	/* just to fill the ucontext_t with something real */
+	if (!get_current_context(td, &sf.uc))
+		return 1;
+
+	resv_sz = GET_SF_RESV_SIZE(sf);
+	/* at least HDR_SZ + bad sized esr_context needed */
+	need_sz = sizeof(struct esr_context) + HDR_SZ;
+	head = get_starting_head(shead, need_sz, resv_sz, &offset);
+	if (!head)
+		return 0;
+
+	/*
+	 * Use an esr_context to build a fake header with a
+	 * size greater then the free __reserved area minus HDR_SZ;
+	 * using ESR_MAGIC here since it is not checked for size nor
+	 * is limited to one instance.
+	 *
+	 * At first inject an additional normal esr_context
+	 */
+	head->magic = ESR_MAGIC;
+	head->size = sizeof(struct esr_context);
+	/* and terminate properly */
+	write_terminator_record(GET_RESV_NEXT_HEAD(head));
+	ASSERT_GOOD_CONTEXT(&sf.uc);
+
+	/*
+	 * now mess with fake esr_context size: leaving less space than
+	 * needed while keeping size value 16-aligned
+	 *
+	 * It must trigger a SEGV from Kernel on:
+	 *
+	 *	resv_sz - offset < sizeof(*head)
+	 */
+	/* at first set the maximum good 16-aligned size */
+	head->size = (resv_sz - offset - need_sz + MIN_SZ_ALIGN) & ~0xfUL;
+	/* plus a bit more of 16-aligned sized stuff */
+	head->size += MIN_SZ_ALIGN;
+	/* and terminate properly */
+	write_terminator_record(GET_RESV_NEXT_HEAD(head));
+	ASSERT_BAD_CONTEXT(&sf.uc);
+	fake_sigreturn(&sf, sizeof(sf), 0);
+
+	return 1;
+}
+
+struct tdescr tde = {
+		.name = "FAKE_SIGRETURN_BAD_SIZE",
+		.descr = "Triggers a sigreturn with a overrun __reserved area",
+		.sig_ok = SIGSEGV,
+		.timeout = 3,
+		.run = fake_sigreturn_bad_size_run,
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
