Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44381173DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:16:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zZZSm8brlm3jgNztC7zuGxGzz58VDZlarX5y60k9C0=; b=ZEukncdtTQkkVM
	lEKdVKOb4odmlplujadRDdJj7QLz1rPpvmKvACN/ODn66UYMDUtbyiCOFRZwfhn7mf55zTIMWhmp2
	39g1gUipKjAPd9DLR3bLmuXz1ZIYnKnlsSoKJpr7QkWGs2IDEShVjsovozOcZH2kYxlUTqpiyIuuv
	mkJQn6kq8Anjrh03MGTzQSAOKOw+quA8+DKkOXaS0Z0Wu9KhOL2SeVu2NZSWXW7w04e1QxkvmWrMc
	bhlBgq/t/eHWgEuCJfUK4ljogkLmaR6lsIK95HRdD5crecmIDw4hX/GCO5q0gVLw9p7CAEWy3IEOR
	ARevVnka7pUD4xv2qwtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNa2-0001Xw-EA; Mon, 09 Dec 2019 18:16:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNWF-00054Q-0a
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:12:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC992113E;
 Mon,  9 Dec 2019 10:12:25 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4B6013F6CF;
 Mon,  9 Dec 2019 10:12:25 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v9 2/4] arm64: Factor out checks for KASLR in KPTI code into
 separate function
Date: Mon,  9 Dec 2019 18:12:15 +0000
Message-Id: <20191209181217.44890-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191209181217.44890-1-broonie@kernel.org>
References: <20191209181217.44890-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101227_263536_EA84D55A 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for integrating E0PD support with KASLR factor out the
checks for interaction between KASLR and KPTI done in boot context into
a new function kaslr_requires_kpti(), in the process clarifying the
distinction between what we do in boot context and what we do at
runtime.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/include/asm/mmu.h   | 62 ++++++++++++++++++++++++----------
 arch/arm64/kernel/cpufeature.c |  2 +-
 2 files changed, 46 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index f217e3292919..2a93d34cc0ca 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -35,10 +35,46 @@ static inline bool arm64_kernel_unmapped_at_el0(void)
 	       cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);
 }
 
-static inline bool arm64_kernel_use_ng_mappings(void)
+/*
+ * This check is triggered during the early boot before the cpufeature
+ * is initialised. Checking the status on the local CPU allows the boot
+ * CPU to detect the need for non-global mappings and thus avoiding a
+ * pagetable re-write after all the CPUs are booted. This check will be
+ * anyway run on individual CPUs, allowing us to get the consistent
+ * state once the SMP CPUs are up and thus make the switch to non-global
+ * mappings if required.
+ */
+static inline bool kaslr_requires_kpti(void)
 {
 	bool tx1_bug;
 
+	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
+		return false;
+
+	/*
+	 * Systems affected by Cavium erratum 24756 are incompatible
+	 * with KPTI.
+	 */
+	if (!IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456)) {
+		tx1_bug = false;
+#ifndef MODULE
+	} else if (!static_branch_likely(&arm64_const_caps_ready)) {
+		extern const struct midr_range cavium_erratum_27456_cpus[];
+
+		tx1_bug = is_midr_in_range_list(read_cpuid_id(),
+						cavium_erratum_27456_cpus);
+#endif
+	} else {
+		tx1_bug = __cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_27456);
+	}
+	if (tx1_bug)
+		return false;
+
+	return kaslr_offset() > 0;
+}
+
+static inline bool arm64_kernel_use_ng_mappings(void)
+{
 	/* What's a kpti? Use global mappings if we don't know. */
 	if (!IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
 		return false;
@@ -52,29 +88,21 @@ static inline bool arm64_kernel_use_ng_mappings(void)
 	if (arm64_kernel_unmapped_at_el0())
 		return true;
 
-	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
+	/*
+	 * Once we are far enough into boot for capabilities to be
+	 * ready we will have confirmed if we are using non-global
+	 * mappings so don't need to consider anything else here.
+	 */
+	if (static_branch_likely(&arm64_const_caps_ready))
 		return false;
 
 	/*
 	 * KASLR is enabled so we're going to be enabling kpti on non-broken
 	 * CPUs regardless of their susceptibility to Meltdown. Rather
 	 * than force everybody to go through the G -> nG dance later on,
-	 * just put down non-global mappings from the beginning.
+	 * just put down non-global mappings from the beginning
 	 */
-	if (!IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456)) {
-		tx1_bug = false;
-#ifndef MODULE
-	} else if (!static_branch_likely(&arm64_const_caps_ready)) {
-		extern const struct midr_range cavium_erratum_27456_cpus[];
-
-		tx1_bug = is_midr_in_range_list(read_cpuid_id(),
-						cavium_erratum_27456_cpus);
-#endif
-	} else {
-		tx1_bug = __cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_27456);
-	}
-
-	return !tx1_bug && kaslr_offset() > 0;
+	return kaslr_requires_kpti();
 }
 
 typedef void (*bp_hardening_cb_t)(void);
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9d578e720168..88aa5ab02926 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1009,7 +1009,7 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
 	}
 
 	/* Useful for KASLR robustness */
-	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && kaslr_offset() > 0) {
+	if (kaslr_requires_kpti()) {
 		if (!__kpti_forced) {
 			str = "KASLR";
 			__kpti_forced = 1;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
