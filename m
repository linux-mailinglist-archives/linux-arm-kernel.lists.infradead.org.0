Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30403114EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8DVW5pxMG2z1ZXKIUgM60v3tqgYNuxocxNiVt6p4Fg=; b=LsEDqeV62O4r23
	Kl+wCZcUMQ2rGEmu2bH0GCtPXkXiI7QjfXQpWsVBckD7RJ6h9X2BEaazXFuDXYSTxsq088nLPexSO
	Ptd4sExoJNlvjyiiJSe34v3fP9DgX92UHT6gDcMW6KBz5yTBjsiei+LgQcOqFMOlGdhGTwAKXLFqF
	QIoTtcWCeUoLOp4a+aXhEFWPSrXyptN+7npAMiNUi768To6TerAaMyf28vosgcaC2P1GPEQTUUz+W
	ZNRHO7Lp4pJFBXz3N25FbwsPUH9GT+VECNQZwL95hewNfYAuEfxwIbpPMlbn9bpKSf30I6s2bb+jj
	2L0I/FTG4STHW8LrEdCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6mh-0000Mt-2W; Thu, 02 May 2019 08:09:39 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6lR-0007N0-BJ
 for linux-arm-kernel@bombadil.infradead.org; Thu, 02 May 2019 08:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a4l2SXuN4e/G5UI1TlC0VeGkItNcvRGCq6csjb6oCG8=; b=YT9mezGZIhapsZL1kjUH9wsmAo
 71L8y+jgmMS2AIMscBX0yhxanBAj/qhzCiu8AlQiBcc2JElc2WLSIBGhQvoEJS3hYpkJxlvzFZgUp
 /wHwLHrK/ynPwTWc9Rv+VGV2uhjqEr13+Hr5QvU5M+A3y3Fuv4D+A7CFGtJjTU+3itFz4USplEI70
 /NvP4hWTOzrwYibMhU5ZLwND1isI9NOys1/YZsAggNRnNHc/9MmrbjSA5ekGBh3uQ+wG+qy4iOwkP
 DhFWR/HGZniFPhjcm77tybPE843tOEmiFeR9TRC63GV5mWlLZUi0UuIX4/Osi9T478dgkl5ka21Ku
 /giIyRGA==;
