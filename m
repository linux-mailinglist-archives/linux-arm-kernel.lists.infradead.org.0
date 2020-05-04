Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3A91C3611
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 11:49:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VjHHsTSov5oCjZ+a0rCgl3B6OuvFhpkKFpuzWKBNf+M=; b=sIGwPhtRYJ/PAq
	KrZ/pXA/U6Vq/sDrodCYYuPBF4nnr18GpD3xJjyzU4ErvgK59TbGbs5rhfa81wibfF2XukVsIXMep
	KGDOjqIfH1waVX+K5Je0l8N7hHYGDbea0Z9dL1IezQyDghywKZRxelZ4/S46M/l5OfIIhO+Wz7kTB
	PgK9FfJEZ9zpgc35cozNSMgJyzNYFvz6Cp6+BgiZvkKaNGdEwqwIho3P2EEILg2GWjWnpH8RT8OmG
	IFgT8xOrcS0UhQ7I6+9XgqPMrwozm/+EVErm30mn1J4lmglMGY7XXJr4IcNNcFq1zDXJsNhRQjJ2Q
	o1A/MEyh7B4h08lIhUfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVXj9-0000eD-AK; Mon, 04 May 2020 09:49:31 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVXj2-0000dL-Js
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 09:49:26 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id d206so21621341ybh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 02:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=y9dFgvlWhMm7eyDqb4Km2I0S9O9iV+ZkdVVSNysY8QA=;
 b=C9pybFUzKNf8Q1fxqQmlQOPNWpgbUizZWQelREouO7rS0dUD6P/y+tcHfRif30es/u
 9vz6ejkyIBQU71JNMWC3/9DWu7gET4etwKy4EPGbBuGF5ZCurlDuoShWi5vKDWXEdr1j
 SeOCNzf6XA79yCDmY+Vmjhmqs9JTlMLlceMNONCRBZ6Faam1mELDlOLNyYlTHTY87T9A
 kNvChfhrbAWpLU+e7ykM+y4LrUAVUGEbt4FpsMxuKATV7u29bOhTTIrtH0PtR6I0NdWY
 YoYRDGoeL5ivdd+uvBH2ltSQHbaCK+uA7CkYqwnfWyVH7BS+MhveZtQyOjjwrxypFfDp
 NSyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=y9dFgvlWhMm7eyDqb4Km2I0S9O9iV+ZkdVVSNysY8QA=;
 b=QGUs8c9pEaqThxVn+F7TSJTc/gYRPIKP60Oy0CoGiqt0iHZ1b2GqswSd9Y18iKQEWa
 IeVoddtuIdw56xkMSOPt8I4oe5tLKwxKepf70/LZmosdffKqWu42n42MtUFt4qClGQu3
 mxLhhtmeZL6XammRSIgzWPAQK6mVKg3MkIPeXKwJjUY2Fm06Qih0C4hadUdhmHBmdRUq
 MLIP4LSeoa7fjMLNTxNT/dynfpPrlHPXyxeRBdDiYNtyvPdOsQPljynajvDhGTE1gJwG
 Ez+//ybuOgFwY/Z7vgWx3tvKKTdvf+9SRzjQEOaxDVj9j1tv/A0AlzXP+smWG601WSt1
 GTyg==
X-Gm-Message-State: AGi0Pub+q0bWH1whU6zyuW1w/eFXfiwHUVua43gxzOT80jdeUE+Q0sUd
 7sTkqN0mblGeNmM3VvrOt6tZX4GeJtw=
X-Google-Smtp-Source: APiQypLiTgRpUIUWymXpb8dwHY/izK8nIc/HLVukGhgHRCQAB5gLWRy5tKYdeRdHzSmivbH+T4hvVo58DKw=
X-Received: by 2002:a25:ce0d:: with SMTP id x13mr790980ybe.328.1588585763056; 
 Mon, 04 May 2020 02:49:23 -0700 (PDT)
