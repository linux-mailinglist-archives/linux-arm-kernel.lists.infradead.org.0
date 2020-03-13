Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56B21843EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:37:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0D2ZOdb43ywouyPJgJ8gP99/MRkOR52obic0P7IteU=; b=sp+0Xw96A1TEpg
	vSUwRa4kEg2aDdvwG2bjgvqJSxRiR8p58dCKl1Sd6H4js0sGix4nduXqZhaXpIWmd2xqNNHjDO6xw
	/I4wnsufzzYpb88gR6tJRNeYj5zwoX8X+5tj0OBPhK6d2nuNXBCYU2K78PR3E7l/Fh65ioWNNjbC9
	ql1GABVcFk0cOeJNfH+pko4YVkkySIIF4PtCMAbLYBQLqW2pLsclINbjRZyXMlK5ve+sB/6XpuvAE
	HKcDFOTU5vgE+I7sIEH4lN8fc42gBP22y1xPmhI9NzY/4yIXn7u1hV1mBM9WjCB5istzFI08M1MW1
	z1GssE2NIPk2j1QI36OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgl3-0000yN-DL; Fri, 13 Mar 2020 09:37:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgiJ-0005nX-2L; Fri, 13 Mar 2020 09:34:44 +0000
X-UUID: 1d54431539c64142be47ec2183ca8a71-20200313
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=aITYrQM8eBrMvjNd8eDu54DSclnBOLlaOJBx16RosZM=; 
 b=VHahNzYchtPE+IJGX2BE3P5wLQHgBa4+RH26nlZapRhrL3lIDUcnDg4cbg1OahQeu4MPfMKFR5PeZ+fuyC8+m5DsLO5B+m3vCo8+RtW/zA2a0d7ns/YohVprDPddH8fFe7OCbnv9aKWaFfXuShqJjqXgjoKSetpH85z5esXHqPQ=;
X-UUID: 1d54431539c64142be47ec2183ca8a71-20200313
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1714172259; Fri, 13 Mar 2020 01:34:39 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 02:34:38 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 17:31:41 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 13 Mar 2020 17:33:42 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>, Ryan Case
 <ryandcase@chromium.org>, Mark Brown <broonie@kernel.org>
Subject: [PATCH V4 12/13] regulator: Regulator driver for the Mediatek DVFSRC
Date: Fri, 13 Mar 2020 17:34:25 +0800
Message-ID: <1584092066-24425-13-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
References: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 398644CFD6E0D511561E58E06D53C2F6CA69D2B5C4B9512B60C933BBE44515392000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_023443_171533_FCB0F036 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Mike Turquette <mturquette@linaro.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, "henryc.chen" <henryc.chen@mediatek.com>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Arvin Wang <arvin.wang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "henryc.chen" <henryc.chen@mediatek.com>

Driver for regulators exposed by the DVFSRC (dynamic voltage and
frequency scaling resource collector) found in devices based on
mt8183 and newer platforms.

Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
---
 drivers/regulator/Kconfig                |  10 +++
 drivers/regulator/Makefile               |   1 +
 drivers/regulator/mtk-dvfsrc-regulator.c | 119 +++++++++++++++++++++++++++++++
 3 files changed, 130 insertions(+)
 create mode 100644 drivers/regulator/mtk-dvfsrc-regulator.c

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 074a2ef..3962180 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -680,6 +680,16 @@ config REGULATOR_MT6397
 	  This driver supports the control of different power rails of device
 	  through regulator interface.
 
+config REGULATOR_MTK_DVFSRC
+	tristate "MediaTek DVFSRC regulator driver"
+	depends on MTK_DVFSRC
+	help
+	  Say y here to control regulator by DVFSRC (dynamic voltage
+	  and frequency scaling resource collector).
+	  This driver supports to control regulators via the DVFSRC
+	  of Mediatek. It allows for voting on regulator state
+	  between multiple users.
+
 config REGULATOR_PALMAS
 	tristate "TI Palmas PMIC Regulators"
 	depends on MFD_PALMAS
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index c0d6b96..c15c341 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -85,6 +85,7 @@ obj-$(CONFIG_REGULATOR_MT6323)	+= mt6323-regulator.o
 obj-$(CONFIG_REGULATOR_MT6358)	+= mt6358-regulator.o
 obj-$(CONFIG_REGULATOR_MT6380)	+= mt6380-regulator.o
 obj-$(CONFIG_REGULATOR_MT6397)	+= mt6397-regulator.o
