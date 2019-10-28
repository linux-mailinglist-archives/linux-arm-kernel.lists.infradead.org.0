Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CDCE6DCD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 09:08:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xQr9aLaqv9OGhnmmrL578tU+781joTXd1iEM49ZZsIM=; b=UCpytKN+mZ75UJ
	/CjC/aaa5KOU0y0bhrvJj6rqEaPwM0BzCIaq6zY1GSFMFueUBLpqNNFQiMyspWXfZp9UuZMjshnsJ
	2Q0Kg4fradZshDy/ncIs927lzOrvvfFdRrP2vSq6XpShePHB0aVvEMYRBJhyQ9J9Jlg38AZPOF1Vd
	4F1cJ10xjgQJ8ncyd9+KwCf07nKtBVUWQjgg6m+Onn1/OX7Mj5k/N47B73IZCcdA12iD16pWp5GRa
	mapU2Xg57Ng/Zw9tGLTRvLChdniy4V4dzIZEl8dNnEhwzo0lVfiwWbNL733GTXtrFq7sou3a5kFlA
	Lhj8UOL6SKucf3tDlz5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP04X-0001TW-Ix; Mon, 28 Oct 2019 08:08:17 +0000
Received: from mail-eopbgr30040.outbound.protection.outlook.com ([40.107.3.40]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP04M-0001Sc-1c
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 08:08:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jO1xwITKwVHXDCSePT9h932lJB+LUQ2wGUSzXGKswaVN1qpUy4iIwEJAoTLuUujiGVF6yRZwxTEi3a7QMiWsV3HwBPOdjlne0B7gsKM62YkOiDbeGXX0OLlN/hwj2gxWXvbWqYcVOxzHhhLRHeo7iqZZ7SEHcjMNk9atrBmOkf2KJZNpFX5Yd+4hz+JnHL2mSeigsyxS0hhKiRxahfbjtOFSxBYseubNuuAtQXphGymhuOPlz6rV4fkEvMXOhsaLTdu8vztnZ+Q8isvfnk3dahEfkZ/cjapAygu/mdbC+fgHWNOecilj05NBos4PB6jryph6Wn/yhtK0+nuyrgTfeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=etnnxiX0aappY7H3cw9R28vok40npa2IhbBR7c2x6Sg=;
 b=YhXhwCDGFc8lQe31ce1b1tu/0JaVWF6DPXoq8BMBRpoZm88GdTrgjSfH8jJEcKh4gl8dYByKvmx30FJBN58JkAyXmhcPAEwHnLKKX5r0u7sa42lHJ8GmsiKIqaVI+45ahMciHK/ojLklGgKgmD8ek9xKfcPJ8DX9NOy1pVFdn4kWovDti/kqML44TJ6jPR9E2O3LJT3iMfOmQyQzfavS9IjKcvLWvg/zN3C/fn+8ywIPjF2J+Ek9w/YAZhZ1gfjd+/Wyb3EWXbSSWAY3GTY5l1oBc5PiWLHXKkgZk8UKWjrg3q8td4ayTRGA4Bvp9UWVgxkWlJev1MWB648mGqtqGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=etnnxiX0aappY7H3cw9R28vok40npa2IhbBR7c2x6Sg=;
 b=bTvCIUIqkFCqLfsOvbiSHe2sbNleSF6wjuArTV5wbwzVENHSpbqiJpvt7SKBWdhCuNqGzDEoOTUOzEFca4MkXG1oHb068icuBw0t5v3lld68dpe4OWzvpmkIm62JMwoaDTwyXq7kbIyIhyBQTozqtAinZBf3Um1QxtUUZtjMXi4=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.34.20) by
 AM6PR04MB3989.eurprd04.prod.outlook.com (52.135.161.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.25; Mon, 28 Oct 2019 08:07:59 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::912a:3593:7e23:72d0]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::912a:3593:7e23:72d0%7]) with mapi id 15.20.2387.023; Mon, 28 Oct 2019
 08:07:59 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [PATCH v4] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL clock
Thread-Topic: [PATCH v4] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL
 clock
Thread-Index: AQHVjWbPxL+wRlx07k+0T7BaUjsAXA==
Date: Mon, 28 Oct 2019 08:07:59 +0000
Message-ID: <20191028080545.28275-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: HK0PR01CA0010.apcprd01.prod.exchangelabs.com
 (2603:1096:203:92::22) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:8::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 397b82d1-6384-40a4-2cac-08d75b7df230
