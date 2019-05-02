Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23460124AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 00:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehedviD/Bo6eC8+Xz8HWx8mkYGWnkuu5YGRO+07axuo=; b=bXkYZKHWEYRP3L
	Xrc6Ye+iEx5tNtgOcW6+S2mFRfR6HqmnhuS3FxUY7UWCRa8ertC3si6rXv9x4kBHWxfzTb/u9/Znb
	YmY6qUr0HPBSp/68hky7FD1RKiYJ1Qw+Uu2KCXhWQyuiEKLvN6hmLvSN/AhOIHb6MDQoe3YD+/sNO
	VCsTemur6Ig7QoZamN4v9aT+hJW1vV3oYeFjDM3UmQu0JmAUwn7jkgLS8AeSxn6hDKWpKv6fiz9N4
	Pbv0M9sfj+NleS0062jxzu8vJ56c1nhSh23OISRFkWu7CM4pe6LEkvTz1LpVabEPfrWPnNQdIT/j6
	qvkuadPM2z89Etv7AaBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKRP-000179-Ts; Thu, 02 May 2019 22:44:35 +0000
Received: from mail-ve1eur02on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::62a]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKR9-0000zo-T7
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 22:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kMcB8S9xeJfOAsnw8udKZ9I3Hg1vf3QaG3EbTDdpcN0=;
 b=UFbm0iKvcpM5ZQDjQIlHuupeKtYZSNbIphw6E77gt4Maxgw0H9xTlxtEjY4hhf3o67rGPahZ2ljcNeSRNAzq/HGmLEYxcuHfsba/u6Jsm9ZPMSIxGDvieg+QnMwTvQXr3t+RBkNULDKAzgSYXC+6Ivlrzo2ru7PzfPHHxrUgSx4=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB5315.eurprd04.prod.outlook.com (20.176.215.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Thu, 2 May 2019 22:44:14 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 22:44:14 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Lucas Stach
 <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 1/3] cpufreq: Add imx-cpufreq-dt driver
Thread-Topic: [PATCH v2 1/3] cpufreq: Add imx-cpufreq-dt driver
Thread-Index: AQHVATiRBI3TxTCIzUmxtrShT8luGA==
Date: Thu, 2 May 2019 22:44:14 +0000
Message-ID: <df3a41d8bf57b8dd8f8c17599eeca98d6e43962c.1556836868.git.leonard.crestez@nxp.com>
References: <cover.1556836868.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1556836868.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0184.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::28) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eef02eb0-e2d8-4398-01fa-08d6cf4fb363
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5315; 
x-ms-traffictypediagnostic: AM0PR04MB5315:
x-microsoft-antispam-prvs: <AM0PR04MB5315F6644B96EC5278A957D8EE340@AM0PR04MB5315.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(376002)(136003)(346002)(189003)(199004)(86362001)(76176011)(6116002)(66446008)(66476007)(66946007)(6436002)(66556008)(71190400001)(73956011)(71200400001)(64756008)(52116002)(53936002)(3846002)(36756003)(256004)(5660300002)(2906002)(8676002)(26005)(11346002)(44832011)(186003)(478600001)(118296001)(4326008)(446003)(6506007)(305945005)(386003)(8936002)(316002)(476003)(6486002)(54906003)(6512007)(50226002)(99286004)(68736007)(81156014)(81166006)(486006)(110136005)(102836004)(14454004)(66066001)(25786009)(7736002)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5315;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tM4GKtmIDuRg12X2bCJ6eNpDCH4eFbGemcyYJIEDD9jOWwr9fEmI/BrUyR600fGCHAzIU0uX/xhW0OcadGQ+zZp6aBgol7FgxDTNCPNDQlKu1EstTZ1YXPCX02njF0kb0badCyEOHoqCeo9vrG/fiAjYL3/q+3hBIjc23wFMuF6QAB/Y/xLFIwpvEZAH7U+a2K0DSJnvLBYTEzwVb3cgmwltcFKosUoDMP3qrhiBYrJDD7JeU9FqVd4vnuoKPpd2bPZ2SRWI7Y76EhqF0vy7F6Q0wqKMhMqLap/qs43Pi/CbYUnOKfccYku0eP4d9f5nLF8TDSVwcCwC0WK29VrmbBOTsNN3+GJ/KOMF1uhcrPnlFAeAEE5sDeVJfXYM73D3l06HgtvDJw6ewPi6vRPncVN7o0WuwfYZ/tGQ9fjOoKc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eef02eb0-e2d8-4398-01fa-08d6cf4fb363
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 22:44:14.1198 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5315
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_154419_940144_7E3B74EC 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:62a listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Right now in upstream imx8m cpufreq support just lists a common subset
of OPPs because the higher ones should only be attempted after checking
speed grading in fuses.

