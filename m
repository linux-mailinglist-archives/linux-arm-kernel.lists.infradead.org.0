Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AA6104152
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:49:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYEF6RJ/aDXc4A/w8fjHp9Ug+PVun3wFCwr7z/+o9G4=; b=C3qZhwmPFaLgj8
	cXlYFG1jr+y88c1rJhfzoufrs8QF+GCGXmEiJXCdl61EWG/uT5hZx0su1iEwp7XHVax66BxhKdUa4
	rmQqV12wCmn1hoo35qmXmIZyizcd5U5VISIer2Wl1R9RGCrrZ5AtvD9STnaUsMzHWuU5YSVCAz5DS
	82rAepldkZcpFZyaOEx5ZlykR5vos4y3hw1WN8UdO+QaVnI4htkUopvOyctKYdUk6D3jBfRyViIgB
	prydsb7uJGEjqlrs0kOWZ4EuDL9T5FKGGKPfqt9M7FUKXnEgLHxUE4vz3EOO1F1u7DI/2RWwDi48n
	DTNXk6AYkAiJEfbW2ecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXTAp-0006a2-6V; Wed, 20 Nov 2019 16:49:47 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXTAW-0006Ui-MI
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:49:30 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXT4J-0007RI-5f; Wed, 20 Nov 2019 17:43:03 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 11/22] arm/arm64: Make use of the SMCCC 1.1 wrapper
Date: Wed, 20 Nov 2019 16:42:25 +0000
Message-Id: <20191120164236.29359-12-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191120164236.29359-1-maz@kernel.org>
References: <20191120164236.29359-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com, graf@amazon.com,
 drjones@redhat.com, borntraeger@de.ibm.com, christoffer.dall@arm.com,
 eric.auger@redhat.com, xypron.glpk@gmx.de, julien.grall@arm.com,
 mark.rutland@arm.com, bigeasy@linutronix.de, steven.price@arm.com,
 tglx@linutronix.de, will@kernel.org, yuzenghui@huawei.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_084928_988411_BC8889A9 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Grall <julien.grall@arm.com>, Alexander Graf <graf@amazon.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Steven Price <steven.price@arm.com>

Rather than directly choosing which function to use based on
psci_ops.conduit, use the new arm_smccc_1_1 wrapper instead.

In some cases we still need to do some operations based on the
conduit, but the code duplication is removed.

No functional change.

Signed-off-by: Steven Price <steven.price@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
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
