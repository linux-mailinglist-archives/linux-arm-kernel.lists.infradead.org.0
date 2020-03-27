Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7725195936
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 15:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DHgwbRGi6TyxxCl5vG2gjc3S/i5VTH9dB8ILfXhwlao=; b=MWIHBn30D3V19W
	CYMo9OG27vO7Mt01s7gYRywc9UQ7MLny9m6EvUes4eJx0cMfYbl6o4MLMDvH6S7Ki9cTBGgMvjYyz
	nBoTNS+3m4LjzOYsmvd0qXf8hO4fkZqZuisqPa/6gQfxdUSrDsuKhzJc/KEnIe5Tm98jU5WxwOqnm
	hLiMn0E2RjqEv+6XXtQdfNuwUUTNKzRE2sfUyr4cFVDYd3Vp81HknsI0DkGk8cG1uJJeG8nmH+wnb
	zOcLoEHJWtTfibksEna7mHsXxRP8D0onR0PUReVsEn0GPHxu/HCSYzu2DvOy0dXccFVBOoIEy6bjY
	2Wj22FCcRj7dV/Jy6ybw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHq9f-0001Cl-10; Fri, 27 Mar 2020 14:40:15 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHq9H-0001Bo-1Q
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 14:39:53 +0000
Received: by mail-pg1-x549.google.com with SMTP id j20so7956466pgm.19
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 07:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=wNYs/arAD/VZyDGpTVWTIvdCweSilsmLX3GYESxd/kA=;
 b=qqP54O3Nml4KOSINTRpWb/iHfib19/8Q92nI/BGUgVb9p3Btlx51pZ/wfP3yG0vXy8
 uQ2ruvKbhZDy/4FE3k0a6onFndVXISCBgLumGeklbq2NrP3rNvbXlmkprea+24VvhACX
 kh5e/Pqo0m7PRD25OQYEGdBY7oNYEjqWUieRQZlFl3pGlFAiU8keWO7lrhZBkamc3x02
 H9gGN5CMeveSMYsZfjb4eJITQPsU7z3hPzC/PdjvAg9Gk+Ch9oWl5910iuuXqqH0wN5T
 KSeMdrUl5bkS8KpKClujwZoakjuAco7m3Ou2/3uzLBdr6IemWrOdv9jEaTd9fRAio/OG
 QsQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=wNYs/arAD/VZyDGpTVWTIvdCweSilsmLX3GYESxd/kA=;
 b=kQ2OP+aais2JZzTV7Gc+hnNQoxu9kGPH+Ipm1KzQSymBu49yLf08+vWniba/84wHD+
 zyGj9DV7dxsZYIFf8Wy5ku5juCr3zFNwo851A+A2xwdCIuOySczDAo3rbfhn92DAhGai
 U59Ga15IjfP+kTXWu9zdFvn5XROh2E2/iPc7ri4v1TdH8AD7GDZdwVjWb8sZZ84etwD3
 2nCtWPSKleE51VQfx+v4uzqAVGj0gXdUoRUIqh47LS0F0H4DlN4ZQi4cHTKFmGkOruPh
 uqikBfwdn05NKZsCbP9j4ja5wNAj7QD+5Pu34zidv+s24vz3CVDBW8MYLYKPZ0FGNv7r
 93fg==
X-Gm-Message-State: ANhLgQ0bVxU85rapzUdDhF8805VuA3/LVt0JhVTI+li7pwRb1+bPEw9e
 DoK8molnQARq9INYeyuEbXFgT3B4h9k2nk8BQEqqOQ8dkaNMT1alzuub9H9QGbhBZzxrIdDSYnE
 cToDII0d5sbu3bb/V8hcYssqR/HiMh7RFXsYDR0mkHFUx/sqTzaCs59Np9e06Y6lOWF62Ct0htK
 /XoaRs
X-Google-Smtp-Source: ADFU+vuU7rydmIHq6ZpJje+bfjO/Q7bo/vIlkXmHe1Td27LgnvjGzLOu/3WeIwHg4OrTm+kyIwoJOOx0jdY=
X-Received: by 2002:a63:5050:: with SMTP id q16mr14094983pgl.118.1585319988485; 
 Fri, 27 Mar 2020 07:39:48 -0700 (PDT)
Date: Fri, 27 Mar 2020 14:39:41 +0000
Message-Id: <20200327143941.195626-1-ascull@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
From: Andrew Scull <ascull@google.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_073951_108652_781448FE 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: qwandor@google.com, qperret@google.com, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Steven Price <steven.price@arm.com>,
 Will Deacon <will@kernel.org>, wedsonaf@google.com,
 Andrew Scull <ascull@google.com>, James Morse <james.morse@arm.com>,
 dbrazdil@google.com, kernel-team@android.com, tabba@google.com
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

I'm not able to test the workarounds properly for the affected CPUs but
have built and booted under qemu configs with and without VHE as well as
the workaround being enabled and disabled.

