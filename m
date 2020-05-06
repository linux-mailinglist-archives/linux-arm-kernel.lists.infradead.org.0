Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D97561C76EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 18:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yLqvICeJhC4vaLA1B+trbzXpDyu2M62sENd8vC4WdJU=; b=HunpBERjZ8BzMW2OthnKUg6j3Z
	iPZPeqp2biO66VVr/L8fPdHybwOVS7y3b2ZKyX+TTYuHLMrOKTxSYlwl+rR4SBT0uhJcGGgcnutEP
	vdauQJxWhPQ4tKpB38LQepE6k8//EBZZ8jaecNiyjC4cvPB3/Oo5vACjDQQeHcDTLsmHA+ybL8yPp
	71z8mfubCdf/RHZqdsrR5dQwTjwaFn0iAqMFMjQrxdIcNauNYNmtpD1xmNbgRNHaWW2oSLm5JYX8l
	jQe3cMaCJFxqzvRKxXG5YtOF5KazKNceuWUsGClCzvblg5Ventdu/ZQbzHWlw/6ErGLzHkELduE2Q
	W8H9Vffg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNBG-0004Sa-Ig; Wed, 06 May 2020 16:45:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWN9m-0000kW-D3
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 16:44:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC6181042;
 Wed,  6 May 2020 09:44:25 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9E0DF3F305;
 Wed,  6 May 2020 09:44:24 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 5/7] firmware: smccc: Refactor SMCCC specific bits into
 separate file
Date: Wed,  6 May 2020 17:44:09 +0100
Message-Id: <20200506164411.3284-6-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506164411.3284-1-sudeep.holla@arm.com>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_094426_546990_F176CF8D 
X-CRM114-Status: GOOD (  17.11  )
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, harb@amperecomputing.com,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to add newer SMCCC v1.1+ functionality and to avoid cluttering
PSCI firmware driver with SMCCC bits, let us move the SMCCC specific
details under drivers/firmware/smccc/smccc.c

We can also drop conduit and smccc_version from psci_operations structure
as SMCCC was the sole user and now it maintains those.

No functionality change in this patch though.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 MAINTAINERS                     |  9 +++++++++
 drivers/firmware/Makefile       |  3 ++-
 drivers/firmware/psci/psci.c    | 19 ++++---------------
 drivers/firmware/smccc/Makefile |  3 +++
 drivers/firmware/smccc/smccc.c  | 26 ++++++++++++++++++++++++++
 include/linux/arm-smccc.h       | 11 +++++++++++
 include/linux/psci.h            |  2 --
 7 files changed, 55 insertions(+), 18 deletions(-)
 create mode 100644 drivers/firmware/smccc/Makefile
 create mode 100644 drivers/firmware/smccc/smccc.c

Hi Mark, Lorenzo,

I have replicated PSCI entry in MAINTAINERS file and added myself to
for SMCCC entry. If you prefer I can merge it under PSCI. Let me know
your preference along with other review comments.

Regards,
Sudeep


diff --git a/MAINTAINERS b/MAINTAINERS
index 2926327e4976..f32b0dfa49be 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15474,6 +15474,15 @@ M:	Nicolas Pitre <nico@fluxnic.net>
 S:	Odd Fixes
 F:	drivers/net/ethernet/smsc/smc91x.*
 
+SECURE MONITOR CALL(SMC) CALLING CONVENTION (SMCCC)
+M:	Mark Rutland <mark.rutland@arm.com>
+M:	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
+M:	Sudeep Holla <sudeep.holla@arm.com>
+L:	linux-arm-kernel@lists.infradead.org
+S:	Maintained
+F:	drivers/firmware/smccc/
+F:	include/linux/arm-smccc.h
+
 SMIA AND SMIA++ IMAGE SENSOR DRIVER
 M:	Sakari Ailus <sakari.ailus@linux.intel.com>
 L:	linux-media@vger.kernel.org
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index e9fb838af4df..99510be9f5ed 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -23,12 +23,13 @@ obj-$(CONFIG_TRUSTED_FOUNDATIONS) += trusted_foundations.o
 obj-$(CONFIG_TURRIS_MOX_RWTM)	+= turris-mox-rwtm.o
 
 obj-$(CONFIG_ARM_SCMI_PROTOCOL)	+= arm_scmi/
-obj-y				+= psci/
 obj-y				+= broadcom/
 obj-y				+= meson/
 obj-$(CONFIG_GOOGLE_FIRMWARE)	+= google/
 obj-$(CONFIG_EFI)		+= efi/
 obj-$(CONFIG_UEFI_CPER)		+= efi/
 obj-y				+= imx/
