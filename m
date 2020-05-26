Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091231C611E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 21:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBq3Q8aSxVTlFu8/MPVrRQ03nHFG9nMFicEdbYXTtsw=; b=P4w0OasZiqp+dD
	pC7TJ2MwzOFQe2Zls/vorIdFka4DQtwSlsLnrySFdN4LTR3opo9UGKW2EQ2gbU9+7MRoiKEBW86PA
	pUeTW48g3jrXJf4J7DAt3GgbzdlHccPDG/xf2KzB1CFMYadjiKDcCrdXYYd9nocvLjyNfBy9iO83K
	uxNkT0mN4eBelaZq+be0NGERYgowbVoMmL5Jb76JV5CreM6AA0BhC7/qBOs/E+a3T6tYRgrcTUoJv
	9N4OmQdPVZliGkJNRL1GrZx27fSq0GuFLMS5sRrKEQrLIBivX78MLym77jQ2wUm0yLvW7LZRkB8Rq
	qIN9cxrPdTbQ0S1nc8Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW3Li-0006VF-42; Tue, 05 May 2020 19:35:26 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW3Kr-0005eH-1O
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 19:34:35 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 045JYSvL034686;
 Tue, 5 May 2020 14:34:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588707268;
 bh=pZ9mOsNCUCrGRP33SWoWo57mS4MDV5EMV9Q6SiZhp5g=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=msOxJ1EWp5byKYK33S7SvQ9IknUsZhkJF4NfW+BGhjeohAjg9/yUFCmF4uVLSAPOr
 5sqw5j5WDIrBrlaSNB0YuVBYv/aESfWNj7kMR//4HqXP+1tBNgO8eTyLnGsosGz165
 YWZ1nvc29u1apfaQIGHqQR8qdshv3wyHArautXJM=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 045JYSbM112487
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 May 2020 14:34:28 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 May
 2020 14:34:27 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 May 2020 14:34:27 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045JYQQp126914;
 Tue, 5 May 2020 14:34:27 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v2 2/2] soc: ti: add k3 platforms chipid module driver
Date: Tue, 5 May 2020 22:34:17 +0300
Message-ID: <20200505193417.2112-3-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505193417.2112-1-grygorii.strashko@ti.com>
References: <20200505193417.2112-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_123433_180200_5EB04A74 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Texas Instruments K3 Multicore SoC platforms have chipid module which
is represented by CTRLMMR_xxx_JTAGID register and contains information
about SoC id and revision.
 Bits:
  31-28 VARIANT Device variant
  27-12 PARTNO  Part number
  11-1  MFG     Indicates TI as manufacturer (0x17)
  1             Always 1

This patch adds corresponding driver to identify the TI K3 SoC family and
revision, and registers this information with the SoC bus. It is available
under /sys/devices/soc0/ for user space, and can be checked, where needed,
in Kernel using soc_device_match().

Identification is done by:
- checking MFG to be TI ID
 - retrieving Device variant (revision)
 - retrieving Part number and convert it to the family
 - retrieving machine from DT "/model"

Example J721E:
  # cat /sys/devices/soc0/{machine,family,revision}
  Texas Instruments K3 J721E SoC
  J721E
  SR1.0

Example AM65x:
  # cat /sys/devices/soc0/{machine,family,revision}
  Texas Instruments AM654 Base Board
  AM65X
  SR1.0

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 drivers/soc/ti/Kconfig      |  10 +++
 drivers/soc/ti/Makefile     |   1 +
 drivers/soc/ti/k3-socinfo.c | 135 ++++++++++++++++++++++++++++++++++++
 3 files changed, 146 insertions(+)
 create mode 100644 drivers/soc/ti/k3-socinfo.c

diff --git a/drivers/soc/ti/Kconfig b/drivers/soc/ti/Kconfig
index 4486e055794c..e192fb788836 100644
--- a/drivers/soc/ti/Kconfig
+++ b/drivers/soc/ti/Kconfig
@@ -91,6 +91,16 @@ config TI_K3_RINGACC
 	  and a consumer. There is one RINGACC module per NAVSS on TI AM65x SoCs
 	  If unsure, say N.
 
+config TI_K3_SOCINFO
+	bool
+	depends on ARCH_K3 || COMPILE_TEST
+	select SOC_BUS
+	select MFD_SYSCON
+	help
+	  Include support for the SoC bus socinfo for the TI K3 Multicore SoC
+	  platforms to provide information about the SoC family and
+	  variant to user space.
+
 endif # SOC_TI
 
 config TI_SCI_INTA_MSI_DOMAIN
diff --git a/drivers/soc/ti/Makefile b/drivers/soc/ti/Makefile
index bec827937a5f..1110e5c98685 100644
--- a/drivers/soc/ti/Makefile
+++ b/drivers/soc/ti/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_WKUP_M3_IPC)		+= wkup_m3_ipc.o
 obj-$(CONFIG_TI_SCI_PM_DOMAINS)		+= ti_sci_pm_domains.o
 obj-$(CONFIG_TI_SCI_INTA_MSI_DOMAIN)	+= ti_sci_inta_msi.o
 obj-$(CONFIG_TI_K3_RINGACC)		+= k3-ringacc.o
