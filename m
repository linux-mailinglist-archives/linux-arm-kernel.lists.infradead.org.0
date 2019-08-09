Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C125F87B06
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 15:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vm5Je3EDRRTqqD2dtFL8lUnFYKIlG9P5K01EIyPOuh0=; b=e01uQmLlRQAunboV3ZUSShjK+x
	m84syFuHccxfbe8nI7qDnSk/pZFVadJP9PaFBKwVJKsXE17tEAnuMyzSFsGFMoFeYo19aMvQyuCIS
	iEvjSULRcUbAUpi7Y3DneUaYdKbNKLJZ1YtbmouONEzfS8EjHYkqpuEz6I/Zl3YPq0b/BZGUZkTo5
	UnOIJtctNMSO+0Lrg3+/c8UyrFmkEQ7Lzl0T40kPrEmIxiGaIdfuNLTGLEG2FQTbCiHP3sNLwhu7U
	a5O5Qh4YJX/aoqch6us3ZE2vSoIRxvy9QNHTz+yDhTNifqKvZG+BrdS6fbIXj35geqlPjTLZdZ8N0
	f2lc4kiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4rq-0001UQ-VT; Fri, 09 Aug 2019 13:23:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4rC-0000zc-Ux
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 13:23:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C107F1684;
 Fri,  9 Aug 2019 06:22:57 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6C76A3F706;
 Fri,  9 Aug 2019 06:22:56 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 2/6] arm64: errata: use arm_smccc_1_1_get_conduit()
Date: Fri,  9 Aug 2019 14:22:41 +0100
Message-Id: <20190809132245.43505-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190809132245.43505-1-mark.rutland@arm.com>
References: <20190809132245.43505-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_062259_083712_A02759CF 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, suzuki.poulose@arm.com,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux@armlinux.org.uk, james.morse@arm.com, robin.murphy@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have arm_smccc_1_1_get_conduit(), we can hide the PSCI
implementation details from the arm64 cpu errata code, so let's do so.

As arm_smccc_1_1_get_conduit() implicitly checks that the SMCCC version
is at least SMCCC_VERSION_1_1, we no longer need to check this
explicitly where switch statements have a default case, e.g. in
has_ssbd_mitigation().

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/kernel/cpu_errata.c | 37 ++++++++++++-------------------------
 1 file changed, 12 insertions(+), 25 deletions(-)

Will, Lorenzo, you both acked v1, but I dropped your acks when rebasing as the
structure of the code changed somewhat. Are you happy to give new acks?

Mark.


diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 1e43ba5c79b7..6ee09bca82f8 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -6,7 +6,6 @@
  */
 
 #include <linux/arm-smccc.h>
-#include <linux/psci.h>
 #include <linux/types.h>
 #include <linux/cpu.h>
 #include <asm/cpu.h>
@@ -166,9 +165,7 @@ static void install_bp_hardening_cb(bp_hardening_cb_t fn,
 }
 #endif	/* CONFIG_KVM_INDIRECT_VECTORS */
 
-#include <uapi/linux/psci.h>
 #include <linux/arm-smccc.h>
-#include <linux/psci.h>
 
 static void call_smc_arch_workaround_1(void)
 {
@@ -212,11 +209,8 @@ static int detect_harden_bp_fw(void)
 	struct arm_smccc_res res;
 	u32 midr = read_cpuid_id();
 
-	if (psci_ops.smccc_version == SMCCC_VERSION_1_0)
-		return -1;
-
-	switch (psci_ops.conduit) {
-	case PSCI_CONDUIT_HVC:
+	switch (arm_smccc_1_1_get_conduit()) {
+	case SMCCC_CONDUIT_HVC:
 		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
 				  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
 		switch ((int)res.a0) {
@@ -234,7 +228,7 @@ static int detect_harden_bp_fw(void)
 		}
 		break;
 
-	case PSCI_CONDUIT_SMC:
+	case SMCCC_CONDUIT_SMC:
 		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
 				  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
 		switch ((int)res.a0) {
@@ -308,11 +302,11 @@ void __init arm64_update_smccc_conduit(struct alt_instr *alt,
 
 	BUG_ON(nr_inst != 1);
 
-	switch (psci_ops.conduit) {
-	case PSCI_CONDUIT_HVC:
+	switch (arm_smccc_1_1_get_conduit()) {
+	case SMCCC_CONDUIT_HVC:
 		insn = aarch64_insn_get_hvc_value();
 		break;
-	case PSCI_CONDUIT_SMC:
+	case SMCCC_CONDUIT_SMC:
 		insn = aarch64_insn_get_smc_value();
 		break;
 	default:
@@ -351,12 +345,12 @@ void arm64_set_ssbd_mitigation(bool state)
 		return;
 	}
 
-	switch (psci_ops.conduit) {
-	case PSCI_CONDUIT_HVC:
+	switch (arm_smccc_1_1_get_conduit()) {
+	case SMCCC_CONDUIT_HVC:
 		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_WORKAROUND_2, state, NULL);
 		break;
 
-	case PSCI_CONDUIT_SMC:
+	case SMCCC_CONDUIT_SMC:
 		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_2, state, NULL);
 		break;
 
@@ -390,20 +384,13 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 		goto out_printmsg;
 	}
 
-	if (psci_ops.smccc_version == SMCCC_VERSION_1_0) {
-		ssbd_state = ARM64_SSBD_UNKNOWN;
-		if (!this_cpu_safe)
-			__ssb_safe = false;
-		return false;
-	}
-
-	switch (psci_ops.conduit) {
-	case PSCI_CONDUIT_HVC:
+	switch (arm_smccc_1_1_get_conduit()) {
+	case SMCCC_CONDUIT_HVC:
 		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
 				  ARM_SMCCC_ARCH_WORKAROUND_2, &res);
 		break;
 
-	case PSCI_CONDUIT_SMC:
+	case SMCCC_CONDUIT_SMC:
 		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
 				  ARM_SMCCC_ARCH_WORKAROUND_2, &res);
 		break;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
