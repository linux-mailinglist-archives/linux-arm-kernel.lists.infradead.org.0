Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EBF1C76EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 18:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vRd4ReBaSybrPveT5Gptd3x90qWMXABqzdUFSUNY4WE=; b=IRCYr/p5+yv/9bjlDK212Xx97X
	G3++UiX96w5wyVe+nZnX5qQVzl5FKlsmElnHqOS5vR62fbxALELdZHMQ32xDbPgjxKuYIBpHZdyck
	1eREmH85AbFzTnYPuG81eaafNFhxMn+POSjYg1VCd+VPCZ7t6GyrrkbmlZItdPUcQlmcHOUdx5PjA
	Mj1JvHLG5rsdp2K4o5cAPla1MqIJpaIlKRctcQc5cF7OzJzsugVvB3LrXUaZ0eXwP/CFvAR94XQQs
	nqL1tTS7f6RtydNAgxhVXjxJSXtU25pjTPzUhIeDO/7Z+iSXPIjPZHSKoFtaugcCp9hMQFzndOzXk
	EMy8rQtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWNBs-00051Y-SF; Wed, 06 May 2020 16:46:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWN9p-0000kW-8r
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 16:44:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09B0E101E;
 Wed,  6 May 2020 09:44:29 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AF9C93F305;
 Wed,  6 May 2020 09:44:27 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 7/7] firmware: smccc: Add ARCH_SOC_ID support
Date: Wed,  6 May 2020 17:44:11 +0100
Message-Id: <20200506164411.3284-8-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506164411.3284-1-sudeep.holla@arm.com>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_094429_515476_D17A40B9 
X-CRM114-Status: GOOD (  18.62  )
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

SMCCC v1.2 adds a new optional function SMCCC_ARCH_SOC_ID to obtain a
SiP defined SoC identification value. Add support for the same.

Also using the SoC bus infrastructure, let us expose the platform
specific SoC atrributes under sysfs. We also provide custom sysfs for
the vendor ID as JEP-106 bank and identification code.

Reviewed-by: Steven Price <steven.price@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/smccc/Kconfig  |   8 ++
 drivers/firmware/smccc/Makefile |   1 +
 drivers/firmware/smccc/soc_id.c | 168 ++++++++++++++++++++++++++++++++
 include/linux/arm-smccc.h       |   5 +
 4 files changed, 182 insertions(+)
 create mode 100644 drivers/firmware/smccc/soc_id.c

