Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CC416098
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knRTuG4l6aiA5Vg0Sd/z7Lu5GxaaO54kNnwx+q3KciA=; b=YgDf+k7VJQJ+YR
	ruR88aHk/Hc9f2tfz9HZk7N+WMh2qiZm/F5aHle1eKQ03EBA2w44g1hAYxaBx86ZxPsLuNhwk3grl
	EPk5W6TpfsnPJHpJDYK9H+OcMhwWSpgAthombWiCe6FZISg586ZdPQpt0qlkBlu3oVG0tUdTj6OpH
	j844wx6kAWYoYHzoFR1NW7PqSbnK1kO1E/w03gnNi/b7P3HgLueDObiIkW0usaePmrze0lxlYYAhd
	lZORCZ6vA8L5fCO7ZMmhiCjXYh88YvXrjsEdKjRJLVANlS71sKLETNvOFjGr7Oqpbax1Vh4wQRBYs
	zh/P4cTlPvcdzhy6g/VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwEV-0002c1-7k; Tue, 07 May 2019 09:17:55 +0000
Received: from mail-eopbgr40067.outbound.protection.outlook.com ([40.107.4.67]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwDW-0000n1-LH
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IamOlvDHns+7MfjYUIuX2YgxLTawBqxGa/cJwrUa3GY=;
 b=tPXxquIyRPALfYWNQLhKessoj3mVH/u48e6PjO7Rza3Qc8kAp4VrucBwyTl6g8kE/Usq3ncHu5+MdEUw8wUIcKX9xhvJSS0S0Q1Ow+fvydFp/1b+Bek77ZhPS9eaegrm23ouYwq7qVmcMKRgiVpTLP9RXYqNRlhRA9LQMzmTi4M=
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com (20.177.55.90) by
 VI1PR04MB5005.eurprd04.prod.outlook.com (20.177.49.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 09:16:19 +0000
Received: from VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525]) by VI1PR04MB4543.eurprd04.prod.outlook.com
 ([fe80::5d07:911b:18e1:1525%4]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 09:16:19 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>, "broonie@kernel.org"
 <broonie@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will.deacon@arm.com"
 <will.deacon@arm.com>, "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: [PATCH v3 07/14] spi: imx: remove ERR009165 workaround on i.mx6ul
Thread-Topic: [PATCH v3 07/14] spi: imx: remove ERR009165 workaround on i.mx6ul
Thread-Index: AQHVBLWHv8D1fmdXnUup12XR6m92OQ==
Date: Tue, 7 May 2019 09:16:19 +0000
Message-ID: <1557249513-4903-8-git-send-email-yibin.gong@nxp.com>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
In-Reply-To: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0088.apcprd04.prod.outlook.com
 (2603:1096:202:15::32) To VI1PR04MB4543.eurprd04.prod.outlook.com
 (2603:10a6:803:6d::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e7c47d71-d979-432f-bb96-08d6d2ccaa39
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5005; 
x-ms-traffictypediagnostic: VI1PR04MB5005:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <VI1PR04MB5005F611FF22B75B63129AD489310@VI1PR04MB5005.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(136003)(39860400002)(396003)(199004)(189003)(386003)(6506007)(2501003)(36756003)(102836004)(6486002)(26005)(8676002)(4326008)(5660300002)(25786009)(68736007)(52116002)(76176011)(186003)(2201001)(6306002)(6512007)(53936002)(3846002)(71200400001)(14444005)(66556008)(966005)(86362001)(66446008)(64756008)(476003)(66476007)(7416002)(305945005)(2906002)(11346002)(7736002)(66066001)(6116002)(99286004)(54906003)(256004)(14454004)(2616005)(73956011)(110136005)(6436002)(50226002)(8936002)(81156014)(81166006)(66946007)(316002)(71190400001)(486006)(478600001)(446003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5005;
 H:VI1PR04MB4543.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vvMUG04wk06FVIBEu4WSrW27VxCZcpS9rYX/BpOyLQFHDMx28k5TY1yVOEZIap56L6S5FDVILNeP4XjmHC7URXS0Yo2EJFr80HEYMFRa66Wyu/XC/Eb83MFUg8gxdUM+2AhGgtwMrJYcncYdKpGyBZN0R4mtqI4Y+PL5ebXAAC8cU5F4ff718DXoUlTSuQk2/kVpOxuGy9lS1jU3KUSZ2m/5fy/BAElc36bPUOT1S6FnvrgCnDj6izLyliah8ubnj5wjQJrTBt0iZmaQMDgA+LaBTl4fT1fWnxCG0wpdzbyXPUyDiUj/8uzFq20sc5JsiBL50q+ADcH9LNfrHG97cgbN54Nxv+WaKxB4jxdIojNl6BDX29JOMa4FK801OFhhYRPO5WtIynQNT6v5WTJjEhVO2TyjaEbEQfpjSvkkGtg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7c47d71-d979-432f-bb96-08d6d2ccaa39
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 09:16:19.2927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_021655_306221_C3D3B290 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ERR009165 fixed on i.mx6ul/6ull/6sll. All other i.mx6/7 and
i.mx8m/8mm still need this errata. Please refer to nxp official
errata document from https://www.nxp.com/ .

For removing workaround on those chips. Add new i.mx6ul type.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/spi/spi-imx.c | 50 +++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 45 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c
index 6795910..91660dc 100644
--- a/drivers/spi/spi-imx.c
+++ b/drivers/spi/spi-imx.c
@@ -57,6 +57,7 @@ enum spi_imx_devtype {
 	IMX35_CSPI,	/* CSPI on all i.mx except above */
 	IMX51_ECSPI,	/* ECSPI on i.mx51 */
 	IMX53_ECSPI,	/* ECSPI on i.mx53 and later */
+	IMX6UL_ECSPI,	/* ERR009165 fix from i.mx6ul */
 };
 
 struct spi_imx_data;
@@ -75,6 +76,11 @@ struct spi_imx_devtype_data {
 	bool has_slavemode;
 	unsigned int fifo_size;
 	bool dynamic_burst;
+	/*
+	 * ERR009165 fixed or not:
+	 * https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf
+	 */
+	bool tx_glitch_fixed;
 	enum spi_imx_devtype devtype;
 };
 
@@ -128,7 +134,8 @@ static inline int is_imx35_cspi(struct spi_imx_data *d)
 
 static inline int is_imx51_ecspi(struct spi_imx_data *d)
 {
-	return d->devtype_data->devtype == IMX51_ECSPI;
+	return d->devtype_data->devtype == IMX51_ECSPI ||
+	       d->devtype_data->devtype == IMX6UL_ECSPI;
 }
 
 static inline int is_imx53_ecspi(struct spi_imx_data *d)
@@ -585,9 +592,16 @@ static int mx51_ecspi_prepare_transfer(struct spi_imx_data *spi_imx,
 	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
 	spi_imx->spi_bus_clk = clk;
 
-	/* ERR009165: work in XHC mode as PIO */
-	if (spi_imx->usedma)
-		ctrl &= ~MX51_ECSPI_CTRL_SMC;
+	/*
+	 * ERR009165: work in XHC mode instead of SMC as PIO on the chips
+	 * before i.mx6ul.
+	 */
+	if (spi_imx->usedma) {
+		if (spi_imx->devtype_data->tx_glitch_fixed)
+			ctrl |= MX51_ECSPI_CTRL_SMC;
+		else
+			ctrl &= ~MX51_ECSPI_CTRL_SMC;
+	}
 
 	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
 
@@ -615,6 +629,8 @@ static void mx51_setup_wml(struct spi_imx_data *spi_imx)
 {
 	u32 tx_wml = 0;
 
+	if (spi_imx->devtype_data->tx_glitch_fixed)
+		tx_wml = spi_imx->wml;
 	/*
 	 * Configure the DMA register: setup the watermark
 	 * and enable DMA request.
@@ -1012,6 +1028,23 @@ static struct spi_imx_devtype_data imx53_ecspi_devtype_data = {
 	.devtype = IMX53_ECSPI,
 };
 
+static struct spi_imx_devtype_data imx6ul_ecspi_devtype_data = {
+	.intctrl = mx51_ecspi_intctrl,
+	.prepare_message = mx51_ecspi_prepare_message,
+	.prepare_transfer = mx51_ecspi_prepare_transfer,
+	.trigger = mx51_ecspi_trigger,
+	.rx_available = mx51_ecspi_rx_available,
+	.reset = mx51_ecspi_reset,
+	.setup_wml = mx51_setup_wml,
+	.fifo_size = 64,
+	.has_dmamode = true,
+	.dynamic_burst = true,
+	.has_slavemode = true,
+	.tx_glitch_fixed = true,
+	.disable = mx51_ecspi_disable,
+	.devtype = IMX6UL_ECSPI,
+};
+
 static const struct platform_device_id spi_imx_devtype[] = {
 	{
 		.name = "imx1-cspi",
@@ -1035,6 +1068,9 @@ static const struct platform_device_id spi_imx_devtype[] = {
 		.name = "imx53-ecspi",
 		.driver_data = (kernel_ulong_t) &imx53_ecspi_devtype_data,
 	}, {
+		.name = "imx6ul-ecspi",
+		.driver_data = (kernel_ulong_t) &imx6ul_ecspi_devtype_data,
+	}, {
 		/* sentinel */
 	}
 };
@@ -1047,6 +1083,7 @@ static const struct of_device_id spi_imx_dt_ids[] = {
 	{ .compatible = "fsl,imx35-cspi", .data = &imx35_cspi_devtype_data, },
 	{ .compatible = "fsl,imx51-ecspi", .data = &imx51_ecspi_devtype_data, },
 	{ .compatible = "fsl,imx53-ecspi", .data = &imx53_ecspi_devtype_data, },
+	{ .compatible = "fsl,imx6ul-ecspi", .data = &imx6ul_ecspi_devtype_data, },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, spi_imx_dt_ids);
@@ -1178,7 +1215,10 @@ static int spi_imx_dma_configure(struct spi_master *master)
 	 * For ERR009165 with tx_wml = 0 could enlarge burst size to fifo size
 	 * to speed up fifo filling as possible.
 	 */
-	tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
+	if (spi_imx->devtype_data->tx_glitch_fixed)
+		tx.dst_maxburst = spi_imx->wml;
+	else
+		tx.dst_maxburst = spi_imx->devtype_data->fifo_size;
 	ret = dmaengine_slave_config(master->dma_tx, &tx);
 	if (ret) {
 		dev_err(spi_imx->dev, "TX dma configuration failed with %d\n", ret);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