Received: from mail-eopbgr30057.outbound.protection.outlook.com ([40.107.3.57]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6lN-0005WK-JC
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:08:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a4l2SXuN4e/G5UI1TlC0VeGkItNcvRGCq6csjb6oCG8=;
 b=YA9y3DmFLG+uKfmY7t2hjAUgaqqXiIjEuyd7Drwdbsp4Ow83tD9aZuC/i+twVwV5Mh452DzFTlcv32bxmySER6v6qsvCYCkisNVel66lS5Nc9cypjlvzwJd6BoZMCmhNX0MO9yvWceg5qT1WRReE9Xaj3Lq2ITb/jjsXbz9Ptzw=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6161.eurprd04.prod.outlook.com (20.179.36.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Thu, 2 May 2019 08:06:56 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:56 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 18/18] clk: imx6sll: Switch to clk_hw based API
Thread-Topic: [PATCH v2 18/18] clk: imx6sll: Switch to clk_hw based API
Thread-Index: AQHVAL4CDn+K4n6z1ky+VPMQqanGeQ==
Date: Thu, 2 May 2019 08:06:56 +0000
Message-ID: <1556784376-7191-19-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: 5d5ac920-67f0-4512-5409-08d6ced524c3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6161; 
x-ms-traffictypediagnostic: AM0PR04MB6161:
x-microsoft-antispam-prvs: <AM0PR04MB6161D28E31667612B2B4B273F6340@AM0PR04MB6161.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(346002)(396003)(366004)(376002)(136003)(39860400002)(199004)(189003)(30864003)(64756008)(66476007)(66446008)(66556008)(66946007)(73956011)(110136005)(54906003)(5660300002)(6512007)(68736007)(53936002)(53946003)(316002)(386003)(6506007)(26005)(2906002)(186003)(478600001)(102836004)(6436002)(76176011)(52116002)(99286004)(66066001)(6116002)(3846002)(14454004)(25786009)(4326008)(36756003)(256004)(14444005)(86362001)(81156014)(486006)(8676002)(44832011)(81166006)(8936002)(7736002)(446003)(11346002)(2616005)(50226002)(476003)(305945005)(6486002)(71190400001)(71200400001)(32563001)(559001)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6161;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uSXCY7wnd0k3h2jGXi3B08pAobFb0CaR+Hf/poKrJi2IFvZGmKzBlFF4371/3+EA6Nn0UZX7s3bqsodslPQ3fE2wTJouTVKWL7cw81LTaQ7ATCckCC/s9+bJsjwNgIXb6ytbxd9tg35i7ESZK0V7UfDKWOcSHMCRW6xavA4DxXVW6s/N/WxbmznXQreSBYADd/3xdMQDqPogPtES+DAcD21aotwcwredhFgC+xm+/KDOGmu1120SOvY2H69+RcL6d/IdlBEUFtopQyylCaT49yRM9VF1dR+6p7ZXr2GvY7U6n6ZaxK332Ab1uaqILOcl35/xoqrz9weBNaQXcgAZpJrBQkw4tdEJCkCcx61gYG01/9Evh1BXpKzA9R7c73/dtOcM375ty+nTowRvy8DH9c+Rn58I40ISZjqLZCf1p5w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d5ac920-67f0-4512-5409-08d6ced524c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:56.2039 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_040817_859786_3412868E 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Switch the entire clk-imx6sll driver to clk_hw based API.
This allows us to move closer to a clear split between
consumer and provider clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-imx6sll.c | 430 ++++++++++++++++++++++--------------------
 1 file changed, 222 insertions(+), 208 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6sll.c b/drivers/clk/imx/clk-imx6sll.c
index 7eea448..e9cb91b 100644
--- a/drivers/clk/imx/clk-imx6sll.c
+++ b/drivers/clk/imx/clk-imx6sll.c
@@ -53,8 +53,8 @@ static const char *lcdif_sels[] = { "lcdif_podf", "ipp_di0", "ipp_di1", "ldb_di0
 static const char *epdc_pre_sels[] = { "pll2_bus", "pll3_usb_otg", "pll5_video_div", "pll2_pfd0_352m", "pll2_pfd2_396m", "pll3_pfd2_508m", };
 static const char *epdc_sels[] = { "epdc_podf", "ipp_di0", "ipp_di1", "ldb_di0", "ldb_di1", };
 
-static struct clk *clks[IMX6SLL_CLK_END];
-static struct clk_onecell_data clk_data;
+static struct clk_hw **hws;
+static struct clk_hw_onecell_data *clk_hw_data;
 
 static const struct clk_div_table post_div_table[] = {
 	{ .val = 2, .div = 1, },
@@ -76,33 +76,43 @@ static u32 share_count_ssi1;
 static u32 share_count_ssi2;
 static u32 share_count_ssi3;
 
-static struct clk ** const uart_clks[] __initconst = {
-	&clks[IMX6SLL_CLK_UART1_IPG],
-	&clks[IMX6SLL_CLK_UART1_SERIAL],
-	&clks[IMX6SLL_CLK_UART2_IPG],
-	&clks[IMX6SLL_CLK_UART2_SERIAL],
-	&clks[IMX6SLL_CLK_UART3_IPG],
-	&clks[IMX6SLL_CLK_UART3_SERIAL],
-	&clks[IMX6SLL_CLK_UART4_IPG],
-	&clks[IMX6SLL_CLK_UART4_SERIAL],
-	&clks[IMX6SLL_CLK_UART5_IPG],
-	&clks[IMX6SLL_CLK_UART5_SERIAL],
-	NULL
+static const int uart_clk_ids[] __initconst = {
+	IMX6SLL_CLK_UART1_IPG,
+	IMX6SLL_CLK_UART1_SERIAL,
+	IMX6SLL_CLK_UART2_IPG,
+	IMX6SLL_CLK_UART2_SERIAL,
+	IMX6SLL_CLK_UART3_IPG,
+	IMX6SLL_CLK_UART3_SERIAL,
+	IMX6SLL_CLK_UART4_IPG,
+	IMX6SLL_CLK_UART4_SERIAL,
+	IMX6SLL_CLK_UART5_IPG,
+	IMX6SLL_CLK_UART5_SERIAL,
 };
 
+static struct clk **uart_clks[ARRAY_SIZE(uart_clk_ids) + 1] __initdata;
+
 static void __init imx6sll_clocks_init(struct device_node *ccm_node)
 {
 	struct device_node *np;
 	void __iomem *base;
+	int i;
+
+	clk_hw_data = kzalloc(struct_size(clk_hw_data, hws,
+					  IMX6SLL_CLK_END), GFP_KERNEL);
+	if (WARN_ON(!clk_hw_data))
+		return;
+
+	clk_hw_data->num = IMX6SLL_CLK_END;
+	hws = clk_hw_data->hws;
 
-	clks[IMX6SLL_CLK_DUMMY] = imx_clk_fixed("dummy", 0);
+	hws[IMX6SLL_CLK_DUMMY] = imx_clk_hw_fixed("dummy", 0);
 
-	clks[IMX6SLL_CLK_CKIL] = of_clk_get_by_name(ccm_node, "ckil");
-	clks[IMX6SLL_CLK_OSC] = of_clk_get_by_name(ccm_node, "osc");
+	hws[IMX6SLL_CLK_CKIL] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ckil"));
+	hws[IMX6SLL_CLK_OSC] = __clk_get_hw(of_clk_get_by_name(ccm_node, "osc"));
 
 	/* ipp_di clock is external input */
-	clks[IMX6SLL_CLK_IPP_DI0] = of_clk_get_by_name(ccm_node, "ipp_di0");
-	clks[IMX6SLL_CLK_IPP_DI1] = of_clk_get_by_name(ccm_node, "ipp_di1");
+	hws[IMX6SLL_CLK_IPP_DI0] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ipp_di0"));
+	hws[IMX6SLL_CLK_IPP_DI1] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ipp_di1"));
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx6sll-anatop");
 	base = of_iomap(np, 0);
@@ -118,37 +128,37 @@ static void __init imx6sll_clocks_init(struct device_node *ccm_node)
 	writel_relaxed(CCM_ANALOG_PLL_BYPASS, base + xPLL_CLR(0xa0));
 	writel_relaxed(CCM_ANALOG_PLL_BYPASS, base + xPLL_CLR(0xe0));
 
-	clks[IMX6SLL_PLL1_BYPASS_SRC] = imx_clk_mux("pll1_bypass_src", base + 0x00, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SLL_PLL2_BYPASS_SRC] = imx_clk_mux("pll2_bypass_src", base + 0x30, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SLL_PLL3_BYPASS_SRC] = imx_clk_mux("pll3_bypass_src", base + 0x10, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SLL_PLL4_BYPASS_SRC] = imx_clk_mux("pll4_bypass_src", base + 0x70, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SLL_PLL5_BYPASS_SRC] = imx_clk_mux("pll5_bypass_src", base + 0xa0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SLL_PLL6_BYPASS_SRC] = imx_clk_mux("pll6_bypass_src", base + 0xe0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-	clks[IMX6SLL_PLL7_BYPASS_SRC] = imx_clk_mux("pll7_bypass_src", base + 0x20, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
-
-	clks[IMX6SLL_CLK_PLL1] = imx_clk_pllv3(IMX_PLLV3_SYS,	 "pll1", "pll1_bypass_src", base + 0x00, 0x7f);
-	clks[IMX6SLL_CLK_PLL2] = imx_clk_pllv3(IMX_PLLV3_GENERIC, "pll2", "pll2_bypass_src", base + 0x30, 0x1);
-	clks[IMX6SLL_CLK_PLL3] = imx_clk_pllv3(IMX_PLLV3_USB,	 "pll3", "pll3_bypass_src", base + 0x10, 0x3);
-	clks[IMX6SLL_CLK_PLL4] = imx_clk_pllv3(IMX_PLLV3_AV,	 "pll4", "pll4_bypass_src", base + 0x70, 0x7f);
-	clks[IMX6SLL_CLK_PLL5] = imx_clk_pllv3(IMX_PLLV3_AV,	 "pll5", "pll5_bypass_src", base + 0xa0, 0x7f);
-	clks[IMX6SLL_CLK_PLL6] = imx_clk_pllv3(IMX_PLLV3_ENET,	 "pll6", "pll6_bypass_src", base + 0xe0, 0x3);
-	clks[IMX6SLL_CLK_PLL7] = imx_clk_pllv3(IMX_PLLV3_USB,	 "pll7", "pll7_bypass_src", base + 0x20, 0x3);
-
-	clks[IMX6SLL_PLL1_BYPASS] = imx_clk_mux_flags("pll1_bypass", base + 0x00, 16, 1, pll1_bypass_sels, ARRAY_SIZE(pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SLL_PLL2_BYPASS] = imx_clk_mux_flags("pll2_bypass", base + 0x30, 16, 1, pll2_bypass_sels, ARRAY_SIZE(pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SLL_PLL3_BYPASS] = imx_clk_mux_flags("pll3_bypass", base + 0x10, 16, 1, pll3_bypass_sels, ARRAY_SIZE(pll3_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SLL_PLL4_BYPASS] = imx_clk_mux_flags("pll4_bypass", base + 0x70, 16, 1, pll4_bypass_sels, ARRAY_SIZE(pll4_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SLL_PLL5_BYPASS] = imx_clk_mux_flags("pll5_bypass", base + 0xa0, 16, 1, pll5_bypass_sels, ARRAY_SIZE(pll5_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SLL_PLL6_BYPASS] = imx_clk_mux_flags("pll6_bypass", base + 0xe0, 16, 1, pll6_bypass_sels, ARRAY_SIZE(pll6_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX6SLL_PLL7_BYPASS] = imx_clk_mux_flags("pll7_bypass", base + 0x20, 16, 1, pll7_bypass_sels, ARRAY_SIZE(pll7_bypass_sels), CLK_SET_RATE_PARENT);
-
-	clks[IMX6SLL_CLK_PLL1_SYS]	= imx_clk_fixed_factor("pll1_sys", "pll1_bypass", 1, 1);
-	clks[IMX6SLL_CLK_PLL2_BUS]	= imx_clk_gate("pll2_bus",	   "pll2_bypass", base + 0x30, 13);
-	clks[IMX6SLL_CLK_PLL3_USB_OTG]	= imx_clk_gate("pll3_usb_otg",	   "pll3_bypass", base + 0x10, 13);
-	clks[IMX6SLL_CLK_PLL4_AUDIO]	= imx_clk_gate("pll4_audio",	   "pll4_bypass", base + 0x70, 13);
-	clks[IMX6SLL_CLK_PLL5_VIDEO]	= imx_clk_gate("pll5_video",	   "pll5_bypass", base + 0xa0, 13);
-	clks[IMX6SLL_CLK_PLL6_ENET]	= imx_clk_gate("pll6_enet",	   "pll6_bypass", base + 0xe0, 13);
-	clks[IMX6SLL_CLK_PLL7_USB_HOST]	= imx_clk_gate("pll7_usb_host",	   "pll7_bypass", base + 0x20, 13);
+	hws[IMX6SLL_PLL1_BYPASS_SRC] = imx_clk_hw_mux("pll1_bypass_src", base + 0x00, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SLL_PLL2_BYPASS_SRC] = imx_clk_hw_mux("pll2_bypass_src", base + 0x30, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SLL_PLL3_BYPASS_SRC] = imx_clk_hw_mux("pll3_bypass_src", base + 0x10, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SLL_PLL4_BYPASS_SRC] = imx_clk_hw_mux("pll4_bypass_src", base + 0x70, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SLL_PLL5_BYPASS_SRC] = imx_clk_hw_mux("pll5_bypass_src", base + 0xa0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SLL_PLL6_BYPASS_SRC] = imx_clk_hw_mux("pll6_bypass_src", base + 0xe0, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+	hws[IMX6SLL_PLL7_BYPASS_SRC] = imx_clk_hw_mux("pll7_bypass_src", base + 0x20, 14, 1, pll_bypass_src_sels, ARRAY_SIZE(pll_bypass_src_sels));
+
+	hws[IMX6SLL_CLK_PLL1] = imx_clk_hw_pllv3(IMX_PLLV3_SYS,	 "pll1", "pll1_bypass_src", base + 0x00, 0x7f);
+	hws[IMX6SLL_CLK_PLL2] = imx_clk_hw_pllv3(IMX_PLLV3_GENERIC, "pll2", "pll2_bypass_src", base + 0x30, 0x1);
+	hws[IMX6SLL_CLK_PLL3] = imx_clk_hw_pllv3(IMX_PLLV3_USB,	 "pll3", "pll3_bypass_src", base + 0x10, 0x3);
+	hws[IMX6SLL_CLK_PLL4] = imx_clk_hw_pllv3(IMX_PLLV3_AV,	 "pll4", "pll4_bypass_src", base + 0x70, 0x7f);
+	hws[IMX6SLL_CLK_PLL5] = imx_clk_hw_pllv3(IMX_PLLV3_AV,	 "pll5", "pll5_bypass_src", base + 0xa0, 0x7f);
+	hws[IMX6SLL_CLK_PLL6] = imx_clk_hw_pllv3(IMX_PLLV3_ENET,	 "pll6", "pll6_bypass_src", base + 0xe0, 0x3);
+	hws[IMX6SLL_CLK_PLL7] = imx_clk_hw_pllv3(IMX_PLLV3_USB,	 "pll7", "pll7_bypass_src", base + 0x20, 0x3);
+
+	hws[IMX6SLL_PLL1_BYPASS] = imx_clk_hw_mux_flags("pll1_bypass", base + 0x00, 16, 1, pll1_bypass_sels, ARRAY_SIZE(pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SLL_PLL2_BYPASS] = imx_clk_hw_mux_flags("pll2_bypass", base + 0x30, 16, 1, pll2_bypass_sels, ARRAY_SIZE(pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SLL_PLL3_BYPASS] = imx_clk_hw_mux_flags("pll3_bypass", base + 0x10, 16, 1, pll3_bypass_sels, ARRAY_SIZE(pll3_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SLL_PLL4_BYPASS] = imx_clk_hw_mux_flags("pll4_bypass", base + 0x70, 16, 1, pll4_bypass_sels, ARRAY_SIZE(pll4_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SLL_PLL5_BYPASS] = imx_clk_hw_mux_flags("pll5_bypass", base + 0xa0, 16, 1, pll5_bypass_sels, ARRAY_SIZE(pll5_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SLL_PLL6_BYPASS] = imx_clk_hw_mux_flags("pll6_bypass", base + 0xe0, 16, 1, pll6_bypass_sels, ARRAY_SIZE(pll6_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX6SLL_PLL7_BYPASS] = imx_clk_hw_mux_flags("pll7_bypass", base + 0x20, 16, 1, pll7_bypass_sels, ARRAY_SIZE(pll7_bypass_sels), CLK_SET_RATE_PARENT);
+
+	hws[IMX6SLL_CLK_PLL1_SYS]	= imx_clk_hw_fixed_factor("pll1_sys", "pll1_bypass", 1, 1);
+	hws[IMX6SLL_CLK_PLL2_BUS]	= imx_clk_hw_gate("pll2_bus",	   "pll2_bypass", base + 0x30, 13);
+	hws[IMX6SLL_CLK_PLL3_USB_OTG]	= imx_clk_hw_gate("pll3_usb_otg",	   "pll3_bypass", base + 0x10, 13);
+	hws[IMX6SLL_CLK_PLL4_AUDIO]	= imx_clk_hw_gate("pll4_audio",	   "pll4_bypass", base + 0x70, 13);
+	hws[IMX6SLL_CLK_PLL5_VIDEO]	= imx_clk_hw_gate("pll5_video",	   "pll5_bypass", base + 0xa0, 13);
+	hws[IMX6SLL_CLK_PLL6_ENET]	= imx_clk_hw_gate("pll6_enet",	   "pll6_bypass", base + 0xe0, 13);
+	hws[IMX6SLL_CLK_PLL7_USB_HOST]	= imx_clk_hw_gate("pll7_usb_host",	   "pll7_bypass", base + 0x20, 13);
 
 	/*
 	 * Bit 20 is the reserved and read-only bit, we do this only for:
@@ -156,209 +166,213 @@ static void __init imx6sll_clocks_init(struct device_node *ccm_node)
 	 * - Keep refcount when do usbphy clk_enable/disable, in that case,
 	 * the clk framework many need to enable/disable usbphy's parent
 	 */
-	clks[IMX6SLL_CLK_USBPHY1] = imx_clk_gate("usbphy1", "pll3_usb_otg",  base + 0x10, 20);
-	clks[IMX6SLL_CLK_USBPHY2] = imx_clk_gate("usbphy2", "pll7_usb_host", base + 0x20, 20);
+	hws[IMX6SLL_CLK_USBPHY1] = imx_clk_hw_gate("usbphy1", "pll3_usb_otg",  base + 0x10, 20);
+	hws[IMX6SLL_CLK_USBPHY2] = imx_clk_hw_gate("usbphy2", "pll7_usb_host", base + 0x20, 20);
 
 	/*
 	 * usbphy*_gate needs to be on after system boots up, and software
 	 * never needs to control it anymore.
 	 */
 	if (IS_ENABLED(CONFIG_USB_MXS_PHY)) {
-		clks[IMX6SLL_CLK_USBPHY1_GATE] = imx_clk_gate_flags("usbphy1_gate", "dummy", base + 0x10, 6, CLK_IS_CRITICAL);
-		clks[IMX6SLL_CLK_USBPHY2_GATE] = imx_clk_gate_flags("usbphy2_gate", "dummy", base + 0x20, 6, CLK_IS_CRITICAL);
+		hws[IMX6SLL_CLK_USBPHY1_GATE] = imx_clk_hw_gate_flags("usbphy1_gate", "dummy", base + 0x10, 6, CLK_IS_CRITICAL);
+		hws[IMX6SLL_CLK_USBPHY2_GATE] = imx_clk_hw_gate_flags("usbphy2_gate", "dummy", base + 0x20, 6, CLK_IS_CRITICAL);
 	}
 
 	/*					name		   parent_name	   reg		idx */
-	clks[IMX6SLL_CLK_PLL2_PFD0] = imx_clk_pfd("pll2_pfd0_352m", "pll2_bus", base + 0x100, 0);
-	clks[IMX6SLL_CLK_PLL2_PFD1] = imx_clk_pfd("pll2_pfd1_594m", "pll2_bus", base + 0x100, 1);
-	clks[IMX6SLL_CLK_PLL2_PFD2] = imx_clk_pfd("pll2_pfd2_396m", "pll2_bus", base + 0x100, 2);
-	clks[IMX6SLL_CLK_PLL2_PFD3] = imx_clk_pfd("pll2_pfd3_594m", "pll2_bus",	base + 0x100, 3);
-	clks[IMX6SLL_CLK_PLL3_PFD0] = imx_clk_pfd("pll3_pfd0_720m", "pll3_usb_otg", base + 0xf0, 0);
-	clks[IMX6SLL_CLK_PLL3_PFD1] = imx_clk_pfd("pll3_pfd1_540m", "pll3_usb_otg", base + 0xf0, 1);
-	clks[IMX6SLL_CLK_PLL3_PFD2] = imx_clk_pfd("pll3_pfd2_508m", "pll3_usb_otg", base + 0xf0, 2);
-	clks[IMX6SLL_CLK_PLL3_PFD3] = imx_clk_pfd("pll3_pfd3_454m", "pll3_usb_otg", base + 0xf0, 3);
-
-	clks[IMX6SLL_CLK_PLL4_POST_DIV]  = clk_register_divider_table(NULL, "pll4_post_div", "pll4_audio",
+	hws[IMX6SLL_CLK_PLL2_PFD0] = imx_clk_hw_pfd("pll2_pfd0_352m", "pll2_bus", base + 0x100, 0);
+	hws[IMX6SLL_CLK_PLL2_PFD1] = imx_clk_hw_pfd("pll2_pfd1_594m", "pll2_bus", base + 0x100, 1);
+	hws[IMX6SLL_CLK_PLL2_PFD2] = imx_clk_hw_pfd("pll2_pfd2_396m", "pll2_bus", base + 0x100, 2);
+	hws[IMX6SLL_CLK_PLL2_PFD3] = imx_clk_hw_pfd("pll2_pfd3_594m", "pll2_bus",	base + 0x100, 3);
+	hws[IMX6SLL_CLK_PLL3_PFD0] = imx_clk_hw_pfd("pll3_pfd0_720m", "pll3_usb_otg", base + 0xf0, 0);
+	hws[IMX6SLL_CLK_PLL3_PFD1] = imx_clk_hw_pfd("pll3_pfd1_540m", "pll3_usb_otg", base + 0xf0, 1);
+	hws[IMX6SLL_CLK_PLL3_PFD2] = imx_clk_hw_pfd("pll3_pfd2_508m", "pll3_usb_otg", base + 0xf0, 2);
+	hws[IMX6SLL_CLK_PLL3_PFD3] = imx_clk_hw_pfd("pll3_pfd3_454m", "pll3_usb_otg", base + 0xf0, 3);
+
+	hws[IMX6SLL_CLK_PLL4_POST_DIV]  = clk_hw_register_divider_table(NULL, "pll4_post_div", "pll4_audio",
 		 CLK_SET_RATE_PARENT | CLK_SET_RATE_GATE, base + 0x70, 19, 2, 0, post_div_table, &imx_ccm_lock);
-	clks[IMX6SLL_CLK_PLL4_AUDIO_DIV] = clk_register_divider(NULL, "pll4_audio_div", "pll4_post_div",
+	hws[IMX6SLL_CLK_PLL4_AUDIO_DIV] = clk_hw_register_divider(NULL, "pll4_audio_div", "pll4_post_div",
 		 CLK_SET_RATE_PARENT | CLK_SET_RATE_GATE, base + 0x170, 15, 1, 0, &imx_ccm_lock);
-	clks[IMX6SLL_CLK_PLL5_POST_DIV]  = clk_register_divider_table(NULL, "pll5_post_div", "pll5_video",
+	hws[IMX6SLL_CLK_PLL5_POST_DIV]  = clk_hw_register_divider_table(NULL, "pll5_post_div", "pll5_video",
 		 CLK_SET_RATE_PARENT | CLK_SET_RATE_GATE, base + 0xa0, 19, 2, 0, post_div_table, &imx_ccm_lock);
-	clks[IMX6SLL_CLK_PLL5_VIDEO_DIV] = clk_register_divider_table(NULL, "pll5_video_div", "pll5_post_div",
+	hws[IMX6SLL_CLK_PLL5_VIDEO_DIV] = clk_hw_register_divider_table(NULL, "pll5_video_div", "pll5_post_div",
 		 CLK_SET_RATE_PARENT | CLK_SET_RATE_GATE, base + 0x170, 30, 2, 0, video_div_table, &imx_ccm_lock);
 
 	/*						   name		parent_name	 mult  div */
-	clks[IMX6SLL_CLK_PLL2_198M] = imx_clk_fixed_factor("pll2_198m", "pll2_pfd2_396m", 1, 2);
-	clks[IMX6SLL_CLK_PLL3_120M] = imx_clk_fixed_factor("pll3_120m", "pll3_usb_otg",   1, 4);
-	clks[IMX6SLL_CLK_PLL3_80M]  = imx_clk_fixed_factor("pll3_80m",  "pll3_usb_otg",   1, 6);
-	clks[IMX6SLL_CLK_PLL3_60M]  = imx_clk_fixed_factor("pll3_60m",  "pll3_usb_otg",   1, 8);
+	hws[IMX6SLL_CLK_PLL2_198M] = imx_clk_hw_fixed_factor("pll2_198m", "pll2_pfd2_396m", 1, 2);
+	hws[IMX6SLL_CLK_PLL3_120M] = imx_clk_hw_fixed_factor("pll3_120m", "pll3_usb_otg",   1, 4);
+	hws[IMX6SLL_CLK_PLL3_80M]  = imx_clk_hw_fixed_factor("pll3_80m",  "pll3_usb_otg",   1, 6);
+	hws[IMX6SLL_CLK_PLL3_60M]  = imx_clk_hw_fixed_factor("pll3_60m",  "pll3_usb_otg",   1, 8);
 
 	np = ccm_node;
 	base = of_iomap(np, 0);
 	WARN_ON(!base);
 
-	clks[IMX6SLL_CLK_STEP] 	 	  = imx_clk_mux("step", base + 0x0c, 8, 1, step_sels, ARRAY_SIZE(step_sels));
-	clks[IMX6SLL_CLK_PLL1_SW] 	  = imx_clk_mux_flags("pll1_sw",   base + 0x0c, 2,  1, pll1_sw_sels, ARRAY_SIZE(pll1_sw_sels), 0);
-	clks[IMX6SLL_CLK_AXI_ALT_SEL]	  = imx_clk_mux("axi_alt_sel",	   base + 0x14, 7,  1, axi_alt_sels, ARRAY_SIZE(axi_alt_sels));
-	clks[IMX6SLL_CLK_AXI_SEL] 	  = imx_clk_mux_flags("axi_sel",   base + 0x14, 6,  1, axi_sels, ARRAY_SIZE(axi_sels), 0);
-	clks[IMX6SLL_CLK_PERIPH_PRE]	  = imx_clk_mux("periph_pre",      base + 0x18, 18, 2, periph_pre_sels, ARRAY_SIZE(periph_pre_sels));
-	clks[IMX6SLL_CLK_PERIPH2_PRE]	  = imx_clk_mux("periph2_pre",     base + 0x18, 21, 2, periph2_pre_sels, ARRAY_SIZE(periph2_pre_sels));
-	clks[IMX6SLL_CLK_PERIPH_CLK2_SEL]  = imx_clk_mux("periph_clk2_sel",  base + 0x18, 12, 2, periph_clk2_sels, ARRAY_SIZE(periph_clk2_sels));
-	clks[IMX6SLL_CLK_PERIPH2_CLK2_SEL] = imx_clk_mux("periph2_clk2_sel", base + 0x18, 20, 1, periph2_clk2_sels, ARRAY_SIZE(periph2_clk2_sels));
-	clks[IMX6SLL_CLK_USDHC1_SEL]	  = imx_clk_mux("usdhc1_sel",   base + 0x1c, 16, 1, usdhc_sels, ARRAY_SIZE(usdhc_sels));
-	clks[IMX6SLL_CLK_USDHC2_SEL]	  = imx_clk_mux("usdhc2_sel",   base + 0x1c, 17, 1, usdhc_sels, ARRAY_SIZE(usdhc_sels));
-	clks[IMX6SLL_CLK_USDHC3_SEL]	  = imx_clk_mux("usdhc3_sel",   base + 0x1c, 18, 1, usdhc_sels, ARRAY_SIZE(usdhc_sels));
-	clks[IMX6SLL_CLK_SSI1_SEL]	  = imx_clk_mux("ssi1_sel",     base + 0x1c, 10, 2, ssi_sels, ARRAY_SIZE(ssi_sels));
-	clks[IMX6SLL_CLK_SSI2_SEL]	  = imx_clk_mux("ssi2_sel",     base + 0x1c, 12, 2, ssi_sels, ARRAY_SIZE(ssi_sels));
-	clks[IMX6SLL_CLK_SSI3_SEL]	  = imx_clk_mux("ssi3_sel",     base + 0x1c, 14, 2, ssi_sels, ARRAY_SIZE(ssi_sels));
-	clks[IMX6SLL_CLK_PERCLK_SEL] 	  = imx_clk_mux("perclk_sel",	base + 0x1c, 6,  1, perclk_sels, ARRAY_SIZE(perclk_sels));
-	clks[IMX6SLL_CLK_UART_SEL]	  = imx_clk_mux("uart_sel",	base + 0x24, 6,  1, uart_sels, ARRAY_SIZE(uart_sels));
-	clks[IMX6SLL_CLK_SPDIF_SEL]	  = imx_clk_mux("spdif_sel",	base + 0x30, 20, 2, spdif_sels, ARRAY_SIZE(spdif_sels));
-	clks[IMX6SLL_CLK_EXTERN_AUDIO_SEL] = imx_clk_mux("extern_audio_sel", base + 0x30, 7,  2, spdif_sels, ARRAY_SIZE(spdif_sels));
-	clks[IMX6SLL_CLK_EPDC_PRE_SEL]	  = imx_clk_mux("epdc_pre_sel",	base + 0x34, 15, 3, epdc_pre_sels, ARRAY_SIZE(epdc_pre_sels));
-	clks[IMX6SLL_CLK_EPDC_SEL]	  = imx_clk_mux("epdc_sel",	base + 0x34, 9, 3, epdc_sels, ARRAY_SIZE(epdc_sels));
-	clks[IMX6SLL_CLK_ECSPI_SEL]	  = imx_clk_mux("ecspi_sel",	base + 0x38, 18, 1, ecspi_sels, ARRAY_SIZE(ecspi_sels));
-	clks[IMX6SLL_CLK_LCDIF_PRE_SEL]	  = imx_clk_mux("lcdif_pre_sel", base + 0x38, 15, 3, lcdif_pre_sels, ARRAY_SIZE(lcdif_pre_sels));
-	clks[IMX6SLL_CLK_LCDIF_SEL]	  = imx_clk_mux("lcdif_sel", 	 base + 0x38, 9, 3, lcdif_sels, ARRAY_SIZE(lcdif_sels));
-
-	clks[IMX6SLL_CLK_PERIPH]  = imx_clk_busy_mux("periph",  base + 0x14, 25, 1, base + 0x48, 5, periph_sels, ARRAY_SIZE(periph_sels));
-	clks[IMX6SLL_CLK_PERIPH2] = imx_clk_busy_mux("periph2", base + 0x14, 26, 1, base + 0x48, 3, periph2_sels, ARRAY_SIZE(periph2_sels));
-
-	clks[IMX6SLL_CLK_PERIPH_CLK2]	= imx_clk_divider("periph_clk2",   "periph_clk2_sel",  	base + 0x14, 27, 3);
-	clks[IMX6SLL_CLK_PERIPH2_CLK2]	= imx_clk_divider("periph2_clk2",  "periph2_clk2_sel", 	base + 0x14, 0,  3);
-	clks[IMX6SLL_CLK_IPG]		= imx_clk_divider("ipg",	   "ahb",		base + 0x14, 8,	 2);
-	clks[IMX6SLL_CLK_LCDIF_PODF]	= imx_clk_divider("lcdif_podf",	   "lcdif_pred",	base + 0x18, 23, 3);
-	clks[IMX6SLL_CLK_PERCLK]	= imx_clk_divider("perclk",	   "perclk_sel",	base + 0x1c, 0,  6);
-	clks[IMX6SLL_CLK_USDHC3_PODF]   = imx_clk_divider("usdhc3_podf",   "usdhc3_sel",	base + 0x24, 19, 3);
-	clks[IMX6SLL_CLK_USDHC2_PODF]	= imx_clk_divider("usdhc2_podf",   "usdhc2_sel",	base + 0x24, 16, 3);
-	clks[IMX6SLL_CLK_USDHC1_PODF]	= imx_clk_divider("usdhc1_podf",   "usdhc1_sel",	base + 0x24, 11, 3);
-	clks[IMX6SLL_CLK_UART_PODF]	= imx_clk_divider("uart_podf",	   "uart_sel",		base + 0x24, 0,  6);
-	clks[IMX6SLL_CLK_SSI3_PRED]	= imx_clk_divider("ssi3_pred",	   "ssi3_sel",		base + 0x28, 22, 3);
-	clks[IMX6SLL_CLK_SSI3_PODF]	= imx_clk_divider("ssi3_podf",	   "ssi3_pred",		base + 0x28, 16, 6);
-	clks[IMX6SLL_CLK_SSI1_PRED]	= imx_clk_divider("ssi1_pred",	   "ssi1_sel",		base + 0x28, 6,	 3);
-	clks[IMX6SLL_CLK_SSI1_PODF]	= imx_clk_divider("ssi1_podf",	   "ssi1_pred",		base + 0x28, 0,	 6);
-	clks[IMX6SLL_CLK_SSI2_PRED]	= imx_clk_divider("ssi2_pred",	   "ssi2_sel",		base + 0x2c, 6,	 3);
-	clks[IMX6SLL_CLK_SSI2_PODF]	= imx_clk_divider("ssi2_podf",	   "ssi2_pred",		base + 0x2c, 0,  6);
-	clks[IMX6SLL_CLK_SPDIF_PRED]	= imx_clk_divider("spdif_pred",	   "spdif_sel",		base + 0x30, 25, 3);
-	clks[IMX6SLL_CLK_SPDIF_PODF]	= imx_clk_divider("spdif_podf",	   "spdif_pred",	base + 0x30, 22, 3);
-	clks[IMX6SLL_CLK_EXTERN_AUDIO_PRED] = imx_clk_divider("extern_audio_pred", "extern_audio_sel",  base + 0x30, 12, 3);
-	clks[IMX6SLL_CLK_EXTERN_AUDIO_PODF] = imx_clk_divider("extern_audio_podf", "extern_audio_pred", base + 0x30, 9,  3);
-	clks[IMX6SLL_CLK_EPDC_PODF]  = imx_clk_divider("epdc_podf",  "epdc_pre_sel",  base + 0x34, 12, 3);
-	clks[IMX6SLL_CLK_ECSPI_PODF] = imx_clk_divider("ecspi_podf", "ecspi_sel",     base + 0x38, 19, 6);
-	clks[IMX6SLL_CLK_LCDIF_PRED] = imx_clk_divider("lcdif_pred", "lcdif_pre_sel", base + 0x38, 12, 3);
-
-	clks[IMX6SLL_CLK_ARM]		= imx_clk_busy_divider("arm", 	    "pll1_sw",	base +	0x10, 0,  3,  base + 0x48, 16);
-	clks[IMX6SLL_CLK_MMDC_PODF]	= imx_clk_busy_divider("mmdc_podf", "periph2",	base +  0x14, 3,  3,  base + 0x48, 2);
-	clks[IMX6SLL_CLK_AXI_PODF]	= imx_clk_busy_divider("axi",       "axi_sel",	base +  0x14, 16, 3,  base + 0x48, 0);
-	clks[IMX6SLL_CLK_AHB]		= imx_clk_busy_divider("ahb",	    "periph",	base +  0x14, 10, 3,  base + 0x48, 1);
-
-	clks[IMX6SLL_CLK_LDB_DI0_DIV_3_5] = imx_clk_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
-	clks[IMX6SLL_CLK_LDB_DI0_DIV_7]	  = imx_clk_fixed_factor("ldb_di0_div_7",   "ldb_di0_sel", 1, 7);
-	clks[IMX6SLL_CLK_LDB_DI1_DIV_3_5] = imx_clk_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
-	clks[IMX6SLL_CLK_LDB_DI1_DIV_7]	  = imx_clk_fixed_factor("ldb_di1_div_7",   "ldb_di1_sel", 1, 7);
-
-	clks[IMX6SLL_CLK_LDB_DI0_SEL]	= imx_clk_mux("ldb_di0_sel", base + 0x2c, 9, 3, ldb_di0_sels, ARRAY_SIZE(ldb_di0_sels));
-	clks[IMX6SLL_CLK_LDB_DI1_SEL]   = imx_clk_mux("ldb_di1_sel", base + 0x1c, 7, 3, ldb_di1_sels, ARRAY_SIZE(ldb_di1_sels));
-	clks[IMX6SLL_CLK_LDB_DI0_DIV_SEL] = imx_clk_mux("ldb_di0_div_sel", base + 0x20, 10, 1, ldb_di0_div_sels, ARRAY_SIZE(ldb_di0_div_sels));
-	clks[IMX6SLL_CLK_LDB_DI1_DIV_SEL] = imx_clk_mux("ldb_di1_div_sel", base + 0x20, 10, 1, ldb_di1_div_sels, ARRAY_SIZE(ldb_di1_div_sels));
+	hws[IMX6SLL_CLK_STEP]		  = imx_clk_hw_mux("step", base + 0x0c, 8, 1, step_sels, ARRAY_SIZE(step_sels));
+	hws[IMX6SLL_CLK_PLL1_SW]	  = imx_clk_hw_mux_flags("pll1_sw",   base + 0x0c, 2,  1, pll1_sw_sels, ARRAY_SIZE(pll1_sw_sels), 0);
+	hws[IMX6SLL_CLK_AXI_ALT_SEL]	  = imx_clk_hw_mux("axi_alt_sel",	   base + 0x14, 7,  1, axi_alt_sels, ARRAY_SIZE(axi_alt_sels));
+	hws[IMX6SLL_CLK_AXI_SEL]	  = imx_clk_hw_mux_flags("axi_sel",   base + 0x14, 6,  1, axi_sels, ARRAY_SIZE(axi_sels), 0);
+	hws[IMX6SLL_CLK_PERIPH_PRE]	  = imx_clk_hw_mux("periph_pre",      base + 0x18, 18, 2, periph_pre_sels, ARRAY_SIZE(periph_pre_sels));
+	hws[IMX6SLL_CLK_PERIPH2_PRE]	  = imx_clk_hw_mux("periph2_pre",     base + 0x18, 21, 2, periph2_pre_sels, ARRAY_SIZE(periph2_pre_sels));
+	hws[IMX6SLL_CLK_PERIPH_CLK2_SEL]  = imx_clk_hw_mux("periph_clk2_sel",  base + 0x18, 12, 2, periph_clk2_sels, ARRAY_SIZE(periph_clk2_sels));
+	hws[IMX6SLL_CLK_PERIPH2_CLK2_SEL] = imx_clk_hw_mux("periph2_clk2_sel", base + 0x18, 20, 1, periph2_clk2_sels, ARRAY_SIZE(periph2_clk2_sels));
+	hws[IMX6SLL_CLK_USDHC1_SEL]	  = imx_clk_hw_mux("usdhc1_sel",   base + 0x1c, 16, 1, usdhc_sels, ARRAY_SIZE(usdhc_sels));
+	hws[IMX6SLL_CLK_USDHC2_SEL]	  = imx_clk_hw_mux("usdhc2_sel",   base + 0x1c, 17, 1, usdhc_sels, ARRAY_SIZE(usdhc_sels));
+	hws[IMX6SLL_CLK_USDHC3_SEL]	  = imx_clk_hw_mux("usdhc3_sel",   base + 0x1c, 18, 1, usdhc_sels, ARRAY_SIZE(usdhc_sels));
+	hws[IMX6SLL_CLK_SSI1_SEL]	  = imx_clk_hw_mux("ssi1_sel",     base + 0x1c, 10, 2, ssi_sels, ARRAY_SIZE(ssi_sels));
+	hws[IMX6SLL_CLK_SSI2_SEL]	  = imx_clk_hw_mux("ssi2_sel",     base + 0x1c, 12, 2, ssi_sels, ARRAY_SIZE(ssi_sels));
+	hws[IMX6SLL_CLK_SSI3_SEL]	  = imx_clk_hw_mux("ssi3_sel",     base + 0x1c, 14, 2, ssi_sels, ARRAY_SIZE(ssi_sels));
+	hws[IMX6SLL_CLK_PERCLK_SEL]	  = imx_clk_hw_mux("perclk_sel",   base + 0x1c, 6,  1, perclk_sels, ARRAY_SIZE(perclk_sels));
+	hws[IMX6SLL_CLK_UART_SEL]	  = imx_clk_hw_mux("uart_sel",	base + 0x24, 6,  1, uart_sels, ARRAY_SIZE(uart_sels));
+	hws[IMX6SLL_CLK_SPDIF_SEL]	  = imx_clk_hw_mux("spdif_sel",	base + 0x30, 20, 2, spdif_sels, ARRAY_SIZE(spdif_sels));
+	hws[IMX6SLL_CLK_EXTERN_AUDIO_SEL] = imx_clk_hw_mux("extern_audio_sel", base + 0x30, 7,  2, spdif_sels, ARRAY_SIZE(spdif_sels));
+	hws[IMX6SLL_CLK_EPDC_PRE_SEL]	  = imx_clk_hw_mux("epdc_pre_sel",	base + 0x34, 15, 3, epdc_pre_sels, ARRAY_SIZE(epdc_pre_sels));
+	hws[IMX6SLL_CLK_EPDC_SEL]	  = imx_clk_hw_mux("epdc_sel",	base + 0x34, 9, 3, epdc_sels, ARRAY_SIZE(epdc_sels));
+	hws[IMX6SLL_CLK_ECSPI_SEL]	  = imx_clk_hw_mux("ecspi_sel",	base + 0x38, 18, 1, ecspi_sels, ARRAY_SIZE(ecspi_sels));
+	hws[IMX6SLL_CLK_LCDIF_PRE_SEL]	  = imx_clk_hw_mux("lcdif_pre_sel", base + 0x38, 15, 3, lcdif_pre_sels, ARRAY_SIZE(lcdif_pre_sels));
+	hws[IMX6SLL_CLK_LCDIF_SEL]	  = imx_clk_hw_mux("lcdif_sel",	    base + 0x38, 9, 3, lcdif_sels, ARRAY_SIZE(lcdif_sels));
+
+	hws[IMX6SLL_CLK_PERIPH]  = imx_clk_hw_busy_mux("periph",  base + 0x14, 25, 1, base + 0x48, 5, periph_sels, ARRAY_SIZE(periph_sels));
+	hws[IMX6SLL_CLK_PERIPH2] = imx_clk_hw_busy_mux("periph2", base + 0x14, 26, 1, base + 0x48, 3, periph2_sels, ARRAY_SIZE(periph2_sels));
+
+	hws[IMX6SLL_CLK_PERIPH_CLK2]	= imx_clk_hw_divider("periph_clk2",   "periph_clk2_sel",	base + 0x14, 27, 3);
+	hws[IMX6SLL_CLK_PERIPH2_CLK2]	= imx_clk_hw_divider("periph2_clk2",  "periph2_clk2_sel",	base + 0x14, 0,  3);
+	hws[IMX6SLL_CLK_IPG]		= imx_clk_hw_divider("ipg",	   "ahb",	base + 0x14, 8, 2);
+	hws[IMX6SLL_CLK_LCDIF_PODF]	= imx_clk_hw_divider("lcdif_podf",	   "lcdif_pred",	base + 0x18, 23, 3);
+	hws[IMX6SLL_CLK_PERCLK]	= imx_clk_hw_divider("perclk",	   "perclk_sel",	base + 0x1c, 0,  6);
+	hws[IMX6SLL_CLK_USDHC3_PODF]   = imx_clk_hw_divider("usdhc3_podf",   "usdhc3_sel",	base + 0x24, 19, 3);
+	hws[IMX6SLL_CLK_USDHC2_PODF]	= imx_clk_hw_divider("usdhc2_podf",   "usdhc2_sel",	base + 0x24, 16, 3);
+	hws[IMX6SLL_CLK_USDHC1_PODF]	= imx_clk_hw_divider("usdhc1_podf",   "usdhc1_sel",	base + 0x24, 11, 3);
+	hws[IMX6SLL_CLK_UART_PODF]	= imx_clk_hw_divider("uart_podf",	   "uart_sel",		base + 0x24, 0,  6);
+	hws[IMX6SLL_CLK_SSI3_PRED]	= imx_clk_hw_divider("ssi3_pred",	   "ssi3_sel",		base + 0x28, 22, 3);
+	hws[IMX6SLL_CLK_SSI3_PODF]	= imx_clk_hw_divider("ssi3_podf",	   "ssi3_pred",		base + 0x28, 16, 6);
+	hws[IMX6SLL_CLK_SSI1_PRED]	= imx_clk_hw_divider("ssi1_pred",	   "ssi1_sel",		base + 0x28, 6,	 3);
+	hws[IMX6SLL_CLK_SSI1_PODF]	= imx_clk_hw_divider("ssi1_podf",	   "ssi1_pred",		base + 0x28, 0,	 6);
+	hws[IMX6SLL_CLK_SSI2_PRED]	= imx_clk_hw_divider("ssi2_pred",	   "ssi2_sel",		base + 0x2c, 6,	 3);
+	hws[IMX6SLL_CLK_SSI2_PODF]	= imx_clk_hw_divider("ssi2_podf",	   "ssi2_pred",		base + 0x2c, 0,  6);
+	hws[IMX6SLL_CLK_SPDIF_PRED]	= imx_clk_hw_divider("spdif_pred",	   "spdif_sel",		base + 0x30, 25, 3);
+	hws[IMX6SLL_CLK_SPDIF_PODF]	= imx_clk_hw_divider("spdif_podf",	   "spdif_pred",	base + 0x30, 22, 3);
+	hws[IMX6SLL_CLK_EXTERN_AUDIO_PRED] = imx_clk_hw_divider("extern_audio_pred", "extern_audio_sel",  base + 0x30, 12, 3);
+	hws[IMX6SLL_CLK_EXTERN_AUDIO_PODF] = imx_clk_hw_divider("extern_audio_podf", "extern_audio_pred", base + 0x30, 9,  3);
+	hws[IMX6SLL_CLK_EPDC_PODF]  = imx_clk_hw_divider("epdc_podf",  "epdc_pre_sel",  base + 0x34, 12, 3);
+	hws[IMX6SLL_CLK_ECSPI_PODF] = imx_clk_hw_divider("ecspi_podf", "ecspi_sel",     base + 0x38, 19, 6);
+	hws[IMX6SLL_CLK_LCDIF_PRED] = imx_clk_hw_divider("lcdif_pred", "lcdif_pre_sel", base + 0x38, 12, 3);
+
+	hws[IMX6SLL_CLK_ARM]		= imx_clk_hw_busy_divider("arm",	"pll1_sw",	base +	0x10, 0,  3,  base + 0x48, 16);
+	hws[IMX6SLL_CLK_MMDC_PODF]	= imx_clk_hw_busy_divider("mmdc_podf",	"periph2",	base +  0x14, 3,  3,  base + 0x48, 2);
+	hws[IMX6SLL_CLK_AXI_PODF]	= imx_clk_hw_busy_divider("axi",	"axi_sel",	base +  0x14, 16, 3,  base + 0x48, 0);
+	hws[IMX6SLL_CLK_AHB]		= imx_clk_hw_busy_divider("ahb",	"periph",	base +  0x14, 10, 3,  base + 0x48, 1);
+
+	hws[IMX6SLL_CLK_LDB_DI0_DIV_3_5] = imx_clk_hw_fixed_factor("ldb_di0_div_3_5", "ldb_di0_sel", 2, 7);
+	hws[IMX6SLL_CLK_LDB_DI0_DIV_7]	  = imx_clk_hw_fixed_factor("ldb_di0_div_7",   "ldb_di0_sel", 1, 7);
+	hws[IMX6SLL_CLK_LDB_DI1_DIV_3_5] = imx_clk_hw_fixed_factor("ldb_di1_div_3_5", "ldb_di1_sel", 2, 7);
+	hws[IMX6SLL_CLK_LDB_DI1_DIV_7]	  = imx_clk_hw_fixed_factor("ldb_di1_div_7",   "ldb_di1_sel", 1, 7);
+
+	hws[IMX6SLL_CLK_LDB_DI0_SEL]	= imx_clk_hw_mux("ldb_di0_sel", base + 0x2c, 9, 3, ldb_di0_sels, ARRAY_SIZE(ldb_di0_sels));
+	hws[IMX6SLL_CLK_LDB_DI1_SEL]   = imx_clk_hw_mux("ldb_di1_sel", base + 0x1c, 7, 3, ldb_di1_sels, ARRAY_SIZE(ldb_di1_sels));
+	hws[IMX6SLL_CLK_LDB_DI0_DIV_SEL] = imx_clk_hw_mux("ldb_di0_div_sel", base + 0x20, 10, 1, ldb_di0_div_sels, ARRAY_SIZE(ldb_di0_div_sels));
+	hws[IMX6SLL_CLK_LDB_DI1_DIV_SEL] = imx_clk_hw_mux("ldb_di1_div_sel", base + 0x20, 10, 1, ldb_di1_div_sels, ARRAY_SIZE(ldb_di1_div_sels));
 
 	/* CCGR0 */
-	clks[IMX6SLL_CLK_AIPSTZ1]	= imx_clk_gate2_flags("aips_tz1", "ahb", base + 0x68, 0, CLK_IS_CRITICAL);
-	clks[IMX6SLL_CLK_AIPSTZ2]	= imx_clk_gate2_flags("aips_tz2", "ahb", base + 0x68, 2, CLK_IS_CRITICAL);
-	clks[IMX6SLL_CLK_DCP]		= imx_clk_gate2("dcp", "ahb", base + 0x68, 10);
-	clks[IMX6SLL_CLK_UART2_IPG]	= imx_clk_gate2("uart2_ipg", "ipg", base + 0x68, 28);
-	clks[IMX6SLL_CLK_UART2_SERIAL]	= imx_clk_gate2("uart2_serial",	"uart_podf", base + 0x68, 28);
-	clks[IMX6SLL_CLK_GPIO2]		= imx_clk_gate2("gpio2", "ipg", base + 0x68, 30);
+	hws[IMX6SLL_CLK_AIPSTZ1]	= imx_clk_hw_gate2_flags("aips_tz1", "ahb", base + 0x68, 0, CLK_IS_CRITICAL);
+	hws[IMX6SLL_CLK_AIPSTZ2]	= imx_clk_hw_gate2_flags("aips_tz2", "ahb", base + 0x68, 2, CLK_IS_CRITICAL);
+	hws[IMX6SLL_CLK_DCP]		= imx_clk_hw_gate2("dcp", "ahb", base + 0x68, 10);
+	hws[IMX6SLL_CLK_UART2_IPG]	= imx_clk_hw_gate2("uart2_ipg", "ipg", base + 0x68, 28);
+	hws[IMX6SLL_CLK_UART2_SERIAL]	= imx_clk_hw_gate2("uart2_serial",	"uart_podf", base + 0x68, 28);
+	hws[IMX6SLL_CLK_GPIO2]		= imx_clk_hw_gate2("gpio2", "ipg", base + 0x68, 30);
 
 	/* CCGR1 */
-	clks[IMX6SLL_CLK_ECSPI1]	= imx_clk_gate2("ecspi1",	"ecspi_podf", base + 0x6c, 0);
-	clks[IMX6SLL_CLK_ECSPI2]	= imx_clk_gate2("ecspi2",	"ecspi_podf", base + 0x6c, 2);
-	clks[IMX6SLL_CLK_ECSPI3]	= imx_clk_gate2("ecspi3",	"ecspi_podf", base + 0x6c, 4);
-	clks[IMX6SLL_CLK_ECSPI4]	= imx_clk_gate2("ecspi4",	"ecspi_podf", base + 0x6c, 6);
-	clks[IMX6SLL_CLK_UART3_IPG]	= imx_clk_gate2("uart3_ipg",	"ipg", base + 0x6c, 10);
-	clks[IMX6SLL_CLK_UART3_SERIAL]	= imx_clk_gate2("uart3_serial",	"uart_podf", base + 0x6c, 10);
-	clks[IMX6SLL_CLK_EPIT1]		= imx_clk_gate2("epit1",	"perclk", base + 0x6c, 12);
-	clks[IMX6SLL_CLK_EPIT2]		= imx_clk_gate2("epit2",	"perclk", base + 0x6c, 14);
-	clks[IMX6SLL_CLK_GPT_BUS]	= imx_clk_gate2("gpt1_bus",	"perclk", base + 0x6c, 20);
-	clks[IMX6SLL_CLK_GPT_SERIAL]	= imx_clk_gate2("gpt1_serial",	"perclk", base + 0x6c, 22);
-	clks[IMX6SLL_CLK_UART4_IPG]	= imx_clk_gate2("uart4_ipg",	"ipg", base + 0x6c, 24);
-	clks[IMX6SLL_CLK_UART4_SERIAL]	= imx_clk_gate2("uart4_serial",	"uart_podf", base + 0x6c, 24);
-	clks[IMX6SLL_CLK_GPIO1]		= imx_clk_gate2("gpio1",	"ipg", base + 0x6c, 26);
-	clks[IMX6SLL_CLK_GPIO5]		= imx_clk_gate2("gpio5",	"ipg", base + 0x6c, 30);
+	hws[IMX6SLL_CLK_ECSPI1]	= imx_clk_hw_gate2("ecspi1",	"ecspi_podf", base + 0x6c, 0);
+	hws[IMX6SLL_CLK_ECSPI2]	= imx_clk_hw_gate2("ecspi2",	"ecspi_podf", base + 0x6c, 2);
+	hws[IMX6SLL_CLK_ECSPI3]	= imx_clk_hw_gate2("ecspi3",	"ecspi_podf", base + 0x6c, 4);
+	hws[IMX6SLL_CLK_ECSPI4]	= imx_clk_hw_gate2("ecspi4",	"ecspi_podf", base + 0x6c, 6);
+	hws[IMX6SLL_CLK_UART3_IPG]	= imx_clk_hw_gate2("uart3_ipg",	"ipg", base + 0x6c, 10);
+	hws[IMX6SLL_CLK_UART3_SERIAL]	= imx_clk_hw_gate2("uart3_serial",	"uart_podf", base + 0x6c, 10);
+	hws[IMX6SLL_CLK_EPIT1]		= imx_clk_hw_gate2("epit1",	"perclk", base + 0x6c, 12);
+	hws[IMX6SLL_CLK_EPIT2]		= imx_clk_hw_gate2("epit2",	"perclk", base + 0x6c, 14);
+	hws[IMX6SLL_CLK_GPT_BUS]	= imx_clk_hw_gate2("gpt1_bus",	"perclk", base + 0x6c, 20);
+	hws[IMX6SLL_CLK_GPT_SERIAL]	= imx_clk_hw_gate2("gpt1_serial",	"perclk", base + 0x6c, 22);
+	hws[IMX6SLL_CLK_UART4_IPG]	= imx_clk_hw_gate2("uart4_ipg",	"ipg", base + 0x6c, 24);
+	hws[IMX6SLL_CLK_UART4_SERIAL]	= imx_clk_hw_gate2("uart4_serial",	"uart_podf", base + 0x6c, 24);
+	hws[IMX6SLL_CLK_GPIO1]		= imx_clk_hw_gate2("gpio1",	"ipg", base + 0x6c, 26);
+	hws[IMX6SLL_CLK_GPIO5]		= imx_clk_hw_gate2("gpio5",	"ipg", base + 0x6c, 30);
 
 	/* CCGR2 */
-	clks[IMX6SLL_CLK_GPIO6]		= imx_clk_gate2("gpio6",	"ipg",    base + 0x70, 0);
-	clks[IMX6SLL_CLK_CSI]		= imx_clk_gate2("csi",		"axi",    base + 0x70,	2);
-	clks[IMX6SLL_CLK_I2C1]		= imx_clk_gate2("i2c1",		"perclk", base + 0x70,	6);
-	clks[IMX6SLL_CLK_I2C2]		= imx_clk_gate2("i2c2",		"perclk", base + 0x70,	8);
-	clks[IMX6SLL_CLK_I2C3]		= imx_clk_gate2("i2c3",		"perclk", base + 0x70,	10);
-	clks[IMX6SLL_CLK_OCOTP]		= imx_clk_gate2("ocotp",	"ipg",    base + 0x70,	12);
-	clks[IMX6SLL_CLK_GPIO3]		= imx_clk_gate2("gpio3",	"ipg",    base + 0x70,	26);
-	clks[IMX6SLL_CLK_LCDIF_APB]	= imx_clk_gate2("lcdif_apb",	"axi",    base + 0x70,	28);
-	clks[IMX6SLL_CLK_PXP]		= imx_clk_gate2("pxp",		"axi",    base + 0x70,	30);
+	hws[IMX6SLL_CLK_GPIO6]		= imx_clk_hw_gate2("gpio6",	"ipg",    base + 0x70, 0);
+	hws[IMX6SLL_CLK_CSI]		= imx_clk_hw_gate2("csi",		"axi",    base + 0x70,	2);
+	hws[IMX6SLL_CLK_I2C1]		= imx_clk_hw_gate2("i2c1",		"perclk", base + 0x70,	6);
+	hws[IMX6SLL_CLK_I2C2]		= imx_clk_hw_gate2("i2c2",		"perclk", base + 0x70,	8);
+	hws[IMX6SLL_CLK_I2C3]		= imx_clk_hw_gate2("i2c3",		"perclk", base + 0x70,	10);
+	hws[IMX6SLL_CLK_OCOTP]		= imx_clk_hw_gate2("ocotp",	"ipg",    base + 0x70,	12);
+	hws[IMX6SLL_CLK_GPIO3]		= imx_clk_hw_gate2("gpio3",	"ipg",    base + 0x70,	26);
+	hws[IMX6SLL_CLK_LCDIF_APB]	= imx_clk_hw_gate2("lcdif_apb",	"axi",    base + 0x70,	28);
+	hws[IMX6SLL_CLK_PXP]		= imx_clk_hw_gate2("pxp",		"axi",    base + 0x70,	30);
 
 	/* CCGR3 */
-	clks[IMX6SLL_CLK_UART5_IPG]	= imx_clk_gate2("uart5_ipg",	"ipg",		base + 0x74, 2);
-	clks[IMX6SLL_CLK_UART5_SERIAL]	= imx_clk_gate2("uart5_serial",	"uart_podf",	base + 0x74, 2);
-	clks[IMX6SLL_CLK_EPDC_AXI]	= imx_clk_gate2("epdc_aclk",	"axi",		base + 0x74, 4);
-	clks[IMX6SLL_CLK_EPDC_PIX]	= imx_clk_gate2("epdc_pix",	"epdc_podf",	base + 0x74, 4);
-	clks[IMX6SLL_CLK_LCDIF_PIX]	= imx_clk_gate2("lcdif_pix",	"lcdif_podf",	base + 0x74, 10);
-	clks[IMX6SLL_CLK_GPIO4]		= imx_clk_gate2("gpio4",	"ipg",		base + 0x74, 12);
-	clks[IMX6SLL_CLK_WDOG1]		= imx_clk_gate2("wdog1",	"ipg",		base + 0x74, 16);
-	clks[IMX6SLL_CLK_MMDC_P0_FAST]	= imx_clk_gate_flags("mmdc_p0_fast", "mmdc_podf",  base + 0x74,	20, CLK_IS_CRITICAL);
-	clks[IMX6SLL_CLK_MMDC_P0_IPG]	= imx_clk_gate2_flags("mmdc_p0_ipg", "ipg",	   base + 0x74,	24, CLK_IS_CRITICAL);
-	clks[IMX6SLL_CLK_MMDC_P1_IPG]	= imx_clk_gate2("mmdc_p1_ipg", "ipg",	   base + 0x74,	26);
-	clks[IMX6SLL_CLK_OCRAM]		= imx_clk_gate_flags("ocram","ahb",		   base + 0x74,	28, CLK_IS_CRITICAL);
+	hws[IMX6SLL_CLK_UART5_IPG]	= imx_clk_hw_gate2("uart5_ipg",	"ipg",		base + 0x74, 2);
+	hws[IMX6SLL_CLK_UART5_SERIAL]	= imx_clk_hw_gate2("uart5_serial",	"uart_podf",	base + 0x74, 2);
+	hws[IMX6SLL_CLK_EPDC_AXI]	= imx_clk_hw_gate2("epdc_aclk",	"axi",		base + 0x74, 4);
+	hws[IMX6SLL_CLK_EPDC_PIX]	= imx_clk_hw_gate2("epdc_pix",	"epdc_podf",	base + 0x74, 4);
+	hws[IMX6SLL_CLK_LCDIF_PIX]	= imx_clk_hw_gate2("lcdif_pix",	"lcdif_podf",	base + 0x74, 10);
+	hws[IMX6SLL_CLK_GPIO4]		= imx_clk_hw_gate2("gpio4",	"ipg",		base + 0x74, 12);
+	hws[IMX6SLL_CLK_WDOG1]		= imx_clk_hw_gate2("wdog1",	"ipg",		base + 0x74, 16);
+	hws[IMX6SLL_CLK_MMDC_P0_FAST]	= imx_clk_hw_gate_flags("mmdc_p0_fast", "mmdc_podf",  base + 0x74,	20, CLK_IS_CRITICAL);
+	hws[IMX6SLL_CLK_MMDC_P0_IPG]	= imx_clk_hw_gate2_flags("mmdc_p0_ipg", "ipg",	   base + 0x74,	24, CLK_IS_CRITICAL);
+	hws[IMX6SLL_CLK_MMDC_P1_IPG]	= imx_clk_hw_gate2("mmdc_p1_ipg", "ipg",	   base + 0x74,	26);
+	hws[IMX6SLL_CLK_OCRAM]		= imx_clk_hw_gate_flags("ocram", "ahb",		   base + 0x74,	28, CLK_IS_CRITICAL);
 
 	/* CCGR4 */
-	clks[IMX6SLL_CLK_PWM1]		= imx_clk_gate2("pwm1", "perclk", base + 0x78, 16);
-	clks[IMX6SLL_CLK_PWM2]		= imx_clk_gate2("pwm2", "perclk", base + 0x78, 18);
-	clks[IMX6SLL_CLK_PWM3]		= imx_clk_gate2("pwm3", "perclk", base + 0x78, 20);
-	clks[IMX6SLL_CLK_PWM4]		= imx_clk_gate2("pwm4", "perclk", base + 0x78, 22);
+	hws[IMX6SLL_CLK_PWM1]		= imx_clk_hw_gate2("pwm1", "perclk", base + 0x78, 16);
+	hws[IMX6SLL_CLK_PWM2]		= imx_clk_hw_gate2("pwm2", "perclk", base + 0x78, 18);
+	hws[IMX6SLL_CLK_PWM3]		= imx_clk_hw_gate2("pwm3", "perclk", base + 0x78, 20);
+	hws[IMX6SLL_CLK_PWM4]		= imx_clk_hw_gate2("pwm4", "perclk", base + 0x78, 22);
 
 	/* CCGR5 */
-	clks[IMX6SLL_CLK_ROM]		= imx_clk_gate2_flags("rom", "ahb", base + 0x7c, 0, CLK_IS_CRITICAL);
-	clks[IMX6SLL_CLK_SDMA]		= imx_clk_gate2("sdma",	 "ahb",	base + 0x7c, 6);
-	clks[IMX6SLL_CLK_WDOG2]		= imx_clk_gate2("wdog2", "ipg",	base + 0x7c, 10);
-	clks[IMX6SLL_CLK_SPBA]		= imx_clk_gate2("spba",	 "ipg",	base + 0x7c, 12);
-	clks[IMX6SLL_CLK_EXTERN_AUDIO]	= imx_clk_gate2_shared("extern_audio",  "extern_audio_podf", base + 0x7c, 14, &share_count_audio);
-	clks[IMX6SLL_CLK_SPDIF]		= imx_clk_gate2_shared("spdif",		"spdif_podf",	base + 0x7c, 14, &share_count_audio);
-	clks[IMX6SLL_CLK_SPDIF_GCLK]	= imx_clk_gate2_shared("spdif_gclk",	"ipg",		base + 0x7c, 14, &share_count_audio);
-	clks[IMX6SLL_CLK_SSI1]		= imx_clk_gate2_shared("ssi1",		"ssi1_podf",	base + 0x7c, 18, &share_count_ssi1);
-	clks[IMX6SLL_CLK_SSI1_IPG]	= imx_clk_gate2_shared("ssi1_ipg",	"ipg",		base + 0x7c, 18, &share_count_ssi1);
-	clks[IMX6SLL_CLK_SSI2]		= imx_clk_gate2_shared("ssi2",		"ssi2_podf",	base + 0x7c, 20, &share_count_ssi2);
-	clks[IMX6SLL_CLK_SSI2_IPG]	= imx_clk_gate2_shared("ssi2_ipg",	"ipg",		base + 0x7c, 20, &share_count_ssi2);
-	clks[IMX6SLL_CLK_SSI3]		= imx_clk_gate2_shared("ssi3",		"ssi3_podf",	base + 0x7c, 22, &share_count_ssi3);
-	clks[IMX6SLL_CLK_SSI3_IPG]	= imx_clk_gate2_shared("ssi3_ipg",	"ipg",		base + 0x7c, 22, &share_count_ssi3);
-	clks[IMX6SLL_CLK_UART1_IPG]	= imx_clk_gate2("uart1_ipg",	"ipg",		base + 0x7c, 24);
-	clks[IMX6SLL_CLK_UART1_SERIAL]	= imx_clk_gate2("uart1_serial",	"uart_podf",	base + 0x7c, 24);
+	hws[IMX6SLL_CLK_ROM]		= imx_clk_hw_gate2_flags("rom", "ahb", base + 0x7c, 0, CLK_IS_CRITICAL);
+	hws[IMX6SLL_CLK_SDMA]		= imx_clk_hw_gate2("sdma",	 "ahb",	base + 0x7c, 6);
+	hws[IMX6SLL_CLK_WDOG2]		= imx_clk_hw_gate2("wdog2", "ipg",	base + 0x7c, 10);
+	hws[IMX6SLL_CLK_SPBA]		= imx_clk_hw_gate2("spba",	 "ipg",	base + 0x7c, 12);
+	hws[IMX6SLL_CLK_EXTERN_AUDIO]	= imx_clk_hw_gate2_shared("extern_audio",  "extern_audio_podf", base + 0x7c, 14, &share_count_audio);
+	hws[IMX6SLL_CLK_SPDIF]		= imx_clk_hw_gate2_shared("spdif",		"spdif_podf",	base + 0x7c, 14, &share_count_audio);
+	hws[IMX6SLL_CLK_SPDIF_GCLK]	= imx_clk_hw_gate2_shared("spdif_gclk",	"ipg",		base + 0x7c, 14, &share_count_audio);
+	hws[IMX6SLL_CLK_SSI1]		= imx_clk_hw_gate2_shared("ssi1",		"ssi1_podf",	base + 0x7c, 18, &share_count_ssi1);
+	hws[IMX6SLL_CLK_SSI1_IPG]	= imx_clk_hw_gate2_shared("ssi1_ipg",	"ipg",		base + 0x7c, 18, &share_count_ssi1);
+	hws[IMX6SLL_CLK_SSI2]		= imx_clk_hw_gate2_shared("ssi2",		"ssi2_podf",	base + 0x7c, 20, &share_count_ssi2);
+	hws[IMX6SLL_CLK_SSI2_IPG]	= imx_clk_hw_gate2_shared("ssi2_ipg",	"ipg",		base + 0x7c, 20, &share_count_ssi2);
+	hws[IMX6SLL_CLK_SSI3]		= imx_clk_hw_gate2_shared("ssi3",		"ssi3_podf",	base + 0x7c, 22, &share_count_ssi3);
+	hws[IMX6SLL_CLK_SSI3_IPG]	= imx_clk_hw_gate2_shared("ssi3_ipg",	"ipg",		base + 0x7c, 22, &share_count_ssi3);
+	hws[IMX6SLL_CLK_UART1_IPG]	= imx_clk_hw_gate2("uart1_ipg",	"ipg",		base + 0x7c, 24);
+	hws[IMX6SLL_CLK_UART1_SERIAL]	= imx_clk_hw_gate2("uart1_serial",	"uart_podf",	base + 0x7c, 24);
 
 	/* CCGR6 */
-	clks[IMX6SLL_CLK_USBOH3]	= imx_clk_gate2("usboh3", "ipg",	  base + 0x80,	0);
-	clks[IMX6SLL_CLK_USDHC1]	= imx_clk_gate2("usdhc1", "usdhc1_podf",  base + 0x80,	2);
-	clks[IMX6SLL_CLK_USDHC2]	= imx_clk_gate2("usdhc2", "usdhc2_podf",  base + 0x80,	4);
-	clks[IMX6SLL_CLK_USDHC3]	= imx_clk_gate2("usdhc3", "usdhc3_podf",  base + 0x80,	6);
+	hws[IMX6SLL_CLK_USBOH3]	= imx_clk_hw_gate2("usboh3", "ipg",	  base + 0x80,	0);
+	hws[IMX6SLL_CLK_USDHC1]	= imx_clk_hw_gate2("usdhc1", "usdhc1_podf",  base + 0x80,	2);
+	hws[IMX6SLL_CLK_USDHC2]	= imx_clk_hw_gate2("usdhc2", "usdhc2_podf",  base + 0x80,	4);
+	hws[IMX6SLL_CLK_USDHC3]	= imx_clk_hw_gate2("usdhc3", "usdhc3_podf",  base + 0x80,	6);
 
 	/* mask handshake of mmdc */
 	writel_relaxed(BM_CCM_CCDR_MMDC_CH0_MASK, base + 0x4);
 
-	imx_check_clocks(clks, ARRAY_SIZE(clks));
+	imx_check_clk_hws(hws, IMX6SLL_CLK_END);
 
-	clk_data.clks = clks;
-	clk_data.clk_num = ARRAY_SIZE(clks);
-	of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
+	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
+
+	for (i = 0; i < ARRAY_SIZE(uart_clk_ids); i++) {
+		int index = uart_clk_ids[i];
+
+		uart_clks[i] = &hws[index]->clk;
+	}
 
 	imx_register_uart_clocks(uart_clks);
 
 	/* Lower the AHB clock rate before changing the clock source. */
-	clk_set_rate(clks[IMX6SLL_CLK_AHB], 99000000);
+	clk_set_rate(hws[IMX6SLL_CLK_AHB]->clk, 99000000);
 
 	/* Change periph_pre clock to pll2_bus to adjust AXI rate to 264MHz */
-	clk_set_parent(clks[IMX6SLL_CLK_PERIPH_CLK2_SEL], clks[IMX6SLL_CLK_PLL3_USB_OTG]);
-	clk_set_parent(clks[IMX6SLL_CLK_PERIPH], clks[IMX6SLL_CLK_PERIPH_CLK2]);
-	clk_set_parent(clks[IMX6SLL_CLK_PERIPH_PRE], clks[IMX6SLL_CLK_PLL2_BUS]);
-	clk_set_parent(clks[IMX6SLL_CLK_PERIPH], clks[IMX6SLL_CLK_PERIPH_PRE]);
+	clk_set_parent(hws[IMX6SLL_CLK_PERIPH_CLK2_SEL]->clk, hws[IMX6SLL_CLK_PLL3_USB_OTG]->clk);
+	clk_set_parent(hws[IMX6SLL_CLK_PERIPH]->clk, hws[IMX6SLL_CLK_PERIPH_CLK2]->clk);
+	clk_set_parent(hws[IMX6SLL_CLK_PERIPH_PRE]->clk, hws[IMX6SLL_CLK_PLL2_BUS]->clk);
+	clk_set_parent(hws[IMX6SLL_CLK_PERIPH]->clk, hws[IMX6SLL_CLK_PERIPH_PRE]->clk);
 
-	clk_set_rate(clks[IMX6SLL_CLK_AHB], 132000000);
+	clk_set_rate(hws[IMX6SLL_CLK_AHB]->clk, 132000000);
 }
 CLK_OF_DECLARE_DRIVER(imx6sll, "fsl,imx6sll-ccm", imx6sll_clocks_init);
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
