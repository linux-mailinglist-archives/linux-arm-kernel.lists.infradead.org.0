Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E9B1EF8D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iazzj6qQknBqvGTDa6ibaHhJM+eybwLtubizeT7t7Rs=; b=ti4CmUsK7Zld4e
	Yxn0WFS/fqe7JgqGYOVvmFLs1hXWr8YEke+Hud0gxdLlVj05W1AkiWykUroJ29BBYvkXIXXsZz7cL
	LeCrX7c90c1hFVSD5xfx5Qr5uvXAMs/F8POKAZxzZ0gPH9Sw3inhyBOChyY7o5CNgv1fIS2jr71ng
	J0Wlu+47wosQaGEHb7Mx0W4jdzZmImaFzY2oDEPgt4x4DIk8PggPjQ/5cqGSa1NgFrFmD7hegWRgD
	UqQ49an8q27eEWAe/buR0PLF7bixK27jywrZiRjiE9JMm4Qcg8Feeelyj2Bdz7rPmtLyF96y4bGOR
	/lbzgxXC2riNB+gJ+UwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCGn-0005CI-VT; Fri, 05 Jun 2020 13:20:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCFK-00026P-LX
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:18:56 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8EE84206E6;
 Fri,  5 Jun 2020 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591363134;
 bh=Qm1D4s+M/mO7mwIKm4XuWbPwM6fNbujUhQSw8qCmPVo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=grcAgPx6zgVuBnultaVik5WDrGGtrCZoVM9En1mJlwNt86C9WRCX2a0GaKIGQC7nS
 0QjDmPX6BEevOdF4tUCJNJJiebXqxsFKXmUWVsK6JHLKq/ZPCFwI9EcqLfcri2kDqm
 /z3SJNRZihMDLvfHgyyxzyG/YGCMYD9wgdjVCRUk=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 5/5] selftests: vdso: Support arm64 in getcpu() test
Date: Fri,  5 Jun 2020 14:11:31 +0100
Message-Id: <20200605131131.16491-6-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200605131131.16491-1-broonie@kernel.org>
References: <20200605131131.16491-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_061855_013871_684DC87A 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Brown <broonie@kernel.org>, Andrei Vagin <avagin@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64 exports the vDSO ABI with a version of LINUX_2.6.39 and symbols
prefixed with __kernel rather than __vdso. Update the getcpu() test to
handle this.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 tools/testing/selftests/vDSO/vdso_test_getcpu.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/tools/testing/selftests/vDSO/vdso_test_getcpu.c b/tools/testing/selftests/vDSO/vdso_test_getcpu.c
index fc25ede131b8..4aeb65012b81 100644
--- a/tools/testing/selftests/vDSO/vdso_test_getcpu.c
+++ b/tools/testing/selftests/vDSO/vdso_test_getcpu.c
@@ -14,8 +14,18 @@
 #include "../kselftest.h"
 #include "parse_vdso.h"
 
+/*
+ * ARM64's vDSO exports its getcpu() implementation with a different
+ * name and version from other architectures, so we need to handle it
+ * as a special case.
+ */
+#if defined(__aarch64__)
+const char *version = "LINUX_2.6.39";
+const char *name = "__kernel_getcpu";
+#else
 const char *version = "LINUX_2.6";
 const char *name = "__vdso_getcpu";
+#endif
 
 struct getcpu_cache;
 typedef long (*getcpu_t)(unsigned int *, unsigned int *,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
