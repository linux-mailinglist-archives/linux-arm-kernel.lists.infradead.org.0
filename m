Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66532DF194
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kh52DShzs/vND+otYXaVrJ8HiYHn5xYawpKyXZqZstM=; b=IEwAOz/RYU+jSr
	BtBAufXvIu7J13D3Ugib713L8qwhPwg+b1aeh4H55/uoTAY0S0wZ3N82vq6DliLSihAyes3gzpxiB
	PeWlXTRgb1ImBd+ReV4SvqYVj1lrC5pFPpPXve5zfWT5STRXHKJ8sZ8P9P7wg14sVOfLM7XXsMpCE
	V63y6z1Wa/J83flhikc4EuzHAC/liAzZp37t1tu+9mdOdAqbRwmIZK73cNNBfse6TbJ9G8APWQcr4
	onG6zfjsarUKe+AKg8BKeC3bbSTd/zNkPzJZfPyoNqC6C6Bdvjg+cfQn6OLjY6H5DT6Sl8XlY8Drz
	C7DaJoMqgZa39AXDX0Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZeA-0007hY-Nr; Mon, 21 Oct 2019 15:31:02 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZc8-0004Vm-Oh
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 15:29:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE20416F8;
 Mon, 21 Oct 2019 08:28:53 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAF493F71F;
 Mon, 21 Oct 2019 08:28:51 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Subject: [PATCH v7 09/10] arm/arm64: Make use of the SMCCC 1.1 wrapper
Date: Mon, 21 Oct 2019 16:28:22 +0100
Message-Id: <20191021152823.14882-10-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191021152823.14882-1-steven.price@arm.com>
References: <20191021152823.14882-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_082857_379606_AEA668A2 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 kvm@vger.kernel.org,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Steven Price <steven.price@arm.com>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rather than directly choosing which function to use based on
psci_ops.conduit, use the new arm_smccc_1_1 wrapper instead.

In some cases we still need to do some operations based on the
conduit, but the code duplication is removed.

No functional change.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm/mm/proc-v7-bugs.c     | 13 +++---
 arch/arm64/kernel/cpu_errata.c | 81 ++++++++++++----------------------
 2 files changed, 34 insertions(+), 60 deletions(-)

diff --git a/arch/arm/mm/proc-v7-bugs.c b/arch/arm/mm/proc-v7-bugs.c
index 54d87506d3b5..7c90b4c615a5 100644
--- a/arch/arm/mm/proc-v7-bugs.c
+++ b/arch/arm/mm/proc-v7-bugs.c
@@ -74,12 +74,13 @@ static void cpu_v7_spectre_init(void)
 	case ARM_CPU_PART_CORTEX_A72: {
 		struct arm_smccc_res res;
 
+		arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+				     ARM_SMCCC_ARCH_WORKAROUND_1, &res);
+		if ((int)res.a0 != 0)
+			return;
+
 		switch (arm_smccc_1_1_get_conduit()) {
 		case SMCCC_CONDUIT_HVC:
-			arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
-			if ((int)res.a0 != 0)
-				break;
 			per_cpu(harden_branch_predictor_fn, cpu) =
 				call_hvc_arch_workaround_1;
 			cpu_do_switch_mm = cpu_v7_hvc_switch_mm;
@@ -87,10 +88,6 @@ static void cpu_v7_spectre_init(void)
 			break;
 
 		case SMCCC_CONDUIT_SMC:
-			arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
-			if ((int)res.a0 != 0)
-				break;
 			per_cpu(harden_branch_predictor_fn, cpu) =
 				call_smc_arch_workaround_1;
 			cpu_do_switch_mm = cpu_v7_smc_switch_mm;
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 9c0b011eee20..401246e095e7 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -209,40 +209,31 @@ static int detect_harden_bp_fw(void)
 	struct arm_smccc_res res;
 	u32 midr = read_cpuid_id();
 
+	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+			     ARM_SMCCC_ARCH_WORKAROUND_1, &res);
+
+	switch ((int)res.a0) {
+	case 1:
+		/* Firmware says we're just fine */
+		return 0;
+	case 0:
+		break;
+	default:
+		return -1;
+	}
+
 	switch (arm_smccc_1_1_get_conduit()) {
 	case SMCCC_CONDUIT_HVC:
-		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-				  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
-		switch ((int)res.a0) {
-		case 1:
-			/* Firmware says we're just fine */
-			return 0;
-		case 0:
-			cb = call_hvc_arch_workaround_1;
-			/* This is a guest, no need to patch KVM vectors */
-			smccc_start = NULL;
-			smccc_end = NULL;
-			break;
-		default:
-			return -1;
-		}
+		cb = call_hvc_arch_workaround_1;
+		/* This is a guest, no need to patch KVM vectors */
+		smccc_start = NULL;
+		smccc_end = NULL;
 		break;
 
 	case SMCCC_CONDUIT_SMC:
-		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-				  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
-		switch ((int)res.a0) {
-		case 1:
-			/* Firmware says we're just fine */
-			return 0;
-		case 0:
-			cb = call_smc_arch_workaround_1;
-			smccc_start = __smccc_workaround_1_smc_start;
-			smccc_end = __smccc_workaround_1_smc_end;
-			break;
-		default:
-			return -1;
-		}
+		cb = call_smc_arch_workaround_1;
+		smccc_start = __smccc_workaround_1_smc_start;
+		smccc_end = __smccc_workaround_1_smc_end;
 		break;
 
 	default:
@@ -332,6 +323,8 @@ void __init arm64_enable_wa2_handling(struct alt_instr *alt,
 
 void arm64_set_ssbd_mitigation(bool state)
 {
+	int conduit;
+
 	if (!IS_ENABLED(CONFIG_ARM64_SSBD)) {
 		pr_info_once("SSBD disabled by kernel configuration\n");
 		return;
@@ -345,19 +338,10 @@ void arm64_set_ssbd_mitigation(bool state)
 		return;
 	}
 
-	switch (arm_smccc_1_1_get_conduit()) {
-	case SMCCC_CONDUIT_HVC:
-		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_WORKAROUND_2, state, NULL);
-		break;
-
-	case SMCCC_CONDUIT_SMC:
-		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, state, NULL);
-		break;
+	conduit = arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_WORKAROUND_2, state,
+				       NULL);
 
-	default:
-		WARN_ON_ONCE(1);
-		break;
-	}
+	WARN_ON_ONCE(conduit == SMCCC_CONDUIT_NONE);
 }
 
 static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
@@ -367,6 +351,7 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 	bool required = true;
 	s32 val;
 	bool this_cpu_safe = false;
+	int conduit;
 
 	WARN_ON(scope != SCOPE_LOCAL_CPU || preemptible());
 
@@ -384,18 +369,10 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 		goto out_printmsg;
 	}
 
-	switch (arm_smccc_1_1_get_conduit()) {
-	case SMCCC_CONDUIT_HVC:
-		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-				  ARM_SMCCC_ARCH_WORKAROUND_2, &res);
-		break;
+	conduit = arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+				       ARM_SMCCC_ARCH_WORKAROUND_2, &res);
 
-	case SMCCC_CONDUIT_SMC:
-		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
-				  ARM_SMCCC_ARCH_WORKAROUND_2, &res);
-		break;
-
-	default:
+	if (conduit == SMCCC_CONDUIT_NONE) {
 		ssbd_state = ARM64_SSBD_UNKNOWN;
 		if (!this_cpu_safe)
 			__ssb_safe = false;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