Add a small driver which checks speed grading from nvmem cells before
registering cpufreq-dt.

This allows unlocking all frequencies for imx8mm and imx8mq.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
 drivers/cpufreq/Kconfig.arm          | 10 +++
 drivers/cpufreq/Makefile             |  1 +
 drivers/cpufreq/cpufreq-dt-platdev.c |  3 +
 drivers/cpufreq/imx-cpufreq-dt.c     | 99 ++++++++++++++++++++++++++++
 drivers/soc/imx/soc-imx8.c           |  3 +
 5 files changed, 116 insertions(+)
 create mode 100644 drivers/cpufreq/imx-cpufreq-dt.c

diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
index 179a1d302f48..f8e40429e290 100644
--- a/drivers/cpufreq/Kconfig.arm
+++ b/drivers/cpufreq/Kconfig.arm
@@ -90,10 +90,20 @@ config ARM_IMX6Q_CPUFREQ
 	help
 	  This adds cpufreq driver support for Freescale i.MX6 series SoCs.
 
 	  If in doubt, say N.
 
+config ARM_IMX_CPUFREQ_DT
+	tristate "Freescale i.MX8M cpufreq support"
+	depends on ARCH_MXC && CPUFREQ_DT
+	default m if (ARCH_MXC && CPUFREQ_DT)
+	help
+	  This adds cpufreq driver support for newer Freescale i.MX series
+	  SoCs, based on cpufreq-dt
+
+	  If in doubt, say N.
+
 config ARM_KIRKWOOD_CPUFREQ
 	def_bool MACH_KIRKWOOD
 	help
 	  This adds the CPUFreq driver for Marvell Kirkwood
 	  SoCs.
diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
index 689b26c6f949..7bcda2273d0c 100644
--- a/drivers/cpufreq/Makefile
+++ b/drivers/cpufreq/Makefile
@@ -54,10 +54,11 @@ obj-$(CONFIG_ARM_ARMADA_8K_CPUFREQ)	+= armada-8k-cpufreq.o
 obj-$(CONFIG_ARM_BRCMSTB_AVS_CPUFREQ)	+= brcmstb-avs-cpufreq.o
 obj-$(CONFIG_ACPI_CPPC_CPUFREQ)		+= cppc_cpufreq.o
 obj-$(CONFIG_ARCH_DAVINCI)		+= davinci-cpufreq.o
 obj-$(CONFIG_ARM_HIGHBANK_CPUFREQ)	+= highbank-cpufreq.o
 obj-$(CONFIG_ARM_IMX6Q_CPUFREQ)		+= imx6q-cpufreq.o
+obj-$(CONFIG_ARM_IMX_CPUFREQ_DT)	+= imx-cpufreq-dt.o
 obj-$(CONFIG_ARM_KIRKWOOD_CPUFREQ)	+= kirkwood-cpufreq.o
 obj-$(CONFIG_ARM_MEDIATEK_CPUFREQ)	+= mediatek-cpufreq.o
 obj-$(CONFIG_MACH_MVEBU_V7)		+= mvebu-cpufreq.o
 obj-$(CONFIG_ARM_OMAP2PLUS_CPUFREQ)	+= omap-cpufreq.o
 obj-$(CONFIG_ARM_PXA2xx_CPUFREQ)	+= pxa2xx-cpufreq.o
diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
index 47729a22c159..19c1aad57e26 100644
--- a/drivers/cpufreq/cpufreq-dt-platdev.c
+++ b/drivers/cpufreq/cpufreq-dt-platdev.c
@@ -106,10 +106,13 @@ static const struct of_device_id whitelist[] __initconst = {
  */
 static const struct of_device_id blacklist[] __initconst = {
 	{ .compatible = "calxeda,highbank", },
 	{ .compatible = "calxeda,ecx-2000", },
 
+	{ .compatible = "fsl,imx8mq", },
+	{ .compatible = "fsl,imx8mm", },
+
 	{ .compatible = "marvell,armadaxp", },
 
 	{ .compatible = "mediatek,mt2701", },
 	{ .compatible = "mediatek,mt2712", },
 	{ .compatible = "mediatek,mt7622", },
diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
new file mode 100644
index 000000000000..9b2ee96c9213
--- /dev/null
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -0,0 +1,99 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP
+ */
+
+#include <linux/cpu.h>
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/nvmem-consumer.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/pm_opp.h>
+#include <linux/slab.h>
+
+#define OCOTP_CFG3_SPEED_GRADE_SHIFT	8
+#define OCOTP_CFG3_SPEED_GRADE_MASK	(0x3 << 8)
+
+static const struct of_device_id imx_cpufreq_dt_match_list[] = {
+	{ .compatible = "fsl,imx8mm" },
+	{ .compatible = "fsl,imx8mq" },
+	{}
+};
+
+static const struct of_device_id *imx_cpufreq_dt_match_node(void)
+{
+	struct device_node *np;
+	const struct of_device_id *match;
+
+	np = of_find_node_by_path("/");
+	match = of_match_node(imx_cpufreq_dt_match_list, np);
+	of_node_put(np);
+
+	return match;
+}
+
+/* cpufreq-dt device registered by imx-cpufreq-dt */
+static struct platform_device *cpufreq_dt_pdev;
+static struct opp_table *cpufreq_opp_table;
+
+static int imx_cpufreq_dt_probe(struct platform_device *pdev)
+{
+	struct device *cpu_dev = get_cpu_device(0);
+	const struct of_device_id *match;
+	u32 speed_grade;
+	int ret;
+
+	match = imx_cpufreq_dt_match_node();
+	if (!match)
+		return -ENODEV;
+
+	ret = nvmem_cell_read_u32(cpu_dev, "speed_grade", &speed_grade);
+	if (ret)
+		return ret;
+
+	speed_grade = (speed_grade & OCOTP_CFG3_SPEED_GRADE_MASK) >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
+	dev_info(&pdev->dev, "cpu speed grade %d\n", speed_grade);
+	speed_grade = 1 << speed_grade;
+
+	cpufreq_opp_table = dev_pm_opp_set_supported_hw(cpu_dev, &speed_grade, 1);
+	if (IS_ERR(cpufreq_opp_table)) {
+		ret = PTR_ERR(cpufreq_opp_table);
+		dev_err(&pdev->dev, "Failed to set supported opp: %d\n", ret);
+		return ret;
+	}
+
+	cpufreq_dt_pdev = platform_device_register_data(
+			&pdev->dev, "cpufreq-dt", -1, NULL, 0);
+	if (IS_ERR(cpufreq_dt_pdev)) {
+		dev_pm_opp_put_supported_hw(cpufreq_opp_table);
+		ret = PTR_ERR(cpufreq_dt_pdev);
+		dev_err(&pdev->dev, "Failed to register cpufreq-dt: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int imx_cpufreq_dt_remove(struct platform_device *pdev)
+{
+	platform_device_unregister(cpufreq_dt_pdev);
+	dev_pm_opp_put_supported_hw(cpufreq_opp_table);
+
+	return 0;
+}
+
+static struct platform_driver imx_cpufreq_dt_driver = {
+	.probe = imx_cpufreq_dt_probe,
+	.remove = imx_cpufreq_dt_remove,
+	.driver = {
+		.name = "imx-cpufreq-dt",
+	},
+};
+module_platform_driver(imx_cpufreq_dt_driver);
+
+MODULE_ALIAS("platform:imx-cpufreq-dt");
+MODULE_DESCRIPTION("Freescale i.MX cpufreq speed grading driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index cd10726e64e4..02988bdfbb73 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -130,10 +130,13 @@ static int __init imx8_soc_init(void)
 
 	soc_dev = soc_device_register(soc_dev_attr);
 	if (IS_ERR(soc_dev))
 		goto free_rev;
 
+	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
+		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
+
 	return 0;
 
 free_rev:
 	kfree(soc_dev_attr->revision);
 free_soc:
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
