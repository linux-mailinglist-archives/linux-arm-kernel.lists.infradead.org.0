Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 910CD1C400
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 09:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbP8fyzHgZ1FGWmms7qsQkdV/eU4umtvX5W3utxI+Z4=; b=a2WiIYtW1htyO+
	7ISiw2QJ/iqCmbHpxXzAyYpVg3AY02dhOol7pVr/blOnrb61WM/guWTtTMXSLFBv2SW77H/H72khS
	j2aAfJU8kkv0CSSwM0gYdG7czRp/i99xbxEVF8oIwg0rov3lPk2CenOBsgsMKRPx14PSPmUQHHCQO
	9CofKUiRZYzHEXB1M7vn+iVwkKkp2o7MXjal8hgTkDZ8+rpVD2/h5LHfladxNrzGWi3WrZVyLhcUA
	2C1SyKFpoj10AUET3XjKG0SZyyATO2/hTuo7ZW6aalSnKnTlS1RBxfR6Zyzxtcllxbfue3xOa7L5U
	/rrQCmmXqp6w9DmX87Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQS1q-0000U8-Ku; Tue, 14 May 2019 07:39:14 +0000
Received: from mail-eopbgr40048.outbound.protection.outlook.com ([40.107.4.48]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQS15-0007vQ-R6
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 07:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OwXdeX0cwHcmQH9V9/CyGq6TCZI8PR9hHrKL8pTUMBY=;
 b=Mwp+fepAKJcJ5UW+qYRjWOOtqc0+igmPImwlf1lMt3z7NjPYrfRK4MLeY0dGrPFNmBQxCxh/8+Tbig1kNqTHvcf/cQ5QazAEdZ9UvQ/VTKLjVJnJQg99XiVdXyOeXxLbydSkuyxKwiLy4qBTe/Boq3rK0o2uFBBO3LYpm6MoEeE=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB5392.eurprd04.prod.outlook.com (20.178.120.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 14 May 2019 07:38:17 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61%5]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 07:38:17 +0000
From: Peter Chen <peter.chen@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "balbi@kernel.org"
 <balbi@kernel.org>
Subject: [PATCH v2 5/8] usb: chipidea: imx: add imx7ulp support
Thread-Topic: [PATCH v2 5/8] usb: chipidea: imx: add imx7ulp support
Thread-Index: AQHVCif+XZX4hwLQGESDEzGVDSHbZg==
Date: Tue, 14 May 2019 07:38:17 +0000
Message-ID: <20190514073529.29505-6-peter.chen@nxp.com>
References: <20190514073529.29505-1-peter.chen@nxp.com>
In-Reply-To: <20190514073529.29505-1-peter.chen@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.14.1
x-clientproxiedby: HK0PR03CA0086.apcprd03.prod.outlook.com
 (2603:1096:203:72::26) To VI1PR04MB5327.eurprd04.prod.outlook.com
 (2603:10a6:803:60::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1abcbcb-0f84-4c4a-9a72-08d6d83f2132
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5392; 
x-ms-traffictypediagnostic: VI1PR04MB5392:
x-microsoft-antispam-prvs: <VI1PR04MB53929098B83A32FB18B198E98B080@VI1PR04MB5392.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:299;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(376002)(346002)(39860400002)(189003)(199004)(386003)(6506007)(102836004)(7736002)(305945005)(6436002)(66946007)(26005)(316002)(6512007)(73956011)(6486002)(66446008)(64756008)(66556008)(66476007)(76176011)(11346002)(446003)(2906002)(476003)(2616005)(25786009)(4326008)(3846002)(53936002)(186003)(486006)(44832011)(86362001)(6116002)(71190400001)(71200400001)(50226002)(256004)(14444005)(66066001)(2501003)(1076003)(5660300002)(68736007)(8676002)(52116002)(99286004)(14454004)(36756003)(478600001)(8936002)(81156014)(81166006)(110136005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5392;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5Zu3SINiaPri0+FdC5/XugS/sH49Yosy/Xyqgb7kfU1tvaUGPoxI1/EbFI1feUwm0pwrYhS9rres/nIoYDaPup9i3oGJfWgGNnYrxeWquF64z9ElUt5eKJvTR3Yts8uZhyzjtyOpTDH7v8wn/rV3cG5srK6iud3GDPbjmD7GF6au5Ga0KzXmAQrM9fefnM16bEgdYWeVYj50xqUUUDk/oWOpHoIsVDtWHFwQJ2O3GS1NvdA0KnJShXNgZ7z93Lo1mOzEYwRS57skxCGCPTCNy1ALTS3II75yt7IZWfslh28wWvIgW8rDQz2rN+3SZSOm82VYdEfaBpCG03i92OAcDwJL6j3PwuX4wcNhSOPKVylihiwK+uamiBKVO9lfVtLfxu6tageFbAXYLKESty1gcOjVGQA39Zm9PHx8tDeFbQk=
Content-ID: <9D9DCC204D4BCD45AF0A69CDDE505989@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1abcbcb-0f84-4c4a-9a72-08d6d83f2132
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 07:38:17.4339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5392
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_003828_463218_D58B6E27 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peter Chen <peter.chen@nxp.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add imx7ulp support

Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 drivers/usb/chipidea/ci_hdrc_imx.c | 28 +++++++++++++++++++++++++++-
 drivers/usb/chipidea/usbmisc_imx.c |  4 ++++
 include/linux/usb/chipidea.h       |  1 +
 3 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/chipidea/ci_hdrc_imx.c b/drivers/usb/chipidea/ci_hdrc_imx.c
index ceec8d5985d4..a76708501236 100644
--- a/drivers/usb/chipidea/ci_hdrc_imx.c
+++ b/drivers/usb/chipidea/ci_hdrc_imx.c
@@ -13,6 +13,7 @@
 #include <linux/usb/of.h>
 #include <linux/clk.h>
 #include <linux/pinctrl/consumer.h>
+#include <linux/pm_qos.h>
 
 #include "ci.h"
 #include "ci_hdrc_imx.h"
@@ -63,6 +64,11 @@ static const struct ci_hdrc_imx_platform_flag imx7d_usb_data = {
 	.flags = CI_HDRC_SUPPORTS_RUNTIME_PM,
 };
 
+static const struct ci_hdrc_imx_platform_flag imx7ulp_usb_data = {
+	.flags = CI_HDRC_SUPPORTS_RUNTIME_PM |
+		CI_HDRC_PMQOS,
+};
+
 static const struct of_device_id ci_hdrc_imx_dt_ids[] = {
 	{ .compatible = "fsl,imx23-usb", .data = &imx23_usb_data},
 	{ .compatible = "fsl,imx28-usb", .data = &imx28_usb_data},
@@ -72,6 +78,7 @@ static const struct of_device_id ci_hdrc_imx_dt_ids[] = {
 	{ .compatible = "fsl,imx6sx-usb", .data = &imx6sx_usb_data},
 	{ .compatible = "fsl,imx6ul-usb", .data = &imx6ul_usb_data},
 	{ .compatible = "fsl,imx7d-usb", .data = &imx7d_usb_data},
+	{ .compatible = "fsl,imx7ulp-usb", .data = &imx7ulp_usb_data},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, ci_hdrc_imx_dt_ids);
@@ -93,6 +100,8 @@ struct ci_hdrc_imx_data {
 	struct clk *clk_ahb;
 	struct clk *clk_per;
 	/* --------------------------------- */
+	struct pm_qos_request pm_qos_req;
+	const struct ci_hdrc_imx_platform_flag *plat_data;
 };
 
 /* Common functions shared by usbmisc drivers */
@@ -309,6 +318,8 @@ static int ci_hdrc_imx_probe(struct platform_device *pdev)
 	if (!data)
 		return -ENOMEM;
 
+	data->plat_data = imx_platform_flag;
+	pdata.flags |= imx_platform_flag->flags;
 	platform_set_drvdata(pdev, data);
 	data->usbmisc_data = usbmisc_get_init_data(dev);
 	if (IS_ERR(data->usbmisc_data))
@@ -369,6 +380,11 @@ static int ci_hdrc_imx_probe(struct platform_device *pdev)
 			}
 		}
 	}
+
+	if (pdata.flags & CI_HDRC_PMQOS)
+		pm_qos_add_request(&data->pm_qos_req,
+			PM_QOS_CPU_DMA_LATENCY, 0);
+
 	ret = imx_get_clks(dev);
 	if (ret)
 		goto disable_hsic_regulator;
@@ -396,7 +412,6 @@ static int ci_hdrc_imx_probe(struct platform_device *pdev)
 		usb_phy_init(pdata.usb_phy);
 	}
 
