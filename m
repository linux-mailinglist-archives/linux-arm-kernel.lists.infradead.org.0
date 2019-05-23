Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5873427547
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 06:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iUyaVFOnz4sLhaj/hwnj/4238mu78lzEGj6soP1+ViU=; b=qotY463RL9jLtJ
	0fCp4NxvaBgNT2zoBsHAnaXBWAYY26/4fUpoUBZvXCgOEZSQ6nY3uYTJ1iu0LuV5mOrzuzSwKvN5b
	W81w3ujC3f4cDxQ3FMqVO6FJh7pouHK2k4p4ebeRkPQSwcOIA2GFxl8lHvwSHecukw3R4xUsHsejq
	ochYMY1ZyMHfWOwlcwCFdBRg3mce0ZvUatyoLu8TH0Dm996eSOEFfQ3VlwQtsElWwOQh+y1mEwkfz
	itp60PxGiAjIo8zhAZa1GtH3MO7kFGGzDpt1WvQzPGorEji1f9zAkdExVKyQ/VleH5/GmkxogCmmX
	eS5pTcBIn57XCSf3g5mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTfjs-0006Mp-W3; Thu, 23 May 2019 04:54:01 +0000
Received: from mail-eopbgr40045.outbound.protection.outlook.com ([40.107.4.45]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTfjk-0006MR-N6
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 04:53:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N4WU3ZxLdXwBfrglLvc+CCt/oJA3mHl9tSaRvdzqo3g=;
 b=YnWewp50kN9CyAWncyadFMnk7tnBCLLzQE2jD4VBz1gWmjW46bdok5kO0obqGZbVL6YBLE+RoU6iNDOg42U6Zb7VAz+rr6zKIjRMNteJK8RqGXuhPTQq8oeI0g79LQoEaTjfxvkTcV8bBLAyl6VoIgqlrycEzvkIWUlJJzlfBEA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3881.eurprd04.prod.outlook.com (52.134.73.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Thu, 23 May 2019 04:53:46 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1922.017; Thu, 23 May 2019
 04:53:46 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "olof@lixom.net"
 <olof@lixom.net>, "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh@kernel.org" <robh@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V6 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V6 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVESOBOi968fgyqkGLTWjGKVXT0g==
Date: Thu, 23 May 2019 04:53:46 +0000
Message-ID: <1558586911-29309-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0034.apcprd03.prod.outlook.com
 (2603:1096:203:2f::22) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 242dffd5-3965-4ed0-55c0-08d6df3aa352
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3881; 
x-ms-traffictypediagnostic: DB3PR0402MB3881:
x-microsoft-antispam-prvs: <DB3PR0402MB38812867294BF13E6EE6CCB8F5010@DB3PR0402MB3881.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(136003)(366004)(376002)(396003)(199004)(189003)(7736002)(66476007)(7416002)(6116002)(66556008)(64756008)(3846002)(66446008)(73956011)(66946007)(81156014)(8936002)(81166006)(50226002)(316002)(8676002)(186003)(4326008)(2906002)(26005)(476003)(2616005)(36756003)(6436002)(68736007)(99286004)(6486002)(110136005)(71200400001)(305945005)(71190400001)(14454004)(478600001)(486006)(256004)(53936002)(2201001)(6512007)(86362001)(25786009)(2501003)(102836004)(386003)(6506007)(66066001)(5660300002)(52116002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3881;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 44Zl8EPNxLwDkX/eV+QVh2HfOzSqaDPdmYE4fnlRj0VclzSZNPqBNKLDKyAclvKfIpo1hDjNAOtGWeBRQiJAVNSL7FZfVS16pf+BJhNnmMK4S3KyhmcJlKeHVUgD1Hp0Id7zqZwdph/gpZY/DPz1kU3mkUVel5PBG3Jvm/GvsxAcpzbKNuvSwmcs9n18AXx8ESdR3aY1XpYx0TP08JZ5egPHn7s0srn3SmvAYnfGsuxS2kq0XNBrQsHDhr3HPYNvhKCwsqUkiFkofVU2hYW5vnbVYLOnZmrkiVQJ3JDVD+13IiIop11u4vgeLFkeSXpGy0jQte/3trQxZP9xGNUavzELa1yV8vvCAMnbZrJi1aQ2ZhG84aaM/kT5/Xx433eV89qPnpO9L17NCTPRqWe/UM6NliQJHPJPW/BFT+VyLS0=
Content-ID: <1FF5B11B81644A49835431FB9A8CB99D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 242dffd5-3965-4ed0-55c0-08d6df3aa352
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 04:53:46.8238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3881
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_215352_879865_EF731D0D 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
Changes since V5:
	- remove unnecessary comment;
	- improve the IPC message structure definition;
	- improve the error check and return value in imx_scu_soc_init() to save some code.
---
 drivers/soc/imx/Kconfig       |   9 +++
 drivers/soc/imx/Makefile      |   1 +
 drivers/soc/imx/soc-imx-scu.c | 147 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 157 insertions(+)
 create mode 100644 drivers/soc/imx/soc-imx-scu.c

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index ade1b46..8aaebf1 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -8,4 +8,13 @@ config IMX_GPCV2_PM_DOMAINS
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
index caa8653..cf9ca42 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
 obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
+obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
new file mode 100644
index 0000000..258c987
--- /dev/null
+++ b/drivers/soc/imx/soc-imx-scu.c
@@ -0,0 +1,147 @@
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
+		} __packed req;
+		struct {
+			u32 id;
+		} __packed resp;
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
+	msg.data.req.control = IMX_SC_C_ID;
+	msg.data.req.resource = IMX_SC_R_SYSTEM;
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
+	u32 id, val;
+	int ret;
+
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
+	ret = of_property_read_string(of_root,
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
+	of_node_put(np);
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
+	if (IS_ERR(imx_scu_soc_pdev))
+		platform_driver_unregister(&imx_scu_soc_driver);
+
+	return PTR_ERR_OR_ZERO(imx_scu_soc_pdev);
+}
+device_initcall(imx_scu_soc_init);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
