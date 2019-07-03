Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32D15E962
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m8OMAVdC8UGeuJnzMe9RI/MUHsPose0k0mHPBQe9QCw=; b=CpL8dLFgQr1el+hScn+Vm0xMfJ
	nOKJxLoMVShLu+a+wN+VEwg0LyC5koHEdVYMzc99XnoDdzLNTSJqQoKF5uYeO1zUQfj0BcWpGMDiR
	Aznb7vVrf7dDlsoFx8P1UBWMLbnw7ICyrv5QxlYQJszoZNvbx4zLxffj/MU8JczngaVPoWS3TMaKn
	XYDGK0+/8XhjM2A1J+DoLtEKlBsr3btOB5EWDjNcfORr0PXT8NHow43ib+xSUS9dy+heq/MSmnshB
	H5J7SMVUsylJFao1777n2jJNn8Ez8z4N7qqLnKBwgN8i8BWnzeCi1XHKvuVhdKmGgseqPFw89z4JX
	b8EeAMRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiHv-0005Hm-9u; Wed, 03 Jul 2019 16:39:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiF4-00036X-T1
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 16:36:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A0781500;
 Wed,  3 Jul 2019 09:36:22 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC7223F718;
 Wed,  3 Jul 2019 09:36:21 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v2 09/10] kselftest: arm64: fake_sigreturn_duplicated_fpsimd
Date: Wed,  3 Jul 2019 17:35:31 +0100
Message-Id: <20190703163532.7485-10-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703163532.7485-1-cristian.marussi@arm.com>
References: <20190703163532.7485-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_093623_238023_2F0DE296 
X-CRM114-Status: GOOD (  13.02  )
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
with an anomalous additional fpsimd_context and place it onto the stack.
Expects a SIGSEGV on test PASS.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 .../arm64/signal/testcases/.gitignore         |  1 +
 .../fake_sigreturn_duplicated_fpsimd.c        | 62 +++++++++++++++++++
 2 files changed, 63 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c

diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
index 17d1c5e73319..94f9baaf638c 100644
--- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
+++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
@@ -7,3 +7,4 @@ mangle_pstate_ssbs_regs
 fake_sigreturn_bad_magic
 fake_sigreturn_bad_size_for_magic0
 fake_sigreturn_missing_fpsimd
+fake_sigreturn_duplicated_fpsimd
diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
new file mode 100644
index 000000000000..09af7a0f8776
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_duplicated_fpsimd.c
@@ -0,0 +1,62 @@
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
+static int fake_sigreturn_duplicated_fpsimd_run(struct tdescr *td,
+						siginfo_t *si, ucontext_t *uc)
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
+	 * we need at least space for one additional fpsimd_context
+	 */
+	if (head && resv_sz - offset < sizeof(struct fpsimd_context)) {
+		fprintf(stderr, "Low on space:%zd. Discarding extra_context.\n",
+			resv_sz - offset);
+		head = get_header(shead, EXTRA_MAGIC, resv_sz, &offset);
+	}
+
+	/* just give up and timeout if still not enough space */
+	if (head &&
+	    resv_sz - offset >= sizeof(struct fpsimd_context) + HDR_SZ) {
+		fprintf(stderr, "Mangling template header. Spare space:%zd\n",
+			resv_sz - offset);
+		/* Add a spurios fpsimd_context */
+		head->magic = FPSIMD_MAGIC;
+		head->size = sizeof(struct fpsimd_context);
+		/* and terminate */
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
+		.name = "FAKE_SIGRETURN_DUPLICATED_FPSIMD",
+		.descr = "Triggers a fake sigreturn with a sigframe including two fpsimd_context",
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
