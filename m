Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE9F1BF723
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=alNyS+HyCrhld/ltRrfXkzzhcAdjziJV4zANG5dsYx8=; b=BP7sewQQ8xOAvgfsH0KUlkGloo
	XMjSyCVPnIV1LzyX3+uPgqSFi39f6Lby7xh1AnoEW03kXWqxnx1oI+6WRaw9ks0BmpNlIVMIcBcCU
	6kI1mcqL0nnOaXDyAE5/NUXt9S9RL1N4rh6EhJjtR2myPMbJ0hbtRNfHiSd6kld5tx2oIOUdc8C0n
	vvnQDiQni1bHic1513LgUG+Fxv5zsqCPzcOOYqYTSuS9A9LNNokIYPET3HDe05oZzoRj1O3acPsLy
	K6qi32XS6dbUgefl7ei8nAfPorCLd8ylGKl/NMMva9E4DFsCd2Gs6R74nMDryljR0Boq1WJvkpw8F
	ayUQuTvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7hp-0007da-Ph; Thu, 30 Apr 2020 11:50:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7gI-0006ZN-Ar
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 11:48:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 408391045;
 Thu, 30 Apr 2020 04:48:41 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0940D3F305;
 Thu, 30 Apr 2020 04:48:39 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] arm/arm64: smccc: Drop smccc_version enum and use
 ARM_SMCCC_VERSION_1_x instead
Date: Thu, 30 Apr 2020 12:48:12 +0100
Message-Id: <20200430114814.14116-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430114814.14116-1-sudeep.holla@arm.com>
References: <20200430114814.14116-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_044842_415607_DD34DA4A 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of maintaining 2 sets of enums/macros for tracking SMCCC version,
let us drop smccc_version enum and use ARM_SMCCC_VERSION_1_x directly
instead.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/kernel/paravirt.c | 2 +-
 drivers/firmware/psci/psci.c | 8 ++++----
 include/linux/psci.h         | 7 +------
 3 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/kernel/paravirt.c b/arch/arm64/kernel/paravirt.c
index 1ef702b0be2d..295d66490584 100644
--- a/arch/arm64/kernel/paravirt.c
+++ b/arch/arm64/kernel/paravirt.c
@@ -120,7 +120,7 @@ static bool has_pv_steal_clock(void)
 	struct arm_smccc_res res;
 
 	/* To detect the presence of PV time support we require SMCCC 1.1+ */
-	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
+	if (arm_smccc_1_1_get_conduit() == SMCCC_CONDUIT_NONE)
 		return false;
 
 	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 2937d44b5df4..6a56d7196697 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -54,12 +54,12 @@ bool psci_tos_resident_on(int cpu)
 
 struct psci_operations psci_ops = {
 	.conduit = SMCCC_CONDUIT_NONE,
-	.smccc_version = SMCCC_VERSION_1_0,
+	.smccc_version = ARM_SMCCC_VERSION_1_0,
 };
 
 enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
 {
-	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
+	if (psci_ops.smccc_version < ARM_SMCCC_VERSION_1_1)
 		return SMCCC_CONDUIT_NONE;
 
 	return psci_ops.conduit;
@@ -411,8 +411,8 @@ static void __init psci_init_smccc(void)
 	if (feature != PSCI_RET_NOT_SUPPORTED) {
 		u32 ret;
 		ret = invoke_psci_fn(ARM_SMCCC_VERSION_FUNC_ID, 0, 0, 0);
-		if (ret == ARM_SMCCC_VERSION_1_1) {
-			psci_ops.smccc_version = SMCCC_VERSION_1_1;
+		if (ret >= ARM_SMCCC_VERSION_1_1) {
+			psci_ops.smccc_version = ret;
 			ver = ret;
 		}
 	}
diff --git a/include/linux/psci.h b/include/linux/psci.h
index a67712b73b6c..29bd0671e5bb 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -21,11 +21,6 @@ bool psci_power_state_is_valid(u32 state);
 int psci_set_osi_mode(void);
 bool psci_has_osi_support(void);
 
-enum smccc_version {
-	SMCCC_VERSION_1_0,
-	SMCCC_VERSION_1_1,
-};
-
 struct psci_operations {
 	u32 (*get_version)(void);
 	int (*cpu_suspend)(u32 state, unsigned long entry_point);
@@ -36,7 +31,7 @@ struct psci_operations {
 			unsigned long lowest_affinity_level);
 	int (*migrate_info_type)(void);
 	enum arm_smccc_conduit conduit;
-	enum smccc_version smccc_version;
+	u32 smccc_version;
 };
 
 extern struct psci_operations psci_ops;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
