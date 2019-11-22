Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A9E106C37
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:50:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+up+9gvwiJPrYYP2fsKDCyt7LhAn7WOcUBU517nI6jg=; b=WT/3LAmY2NXiAG
	piSWjVhNK+8lRSKkLBilLEupQzmUoKlfSY3BDxWX/xTrv3s0TRuTcn9Y5sHMW82qgm28l/HCeBHtq
	06vxSXR9WvnfObIQDCQHpFrjqdLLKUV9t2RH8J8P2437A1cHNsN8zKGDmpRWtSCzyAy6XIPsNU+uS
	EDWs8p9s1lQRFt2RbK4yRqXxXrK26lAVGxhE4Q3B5sMHI7m2xSVowUQ2HvvcCZQSkwpUorpnjllV2
	BfvO94vv2RRtQaQ7PvI2LqO7xUln+q/r49Ddt403WPh5AIzti4T8EUXHvnRPL5tduv1g4IjWHk2xP
	jtkjPj7UCUDZYL57KrlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6WP-0004Wh-1G; Fri, 22 Nov 2019 10:50:41 +0000
Received: from mail-eopbgr60066.outbound.protection.outlook.com ([40.107.6.66]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6UI-0001gd-K6
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:48:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fQzwECHSADIN4sL7QNLZRAl0o936yddiuSLoG5nYCVoMdtfLiuyU+WxSm3zvnF3GlyCAs0kUjKF7KHvIzbClBRut2nrSvwtHzRQAQ6vWSbQQLijhz3pvXua/FfAU8wubbKe0zwVRHiN+Sw5goBXFto9zKhYYISEtdGXYH8do3b3oljC4oTl1uRKVQlHPDXupuxAKKNaUEYHOBvlpiglkVYgJMgYzVpPeBKyhX4iFPWbg6l0RlLwKS5IbTr0Kx2bcnOzsm3WKf8WXZ2f8FmD2sunbgzvk0KjgZcURV+aSeKpz6vBsF9u4aIr20z8OPc8eR162rXDM7A/2mSY//dbvzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CPuYv25hNO5SD3jJI5LLppub0qnpHRLE7dhh40VZzOw=;
 b=bDVm/R03yIxIpg9x7Av9Rl8VZQKszNKBFDdbIkG8vwy4xuX2NXTahR1d+KBTagSMV4DfnGPBRyQno4m9nliDFVPkQdSU3fZC4H1axb1JldJsh13LWoKBlVU+TqFxy5vSl2IWu8oDv5K9m5iWBHiWKgFaud8MqrejUnsAZkbQTUtGD6+sa3MB4EONDiUInqKKiNGBpBUwBuroyWwUqyEl3M3CyVM1IPaRSD4ivxX3MeHsF07oVuy5ozDeaXhGPus5ycVaFWaaezkfRbaSJZ3e/e9KGNwstjuullc6Ic7YWRW9Wd7nIHuwIxb+SmYCaAOg3lIaeEUygwfSkyeS8TRDDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CPuYv25hNO5SD3jJI5LLppub0qnpHRLE7dhh40VZzOw=;
 b=aXdnFEhEpbZqTiaDUejUuM+45AiWAl3uJdWV3ef0Hgxb4CVry7Sz256OLar6H/w0PdSHNlVGITkPil0632OjiAvx2NeNF1e+3fY/SGE5IFlJhcbXMxPG9vffQFdPo8tyWpLDkhzUolUIRChyOZjUXAxeIy5Lz9A2/bZ5f3juiw0=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6961.eurprd04.prod.outlook.com (52.132.212.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Fri, 22 Nov 2019 10:48:19 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2474.019; Fri, 22 Nov 2019
 10:48:19 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v2 09/11] clk: imx: Rename the imx_clk_pfdv2 to imply it's
 clk_hw based
Thread-Topic: [PATCH v2 09/11] clk: imx: Rename the imx_clk_pfdv2 to imply
 it's clk_hw based
Thread-Index: AQHVoSJZkx/MqnVoLEGsmkLg5Tj5Mw==
Date: Fri, 22 Nov 2019 10:48:18 +0000
Message-ID: <1574419679-3813-10-git-send-email-abel.vesa@nxp.com>
References: <1574419679-3813-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1574419679-3813-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0402CA0020.eurprd04.prod.outlook.com
 (2603:10a6:208:15::33) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.7.4
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fb02c53a-d149-4c19-393b-08d76f397c39
x-ms-traffictypediagnostic: AM0PR04MB6961:|AM0PR04MB6961:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6961AC0CA71826AC80A44B69F6490@AM0PR04MB6961.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(39860400002)(396003)(346002)(189003)(199004)(186003)(44832011)(446003)(11346002)(2616005)(52116002)(76176011)(66446008)(64756008)(66556008)(66476007)(7736002)(478600001)(6636002)(36756003)(5660300002)(6506007)(26005)(2906002)(86362001)(14454004)(102836004)(386003)(305945005)(25786009)(66946007)(256004)(110136005)(8936002)(50226002)(6116002)(316002)(99286004)(54906003)(81166006)(81156014)(8676002)(6436002)(6512007)(4326008)(71190400001)(3846002)(71200400001)(66066001)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6961;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PI0JsTmpgUOzaFShL67BdJWOJw3u3TwPnurufj2FestnUG1VPj659XhGCZhsjtS6+Q6+Y6iM14fiPCutSobvBmL5VEvL7TTauJAY1g3i9aZeve3fE63RMdkdUJ+UCHs3mOnX96l66Bm5xXx8JDO6l6DEHTzdVgy7kqCVSo57TYo7LaJUIDbbfTMF59feWxi17Y3Dq7jGqLBYnFeVtTe3Cf8qzq0+0fNhg4a+iLhZ10chh2C7JFDyajTSKs9Y0OKUIzhPhlkdhAZc+0k7B11eq5QK7RFXq7p5yTq+iHADnfMJ2u3Eh70rkbmY45972H9TDQO33Uu9q/iyEgi/votYyVtb1v44OBOmSeeHz49qPz7NlBltSHXMIHVu2wUms8QhLaQdLMMHB4cLObxO3F/hGzDJZPxC9hPS2hAIvDNxW47lQO0+1sB6lCFmBsnsiI2d
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb02c53a-d149-4c19-393b-08d76f397c39
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 10:48:18.5767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BmeWlIN0USc8cOdgzCL8vzEGP0AnKwUa/UOBSR9Y6O2M1tpiOg4i79mvASUhNyVxtoCI7bTYoff8+yV7UOPT7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024830_748031_ECD1A538 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Renaming the imx_clk_pfdv2 register function to imx_clk_hw_pfdv2 to be
more obvious it is clk_hw based.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx7ulp.c | 16 ++++++++--------
 drivers/clk/imx/clk-pfdv2.c   |  2 +-
 drivers/clk/imx/clk.h         |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index afd2c2c..314f9c2 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -94,16 +94,16 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4("spll",  "spll_pre_div", base + 0x600);
 
 	/* APLL PFDs */
-	clks[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
-	clks[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_pfdv2("apll_pfd1", "apll", base + 0x50c, 1);
-	clks[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_pfdv2("apll_pfd2", "apll", base + 0x50c, 2);
-	clks[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_pfdv2("apll_pfd3", "apll", base + 0x50c, 3);
+	clks[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_hw_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
+	clks[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_hw_pfdv2("apll_pfd1", "apll", base + 0x50c, 1);
+	clks[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_hw_pfdv2("apll_pfd2", "apll", base + 0x50c, 2);
+	clks[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_hw_pfdv2("apll_pfd3", "apll", base + 0x50c, 3);
 
 	/* SPLL PFDs */
-	clks[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_pfdv2("spll_pfd0", "spll", base + 0x60C, 0);
-	clks[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_pfdv2("spll_pfd1", "spll", base + 0x60C, 1);
-	clks[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_pfdv2("spll_pfd2", "spll", base + 0x60C, 2);
-	clks[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_pfdv2("spll_pfd3", "spll", base + 0x60C, 3);
+	clks[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_hw_pfdv2("spll_pfd0", "spll", base + 0x60C, 0);
+	clks[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_hw_pfdv2("spll_pfd1", "spll", base + 0x60C, 1);
+	clks[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_hw_pfdv2("spll_pfd2", "spll", base + 0x60C, 2);
+	clks[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_hw_pfdv2("spll_pfd3", "spll", base + 0x60C, 3);
 
 	/* PLL Mux */
 	clks[IMX7ULP_CLK_APLL_PFD_SEL]	= imx_clk_hw_mux_flags("apll_pfd_sel", base + 0x508, 14, 2, apll_pfd_sels, ARRAY_SIZE(apll_pfd_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
diff --git a/drivers/clk/imx/clk-pfdv2.c b/drivers/clk/imx/clk-pfdv2.c
index a03bbed..de93ce7 100644
--- a/drivers/clk/imx/clk-pfdv2.c
+++ b/drivers/clk/imx/clk-pfdv2.c
@@ -166,7 +166,7 @@ static const struct clk_ops clk_pfdv2_ops = {
 	.is_enabled     = clk_pfdv2_is_enabled,
 };
 
-struct clk_hw *imx_clk_pfdv2(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
 			     void __iomem *reg, u8 idx)
 {
 	struct clk_init_data init;
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 5ca4615..c9f626e 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -199,7 +199,7 @@ struct clk_hw *imx_clk_hw_gate_exclusive(const char *name, const char *parent,
 struct clk_hw *imx_clk_hw_pfd(const char *name, const char *parent_name,
 		void __iomem *reg, u8 idx);
 
-struct clk_hw *imx_clk_pfdv2(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
 			     void __iomem *reg, u8 idx);
 
 struct clk_hw *imx_clk_hw_busy_divider(const char *name, const char *parent_name,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
