Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4721EA128
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f1SGFvvXisMmdA6TWuLDYZEk6xquZeJdMdmdfoO57iA=; b=S3gVlWEXJCzeJAS9OMlR8elSax
	qD+5qZRk7HV/YmUmfkdLxbu9JlypFoUWMTPE4crW7a6VdenR3fEqLOqAVtYhjNw8WPsD8ozNl+tlW
	WDFrroGjs+HjTzU1nuR6HJsHoqLnofB4JfaEE43BxVAhyMMLw1kN2PgR53INSgr6ARVhOqg9qsxwi
	cKrU6eHTYMEEGPdIXqH7qw4Yy/S2+iP7vuLpLGc3lAa75xUE0jKRjb/lUK8okDeWK19XTGohLN5Yq
	5cJmy/64/omF2vVGta8epvUtDgkdI2vlp5dTAIVdeX1emqlHKbe6Fnrom1Xav7pm2fatR47FWnqPC
	1BJr3qRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfh1H-0003Gv-E9; Mon, 01 Jun 2020 09:46:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfh0Z-0002qA-RN
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 09:45:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 142C31063;
 Mon,  1 Jun 2020 02:45:23 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 16F5F3F305;
 Mon,  1 Jun 2020 02:45:21 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 3/3] firmware: Add example PSA FF-A non-secure VM partition
Date: Mon,  1 Jun 2020 10:45:12 +0100
Message-Id: <20200601094512.50509-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200601094512.50509-1-sudeep.holla@arm.com>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_024527_997317_57CBC676 
X-CRM114-Status: GOOD (  15.67  )
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
Cc: Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is just an example non-secure VM partition to show how to create
the device and use the PSA FF-A interface APIs.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_psa_ffa/Kconfig     |  7 +++
 drivers/firmware/arm_psa_ffa/Makefile    |  1 +
 drivers/firmware/arm_psa_ffa/partition.c | 71 ++++++++++++++++++++++++
 3 files changed, 79 insertions(+)
 create mode 100644 drivers/firmware/arm_psa_ffa/partition.c

diff --git a/drivers/firmware/arm_psa_ffa/Kconfig b/drivers/firmware/arm_psa_ffa/Kconfig
index ba699ec68ec4..34ad61e79234 100644
--- a/drivers/firmware/arm_psa_ffa/Kconfig
+++ b/drivers/firmware/arm_psa_ffa/Kconfig
@@ -13,3 +13,10 @@ config ARM_PSA_FFA_TRANSPORT
 
 	  This driver provides interface for all the client drivers making
 	  use of the features offered by ARM PSA-FF-A.
+
+config ARM_PSA_FFA_PARTITION
+	tristate "Arm PSA FF-A compliant partition"
+	depends on ARM_PSA_FFA_TRANSPORT
+	help
+	  This driver provides example for ARM PSA-FF-A client driver
+	  making use of the interfaces offered by ARM PSA-FF-A driver.
diff --git a/drivers/firmware/arm_psa_ffa/Makefile b/drivers/firmware/arm_psa_ffa/Makefile
index ac0455ff71a4..8eb03898baf7 100644
--- a/drivers/firmware/arm_psa_ffa/Makefile
+++ b/drivers/firmware/arm_psa_ffa/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_ARM_PSA_FFA_TRANSPORT) += driver.o
+obj-$(CONFIG_ARM_PSA_FFA_PARTITION) += partition.o
diff --git a/drivers/firmware/arm_psa_ffa/partition.c b/drivers/firmware/arm_psa_ffa/partition.c
new file mode 100644
index 000000000000..8549f8d61454
--- /dev/null
+++ b/drivers/firmware/arm_psa_ffa/partition.c
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Arm PSA FFA example partition driver
+ *
+ * Copyright (C) 2020 Arm Ltd.
+ */
+
+#include <linux/arm_psa_ffa.h>
+#include <linux/of_address.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/module.h>
+#include <linux/types.h>
+#include <linux/uuid.h>
+
+static int psa_ffa_partition_probe(struct platform_device *pdev)
+{
+	u16 vm_id;
+	uuid_t uuid;
+	const char *uuid_str;
+	u32 uuid0_4[4];
+	struct device *dev = &pdev->dev;
+	const struct device_node *np = dev->of_node;
+	struct arm_psa_ffa_handle *handle;
+	struct psa_ffa_partition_info **buffer;
+
+	handle = arm_psa_ffa_handle_get(dev);
+	if (!handle)
+		return -ENODEV;
+
+	if (of_property_read_string(np, "uuid", &uuid_str)) {
+		dev_err(dev, "failed to parse \"uuid\" property in '%pOF'\n", np);
+		return -ENODEV;
+	}
+
+	if (uuid_parse(uuid_str, &uuid)) {
+		dev_err(dev, "invalid \"uuid\" property (%s)\n", uuid_str);
+		return -ENODEV;
+	}
+
+	export_uuid((u8 *)uuid0_4, &uuid);
+
+	vm_id = handle->id_get();
+
+	handle->partition_info_get(uuid0_4[0], uuid0_4[1], uuid0_4[2],
+				   uuid0_4[3], buffer);
+
+	return 0;
+}
+
+static const struct of_device_id psa_ffa_partition_of_match[] = {
+	{.compatible = "arm,psa-ffa-partition"},
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, psa_ffa_partition_of_match);
+
+static struct platform_driver psa_ffa_partition_driver = {
+	.driver = {
+		   .name = "psa-ffa-partition",
+		   .of_match_table = psa_ffa_partition_of_match,
+		   },
+	.probe = psa_ffa_partition_probe,
+};
+
+module_platform_driver(psa_ffa_partition_driver);
+
+MODULE_ALIAS("platform: arm-psa-ffa");
+MODULE_AUTHOR("Sudeep Holla <sudeep.holla@arm.com>");
+MODULE_DESCRIPTION("Arm PSA FF-A example partition driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
