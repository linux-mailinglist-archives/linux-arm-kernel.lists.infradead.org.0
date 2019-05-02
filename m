Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C4C114EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0H3tvOGHmqPY9oavr6FjjVlVYiKoew0PukXcBvqVANQ=; b=XPGDUnD/Ke2Tmv
	Mi194BTamh7Lebnz5y05WoAjIM0tEG8tKSHKnXGtur1ROlucDoX4pjkMyEYpbT67kfeys5w28t6w/
	koYk60REf2DKeZaIYZpWt43cxRtFKhtJJDpGxLdwDbjopDIycE2UCsGpMIz15orhx04GNacv8LMSz
	xtvcBpLoxfrYYVdh/CbsCTzTaFdzOmf6IoH6Ay4yVmP16gq+FUHkIC8CST2O2diWohxXee8HoK18s
	j7lnF1KUFx2AvlcoiPpK1TROqFvBMUA5E+sEJS8TPgnyVGclNSaGOWtMpO9ay9iXgfIQRwLaU36iA
	TM/pu+vHllB4EVvpt2Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6mM-0008Kv-HD; Thu, 02 May 2019 08:09:18 +0000
Received: from mail-eopbgr30082.outbound.protection.outlook.com ([40.107.3.82]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6kD-0005ic-Kd
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:07:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8dyHccnhXSaC+mylhHNrxMaF/2aNuCTj1RDeALm2l20=;
 b=hVyR1NcBpGRaiTQyK+mQrStxZ8Ek5CV2eslCeNcOqyqvrQwzdVvVG+nCZmY6iLeWuxz0COpknOSO65uGkVy9amv6tPp/KLPzdLJAnLPf9vixO3FDgDth8JnDM9aMLDoP4FIlQ+aIcqkVycPvK9gYgNOjBUfvmikU9IxEHJmdX1I=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6161.eurprd04.prod.outlook.com (20.179.36.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Thu, 2 May 2019 08:06:52 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:52 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 14/18] clk: imx6sl: Switch to clk_hw based API
Thread-Topic: [PATCH v2 14/18] clk: imx6sl: Switch to clk_hw based API
Thread-Index: AQHVAL4A+y1uozMkekGGFrjbuPNqYg==
Date: Thu, 2 May 2019 08:06:52 +0000
Message-ID: <1556784376-7191-15-git-send-email-abel.vesa@nxp.com>
References: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0041.eurprd05.prod.outlook.com
 (2603:10a6:800:60::27) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5dd29950-2c6f-4169-8e3b-08d6ced52296
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6161; 
x-ms-traffictypediagnostic: AM0PR04MB6161:
x-microsoft-antispam-prvs: <AM0PR04MB6161AA7846935688A9B84B6AF6340@AM0PR04MB6161.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(376002)(136003)(39860400002)(199004)(189003)(30864003)(64756008)(66476007)(66446008)(66556008)(66946007)(73956011)(110136005)(54906003)(5660300002)(6512007)(68736007)(53936002)(53946003)(316002)(386003)(6506007)(26005)(2906002)(186003)(478600001)(102836004)(6436002)(76176011)(52116002)(99286004)(66066001)(6116002)(3846002)(14454004)(25786009)(4326008)(36756003)(256004)(14444005)(86362001)(81156014)(486006)(8676002)(44832011)(81166006)(8936002)(7736002)(446003)(11346002)(2616005)(50226002)(476003)(305945005)(6486002)(71190400001)(71200400001)(32563001)(559001)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6161;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wE2jM5w4L1vLAOAGcjoDfEq+EyHgWz6B7zguwfacAO/8qNYZ5yH2og5nHhR0NadT7qzA/WmJxgnucch9cc4/fYqv0i+3peD6fWNZwBIv6jKeYPNIGhwa1Dc5u2EJptiZQcsd/v+4+6z+VmZ3vunUnwpIH0GNBQbU9dmyBCfYm82rHq2dPU9GjMbizqXF37Nur1nB1NoSWsE60++OjYkjNGqYxFKWMEwaXGi9KJjYtT6e1C7hYiB09mQHlPKi0Hu6v5XmTdNFILJTFlm7zRl7OZv77KwYzqs7I9ncs4+gHSJwF5dD7Pj9LWuh0mut+hPHwT0qQCPxMrhq/xpWIM03/Ytw3s1G/Yx3XwZKh+qpHvXR7Ar2WkWrcUB+Ahszrf5t55yILWc+GpbuCzuzlyMHjnd5ou7IQL1y43ENsVH52j4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dd29950-2c6f-4169-8e3b-08d6ced52296
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:52.5430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010706_974638_09ED9047 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch the entire clk-imx6sl driver to clk_hw based API.
This allows us to move closer to a clear split between
consumer and provider clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-imx6sl.c | 404 ++++++++++++++++++++++---------------------
 1 file changed, 209 insertions(+), 195 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6sl.c b/drivers/clk/imx/clk-imx6sl.c
index e13d881..71a2d67 100644
--- a/drivers/clk/imx/clk-imx6sl.c
+++ b/drivers/clk/imx/clk-imx6sl.c
@@ -101,8 +101,8 @@ static unsigned int share_count_ssi2;
 static unsigned int share_count_ssi3;
 static unsigned int share_count_spdif;
 
-static struct clk *clks[IMX6SL_CLK_END];
-static struct clk_onecell_data clk_data;
+static struct clk_hw **hws;
+static struct clk_hw_onecell_data *clk_hw_data;
 static void __iomem *ccm_base;
 static void __iomem *anatop_base;
 
@@ -183,74 +183,84 @@ void imx6sl_set_wait_clk(bool enter)
 		imx6sl_enable_pll_arm(false);
 }
 
