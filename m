Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C86FC515
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmWN7yKyzYycGF2LDz4zRNwbpxktGklCPUjQTipbkfg=; b=g9/S1XnH3PuYCP
	z0tyI/6bO3xc8kZ2MS3Gx3rAVyymg76+rcaggcJnTrqrwZdey0l/WAqunrrPja8pUYPShu+/WJ68u
	ksa6wAmTJANl0tpnDUyxQlJ3z4AsMqMU+o/yXVa61Wbype97HfcE+xHX67Tjm2EJO/f8KmMNLWmni
	qyEvcxWI93RbPjQydojVWp8WSVcOGyj18GYYU4sB1LABK7ZABFltOHYbs01zXv5FoDP4rZ6aBJCpk
	WbT70AU9jlSjxlCbY8/edxGUG1iJX8ydR5AmBkPkwaWS0WiaFmRusrdh/6k0ffwX0HQe3/LA5POm+
	V3uGo0UGR5CitH1iVFTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCyf-0006Sb-4V; Thu, 14 Nov 2019 11:07:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCyG-0006Gr-6Z
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:07:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B850C328;
 Thu, 14 Nov 2019 03:07:27 -0800 (PST)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 648ED3F6C4;
 Thu, 14 Nov 2019 03:07:26 -0800 (PST)
From: Steven Price <steven.price@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
Subject: [PATCH v4 1/3] arm64: Rename WORKAROUND_1165522 to SPECULATIVE_AT_VHE
Date: Thu, 14 Nov 2019 11:06:56 +0000
Message-Id: <20191114110658.20560-2-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191114110658.20560-1-steven.price@arm.com>
References: <20191114110658.20560-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_030728_326584_6FC31B74 
X-CRM114-Status: GOOD (  16.66  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cortex-A55 is affected by a similar erratum, so rename the existing
workaround for errarum 1165522 so it can be used for both errata.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm64/Kconfig                |  4 ++++
 arch/arm64/include/asm/cpucaps.h  |  2 +-
 arch/arm64/include/asm/kvm_host.h |  2 +-
 arch/arm64/include/asm/kvm_hyp.h  |  2 +-
 arch/arm64/kernel/cpu_errata.c    | 17 +++++++++++++----
 arch/arm64/kvm/hyp/switch.c       |  2 +-
 arch/arm64/kvm/hyp/tlb.c          |  4 ++--
 7 files changed, 23 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3e53441ee067..ce976d69cd3c 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -516,9 +516,13 @@ config ARM64_ERRATUM_1418040
 
 	  If unsure, say Y.
 
+config ARM64_WORKAROUND_SPECULATIVE_AT_VHE
+	bool
+
 config ARM64_ERRATUM_1165522
 	bool "Cortex-A76: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
 	default y
+	select ARM64_WORKAROUND_SPECULATIVE_AT_VHE
 	help
 	  This option adds a workaround for ARM Cortex-A76 erratum 1165522.
 
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index b92683871119..327a38a5162f 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -44,7 +44,7 @@
 #define ARM64_SSBS				34
 #define ARM64_WORKAROUND_1418040		35
 #define ARM64_HAS_SB				36
-#define ARM64_WORKAROUND_1165522		37
+#define ARM64_WORKAROUND_SPECULATIVE_AT_VHE	37
 #define ARM64_HAS_ADDRESS_AUTH_ARCH		38
 #define ARM64_HAS_ADDRESS_AUTH_IMP_DEF		39
 #define ARM64_HAS_GENERIC_AUTH_ARCH		40
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 5ecb091c8576..8619e94e9e77 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -534,7 +534,7 @@ static inline bool kvm_arch_requires_vhe(void)
 		return true;
 
 	/* Some implementations have defects that confine them to VHE */
-	if (cpus_have_cap(ARM64_WORKAROUND_1165522))
+	if (cpus_have_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE))
 		return true;
 
 	return false;
diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index 97f21cc66657..167a161dd596 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -95,7 +95,7 @@ static __always_inline void __hyp_text __load_guest_stage2(struct kvm *kvm)
 	 * before we can switch to the EL1/EL0 translation regime used by
 	 * the guest.
 	 */
-	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_1165522));
+	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT_VHE));
 }
 
 #endif /* __ARM64_KVM_HYP_H__ */
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 4f8187a4fc46..6242bba1cfb9 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -744,6 +744,16 @@ static const struct midr_range erratum_1418040_list[] = {
 };
 #endif
 
+#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT_VHE
+static const struct midr_range erratum_speculative_at_vhe_list[] = {
+#ifdef CONFIG_ARM64_ERRATUM_1165522
+	/* Cortex A76 r0p0 to r2p0 */
+	MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 2, 0),
+#endif
+	{},
+};
+#endif
+
 const struct arm64_cpu_capabilities arm64_errata[] = {
 #ifdef CONFIG_ARM64_WORKAROUND_CLEAN_CACHE
 	{
@@ -868,12 +878,11 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		ERRATA_MIDR_RANGE_LIST(erratum_1418040_list),
 	},
 #endif
-#ifdef CONFIG_ARM64_ERRATUM_1165522
+#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT_VHE
 	{
-		/* Cortex-A76 r0p0 to r2p0 */
 		.desc = "ARM erratum 1165522",
-		.capability = ARM64_WORKAROUND_1165522,
-		ERRATA_MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 2, 0),
+		.capability = ARM64_WORKAROUND_SPECULATIVE_AT_VHE,
+		ERRATA_MIDR_RANGE_LIST(erratum_speculative_at_vhe_list),
 	},
 #endif
 #ifdef CONFIG_ARM64_ERRATUM_1463225
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 72fbbd86eb5e..eefcaa6d839f 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -162,7 +162,7 @@ static void deactivate_traps_vhe(void)
 	 * before we can switch to the EL2/EL0 translation regime used by
 	 * the host.
 	 */
-	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_1165522));
+	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT_VHE));
 
 	write_sysreg(CPACR_EL1_DEFAULT, cpacr_el1);
 	write_sysreg(vectors, vbar_el1);
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index c2bc17ca6430..c827f3e0ba8f 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -23,7 +23,7 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
 
 	local_irq_save(cxt->flags);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_1165522)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
 		/*
 		 * For CPUs that are affected by ARM erratum 1165522, we
 		 * cannot trust stage-1 to be in a correct state at that
@@ -103,7 +103,7 @@ static void __hyp_text __tlb_switch_to_host_vhe(struct kvm *kvm,
 	write_sysreg(HCR_HOST_VHE_FLAGS, hcr_el2);
 	isb();
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_1165522)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
 		/* Restore the registers to what they were */
 		write_sysreg_el1(cxt->tcr, SYS_TCR);
 		write_sysreg_el1(cxt->sctlr, SYS_SCTLR);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
