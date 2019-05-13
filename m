Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8FF1AF04
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 04:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=02bfsOqz0cuAmJ5UiDF7kdlE8QrEZkdCAANMM3kzqYw=; b=W0LY0JHhgCwr4K
	ZSxEHyxJ7uvWAry3kyVnlp4Xz6alfhJaWg3JCJVfySKF4o/evWRBjL/eEyJJ5Slm6Gberjxjdzwie
	iZyWPLshdGw9w1KPabkmBSxvI931vHgCZtDN6M+EcaDV1+jZf3kqBX5u7WcGAa2gX8y/fn0FQ/w8K
	oxDDVDACd5vdUGe2Xe0nOSaechomhIaRXB0tX1KsBihK//NlUVNXfY76J35ww50KQNMbE5ITOm/Ty
	hkr6+QPlr1PeN8AcjI3s/e8KNpWxkIWM/5QMTLfqF2As1NR/mLkMjdAZhBMQCN64GYV58wiGC7crI
	XMjdo6WFdyKrS2d3whNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ1Bb-0001Nu-Cl; Mon, 13 May 2019 02:59:31 +0000
Received: from mail-eopbgr10042.outbound.protection.outlook.com ([40.107.1.42]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ1BS-0001NO-R7
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 02:59:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aazZoe2JxVf6tbNvd2la8SBw9qmOvqn0Pz2yVRvDA1Q=;
 b=ZDNIU5UJ/z366KAVCfQ0Bj4ekhbJ3sjk10h8K5hCqaJyNkw6BHIImzFVLl1SYfNlHMQEhIzz5kDCOfAc/nlW359BtnUv0Q3UYO9U+lS2ryFIUmeZTIIqTcRu76gtfp0sOQ8LkiCVf+RiwMa5AZT6TjWE7feIHmkjJkVf3hUPtzk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3707.eurprd04.prod.outlook.com (52.134.65.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Mon, 13 May 2019 02:59:17 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 02:59:17 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "agross@kernel.org"
 <agross@kernel.org>, "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "marc.w.gonzalez@free.fr"
 <marc.w.gonzalez@free.fr>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "robh@kernel.org" <robh@kernel.org>, Abel Vesa
 <abel.vesa@nxp.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH RESEND 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVCTfaYqtO/eSQ1UCSJJ4U0eiBlA==
Date: Mon, 13 May 2019 02:59:17 +0000
Message-ID: <1557716049-22744-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0143.apcprd02.prod.outlook.com
 (2603:1096:202:16::27) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d7be45c-0a62-4def-9a2c-08d6d74efcb8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3707; 
x-ms-traffictypediagnostic: DB3PR0402MB3707:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB3707F1A8837F7AE8C32B1310F50F0@DB3PR0402MB3707.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(376002)(39860400002)(136003)(199004)(189003)(26005)(66066001)(6512007)(6306002)(71200400001)(71190400001)(966005)(386003)(6506007)(316002)(305945005)(110136005)(68736007)(478600001)(52116002)(2501003)(7736002)(99286004)(14454004)(102836004)(81156014)(6436002)(81166006)(73956011)(6486002)(8676002)(4326008)(8936002)(486006)(25786009)(6116002)(3846002)(50226002)(5660300002)(256004)(36756003)(186003)(86362001)(2616005)(2906002)(53936002)(66446008)(64756008)(66946007)(7416002)(2201001)(66556008)(66476007)(476003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3707;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zN7+DwiHQoi4LXPHj3a+YX7Bp5jgw0fxntmcFgXpcoKrZaNYnbxpE0e6K2fUOxr8yRLZ1mUD2mhxMAL0rtU+lWoOL3NpV8kaQT4rTxtPLCdh3rCfCfoBXxcEbgkpZ3CmgVEo83cFWGmxV8BvTkZII0YdRjh3W9G3XO9fER0yhAL8erRFJoIG7XAwxZ7RIne22iJtSK0rJMY8+wxsYQXQQZv0MTDRB6gWA149bNeREhIbg20InFWCcFbGhm/IG/Kc3DOosrbV3V8GyVOjnTV2gVhPMvM4QIRGQ58o6qtgIPq2vtPLjEEYep49wJ/6a58HBqvAZz9O6eZqRr5XrZLnfrutITEH2GyfVTE5c5mqSX4hZ/5gw61GlCaCxohk4w1+f9g6jOjPiTboZtwjDfrM36JOczoyZwgFf7xzefY3PDI=
Content-ID: <100285B8E8F37144AD2A125D34FB0D13@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d7be45c-0a62-4def-9a2c-08d6d74efcb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 02:59:17.0463 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3707
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_195923_160147_42538CE8 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i.MX SCU SoC info driver to support i.MX8QXP SoC, introduce
driver dependency into Kconfig as CONFIG_IMX_SCU must be
selected to support i.MX SCU SoC driver, also need to use
platform driver model to make sure IMX_SCU driver is probed
before i.MX SCU SoC driver.

With this patch, SoC info can be read from sysfs:

i.mx8qxp-mek# cat /sys/devices/soc0/family
Freescale i.MX

i.mx8qxp-mek# cat /sys/devices/soc0/soc_id
i.MX8QXP

i.mx8qxp-mek# cat /sys/devices/soc0/machine
Freescale i.MX8QXP MEK

i.mx8qxp-mek# cat /sys/devices/soc0/revision
1.1

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
This patch is the resend version of patch series https://patchwork.kernel.org/patch/10895147/, changes as
below:
	- use correct encoding;
	- use same method of creating soc info as current existing i.MX8MQ soc driver, the ONLY differences
	  are: scu soc driver needs to use defer probe to wait i.MX SCU driver ready; need to get soc info
	  from SCU using SCU FW API.
---
 drivers/soc/imx/Kconfig       |   9 +++
 drivers/soc/imx/Makefile      |   1 +
 drivers/soc/imx/soc-imx-scu.c | 182 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 192 insertions(+)
 create mode 100644 drivers/soc/imx/soc-imx-scu.c

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index d80f899..cbc1a41 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -7,4 +7,13 @@ config IMX_GPCV2_PM_DOMAINS
 	select PM_GENERIC_DOMAINS
 	default y if SOC_IMX7D
 
+config IMX_SCU_SOC
+	bool "i.MX System Controller Unit SoC info support"
+	depends on IMX_SCU
+	select SOC_BUS
+	help
+	  If you say yes here you get support for the NXP i.MX System
+	  Controller Unit SoC info module, it will provide the SoC info
+	  like SoC family, ID and revision etc.
+
 endmenu
diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index d6b529e0..ddf343d 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
 obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
+obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
new file mode 100644
index 0000000..e81055d
--- /dev/null
+++ b/drivers/soc/imx/soc-imx-scu.c
@@ -0,0 +1,182 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP.
+ */
+
+#include <dt-bindings/firmware/imx/rsrc.h>
+#include <linux/firmware/imx/sci.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+#include <linux/sys_soc.h>
+#include <linux/platform_device.h>
+#include <linux/of.h>
+
+#define IMX_SCU_SOC_DRIVER_NAME		"imx-scu-soc"
+
+static struct imx_sc_ipc *soc_ipc_handle;
+static struct platform_device *imx_scu_soc_pdev;
+
+struct imx_sc_msg_misc_get_soc_id {
+	struct imx_sc_rpc_msg hdr;
+	union {
+		struct {
+			u32 control;
+			u16 resource;
+		} send;
+		struct {
+			u32 id;
+			u16 reserved;
+		} resp;
+	} data;
+} __packed;
+
+struct imx_scu_soc_data {
+	char *name;
+	u32 (*soc_revision)(void);
+};
+
+static u32 imx8qxp_soc_revision(void)
+{
+	struct imx_sc_msg_misc_get_soc_id msg;
+	struct imx_sc_rpc_msg *hdr = &msg.hdr;
+	u32 rev = 0;
+	int ret;
+
+	hdr->ver = IMX_SC_RPC_VERSION;
+	hdr->svc = IMX_SC_RPC_SVC_MISC;
+	hdr->func = IMX_SC_MISC_FUNC_GET_CONTROL;
+	hdr->size = 3;
+
+	msg.data.send.control = IMX_SC_C_ID;
+	msg.data.send.resource = IMX_SC_R_SYSTEM;
+
+	ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
+	if (ret) {
+		dev_err(&imx_scu_soc_pdev->dev,
+			"get soc info failed, ret %d\n", ret);
+		return rev;
+	}
+
+	/* format revision value passed from SCU firmware */
+	rev = (msg.data.resp.id >> 5) & 0xf;
+	rev = (((rev >> 2) + 1) << 4) | (rev & 0x3);
+
+	return rev;
+}
+
+static const struct imx_scu_soc_data imx8qxp_soc_data = {
+	.name = "i.MX8QXP",
+	.soc_revision = imx8qxp_soc_revision,
+};
+
+static const struct of_device_id imx_scu_soc_match[] = {
+	{ .compatible = "fsl,imx8qxp", .data = &imx8qxp_soc_data, },
+	{ }
+};
+
+#define imx_scu_revision(soc_rev) \
+	soc_rev ? \
+	kasprintf(GFP_KERNEL, "%d.%d", (soc_rev >> 4) & 0xf,  soc_rev & 0xf) : \
+	"unknown"
+
+static int imx_scu_soc_probe(struct platform_device *pdev)
+{
+	struct soc_device_attribute *soc_dev_attr;
+	const struct imx_scu_soc_data *data;
+	const struct of_device_id *id;
+	struct soc_device *soc_dev;
+	struct device_node *root;
+	u32 soc_rev = 0;
+	int ret;
+
+	/* wait i.MX SCU driver ready */
+	ret = imx_scu_get_handle(&soc_ipc_handle);
+	if (ret)
+		return ret;
+
+	soc_dev_attr = devm_kzalloc(&pdev->dev, sizeof(*soc_dev_attr),
+				    GFP_KERNEL);
+	if (!soc_dev_attr)
+		return -ENOMEM;
+
+	soc_dev_attr->family = "Freescale i.MX";
+
+	root = of_find_node_by_path("/");
+	ret = of_property_read_string(root, "model", &soc_dev_attr->machine);
+	if (ret) {
+		of_node_put(root);
+		return ret;
+	}
+
+	id = of_match_node(imx_scu_soc_match, root);
+	if (!id) {
+		of_node_put(root);
+		return -ENODEV;
+	}
+
+	of_node_put(root);
+
+	data = id->data;
+	if (data) {
+		soc_dev_attr->soc_id = data->name;
+		if (data->soc_revision)
+			soc_rev = data->soc_revision();
+	}
+
+	soc_dev_attr->revision = imx_scu_revision(soc_rev);
+	if (!soc_dev_attr->revision)
+		return -ENODEV;
+
+	soc_dev = soc_device_register(soc_dev_attr);
+	if (IS_ERR(soc_dev)) {
+		kfree(soc_dev_attr->revision);
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
+static struct platform_driver imx_scu_soc_driver = {
+	.driver = {
+		.name = IMX_SCU_SOC_DRIVER_NAME,
+	},
+	.probe = imx_scu_soc_probe,
+};
+
+static int __init imx_scu_soc_init(void)
+{
+	int ret;
+
+	ret = platform_driver_register(&imx_scu_soc_driver);
+	if (ret)
+		return ret;
+
+	imx_scu_soc_pdev =
+		platform_device_register_simple(IMX_SCU_SOC_DRIVER_NAME,
+						-1,
+						NULL,
+						0);
+	if (IS_ERR(imx_scu_soc_pdev)) {
+		ret = PTR_ERR(imx_scu_soc_pdev);
+		goto unreg_platform_driver;
+	}
+
+	return 0;
+
+unreg_platform_driver:
+	platform_driver_unregister(&imx_scu_soc_driver);
+	return ret;
+}
+
+static void __exit imx_scu_soc_exit(void)
+{
+	platform_device_unregister(imx_scu_soc_pdev);
+	platform_driver_unregister(&imx_scu_soc_driver);
+}
+
+module_init(imx_scu_soc_init);
+module_exit(imx_scu_soc_exit);
+
+MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
+MODULE_DESCRIPTION("i.MX system controller unit SoC driver");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
