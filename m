Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E1425BB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 03:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RSIv+59EfHKPzh4ecYvfioXMWIvQF35bj2d49rSoBY=; b=J8iSrqAW6CQU3g
	dgagG9bFWIVWCf6VSK/jOrXghgwbADgOMg5h4BhrkPM4mkvTGCZ3F2xrt5nL0sCOPf3VTKhFxZnVk
	5vBibMkm/chugp6kTwmqBG7vx1pIrP5IHI936Kr52lBZDL+vRr1CTY8LOlS4h60O47CXpitjzb6SP
	bQHi9eXIvFyT4CoXxajnyz920Hvyk8c2yjRdFpEZBPb9eZYprzSHVzc056CAaSeiKxEIlMTSKOqnG
	NuUIti9ki+5vWci83HobZMsIXvXEdNy6Ahfbx5rQYY4vekfSwPd7J5QuU+RkogvDvaHeCEazWzTot
	6OiW+/bw2xlLq2NVmzig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTGLi-0005aT-Cc; Wed, 22 May 2019 01:47:22 +0000
Received: from mail-eopbgr20074.outbound.protection.outlook.com ([40.107.2.74]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTGLO-0005Iy-2X
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 01:47:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qfw7tIirkwCnRpnfsoTwEOAubjFw3Zu2rG9tnNmnNkw=;
 b=TQvVRpXQrhK2U+TcHMeEMYD0upguxYJ+qjYteu9MevfvcHzK8eih3RPEYE1p4rfqUlwjUox1ooFeYV7iordTMFRcjJ6zY8E1mWoIfOka4bN7aZqHoCRvLgkJ8WYTe8vvcCoYndcIIvS9yNzhuxtJ3RZh+5St7sOnE3IjtfnxR80=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5954.eurprd04.prod.outlook.com (20.178.115.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Wed, 22 May 2019 01:46:58 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1900.020; Wed, 22 May 2019
 01:46:58 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Subject: [PATCH V3 RESEND 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Topic: [PATCH V3 RESEND 2/4] nvmem: imx: add i.MX8 nvmem driver
Thread-Index: AQHVEEA+3aCz3fYjE0ifbeExyefVtw==
Date: Wed, 22 May 2019 01:46:58 +0000
Message-ID: <20190522020040.30283-2-peng.fan@nxp.com>
References: <20190522020040.30283-1-peng.fan@nxp.com>
In-Reply-To: <20190522020040.30283-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0PR04CA0016.apcprd04.prod.outlook.com
 (2603:1096:203:36::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aeca3e36-bfbe-43e2-7ab8-08d6de5760b4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5954; 
x-ms-traffictypediagnostic: AM0PR04MB5954:
x-microsoft-antispam-prvs: <AM0PR04MB59540CDA7E19A7286A1434B888000@AM0PR04MB5954.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(44832011)(486006)(2501003)(186003)(305945005)(11346002)(446003)(476003)(2616005)(2906002)(14444005)(76176011)(71190400001)(71200400001)(14454004)(52116002)(99286004)(256004)(102836004)(26005)(6116002)(3846002)(6506007)(68736007)(386003)(498600001)(5660300002)(54906003)(110136005)(6512007)(6486002)(50226002)(4326008)(66066001)(25786009)(6436002)(53936002)(2201001)(8676002)(8936002)(81166006)(81156014)(73956011)(66946007)(86362001)(66476007)(66556008)(64756008)(66446008)(1076003)(7416002)(36756003)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5954;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Vy4Ft/mKMJbcEMCqmFdRGzP2yWcC/ImwCqhFuI7FNpJXj9GyngOUJXYVsGCRcTlQnGT6CxzZIW9RiXz24hKb4WQaR+PvLe9QUyOs8gSHgYM+8DhcB85i6oxddutS3jftr09tqMeOjf8EtwbEEniDMZRjyErO2XvpSXKx9SN1sykh/Cs26ZHRQV/b+FMj7u81PmppHuod66u3HerZexqDZOs0PElyPJ0BUwG+JGjtDf/EnpPm1XgzXbmBKOW6JpbwJjckBnvVlKVEyt/PYr4Ly97T2V9XkMVlfqNwItAGqN/hMuuK9t+20JCBNCK5bmt2BYXMT5k7qWlzwTiX29/pSDSDhyLqggxTqHmNk/brD2PTNT00ENiGWSre4Q0E6J7XwJpl1WPE+rFKGAK238JvUfrjDNf7/E9E46jt/fO8RNg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aeca3e36-bfbe-43e2-7ab8-08d6de5760b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 01:46:58.7844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5954
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_184702_117527_6C20B845 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds i.MX8 nvmem ocotp driver to access fuse via
RPC to i.MX8 system controller.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V3:
 Use imx_sc_msg_misc_fuse_read for req/resp
 Drop uneccessary check
 Drop the unnecessary type conversion
 Minor fixes according to v2 comments

V2:
 Add "scu" or "SCU", Add imx_sc_misc_otp_fuse_read, minor fixes

 drivers/nvmem/Kconfig         |   7 ++
 drivers/nvmem/Makefile        |   2 +
 drivers/nvmem/imx-ocotp-scu.c | 161 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 170 insertions(+)
 create mode 100644 drivers/nvmem/imx-ocotp-scu.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 530d570724c9..79afe44195a1 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -36,6 +36,13 @@ config NVMEM_IMX_OCOTP
 	  This driver can also be built as a module. If so, the module
 	  will be called nvmem-imx-ocotp.
 
+config NVMEM_IMX_OCOTP_SCU
+	tristate "i.MX8 SCU On-Chip OTP Controller support"
+	depends on IMX_SCU
+	help
+	  This is a driver for the SCU On-Chip OTP Controller (OCOTP)
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
index 000000000000..d9dc482ecb2f
--- /dev/null
+++ b/drivers/nvmem/imx-ocotp-scu.c
@@ -0,0 +1,161 @@
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
+struct imx_sc_msg_misc_fuse_read {
+	struct imx_sc_rpc_msg hdr;
+	u32 word;
+} __packed;
+
+static struct ocotp_devtype_data imx8qxp_data = {
+	.devtype = IMX8QXP,
+	.nregs = 800,
+};
+
+static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
+				     u32 *val)
+{
+	struct imx_sc_msg_misc_fuse_read msg;
+	struct imx_sc_rpc_msg *hdr = &msg.hdr;
+	int ret;
+
+	hdr->ver = IMX_SC_RPC_VERSION;
+	hdr->svc = IMX_SC_RPC_SVC_MISC;
+	hdr->func = IMX_SC_MISC_FUNC_OTP_FUSE_READ;
+	hdr->size = 2;
+
+	msg.word = word;
+
+	ret = imx_scu_call_rpc(ipc, &msg, true);
+	if (ret)
+		return ret;
+
+	*val = msg.word;
+
+	return 0;
+}
+
+static int imx_scu_ocotp_read(void *context, unsigned int offset,
+			      void *val, size_t bytes)
+{
+	struct ocotp_priv *priv = context;
+	u32 count, index, num_bytes;
+	u32 *buf;
+	void *p;
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
+				*buf++ = 0;
+				continue;
+			}
+		}
+
+		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
+		if (ret) {
+			kfree(p);
+			return ret;
+		}
+		buf++;
+	}
+
+	memcpy(val, (u8 *)p + offset % 4, bytes);
+
+	kfree(p);
+
+	return 0;
+}
+
+static struct nvmem_config imx_scu_ocotp_nvmem_config = {
+	.name = "imx-scu-ocotp",
+	.read_only = true,
+	.word_size = 4,
+	.stride = 1,
+	.owner = THIS_MODULE,
+	.reg_read = imx_scu_ocotp_read,
+};
+
+static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
+	{ .compatible = "fsl,imx8qxp-scu-ocotp", (void *)&imx8qxp_data },
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
+MODULE_DESCRIPTION("i.MX8 SCU OCOTP fuse box driver");
+MODULE_LICENSE("GPL v2");
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
