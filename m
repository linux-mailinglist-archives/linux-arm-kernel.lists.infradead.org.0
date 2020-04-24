Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984C91B7BDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+rqL1zHoo5CPG0Ai8PTbKc4YY0VKIg22tAp6FXXGng=; b=E2Qd9CMz6IVvoG
	d6nsCpaoqZLxwdT29E0ADtwweyEt71m4yN94PQyqiPq8xcARglS4s7zzC6CVKRu5nW+0ifzGLdnvc
	EWkQh5yjafFiMhzSwQspLqCcJD5ieJcGqW+0Qamz5Ins/9CH8Okr69b8XlpeSr2vX/gwm5Z1lx9nU
	PKsZzvmZJ8ARKlohl5jq7axdCyrdsgVyUBu9mn9T1bE1jOlOWWCXSI1rEHptoiSjZbvL7NgZ9Tqmw
	MoO09vgCYd2Pj8TFU758sqO01BSpMN12bDCsL8gR6BIHtJD8kuqZmMJsuCG4AvS6Uhav937QV2DPa
	vKvpMhbPxzOve3qv1QQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1O7-00047p-OP; Fri, 24 Apr 2020 16:41:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1MG-0000Cx-EW
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 16:39:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39F5A31B;
 Fri, 24 Apr 2020 09:39:19 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C05E03F68F;
 Fri, 24 Apr 2020 09:39:18 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: stable@vger.kernel.org
Subject: [stable:PATCH 4/5 v4.19] arm64: compat: Workaround Neoverse-N1
 #1542419 for compat user-space
Date: Fri, 24 Apr 2020 17:38:44 +0100
Message-Id: <20200424163845.4141-5-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200424163845.4141-1-james.morse@arm.com>
References: <20200424163845.4141-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_093920_890082_1B2C4939 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Upstream commit: 222fc0c8503d98cec3cb2bac2780cdd21a6e31c0 ]

Compat user-space is unable to perform ICIMVAU instructions from
user-space. Instead it uses a compat-syscall. Add the workaround for
Neoverse-N1 #1542419 to this code path.

Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/sys_compat.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/kernel/sys_compat.c b/arch/arm64/kernel/sys_compat.c
index 010212d35700..5a9b220aef6c 100644
--- a/arch/arm64/kernel/sys_compat.c
+++ b/arch/arm64/kernel/sys_compat.c
@@ -19,6 +19,7 @@
  */
 
 #include <linux/compat.h>
+#include <linux/cpufeature.h>
 #include <linux/personality.h>
 #include <linux/sched.h>
 #include <linux/sched/signal.h>
@@ -28,6 +29,7 @@
 
 #include <asm/cacheflush.h>
 #include <asm/system_misc.h>
+#include <asm/tlbflush.h>
 #include <asm/unistd.h>
 
 static long
@@ -41,6 +43,15 @@ __do_compat_cache_op(unsigned long start, unsigned long end)
 		if (fatal_signal_pending(current))
 			return 0;
 
+		if (cpus_have_const_cap(ARM64_WORKAROUND_1542419)) {
+			/*
+			 * The workaround requires an inner-shareable tlbi.
+			 * We pick the reserved-ASID to minimise the impact.
+			 */
+			__tlbi(aside1is, 0);
+			dsb(ish);
+		}
+
 		ret = __flush_cache_user_range(start, start + chunk);
 		if (ret)
 			return ret;
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