-	pdata.flags |= imx_platform_flag->flags;
 	if (pdata.flags & CI_HDRC_SUPPORTS_RUNTIME_PM)
 		data->supports_runtime_pm = true;
 
@@ -439,6 +454,8 @@ static int ci_hdrc_imx_probe(struct platform_device *pdev)
 disable_hsic_regulator:
 	if (data->hsic_pad_regulator)
 		ret = regulator_disable(data->hsic_pad_regulator);
+	if (pdata.flags & CI_HDRC_PMQOS)
+		pm_qos_remove_request(&data->pm_qos_req);
 	return ret;
 }
 
@@ -455,6 +472,8 @@ static int ci_hdrc_imx_remove(struct platform_device *pdev)
 	if (data->override_phy_control)
 		usb_phy_shutdown(data->phy);
 	imx_disable_unprepare_clks(&pdev->dev);
+	if (data->plat_data->flags & CI_HDRC_PMQOS)
+		pm_qos_remove_request(&data->pm_qos_req);
 	if (data->hsic_pad_regulator)
 		regulator_disable(data->hsic_pad_regulator);
 
@@ -480,6 +499,9 @@ static int __maybe_unused imx_controller_suspend(struct device *dev)
 	}
 
 	imx_disable_unprepare_clks(dev);
