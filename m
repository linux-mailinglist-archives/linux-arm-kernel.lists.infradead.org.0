Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53617A3C66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O5sX2G6QV+nNN/OS7eEtJ+dVzQbBUUSJk9KD3T5B4cg=; b=ihYHaxo6TqjrHVHLEGG2KK7I/t
	uJAiWRGCWJgG8mZhyaLUfZXOvr939fSiygxnMmrmXH4uCyW8Y20HwQWFqgcol4QPCATqva4f1YcYp
	jtCP7qmGgryQ+k4nL4sKLYc0ul5OkYbKW1BN1DgG6zT8M+OfrwLNWj0KDsIJztIsVcNTsz01B2Puo
	AANLadsGgvMDU5nx1GdT7p7biehKUcekuEfIZLpJlJ/UBtwaKQyOJGdYmOZLBbJGI9fBNXmPCDhg+
	c8RtIfCzGx4LHhUhxlTWwL9Leb47Tt3hdWe3+HtM2jt4mBIyMo5FQorakJFKELxcM5JN5/h60H94C
	1sbkhCZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k0j-0003fD-T1; Fri, 30 Aug 2019 16:44:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jzu-00030z-56
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:43:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E1C4344;
 Fri, 30 Aug 2019 09:43:37 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A6F163F718;
 Fri, 30 Aug 2019 09:43:36 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shuah@kernel.org
Subject: [PATCH v4 03/11] kselftest: arm64: mangle_pstate_invalid_daif_bits
Date: Fri, 30 Aug 2019 17:42:40 +0100
Message-Id: <20190830164248.16238-4-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830164248.16238-1-cristian.marussi@arm.com>
References: <20190830164248.16238-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_094338_251333_33B45AD5 
X-CRM114-Status: GOOD (  10.69  )
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

Add a simple mangle testcase which messes with the ucontext_t from within
the signal handler, trying to set PSTATE DAIF bits to an invalid value
(masking everything). Expects SIGSEGV on test PASS.

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v3 --> v4
- fixed commit message
- added testcase comment description
---
 .../mangle_pstate_invalid_daif_bits.c         | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c

diff --git a/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c
new file mode 100644
index 000000000000..434b82597007
--- /dev/null
+++ b/tools/testing/selftests/arm64/signal/testcases/mangle_pstate_invalid_daif_bits.c
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 ARM Limited
+ *
+ * Try to mangle the ucontext from inside a signal handler, mangling the
+ * DAIF bits in an illegal manner: this attempt must be spotted by Kernel
+ * and the test case is expected to be terminated via SEGV.
+ *
+ */
+
+#include "test_signals_utils.h"
+#include "testcases.h"
+
+static int mangle_invalid_pstate_run(struct tdescr *td, siginfo_t *si,
+				     ucontext_t *uc)
+{
+	ASSERT_GOOD_CONTEXT(uc);
+
+	/*
+	 * This config should trigger a SIGSEGV by Kernel when it checks
+	 * the sigframe consistency in valid_user_regs() routine.
+	 */
+	uc->uc_mcontext.pstate |= PSR_D_BIT | PSR_A_BIT | PSR_I_BIT | PSR_F_BIT;
+
+	return 1;
+}
+
+struct tdescr tde = {
+		.sanity_disabled = true,
+		.name = "MANGLE_PSTATE_INVALID_DAIF_BITS",
+		.descr = "Mangling uc_mcontext with INVALID DAIF_BITS",
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