Date: Mon,  4 May 2020 10:48:58 +0100
Message-Id: <20200504094858.108917-1-ascull@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
Subject: [PATCH v3] arm64: Unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
From: Andrew Scull <ascull@google.com>
To: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_024924_686635_CFB63DE1 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Steven Price <steven.price@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Errata 1165522, 1319367 and 1530923 each allow TLB entries to be
allocated as a result of a speculative AT instruction. In order to
avoid mandating VHE on certain affected CPUs, apply the workaround to
both the nVHE and the VHE case for all affected CPUs.

Signed-off-by: Andrew Scull <ascull@google.com>
CC: Marc Zyngier <maz@kernel.org>
CC: James Morse <james.morse@arm.com>
CC: Suzuki K Poulose <suzuki.poulose@arm.com>
CC: Will Deacon <will@kernel.org>
CC: Steven Price <steven.price@arm.com>
---
From v2 <20200422161346.67325-1-ascull@google.com>:
 - const_cap -> final_cap merge correction
 - based on 5.7 rc4
---
 arch/arm64/Kconfig                | 39 ++++++++++++++-----------------
 arch/arm64/include/asm/cpucaps.h  | 15 ++++++------
 arch/arm64/include/asm/kvm_host.h |  4 ----
 arch/arm64/include/asm/kvm_hyp.h  |  2 +-
 arch/arm64/kernel/cpu_errata.c    | 25 +++++++++-----------
 arch/arm64/kvm/hyp/switch.c       |  6 ++---
 arch/arm64/kvm/hyp/sysreg-sr.c    |  6 +++--
 arch/arm64/kvm/hyp/tlb.c          | 11 +++++----
 8 files changed, 50 insertions(+), 58 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..c0298e8f1a2d 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -524,13 +524,13 @@ config ARM64_ERRATUM_1418040
 
 	  If unsure, say Y.
 
-config ARM64_WORKAROUND_SPECULATIVE_AT_VHE
+config ARM64_WORKAROUND_SPECULATIVE_AT
 	bool
 
 config ARM64_ERRATUM_1165522
-	bool "Cortex-A76: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
+	bool "Cortex-A76: 1165522: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
 	default y
-	select ARM64_WORKAROUND_SPECULATIVE_AT_VHE
+	select ARM64_WORKAROUND_SPECULATIVE_AT
 	help
 	  This option adds a workaround for ARM Cortex-A76 erratum 1165522.
 
@@ -540,10 +540,23 @@ config ARM64_ERRATUM_1165522
 
 	  If unsure, say Y.
 
+config ARM64_ERRATUM_1319367
+	bool "Cortex-A57/A72: 1319537: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
+	default y
+	select ARM64_WORKAROUND_SPECULATIVE_AT
+	help
+	  This option adds work arounds for ARM Cortex-A57 erratum 1319537
+	  and A72 erratum 1319367
+
+	  Cortex-A57 and A72 cores could end-up with corrupted TLBs by
+	  speculating an AT instruction during a guest context switch.
+
+	  If unsure, say Y.
+
 config ARM64_ERRATUM_1530923
-	bool "Cortex-A55: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
+	bool "Cortex-A55: 1530923: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
 	default y
-	select ARM64_WORKAROUND_SPECULATIVE_AT_VHE
+	select ARM64_WORKAROUND_SPECULATIVE_AT
 	help
 	  This option adds a workaround for ARM Cortex-A55 erratum 1530923.
 
@@ -569,22 +582,6 @@ config ARM64_ERRATUM_1286807
 	  invalidated has been observed by other observers. The
 	  workaround repeats the TLBI+DSB operation.
 
-config ARM64_WORKAROUND_SPECULATIVE_AT_NVHE
-	bool
-
-config ARM64_ERRATUM_1319367
-	bool "Cortex-A57/A72: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
-	default y
-	select ARM64_WORKAROUND_SPECULATIVE_AT_NVHE
-	help
-	  This option adds work arounds for ARM Cortex-A57 erratum 1319537
-	  and A72 erratum 1319367
-
-	  Cortex-A57 and A72 cores could end-up with corrupted TLBs by
-	  speculating an AT instruction during a guest context switch.
-
-	  If unsure, say Y.
-
 config ARM64_ERRATUM_1463225
 	bool "Cortex-A76: Software Step might prevent interrupt recognition"
 	default y
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index 8eb5a088ae65..dc70883062ba 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -44,7 +44,7 @@
 #define ARM64_SSBS				34
 #define ARM64_WORKAROUND_1418040		35
 #define ARM64_HAS_SB				36
