Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACBF9A456
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 02:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OGrCrLYxxpd9DNuO89Hvtd9t/17p7sXo729+OYShz/A=; b=pf9cnwl+kBes5m
	vZXyY6MW/lEIYl5wGlS7CPsl0x23UXtgteB7+6KSVFisVXl+a7VHIqCjCr7KA95rkz/eP06bzQLGA
	a2asGAXImlmFJ12weZ/LIbZ8aGuwE6pcArtZCOba9t49Q6Emsrv9UJV3950Zj0IPdBTYQh+JmOKAM
	wqLOE+uDILkn4C9ez+E1wnbwlzSeBKrWUpX8+OZSCkslozXvlsqYHo6LmwnM2FevEs+Tr5MAY8kYd
	9NpTrg3Kk302/Xw5ZqwhPW656sWrhITh2Zav66ITb1qFOEgPxbFkGZckJSvzdSGq7Qq3KKYBVnX6/
	3NgUUTiwySjbrJ+wr6BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0xaK-00009C-Uw; Fri, 23 Aug 2019 00:37:45 +0000
Received: from mail-eopbgr140040.outbound.protection.outlook.com
 ([40.107.14.40] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0xaC-00008d-E1
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 00:37:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O9v6AO9T6codJWXFLrLCx/w22zjsYHHA2o/iR7JRybJiGHiUksnluXtK3x6JABSQaIdBZQnzy79rkCjDguqxekymGhLiPizeub3Ypym4Wn/ZFKytZR5wsd8M/vhHjcr3NDyif+CuyYrZ1BeKrIQ4fw/Vs5o6a4Cv4t5KtTJb9VK7TIxMBmiBN35+SKrOUn72K9MawjoFncGhr7X4AhpLXC1Wo+gKax5ty3yXhCYpyazA9XdYeZbHglVoXeb4rH3OvIl51+m/PlKRkZNJVvvpB4Zlnm/1PSaCWA8G2tAlFFC+ItB/MDoXaIL+FN2xR42DJ7Pr59b/M3mVe28IY/I7CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uYVZrKQAGhh8etw/MzE10Scz2iXH0tfLC8zHP3R/PPk=;
 b=a39Ca4gpAH62fYAQ+B9U6Hxeii///8fiSwkjrQTdQRa5o+m4ovDRexX+0ZDgze3qwKGecYSFJogUFVyeNLzAJtwqKnCfll/Y/C4m6YsW8Hz5U+TeK15zByldg55gWfpmLtJ4ajzCCk8danMT2Vz0ntQTB1IELCC83OdopG6W4PqSczJdKtH1n1BZd+JLStGHLLvmKwSGicmgrGDQagHkNqtfVgd61N8m1tkP4KuKuSrsP0pXvHmuQLDF9/aTATKvWYMB1dsc4gVJj1bYi3Kr1ZpJs4Yx28z0mIGh9C4W9wkiD4TauY0bmwC07FZrRRsTbGOMoKhJ+dv0JzYnQZTDgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uYVZrKQAGhh8etw/MzE10Scz2iXH0tfLC8zHP3R/PPk=;
 b=cX0cjjJVsQ8ZEQVBObw/cTetx+zh+TPY4iM0akfcrLiyvMnUubgeIJv/bWQudugdm0CGP+T1qUazfMcBCz43cq20jwnr8Q1nvTmY2ENRgP8TZ5pXRKeedeUgtSwbVMMha6WrxgD5I9YAjQW2aKw6Q5H1H09G3UAFSf82CsrqYxI=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.34.20) by
 AM6PR04MB4662.eurprd04.prod.outlook.com (20.177.38.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Fri, 23 Aug 2019 00:37:30 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::559a:24e4:40bb:faed]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::559a:24e4:40bb:faed%7]) with mapi id 15.20.2178.018; Fri, 23 Aug 2019
 00:37:30 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Abel Vesa
 <abel.vesa@nxp.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: [PATCH 1/2] ARM: dts: imx7ulp: remove mipi pll clock node
Thread-Topic: [PATCH 1/2] ARM: dts: imx7ulp: remove mipi pll clock node
Thread-Index: AQHVWUryVFTPKJmy3EOKbGcFK1cgTg==
Date: Fri, 23 Aug 2019 00:37:30 +0000
Message-ID: <20190823003600.8317-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR06CA0232.apcprd06.prod.outlook.com
 (2603:1096:4:ac::16) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:8::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e8e10589-77ef-4d83-c1de-08d7276214b2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR04MB4662; 