+obj-y				+= psci/
+obj-y				+= smccc/
 obj-y				+= tegra/
 obj-y				+= xilinx/
diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 6a56d7196697..92013ecc2d9e 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -46,25 +46,14 @@
  * require cooperation with a Trusted OS driver.
  */
 static int resident_cpu = -1;
+struct psci_operations psci_ops;
+static enum arm_smccc_conduit psci_conduit = SMCCC_CONDUIT_NONE;
 
 bool psci_tos_resident_on(int cpu)
 {
 	return cpu == resident_cpu;
 }
 
-struct psci_operations psci_ops = {
-	.conduit = SMCCC_CONDUIT_NONE,
-	.smccc_version = ARM_SMCCC_VERSION_1_0,
-};
-
-enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
-{
-	if (psci_ops.smccc_version < ARM_SMCCC_VERSION_1_1)
-		return SMCCC_CONDUIT_NONE;
-
-	return psci_ops.conduit;
-}
-
 typedef unsigned long (psci_fn)(unsigned long, unsigned long,
 				unsigned long, unsigned long);
 static psci_fn *invoke_psci_fn;
@@ -242,7 +231,7 @@ static void set_conduit(enum arm_smccc_conduit conduit)
 		WARN(1, "Unexpected PSCI conduit %d\n", conduit);
 	}
 
-	psci_ops.conduit = conduit;
+	psci_conduit = conduit;
 }
 
 static int get_set_conduit_method(struct device_node *np)
@@ -412,7 +401,7 @@ static void __init psci_init_smccc(void)
 		u32 ret;
 		ret = invoke_psci_fn(ARM_SMCCC_VERSION_FUNC_ID, 0, 0, 0);
 		if (ret >= ARM_SMCCC_VERSION_1_1) {
-			psci_ops.smccc_version = ret;
+			arm_smccc_version_init(ret, psci_conduit);
 			ver = ret;
 		}
 	}
diff --git a/drivers/firmware/smccc/Makefile b/drivers/firmware/smccc/Makefile
new file mode 100644
index 000000000000..6f369fe3f0b9
--- /dev/null
+++ b/drivers/firmware/smccc/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+obj-$(CONFIG_HAVE_ARM_SMCCC_DISCOVERY)	+= smccc.o
diff --git a/drivers/firmware/smccc/smccc.c b/drivers/firmware/smccc/smccc.c
new file mode 100644
index 000000000000..488699aae24f
--- /dev/null
+++ b/drivers/firmware/smccc/smccc.c
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020 Arm Limited
+ */
+
+#define pr_fmt(fmt) "smccc: " fmt
+
+#include <linux/arm-smccc.h>
+
+static u32 smccc_version = ARM_SMCCC_VERSION_1_0;
+static enum arm_smccc_conduit smccc_conduit = SMCCC_CONDUIT_NONE;
+
+void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit)
+{
+	smccc_version = version;
+	smccc_conduit = conduit;
+}
+
+enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
+{
+	if (smccc_version < ARM_SMCCC_VERSION_1_1)
+		return SMCCC_CONDUIT_NONE;
+
+	return smccc_conduit;
+}
+
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 9d9a2e42e919..11fb20bfa8f7 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -5,6 +5,7 @@
 #ifndef __LINUX_ARM_SMCCC_H
 #define __LINUX_ARM_SMCCC_H
 
+#include <linux/init.h>
 #include <uapi/linux/const.h>
 
 /*
@@ -89,6 +90,16 @@ enum arm_smccc_conduit {
 	SMCCC_CONDUIT_HVC,
 };
 
+/**
+ * arm_smccc_version_init() - Sets SMCCC version and conduit
+ * @version: SMCCC version v1.1 or above
+ * @conduit: SMCCC_CONDUIT_SMC or SMCCC_CONDUIT_HVC
+ *
+ * When SMCCCv1.1 or above is not present, defaults to ARM_SMCCC_VERSION_1_0
+ * and SMCCC_CONDUIT_NONE respectively.
+ */
+void __init arm_smccc_version_init(u32 version, enum arm_smccc_conduit conduit);
+
 /**
  * arm_smccc_1_1_get_conduit()
  *
diff --git a/include/linux/psci.h b/include/linux/psci.h
index 29bd0671e5bb..14ad9b9ebcd6 100644
--- a/include/linux/psci.h
+++ b/include/linux/psci.h
@@ -30,8 +30,6 @@ struct psci_operations {
 	int (*affinity_info)(unsigned long target_affinity,
 			unsigned long lowest_affinity_level);
 	int (*migrate_info_type)(void);
-	enum arm_smccc_conduit conduit;
-	u32 smccc_version;
 };
 
 extern struct psci_operations psci_ops;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
