Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E191713FBC
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 15:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1C6pgbQ6MCiVCnKMM1vHCacI29EGgl60thDWnX0wT8=; b=GfMbFxLX2q0p59
	mvwbaihCfOTpok4eWtODwt8jua5TGJ4Vcmhemn+UjwMiBPpPT+Wrt2H+kzSWPXUz/SpdQjup1KDl5
	Zrnsanv2svxRiK/2sbcJLaMM8dzG9PrgRygI1MtqLWYfOBshYpjeDGzbS0tcd6Yl5dXlyLN6fGDfi
	G4zgAubv86sVnv5Ov9kEtnCB2JYY5xSUxE0xq/UJhZtyE9uPz8Guc3P42ehzNvkJbrPjgZVnxQEZ1
	Jy7EXOMKohfuTJxleUsYPze37cRpsW4FtuvFzA6aGtP7F0qcs62P4wLogGusrroejjwq6mml6rtkp
	Qbre6VvVJCmBcosPa3ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNHC5-0007dN-GW; Sun, 05 May 2019 13:28:41 +0000
Received: from mail-eopbgr60048.outbound.protection.outlook.com ([40.107.6.48]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNHBn-0007V3-81
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 13:28:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q7IpHhxDHFhbinA9GdFxWj12hZtsdgry8kW3W6c6xck=;
 b=IXiYZQT/KubqARQb7bftcOI1SXrVY3CP7AUkbzUz61wTmXEqZUKI2xi3ocEzLe/Gw1lR/JuKnPGdlPrdqN4H2GPXYNkEiFK97TYB8YOnVMWFIupZK7S6Sy8K2gEHNKaf53NIfhDGIPnB8GwKjK787CQD51JsdyU1JqKembzCy8s=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4259.eurprd04.prod.outlook.com (52.134.126.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Sun, 5 May 2019 13:28:17 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 13:28:17 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>
Subject: [PATCH 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Topic: [PATCH 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Index: AQHVA0ZmyuV26b+HdU+wzmbIrs3FtA==
Date: Sun, 5 May 2019 13:28:17 +0000
Message-ID: <20190505134130.28071-2-peng.fan@nxp.com>
References: <20190505134130.28071-1-peng.fan@nxp.com>
In-Reply-To: <20190505134130.28071-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0PR03CA0099.apcprd03.prod.outlook.com
 (2603:1096:203:b0::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d64af35-bd01-42d5-5388-08d6d15d8862
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4259; 
x-ms-traffictypediagnostic: AM0PR04MB4259:
x-microsoft-antispam-prvs: <AM0PR04MB4259E46B5B8BB0920B15196588370@AM0PR04MB4259.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(396003)(136003)(366004)(346002)(189003)(199004)(486006)(54906003)(110136005)(68736007)(446003)(2906002)(11346002)(476003)(2616005)(8936002)(8676002)(66066001)(81166006)(7416002)(7736002)(305945005)(44832011)(53936002)(36756003)(50226002)(4326008)(25786009)(86362001)(2201001)(1076003)(5660300002)(81156014)(52116002)(99286004)(76176011)(102836004)(316002)(6506007)(3846002)(6116002)(386003)(478600001)(256004)(14444005)(6512007)(71200400001)(14454004)(6486002)(6436002)(2501003)(66946007)(73956011)(186003)(71190400001)(66446008)(26005)(66476007)(66556008)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4259;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vdXR6lOafMzZV0TvwuVHXOmEpInsRgX6wPGqgAnTOa21jAkVdZ9OcwLF9kERf+Sis7wVmzfIwlXikY+ZdV7fQUA6Lm1Goqj0eUcHfrReDSOK3yLb7AvJIT0zd5Ip7xFywMewm0ofGSPgZ1rZjP/3LZIf+v1d2I0qLMhAGqqh2efIuLochqFghpRdaocyT4xoS4n2WstT3PIJQXBHxDkSWeZ5560ZS/ndKw5uAsyjrj71sGsjZ7FX8hZiSfuqW7jMgxFsd6Tyr50Go9+osBudbI18Cqt8PN2nmlLUz5c+xhtRZyBbJC1gRU5b1cFhnhRf6Q+SyLZSEQdR5a6gD7uhCxftrvZFAEd2KeJkQU3U7OHhvrVLhK7k3kpss6C7g8DuZxszWUZy3rYuy76UDZr8bYDRmoLIYSfu+yQm6bicn50=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d64af35-bd01-42d5-5388-08d6d15d8862
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 13:28:17.6748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_062823_287377_46F23940 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.48 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds i.MX8 nvmem ocotp driver to access fuse via
RPC to i.MX8 system controller.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/nvmem/Kconfig         |   7 +++
 drivers/nvmem/Makefile        |   2 +
 drivers/nvmem/imx-ocotp-scu.c | 135 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 144 insertions(+)
 create mode 100644 drivers/nvmem/imx-ocotp-scu.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 530d570724c9..0e705c04bd8c 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -36,6 +36,13 @@ config NVMEM_IMX_OCOTP
 	  This driver can also be built as a module. If so, the module
 	  will be called nvmem-imx-ocotp.
 
+config NVMEM_IMX_OCOTP_SCU
+	tristate "i.MX8 On-Chip OTP Controller support"
+	depends on IMX_SCU
+	help
+	  This is a driver for the On-Chip OTP Controller (OCOTP)
+	  available on i.MX8 SoCs.
+
 config NVMEM_LPC18XX_EEPROM
 	tristate "NXP LPC18XX EEPROM Memory Support"
 	depends on ARCH_LPC18XX || COMPILE_TEST
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 2ece8ffffdda..30d653d34e57 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -13,6 +13,8 @@ obj-$(CONFIG_NVMEM_IMX_IIM)	+= nvmem-imx-iim.o
 nvmem-imx-iim-y			:= imx-iim.o
 obj-$(CONFIG_NVMEM_IMX_OCOTP)	+= nvmem-imx-ocotp.o
 nvmem-imx-ocotp-y		:= imx-ocotp.o
+obj-$(CONFIG_NVMEM_IMX_OCOTP_SCU)	+= nvmem-imx-ocotp-scu.o
+nvmem-imx-ocotp-scu-y		:= imx-ocotp-scu.o
 obj-$(CONFIG_NVMEM_LPC18XX_EEPROM)	+= nvmem_lpc18xx_eeprom.o
 nvmem_lpc18xx_eeprom-y	:= lpc18xx_eeprom.o
 obj-$(CONFIG_NVMEM_LPC18XX_OTP)	+= nvmem_lpc18xx_otp.o
diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
new file mode 100644
index 000000000000..07e1eba385ac
--- /dev/null
+++ b/drivers/nvmem/imx-ocotp-scu.c
@@ -0,0 +1,135 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * i.MX8 OCOTP fusebox driver
+ *
+ * Copyright 2019 NXP
+ *
+ * Peng Fan <peng.fan@nxp.com>
+ */
+
+#include <linux/firmware/imx/sci.h>
+#include <linux/module.h>
+#include <linux/nvmem-provider.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+enum ocotp_devtype {
+	IMX8QXP,
+};
+
+struct ocotp_devtype_data {
+	int devtype;
+	int nregs;
+};
+
+struct ocotp_priv {
+	struct device *dev;
+	const struct ocotp_devtype_data *data;
+	struct imx_sc_ipc *nvmem_ipc;
+};
+
+static struct ocotp_devtype_data imx8qxp_data = {
+	.devtype = IMX8QXP,
+	.nregs = 800,
+};
+
+static int imx_scu_ocotp_read(void *context, unsigned int offset,
+			      void *val, size_t bytes)
+{
+	struct ocotp_priv *priv = context;
+	u32 count, index, num_bytes;
+	u8 *buf, *p;
+	int i, ret;
+
+	index = offset >> 2;
+	num_bytes = round_up((offset % 4) + bytes, 4);
+	count = num_bytes >> 2;
+
+	if (count > (priv->data->nregs - index))
+		count = priv->data->nregs - index;
+
+	p = kzalloc(num_bytes, GFP_KERNEL);
+	if (!p)
+		return -ENOMEM;
+
+	buf = p;
+
+	for (i = index; i < (index + count); i++) {
+		if (priv->data->devtype == IMX8QXP) {
+			if ((i > 271) && (i < 544)) {
+				*(u32 *)buf = 0;
+				buf += 4;
+				continue;
+			}
+		}
+
+		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i,
+						(u32 *)buf);
+		if (ret) {
+			kfree(p);
+			return ret;
+		}
+		buf += 4;
+	}
+
+	index = offset % 4;
+	memcpy(val, &p[index], bytes);
+
+	kfree(p);
+
+	return 0;
+}
+
+static struct nvmem_config imx_scu_ocotp_nvmem_config = {
+	.name = "imx-ocotp",
+	.read_only = true,
+	.word_size = 4,
+	.stride = 1,
+	.owner = THIS_MODULE,
+	.reg_read = imx_scu_ocotp_read,
+};
+
+static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
+	{ .compatible = "fsl,imx8qxp-ocotp", (void *)&imx8qxp_data },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, imx_scu_ocotp_dt_ids);
+
+static int imx_scu_ocotp_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct ocotp_priv *priv;
+	struct nvmem_device *nvmem;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	ret = imx_scu_get_handle(&priv->nvmem_ipc);
+	if (ret)
+		return ret;
+
+	priv->data = of_device_get_match_data(dev);
+	priv->dev = dev;
+	imx_scu_ocotp_nvmem_config.size = 4 * priv->data->nregs;
+	imx_scu_ocotp_nvmem_config.dev = dev;
+	imx_scu_ocotp_nvmem_config.priv = priv;
+	nvmem = devm_nvmem_register(dev, &imx_scu_ocotp_nvmem_config);
+
+	return PTR_ERR_OR_ZERO(nvmem);
+}
+
+static struct platform_driver imx_scu_ocotp_driver = {
+	.probe	= imx_scu_ocotp_probe,
+	.driver = {
+		.name	= "imx_scu_ocotp",
+		.of_match_table = imx_scu_ocotp_dt_ids,
+	},
+};
+module_platform_driver(imx_scu_ocotp_driver);
+
+MODULE_AUTHOR("Peng Fan <peng.fan@nxp.com>");
+MODULE_DESCRIPTION("i.MX8QM OCOTP fuse box driver");
+MODULE_LICENSE("GPL v2");
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
