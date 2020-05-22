Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7581DE727
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=20henpIrczGkCafNS35i+Ebd5KiGAfZzh/MNYQ6PxYE=; b=A+XZ/EPdDf9pl+2BaTH/kNcMII
	8d7gXCaqvoBB9FtsMEYOqYE5iriHfQ9DLhq7e0jzYioNr5mdqNSYtqkrQE39hzNw1MvJsBKNukZmu
	d4zaMnB4yVOJJKy08InZRk2gwGmVrdaTEXou5eR/SIljPMwOhaIMxBIDIYPNQ6lJlJyYIo3LHzLZR
	KLPzMmCg86XoRALffzgp0phetXj/8l/qXTk4oxwJPNTU4bCpvYb129kYasaZ21hctRLEiOZHMmKLw
	ibJ5XP8MH5bhgHIWWkp+SjUTTgXLxxnt+h10xC43FeNuSyxzDDvTc8h7ECI0Sbzd+x4bFnmVej36X
	hzLHYZ3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc78E-00050F-EW; Fri, 22 May 2020 12:50:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc77k-0002un-F9
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:50:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4231106F;
 Fri, 22 May 2020 05:50:03 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7F6563F68F;
 Fri, 22 May 2020 05:50:02 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] firmware: smccc: Add ARCH_SOC_ID support
Date: Fri, 22 May 2020 13:49:51 +0100
Message-Id: <20200522124951.35776-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200522124951.35776-1-sudeep.holla@arm.com>
References: <20200522124951.35776-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_055004_600876_F5C852D8 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 harb@amperecomputing.com, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SMCCC v1.2 adds a new optional function SMCCC_ARCH_SOC_ID to obtain a
SiP defined SoC identification value. Add support for the same.

Also using the SoC bus infrastructure, let us expose the platform
specific SoC atrributes under sysfs.

Reviewed-by: Steven Price <steven.price@arm.com>
Acked-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/smccc/Kconfig  |   9 +++
 drivers/firmware/smccc/Makefile |   1 +
 drivers/firmware/smccc/soc_id.c | 113 ++++++++++++++++++++++++++++++++
 include/linux/arm-smccc.h       |   5 ++
 4 files changed, 128 insertions(+)
 create mode 100644 drivers/firmware/smccc/soc_id.c

diff --git a/drivers/firmware/smccc/Kconfig b/drivers/firmware/smccc/Kconfig
index 27b675d76235..15e7466179a6 100644
--- a/drivers/firmware/smccc/Kconfig
+++ b/drivers/firmware/smccc/Kconfig
@@ -14,3 +14,12 @@ config HAVE_ARM_SMCCC_DISCOVERY
 	 to add SMCCC discovery mechanism though the PSCI firmware
 	 implementation of PSCI_FEATURES(SMCCC_VERSION) which returns
 	 success on firmware compliant to SMCCC v1.1 and above.
+
+config ARM_SMCCC_SOC_ID
+	bool "SoC bus device for the ARM SMCCC SOC_ID"
+	depends on HAVE_ARM_SMCCC_DISCOVERY
+	default y
+	select SOC_BUS
+	help
+	  Include support for the SoC bus on the ARM SMCCC firmware based
+	  platforms providing some sysfs information about the SoC variant.
diff --git a/drivers/firmware/smccc/Makefile b/drivers/firmware/smccc/Makefile
index 6f369fe3f0b9..72ab84042832 100644
--- a/drivers/firmware/smccc/Makefile
+++ b/drivers/firmware/smccc/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 #
 obj-$(CONFIG_HAVE_ARM_SMCCC_DISCOVERY)	+= smccc.o