-#define ARM64_WORKAROUND_SPECULATIVE_AT_VHE	37
+#define ARM64_WORKAROUND_SPECULATIVE_AT	37
 #define ARM64_HAS_ADDRESS_AUTH_ARCH		38
 #define ARM64_HAS_ADDRESS_AUTH_IMP_DEF		39
 #define ARM64_HAS_GENERIC_AUTH_ARCH		40
@@ -55,13 +55,12 @@
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_TVM	45
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM	46
 #define ARM64_WORKAROUND_1542419		47
-#define ARM64_WORKAROUND_SPECULATIVE_AT_NVHE	48
-#define ARM64_HAS_E0PD				49
-#define ARM64_HAS_RNG				50
-#define ARM64_HAS_AMU_EXTN			51
-#define ARM64_HAS_ADDRESS_AUTH			52
-#define ARM64_HAS_GENERIC_AUTH			53
+#define ARM64_HAS_E0PD				48
+#define ARM64_HAS_RNG				49
+#define ARM64_HAS_AMU_EXTN			50
+#define ARM64_HAS_ADDRESS_AUTH			51
+#define ARM64_HAS_GENERIC_AUTH			52
 
-#define ARM64_NCAPS				54
+#define ARM64_NCAPS				53
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 32c8a675e5a4..d0e7d7934a1f 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -573,10 +573,6 @@ static inline bool kvm_arch_requires_vhe(void)
 	if (system_supports_sve())
 		return true;
 
-	/* Some implementations have defects that confine them to VHE */
-	if (cpus_have_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE))
-		return true;
-
 	return false;
 }
 
diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index fe57f60f06a8..238d2e049694 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -102,7 +102,7 @@ static __always_inline void __hyp_text __load_guest_stage2(struct kvm *kvm)
 	 * above before we can switch to the EL1/EL0 translation regime used by
 	 * the guest.
 	 */
-	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT_VHE));
+	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT));
 }
 
 #endif /* __ARM64_KVM_HYP_H__ */
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index df56d2295d16..95006a791026 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -635,7 +635,7 @@ has_neoverse_n1_erratum_1542419(const struct arm64_cpu_capabilities *entry,
 	return is_midr_in_range(midr, &range) && has_dic;
 }
 
-#if defined(CONFIG_HARDEN_EL2_VECTORS) || defined(CONFIG_ARM64_ERRATUM_1319367)
+#if defined(CONFIG_HARDEN_EL2_VECTORS)
 
 static const struct midr_range ca57_a72[] = {
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A57),
@@ -757,12 +757,16 @@ static const struct arm64_cpu_capabilities erratum_843419_list[] = {
 };
 #endif
 
-#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT_VHE
-static const struct midr_range erratum_speculative_at_vhe_list[] = {
+#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT
+static const struct midr_range erratum_speculative_at_list[] = {
 #ifdef CONFIG_ARM64_ERRATUM_1165522
 	/* Cortex A76 r0p0 to r2p0 */
 	MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 2, 0),
 #endif
+#ifdef CONFIG_ARM64_ERRATUM_1319367
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A57),
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A72),
+#endif
 #ifdef CONFIG_ARM64_ERRATUM_1530923
 	/* Cortex A55 r0p0 to r2p0 */
 	MIDR_RANGE(MIDR_CORTEX_A55, 0, 0, 2, 0),
@@ -897,11 +901,11 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		ERRATA_MIDR_RANGE_LIST(erratum_1418040_list),
 	},
 #endif
