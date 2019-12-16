Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF0612048A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:57:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6s1PGj0/hr3R1D+8GRUbx2h7p4pkVXh8H/xIUDvouY=; b=VuP4lniaI5sUlB
	j+WfY/sEJy3LNfoLxEOF9v2jg5Cd46IHj/DAfqCmdyb0FGlbYX8dGO+p8cADoOIoZTRawclX/WagH
	cuaNt+ntOK0gOOzZ0B3KLMr64GpkfXAM+ksEyY/nsSDj9E0z4Z9YGTre2EUFfBAU+OeQtQUccxgUI
	dYRsWA+AANfXmadRv0X3AdEnOKGCQlAsyLEBqwyw8AljwiQitacDo2VDop4Og0aa4x45LUAPhjYPJ
	v3wd5xfC8wphtPQX7dmI3KEyQj88W7QWP3SCOJ3gzpcRCHSWVLButgF/134TTYz93gj6FfnHHdMFu
	LIXQx/Xj1KcfjbCLxNpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igp0C-0006Qk-2D; Mon, 16 Dec 2019 11:57:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igozW-0005xb-4f
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:56:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CDDF1063;
 Mon, 16 Dec 2019 03:56:45 -0800 (PST)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 733513F719;
 Mon, 16 Dec 2019 03:56:44 -0800 (PST)
From: Steven Price <steven.price@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
Subject: [PATCH v5 2/3] arm64: Rename WORKAROUND_1319367 to SPECULATIVE_AT_NVHE
Date: Mon, 16 Dec 2019 11:56:30 +0000
Message-Id: <20191216115631.17804-3-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216115631.17804-1-steven.price@arm.com>
References: <20191216115631.17804-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_035646_270174_D8E88A4B 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Steven Price <steven.price@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To match SPECULATIVE_AT_VHE let's also have a generic name for the NVHE
variant.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm64/Kconfig               | 4 ++++
 arch/arm64/include/asm/cpucaps.h | 2 +-
 arch/arm64/kernel/cpu_errata.c   | 2 +-
 arch/arm64/kvm/hyp/switch.c      | 4 ++--
 arch/arm64/kvm/hyp/sysreg-sr.c   | 4 ++--
 arch/arm64/kvm/hyp/tlb.c         | 4 ++--
 6 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b2f0df19e7f4..d102ebd56c79 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -546,9 +546,13 @@ config ARM64_ERRATUM_1286807
 	  invalidated has been observed by other observers. The
 	  workaround repeats the TLBI+DSB operation.
 
+config ARM64_WORKAROUND_SPECULATIVE_AT_NVHE
+	bool
+
 config ARM64_ERRATUM_1319367
 	bool "Cortex-A57/A72: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
 	default y
+	select ARM64_WORKAROUND_SPECULATIVE_AT_NVHE
 	help
 	  This option adds work arounds for ARM Cortex-A57 erratum 1319537
 	  and A72 erratum 1319367
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index 327a38a5162f..3d1aa1b02093 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -55,7 +55,7 @@
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_TVM	45
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM	46
 #define ARM64_WORKAROUND_1542419		47
-#define ARM64_WORKAROUND_1319367		48
+#define ARM64_WORKAROUND_SPECULATIVE_AT_NVHE	48
 
 #define ARM64_NCAPS				49
 
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 85bd8aff78f9..4631f8b9df70 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -933,7 +933,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 #ifdef CONFIG_ARM64_ERRATUM_1319367
 	{
 		.desc = "ARM erratum 1319367",
-		.capability = ARM64_WORKAROUND_1319367,
+		.capability = ARM64_WORKAROUND_SPECULATIVE_AT_NVHE,
 		ERRATA_MIDR_RANGE_LIST(ca57_a72),
 	},
 #endif
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index eefcaa6d839f..0fc824bdf258 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -119,7 +119,7 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
 
 	write_sysreg(val, cptr_el2);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
 
 		isb();
@@ -173,7 +173,7 @@ static void __hyp_text __deactivate_traps_nvhe(void)
 {
 	u64 mdcr_el2 = read_sysreg(mdcr_el2);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		u64 val;
 
 		/*
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 22b8128d19f6..7672a978926c 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -118,7 +118,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
 	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
 
-	if (!cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
+	if (!cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
 		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
 	} else	if (!ctxt->__hyp_running_vcpu) {
@@ -149,7 +149,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->sys_regs[PAR_EL1],		par_el1);
 	write_sysreg(ctxt->sys_regs[TPIDR_EL1],		tpidr_el1);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367) &&
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE) &&
 	    ctxt->__hyp_running_vcpu) {
 		/*
 		 * Must only be done for host registers, hence the context
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index c827f3e0ba8f..ff4e73c9bafc 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -63,7 +63,7 @@ static void __hyp_text __tlb_switch_to_guest_vhe(struct kvm *kvm,
 static void __hyp_text __tlb_switch_to_guest_nvhe(struct kvm *kvm,
 						  struct tlb_inv_context *cxt)
 {
-	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		u64 val;
 
 		/*
@@ -117,7 +117,7 @@ static void __hyp_text __tlb_switch_to_host_nvhe(struct kvm *kvm,
 {
 	write_sysreg(0, vttbr_el2);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
+	if (cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		/* Ensure write of the host VMID */
 		isb();
 		/* Restore the host's TCR_EL1 */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