+obj-$(CONFIG_ARM_SMCCC_SOC_ID)	+= soc_id.o
diff --git a/drivers/firmware/smccc/soc_id.c b/drivers/firmware/smccc/soc_id.c
new file mode 100644
index 000000000000..437175a589e2
--- /dev/null
+++ b/drivers/firmware/smccc/soc_id.c
@@ -0,0 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2020 Arm Limited
+ */
+
+#define pr_fmt(fmt) "SMCCC: SOC_ID: " fmt
+
+#include <linux/arm-smccc.h>
+#include <linux/bitfield.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <linux/sys_soc.h>
+
+#define SMCCC_SOC_ID_JEP106_BANK_IDX_MASK	GENMASK(30, 24)
+/*
+ * As per the SMC Calling Convention specification v1.2 (ARM DEN 0028C)
+ * Section 7.4 SMCCC_ARCH_SOC_ID bits[23:16] are JEP-106 identification
+ * code with parity bit for the SiP. We can drop the parity bit.
+ */
+#define SMCCC_SOC_ID_JEP106_ID_CODE_MASK	GENMASK(22, 16)
+#define SMCCC_SOC_ID_IMP_DEF_SOC_ID_MASK	GENMASK(15, 0)
+
+#define JEP106_BANK_CONT_CODE(x)	\
+	(u8)(FIELD_GET(SMCCC_SOC_ID_JEP106_BANK_IDX_MASK, (x)))
+#define JEP106_ID_CODE(x)	\
+	(u8)(FIELD_GET(SMCCC_SOC_ID_JEP106_ID_CODE_MASK, (x)))
+#define IMP_DEF_SOC_ID(x)	\
+	(u16)(FIELD_GET(SMCCC_SOC_ID_IMP_DEF_SOC_ID_MASK, (x)))
+
+static struct soc_device *soc_dev;
+static struct soc_device_attribute *soc_dev_attr;
+
+static int __init smccc_soc_init(void)
+{
+	struct arm_smccc_res res;
+	int soc_id_rev, soc_id_version;
+	static char soc_id_str[8], soc_id_rev_str[12];
+	static char soc_id_jep106_id_str[8];
+
+	if (arm_smccc_get_version() < ARM_SMCCC_VERSION_1_2)
+		return 0;
+
+	if (arm_smccc_1_1_get_conduit() == SMCCC_CONDUIT_NONE) {
+		pr_err("%s: invalid SMCCC conduit\n", __func__);
+		return -EOPNOTSUPP;
+	}
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+			     ARM_SMCCC_ARCH_SOC_ID, &res);
+
+	if (res.a0 == SMCCC_RET_NOT_SUPPORTED) {
+		pr_info("ARCH_SOC_ID not implemented, skipping ....\n");
+		return 0;
+	}
+
+	if ((int)res.a0 < 0) {
+		pr_info("ARCH_FEATURES(ARCH_SOC_ID) returned error: %lx\n",
+			res.a0);
+		return -EINVAL;
+	}
+
+        arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 0, &res);
+        if ((int)res.a0 < 0) {
+                pr_err("ARCH_SOC_ID(0) returned error: %lx\n", res.a0);
+                return -EINVAL;
+        }
+
+	soc_id_version = res.a0;
+
+        arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 1, &res);
+        if ((int)res.a0 < 0) {
+                pr_err("ARCH_SOC_ID(1) returned error: %lx\n", res.a0);
+                return -EINVAL;
+        }
+
+	soc_id_rev = res.a0;
+
+	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
+	if (!soc_dev_attr)
+		return -ENOMEM;
+
+	sprintf(soc_id_str, "0x%04x", IMP_DEF_SOC_ID(soc_id_version));
+	sprintf(soc_id_rev_str, "0x%08x", soc_id_rev);
+	sprintf(soc_id_jep106_id_str, "0x%02x%02x",
+		JEP106_BANK_CONT_CODE(soc_id_version),
+		JEP106_ID_CODE(soc_id_version));
+
+	soc_dev_attr->soc_id = soc_id_str;
+	soc_dev_attr->revision = soc_id_rev_str;
+	soc_dev_attr->jep106_id = soc_id_jep106_id_str;
+
+	soc_dev = soc_device_register(soc_dev_attr);
+	if (IS_ERR(soc_dev)) {
+		kfree(soc_dev_attr);
+		return PTR_ERR(soc_dev);
+	}
+
+	pr_info("ID = %s Revision = %s\n", soc_dev_attr->soc_id,
+		soc_dev_attr->revision);
+
+	return 0;
+}
+module_init(smccc_soc_init);
+
+static void __exit smccc_soc_exit(void)
+{
+	if (soc_dev)
+		soc_device_unregister(soc_dev);
+	kfree(soc_dev_attr);
+}
+module_exit(smccc_soc_exit);
diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
index 56d6a5c6e353..8254e11ea857 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -71,6 +71,11 @@
 			   ARM_SMCCC_SMC_32,				\
 			   0, 1)
 
+#define ARM_SMCCC_ARCH_SOC_ID						\
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
+			   ARM_SMCCC_SMC_32,				\
+			   0, 2)
+
 #define ARM_SMCCC_ARCH_WORKAROUND_1					\
 	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
 			   ARM_SMCCC_SMC_32,				\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
