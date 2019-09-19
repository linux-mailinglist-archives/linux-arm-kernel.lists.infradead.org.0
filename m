Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288FFB71CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 05:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WwWCvOvIhJm9U90tILh/NV6F+3JKqxhKVwccugLaXW0=; b=IngX8NF4u3H+Ig
	hPEuE40O3lT823HSia8dPCA3ZOIB1sYF1OfYqw/3kEU+H5kJFTVCZ1VuGnDDujSE8JVGicJWSrsBZ
	ktQbQ72EARCYQsvnZ7JxtnULM+iD75ylleX8/rh2+P4qjaP7zHsBmMKAZoX83Z98WkVb9N6m17VV+
	YCyF1lgefv5qrb35GrPsn9bZP5Pu8cb+id9xW1JQFqQJHNn8a3oY/oMkpH9sBP60JLkRyyVpZARDz
	5kKIcudESndntzTdDl9qTeu7JMl5vXvg70EkyD+SKZZc8f+Z1tiGQhE3Q1kC1HkheZjj85OfAfJQS
	JB7Mr+0ODfZ3Y62OteuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAmqi-0001Wb-HU; Thu, 19 Sep 2019 03:11:16 +0000
Received: from mail-eopbgr20057.outbound.protection.outlook.com ([40.107.2.57]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAmqM-0001Vb-5F
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 03:10:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xhz/EcSPUknWs0Jc5ynriyrJpoW+Cgy0vyNNFwxkVlrhyiGhsJod3LLjXeUalULlVAmt4UfJ4sEEUiRVDJGSL/TgBMv+l2S8yr8Wx2SSNCN5AynVFSN2ZO+C51DTnM+8eCWoTKP0tSmLIq5x3VWcRe+5e4uA+8RzdogYnPyVmgDLUyC2ROB9g5XS82QQ9BYMKLXrxkIkaB3cyPqmRvTzNIlej5FNQBGkD+DkOHceWp7NQp8zeNy5qo0xXB5hpPi/AmDfJQf0ljOK5KJxh5MKHQrhM6hnmMGx90HhPUVHWYf8sxY058w8v467aG9UWc9JvzJQXHubYw4c7y9R0yVVeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eOGt3H3vBAfiZrsFDseE/JdGtm+1S4KWNhXyHFTMbuk=;
 b=Ei1hJe8ixQr3nmhorfado/SwB3iIHf+4XJqmao5H/+KJJZnpOY4N0hs1v7n1JSQWr7ONO98Gl5zNXup6renWTGY9QPc4zPROd2rlY0SNpwwH8oCVNbgVJHFxt7aSUi/PzA1Ts/3KFEx+yb5ln06litbLijADN/NaJBaJlUv8rhu8YwexCVdFr3QuKF5gXB3piQoV8G9QrsHl65WXalI2bwIMRuCTWWYCXw5edUHu27/LcB8uMTSkv5S7tQHq/7BhIyrICH++4OSbmo5lyijNmWWBEl5f2Is4f7Bz/ualnaoxQ79ld8gIt9yctJUchsENFYh48muyQsxscgysOxUryg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eOGt3H3vBAfiZrsFDseE/JdGtm+1S4KWNhXyHFTMbuk=;
 b=DXbjND3VPfKDM9/WVUp3rBRPrdzXbHs5mXvgg+XLplPXnA8MnRyNqGc387+FPBeaHYp3g9yjM2frQrMP3bbnFvQMPeUc6H4fp3Bc/Mk4bzxfOgdY99g+2dit97lrpWLbIA3LbfUMf0lukgvz2DM+Q7hMI2X1QQutzvrcj+ErY6s=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.34.20) by
 AM6PR04MB3992.eurprd04.prod.outlook.com (52.135.169.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Thu, 19 Sep 2019 03:10:44 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::3069:86de:e199:8abe]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::3069:86de:e199:8abe%7]) with mapi id 15.20.2263.023; Thu, 19 Sep 2019
 03:10:44 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [PATCH v2] clk: imx7ulp: remove IMX7ULP_CLK_MIPI_PLL clock
