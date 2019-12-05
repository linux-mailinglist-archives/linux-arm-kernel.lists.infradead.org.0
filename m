Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C667113CCA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:06:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6R5t84S2Lbmq/UgjgAyESMgLwag6jQLavYuhA9udAq4=; b=LIBtU10b3lXJHS
	wM2cN4MNyHTr6xUzOjf9c5Jq0XKf3kyAGUxkZ9K1/p9Wlihcw+81Zxyo56/UyqVIV8nwDv6oVwmrI
	JSQoF71kV3HnJqOhmb3M/G/PhCDr0SWdY+xAHjs/1tU7PRhuicfMTz7R4hw2/Xueu8tq52SJvfDjY
	EA2PC/0cszDQdEhIVOajNLupIrtreRLNEIvWzSnpQlZpLDyVeSZyPFrqll/frYis1sOiK+uu9KI3Q
	ZTjhvWJvVh3CRgEVkcheU4n6h+wuxpKaPEktMkTCHMaWjv2sxfGAEC3XkE1SJjJT7+0qRxQR4JchF
	3eRPQOWYWr1CvMQj9mxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icm9p-00041r-6N; Thu, 05 Dec 2019 08:06:41 +0000
Received: from mail-eopbgr140041.outbound.protection.outlook.com
 ([40.107.14.41] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icm9Z-0003oW-IK
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 08:06:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mzGstZ3/0W1V6Au82cNJvdGaB8mjTx8Q0sfDlMSCRj+3iputeXDQQvChsk1NMaZI/BF6NnC0fnsnmczgoOImWQGwN9jL21sc4lldeUewIHQVyB5m+qh6CfBV/pxY2a65HK1W8OfXnGZtSUpZGUv9loJBdD38MgBHBV+trfFQsTR3/JGjuLCgsWIceRfNeNao+IWY6QgdPyzUdnoLqympf3j2j4GJ1fONKx6DFpAPbo0bTVXcd7k7gWPbVEuSvURbEvCcmGNS3KiiTpUE9+VpiMbhsOrfc475N9MJJdWoOwyDmmSQMVtI99cmLP9JyjjbS8SJNOMpVSDKO6aotYwv9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sy2yvF7lTaSCWszw23p8+imZjaR1+UzisULwMtz5iw4=;
 b=kKQA69FzRpN/nlCYtBPhJUA3wz+Aou7xvHZSOvgyL+M7AlWaHLiLH50lDRgKsZYo13XtC3YxkDj46SddX9e3l6qeG/CvKsS3XN/Q7S/egn8KdF1o8g5KqdQWvS0MMMMCLyj90yhMctbeE+bvY6DGjicnJRJbOR8Za5Kvu9gTiAv02A7WHQHYB+IrsV8mwSSHePGAlpCTFY5Io6HJv3msPR9tMQdIAew2quA1XH5n933b8eMrZxPjKEVj82x4HSN1rKkL5tN6T9s/uQK9IlV5z6AWKoOCc4uZC5/J2vDg3o22LlduQHyZIPDWGN82b84I1+3mr7gdTMDTrqwEmVo9jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sy2yvF7lTaSCWszw23p8+imZjaR1+UzisULwMtz5iw4=;
 b=HWaeSx3byvzYw7l2OZaFQGj/8zrzmUV2Hco+SnonsPDVmDse+8QQrFSI7HPnh/qvTVH/8/oH3pu3Hoo4bAqu98of8ME9iyKGG1QOZqnHT0pQibbyJH5EWNRQ1vSON7BzMBd4AqpXBnOk4noCUMiWdw//ROv5UCyUHGdZ7kBKx4k=
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (20.179.235.146) by
 VE1PR04MB6670.eurprd04.prod.outlook.com (20.179.233.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Thu, 5 Dec 2019 08:06:17 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::bd10:c4cb:c1ed:97df]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::bd10:c4cb:c1ed:97df%3]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 08:06:17 +0000
From: Jun Li <jun.li@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: [PATCH 1/3] clk: imx8mn: correct the usb1_ctrl parent to be usb_bus
Thread-Topic: [PATCH 1/3] clk: imx8mn: correct the usb1_ctrl parent to be
 usb_bus