As there exist work arounds for nVHE and VHE, it doesn't appear to be a
technical limitation that meant VHE was being mandated. Please correct
me if this understanding is inaccurate. Thanks!
---
 arch/arm64/Kconfig                | 39 ++++++++++++++-----------------
 arch/arm64/include/asm/cpucaps.h  |  9 ++++---
 arch/arm64/include/asm/kvm_host.h |  4 ----
 arch/arm64/include/asm/kvm_hyp.h  |  2 +-
 arch/arm64/kernel/cpu_errata.c    | 25 +++++++++-----------
 arch/arm64/kvm/hyp/switch.c       |  6 ++---
 arch/arm64/kvm/hyp/sysreg-sr.c    |  4 ++--
 arch/arm64/kvm/hyp/tlb.c          |  8 +++----
 8 files changed, 43 insertions(+), 54 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..7492b929cb12 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -521,13 +521,13 @@ config ARM64_ERRATUM_1418040
 
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
 
@@ -537,10 +537,23 @@ config ARM64_ERRATUM_1165522
 
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
 
@@ -566,22 +579,6 @@ config ARM64_ERRATUM_1286807
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
index 865e0253fc1e..e396e357f5b2 100644
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
@@ -55,10 +55,9 @@
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_TVM	45
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM	46
 #define ARM64_WORKAROUND_1542419		47
-#define ARM64_WORKAROUND_SPECULATIVE_AT_NVHE	48
-#define ARM64_HAS_E0PD				49
-#define ARM64_HAS_RNG				50
+#define ARM64_HAS_E0PD				48
+#define ARM64_HAS_RNG				49
 
-#define ARM64_NCAPS				51
+#define ARM64_NCAPS				50
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 57fd46acd058..4c8acbb949ce 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -572,10 +572,6 @@ static inline bool kvm_arch_requires_vhe(void)
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
index 703ad0a84f99..fe3bbdb82c70 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -637,7 +637,7 @@ has_neoverse_n1_erratum_1542419(const struct arm64_cpu_capabilities *entry,
 	return is_midr_in_range(midr, &range) && has_dic;
 }
 
-#if defined(CONFIG_HARDEN_EL2_VECTORS) || defined(CONFIG_ARM64_ERRATUM_1319367)
+#if defined(CONFIG_HARDEN_EL2_VECTORS)
 
 static const struct midr_range ca57_a72[] = {
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A57),
@@ -759,12 +759,16 @@ static const struct arm64_cpu_capabilities erratum_843419_list[] = {
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
@@ -899,11 +903,11 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
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
@@ -936,13 +940,6 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
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
index 925086b46136..71d4a7250421 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -127,7 +127,7 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
 
 	write_sysreg(val, cptr_el2);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
 
 		isb();
@@ -170,7 +170,7 @@ static void deactivate_traps_vhe(void)
 	 * above before we can switch to the EL2/EL0 translation regime used by
 	 * the host.
 	 */
-	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT_VHE));
+	asm(ALTERNATIVE("nop", "isb", ARM64_WORKAROUND_SPECULATIVE_AT));
 
 	write_sysreg(CPACR_EL1_DEFAULT, cpacr_el1);
 	write_sysreg(vectors, vbar_el1);
@@ -181,7 +181,7 @@ static void __hyp_text __deactivate_traps_nvhe(void)
 {
 	u64 mdcr_el2 = read_sysreg(mdcr_el2);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		u64 val;
 
 		/*
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 7672a978926c..2c1436fc0830 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -118,7 +118,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
 	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
 
-	if (!cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (!cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
 		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
 	} else	if (!ctxt->__hyp_running_vcpu) {
@@ -149,7 +149,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->sys_regs[PAR_EL1],		par_el1);
 	write_sysreg(ctxt->sys_regs[TPIDR_EL1],		tpidr_el1);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE) &&
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT) &&
 	    ctxt->__hyp_running_vcpu) {
 		/*
 		 * Must only be done for host registers, hence the context
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index 92f560e3e1aa..6b6a139ad29a 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -23,7 +23,7 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
 
 	local_irq_save(cxt->flags);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		/*
 		 * For CPUs that are affected by ARM errata 1165522 or 1530923,
 		 * we cannot trust stage-1 to be in a correct state at that
@@ -63,7 +63,7 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
 static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
 						  struct tlb_inv_context *cxt)
 {
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		u64 val;
 
 		/*
@@ -103,7 +103,7 @@ static void __hyp_text __tlb_switch_to_host_vhe(struct kvm *kvm,
 	write_sysreg(HCR_HOST_VHE_FLAGS, hcr_el2);
 	isb();
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_VHE)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		/* Restore the registers to what they were */
 		write_sysreg_el1(cxt->tcr, SYS_TCR);
 		write_sysreg_el1(cxt->sctlr, SYS_SCTLR);
@@ -117,7 +117,7 @@ static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
 {
 	write_sysreg(0, vttbr_el2);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
 		/* Ensure write of the host VMID */
 		isb();
 		/* Restore the host's TCR_EL1 */
-- 
2.25.1.696.g5e7596f4ac-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