+obj-$(CONFIG_REGULATOR_MTK_DVFSRC) += mtk-dvfsrc-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_RPM) += qcom_rpm-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_RPMH) += qcom-rpmh-regulator.o
 obj-$(CONFIG_REGULATOR_QCOM_SMD_RPM) += qcom_smd-regulator.o
diff --git a/drivers/regulator/mtk-dvfsrc-regulator.c b/drivers/regulator/mtk-dvfsrc-regulator.c
new file mode 100644
index 0000000..a7389d5
--- /dev/null
+++ b/drivers/regulator/mtk-dvfsrc-regulator.c
@@ -0,0 +1,119 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/of_device.h>
+#include <linux/of_platform.h>
+#include <linux/regulator/driver.h>
+#include <linux/regulator/of_regulator.h>
+#include <soc/mediatek/mtk_dvfsrc.h>
+
+static inline struct device *to_dvfsrc_dev(struct regulator_dev *rdev)
+{
+	return rdev_get_dev(rdev)->parent->parent;
+}
+
+static int dvfsrc_set_voltage_sel(struct regulator_dev *rdev,
+				   unsigned int selector)
+{
+	struct device *dvfsrc_dev = to_dvfsrc_dev(rdev);
+
+	mtk_dvfsrc_send_request(dvfsrc_dev, MTK_DVFSRC_CMD_VCORE_REQUEST,
+				selector);
+
+	return 0;
+}
+
+static int dvfsrc_get_voltage_sel(struct regulator_dev *rdev)
+{
+	struct device *dvfsrc_dev = to_dvfsrc_dev(rdev);
+	int val, ret;
+
+	ret = mtk_dvfsrc_query_info(dvfsrc_dev, MTK_DVFSRC_CMD_VCORE_QUERY,
+				    &val);
+
+	if (ret != 0)
+		return ret;
+
+	return val;
+}
+
+static struct regulator_ops dvfsrc_vcore_ops = {
+	.list_voltage = regulator_list_voltage_table,
+	.get_voltage_sel = dvfsrc_get_voltage_sel,
+	.set_voltage_sel = dvfsrc_set_voltage_sel,
+};
+
+static const unsigned int mt8183_voltages[] = {
+	725000,
+	800000,
+};
+
+static const struct regulator_desc regulator_mt8183_data = {
+	.name = "dvfsrc-vcore",				\
+	.of_match = of_match_ptr("dvfsrc-vcore"),	\
+	.ops = &dvfsrc_vcore_ops,			\
+	.type = REGULATOR_VOLTAGE,			\
+	.id = 0,					\
+	.owner = THIS_MODULE,				\
+	.n_voltages = ARRAY_SIZE(mt8183_voltages),	\
+	.volt_table = mt8183_voltages,			\
+};
+
+static int dvfsrc_vcore_regulator_probe(struct platform_device *pdev)
+{
+	struct regulator_config config = { };
+	struct regulator_dev *rdev;
+	const struct regulator_desc *init_data;
+
+	init_data = of_device_get_match_data(&pdev->dev);
+	if (!init_data)
+		return -EINVAL;
+
+	config.dev = &pdev->dev;
+	rdev = devm_regulator_register(&pdev->dev, init_data, &config);
+	if (IS_ERR(rdev)) {
+		dev_err(&pdev->dev, "failed to register %s\n",
+			init_data->name);
+		return PTR_ERR(rdev);
+	}
+
+	return 0;
+}
+
+static const struct of_device_id mtk_dvfsrc_regulator_match[] = {
+	{
+		.compatible = "mediatek,mt8183-dvfsrc-regulator",
+		.data = &regulator_mt8183_data,
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct platform_driver mtk_dvfsrc_regulator_driver = {
+	.driver = {
+		.name  = "mtk-dvfsrc-regulator",
+		.of_match_table = mtk_dvfsrc_regulator_match,
+	},
+	.probe = dvfsrc_vcore_regulator_probe,
+};
+
+static int __init mtk_dvfsrc_regulator_init(void)
+{
+	return platform_driver_register(&mtk_dvfsrc_regulator_driver);
+}
+subsys_initcall(mtk_dvfsrc_regulator_init);
+
+static void __exit mtk_dvfsrc_regulator_exit(void)
+{
+	platform_driver_unregister(&mtk_dvfsrc_regulator_driver);
+}
+module_exit(mtk_dvfsrc_regulator_exit);
+
+MODULE_AUTHOR("Arvin wang <arvin.wang@mediatek.com>");
+MODULE_LICENSE("GPL v2");
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