x-ms-traffictypediagnostic: AM6PR04MB4662:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4662825A18C8E97BD5A10275F3A40@AM6PR04MB4662.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(376002)(346002)(366004)(199004)(189003)(2906002)(2616005)(256004)(476003)(71190400001)(71200400001)(53936002)(36756003)(2501003)(186003)(6116002)(64756008)(6506007)(3846002)(486006)(5660300002)(66446008)(386003)(66556008)(25786009)(66946007)(26005)(52116002)(102836004)(4326008)(1076003)(66066001)(8936002)(305945005)(8676002)(81156014)(81166006)(66476007)(99286004)(50226002)(7736002)(14454004)(2201001)(316002)(478600001)(54906003)(86362001)(110136005)(6486002)(6436002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4662;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XFgg5UvXbtZz1aVxGLtFYKY3tyEYMWSEKAhf39V+ozuNHU2TF+skaXhEyRrtA8apZyB0XzpJwnfIZZ5N61suC+rUg/+B89l9m3N72OJ2XaUdC+A5Xs7mqI2rONA6C93QCREN2gW8Xmn0iYUXMx1Fi3pGlabwQTCY6vdLgNZjH32ohEyXKwJCqiCE0HirIOB/Q69r24z8gR7NgbrlQoVXuRhSxbDMA1Ajd5rUN2XRLJStR0fiKhQDGAEbnlnpuV6M0CZzTf4apshZ/T45cJQqx2qtkbt6g8jHnxQyy+DqeBjhBFBqv+43AEun3d8TePMX7p5beW539veQxK+bf2OFNP5XD9mJepmuJObYoSocsGhMiOcquT9Bi3J/FeToBt9HPlo4GnRIzKjRPVVYzYDdLqFr03KDeNX1xfsK9FRaCpk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8e10589-77ef-4d83-c1de-08d7276214b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 00:37:30.6010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qivMkwhUJNyIAoxjc/G1R0tiyJdiLoB0aJC1GkeeMMWOzj0lJZB7IVz/DR5A71AKdoASJn54eAY9m3OeehvPBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4662
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_173736_578012_1D9D475E 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Jana Build <jana.build@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 LnxRevLi <LnxRevLi@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the IMX7ULP reference manual, the mipi pll
clock comes from the MIPI PHY PLL output. So it should
not be defined as a fixed clock. So remove this clock
node and all the references to it.

Signed-off-by: Fancy Fang <chen.fang@nxp.com>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index 6859a3a83750..a7e4004bf428 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -87,13 +87,6 @@
 		#clock-cells = <0>;
 	};
 
-	mpll: clock-mpll {
-		compatible = "fixed-clock";
-		clock-frequency = <480000000>;
-		clock-output-names = "mpll";
-		#clock-cells = <0>;
-	};
-
 	ahbbridge0: bus@40000000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -258,9 +251,9 @@
 			compatible = "fsl,imx7ulp-scg1";
 			reg = <0x403e0000 0x10000>;
 			clocks = <&rosc>, <&sosc>, <&sirc>,
-				 <&firc>, <&upll>, <&mpll>;
+				 <&firc>, <&upll>;
 			clock-names = "rosc", "sosc", "sirc",
-				      "firc", "upll", "mpll";
+				      "firc", "upll";
 			#clock-cells = <1>;
 		};
 
@@ -276,13 +269,12 @@
 				 <&scg1 IMX7ULP_CLK_APLL_PFD0>,
 				 <&scg1 IMX7ULP_CLK_UPLL>,
 				 <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>,
-				 <&scg1 IMX7ULP_CLK_MIPI_PLL>,
 				 <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>,
 				 <&scg1 IMX7ULP_CLK_ROSC>,
 				 <&scg1 IMX7ULP_CLK_SPLL_BUS_CLK>;
 			clock-names = "nic1_bus_clk", "nic1_clk", "ddr_clk",
 				      "apll_pfd2", "apll_pfd1", "apll_pfd0",
-				      "upll", "sosc_bus_clk", "mpll",
+				      "upll", "sosc_bus_clk",
 				      "firc_bus_clk", "rosc", "spll_bus_clk";
 			assigned-clocks = <&pcc2 IMX7ULP_CLK_LPTPM5>;
 			assigned-clock-parents = <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>;
@@ -309,13 +301,12 @@
 				 <&scg1 IMX7ULP_CLK_APLL_PFD0>,
 				 <&scg1 IMX7ULP_CLK_UPLL>,
 				 <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>,
-				 <&scg1 IMX7ULP_CLK_MIPI_PLL>,
 				 <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>,
 				 <&scg1 IMX7ULP_CLK_ROSC>,
 				 <&scg1 IMX7ULP_CLK_SPLL_BUS_CLK>;
 			clock-names = "nic1_bus_clk", "nic1_clk", "ddr_clk",
 				      "apll_pfd2", "apll_pfd1", "apll_pfd0",
-				      "upll", "sosc_bus_clk", "mpll",
+				      "upll", "sosc_bus_clk",
 				      "firc_bus_clk", "rosc", "spll_bus_clk";
 		};
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