-static struct clk ** const uart_clks[] __initconst = {
-	&clks[IMX6SL_CLK_UART],
-	&clks[IMX6SL_CLK_UART_SERIAL],
-	NULL
+static const int uart_clk_ids[] __initconst = {
+	IMX6SL_CLK_UART,
+	IMX6SL_CLK_UART_SERIAL,
 };
 
+static struct clk **uart_clks[ARRAY_SIZE(uart_clk_ids) + 1] __initdata;
+
 static void __init imx6sl_clocks_init(struct device_node *ccm_node)
 {
 	struct device_node *np;
 	void __iomem *base;
 	int ret;
+	int i;
+
+	clk_hw_data = kzalloc(struct_size(clk_hw_data, hws,
+					  IMX6SL_CLK_END), GFP_KERNEL);
+	if (WARN_ON(!clk_hw_data))
+		return;
+
+	clk_hw_data->num = IMX6SL_CLK_END;
+	hws = clk_hw_data->hws;
 
-	clks[IMX6SL_CLK_DUMMY] = imx_clk_fixed("dummy", 0);
-	clks[IMX6SL_CLK_CKIL] = imx_obtain_fixed_clock("ckil", 0);
-	clks[IMX6SL_CLK_OSC] = imx_obtain_fixed_clock("osc", 0);
+	hws[IMX6SL_CLK_DUMMY] = imx_clk_hw_fixed("dummy", 0);
+	hws[IMX6SL_CLK_CKIL] = imx_obtain_fixed_clock_hw("ckil", 0);
+	hws[IMX6SL_CLK_OSC] = imx_obtain_fixed_clock_hw("osc", 0);
 	/* Clock source from external clock via CLK1 PAD */
-	clks[IMX6SL_CLK_ANACLK1] = imx_obtain_fixed_clock("anaclk1", 0);
+	hws[IMX6SL_CLK_ANACLK1] = imx_obtain_fixed_clock_hw("anaclk1", 0);
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx6sl-anatop");
 	base = of_iomap(np, 0);
 	WARN_ON(!base);
 	anatop_base = base;
 
-	clks[IMX6SL_PLL1_BYPASS_SRC] = imx_clk_mux("pll1_bypass_src", base + 0x00, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SL_PLL2_BYPASS_SRC] = imx_clk_mux("pll2_bypass_src", base + 0x30, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SL_PLL3_BYPASS_SRC] = imx_clk_mux("pll3_bypass_src", base + 0x10, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SL_PLL4_BYPASS_SRC] = imx_clk_mux("pll4_bypass_src", base + 0x70, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SL_PLL5_BYPASS_SRC] = imx_clk_mux("pll5_bypass_src", base + 0xa0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SL_PLL6_BYPASS_SRC] = imx_clk_mux("pll6_bypass_src", base + 0xe0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SL_PLL7_BYPASS_SRC] = imx_clk_mux("pll7_bypass_src", base + 0x20, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SL_PLL1_BYPASS_SRC] = imx_clk_hw_mux("pll1_bypass_src", base + 0x00, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SL_PLL2_BYPASS_SRC] = imx_clk_hw_mux("pll2_bypass_src", base + 0x30, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SL_PLL3_BYPASS_SRC] = imx_clk_hw_mux("pll3_bypass_src", base + 0x10, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SL_PLL4_BYPASS_SRC] = imx_clk_hw_mux("pll4_bypass_src", base + 0x70, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SL_PLL5_BYPASS_SRC] = imx_clk_hw_mux("pll5_bypass_src", base + 0xa0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SL_PLL6_BYPASS_SRC] = imx_clk_hw_mux("pll6_bypass_src", base + 0xe0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SL_PLL7_BYPASS_SRC] = imx_clk_hw_mux("pll7_bypass_src", base + 0x20, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
 
 	/*                                    type               name    parent_name        base         div_mask */
-	clks[IMX6SL_CLK_PLL1] = imx_clk_pllv3(IMX_PLLV3_SYS,     "pll1", "osc", base + 0x00, 0x7f);
-	clks[IMX6SL_CLK_PLL2] = imx_clk_pllv3(IMX_PLLV3_GENERIC, "pll2", "osc", base + 0x30, 0x1);
-	clks[IMX6SL_CLK_PLL3] = imx_clk_pllv3(IMX_PLLV3_USB,     "pll3", "osc", base + 0x10, 0x3);
-	clks[IMX6SL_CLK_PLL4] = imx_clk_pllv3(IMX_PLLV3_AV,      "pll4", "osc", base + 0x70, 0x7f);
-	clks[IMX6SL_CLK_PLL5] = imx_clk_pllv3(IMX_PLLV3_AV,      "pll5", "osc", base + 0xa0, 0x7f);
-	clks[IMX6SL_CLK_PLL6] = imx_clk_pllv3(IMX_PLLV3_ENET,    "pll6", "osc", base + 0xe0, 0x3);
-	clks[IMX6SL_CLK_PLL7] = imx_clk_pllv3(IMX_PLLV3_USB,     "pll7", "osc", base + 0x20, 0x3);
-
-	clks[IMX6SL_PLL1_BYPASS] = imx_clk_mux_flags("pll1_bypass", base + 0x00, 16, 1, pll1_bypass_sels, ARRAY_SIZE(pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SL_PLL2_BYPASS] = imx_clk_mux_flags("pll2_bypass", base + 0x30, 16, 1, pll2_bypass_sels, ARRAY_SIZE(pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SL_PLL3_BYPASS] = imx_clk_mux_flags("pll3_bypass", base + 0x10, 16, 1, pll3_bypass_sels, ARRAY_SIZE(pll3_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SL_PLL4_BYPASS] = imx_clk_mux_flags("pll4_bypass", base + 0x70, 16, 1, pll4_bypass_sels, ARRAY_SIZE(pll4_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SL_PLL5_BYPASS] = imx_clk_mux_flags("pll5_bypass", base + 0xa0, 16, 1, pll5_bypass_sels, ARRAY_SIZE(pll5_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SL_PLL6_BYPASS] = imx_clk_mux_flags("pll6_bypass", base + 0xe0, 16, 1, pll6_bypass_sels, ARRAY_SIZE(pll6_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SL_PLL7_BYPASS] = imx_clk_mux_flags("pll7_bypass", base + 0x20, 16, 1, pll7_bypass_sels, ARRAY_SIZE(pll7_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SL_CLK_PLL1] = imx_clk_hw_pllv3(IMX_PLLV3_SYS,     "pll1", "osc", base + 0x00, 0x7f);
+	hws[IMX6SL_CLK_PLL2] = imx_clk_hw_pllv3(IMX_PLLV3_GENERIC, "pll2", "osc", base + 0x30, 0x1);
+	hws[IMX6SL_CLK_PLL3] = imx_clk_hw_pllv3(IMX_PLLV3_USB,     "pll3", "osc", base + 0x10, 0x3);
+	hws[IMX6SL_CLK_PLL4] = imx_clk_hw_pllv3(IMX_PLLV3_AV,      "pll4", "osc", base + 0x70, 0x7f);
+	hws[IMX6SL_CLK_PLL5] = imx_clk_hw_pllv3(IMX_PLLV3_AV,      "pll5", "osc", base + 0xa0, 0x7f);
+	hws[IMX6SL_CLK_PLL6] = imx_clk_hw_pllv3(IMX_PLLV3_ENET,    "pll6", "osc", base + 0xe0, 0x3);
+	hws[IMX6SL_CLK_PLL7] = imx_clk_hw_pllv3(IMX_PLLV3_USB,     "pll7", "osc", base + 0x20, 0x3);
+
+	hws[IMX6SL_PLL1_BYPASS] = imx_clk_hw_mux_flags("pll1_bypass", base + 0x00, 16, 1, pll1_bypass_sels, ARRAY_SIZE(pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SL_PLL2_BYPASS] = imx_clk_hw_mux_flags("pll2_bypass", base + 0x30, 16, 1, pll2_bypass_sels, ARRAY_SIZE(pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SL_PLL3_BYPASS] = imx_clk_hw_mux_flags("pll3_bypass", base + 0x10, 16, 1, pll3_bypass_sels, ARRAY_SIZE(pll3_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SL_PLL4_BYPASS] = imx_clk_hw_mux_flags("pll4_bypass", base + 0x70, 16, 1, pll4_bypass_sels, ARRAY_SIZE(pll4_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SL_PLL5_BYPASS] = imx_clk_hw_mux_flags("pll5_bypass", base + 0xa0, 16, 1, pll5_bypass_sels, ARRAY_SIZE(pll5_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SL_PLL6_BYPASS] = imx_clk_hw_mux_flags("pll6_bypass", base + 0xe0, 16, 1, pll6_bypass_sels, ARRAY_SIZE(pll6_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SL_PLL7_BYPASS] = imx_clk_hw_mux_flags("pll7_bypass", base + 0x20, 16, 1, pll7_bypass_sels, ARRAY_SIZE(pll7_bypass_sels), CLK_SET_RATE_PARENT);
 
 	/* Do not bypass PLLs initially */
-	clk_set_parent(clks[IMX6SL_PLL1_BYPASS], clks[IMX6SL_CLK_PLL1]);
-	clk_set_parent(clks[IMX6SL_PLL2_BYPASS], clks[IMX6SL_CLK_PLL2]);
-	clk_set_parent(clks[IMX6SL_PLL3_BYPASS], clks[IMX6SL_CLK_PLL3]);
-	clk_set_parent(clks[IMX6SL_PLL4_BYPASS], clks[IMX6SL_CLK_PLL4]);
-	clk_set_parent(clks[IMX6SL_PLL5_BYPASS], clks[IMX6SL_CLK_PLL5]);
-	clk_set_parent(clks[IMX6SL_PLL6_BYPASS], clks[IMX6SL_CLK_PLL6]);
-	clk_set_parent(clks[IMX6SL_PLL7_BYPASS], clks[IMX6SL_CLK_PLL7]);
-
-	clks[IMX6SL_CLK_PLL1_SYS]      = imx_clk_gate("pll1_sys",      "pll1_bypass", base + 0x00, 13);
-	clks[IMX6SL_CLK_PLL2_BUS]      = imx_clk_gate("pll2_bus",      "pll2_bypass", base + 0x30, 13);
-	clks[IMX6SL_CLK_PLL3_USB_OTG]  = imx_clk_gate("pll3_usb_otg",  "pll3_bypass", base + 0x10, 13);
-	clks[IMX6SL_CLK_PLL4_AUDIO]    = imx_clk_gate("pll4_audio",    "pll4_bypass", base + 0x70, 13);
-	clks[IMX6SL_CLK_PLL5_VIDEO]    = imx_clk_gate("pll5_video",    "pll5_bypass", base + 0xa0, 13);
-	clks[IMX6SL_CLK_PLL6_ENET]     = imx_clk_gate("pll6_enet",     "pll6_bypass", base + 0xe0, 13);
-	clks[IMX6SL_CLK_PLL7_USB_HOST] = imx_clk_gate("pll7_usb_host", "pll7_bypass", base + 0x20, 13);
-
-	clks[IMX6SL_CLK_LVDS1_SEL] = imx_clk_mux("lvds1_sel", base + 0x160, 0, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
-	clks[IMX6SL_CLK_LVDS1_OUT] = imx_clk_gate_exclusive("lvds1_out", "lvds1_sel", base + 0x160, 10, BIT(12));
-	clks[IMX6SL_CLK_LVDS1_IN] = imx_clk_gate_exclusive("lvds1_in", "anaclk1", base + 0x160, 12, BIT(10));
+	clk_set_parent(hws[IMX6SL_PLL1_BYPASS]->clk, hws[IMX6SL_CLK_PLL1]->clk);
+	clk_set_parent(hws[IMX6SL_PLL2_BYPASS]->clk, hws[IMX6SL_CLK_PLL2]->clk);
+	clk_set_parent(hws[IMX6SL_PLL3_BYPASS]->clk, hws[IMX6SL_CLK_PLL3]->clk);
+	clk_set_parent(hws[IMX6SL_PLL4_BYPASS]->clk, hws[IMX6SL_CLK_PLL4]->clk);
+	clk_set_parent(hws[IMX6SL_PLL5_BYPASS]->clk, hws[IMX6SL_CLK_PLL5]->clk);
+	clk_set_parent(hws[IMX6SL_PLL6_BYPASS]->clk, hws[IMX6SL_CLK_PLL6]->clk);
+	clk_set_parent(hws[IMX6SL_PLL7_BYPASS]->clk, hws[IMX6SL_CLK_PLL7]->clk);
+
+	hws[IMX6SL_CLK_PLL1_SYS]      = imx_clk_hw_gate("pll1_sys",      "pll1_bypass", base + 0x00, 13);
+	hws[IMX6SL_CLK_PLL2_BUS]      = imx_clk_hw_gate("pll2_bus",      "pll2_bypass", base + 0x30, 13);
+	hws[IMX6SL_CLK_PLL3_USB_OTG]  = imx_clk_hw_gate("pll3_usb_otg",  "pll3_bypass", base + 0x10, 13);
+	hws[IMX6SL_CLK_PLL4_AUDIO]    = imx_clk_hw_gate("pll4_audio",    "pll4_bypass", base + 0x70, 13);
+	hws[IMX6SL_CLK_PLL5_VIDEO]    = imx_clk_hw_gate("pll5_video",    "pll5_bypass", base + 0xa0, 13);
+	hws[IMX6SL_CLK_PLL6_ENET]     = imx_clk_hw_gate("pll6_enet",     "pll6_bypass", base + 0xe0, 13);
+	hws[IMX6SL_CLK_PLL7_USB_HOST] = imx_clk_hw_gate("pll7_usb_host", "pll7_bypass", base + 0x20, 13);
+
+	hws[IMX6SL_CLK_LVDS1_SEL] = imx_clk_hw_mux("lvds1_sel", base + 0x160, 0, 5, lvds_sels, ARRAY_SIZE(lvds_sels));
+	hws[IMX6SL_CLK_LVDS1_OUT] = imx_clk_hw_gate_exclusive("lvds1_out", "lvds1_sel", base + 0x160, 10, BIT(12));
+	hws[IMX6SL_CLK_LVDS1_IN] = imx_clk_hw_gate_exclusive("lvds1_in", "anaclk1", base + 0x160, 12, BIT(10));
 
 	/*
 	 * usbphy1 and usbphy2 are implemented as dummy gates using reserve
@@ -259,32 +269,32 @@ static void __init imx6sl_clocks_init(struct device_node *ccm_node)
 	 * turned on during boot, and software will not need to control it
 	 * anymore after that.
 	 */
-	clks[IMX6SL_CLK_USBPHY1]      = imx_clk_gate("usbphy1",      "pll3_usb_otg",  base + 0x10, 20);
-	clks[IMX6SL_CLK_USBPHY2]      = imx_clk_gate("usbphy2",      "pll7_usb_host", base + 0x20, 20);
-	clks[IMX6SL_CLK_USBPHY1_GATE] = imx_clk_gate("usbphy1_gate", "dummy",         base + 0x10, 6);
-	clks[IMX6SL_CLK_USBPHY2_GATE] = imx_clk_gate("usbphy2_gate", "dummy",         base + 0x20, 6);
+	hws[IMX6SL_CLK_USBPHY1]      = imx_clk_hw_gate("usbphy1",      "pll3_usb_otg",  base + 0x10, 20);
+	hws[IMX6SL_CLK_USBPHY2]      = imx_clk_hw_gate("usbphy2",      "pll7_usb_host", base + 0x20, 20);
+	hws[IMX6SL_CLK_USBPHY1_GATE] = imx_clk_hw_gate("usbphy1_gate", "dummy",         base + 0x10, 6);
+	hws[IMX6SL_CLK_USBPHY2_GATE] = imx_clk_hw_gate("usbphy2_gate", "dummy",         base + 0x20, 6);
 
 	/*                                                           dev   name              parent_name      flags                reg        shift width div: flags, div_table lock */
-	clks[IMX6SL_CLK_PLL4_POST_DIV]  = clk_register_divider_table(NULL, "pll4_post_div",  "pll4_audio",    CLK_SET_RATE_PARENT, base + 0x70,  19, 2,   0, post_div_table, &imx_ccm_lock);
-	clks[IMX6SL_CLK_PLL4_AUDIO_DIV] =       clk_register_divider(NULL, "pll4_audio_div", "pll4_post_div", CLK_SET_RATE_PARENT, base + 0x170, 15, 1,   0, &imx_ccm_lock);
-	clks[IMX6SL_CLK_PLL5_POST_DIV]  = clk_register_divider_table(NULL, "pll5_post_div",  "pll5_video",    CLK_SET_RATE_PARENT, base + 0xa0,  19, 2,   0, post_div_table, &imx_ccm_lock);
-	clks[IMX6SL_CLK_PLL5_VIDEO_DIV] = clk_register_divider_table(NULL, "pll5_video_div", "pll5_post_div", CLK_SET_RATE_PARENT, base + 0x170, 30, 2,   0, video_div_table, &imx_ccm_lock);
-	clks[IMX6SL_CLK_ENET_REF]       = clk_register_divider_table(NULL, "enet_ref",       "pll6_enet",     0,                   base + 0xe0,  0,  2,   0, clk_enet_ref_table, &imx_ccm_lock);
+	hws[IMX6SL_CLK_PLL4_POST_DIV]  = clk_hw_register_divider_table(NULL, "pll4_post_div",  "pll4_audio",    CLK_SET_RATE_PARENT, base + 0x70,  19, 2,   0, post_div_table, &imx_ccm_lock);
+	hws[IMX6SL_CLK_PLL4_AUDIO_DIV] =       clk_hw_register_divider(NULL, "pll4_audio_div", "pll4_post_div", CLK_SET_RATE_PARENT, base + 0x170, 15, 1,   0, &imx_ccm_lock);
+	hws[IMX6SL_CLK_PLL5_POST_DIV]  = clk_hw_register_divider_table(NULL, "pll5_post_div",  "pll5_video",    CLK_SET_RATE_PARENT, base + 0xa0,  19, 2,   0, post_div_table, &imx_ccm_lock);
+	hws[IMX6SL_CLK_PLL5_VIDEO_DIV] = clk_hw_register_divider_table(NULL, "pll5_video_div", "pll5_post_div", CLK_SET_RATE_PARENT, base + 0x170, 30, 2,   0, video_div_table, &imx_ccm_lock);
+	hws[IMX6SL_CLK_ENET_REF]       = clk_hw_register_divider_table(NULL, "enet_ref",       "pll6_enet",     0,                   base + 0xe0,  0,  2,   0, clk_enet_ref_table, &imx_ccm_lock);
 
 	/*                                       name         parent_name     reg           idx */
-	clks[IMX6SL_CLK_PLL2_PFD0] = imx_clk_pfd("pll2_pfd0", "pll2_bus",     base + 0x100, 0);
-	clks[IMX6SL_CLK_PLL2_PFD1] = imx_clk_pfd("pll2_pfd1", "pll2_bus",     base + 0x100, 1);
-	clks[IMX6SL_CLK_PLL2_PFD2] = imx_clk_pfd("pll2_pfd2", "pll2_bus",     base + 0x100, 2);
-	clks[IMX6SL_CLK_PLL3_PFD0] = imx_clk_pfd("pll3_pfd0", "pll3_usb_otg", base + 0xf0,  0);
-	clks[IMX6SL_CLK_PLL3_PFD1] = imx_clk_pfd("pll3_pfd1", "pll3_usb_otg", base + 0xf0,  1);
-	clks[IMX6SL_CLK_PLL3_PFD2] = imx_clk_pfd("pll3_pfd2", "pll3_usb_otg", base + 0xf0,  2);
-	clks[IMX6SL_CLK_PLL3_PFD3] = imx_clk_pfd("pll3_pfd3", "pll3_usb_otg", base + 0xf0,  3);
+	hws[IMX6SL_CLK_PLL2_PFD0] = imx_clk_hw_pfd("pll2_pfd0", "pll2_bus",     base + 0x100, 0);
+	hws[IMX6SL_CLK_PLL2_PFD1] = imx_clk_hw_pfd("pll2_pfd1", "pll2_bus",     base + 0x100, 1);
+	hws[IMX6SL_CLK_PLL2_PFD2] = imx_clk_hw_pfd("pll2_pfd2", "pll2_bus",     base + 0x100, 2);
+	hws[IMX6SL_CLK_PLL3_PFD0] = imx_clk_hw_pfd("pll3_pfd0", "pll3_usb_otg", base + 0xf0,  0);
+	hws[IMX6SL_CLK_PLL3_PFD1] = imx_clk_hw_pfd("pll3_pfd1", "pll3_usb_otg", base + 0xf0,  1);
+	hws[IMX6SL_CLK_PLL3_PFD2] = imx_clk_hw_pfd("pll3_pfd2", "pll3_usb_otg", base + 0xf0,  2);
+	hws[IMX6SL_CLK_PLL3_PFD3] = imx_clk_hw_pfd("pll3_pfd3", "pll3_usb_otg", base + 0xf0,  3);
 
 	/*                                                name         parent_name     mult div */
-	clks[IMX6SL_CLK_PLL2_198M] = imx_clk_fixed_factor("pll2_198m", "pll2_pfd2",      1, 2);
-	clks[IMX6SL_CLK_PLL3_120M] = imx_clk_fixed_factor("pll3_120m", "pll3_usb_otg",   1, 4);
-	clks[IMX6SL_CLK_PLL3_80M]  = imx_clk_fixed_factor("pll3_80m",  "pll3_usb_otg",   1, 6);
-	clks[IMX6SL_CLK_PLL3_60M]  = imx_clk_fixed_factor("pll3_60m",  "pll3_usb_otg",   1, 8);
+	hws[IMX6SL_CLK_PLL2_198M] = imx_clk_hw_fixed_factor("pll2_198m", "pll2_pfd2",      1, 2);
+	hws[IMX6SL_CLK_PLL3_120M] = imx_clk_hw_fixed_factor("pll3_120m", "pll3_usb_otg",   1, 4);
+	hws[IMX6SL_CLK_PLL3_80M]  = imx_clk_hw_fixed_factor("pll3_80m",  "pll3_usb_otg",   1, 6);
+	hws[IMX6SL_CLK_PLL3_60M]  = imx_clk_hw_fixed_factor("pll3_60m",  "pll3_usb_otg",   1, 8);
 
 	np = ccm_node;
 	base = of_iomap(np, 0);
@@ -292,157 +302,161 @@ static void __init imx6sl_clocks_init(struct device_node *ccm_node)
 	ccm_base = base;
 
 	/*                                              name                reg       shift width parent_names     num_parents */
-	clks[IMX6SL_CLK_STEP]             = imx_clk_mux("step",             base + 0xc,  8,  1, step_sels,         ARRAY_SIZE(step_sels));
-	clks[IMX6SL_CLK_PLL1_SW]          = imx_clk_mux("pll1_sw",          base + 0xc,  2,  1, pll1_sw_sels,      ARRAY_SIZE(pll1_sw_sels));
-	clks[IMX6SL_CLK_OCRAM_ALT_SEL]    = imx_clk_mux("ocram_alt_sel",    base + 0x14, 7,  1, ocram_alt_sels,    ARRAY_SIZE(ocram_alt_sels));
-	clks[IMX6SL_CLK_OCRAM_SEL]        = imx_clk_mux("ocram_sel",        base + 0x14, 6,  1, ocram_sels,        ARRAY_SIZE(ocram_sels));
-	clks[IMX6SL_CLK_PRE_PERIPH2_SEL]  = imx_clk_mux("pre_periph2_sel",  base + 0x18, 21, 2, pre_periph_sels,   ARRAY_SIZE(pre_periph_sels));
-	clks[IMX6SL_CLK_PRE_PERIPH_SEL]   = imx_clk_mux("pre_periph_sel",   base + 0x18, 18, 2, pre_periph_sels,   ARRAY_SIZE(pre_periph_sels));
-	clks[IMX6SL_CLK_PERIPH2_CLK2_SEL] = imx_clk_mux("periph2_clk2_sel", base + 0x18, 20, 1, periph2_clk2_sels, ARRAY_SIZE(periph2_clk2_sels));
-	clks[IMX6SL_CLK_PERIPH_CLK2_SEL]  = imx_clk_mux("periph_clk2_sel",  base + 0x18, 12, 2, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
-	clks[IMX6SL_CLK_CSI_SEL]          = imx_clk_mux("csi_sel",          base + 0x3c, 9,  2, csi_sels,          ARRAY_SIZE(csi_sels));
-	clks[IMX6SL_CLK_LCDIF_AXI_SEL]    = imx_clk_mux("lcdif_axi_sel",    base + 0x3c, 14, 2, lcdif_axi_sels,    ARRAY_SIZE(lcdif_axi_sels));
-	clks[IMX6SL_CLK_USDHC1_SEL]       = imx_clk_fixup_mux("usdhc1_sel", base + 0x1c, 16, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels),  imx_cscmr1_fixup);
-	clks[IMX6SL_CLK_USDHC2_SEL]       = imx_clk_fixup_mux("usdhc2_sel", base + 0x1c, 17, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels),  imx_cscmr1_fixup);
-	clks[IMX6SL_CLK_USDHC3_SEL]       = imx_clk_fixup_mux("usdhc3_sel", base + 0x1c, 18, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels),  imx_cscmr1_fixup);
-	clks[IMX6SL_CLK_USDHC4_SEL]       = imx_clk_fixup_mux("usdhc4_sel", base + 0x1c, 19, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels),  imx_cscmr1_fixup);
-	clks[IMX6SL_CLK_SSI1_SEL]         = imx_clk_fixup_mux("ssi1_sel",   base + 0x1c, 10, 2, ssi_sels,          ARRAY_SIZE(ssi_sels),    imx_cscmr1_fixup);
-	clks[IMX6SL_CLK_SSI2_SEL]         = imx_clk_fixup_mux("ssi2_sel",   base + 0x1c, 12, 2, ssi_sels,          ARRAY_SIZE(ssi_sels),    imx_cscmr1_fixup);
-	clks[IMX6SL_CLK_SSI3_SEL]         = imx_clk_fixup_mux("ssi3_sel",   base + 0x1c, 14, 2, ssi_sels,          ARRAY_SIZE(ssi_sels),    imx_cscmr1_fixup);
-	clks[IMX6SL_CLK_PERCLK_SEL]       = imx_clk_fixup_mux("perclk_sel", base + 0x1c, 6,  1, perclk_sels,       ARRAY_SIZE(perclk_sels), imx_cscmr1_fixup);
-	clks[IMX6SL_CLK_PXP_AXI_SEL]      = imx_clk_mux("pxp_axi_sel",      base + 0x34, 6,  3, pxp_axi_sels,      ARRAY_SIZE(pxp_axi_sels));
-	clks[IMX6SL_CLK_EPDC_AXI_SEL]     = imx_clk_mux("epdc_axi_sel",     base + 0x34, 15, 3, epdc_axi_sels,     ARRAY_SIZE(epdc_axi_sels));
-	clks[IMX6SL_CLK_GPU2D_OVG_SEL]    = imx_clk_mux("gpu2d_ovg_sel",    base + 0x18, 4,  2, gpu2d_ovg_sels,    ARRAY_SIZE(gpu2d_ovg_sels));
-	clks[IMX6SL_CLK_GPU2D_SEL]        = imx_clk_mux("gpu2d_sel",        base + 0x18, 8,  2, gpu2d_sels,        ARRAY_SIZE(gpu2d_sels));
-	clks[IMX6SL_CLK_LCDIF_PIX_SEL]    = imx_clk_mux("lcdif_pix_sel",    base + 0x38, 6,  3, lcdif_pix_sels,    ARRAY_SIZE(lcdif_pix_sels));
-	clks[IMX6SL_CLK_EPDC_PIX_SEL]     = imx_clk_mux("epdc_pix_sel",     base + 0x38, 15, 3, epdc_pix_sels,     ARRAY_SIZE(epdc_pix_sels));
-	clks[IMX6SL_CLK_SPDIF0_SEL]       = imx_clk_mux("spdif0_sel",       base + 0x30, 20, 2, audio_sels,        ARRAY_SIZE(audio_sels));
-	clks[IMX6SL_CLK_SPDIF1_SEL]       = imx_clk_mux("spdif1_sel",       base + 0x30, 7,  2, audio_sels,        ARRAY_SIZE(audio_sels));
-	clks[IMX6SL_CLK_EXTERN_AUDIO_SEL] = imx_clk_mux("extern_audio_sel", base + 0x20, 19, 2, audio_sels,        ARRAY_SIZE(audio_sels));
-	clks[IMX6SL_CLK_ECSPI_SEL]        = imx_clk_mux("ecspi_sel",        base + 0x38, 18, 1, ecspi_sels,        ARRAY_SIZE(ecspi_sels));
-	clks[IMX6SL_CLK_UART_SEL]         = imx_clk_mux("uart_sel",         base + 0x24, 6,  1, uart_sels,         ARRAY_SIZE(uart_sels));
+	hws[IMX6SL_CLK_STEP]             = imx_clk_hw_mux("step",             base + 0xc,  8,  1, step_sels,         ARRAY_SIZE(step_sels));
+	hws[IMX6SL_CLK_PLL1_SW]          = imx_clk_hw_mux("pll1_sw",          base + 0xc,  2,  1, pll1_sw_sels,      ARRAY_SIZE(pll1_sw_sels));
+	hws[IMX6SL_CLK_OCRAM_ALT_SEL]    = imx_clk_hw_mux("ocram_alt_sel",    base + 0x14, 7,  1, ocram_alt_sels,    ARRAY_SIZE(ocram_alt_sels));
+	hws[IMX6SL_CLK_OCRAM_SEL]        = imx_clk_hw_mux("ocram_sel",        base + 0x14, 6,  1, ocram_sels,        ARRAY_SIZE(ocram_sels));
+	hws[IMX6SL_CLK_PRE_PERIPH2_SEL]  = imx_clk_hw_mux("pre_periph2_sel",  base + 0x18, 21, 2, pre_periph_sels,   ARRAY_SIZE(pre_periph_sels));
+	hws[IMX6SL_CLK_PRE_PERIPH_SEL]   = imx_clk_hw_mux("pre_periph_sel",   base + 0x18, 18, 2, pre_periph_sels,   ARRAY_SIZE(pre_periph_sels));
+	hws[IMX6SL_CLK_PERIPH2_CLK2_SEL] = imx_clk_hw_mux("periph2_clk2_sel", base + 0x18, 20, 1, periph2_clk2_sels, ARRAY_SIZE(periph2_clk2_sels));
+	hws[IMX6SL_CLK_PERIPH_CLK2_SEL]  = imx_clk_hw_mux("periph_clk2_sel",  base + 0x18, 12, 2, periph_clk2_sels,  ARRAY_SIZE(periph_clk2_sels));
+	hws[IMX6SL_CLK_CSI_SEL]          = imx_clk_hw_mux("csi_sel",          base + 0x3c, 9,  2, csi_sels,          ARRAY_SIZE(csi_sels));
+	hws[IMX6SL_CLK_LCDIF_AXI_SEL]    = imx_clk_hw_mux("lcdif_axi_sel",    base + 0x3c, 14, 2, lcdif_axi_sels,    ARRAY_SIZE(lcdif_axi_sels));
+	hws[IMX6SL_CLK_USDHC1_SEL]       = imx_clk_hw_fixup_mux("usdhc1_sel", base + 0x1c, 16, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels),  imx_cscmr1_fixup);
+	hws[IMX6SL_CLK_USDHC2_SEL]       = imx_clk_hw_fixup_mux("usdhc2_sel", base + 0x1c, 17, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels),  imx_cscmr1_fixup);
+	hws[IMX6SL_CLK_USDHC3_SEL]       = imx_clk_hw_fixup_mux("usdhc3_sel", base + 0x1c, 18, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels),  imx_cscmr1_fixup);
+	hws[IMX6SL_CLK_USDHC4_SEL]       = imx_clk_hw_fixup_mux("usdhc4_sel", base + 0x1c, 19, 1, usdhc_sels,        ARRAY_SIZE(usdhc_sels),  imx_cscmr1_fixup);
+	hws[IMX6SL_CLK_SSI1_SEL]         = imx_clk_hw_fixup_mux("ssi1_sel",   base + 0x1c, 10, 2, ssi_sels,          ARRAY_SIZE(ssi_sels),    imx_cscmr1_fixup);
+	hws[IMX6SL_CLK_SSI2_SEL]         = imx_clk_hw_fixup_mux("ssi2_sel",   base + 0x1c, 12, 2, ssi_sels,          ARRAY_SIZE(ssi_sels),    imx_cscmr1_fixup);
+	hws[IMX6SL_CLK_SSI3_SEL]         = imx_clk_hw_fixup_mux("ssi3_sel",   base + 0x1c, 14, 2, ssi_sels,          ARRAY_SIZE(ssi_sels),    imx_cscmr1_fixup);
+	hws[IMX6SL_CLK_PERCLK_SEL]       = imx_clk_hw_fixup_mux("perclk_sel", base + 0x1c, 6,  1, perclk_sels,       ARRAY_SIZE(perclk_sels), imx_cscmr1_fixup);
+	hws[IMX6SL_CLK_PXP_AXI_SEL]      = imx_clk_hw_mux("pxp_axi_sel",      base + 0x34, 6,  3, pxp_axi_sels,      ARRAY_SIZE(pxp_axi_sels));
+	hws[IMX6SL_CLK_EPDC_AXI_SEL]     = imx_clk_hw_mux("epdc_axi_sel",     base + 0x34, 15, 3, epdc_axi_sels,     ARRAY_SIZE(epdc_axi_sels));
+	hws[IMX6SL_CLK_GPU2D_OVG_SEL]    = imx_clk_hw_mux("gpu2d_ovg_sel",    base + 0x18, 4,  2, gpu2d_ovg_sels,    ARRAY_SIZE(gpu2d_ovg_sels));
+	hws[IMX6SL_CLK_GPU2D_SEL]        = imx_clk_hw_mux("gpu2d_sel",        base + 0x18, 8,  2, gpu2d_sels,        ARRAY_SIZE(gpu2d_sels));
+	hws[IMX6SL_CLK_LCDIF_PIX_SEL]    = imx_clk_hw_mux("lcdif_pix_sel",    base + 0x38, 6,  3, lcdif_pix_sels,    ARRAY_SIZE(lcdif_pix_sels));
+	hws[IMX6SL_CLK_EPDC_PIX_SEL]     = imx_clk_hw_mux("epdc_pix_sel",     base + 0x38, 15, 3, epdc_pix_sels,     ARRAY_SIZE(epdc_pix_sels));
+	hws[IMX6SL_CLK_SPDIF0_SEL]       = imx_clk_hw_mux("spdif0_sel",       base + 0x30, 20, 2, audio_sels,        ARRAY_SIZE(audio_sels));
+	hws[IMX6SL_CLK_SPDIF1_SEL]       = imx_clk_hw_mux("spdif1_sel",       base + 0x30, 7,  2, audio_sels,        ARRAY_SIZE(audio_sels));
+	hws[IMX6SL_CLK_EXTERN_AUDIO_SEL] = imx_clk_hw_mux("extern_audio_sel", base + 0x20, 19, 2, audio_sels,        ARRAY_SIZE(audio_sels));
+	hws[IMX6SL_CLK_ECSPI_SEL]        = imx_clk_hw_mux("ecspi_sel",        base + 0x38, 18, 1, ecspi_sels,        ARRAY_SIZE(ecspi_sels));
+	hws[IMX6SL_CLK_UART_SEL]         = imx_clk_hw_mux("uart_sel",         base + 0x24, 6,  1, uart_sels,         ARRAY_SIZE(uart_sels));
 
 	/*                                          name       reg        shift width busy: reg, shift parent_names  num_parents */
-	clks[IMX6SL_CLK_PERIPH]  = imx_clk_busy_mux("periph",  base + 0x14, 25,  1,   base + 0x48, 5,  periph_sels,  ARRAY_SIZE(periph_sels));
-	clks[IMX6SL_CLK_PERIPH2] = imx_clk_busy_mux("periph2", base + 0x14, 26,  1,   base + 0x48, 3,  periph2_sels, ARRAY_SIZE(periph2_sels));
+	hws[IMX6SL_CLK_PERIPH]  = imx_clk_hw_busy_mux("periph",  base + 0x14, 25,  1,   base + 0x48, 5,  periph_sels,  ARRAY_SIZE(periph_sels));
+	hws[IMX6SL_CLK_PERIPH2] = imx_clk_hw_busy_mux("periph2", base + 0x14, 26,  1,   base + 0x48, 3,  periph2_sels, ARRAY_SIZE(periph2_sels));
 
 	/*                                                   name                 parent_name          reg       shift width */
-	clks[IMX6SL_CLK_OCRAM_PODF]        = imx_clk_busy_divider("ocram_podf",   "ocram_sel",         base + 0x14, 16, 3, base + 0x48, 0);
-	clks[IMX6SL_CLK_PERIPH_CLK2_PODF]  = imx_clk_divider("periph_clk2_podf",  "periph_clk2_sel",   base + 0x14, 27, 3);
-	clks[IMX6SL_CLK_PERIPH2_CLK2_PODF] = imx_clk_divider("periph2_clk2_podf", "periph2_clk2_sel",  base + 0x14, 0,  3);
-	clks[IMX6SL_CLK_IPG]               = imx_clk_divider("ipg",               "ahb",               base + 0x14, 8,  2);
-	clks[IMX6SL_CLK_CSI_PODF]          = imx_clk_divider("csi_podf",          "csi_sel",           base + 0x3c, 11, 3);
-	clks[IMX6SL_CLK_LCDIF_AXI_PODF]    = imx_clk_divider("lcdif_axi_podf",    "lcdif_axi_sel",     base + 0x3c, 16, 3);
-	clks[IMX6SL_CLK_USDHC1_PODF]       = imx_clk_divider("usdhc1_podf",       "usdhc1_sel",        base + 0x24, 11, 3);
-	clks[IMX6SL_CLK_USDHC2_PODF]       = imx_clk_divider("usdhc2_podf",       "usdhc2_sel",        base + 0x24, 16, 3);
-	clks[IMX6SL_CLK_USDHC3_PODF]       = imx_clk_divider("usdhc3_podf",       "usdhc3_sel",        base + 0x24, 19, 3);
-	clks[IMX6SL_CLK_USDHC4_PODF]       = imx_clk_divider("usdhc4_podf",       "usdhc4_sel",        base + 0x24, 22, 3);
-	clks[IMX6SL_CLK_SSI1_PRED]         = imx_clk_divider("ssi1_pred",         "ssi1_sel",          base + 0x28, 6,  3);
-	clks[IMX6SL_CLK_SSI1_PODF]         = imx_clk_divider("ssi1_podf",         "ssi1_pred",         base + 0x28, 0,  6);
-	clks[IMX6SL_CLK_SSI2_PRED]         = imx_clk_divider("ssi2_pred",         "ssi2_sel",          base + 0x2c, 6,  3);
-	clks[IMX6SL_CLK_SSI2_PODF]         = imx_clk_divider("ssi2_podf",         "ssi2_pred",         base + 0x2c, 0,  6);
-	clks[IMX6SL_CLK_SSI3_PRED]         = imx_clk_divider("ssi3_pred",         "ssi3_sel",          base + 0x28, 22, 3);
-	clks[IMX6SL_CLK_SSI3_PODF]         = imx_clk_divider("ssi3_podf",         "ssi3_pred",         base + 0x28, 16, 6);
-	clks[IMX6SL_CLK_PERCLK]            = imx_clk_fixup_divider("perclk",      "perclk_sel",        base + 0x1c, 0,  6, imx_cscmr1_fixup);
-	clks[IMX6SL_CLK_PXP_AXI_PODF]      = imx_clk_divider("pxp_axi_podf",      "pxp_axi_sel",       base + 0x34, 3,  3);
-	clks[IMX6SL_CLK_EPDC_AXI_PODF]     = imx_clk_divider("epdc_axi_podf",     "epdc_axi_sel",      base + 0x34, 12, 3);
-	clks[IMX6SL_CLK_GPU2D_OVG_PODF]    = imx_clk_divider("gpu2d_ovg_podf",    "gpu2d_ovg_sel",     base + 0x18, 26, 3);
-	clks[IMX6SL_CLK_GPU2D_PODF]        = imx_clk_divider("gpu2d_podf",        "gpu2d_sel",         base + 0x18, 29, 3);
-	clks[IMX6SL_CLK_LCDIF_PIX_PRED]    = imx_clk_divider("lcdif_pix_pred",    "lcdif_pix_sel",     base + 0x38, 3,  3);
-	clks[IMX6SL_CLK_EPDC_PIX_PRED]     = imx_clk_divider("epdc_pix_pred",     "epdc_pix_sel",      base + 0x38, 12, 3);
-	clks[IMX6SL_CLK_LCDIF_PIX_PODF]    = imx_clk_fixup_divider("lcdif_pix_podf", "lcdif_pix_pred", base + 0x1c, 20, 3, imx_cscmr1_fixup);
-	clks[IMX6SL_CLK_EPDC_PIX_PODF]     = imx_clk_divider("epdc_pix_podf",     "epdc_pix_pred",     base + 0x18, 23, 3);
-	clks[IMX6SL_CLK_SPDIF0_PRED]       = imx_clk_divider("spdif0_pred",       "spdif0_sel",        base + 0x30, 25, 3);
-	clks[IMX6SL_CLK_SPDIF0_PODF]       = imx_clk_divider("spdif0_podf",       "spdif0_pred",       base + 0x30, 22, 3);
-	clks[IMX6SL_CLK_SPDIF1_PRED]       = imx_clk_divider("spdif1_pred",       "spdif1_sel",        base + 0x30, 12, 3);
-	clks[IMX6SL_CLK_SPDIF1_PODF]       = imx_clk_divider("spdif1_podf",       "spdif1_pred",       base + 0x30, 9,  3);
-	clks[IMX6SL_CLK_EXTERN_AUDIO_PRED] = imx_clk_divider("extern_audio_pred", "extern_audio_sel",  base + 0x28, 9,  3);
-	clks[IMX6SL_CLK_EXTERN_AUDIO_PODF] = imx_clk_divider("extern_audio_podf", "extern_audio_pred", base + 0x28, 25, 3);
-	clks[IMX6SL_CLK_ECSPI_ROOT]        = imx_clk_divider("ecspi_root",        "ecspi_sel",         base + 0x38, 19, 6);
-	clks[IMX6SL_CLK_UART_ROOT]         = imx_clk_divider("uart_root",         "uart_sel",          base + 0x24, 0,  6);
+	hws[IMX6SL_CLK_OCRAM_PODF]        = imx_clk_hw_busy_divider("ocram_podf",   "ocram_sel",         base + 0x14, 16, 3, base + 0x48, 0);
+	hws[IMX6SL_CLK_PERIPH_CLK2_PODF]  = imx_clk_hw_divider("periph_clk2_podf",  "periph_clk2_sel",   base + 0x14, 27, 3);
+	hws[IMX6SL_CLK_PERIPH2_CLK2_PODF] = imx_clk_hw_divider("periph2_clk2_podf", "periph2_clk2_sel",  base + 0x14, 0,  3);
+	hws[IMX6SL_CLK_IPG]               = imx_clk_hw_divider("ipg",               "ahb",               base + 0x14, 8,  2);
+	hws[IMX6SL_CLK_CSI_PODF]          = imx_clk_hw_divider("csi_podf",          "csi_sel",           base + 0x3c, 11, 3);
+	hws[IMX6SL_CLK_LCDIF_AXI_PODF]    = imx_clk_hw_divider("lcdif_axi_podf",    "lcdif_axi_sel",     base + 0x3c, 16, 3);
+	hws[IMX6SL_CLK_USDHC1_PODF]       = imx_clk_hw_divider("usdhc1_podf",       "usdhc1_sel",        base + 0x24, 11, 3);
+	hws[IMX6SL_CLK_USDHC2_PODF]       = imx_clk_hw_divider("usdhc2_podf",       "usdhc2_sel",        base + 0x24, 16, 3);
+	hws[IMX6SL_CLK_USDHC3_PODF]       = imx_clk_hw_divider("usdhc3_podf",       "usdhc3_sel",        base + 0x24, 19, 3);
+	hws[IMX6SL_CLK_USDHC4_PODF]       = imx_clk_hw_divider("usdhc4_podf",       "usdhc4_sel",        base + 0x24, 22, 3);
+	hws[IMX6SL_CLK_SSI1_PRED]         = imx_clk_hw_divider("ssi1_pred",         "ssi1_sel",          base + 0x28, 6,  3);
+	hws[IMX6SL_CLK_SSI1_PODF]         = imx_clk_hw_divider("ssi1_podf",         "ssi1_pred",         base + 0x28, 0,  6);
+	hws[IMX6SL_CLK_SSI2_PRED]         = imx_clk_hw_divider("ssi2_pred",         "ssi2_sel",          base + 0x2c, 6,  3);
+	hws[IMX6SL_CLK_SSI2_PODF]         = imx_clk_hw_divider("ssi2_podf",         "ssi2_pred",         base + 0x2c, 0,  6);
+	hws[IMX6SL_CLK_SSI3_PRED]         = imx_clk_hw_divider("ssi3_pred",         "ssi3_sel",          base + 0x28, 22, 3);
+	hws[IMX6SL_CLK_SSI3_PODF]         = imx_clk_hw_divider("ssi3_podf",         "ssi3_pred",         base + 0x28, 16, 6);
+	hws[IMX6SL_CLK_PERCLK]            = imx_clk_hw_fixup_divider("perclk",      "perclk_sel",        base + 0x1c, 0,  6, imx_cscmr1_fixup);
+	hws[IMX6SL_CLK_PXP_AXI_PODF]      = imx_clk_hw_divider("pxp_axi_podf",      "pxp_axi_sel",       base + 0x34, 3,  3);
+	hws[IMX6SL_CLK_EPDC_AXI_PODF]     = imx_clk_hw_divider("epdc_axi_podf",     "epdc_axi_sel",      base + 0x34, 12, 3);
+	hws[IMX6SL_CLK_GPU2D_OVG_PODF]    = imx_clk_hw_divider("gpu2d_ovg_podf",    "gpu2d_ovg_sel",     base + 0x18, 26, 3);
+	hws[IMX6SL_CLK_GPU2D_PODF]        = imx_clk_hw_divider("gpu2d_podf",        "gpu2d_sel",         base + 0x18, 29, 3);
+	hws[IMX6SL_CLK_LCDIF_PIX_PRED]    = imx_clk_hw_divider("lcdif_pix_pred",    "lcdif_pix_sel",     base + 0x38, 3,  3);
+	hws[IMX6SL_CLK_EPDC_PIX_PRED]     = imx_clk_hw_divider("epdc_pix_pred",     "epdc_pix_sel",      base + 0x38, 12, 3);
+	hws[IMX6SL_CLK_LCDIF_PIX_PODF]    = imx_clk_hw_fixup_divider("lcdif_pix_podf", "lcdif_pix_pred", base + 0x1c, 20, 3, imx_cscmr1_fixup);
+	hws[IMX6SL_CLK_EPDC_PIX_PODF]     = imx_clk_hw_divider("epdc_pix_podf",     "epdc_pix_pred",     base + 0x18, 23, 3);
+	hws[IMX6SL_CLK_SPDIF0_PRED]       = imx_clk_hw_divider("spdif0_pred",       "spdif0_sel",        base + 0x30, 25, 3);
+	hws[IMX6SL_CLK_SPDIF0_PODF]       = imx_clk_hw_divider("spdif0_podf",       "spdif0_pred",       base + 0x30, 22, 3);
+	hws[IMX6SL_CLK_SPDIF1_PRED]       = imx_clk_hw_divider("spdif1_pred",       "spdif1_sel",        base + 0x30, 12, 3);
+	hws[IMX6SL_CLK_SPDIF1_PODF]       = imx_clk_hw_divider("spdif1_podf",       "spdif1_pred",       base + 0x30, 9,  3);
+	hws[IMX6SL_CLK_EXTERN_AUDIO_PRED] = imx_clk_hw_divider("extern_audio_pred", "extern_audio_sel",  base + 0x28, 9,  3);
+	hws[IMX6SL_CLK_EXTERN_AUDIO_PODF] = imx_clk_hw_divider("extern_audio_podf", "extern_audio_pred", base + 0x28, 25, 3);
+	hws[IMX6SL_CLK_ECSPI_ROOT]        = imx_clk_hw_divider("ecspi_root",        "ecspi_sel",         base + 0x38, 19, 6);
+	hws[IMX6SL_CLK_UART_ROOT]         = imx_clk_hw_divider("uart_root",         "uart_sel",          base + 0x24, 0,  6);
 
 	/*                                                name         parent_name reg       shift width busy: reg, shift */
-	clks[IMX6SL_CLK_AHB]       = imx_clk_busy_divider("ahb",       "periph",  base + 0x14, 10, 3,    base + 0x48, 1);
-	clks[IMX6SL_CLK_MMDC_ROOT] = imx_clk_busy_divider("mmdc",      "periph2", base + 0x14, 3,  3,    base + 0x48, 2);
-	clks[IMX6SL_CLK_ARM]       = imx_clk_busy_divider("arm",       "pll1_sw", base + 0x10, 0,  3,    base + 0x48, 16);
+	hws[IMX6SL_CLK_AHB]       = imx_clk_hw_busy_divider("ahb",       "periph",  base + 0x14, 10, 3,    base + 0x48, 1);
+	hws[IMX6SL_CLK_MMDC_ROOT] = imx_clk_hw_busy_divider("mmdc",      "periph2", base + 0x14, 3,  3,    base + 0x48, 2);
+	hws[IMX6SL_CLK_ARM]       = imx_clk_hw_busy_divider("arm",       "pll1_sw", base + 0x10, 0,  3,    base + 0x48, 16);
 
 	/*                                            name            parent_name          reg         shift */
-	clks[IMX6SL_CLK_ECSPI1]       = imx_clk_gate2("ecspi1",       "ecspi_root",        base + 0x6c, 0);
-	clks[IMX6SL_CLK_ECSPI2]       = imx_clk_gate2("ecspi2",       "ecspi_root",        base + 0x6c, 2);
-	clks[IMX6SL_CLK_ECSPI3]       = imx_clk_gate2("ecspi3",       "ecspi_root",        base + 0x6c, 4);
-	clks[IMX6SL_CLK_ECSPI4]       = imx_clk_gate2("ecspi4",       "ecspi_root",        base + 0x6c, 6);
-	clks[IMX6SL_CLK_ENET]         = imx_clk_gate2("enet",         "ipg",               base + 0x6c, 10);
-	clks[IMX6SL_CLK_EPIT1]        = imx_clk_gate2("epit1",        "perclk",            base + 0x6c, 12);
-	clks[IMX6SL_CLK_EPIT2]        = imx_clk_gate2("epit2",        "perclk",            base + 0x6c, 14);
-	clks[IMX6SL_CLK_EXTERN_AUDIO] = imx_clk_gate2("extern_audio", "extern_audio_podf", base + 0x6c, 16);
-	clks[IMX6SL_CLK_GPT]          = imx_clk_gate2("gpt",          "perclk",            base + 0x6c, 20);
-	clks[IMX6SL_CLK_GPT_SERIAL]   = imx_clk_gate2("gpt_serial",   "perclk",            base + 0x6c, 22);
-	clks[IMX6SL_CLK_GPU2D_OVG]    = imx_clk_gate2("gpu2d_ovg",    "gpu2d_ovg_podf",    base + 0x6c, 26);
-	clks[IMX6SL_CLK_I2C1]         = imx_clk_gate2("i2c1",         "perclk",            base + 0x70, 6);
-	clks[IMX6SL_CLK_I2C2]         = imx_clk_gate2("i2c2",         "perclk",            base + 0x70, 8);
-	clks[IMX6SL_CLK_I2C3]         = imx_clk_gate2("i2c3",         "perclk",            base + 0x70, 10);
-	clks[IMX6SL_CLK_OCOTP]        = imx_clk_gate2("ocotp",        "ipg",               base + 0x70, 12);
-	clks[IMX6SL_CLK_CSI]          = imx_clk_gate2("csi",          "csi_podf",          base + 0x74, 0);
-	clks[IMX6SL_CLK_PXP_AXI]      = imx_clk_gate2("pxp_axi",      "pxp_axi_podf",      base + 0x74, 2);
-	clks[IMX6SL_CLK_EPDC_AXI]     = imx_clk_gate2("epdc_axi",     "epdc_axi_podf",     base + 0x74, 4);
-	clks[IMX6SL_CLK_LCDIF_AXI]    = imx_clk_gate2("lcdif_axi",    "lcdif_axi_podf",    base + 0x74, 6);
-	clks[IMX6SL_CLK_LCDIF_PIX]    = imx_clk_gate2("lcdif_pix",    "lcdif_pix_podf",    base + 0x74, 8);
-	clks[IMX6SL_CLK_EPDC_PIX]     = imx_clk_gate2("epdc_pix",     "epdc_pix_podf",     base + 0x74, 10);
-	clks[IMX6SL_CLK_MMDC_P0_IPG]  = imx_clk_gate2_flags("mmdc_p0_ipg",  "ipg",         base + 0x74,	24, CLK_IS_CRITICAL);
-	clks[IMX6SL_CLK_MMDC_P1_IPG]  = imx_clk_gate2("mmdc_p1_ipg",  "ipg",	  	   base + 0x74,	26);
-	clks[IMX6SL_CLK_OCRAM]        = imx_clk_gate2("ocram",        "ocram_podf",        base + 0x74, 28);
-	clks[IMX6SL_CLK_PWM1]         = imx_clk_gate2("pwm1",         "perclk",            base + 0x78, 16);
-	clks[IMX6SL_CLK_PWM2]         = imx_clk_gate2("pwm2",         "perclk",            base + 0x78, 18);
-	clks[IMX6SL_CLK_PWM3]         = imx_clk_gate2("pwm3",         "perclk",            base + 0x78, 20);
-	clks[IMX6SL_CLK_PWM4]         = imx_clk_gate2("pwm4",         "perclk",            base + 0x78, 22);
-	clks[IMX6SL_CLK_SDMA]         = imx_clk_gate2("sdma",         "ipg",               base + 0x7c, 6);
-	clks[IMX6SL_CLK_SPBA]         = imx_clk_gate2("spba",         "ipg",               base + 0x7c, 12);
-	clks[IMX6SL_CLK_SPDIF]        = imx_clk_gate2_shared("spdif",     "spdif0_podf",   base + 0x7c, 14, &share_count_spdif);
-	clks[IMX6SL_CLK_SPDIF_GCLK]   = imx_clk_gate2_shared("spdif_gclk",  "ipg",         base + 0x7c, 14, &share_count_spdif);
-	clks[IMX6SL_CLK_SSI1_IPG]     = imx_clk_gate2_shared("ssi1_ipg",     "ipg",        base + 0x7c, 18, &share_count_ssi1);
-	clks[IMX6SL_CLK_SSI2_IPG]     = imx_clk_gate2_shared("ssi2_ipg",     "ipg",        base + 0x7c, 20, &share_count_ssi2);
-	clks[IMX6SL_CLK_SSI3_IPG]     = imx_clk_gate2_shared("ssi3_ipg",     "ipg",        base + 0x7c, 22, &share_count_ssi3);
-	clks[IMX6SL_CLK_SSI1]         = imx_clk_gate2_shared("ssi1",         "ssi1_podf",  base + 0x7c, 18, &share_count_ssi1);
-	clks[IMX6SL_CLK_SSI2]         = imx_clk_gate2_shared("ssi2",         "ssi2_podf",  base + 0x7c, 20, &share_count_ssi2);
-	clks[IMX6SL_CLK_SSI3]         = imx_clk_gate2_shared("ssi3",         "ssi3_podf",  base + 0x7c, 22, &share_count_ssi3);
-	clks[IMX6SL_CLK_UART]         = imx_clk_gate2("uart",         "ipg",               base + 0x7c, 24);
-	clks[IMX6SL_CLK_UART_SERIAL]  = imx_clk_gate2("uart_serial",  "uart_root",         base + 0x7c, 26);
-	clks[IMX6SL_CLK_USBOH3]       = imx_clk_gate2("usboh3",       "ipg",               base + 0x80, 0);
-	clks[IMX6SL_CLK_USDHC1]       = imx_clk_gate2("usdhc1",       "usdhc1_podf",       base + 0x80, 2);
-	clks[IMX6SL_CLK_USDHC2]       = imx_clk_gate2("usdhc2",       "usdhc2_podf",       base + 0x80, 4);
-	clks[IMX6SL_CLK_USDHC3]       = imx_clk_gate2("usdhc3",       "usdhc3_podf",       base + 0x80, 6);
-	clks[IMX6SL_CLK_USDHC4]       = imx_clk_gate2("usdhc4",       "usdhc4_podf",       base + 0x80, 8);
+	hws[IMX6SL_CLK_ECSPI1]       = imx_clk_hw_gate2("ecspi1",       "ecspi_root",        base + 0x6c, 0);
+	hws[IMX6SL_CLK_ECSPI2]       = imx_clk_hw_gate2("ecspi2",       "ecspi_root",        base + 0x6c, 2);
+	hws[IMX6SL_CLK_ECSPI3]       = imx_clk_hw_gate2("ecspi3",       "ecspi_root",        base + 0x6c, 4);
+	hws[IMX6SL_CLK_ECSPI4]       = imx_clk_hw_gate2("ecspi4",       "ecspi_root",        base + 0x6c, 6);
+	hws[IMX6SL_CLK_ENET]         = imx_clk_hw_gate2("enet",         "ipg",               base + 0x6c, 10);
+	hws[IMX6SL_CLK_EPIT1]        = imx_clk_hw_gate2("epit1",        "perclk",            base + 0x6c, 12);
+	hws[IMX6SL_CLK_EPIT2]        = imx_clk_hw_gate2("epit2",        "perclk",            base + 0x6c, 14);
+	hws[IMX6SL_CLK_EXTERN_AUDIO] = imx_clk_hw_gate2("extern_audio", "extern_audio_podf", base + 0x6c, 16);
+	hws[IMX6SL_CLK_GPT]          = imx_clk_hw_gate2("gpt",          "perclk",            base + 0x6c, 20);
+	hws[IMX6SL_CLK_GPT_SERIAL]   = imx_clk_hw_gate2("gpt_serial",   "perclk",            base + 0x6c, 22);
+	hws[IMX6SL_CLK_GPU2D_OVG]    = imx_clk_hw_gate2("gpu2d_ovg",    "gpu2d_ovg_podf",    base + 0x6c, 26);
+	hws[IMX6SL_CLK_I2C1]         = imx_clk_hw_gate2("i2c1",         "perclk",            base + 0x70, 6);
+	hws[IMX6SL_CLK_I2C2]         = imx_clk_hw_gate2("i2c2",         "perclk",            base + 0x70, 8);
+	hws[IMX6SL_CLK_I2C3]         = imx_clk_hw_gate2("i2c3",         "perclk",            base + 0x70, 10);
+	hws[IMX6SL_CLK_OCOTP]        = imx_clk_hw_gate2("ocotp",        "ipg",               base + 0x70, 12);
+	hws[IMX6SL_CLK_CSI]          = imx_clk_hw_gate2("csi",          "csi_podf",          base + 0x74, 0);
+	hws[IMX6SL_CLK_PXP_AXI]      = imx_clk_hw_gate2("pxp_axi",      "pxp_axi_podf",      base + 0x74, 2);
+	hws[IMX6SL_CLK_EPDC_AXI]     = imx_clk_hw_gate2("epdc_axi",     "epdc_axi_podf",     base + 0x74, 4);
+	hws[IMX6SL_CLK_LCDIF_AXI]    = imx_clk_hw_gate2("lcdif_axi",    "lcdif_axi_podf",    base + 0x74, 6);
+	hws[IMX6SL_CLK_LCDIF_PIX]    = imx_clk_hw_gate2("lcdif_pix",    "lcdif_pix_podf",    base + 0x74, 8);
+	hws[IMX6SL_CLK_EPDC_PIX]     = imx_clk_hw_gate2("epdc_pix",     "epdc_pix_podf",     base + 0x74, 10);
+	hws[IMX6SL_CLK_MMDC_P0_IPG]  = imx_clk_hw_gate2_flags("mmdc_p0_ipg",  "ipg",         base + 0x74, 24, CLK_IS_CRITICAL);
+	hws[IMX6SL_CLK_MMDC_P1_IPG]  = imx_clk_hw_gate2("mmdc_p1_ipg",  "ipg",               base + 0x74, 26);
+	hws[IMX6SL_CLK_OCRAM]        = imx_clk_hw_gate2("ocram",        "ocram_podf",        base + 0x74, 28);
+	hws[IMX6SL_CLK_PWM1]         = imx_clk_hw_gate2("pwm1",         "perclk",            base + 0x78, 16);
+	hws[IMX6SL_CLK_PWM2]         = imx_clk_hw_gate2("pwm2",         "perclk",            base + 0x78, 18);
+	hws[IMX6SL_CLK_PWM3]         = imx_clk_hw_gate2("pwm3",         "perclk",            base + 0x78, 20);
+	hws[IMX6SL_CLK_PWM4]         = imx_clk_hw_gate2("pwm4",         "perclk",            base + 0x78, 22);
+	hws[IMX6SL_CLK_SDMA]         = imx_clk_hw_gate2("sdma",         "ipg",               base + 0x7c, 6);
+	hws[IMX6SL_CLK_SPBA]         = imx_clk_hw_gate2("spba",         "ipg",               base + 0x7c, 12);
+	hws[IMX6SL_CLK_SPDIF]        = imx_clk_hw_gate2_shared("spdif",     "spdif0_podf",   base + 0x7c, 14, &share_count_spdif);
+	hws[IMX6SL_CLK_SPDIF_GCLK]   = imx_clk_hw_gate2_shared("spdif_gclk",  "ipg",         base + 0x7c, 14, &share_count_spdif);
+	hws[IMX6SL_CLK_SSI1_IPG]     = imx_clk_hw_gate2_shared("ssi1_ipg",     "ipg",        base + 0x7c, 18, &share_count_ssi1);
+	hws[IMX6SL_CLK_SSI2_IPG]     = imx_clk_hw_gate2_shared("ssi2_ipg",     "ipg",        base + 0x7c, 20, &share_count_ssi2);
+	hws[IMX6SL_CLK_SSI3_IPG]     = imx_clk_hw_gate2_shared("ssi3_ipg",     "ipg",        base + 0x7c, 22, &share_count_ssi3);
+	hws[IMX6SL_CLK_SSI1]         = imx_clk_hw_gate2_shared("ssi1",         "ssi1_podf",  base + 0x7c, 18, &share_count_ssi1);
+	hws[IMX6SL_CLK_SSI2]         = imx_clk_hw_gate2_shared("ssi2",         "ssi2_podf",  base + 0x7c, 20, &share_count_ssi2);
+	hws[IMX6SL_CLK_SSI3]         = imx_clk_hw_gate2_shared("ssi3",         "ssi3_podf",  base + 0x7c, 22, &share_count_ssi3);
+	hws[IMX6SL_CLK_UART]         = imx_clk_hw_gate2("uart",         "ipg",               base + 0x7c, 24);
+	hws[IMX6SL_CLK_UART_SERIAL]  = imx_clk_hw_gate2("uart_serial",  "uart_root",         base + 0x7c, 26);
+	hws[IMX6SL_CLK_USBOH3]       = imx_clk_hw_gate2("usboh3",       "ipg",               base + 0x80, 0);
+	hws[IMX6SL_CLK_USDHC1]       = imx_clk_hw_gate2("usdhc1",       "usdhc1_podf",       base + 0x80, 2);
+	hws[IMX6SL_CLK_USDHC2]       = imx_clk_hw_gate2("usdhc2",       "usdhc2_podf",       base + 0x80, 4);
+	hws[IMX6SL_CLK_USDHC3]       = imx_clk_hw_gate2("usdhc3",       "usdhc3_podf",       base + 0x80, 6);
+	hws[IMX6SL_CLK_USDHC4]       = imx_clk_hw_gate2("usdhc4",       "usdhc4_podf",       base + 0x80, 8);
 
 	/* Ensure the MMDC CH0 handshake is bypassed */
 	writel_relaxed(readl_relaxed(base + CCDR) |
 		BM_CCM_CCDR_MMDC_CH0_MASK, base + CCDR);
 
-	imx_check_clocks(clks, ARRAY_SIZE(clks));
+	imx_check_clk_hws(hws, IMX6SL_CLK_END);
 
-	clk_data.clks = clks;
-	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
+	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
 
 	/* Ensure the AHB clk is at 132MHz. */
-	ret = clk_set_rate(clks[IMX6SL_CLK_AHB], 132000000);
+	ret = clk_set_rate(hws[IMX6SL_CLK_AHB]->clk, 132000000);
 	if (ret)
 		pr_warn("%s: failed to set AHB clock rate %d!\n",
 			__func__, ret);
 
 	if (IS_ENABLED(CONFIG_USB_MXS_PHY)) {
-		clk_prepare_enable(clks[IMX6SL_CLK_USBPHY1_GATE]);
-		clk_prepare_enable(clks[IMX6SL_CLK_USBPHY2_GATE]);
+		clk_prepare_enable(hws[IMX6SL_CLK_USBPHY1_GATE]->clk);
+		clk_prepare_enable(hws[IMX6SL_CLK_USBPHY2_GATE]->clk);
 	}
 
 	/* Audio-related clocks configuration */
-	clk_set_parent(clks[IMX6SL_CLK_SPDIF0_SEL], clks[IMX6SL_CLK_PLL3_PFD3]);
+	clk_set_parent(hws[IMX6SL_CLK_SPDIF0_SEL]->clk, hws[IMX6SL_CLK_PLL3_PFD3]->clk);
 
 	/* set PLL5 video as lcdif pix parent clock */
-	clk_set_parent(clks[IMX6SL_CLK_LCDIF_PIX_SEL],
-			clks[IMX6SL_CLK_PLL5_VIDEO_DIV]);
+	clk_set_parent(hws[IMX6SL_CLK_LCDIF_PIX_SEL]->clk,
+			hws[IMX6SL_CLK_PLL5_VIDEO_DIV]->clk);
 
-	clk_set_parent(clks[IMX6SL_CLK_LCDIF_AXI_SEL],
-		       clks[IMX6SL_CLK_PLL2_PFD2]);
+	clk_set_parent(hws[IMX6SL_CLK_LCDIF_AXI_SEL]->clk,
+		       hws[IMX6SL_CLK_PLL2_PFD2]->clk);
+
+	for (i = 0; i < ARRAY_SIZE(uart_clk_ids); i++) {
+		int index = uart_clk_ids[i];
+
+		uart_clks[i] = &hws[index]->clk;
+	}
 
 	imx_register_uart_clocks(uart_clks);
 }
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
