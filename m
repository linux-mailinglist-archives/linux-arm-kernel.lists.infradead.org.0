Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE8B1A7306
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 07:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bHejWfr2AwJ8i9q0thGo/7YOIVsVisi7nxF93+M9fnY=; b=tbE55AaXnwV5xsidq7ItgzoNi1
	2kjavRjGIeVRR45AJ4tLmAUYMogsHnllJCUaEKO9W08NrgFmYbJmHAsPPHrlwdfPbBOVuYwLFqbFw
	NSVKikiTJL8NoWseMqzkabAcCQXijhBPd/8+MbOTIi2DsvGQkM6s5vIXgKytDDvuBesSZDyoMNBc4
	5LI5UtoluueDry+Wm+WDJb+hMAOJjyXDK/nEXhwhOclnQf9Ysmi/r+n6ENpsUXqCl3dvXgr5u+5UK
	2I47aqdp9oFPhzjwew7BMUAZ+MxprhR1XruRo0RnvwBYBulOm49uZEGnWWaxDXM3RNSBi+8kNUDub
	887glu7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOEBk-0001ZX-Kj; Tue, 14 Apr 2020 05:32:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOEBC-0001Mf-Vk
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 05:32:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A8B131B;
 Mon, 13 Apr 2020 22:32:13 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0D8C73F68F;
 Mon, 13 Apr 2020 22:36:24 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/4] arm64: cpufeature: Extract meta-capability scope from
 list
Date: Tue, 14 Apr 2020 11:01:51 +0530
Message-Id: <1586842314-19527-2-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
References: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_223215_116319_4EBB8163 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the earlier commit 3ff047f6971d3c ("arm64: cpufeature: Fix
meta-capability cpufeature check"). This patch was added to fix the
dependency of individual meta-cpucaps checks on the array entry order. This
dependency was specifically added for cpufeature of system scope.

However this dependency can occur for cpufeature of boot scope such as
ARM64_HAS_ADDRESS_AUTH so this patch renames the helper function
__system_matches_cap to __cpufeature_matches_cap and invokes the match
handler with the scope fetched from the cpufeatures array list.

Fixes: 3ff047f6971d3c ("arm64: cpufeature: Fix meta-capability cpufeature check")
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 arch/arm64/kernel/cpufeature.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9fac745aa7bb..08795025409c 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -116,7 +116,7 @@ cpufeature_pan_not_uao(const struct arm64_cpu_capabilities *entry, int __unused)
 
 static void cpu_enable_cnp(struct arm64_cpu_capabilities const *cap);
 
-static bool __system_matches_cap(unsigned int n);
+static bool __cpufeature_matches_cap(unsigned int n);
 
 /*
  * NOTE: Any changes to the visibility of features should be kept in
@@ -1373,15 +1373,15 @@ static void cpu_clear_disr(const struct arm64_cpu_capabilities *__unused)
 static bool has_address_auth(const struct arm64_cpu_capabilities *entry,
 			     int __unused)
 {
-	return __system_matches_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
-	       __system_matches_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF);
+	return __cpufeature_matches_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
+	       __cpufeature_matches_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF);
 }
 
 static bool has_generic_auth(const struct arm64_cpu_capabilities *entry,
 			     int __unused)
 {
-	return __system_matches_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
-	       __system_matches_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF);
+	return __cpufeature_matches_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
+	       __cpufeature_matches_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF);
 }
 #endif /* CONFIG_ARM64_PTR_AUTH */
 
@@ -2251,16 +2251,16 @@ bool this_cpu_has_cap(unsigned int n)
 /*
  * This helper function is used in a narrow window when,
  * - The system wide safe registers are set with all the SMP CPUs and,
- * - The SYSTEM_FEATURE cpu_hwcaps may not have been set.
+ * - The cpu_hwcaps may not have been set.
  * In all other cases cpus_have_{const_}cap() should be used.
  */
-static bool __system_matches_cap(unsigned int n)
+static bool __cpufeature_matches_cap(unsigned int n)
 {
 	if (n < ARM64_NCAPS) {
 		const struct arm64_cpu_capabilities *cap = cpu_hwcaps_ptrs[n];
 
 		if (cap)
-			return cap->matches(cap, SCOPE_SYSTEM);
+			return cap->matches(cap, cpucap_default_scope(cap));
 	}
 	return false;
 }
@@ -2337,7 +2337,7 @@ void __init setup_cpu_features(void)
 static bool __maybe_unused
 cpufeature_pan_not_uao(const struct arm64_cpu_capabilities *entry, int __unused)
 {
-	return (__system_matches_cap(ARM64_HAS_PAN) && !__system_matches_cap(ARM64_HAS_UAO));
+	return (__cpufeature_matches_cap(ARM64_HAS_PAN) && !__cpufeature_matches_cap(ARM64_HAS_UAO));
 }
 
 static void __maybe_unused cpu_enable_cnp(struct arm64_cpu_capabilities const *cap)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