-#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT_VHE
+#ifdef CONFIG_ARM64_WORKAROUND_SPECULATIVE_AT
 	{
-		.desc = "ARM errata 1165522, 1530923",
-		.capability = ARM64_WORKAROUND_SPECULATIVE_AT_VHE,
-		ERRATA_MIDR_RANGE_LIST(erratum_speculative_at_vhe_list),
+		.desc = "ARM errata 1165522, 1319367, 1530923",
+		.capability = ARM64_WORKAROUND_SPECULATIVE_AT,
+		ERRATA_MIDR_RANGE_LIST(erratum_speculative_at_list),
 	},
 #endif
 #ifdef CONFIG_ARM64_ERRATUM_1463225
@@ -934,13 +938,6 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		.matches = has_neoverse_n1_erratum_1542419,
 		.cpu_enable = cpu_enable_trap_ctr_access,
 	},
-#endif
-#ifdef CONFIG_ARM64_ERRATUM_1319367
-	{
-		.desc = "ARM erratum 1319367",
-		.capability = ARM64_WORKAROUND_SPECULATIVE_AT_NVHE,
-		ERRATA_MIDR_RANGE_LIST(ca57_a72),
-	},
 #endif
 	{
 	}
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 8a1e81a400e0..1336e6f0acdf 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -138,7 +138,7 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
 
 	write_sysreg(val, cptr_el2);
 
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
 
 		isb();
@@ -181,7 +181,7 @@ static void deactivate_traps_vhe(void)
 	 * above before we can switch to the EL2/EL0 translation regime used by
 	 * the host.
 	 */
-	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT_VHE));
+	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT));
 
 	write_sysreg(CPACR_EL1_DEFAULT, cpacr_el1);
 	write_sysreg(vectors, vbar_el1);
@@ -192,7 +192,7 @@ static void __hyp_text __deactivate_traps_nvhe(void)
 {
 	u64 mdcr_el2 = read_sysreg(mdcr_el2);
 
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		u64 val;
 
 		/*
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 75b1925763f1..3234a9dc149f 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -118,7 +118,8 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
 	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
 
-	if (!cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (has_vhe() ||
+	    !cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
 		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
 	} else	if (!ctxt->__hyp_running_vcpu) {
@@ -149,7 +150,8 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->sys_regs[PAR_EL1],		par_el1);
 	write_sysreg(ctxt->sys_regs[TPIDR_EL1],		tpidr_el1);
 
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE) &&
+	if (!has_vhe() &&
+	    cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT) &&
 	    ctxt->__hyp_running_vcpu) {
 		/*
 		 * Must only be done for host registers, hence the context
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index ceaddbe4279f..d063a576d511 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -23,7 +23,7 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
 
 	local_irq_save(cxt->flags);
 
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		/*
 		 * For CPUs that are affected by ARM errata 1165522 or 1530923,
 		 * we cannot trust stage-1 to be in a correct state at that
@@ -63,7 +63,7 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
 static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
 						  struct tlb_inv_context *cxt)
 {
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		u64 val;
 
 		/*
@@ -79,8 +79,9 @@ static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
 		isb();
 	}
 
+	/* __load_guest_stage2() includes an ISB for the workaround. */
 	__load_guest_stage2(kvm);
-	isb();
+	asm(ALTERNATIVE("isb", "nop", ARM64_WORKAROUND_SPECULATIVE_AT));
 }
 
 static void __hyp_text __tlb_switch_to_guest(struct kvm *kvm,
@@ -103,7 +104,7 @@ static void __hyp_text __tlb_switch_to_host_vhe(struct kvm *kvm,
 	write_sysreg(HCR_HOST_VHE_FLAGS, hcr_el2);
 	isb();
 
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		/* Restore the registers to what they were */
 		write_sysreg_el1(cxt->tcr, SYS_TCR);
 		write_sysreg_el1(cxt->sctlr, SYS_SCTLR);
@@ -117,7 +118,7 @@ static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
 {
 	write_sysreg(0, vttbr_el2);
 
-	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		/* Ensure write of the host VMID */
 		isb();
 		/* Restore the host's TCR_EL1 */
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