diff --git a/drivers/firmware/smccc/Kconfig b/drivers/firmware/smccc/Kconfig
index d93f1ab52cb2..15e7466179a6 100644
--- a/drivers/firmware/smccc/Kconfig
+++ b/drivers/firmware/smccc/Kconfig
@@ -15,3 +15,11 @@ config HAVE_ARM_SMCCC_DISCOVERY
 	 implementation of PSCI_FEATURES(SMCCC_VERSION) which returns
 	 success on firmware compliant to SMCCC v1.1 and above.
 
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
index 000000000000..dc5dd3f1f59b
--- /dev/null
+++ b/drivers/firmware/smccc/soc_id.c
@@ -0,0 +1,168 @@
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
+/* The bank index is equal to the for continuation code bank number - 1 */
+#define JEP106_BANK_CONT_CODE(x)	\
+	(u8)(FIELD_GET(SMCCC_SOC_ID_JEP106_BANK_IDX_MASK, (x)) + 1)
+#define JEP106_ID_CODE(x)	\
+	(u8)(FIELD_GET(SMCCC_SOC_ID_JEP106_ID_CODE_MASK, (x)))
+#define IMP_DEF_SOC_ID(x)	\
+	(u16)(FIELD_GET(SMCCC_SOC_ID_IMP_DEF_SOC_ID_MASK, (x)))
+
+static int soc_id_version;
+static struct soc_device *soc_dev;
+static struct soc_device_attribute *soc_dev_attr;
+
+static int smccc_map_error_codes(unsigned long a0)
+{
+	if (a0 >= SMCCC_RET_SUCCESS)
+		return 0;
+	else if (a0 == SMCCC_RET_INVALID_PARAMETER)
+		return -EINVAL;
+	else if (a0 == SMCCC_RET_NOT_SUPPORTED)
+		return -EOPNOTSUPP;
+	return -EINVAL;
+}
+
+static int smccc_soc_id_support_check(void)
+{
+	struct arm_smccc_res res;
+
+	if (arm_smccc_1_1_get_conduit() == SMCCC_CONDUIT_NONE) {
+		pr_err("%s: invalid SMCCC conduit\n", __func__);
+		return -EOPNOTSUPP;
+	}
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
+			     ARM_SMCCC_ARCH_SOC_ID, &res);
+
+	return smccc_map_error_codes(res.a0);
+}
+
+static ssize_t
+jep106_cont_bank_code_show(struct device *dev, struct device_attribute *attr,
+			   char *buf)
+{
+	return sprintf(buf, "%02x\n", JEP106_BANK_CONT_CODE(soc_id_version));
+}
+
+static DEVICE_ATTR_RO(jep106_cont_bank_code);
+
+static ssize_t
+jep106_identification_code_show(struct device *dev,
+				struct device_attribute *attr, char *buf)
+{
+	return sprintf(buf, "%02x\n", JEP106_ID_CODE(soc_id_version));
+}
+
+static DEVICE_ATTR_RO(jep106_identification_code);
+
+static struct attribute *jep106_id_attrs[] = {
+	&dev_attr_jep106_cont_bank_code.attr,
+	&dev_attr_jep106_identification_code.attr,
+	NULL
+};
+
+ATTRIBUTE_GROUPS(jep106_id);
+
+static int __init smccc_soc_init(void)
+{
+	struct device *dev;
+	int ret, soc_id_rev;
+	struct arm_smccc_res res;
+	static char soc_id_str[8], soc_id_rev_str[12];
+
+	if (arm_smccc_version_get() < ARM_SMCCC_VERSION_1_2)
+		return 0;
+
+	ret = smccc_soc_id_support_check();
+	if (ret) {
+		pr_info("Feature not implemented, skipping ....\n");
+		return 0;
+	}
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 0, &res);
+
+	ret = smccc_map_error_codes(res.a0);
+	if (ret) {
+		pr_err("Failed to fetch version, Err = %d\n", ret);
+		return ret;
+	}
+
+	soc_id_version = res.a0;
+
+	arm_smccc_1_1_invoke(ARM_SMCCC_ARCH_SOC_ID, 1, &res);
+
+	ret = smccc_map_error_codes(res.a0);
+	if (ret) {
+		pr_err("Failed to fetch revision, Err = %d\n", ret);
+		return ret;
+	}
+
+	soc_id_rev = res.a0;
+
+	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
+	if (!soc_dev_attr)
+		return -ENOMEM;
+
+	sprintf(soc_id_str, "0x%04x", IMP_DEF_SOC_ID(soc_id_version));
+	sprintf(soc_id_rev_str, "0x%08x", soc_id_rev);
+
+	soc_dev_attr->soc_id = soc_id_str;
+	soc_dev_attr->revision = soc_id_rev_str;
+
+	soc_dev = soc_device_register(soc_dev_attr);
+	if (IS_ERR(soc_dev)) {
+		ret = PTR_ERR(soc_dev);
+		goto free_soc;
+	}
+
+	dev = soc_device_to_device(soc_dev);
+
+	ret = devm_device_add_groups(dev, jep106_id_groups);
+	if (ret) {
+		dev_err(dev, "sysfs create failed: %d\n", ret);
+		goto unregister_soc;
+	}
+
+	pr_info("ID = %s Revision = %s\n", soc_dev_attr->soc_id,
+		soc_dev_attr->revision);
+
+	return 0;
+
+unregister_soc:
+	soc_device_unregister(soc_dev);
+free_soc:
+	kfree(soc_dev_attr);
+	return ret;
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
index 8dd54dad1ec5..368dabe99d09 100644
--- a/include/linux/arm-smccc.h
+++ b/include/linux/arm-smccc.h
@@ -69,6 +69,11 @@
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
