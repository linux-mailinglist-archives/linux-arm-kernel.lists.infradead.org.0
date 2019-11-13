Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31179FB075
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 13:26:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZnbz7NJHHyM9TOk0IHHK46i/S/1fnrrQn4gTMGK5ps=; b=ncQvIekwzk9thM
	Cic+qUXH+P0Cokk5Suuc5XHooerIBkYGT+QL5Iw/SiV35lbmKW9tYzIKrlahA8X++4NBOtaDjqpql
	5kLH+sKUBVEXRSqCOqjraECaKrhviSZ9lTj5hXUZ2Z9ClseMC8kf57YSNH1Ny9QyLI4t+1HkPKhVp
	VcANchRBS4QSJO7axid3U9eETobiof9TZbj3gjKFmPBJUk9BDg6EmOBv6vGex52JfxsOgQPNQHkI9
	aA1ZyTqE+0AZ2/ag4fxqU61JtRuzZdtSaxINJOWhRHmDlJ9lN7rjkohntcoPoY1Vjkxko3G5to5ks
	WBq1sLaEKuJJ9x9gG7/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUrii-0003mO-U0; Wed, 13 Nov 2019 12:26:00 +0000
Received: from mail-eopbgr140073.outbound.protection.outlook.com
 ([40.107.14.73] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUri9-0003Lt-LL
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 12:25:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jpkWcc8YDoS18HRAkEQACKlhi84nxApCg08MPZTbk9XV0iRg8m+9017FnnKOua9xjCIAnAxL7YUS2nITnQbmZtbJFC8fjl4dyg+6n+vYEqeg+zzsSTis80cTj1qwHRDZJrK1WeSV4aVeGovwPj3rkMnH8TYkcIQRd8+WkFur4LdLV1+2kbPyfdqZcPyTSztTpkUiHQpEZ/6lUk44CfrVHLD/ZwJyUHZoCySLV3aUtxFuLKW/1YVpUIX6T/uaM9+Rx/4jsZGlcFHTINu0CbiolJHD7V4XwaLdkCU/zmjlpHwXGdRnFjFXWS9A2nB5qVpoa052Ozi3PZ8hEcxLeRUL8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9awv5pDMUgD3nyqQRd0DGfUiukExSMdEM6U3q3P1Kvk=;
 b=N64xqLoR2KeLx9IoaOxhW+0eVYDaAeMcbKl4RHfrn9AvTlRkFfp0tuLY3wC9GycBv8Nxtbhz5XmwV96jvLbG9SaqZ072c4OuZ+ibpDBaA0pCnB7FgecO4u0bsW0uNJFTlF7btwnZMib5rlwgGRWDzG6SyhBDbqIM7G29ymvZM4IOzVG4iKCgQxJp+zDjRSK6fqqJvuxY41aTRrvAXGjXIdeJAiBQjNnvqwuOmJKgpo5na4avVnJAXOwl/nooCjFCk0i0YNkQhRRPDMAiZj1Px1GmIwC4Gtcc+jOddyOQlf/aHoG0RDWUuerLBXIrPCT31Z5MXEWpgBxT+wlEUht/IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9awv5pDMUgD3nyqQRd0DGfUiukExSMdEM6U3q3P1Kvk=;
 b=s9TuKWx/3mdkKXSWajNH//8iFLxUXSeJqRDE0UCzynUMiv5HYpBg3eNQVMu76Pf+YpKbskea9gwweP5uP3zb9/SyMt8Xur/VlHGWmaES8BdfXW4J567asjXDza0dNBTHsyGdEmmTzQqpZZa037lHq0e9VSzsbyd01pL4W8eczNU=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4499.eurprd04.prod.outlook.com (52.135.151.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.23; Wed, 13 Nov 2019 12:25:15 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2430.027; Wed, 13 Nov 2019
 12:25:15 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Jacky
 Bai <ping.bai@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>
Subject: [PATCH 3/3] clk: imx8qxp: Add ACM driver
Thread-Topic: [PATCH 3/3] clk: imx8qxp: Add ACM driver
Thread-Index: AQHVmh1noYxDOD5oOE6Oh5sdRghxRg==
Date: Wed, 13 Nov 2019 12:25:15 +0000
Message-ID: <1573647909-31081-3-git-send-email-abel.vesa@nxp.com>
References: <1573647909-31081-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1573647909-31081-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0402CA0014.eurprd04.prod.outlook.com
 (2603:10a6:208:15::27) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.7.4
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a83bad4e-b93e-4fcf-83df-08d768348967
x-ms-traffictypediagnostic: AM0PR04MB4499:|AM0PR04MB4499:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4499E44AFBB37FFC34218DB9F6760@AM0PR04MB4499.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(396003)(366004)(136003)(376002)(199004)(189003)(446003)(486006)(44832011)(2616005)(71200400001)(66446008)(66476007)(102836004)(76176011)(86362001)(6506007)(386003)(71190400001)(64756008)(256004)(14444005)(5024004)(6512007)(476003)(66066001)(5660300002)(36756003)(66946007)(11346002)(4326008)(66556008)(6636002)(6436002)(26005)(186003)(2906002)(7736002)(110136005)(8676002)(52116002)(99286004)(8936002)(316002)(478600001)(54906003)(14454004)(6116002)(3846002)(50226002)(25786009)(6486002)(305945005)(81156014)(81166006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4499;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vxginrOtBh1sIBBSva+PaqMsWTaDw+oAET80AeyQ30CvzA/+W4eqbr7ULI+9bUJ7Wza6ch4MeDwLvuolpEDmzYBRKcB2bJa8G4snW1n/R8Y5sSRw8MDHa8HO0fn8PXZB0hfbdjwhusUmeGnxLpXrUQAhGXK5FyAsRbonSoK+DsSRmOSfOXj2MRbwcT36HGxNuUvsgATChYEsP3/aifpQHYiSbBN8TO4XYoUbNKmZSvUtGGUH/y3O9/EcnNfYkhmnrKTsNJxA8myEXDvc9txJ4Cten4ymHJEQ/L/UuCruxPRKLkEqwV61nf3VWTNr/BgYZDN7zXmiR4yYmv4S9P7UKMNAPSKNBUZWRZM9BtW0dnSQ3pPDfsiwYz2Y5moBEtQAG6fI8/rgOq8rvzBo9vaJZdBW1S87b9PVxyqlpbWoY/19KOkflrmj6onie7u4X1G0
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a83bad4e-b93e-4fcf-83df-08d768348967
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 12:25:15.1983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e3hqG4wWHX8XDMO3yQStSiqGZeVGH+epq0KKhuQRL8rvopziBIdzyHoyzeC6BGZGGVn6AQbWcJyW+QMJqGhhxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4499
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_042525_724678_3C73464F 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.73 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Abel Vesa <abel.vesa@nxp.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the RM, the Audio Clock Mux (ACM) is a collection of control
registers and multiplexers that are used to route the audio source clocks
to the audio peripherals. Each audio peripheral has its dedicated audio
clock mux (which differ based on usage) and control register.
Control of ACM is behind the SCU firmware.

ACM depends on SCU PD, so its init level has to be after SCU PD
but before the LPCG. The fs_initcall ensures it's probed before LPCG clocks
also avoiding unnecessary massive defer probe.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/Makefile          |   2 +-
 drivers/clk/imx/clk-imx8qxp-acm.c | 189 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 190 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/imx/clk-imx8qxp-acm.c

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 77a3d71..6186839 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -28,7 +28,7 @@ obj-$(CONFIG_MXC_CLK_SCU) += \
 obj-$(CONFIG_CLK_IMX8MM) += clk-imx8mm.o
 obj-$(CONFIG_CLK_IMX8MN) += clk-imx8mn.o
 obj-$(CONFIG_CLK_IMX8MQ) += clk-imx8mq.o
-obj-$(CONFIG_CLK_IMX8QXP) += clk-imx8qxp.o clk-imx8qxp-lpcg.o
+obj-$(CONFIG_CLK_IMX8QXP) += clk-imx8qxp.o clk-imx8qxp-lpcg.o clk-imx8qxp-acm.o
 
 obj-$(CONFIG_SOC_IMX1)   += clk-imx1.o
 obj-$(CONFIG_SOC_IMX21)  += clk-imx21.o
diff --git a/drivers/clk/imx/clk-imx8qxp-acm.c b/drivers/clk/imx/clk-imx8qxp-acm.c
new file mode 100644
index 00000000..7c00fd3
--- /dev/null
+++ b/drivers/clk/imx/clk-imx8qxp-acm.c
@@ -0,0 +1,189 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/pm_domain.h>
+
+#include "clk.h"
+#include "clk-scu.h"
+
+#include <dt-bindings/clock/imx8-clock.h>
+
+static const char * const aud_clk_sels[] = {
+	"aud_rec_clk0_lpcg_clk",
+	"aud_rec_clk1_lpcg_clk",
+	"ext_aud_mclk0",
+	"ext_aud_mclk1",
+	"esai0_rx_clk",
+	"esai0_rx_hf_clk",
+	"esai0_tx_clk",
+	"esai0_tx_hf_clk",
+	"spdif0_rx",
+	"sai0_rx_bclk",
+	"sai0_tx_bclk",
+	"sai1_rx_bclk",
+	"sai1_tx_bclk",
+	"sai2_rx_bclk",
+	"sai3_rx_bclk",
+};
+
+static const char * const mclk_out_sels[] = {
+	"aud_rec_clk0_lpcg_clk",
+	"aud_rec_clk1_lpcg_clk",
+	"dummy",
+	"dummy",
+	"spdif0_rx",
+	"dummy",
+	"dummy",
+	"sai4_rx_bclk",
+};
+
+static const char * const sai_mclk_sels[] = {
+	"aud_pll_div_clk0_lpcg_clk",
+	"aud_pll_div_clk1_lpcg_clk",
+	"acm_aud_clk0_sel",
+	"acm_aud_clk1_sel",
+};
+
+static const char * const esai_mclk_sels[] = {
+	"aud_pll_div_clk0_lpcg_clk",
+	"aud_pll_div_clk1_lpcg_clk",
+	"acm_aud_clk0_sel",
+	"acm_aud_clk1_sel",
+};
+
+static const char * const spdif_mclk_sels[] = {
+	"aud_pll_div_clk0_lpcg_clk",
+	"aud_pll_div_clk1_lpcg_clk",
+	"acm_aud_clk0_sel",
+	"acm_aud_clk1_sel",
+};
+
+static const char * const mqs_mclk_sels[] = {
+	"aud_pll_div_clk0_lpcg_clk",
+	"aud_pll_div_clk1_lpcg_clk",
+	"acm_aud_clk0_sel",
+	"acm_aud_clk1_sel",
+};
+
+static int imx8qxp_acm_clk_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct clk_onecell_data *clk_data;
+	struct resource *res;
+	struct clk **clks;
+	void __iomem *base;
+	int num_domains;
+	int i;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	base = devm_ioremap(dev, res->start, resource_size(res));
+	if (!base)
+		return -ENOMEM;
+
+	clk_data = kzalloc(sizeof(*clk_data), GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
+
+	clk_data->clks = kcalloc(IMX_ADMA_ACM_CLK_END,
+					sizeof(*clk_data->clks), GFP_KERNEL);
+	if (!clk_data->clks)
+		return -ENOMEM;
+
+	clk_data->clk_num = IMX_ADMA_ACM_CLK_END;
+
+	clks = clk_data->clks;
+
+	num_domains = of_count_phandle_with_args(dev->of_node, "power-domains",
+						 "#power-domain-cells");
+	for (i = 0; i < num_domains; i++) {
+		struct device *pd_dev;
+		struct device_link *link;
+
+		pd_dev = dev_pm_domain_attach_by_id(&pdev->dev, i);
+		if (IS_ERR(pd_dev))
+			return PTR_ERR(pd_dev);
+
+		link = device_link_add(&pdev->dev, pd_dev,
+			DL_FLAG_STATELESS |
+			DL_FLAG_PM_RUNTIME |
+			DL_FLAG_RPM_ACTIVE);
+		if (IS_ERR(link))
+			return PTR_ERR(link);
+	}
+
+	clks[IMX_ADMA_EXT_AUD_MCLK0]     = imx_clk_fixed("ext_aud_mclk0", 0);
+	clks[IMX_ADMA_EXT_AUD_MCLK1]     = imx_clk_fixed("ext_aud_mclk1", 0);
+	clks[IMX_ADMA_ESAI0_RX_CLK]      = imx_clk_fixed("esai0_rx_clk", 0);
+	clks[IMX_ADMA_ESAI0_RX_HF_CLK]   = imx_clk_fixed("esai0_rx_hf_clk", 0);
+	clks[IMX_ADMA_ESAI0_TX_CLK]      = imx_clk_fixed("esai0_tx_clk", 0);
+	clks[IMX_ADMA_ESAI0_TX_HF_CLK]   = imx_clk_fixed("esai0_tx_hf_clk", 0);
+	clks[IMX_ADMA_SPDIF0_RX]         = imx_clk_fixed("spdif0_rx", 0);
+	clks[IMX_ADMA_SAI0_RX_BCLK]      = imx_clk_fixed("sai0_rx_bclk", 0);
+	clks[IMX_ADMA_SAI0_TX_BCLK]      = imx_clk_fixed("sai0_tx_bclk", 0);
+	clks[IMX_ADMA_SAI1_RX_BCLK]      = imx_clk_fixed("sai1_rx_bclk", 0);
+	clks[IMX_ADMA_SAI1_TX_BCLK]      = imx_clk_fixed("sai1_tx_bclk", 0);
+	clks[IMX_ADMA_SAI2_RX_BCLK]      = imx_clk_fixed("sai2_rx_bclk", 0);
+	clks[IMX_ADMA_SAI3_RX_BCLK]      = imx_clk_fixed("sai3_rx_bclk", 0);
+	clks[IMX_ADMA_SAI4_RX_BCLK]      = imx_clk_fixed("sai4_rx_bclk", 0);
+
+
+	clks[IMX_ADMA_ACM_AUD_CLK0_SEL] = imx_clk_mux("acm_aud_clk0_sel", base+0x000000, 0, 5, aud_clk_sels, ARRAY_SIZE(aud_clk_sels));
+	clks[IMX_ADMA_ACM_AUD_CLK1_CLK]	= imx_clk_mux("acm_aud_clk1_sel", base+0x010000, 0, 5, aud_clk_sels, ARRAY_SIZE(aud_clk_sels));
+
+	clks[IMX_ADMA_ACM_MCLKOUT0_SEL]	= imx_clk_mux("acm_mclkout0_sel", base+0x020000, 0, 3, mclk_out_sels, ARRAY_SIZE(mclk_out_sels));
+	clks[IMX_ADMA_ACM_MCLKOUT1_SEL]	= imx_clk_mux("acm_mclkout1_sel", base+0x030000, 0, 3, mclk_out_sels, ARRAY_SIZE(mclk_out_sels));
+
+	clks[IMX_ADMA_ACM_ASRC0_MUX_CLK_SEL] = imx_clk_mux("acm_asrc0_mclk_sel", base+0x040000, 0, 2, NULL, 0);
+	clks[IMX_ADMA_ACM_ASRC1_MUX_CLK_SEL] = imx_clk_mux("acm_asrc1_mclk_sel", base+0x050000, 0, 2, NULL, 0);
+
+	clks[IMX_ADMA_ACM_ESAI0_MCLK_SEL] = imx_clk_mux("acm_esai0_mclk_sel", base+0x060000, 0, 2, esai_mclk_sels, ARRAY_SIZE(esai_mclk_sels));
+	clks[IMX_ADMA_ACM_SAI0_MCLK_SEL] = imx_clk_mux("acm_sai0_mclk_sel", base+0x0E0000, 0, 2, sai_mclk_sels, ARRAY_SIZE(sai_mclk_sels));
+	clks[IMX_ADMA_ACM_SAI1_MCLK_SEL] = imx_clk_mux("acm_sai1_mclk_sel", base+0x0F0000, 0, 2, sai_mclk_sels, ARRAY_SIZE(sai_mclk_sels));
+	clks[IMX_ADMA_ACM_SAI2_MCLK_SEL] = imx_clk_mux("acm_sai2_mclk_sel", base+0x100000, 0, 2, sai_mclk_sels, ARRAY_SIZE(sai_mclk_sels));
+	clks[IMX_ADMA_ACM_SAI3_MCLK_SEL] = imx_clk_mux("acm_sai3_mclk_sel", base+0x110000, 0, 2, sai_mclk_sels, ARRAY_SIZE(sai_mclk_sels));
+	clks[IMX_ADMA_ACM_SAI4_MCLK_SEL] = imx_clk_mux("acm_sai4_mclk_sel", base+0x140000, 0, 2, sai_mclk_sels, ARRAY_SIZE(sai_mclk_sels));
+	clks[IMX_ADMA_ACM_SAI5_MCLK_SEL] = imx_clk_mux("acm_sai5_mclk_sel", base+0x150000, 0, 2, sai_mclk_sels, ARRAY_SIZE(sai_mclk_sels));
+
+	clks[IMX_ADMA_ACM_SPDIF0_TX_CLK_SEL] = imx_clk_mux("acm_spdif0_mclk_sel", base+0x1A0000, 0, 2, spdif_mclk_sels, ARRAY_SIZE(spdif_mclk_sels));
+	clks[IMX_ADMA_ACM_MQS_TX_CLK_SEL] = imx_clk_mux("acm_mqs_mclk_sel", base+0x1C0000, 0, 2, mqs_mclk_sels, ARRAY_SIZE(mqs_mclk_sels));
+
+	for (i = 0; i < clk_data->clk_num; i++) {
+		if (IS_ERR(clks[i]))
+			pr_warn("i.MX clk %u: register failed with %ld\n",
+				i, PTR_ERR(clks[i]));
+	}
+
+	return of_clk_add_provider(np, of_clk_src_onecell_get, clk_data);
+}
+
+static const struct of_device_id imx8qxp_acm_match[] = {
+	{ .compatible = "nxp,imx8qxp-acm", },
+	{ /* sentinel */ }
+};
+
+static struct platform_driver imx8qxp_acm_clk_driver = {
+	.driver = {
+		.name = "imx8qxp-acm",
+		.of_match_table = imx8qxp_acm_match,
+		.suppress_bind_attrs = true,
+	},
+	.probe = imx8qxp_acm_clk_probe,
+};
+
+static int __init imx8qxp_acm_init(void)
+{
+	return platform_driver_register(&imx8qxp_acm_clk_driver);
+}
+fs_initcall(imx8qxp_acm_init);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
