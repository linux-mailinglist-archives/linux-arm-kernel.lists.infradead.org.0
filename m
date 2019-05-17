Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B6C21388
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 07:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yvb5q5fK0vzMyD1ba4eQWGWywTa5bfxakDY9vJ9fF9o=; b=SpjsRI8o7utCfM
	DLZguy9GTbPWGQs/ByYz/LeLcWK/2Af0F0skIYoLHSk+zc826lvSgV1mmuZ//SlJToxMdoC/09PmE
	c0LH8MSEGsAxp8uxrAlmX49+HLgpxWPhpcSPAPQS8rXjoIkIXDV3WT4IPjYLS1c7NnhsQYRa1gAv9
	n2YPsYtICwSFLz8oTIFpnqcMqHpYoQ2Ivq3SPM7FYiZ6aLlupV9o7P171DcZM4TXkj0bMK5mGxeMy
	47kYXHIVwSIOun1lbQ61dxq49xncyUfpkje6T9AcNOQlgIs+lPdOHr2xTFSWOKfeproXbfsvX58YW
	+oxRvYL9j3kS5WTeIfVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRVkE-0003hL-E8; Fri, 17 May 2019 05:49:26 +0000
Received: from mail-ve1eur03on0602.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::602]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRVk6-0003gs-9N
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 05:49:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T85cY8VaZs5ybl5pYMF4MWXllFJWHzTIU2aBA5WmFko=;
 b=PXHUKQ8NKVG34T5p79GxdlpA7ivMq3gFdg1WkfLsXPLyCGjo0lfXFZBls8EfAyhMxwjNmGraEy712U/EWfbBHThSeunnFIPhJSEXo3KBKqXjI/cEpMlL6I99CNNP8CxV0evfLSeDci+Cg431KpfpBMaJW7ju3KFBxXkvyGBxE7Q=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3801.eurprd04.prod.outlook.com (52.134.65.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Fri, 17 May 2019 05:49:11 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 05:49:11 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "agross@kernel.org"
 <agross@kernel.org>, "olof@lixom.net" <olof@lixom.net>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "marc.w.gonzalez@free.fr"
 <marc.w.gonzalez@free.fr>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, "robh@kernel.org" <robh@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Abel Vesa
 <abel.vesa@nxp.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V4 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V4 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVDHRAx0Mm9bAN6USp/nK7XaFMrA==
Date: Fri, 17 May 2019 05:49:11 +0000
Message-ID: <1558071840-841-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0042.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::30) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e43d6df7-cc18-4a3f-a141-08d6da8b6236
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3801; 
x-ms-traffictypediagnostic: DB3PR0402MB3801:
x-microsoft-antispam-prvs: <DB3PR0402MB3801B97C133E2EEFF21D859FF50B0@DB3PR0402MB3801.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(39860400002)(376002)(346002)(199004)(189003)(53936002)(7416002)(36756003)(68736007)(3846002)(6116002)(2501003)(4326008)(8936002)(71200400001)(71190400001)(256004)(7736002)(8676002)(81156014)(81166006)(316002)(66066001)(2906002)(50226002)(6512007)(305945005)(478600001)(52116002)(6436002)(6486002)(386003)(73956011)(25786009)(99286004)(66446008)(64756008)(6506007)(14454004)(66556008)(2616005)(66946007)(476003)(66476007)(486006)(102836004)(86362001)(110136005)(26005)(186003)(5660300002)(2201001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3801;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IQnZ7wBPtBuyWWvKMUik/qg5vIZ3W0eepiTuuGkWqJRmuqDeMBQM6ZmNcRRwEYsk88xYCq21ugtM65/VQj4rlTBGCYUAUjoerR2LvAQoMKWbxWy6thynWCAQBvjrJ+aWkbeXqs26LG1+SXhi8NWwUyd+Cq1Xou8sYHor7U8A1bSQJbw3quIPPRD12W0GDsomwKTlNCALm4h4zDr6r4ZjJjztC6oZBuLRscx8v4qzKwgWPHa4mCHFAiyXFo0Y690OaYiqdMC9gBUqaL1/qPTbqgBhZ42ugQsvf8OMk53HvIadUFVB2iMRoEuKP1G9vQvEk5n0WQAtttKkmpWnObMTPSLUOl7ByXmADtDFuVXXj6KpBIYkrc0mLcPZ/sF4Q+4J/UgOR3HEqEU5J+V5Xcf5aTH4kRSqL5kwwXdZbNo0JNg=
Content-ID: <8E6A216F5B704C49BE49F1C317F3F49D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e43d6df7-cc18-4a3f-a141-08d6da8b6236
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 05:49:11.2717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3801
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_224918_398423_2CB257FB 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:602 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
0x2

i.mx8qxp-mek# cat /sys/devices/soc0/machine
Freescale i.MX8QXP MEK

i.mx8qxp-mek# cat /sys/devices/soc0/revision
1.1

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V3:
	- remove of_device_id table to make it generic for all i.MX8 SoC with SCU inside, and check
	  "fsl,imx-scu" node to devide whether to register soc platform driver;
	- for soc_id, just return the value reading from SCU firmware instead of creating string, for
	  detail name of soc_id, the machine name already contains it;
	- fix some error handling of kasprintf.
---
 drivers/soc/imx/Kconfig       |   9 +++
 drivers/soc/imx/Makefile      |   1 +
 drivers/soc/imx/soc-imx-scu.c | 155 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 165 insertions(+)
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
index 0000000..60458ac
--- /dev/null
+++ b/drivers/soc/imx/soc-imx-scu.c
@@ -0,0 +1,155 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP.
+ */
+
+#include <dt-bindings/firmware/imx/rsrc.h>
+#include <linux/firmware/imx/sci.h>
+#include <linux/slab.h>
+#include <linux/sys_soc.h>
+#include <linux/platform_device.h>
+#include <linux/of.h>
+
+#define IMX_SCU_SOC_DRIVER_NAME		"imx-scu-soc"
+
+static struct imx_sc_ipc *soc_ipc_handle;
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
+static u32 imx_scu_soc_id(void)
+{
+	struct imx_sc_msg_misc_get_soc_id msg;
+	struct imx_sc_rpc_msg *hdr = &msg.hdr;
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
+		pr_err("%s: get soc info failed, ret %d\n", __func__, ret);
+		/* return 0 means getting revision failed */
+		return 0;
+	}
+
+	return msg.data.resp.id;
+}
+
+static int imx_scu_soc_probe(struct platform_device *pdev)
+{
+	struct soc_device_attribute *soc_dev_attr;
+	struct soc_device *soc_dev;
+	struct device_node *root;
+	u32 id, val;
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
+	ret = of_property_read_string(root,
+				      "model",
+				      &soc_dev_attr->machine);
+	if (ret)
+		return ret;
+
+	id = imx_scu_soc_id();
+
+	/* format soc_id value passed from SCU firmware */
+	val = id & 0x1f;
+	soc_dev_attr->soc_id = val ? kasprintf(GFP_KERNEL, "0x%x", val)
+			       : "unknown";
+	if (!soc_dev_attr->soc_id)
+		return -ENOMEM;
+
+	/* format revision value passed from SCU firmware */
+	val = (id >> 5) & 0xf;
+	val = (((val >> 2) + 1) << 4) | (val & 0x3);
+	soc_dev_attr->revision = val ? kasprintf(GFP_KERNEL,
+						 "%d.%d",
+						 (val >> 4) & 0xf,
+						 val & 0xf) : "unknown";
+	if (!soc_dev_attr->revision) {
+		ret = -ENOMEM;
+		goto free_soc_id;
+	}
+
+	soc_dev = soc_device_register(soc_dev_attr);
+	if (IS_ERR(soc_dev)) {
+		ret = PTR_ERR(soc_dev);
+		goto free_revision;
+	}
+
+	return 0;
+
+free_revision:
+	kfree(soc_dev_attr->revision);
+free_soc_id:
+	kfree(soc_dev_attr->soc_id);
+	return ret;
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
+	struct platform_device *imx_scu_soc_pdev;
+	struct device_node *np;
+	int ret;
+
+	np = of_find_compatible_node(NULL, NULL, "fsl,imx-scu");
+	if (!np)
+		return -ENODEV;
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
+device_initcall(imx_scu_soc_init);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
