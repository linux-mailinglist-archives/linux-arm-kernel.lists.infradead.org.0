Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12776EE813
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 20:17:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ia7c5QttYuojFpduYWsJ/znPUCpCnwxf2MN1JxgAs1I=; b=WJ5YYecnhKJBtY
	oXzOoOxJpnYgyzsLVAo8SySn/hQ+Byg0HARfDbu0JQw/OzgrQY2zNHvpJxGaLo4o739eZfVrZ/Gb6
	tc6pgC4sg7G8ZS3udw1aC2RjBy/I3mc/z6CVfO86j6Aqrtsgt11Gbca7ms92b8j256nzVdSkAlpw7
	9S3EpT1LKRr3cW1jILmUkT0wxRmx6wNbtMdK/d0K9P5kF2VbLduZpOEdQOMghRfIRh89Yo/jvqXO/
	m5/U9ekNaieHrM9pb/TjeRvTXeVMIyn95XzMlKlX5txsYphoOZIUUoZWeqHLu7G1Lbfyhk/mT82HO
	+oyHJaLdKzzEMbpIlFpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRhqb-0003xl-6R; Mon, 04 Nov 2019 19:17:05 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRhpo-0003J9-Hc
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 19:16:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e4ZJo1o41crkwDnqVFDEgG1ZP2ZGGvSyxm3T5I55f58=; b=pSlf56LQ+PrgCuQQ6jQyhwosOS
 0sToKkkNY5hJxhXq0OgP9cWNBVh8Dwkr1RyS0YHXhkRKOz9md0kEdPkxk8yzPaKFh4OBqFza9JrLk
 1b8+f1JszDOswK2wAi2SMMPynEEYwiNZVcZb37LQlK5MkMvvP3raEiuhx3SrnwLmoCX4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iRhpl-0002zK-7y; Mon, 04 Nov 2019 19:16:13 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 3BCC42743035; Mon,  4 Nov 2019 19:16:12 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v5 2/4] arm64: Factor out checks for KASLR in KPTI code into
 separate function
Date: Mon,  4 Nov 2019 19:15:22 +0000
Message-Id: <20191104191524.10596-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191104191524.10596-1-broonie@kernel.org>
References: <20191104191524.10596-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_111616_604566_F4BE7E3C 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
---
 arch/arm64/include/asm/mmu.h   | 53 +++++++++++++++++++++++-----------
 arch/arm64/kernel/cpufeature.c |  2 +-
 2 files changed, 37 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index f217e3292919..55e285fff262 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -35,10 +35,37 @@ static inline bool arm64_kernel_unmapped_at_el0(void)
 	       cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);
 }
 
-static inline bool arm64_kernel_use_ng_mappings(void)
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
@@ -52,29 +79,21 @@ static inline bool arm64_kernel_use_ng_mappings(void)
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
index 2cf2b129ebb4..0d551af06421 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1003,7 +1003,7 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
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