x-ms-traffictypediagnostic: AM6PR04MB3989:|AM6PR04MB3989:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB3989EB3C653DF59CE5EC5BBEF3660@AM6PR04MB3989.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0204F0BDE2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(189003)(199004)(54534003)(25786009)(1076003)(5660300002)(6916009)(2906002)(316002)(478600001)(476003)(186003)(2616005)(36756003)(256004)(99286004)(52116002)(86362001)(81166006)(81156014)(1730700003)(8676002)(66066001)(54906003)(6436002)(2501003)(5640700003)(66556008)(4326008)(50226002)(66476007)(66946007)(64756008)(66446008)(7736002)(3846002)(6116002)(386003)(6506007)(102836004)(71200400001)(486006)(71190400001)(2351001)(26005)(6486002)(14454004)(8936002)(305945005)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB3989;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x4Z3BJ2NyFwpdArCFOc64zvPVghJ0utAUwL8b/w6CYv1XimkGiMi/WdCef7JUh9pGjLKr92VwhKBLq8cHElPykkweN42/m9gczDx1VQto776pQiwEzPjz2fFGftbp8gsN7EnA4BJsI9YgLcV/KCA88nyymUMfxRIi+UG5E/OdOdaBv3jBd0l8W4YV8+eI9e0oVmqXRan2mwnlYeqkHv8yZDJc4XFcDZ1V6rXwHm8N3CaxIG1Kv5tbFaNGtcY1PM18enB64W9f4lIEcUXGR8KEkF0ixu3nwRuxRsba4HA6FkN8QwQUIEdc0tgvFHW1lKHf4ESoJ6a/0e9qRaEJgQc5blwsDZUAkUdOO1pvYLMpFXdN7Rmmvy3Df20Y3wc2R4om7009l5bFJ8+bT6gPGAsLbnxmuhKnEWII2+Bp0IMAiTQiRiyErCIOLIaYASiobFF
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 397b82d1-6384-40a4-2cac-08d75b7df230
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2019 08:07:59.0786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WLYn74IhApjx1nti9fHXNLoubingOceOkpYZvHXY+eFKxDleZviV8pEUnzJTrvLibGizYh5q91xbVpK3iFhd9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB3989
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_010806_092754_0D446E34 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mipi pll clock comes from the MIPI PHY PLL output, so
it should not be a fixed clock.

MIPI PHY PLL is in the MIPI DSI space, and it is used as
the bit clock for transferring the pixel data out and its
output clock is configured according to the display mode.

So it should be used only for MIPI DSI and not be exported
out for other usages.

Signed-off-by: Fancy Fang <chen.fang@nxp.com>
---
ChangeLog v3->v4:
 * Add some comments to 'IMX7ULP_CLK_MIPI_PLL'
   clock.

 Documentation/devicetree/bindings/clock/imx7ulp-clock.txt | 1 -
 drivers/clk/imx/clk-imx7ulp.c                             | 3 +--
 include/dt-bindings/clock/imx7ulp-clock.h                 | 6 ++++++
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
index a4f8cd478f92..93d89adb7afe 100644
--- a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
+++ b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
@@ -82,7 +82,6 @@ pcc2: pcc2@403f0000 {
 		 <&scg1 IMX7ULP_CLK_APLL_PFD0>,
 		 <&scg1 IMX7ULP_CLK_UPLL>,
 		 <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>,
-		 <&scg1 IMX7ULP_CLK_MIPI_PLL>,
 		 <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>,
 		 <&scg1 IMX7ULP_CLK_ROSC>,
 		 <&scg1 IMX7ULP_CLK_SPLL_BUS_CLK>;
diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 2022d9bead91..459b120b71d5 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -28,7 +28,7 @@ static const char * const scs_sels[]		= { "dummy", "sosc", "sirc", "firc", "dumm
 static const char * const ddr_sels[]		= { "apll_pfd_sel", "upll", };
 static const char * const nic_sels[]		= { "firc", "ddr_clk", };
 static const char * const periph_plat_sels[]	= { "dummy", "nic1_bus_clk", "nic1_clk", "ddr_clk", "apll_pfd2", "apll_pfd1", "apll_pfd0", "upll", };
-static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk", "mpll", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
+static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk", "dummy", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
 static const char * const arm_sels[]		= { "divcore", "dummy", "dummy", "hsrun_divcore", };
 
 /* used by sosc/sirc/firc/ddr/spll/apll dividers */
@@ -75,7 +75,6 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_SOSC]		= imx_obtain_fixed_clk_hw(np, "sosc");
 	clks[IMX7ULP_CLK_SIRC]		= imx_obtain_fixed_clk_hw(np, "sirc");
 	clks[IMX7ULP_CLK_FIRC]		= imx_obtain_fixed_clk_hw(np, "firc");
-	clks[IMX7ULP_CLK_MIPI_PLL]	= imx_obtain_fixed_clk_hw(np, "mpll");
 	clks[IMX7ULP_CLK_UPLL]		= imx_obtain_fixed_clk_hw(np, "upll");
 
 	/* SCG1 */
diff --git a/include/dt-bindings/clock/imx7ulp-clock.h b/include/dt-bindings/clock/imx7ulp-clock.h
index 6f66f9005c81..e9ef62f211fe 100644
--- a/include/dt-bindings/clock/imx7ulp-clock.h
+++ b/include/dt-bindings/clock/imx7ulp-clock.h
@@ -49,7 +49,13 @@
 #define IMX7ULP_CLK_NIC1_DIV		36
 #define IMX7ULP_CLK_NIC1_BUS_DIV	37
 #define IMX7ULP_CLK_NIC1_EXT_DIV	38
+
+/* mpll clock is a special clock comes from
+ * mipi DPHY PLL and should be used only for
+ * mipi dsi instead of any other peripheral.
+ */
 #define IMX7ULP_CLK_MIPI_PLL		39
+
 #define IMX7ULP_CLK_SIRC		40
 #define IMX7ULP_CLK_SOSC_BUS_CLK	41
 #define IMX7ULP_CLK_FIRC_BUS_CLK	42
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
