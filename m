Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B5487B0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 15:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SvD0cqCpbUEUJVmmb+zYUwE+XVV9MAIyGcx5U4KPqkk=; b=Y244BgV++HtLg3/vce9hqedI7V
	S2rUNQ6n6vDSoDn3ew2ygw1rNA/vIer0JKT74uDnCE7Zh3rP6IitZNuJZxyM3Z/6BasJHJYrGqC7X
	eGxBQieViSWd6caAZ85AGinNJj86LmdYoyGPaWLfflbhkBtPlk/klJSlyXOtJMZZjeHz2VvxHKdIX
	f5MWIsi3OZ7xDpEv05f6V8xewiVf1jeFs1lnKChLy7xHDwmCJDwbcTHAVdrIkVf3CdKjOPUDEllMh
	3aWlahcz/lMcEEhPS5n+YQIfFeElXR4gG8p3DcG4/c8V57c0/vaBSpWWEc1IBxatom2cwffuXLGWx
	sCeWv3eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4sJ-0001vV-Gr; Fri, 09 Aug 2019 13:24:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4rG-00010f-JH
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 13:23:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC7A615AB;
 Fri,  9 Aug 2019 06:23:01 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 58E8C3F706;
 Fri,  9 Aug 2019 06:23:00 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 4/6] firmware/psci: use common SMCCC_CONDUIT_*
Date: Fri,  9 Aug 2019 14:22:43 +0100
Message-Id: <20190809132245.43505-5-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190809132245.43505-1-mark.rutland@arm.com>
References: <20190809132245.43505-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_062302_903938_65F2529F 
X-CRM114-Status: GOOD (  12.04  )
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

Now that we have common SMCCC_CONDUIT_* definitions, migrate the PSCI
code over to them, and kill off the old PSCI_CONDUIT_* definitions.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
---
 drivers/firmware/psci/psci.c | 25 +++++++++----------------
 include/linux/psci.h         |  9 ++-------
 2 files changed, 11 insertions(+), 23 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 5f31f1bea1af..b8c07a8f8d5d 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -53,7 +53,7 @@ bool psci_tos_resident_on(int cpu)
 }
 
 struct psci_operations psci_ops = {
-	.conduit = PSCI_CONDUIT_NONE,
+	.conduit = SMCCC_CONDUIT_NONE,
 	.smccc_version = SMCCC_VERSION_1_0,
 };
 
@@ -62,14 +62,7 @@ enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
 	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
 		return SMCCC_CONDUIT_NONE;
 
-	switch (psci_ops.conduit) {
-	case PSCI_CONDUIT_SMC:
-		return SMCCC_CONDUIT_SMC;
-	case PSCI_CONDUIT_HVC:
-		return SMCCC_CONDUIT_HVC;
-	default:
-		return SMCCC_CONDUIT_NONE;
-	}
+	return psci_ops.conduit;
 }
 
 typedef unsigned long (psci_fn)(unsigned long, unsigned long,
@@ -227,13 +220,13 @@ static unsigned long psci_migrate_info_up_cpu(void)
 			      0, 0, 0);
 }
 
-static void set_conduit(enum psci_conduit conduit)
+static void set_conduit(enum arm_smccc_conduit conduit)
 {
 	switch (conduit) {
-	case PSCI_CONDUIT_HVC:
+	case SMCCC_CONDUIT_HVC:
 		invoke_psci_fn = __invoke_psci_fn_hvc;
 		break;
-	case PSCI_CONDUIT_SMC:
+	case SMCCC_CONDUIT_SMC:
 		invoke_psci_fn = __invoke_psci_fn_smc;
 		break;
 	default:
@@ -255,9 +248,9 @@ static int get_set_conduit_method(struct device_node *np)
 	}
 
 	if (!strcmp("hvc", method)) {
-		set_conduit(PSCI_CONDUIT_HVC);
+		set_conduit(SMCCC_CONDUIT_HVC);
 	} else if (!strcmp("smc", method)) {
-		set_conduit(PSCI_CONDUIT_SMC);
+		set_conduit(SMCCC_CONDUIT_SMC);
 	} else {
 		pr_warn("invalid \"method\" property: %s\n", method);
 		return -EINVAL;
@@ -749,9 +742,9 @@ int __init psci_acpi_init(void)
 	pr_info("probing for conduit method from ACPI.\n");
 
 	if (acpi_psci_use_hvc())
-		set_conduit(PSCI_CONDUIT_HVC);
+		set_conduit(SMCCC_CONDUIT_HVC);
 	else
-		set_conduit(PSCI_CONDUIT_SMC);
+		set_conduit(SMCCC_CONDUIT_SMC);
 
 	return psci_probe();
 }
diff --git a/include/linux/psci.h b/include/linux/psci.h
index a8a15613c157..def0b89cc05d 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -7,6 +7,7 @@
 #ifndef __LINUX_PSCI_H
 #define __LINUX_PSCI_H
 
+#include <linux/arm-smccc.h>
 #include <linux/init.h>
 #include <linux/types.h>
 
@@ -18,12 +19,6 @@ bool psci_tos_resident_on(int cpu);
 int psci_cpu_init_idle(unsigned int cpu);
 int psci_cpu_suspend_enter(unsigned long index);
 
-enum psci_conduit {
-	PSCI_CONDUIT_NONE,
-	PSCI_CONDUIT_SMC,
-	PSCI_CONDUIT_HVC,
-};
-
 enum smccc_version {
 	SMCCC_VERSION_1_0,
 	SMCCC_VERSION_1_1,
@@ -38,7 +33,7 @@ struct psci_operations {
 	int (*affinity_info)(unsigned long target_affinity,
 			unsigned long lowest_affinity_level);
 	int (*migrate_info_type)(void);
-	enum psci_conduit conduit;
+	enum arm_smccc_conduit conduit;
 	enum smccc_version smccc_version;
 };
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
