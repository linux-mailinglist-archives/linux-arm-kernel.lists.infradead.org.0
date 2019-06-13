Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463E543570
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:18:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0fRz0Qq9q5hbZYca0Na311CYV5pOSDomUGZYIjLVs9A=; b=pSAGHsQnDpTEPZnfS1ONJZv0zY
	s35NXEPgxUPb6WjU6qBUcG0ubswOyblbRJMkyPsqBkmq/XvkB7ZitHOlY4n7Pqk83gE7ot8rRmUWa
	fzhoYmfPnE1HouybRVtRVBQiC4GqTD3znNJjBal7i42ZX6sUepTWmwuzlLx6TNPykBLA+531BrRQ1
	1SjN81OXRH2GNC5RHhpAkmmnAwZ8pyu03GMkumsl2P+XV5jTmD1l2D6hWXwxrji+9ji9NHV1yHKoh
	Ra6eGS6GxPTSjZ1zZM10RuE++M8HFOaKpcUsq+20nWOEZi/fyicrOARa3YNvhL04qRmiW7I+UexKT
	hQEIxGgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNkR-0004TG-R5; Thu, 13 Jun 2019 11:18:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNgt-0007o5-Pk
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 11:14:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 683FF3EF;
 Thu, 13 Jun 2019 04:14:47 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED7583F694;
 Thu, 13 Jun 2019 04:16:29 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH 13/13] kselftest: arm64: fake_sigreturn_overflow_reserved
Date: Thu, 13 Jun 2019 12:13:35 +0100
Message-Id: <20190613111335.7645-14-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190613111335.7645-1-cristian.marussi@arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_041447_897700_413B0A2C 
X-CRM114-Status: GOOD (  12.01  )
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
with the whole __reserved area overflowed with ESR_MAGIC headers
and place it onto the stack.
Expects a SIGSEGV on test PASS.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 .../arm64/signal/testcases/.gitignore         |  1 +
 .../fake_sigreturn_overflow_reserved.c        | 48 +++++++++++++++++++
 2 files changed, 49 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_overflow_reserved.c

diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
index 66ba865b3b7e..69a18391c220 100644
--- a/tools/testing/selftests/arm64/signal/testcases/.gitignore
+++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
@@ -10,3 +10,4 @@ fake_sigreturn_misaligned
 fake_sigreturn_bad_magic
 fake_sigreturn_bad_size
 fake_sigreturn_bad_size_for_magic0
+fake_sigreturn_overflow_reserved
diff --git a/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_overflow_reserved.c b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_overflow_reserved.c
new file mode 100644
index 000000000000..eba109453a65
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/fake_sigreturn_overflow_reserved.c
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 ARM Limited */
+
+#include <asm/sigcontext.h>
+#include <ucontext.h>
+#include <stdio.h>
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+struct a_sigframe sf;
+
+static int fake_sigreturn_overflow_reserved_run(struct tdescr *td,
+						siginfo_t *si,
+						ucontext_t *uc)
+{
+	size_t offset = 0;
+	struct _aarch64_ctx *head = GET_SF_RESV_HEAD(sf);
+
+	/* just to fill the ucontext_t with something real */
+	if (!get_current_context(td, &sf.uc))
+		return 1;
+
+	/* find the terminator, preserving existig headers */
+	head = get_terminator(head, GET_SF_RESV_SIZE(sf), &offset);
+	if (head) {
+		/* fill the __reserved area till the end */
+		do {
+			head->magic = ESR_MAGIC;
+			head->size = sizeof(struct esr_context);
+			offset += head->size;
+			head = GET_RESV_NEXT_HEAD(head);
+		} while (offset < GET_SF_RESV_SIZE(sf));
+
+		ASSERT_BAD_CONTEXT(&sf.uc);
+		fake_sigreturn(&sf, sizeof(sf), 16);
+	}
+
+	return 1;
+}
+
+struct tdescr tde = {
+		.name = "FAKE_SIGRETURN_OVERFLOW_RESERVED",
+		.descr = "Triggers a fake sigreturn with an overflowed sigframe",
+		.sig_ok = SIGSEGV,
+		.timeout = 3,
+		.run = fake_sigreturn_overflow_reserved_run,
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