+obj-$(CONFIG_TI_K3_SOCINFO)		+= k3-socinfo.o
diff --git a/drivers/soc/ti/k3-socinfo.c b/drivers/soc/ti/k3-socinfo.c
new file mode 100644
index 000000000000..4c21e099d3c7
--- /dev/null
+++ b/drivers/soc/ti/k3-socinfo.c
@@ -0,0 +1,135 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * TI K3 SoC info driver
+ *
+ * Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/mfd/syscon.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/regmap.h>
+#include <linux/slab.h>
+#include <linux/string.h>
+#include <linux/sys_soc.h>
+
+#define CTRLMMR_WKUP_JTAGID_REG		0
+/*
+ * Bits:
+ *  31-28 VARIANT	Device variant
+ *  27-12 PARTNO	Part number
+ *  11-1  MFG		Indicates TI as manufacturer (0x17)
+ *  1			Always 1
+ */
+#define CTRLMMR_WKUP_JTAGID_VARIANT_SHIFT	(28)
+#define CTRLMMR_WKUP_JTAGID_VARIANT_MASK	GENMASK(31, 28)
+
+#define CTRLMMR_WKUP_JTAGID_PARTNO_SHIFT	(12)
+#define CTRLMMR_WKUP_JTAGID_PARTNO_MASK		GENMASK(27, 12)
+
+#define CTRLMMR_WKUP_JTAGID_MFG_SHIFT		(1)
+#define CTRLMMR_WKUP_JTAGID_MFG_MASK		GENMASK(11, 1)
+
+#define CTRLMMR_WKUP_JTAGID_MFG_TI		0x17
+
+static const struct k3_soc_id {
+	unsigned int id;
+	const char *family_name;
+} k3_soc_ids[] = {
+	{ 0xBB5A, "AM65X" },
+	{ 0xBB64, "J721E" },
+};
+
+static int __init partno_to_names(unsigned int partno,
+				  struct soc_device_attribute *soc_dev_attr)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(k3_soc_ids); i++)
+		if (partno == k3_soc_ids[i].id) {
+			soc_dev_attr->family = k3_soc_ids[i].family_name;
+			return 0;
+		}
+
+	return -EINVAL;
+}
+
+static int __init k3_chipinfo_init(void)
+{
+	struct soc_device_attribute *soc_dev_attr;
+	struct soc_device *soc_dev;
+	struct device_node *node;
+	struct regmap *regmap;
+	u32 partno_id;
+	u32 variant;
+	u32 jtag_id;
+	u32 mfg;
+	int ret;
+
+	node = of_find_compatible_node(NULL, NULL, "ti,am654-chipid");
+	if (!node)
+		return -ENODEV;
+
+	regmap = device_node_to_regmap(node);
+	of_node_put(node);
+
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
+
+	ret = regmap_read(regmap, CTRLMMR_WKUP_JTAGID_REG, &jtag_id);
+	if (ret < 0)
+		return ret;
+
+	mfg = (jtag_id & CTRLMMR_WKUP_JTAGID_MFG_MASK) >>
+	       CTRLMMR_WKUP_JTAGID_MFG_SHIFT;
+
+	if (mfg != CTRLMMR_WKUP_JTAGID_MFG_TI) {
+		pr_err("Invalid MFG SoC\n");
+		return -ENODEV;
+	}
+
+	variant = (jtag_id & CTRLMMR_WKUP_JTAGID_VARIANT_MASK) >>
+		  CTRLMMR_WKUP_JTAGID_VARIANT_SHIFT;
+	variant++;
+
+	partno_id = (jtag_id & CTRLMMR_WKUP_JTAGID_PARTNO_MASK) >>
+		 CTRLMMR_WKUP_JTAGID_PARTNO_SHIFT;
+
+	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
+	if (!soc_dev_attr)
+		return -ENOMEM;
+
+	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "SR%x.0", variant);
+
+	ret = partno_to_names(partno_id, soc_dev_attr);
+	if (ret) {
+		pr_err("Unknown SoC JTAGID[0x%08X]\n", jtag_id);
+		ret = -ENODEV;
+		goto err;
+	}
+
+	node = of_find_node_by_path("/");
+	of_property_read_string(node, "model", &soc_dev_attr->machine);
+	of_node_put(node);
+
+	soc_dev = soc_device_register(soc_dev_attr);
+	if (IS_ERR(soc_dev)) {
+		ret = PTR_ERR(soc_dev);
+		goto err;
+	}
+
+	pr_info("Family:%s rev:%s JTAGID[0x%08x] Detected\n",
+		soc_dev_attr->family,
+		soc_dev_attr->revision, jtag_id);
+
+	return 0;
+
+err:
+	kfree(soc_dev_attr->revision);
+	kfree(soc_dev_attr);
+	return ret;
+}
+
+subsys_initcall(k3_chipinfo_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
