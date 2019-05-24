Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BBC28EEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 03:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mo/bPcRplEvzz4tu+kK2ncYzTDpK4TZqJ2U6bXjYEek=; b=r6huDPzC0m6A7K
	CwgxzxB3Bj3IlAdj9b7XdqVpqAHhc7Mdpehs/xbu0OGA+xx0pH+0QhL0+1pNPrCJxrUow7QM2Gbjk
	s58eGuykNIv6CWg2Y3MUwQ9qyKHktz9SOgE82Ycy+3Hw12+JqRZMHyxij/V5Hv31OTD8jHH6wZ1VK
	VI9VpLfw1wierZyVywHokZJnGYQykMx8fl7/la3Sm4rr4AtinlbiRrOViAYeHDYtO5fshjMvAt/9L
	od8Wf7v53YVfmyfGX/fU4sG9s1ZjtX3r5ThL3JRNT0jdvPosfxbRzFfNI3CJwSZDoU+AwHYwGiRrz
	jsiu3/xXf6wwE07EtK0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTzOI-000169-15; Fri, 24 May 2019 01:53:02 +0000
Received: from mail-eopbgr40085.outbound.protection.outlook.com ([40.107.4.85]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTzO1-0000z0-Dj
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 01:52:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PYXI+LroAMpJfuX6UUegUkMs+OCOqpi2gLUFXkBr0OM=;
 b=bU6AHG9cUpGcgqY0BVAwrtiDLc/GGlqo7x3Fpkq3o2f4p7uuL1FKbnCNTTHobFMpgYUBKddlWDeUfqlzjeXtCLJTVeMFXJ8MJ8DHv1EtJXp/L92mK5ZhnFj21ZrTu4yDufn+WCOMXIZsiV2vrtOUq0ROr/eruwOOFjivRBV0r2Y=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3868.eurprd04.prod.outlook.com (52.134.71.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.20; Fri, 24 May 2019 01:52:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1922.017; Fri, 24 May 2019
 01:52:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>, "olof@lixom.net"
 <olof@lixom.net>, "agross@kernel.org" <agross@kernel.org>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>, Abel Vesa
 <abel.vesa@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>, "robh@kernel.org"
 <robh@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V7 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V7 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVEdNcPmMYdshBQkmKzUqGv/ssOQ==
Date: Fri, 24 May 2019 01:52:36 +0000
Message-ID: <1558662440-8820-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0014.apcprd04.prod.outlook.com
 (2603:1096:202:2::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcbdbe5a-a500-4545-8349-08d6dfea7e74
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3868; 
x-ms-traffictypediagnostic: DB3PR0402MB3868:
x-microsoft-antispam-prvs: <DB3PR0402MB386823658EB53392B395192BF5020@DB3PR0402MB3868.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(39860400002)(376002)(396003)(199004)(189003)(71200400001)(14444005)(256004)(102836004)(71190400001)(110136005)(99286004)(6506007)(52116002)(386003)(25786009)(4326008)(53936002)(316002)(476003)(2616005)(486006)(66066001)(186003)(36756003)(26005)(2501003)(81156014)(81166006)(73956011)(7416002)(8936002)(8676002)(50226002)(305945005)(64756008)(6486002)(86362001)(66446008)(66476007)(66946007)(14454004)(66556008)(7736002)(2906002)(6116002)(6512007)(478600001)(5660300002)(68736007)(3846002)(2201001)(6436002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3868;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MeajiVC++7ncE95NWzB/KMGjjyBF2GTeSIDGi8Htpsa1jC80J/cgjOpoS3uDlZMFJ4LXthnz47/Tmgwmf+QrUGPIiQ0STD4FiRo3q6hvIBpCa73llLgU6HTXXVBDDWdTRr+XWrD8osSzI2jzGbCQ/a2JuDpfOGPjNJgthVGADEX+RUs0FQqTzqFPWUfC5MQh6pjnX6AASMHyZZIvVy8Mp1cn124Vh3x0TwX0umy6Qs5FGd3hFlsVORPBdN7Pmo6vh29Ch0hqaXmk11///qSUGxb6wNA0j45Sg+qfygmZr5LRm9BfXbtTYvu9P7EJOovo23xW46tXpSD8pIDugEOaQMS55LMGN/+ANl0IUtWeCx9us8qVb9cbio1xuDRLESByLmq/8iSZOqtZkT2v4C4lDTrggX7AyX4FkVBkzC40KpA=
Content-ID: <57023B003E7F5F48BD029E440098C566@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcbdbe5a-a500-4545-8349-08d6dfea7e74
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 01:52:36.1777 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3868
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_185245_576557_02E71FEA 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Changes since V6:
	- remove the "unknown" soc_id and revision support, as they are NOT useful and could introduce
	  kernel opps in the failure path, as the "unknown" can NOT be freed;
	- minor improvement for platform device name, IPC structure definition.
---
 drivers/soc/imx/Kconfig       |   9 +++
 drivers/soc/imx/Makefile      |   1 +
 drivers/soc/imx/soc-imx-scu.c | 144 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 154 insertions(+)
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
index 0000000..676f612
--- /dev/null
+++ b/drivers/soc/imx/soc-imx-scu.c
@@ -0,0 +1,144 @@
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
+		} resp;
+	} data;
+} __packed;
+
+static int imx_scu_soc_id(void)
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
+		return ret;
+	}
+
+	return msg.data.resp.id;
+}
+
+static int imx_scu_soc_probe(struct platform_device *pdev)
+{
+	struct soc_device_attribute *soc_dev_attr;
+	struct soc_device *soc_dev;
+	int id, ret;
+	u32 val;
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
+	if (id < 0)
+		return -EINVAL;
+
+	/* format soc_id value passed from SCU firmware */
+	val = id & 0x1f;
+	soc_dev_attr->soc_id = kasprintf(GFP_KERNEL, "0x%x", val);
+	if (!soc_dev_attr->soc_id)
+		return -ENOMEM;
+
+	/* format revision value passed from SCU firmware */
+	val = (id >> 5) & 0xf;
+	val = (((val >> 2) + 1) << 4) | (val & 0x3);
+	soc_dev_attr->revision = kasprintf(GFP_KERNEL,
+					   "%d.%d",
+					   (val >> 4) & 0xf,
+					   val & 0xf);
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
+	struct platform_device *pdev;
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
+	pdev = platform_device_register_simple(IMX_SCU_SOC_DRIVER_NAME,
+					       -1, NULL, 0);
+	if (IS_ERR(pdev))
+		platform_driver_unregister(&imx_scu_soc_driver);
+
+	return PTR_ERR_OR_ZERO(pdev);
+}
+device_initcall(imx_scu_soc_init);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
