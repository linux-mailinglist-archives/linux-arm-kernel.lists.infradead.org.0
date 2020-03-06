Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC0117B6CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 07:36:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rdgPng5lBYecugB3Sk4jqI/ld76za+2ojVSL+Cgd7vM=; b=pWGu5/RqEYblUdUvkeX5oo2MZe
	+WETvKnDgXU9ftk8Aah/1c4JeEiVZXt+qbKL6NdSSHRAzLCYPnI8VL5ePfzQkWE3DLjIS8tF/Z+LS
	f9J7GkTnMRHchmqg2lJeXmPgpmlj7UjCNoyAlvlYar8+flA+3vHcpEKe6h4ood8CUJrXRBsxXckIM
	JMw7hHaKyS/ZViGKorgK5cDFjGw5a9uhn7A+SZWbvcsnfwkwYiC8Jqum6Ou74yh4hQhECi17e7lzr
	FB7C24erRUHk79/F3cgYeI6t8MFfaSmF4RyMU+oFPlYHx40lRfD3WNNXP0ZknHTgh9lWJ0x+JmCqP
	2ObsDvEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6am-0004lP-Jd; Fri, 06 Mar 2020 06:36:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6aH-0004ck-2L
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 06:35:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C67994B2;
 Thu,  5 Mar 2020 22:35:42 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C75B83F6CF;
 Thu,  5 Mar 2020 22:39:34 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 01/18] arm64: cpufeature: Fix meta-capability cpufeature
 check
Date: Fri,  6 Mar 2020 12:05:08 +0530
Message-Id: <1583476525-13505-2-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_223545_148251_1B59AAF1 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some existing/future meta cpucaps match need the presence of individual
cpucaps. Currently the individual cpucaps checks it via an array based
flag and this introduces dependency on the array entry order.
This limitation exists only for system scope cpufeature.

This patch introduces an internal helper function (__system_matches_cap)
to invoke the matching handler for system scope. This helper has to be
used during a narrow window when,
- The system wide safe registers are set with all the SMP CPUs and,
- The SYSTEM_FEATURE cpu_hwcaps may not have been set.

Normal users should use the existing cpus_have_{const_}cap() global
function.

Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 arch/arm64/kernel/cpufeature.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 0b67156..3818685 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -116,6 +116,8 @@ cpufeature_pan_not_uao(const struct arm64_cpu_capabilities *entry, int __unused)
 
 static void cpu_enable_cnp(struct arm64_cpu_capabilities const *cap);
 
+static bool __system_matches_cap(unsigned int n);
+
 /*
  * NOTE: Any changes to the visibility of features should be kept in
  * sync with the documentation of the CPU feature register ABI.
@@ -2146,6 +2148,17 @@ bool this_cpu_has_cap(unsigned int n)
 	return false;
 }
 
+static bool __system_matches_cap(unsigned int n)
+{
+	if (n < ARM64_NCAPS) {
+		const struct arm64_cpu_capabilities *cap = cpu_hwcaps_ptrs[n];
+
+		if (cap)
+			return cap->matches(cap, SCOPE_SYSTEM);
+	}
+	return false;
+}
+
 void cpu_set_feature(unsigned int num)
 {
 	WARN_ON(num >= MAX_CPU_FEATURES);
@@ -2218,7 +2231,7 @@ void __init setup_cpu_features(void)
 static bool __maybe_unused
 cpufeature_pan_not_uao(const struct arm64_cpu_capabilities *entry, int __unused)
 {
-	return (cpus_have_const_cap(ARM64_HAS_PAN) && !cpus_have_const_cap(ARM64_HAS_UAO));
+	return (__system_matches_cap(ARM64_HAS_PAN) && !__system_matches_cap(ARM64_HAS_UAO));
 }
 
 static void __maybe_unused cpu_enable_cnp(struct arm64_cpu_capabilities const *cap)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