Thread-Topic: [PATCH v2] clk: imx7ulp: remove IMX7ULP_CLK_MIPI_PLL clock
Thread-Index: AQHVbpfTBWkVGhuNzkmN4Sgwz3kphA==
Date: Thu, 19 Sep 2019 03:10:44 +0000
Message-ID: <20190919030912.16957-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: HK2PR02CA0178.apcprd02.prod.outlook.com
 (2603:1096:201:21::14) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:8::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1d2c498-d3e9-4d83-cab7-08d73caef60f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB3992; 
x-ms-traffictypediagnostic: AM6PR04MB3992:|AM6PR04MB3992:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB399227AF633B36F5D56C9A3DF3890@AM6PR04MB3992.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(366004)(346002)(396003)(39860400002)(199004)(189003)(54534003)(8936002)(186003)(50226002)(1730700003)(8676002)(81156014)(81166006)(14454004)(66556008)(66446008)(64756008)(66476007)(66946007)(1076003)(4326008)(102836004)(52116002)(25786009)(386003)(3846002)(2351001)(2906002)(6506007)(6116002)(6916009)(26005)(316002)(478600001)(5640700003)(2501003)(6486002)(476003)(6436002)(86362001)(54906003)(486006)(7736002)(5660300002)(36756003)(2616005)(305945005)(99286004)(256004)(6512007)(71190400001)(71200400001)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB3992;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Si118vHcMuzFWwfS3xY/gLGeqUGe0WzoKxCUmhTTUAgdY426kK2TAsD2OSm0B89PdN2rSFUXKjOH1JS2zjj1aDD/nbYqeycwfuMDegyBbfPRWDK1YpdnFM5F3IGF4qrONAMsDiWDxCRD1EwRuFN2buLCDW3Uc6IpHnJbBq2pzdihTm2HNLCuAERoIZ1XZSuHAR1xG23jOAxfPlqgBoi7rlwmuqakAYNU4Pf9lAJ14wpMypKBkFS2T4GokvIkCa4Kfa/vXgX8FFuDbml6tg1GfziFUd+LSMEJuJZuXQAiWRa9FlubAIQMu1w6Tzf5GeQ/Yw892UcBUWSRI8LcaiAm7mAkxus1ctQPuwFjnUtItAf8RLTUvF1GCfWWDigoHZuKGbaf5JogeYgZ2dA2mwo0dKuyinV+XkZ57P4nbDs9+i0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1d2c498-d3e9-4d83-cab7-08d73caef60f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 03:10:44.7909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BAcDs2qcKUpykHxXkkCBqdMjwgi46D9zETJn3oyP1dL+EE441lPhl2hFyuYG+wa0CR8mVCWQnh4JbJmeoDhrOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB3992
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_201054_206787_5F6433F1 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
ChangeLog v1->v2:
 * Keep other clock indexes unchanged as Shawn suggested.

 Documentation/devicetree/bindings/clock/imx7ulp-clock.txt | 1 -
 drivers/clk/imx/clk-imx7ulp.c                             | 3 +--
 include/dt-bindings/clock/imx7ulp-clock.h                 | 1 -
 3 files changed, 1 insertion(+), 4 deletions(-)

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
index 995a4ad10904..936c39f767df 100644
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
index 6f66f9005c81..a39b0c40cb41 100644
--- a/include/dt-bindings/clock/imx7ulp-clock.h
+++ b/include/dt-bindings/clock/imx7ulp-clock.h
@@ -49,7 +49,6 @@
 #define IMX7ULP_CLK_NIC1_DIV		36
 #define IMX7ULP_CLK_NIC1_BUS_DIV	37
 #define IMX7ULP_CLK_NIC1_EXT_DIV	38
-#define IMX7ULP_CLK_MIPI_PLL		39
 #define IMX7ULP_CLK_SIRC		40
 #define IMX7ULP_CLK_SOSC_BUS_CLK	41
 #define IMX7ULP_CLK_FIRC_BUS_CLK	42
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