Thread-Index: AQHVq0LeKcaKVFbYuE65++4CmZUlQQ==
Date: Thu, 5 Dec 2019 08:06:17 +0000
Message-ID: <1575533029-13049-1-git-send-email-jun.li@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0050.apcprd03.prod.outlook.com
 (2603:1096:202:17::20) To VE1PR04MB6528.eurprd04.prod.outlook.com
 (2603:10a6:803:127::18)
authentication-results: spf=none (sender IP is ) smtp.mailfrom=jun.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c55002d9-de23-4e1b-cfe2-08d7795a0132
x-ms-traffictypediagnostic: VE1PR04MB6670:|VE1PR04MB6670:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB66701FFC26BF582DC258C33D895C0@VE1PR04MB6670.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(396003)(136003)(346002)(199004)(189003)(6506007)(66446008)(7416002)(50226002)(8936002)(81166006)(81156014)(8676002)(7736002)(186003)(4326008)(102836004)(14444005)(26005)(66476007)(66556008)(66946007)(305945005)(64756008)(6512007)(2501003)(316002)(5660300002)(36756003)(71200400001)(71190400001)(110136005)(54906003)(52116002)(99286004)(2201001)(86362001)(3846002)(14454004)(2906002)(25786009)(6116002)(44832011)(6486002)(478600001)(2616005)(6436002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6670;
 H:VE1PR04MB6528.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gj1BiscJ/+ki/HSlp+uvZKkeFSckEP1sZr8+iTBFT5nAVDuJVI9tkLb1c/25+QJxMg2JJycdvp1e2/Q0gSiZEctPi3unAcJzMKXJorfJWq1Bx5TS0tjWoUCupnCr08pnxQyaEu8Ad3Xxahyy74jhKIrYrH4TLl2az3fW4N0sDF+dk1zuk3QP88jndjiU07xlgPmG8kB0IPwHrznMRhzzkoGyHNdPALH8GLBLGUu4qHe5nggYgNCmPKh9AIlYMahntdgpXRla3zgCC2Wl90wrfbq4j79B4aJ7iZabypV7c/XvxG4ECnkAJ+sBbSF/2+uxrTzUMgx05fcH2UqRVVLi6tXCvkHFj11Ff7R7FkrIYJNLP8iOEyR+m4aezGUl2OTlFxBsVVVjPlw2gXnrYSfeML47Rd5q9/wK5JF+9zoCJlemIaC1t0lyr9loMspMDOqrBGUd+LH1ulCZdiqdtxkjL3m8uALC+c5KI0LQDPi5IN1n2jlvViimQj3Jp7EcFLFu
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c55002d9-de23-4e1b-cfe2-08d7795a0132
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 08:06:17.6006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f8XOIeGKNYDLDSirNJWKD9kTdgmLQ+F2k288x6uubQfQvlabu7lAK205bfugvbMx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_000625_622085_26499155 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Li Jun <jun.li@nxp.com>

Per latest imx8mn datasheet of CCM, the parent of usb1_ctrl_root_clk
should be usb_bus.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 drivers/clk/imx/clk-imx8mn.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 9f5a5a5..1c0d5e9 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -512,7 +512,7 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MN_CLK_UART2_ROOT] = imx_clk_gate4("uart2_root_clk", "uart2", base + 0x44a0, 0);
 	clks[IMX8MN_CLK_UART3_ROOT] = imx_clk_gate4("uart3_root_clk", "uart3", base + 0x44b0, 0);
 	clks[IMX8MN_CLK_UART4_ROOT] = imx_clk_gate4("uart4_root_clk", "uart4", base + 0x44c0, 0);
-	clks[IMX8MN_CLK_USB1_CTRL_ROOT] = imx_clk_gate4("usb1_ctrl_root_clk", "usb_core_ref", base + 0x44d0, 0);
+	clks[IMX8MN_CLK_USB1_CTRL_ROOT] = imx_clk_gate4("usb1_ctrl_root_clk", "usb_bus", base + 0x44d0, 0);
 	clks[IMX8MN_CLK_GPU_CORE_ROOT] = imx_clk_gate4("gpu_core_root_clk", "gpu_core_div", base + 0x44f0, 0);
 	clks[IMX8MN_CLK_USDHC1_ROOT] = imx_clk_gate4("usdhc1_root_clk", "usdhc1", base + 0x4510, 0);
 	clks[IMX8MN_CLK_USDHC2_ROOT] = imx_clk_gate4("usdhc2_root_clk", "usdhc2", base + 0x4520, 0);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
