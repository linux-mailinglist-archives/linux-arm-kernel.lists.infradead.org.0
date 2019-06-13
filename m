Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C9E43564
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PlRLLEsExNFOQ9gmONVVeSnM+4WrdTPSlziXH7Jozyc=; b=YKTm5T8s3tglUcVRnQaD+1D9AB
	qeFhYo6A7NsZ9RIjZpbOJWkZillLiVqktV6m8VSTzxMM7lT1nDNbtpzb6AVipDuZrnnwlYdjUkIyO
	Hw0mTV4P30IUaUvSJlD9TWsUwXqXAVIGscktYxqOKQVNf4bR0ljC8L4sBNJju/oTw2fupHs/79fVH
	MMLw0S1ECw3eo2rmzJ+C1s4wLs/G6vEjSXQmvnNFKf/hhpXBsG7U0tIdbbG1x+64nxSD+gCE6Ao/k
	Rkz4zax4bWsEC9TsOp6uU/xnrXmfZcLIhkJsyiUP9vV4bGy8m1ECHS+yEy8J5AioD1NBx5Su0xPzN
	UYCN5mhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNiA-0001uX-9R; Thu, 13 Jun 2019 11:16:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNgY-0007W2-9F
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 11:14:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34BC93EF;
 Thu, 13 Jun 2019 04:14:25 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BACEB3F694;
 Thu, 13 Jun 2019 04:16:07 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH 03/13] kselftest: arm64: mangle_sp_misaligned
Date: Thu, 13 Jun 2019 12:13:25 +0100
Message-Id: <20190613111335.7645-4-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190613111335.7645-1-cristian.marussi@arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_041426_615316_99D567D7 
X-CRM114-Status: GOOD (  10.23  )
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

Added a simple mangle testcase which messes with the ucontext_t
from within the sig_handler, trying to badly modify and misalign the SP.
Expects SIGBUS on test PASS.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 .../arm64/signal/testcases/.gitignore         |  1 +
 .../signal/testcases/mangle_sp_misaligned.c   | 24 +++++++++++++++++++
 2 files changed, 25 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/.gitignore
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c

diff --git a/tools/testing/selftests/arm64/signal/testcases/.gitignore b/tools/testing/selftests/arm64/signal/testcases/.gitignore
new file mode 100644
index 000000000000..7f7414d241f2
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/.gitignore
@@ -0,0 +1 @@
+mangle_sp_misaligned
diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c b/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
new file mode 100644
index 000000000000..41bd27312e54
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_sp_misaligned.c
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (C) 2019 ARM Limited */
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+static int mangle_misaligned_sp_run(struct tdescr *td, siginfo_t *si,
+				    ucontext_t *uc)
+{
+	ASSERT_GOOD_CONTEXT(uc);
+
+	uc->uc_mcontext.sp += 3;
+
+	return 1;
+}
+
+struct tdescr tde = {
+		.sanity_disabled = true,
+		.name = "MANGLE_SP_MISALIGNED",
+		.descr = "Mangling uc_mcontext with MISALIGNED SP",
+		.sig_trig = SIGUSR1,
+		.sig_ok = SIGBUS,
+		.run = mangle_misaligned_sp_run,
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
