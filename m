Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F241C3FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 09:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C93Al5+VIrFxiuBex5U6n8S/gBBguYkH8SeW73sZMgw=; b=E0sQO8/qWFDWWF
	F5eHPrc6R2xJN86SLWe4IgAu2H015jT2cMKLQdCzcvm8xjNqF5fbIDw154TS2oKrjgJHoAHjCY//l
	kc7y0cC6uM5VJWUWYQjUHMWe0WqdbGCNyNrnWllV0kqUBayPKyA7hmVG75DasfhqHizg+mrL7r05Y
	pz2VbUmMn42uDapmRO5dptZmhhINEcoa5XKFBKUS9D4a2SXh7UXqDRvJwquEu/Afy6gXf7Cnpj7cN
	3EDXvFNKxtuitjuWQiR1zbi0SWyd4SgPDeTRdSn5Yll+pw6t6bbDh1pT8EHoYEJEGzxrbR35/VMHD
	UTvLiNX/bjNLBMiB1+5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQS1F-0008Dx-Ai; Tue, 14 May 2019 07:38:37 +0000
Received: from mail-eopbgr70043.outbound.protection.outlook.com ([40.107.7.43]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQS0k-0007iP-8z
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 07:38:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0hyLF5AeadJxFruUDqC+niOz1HgDME8iqrCMECAnXbU=;
 b=A5u3YfJYk/hKPBUjHb2TDHUsQEbwinC0wBuCRPlcmnlJb8WjCIfgkLncEplLGfx+JT1e/hKpCE3I7noZTivlXXJybYykMo59Oug/JQ0aGmS8r65ZxZhCkRotXdKYi+ubSyPnk8zAx/Twoe/kKfq0J3Npu5zaSRJIBlRiJmUeHeA=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB5392.eurprd04.prod.outlook.com (20.178.120.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 14 May 2019 07:38:04 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61%5]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 07:38:04 +0000
From: Peter Chen <peter.chen@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "balbi@kernel.org"
 <balbi@kernel.org>
Subject: [PATCH v2 2/8] usb: phy: phy-mxs-usb: add imx7ulp support
Thread-Topic: [PATCH v2 2/8] usb: phy: phy-mxs-usb: add imx7ulp support
Thread-Index: AQHVCif2vRA1gZTNi0O1cb14Aet16A==
Date: Tue, 14 May 2019 07:38:03 +0000
Message-ID: <20190514073529.29505-3-peter.chen@nxp.com>
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
x-ms-office365-filtering-correlation-id: 426d9a9a-2481-4949-d035-08d6d83f193b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5392; 
x-ms-traffictypediagnostic: VI1PR04MB5392:
x-microsoft-antispam-prvs: <VI1PR04MB5392E81CEAFDD4F8EB0B21B58B080@VI1PR04MB5392.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(376002)(346002)(39860400002)(189003)(199004)(386003)(6506007)(102836004)(7736002)(305945005)(6436002)(66946007)(26005)(316002)(6512007)(73956011)(6486002)(66446008)(64756008)(66556008)(66476007)(76176011)(11346002)(446003)(2906002)(476003)(2616005)(25786009)(4326008)(3846002)(53936002)(186003)(486006)(44832011)(86362001)(6116002)(71190400001)(71200400001)(50226002)(256004)(14444005)(66066001)(2501003)(1076003)(5660300002)(68736007)(8676002)(52116002)(99286004)(14454004)(36756003)(478600001)(8936002)(81156014)(81166006)(110136005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5392;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: r9bIyeuH8PJx6MJCK/crAE8DgHrcfnpMuManhLDGylbpcEBKQTf7PgETBkgcNpYw8RxZFHtvuKLrkcXN53EuQRMQnc5ELLqMd7PSoDjc9cnDY90slz3e+GkTahYRhUxj/Wm6NOMccdJRhHq/9J8a+LB075Wc6QqsXa5eMthkTZZgWl+uu/gxCqW3dcoFp53VUsRpTJjuV96M8jL/frPaatEe5rGopFv41kjdaUWJ4utsj9p3VnPJHo4nHQqTDHz9bMBdL7KH10Do89f4uGE5LvfYxI+3HeOalkq7OdQtIrGnlIdIxccpT0GHPlo5XOlFghS9aPEjKz0QxTbvs2/6RLN0/MrGPEtzCh4AFXm1so7Qp6mT9MSCG2uCg6k5R+CD2kjuEsKDgOAr6u6hHl/7KURl8yCsoSx3ubzn0UoqjMM=
Content-ID: <935071CF78B7294EB38B20C78D69FE53@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 426d9a9a-2481-4949-d035-08d6d83f193b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 07:38:04.0255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5392
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_003806_415407_1879D50A 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.43 listed in list.dnswl.org]
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

At imx7ulp, the USB related analog register is located in PHY register
region too, so we need to control PLL at PHY driver directly.

Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 drivers/usb/phy/phy-mxs-usb.c | 76 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 75 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
index 1b1bb0ad40c3..90c96a8e9342 100644
--- a/drivers/usb/phy/phy-mxs-usb.c
+++ b/drivers/usb/phy/phy-mxs-usb.c
@@ -20,6 +20,7 @@
 
 #define DRIVER_NAME "mxs_phy"
 
+/* Register Macro */
 #define HW_USBPHY_PWD				0x00
 #define HW_USBPHY_TX				0x10
 #define HW_USBPHY_CTRL				0x30
@@ -37,6 +38,11 @@
 #define GM_USBPHY_TX_TXCAL45DN(x)            (((x) & 0xf) << 8)
 #define GM_USBPHY_TX_D_CAL(x)                (((x) & 0xf) << 0)
 
+/* imx7ulp */
+#define HW_USBPHY_PLL_SIC			0xa0
+#define HW_USBPHY_PLL_SIC_SET			0xa4
+#define HW_USBPHY_PLL_SIC_CLR			0xa8
+
 #define BM_USBPHY_CTRL_SFTRST			BIT(31)
 #define BM_USBPHY_CTRL_CLKGATE			BIT(30)
 #define BM_USBPHY_CTRL_OTG_ID_VALUE		BIT(27)
@@ -55,6 +61,12 @@
 #define BM_USBPHY_IP_FIX                       (BIT(17) | BIT(18))
 
 #define BM_USBPHY_DEBUG_CLKGATE			BIT(30)
+/* imx7ulp */
+#define BM_USBPHY_PLL_LOCK			BIT(31)
+#define BM_USBPHY_PLL_REG_ENABLE		BIT(21)
+#define BM_USBPHY_PLL_BYPASS			BIT(16)
+#define BM_USBPHY_PLL_POWER			BIT(12)
+#define BM_USBPHY_PLL_EN_USB_CLKS		BIT(6)
 
 /* Anatop Registers */
 #define ANADIG_ANA_MISC0			0x150
@@ -167,6 +179,9 @@ static const struct mxs_phy_data imx6ul_phy_data = {
 	.flags = MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS,
 };
 
+static const struct mxs_phy_data imx7ulp_phy_data = {
+};
+
 static const struct of_device_id mxs_phy_dt_ids[] = {
 	{ .compatible = "fsl,imx6sx-usbphy", .data = &imx6sx_phy_data, },
 	{ .compatible = "fsl,imx6sl-usbphy", .data = &imx6sl_phy_data, },
@@ -174,6 +189,7 @@ static const struct of_device_id mxs_phy_dt_ids[] = {
 	{ .compatible = "fsl,imx23-usbphy", .data = &imx23_phy_data, },
 	{ .compatible = "fsl,vf610-usbphy", .data = &vf610_phy_data, },
 	{ .compatible = "fsl,imx6ul-usbphy", .data = &imx6ul_phy_data, },
+	{ .compatible = "fsl,imx7ulp-usbphy", .data = &imx7ulp_phy_data, },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, mxs_phy_dt_ids);
@@ -198,6 +214,11 @@ static inline bool is_imx6sl_phy(struct mxs_phy *mxs_phy)
 	return mxs_phy->data == &imx6sl_phy_data;
 }
 
+static inline bool is_imx7ulp_phy(struct mxs_phy *mxs_phy)
+{
+	return mxs_phy->data == &imx7ulp_phy_data;
+}
+
 /*
  * PHY needs some 32K cycles to switch from 32K clock to
  * bus (such as AHB/AXI, etc) clock.
@@ -221,14 +242,59 @@ static void mxs_phy_tx_init(struct mxs_phy *mxs_phy)
 	}
 }
 
+static int wait_for_pll_lock(const void __iomem *base)
+{
+	int loop_count = 100;
+
+	/* Wait for PLL to lock */
+	do {
+		if (readl(base + HW_USBPHY_PLL_SIC) & BM_USBPHY_PLL_LOCK)
+			break;
+		usleep_range(100, 150);
+	} while (loop_count-- > 0);
+
+	return readl(base + HW_USBPHY_PLL_SIC) & BM_USBPHY_PLL_LOCK
+			? 0 : -ETIMEDOUT;
+}
+
+static int mxs_phy_pll_enable(void __iomem *base, bool enable)
+{
+	int ret = 0;
+
+	if (enable) {
+		writel(BM_USBPHY_PLL_REG_ENABLE, base + HW_USBPHY_PLL_SIC_SET);
+		writel(BM_USBPHY_PLL_BYPASS, base + HW_USBPHY_PLL_SIC_CLR);
+		writel(BM_USBPHY_PLL_POWER, base + HW_USBPHY_PLL_SIC_SET);
+		ret = wait_for_pll_lock(base);
+		if (ret)
+			return ret;
+		writel(BM_USBPHY_PLL_EN_USB_CLKS, base +
+				HW_USBPHY_PLL_SIC_SET);
+	} else {
+		writel(BM_USBPHY_PLL_EN_USB_CLKS, base +
+				HW_USBPHY_PLL_SIC_CLR);
+		writel(BM_USBPHY_PLL_POWER, base + HW_USBPHY_PLL_SIC_CLR);
+		writel(BM_USBPHY_PLL_BYPASS, base + HW_USBPHY_PLL_SIC_SET);
+		writel(BM_USBPHY_PLL_REG_ENABLE, base + HW_USBPHY_PLL_SIC_CLR);
+	}
+
+	return ret;
+}
+
 static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
 {
 	int ret;
 	void __iomem *base = mxs_phy->phy.io_priv;
 
+	if (is_imx7ulp_phy(mxs_phy)) {
+		ret = mxs_phy_pll_enable(base, true);
+		if (ret)
+			return ret;
+	}
+
 	ret = stmp_reset_block(base + HW_USBPHY_CTRL);
 	if (ret)
-		return ret;
+		goto disable_pll;
 
 	/* Power up the PHY */
 	writel(0, base + HW_USBPHY_PWD);
@@ -253,6 +319,11 @@ static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
 	mxs_phy_tx_init(mxs_phy);
 
 	return 0;
+
+disable_pll:
+	if (is_imx7ulp_phy(mxs_phy))
+		mxs_phy_pll_enable(base, false);
+	return ret;
 }
 
 /* Return true if the vbus is there */
@@ -374,6 +445,9 @@ static void mxs_phy_shutdown(struct usb_phy *phy)
 	writel(BM_USBPHY_CTRL_CLKGATE,
 	       phy->io_priv + HW_USBPHY_CTRL_SET);
 
+	if (is_imx7ulp_phy(mxs_phy))
+		mxs_phy_pll_enable(phy->io_priv, false);
+
 	clk_disable_unprepare(mxs_phy->clk);
 }
 
-- 
2.14.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