+	if (data->plat_data->flags & CI_HDRC_PMQOS)
+		pm_qos_remove_request(&data->pm_qos_req);
+
 	data->in_lpm = true;
 
 	return 0;
@@ -497,6 +519,10 @@ static int __maybe_unused imx_controller_resume(struct device *dev)
 		return 0;
 	}
 
+	if (data->plat_data->flags & CI_HDRC_PMQOS)
+		pm_qos_add_request(&data->pm_qos_req,
+			PM_QOS_CPU_DMA_LATENCY, 0);
+
 	ret = imx_prepare_enable_clks(dev);
 	if (ret)
 		return ret;
diff --git a/drivers/usb/chipidea/usbmisc_imx.c b/drivers/usb/chipidea/usbmisc_imx.c
index d8b67e150b12..b7a5727d0c8a 100644
--- a/drivers/usb/chipidea/usbmisc_imx.c
+++ b/drivers/usb/chipidea/usbmisc_imx.c
@@ -763,6 +763,10 @@ static const struct of_device_id usbmisc_imx_dt_ids[] = {
 		.compatible = "fsl,imx7d-usbmisc",
 		.data = &imx7d_usbmisc_ops,
 	},
+	{
+		.compatible = "fsl,imx7ulp-usbmisc",
+		.data = &imx7d_usbmisc_ops,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, usbmisc_imx_dt_ids);
diff --git a/include/linux/usb/chipidea.h b/include/linux/usb/chipidea.h
index 911e05af671e..edd89b7c8f18 100644
--- a/include/linux/usb/chipidea.h
+++ b/include/linux/usb/chipidea.h
@@ -61,6 +61,7 @@ struct ci_hdrc_platform_data {
 #define CI_HDRC_OVERRIDE_PHY_CONTROL	BIT(12) /* Glue layer manages phy */
 #define CI_HDRC_REQUIRES_ALIGNED_DMA	BIT(13)
 #define CI_HDRC_IMX_IS_HSIC		BIT(14)
+#define CI_HDRC_PMQOS			BIT(15)
 	enum usb_dr_mode	dr_mode;
 #define CI_HDRC_CONTROLLER_RESET_EVENT		0
 #define CI_HDRC_CONTROLLER_STOPPED_EVENT	1
-- 
2.14.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
