Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C84519CCAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 11:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcSU3PDKIw5vQqDVIidFi81bT+hzCTM9D2LNh3nxIGw=; b=L9hkVmeHzynlcR
	lrzqbnPLXin7iB5yySxf8IAyv3UOHLdVGdw/EHFlwB0p9QHXwnG5+pRfa5h7mqo6c+YPjIu/3KFLK
	zA9auu3Qw02kbdjaRZUTH/Xbs/kwJiHknlkvcmFiK+vdTR5gQHbJAW1y25AIcC2VyZIV6zPoDhyHB
	1C8d1O1o6Of4rwdOsBAIaGIXwAzPkyraTqq0wTqbU/qU7X1ij1quc1BTI7e4urrJT9j4+xAdUSlGf
	w5cOac+GHvP+AKZh+RTwmSWVj0cFVafWeJe0jAzfnqoqLCoLOq3QyMB9eqN2Oj1LKNZBJQ0YZQ/fL
	yOyGImWZs66c8Fcyg6+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2BWP-0003q1-9K; Mon, 26 Aug 2019 09:42:45 +0000
Received: from mail-eopbgr60073.outbound.protection.outlook.com ([40.107.6.73]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2BW0-0003gG-Oy
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 09:42:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IBObm3zD3qkWwlxo+AYFpWi6ZJVEDQWh1OjXkIaKwaLsTbf/ZtCZHIAAVUM7haKoqEn2u5qk8nszVauS7wOFgKgLThTYHknGDATGHoRpDUgi23kkjvwPLApULe3fRs96ecXeZURbadBFzZCQc4LABRLllUlqAq4lNwpRWWTlM5JfsesgvE0nUVAW11aBrwgkQL00r6Z/NErxwh52eBRc5VLJIHUWrtH5VKmX1cboyWHIoDKSPQ9rt56k5irNSghPMWRfnbWTceQ/2BAVOV+21HUIbiHZZ76hBdkmo+2HwS5262wM4OMiqdKPH7JBAIl3UFnl09tY5zo3xFkcbrOLOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8af/frXjd38yFS1iHWXqIhZ3UJI97y8DlOSShgwFJCI=;
 b=Z1oKbl0ct+2hHPzirT8O9KEfPyQOEJEcHIef82403IhxGHf/AtDVAuGdmJroaKKUG2MQ/9qTJa8c+vVP8XynXNEocNKj3tI2IA5vevi4b1vOEF+j0NWDqNPRBixdg/EIZj26E8Y3wgFZutr+M+7kysfdoSrDTGV/L0Ss39At7jCkEkGoU7TU+rh+R+YJoxEYrYsrbJ4gOlfZQuRlqAgQ9QzNPdppZQoDzwrTlQC1H1aAa5LJB0Z8Z/aWO3TjODpU3G7whoi2qiT6fbvxgwPLfudkCVB3KocN/KLVVKvtiMhktEd7dKhsYHP9yQ4zCWF8RE9jzxw10//0IYKcLnDsZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8af/frXjd38yFS1iHWXqIhZ3UJI97y8DlOSShgwFJCI=;
 b=AAkf3FhiCcR4p8xHyIIaTTOskzxuN3aRjizsLKkAB50vk4Pj4UqRATxbnrC39Qt/L6fowPQpqEFT9R7f46byo5B+cwA3T36V2cTo3Sc6HYsYw7oRr0jYRdCr5xW4vTH4O67LNtwARIavBZHxUCbFpIg6bLfkgNWIIxEwHYIarbI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4194.eurprd04.prod.outlook.com (52.134.126.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 09:42:19 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2178.022; Mon, 26 Aug 2019
 09:42:19 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V2 2/4] clk: imx: clk-pll14xx: unbypass PLL by default
Thread-Topic: [PATCH V2 2/4] clk: imx: clk-pll14xx: unbypass PLL by default
Thread-Index: AQHVW/KNXPUGosN6ZEmtCpcLIOxLdQ==
Date: Mon, 26 Aug 2019 09:42:19 +0000
Message-ID: <1566855676-11510-2-git-send-email-peng.fan@nxp.com>
References: <1566855676-11510-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1566855676-11510-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0047.apcprd04.prod.outlook.com
 (2603:1096:202:14::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9a5d27da-8f83-4749-3800-08d72a09aff5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4194; 
x-ms-traffictypediagnostic: AM0PR04MB4194:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB41949DEF795833B2B5C4125688A10@AM0PR04MB4194.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:635;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(39860400002)(136003)(376002)(189003)(199004)(478600001)(2501003)(25786009)(66066001)(81166006)(81156014)(66476007)(44832011)(7736002)(486006)(305945005)(2616005)(476003)(36756003)(8676002)(66946007)(66556008)(66446008)(64756008)(14454004)(316002)(110136005)(54906003)(6116002)(256004)(8936002)(50226002)(2201001)(99286004)(4326008)(6512007)(2906002)(86362001)(53936002)(386003)(76176011)(71200400001)(71190400001)(6506007)(102836004)(186003)(11346002)(446003)(26005)(5660300002)(52116002)(3846002)(6436002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4194;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hZzKvHJAKezKpFqgA20Cxl+b4vUj3KPVbEEe4kQb1Tv+itPUXrmjJm6wUqPKEsD0vyvtkfQCtWc+ZZS+zgZewY5kDQLaSdqbNrJqXLS7Xjf2CaKIrWi3OwOmp5hCARAlEWK0zCFwY5duj98EakiZuj3xLDKb5VA1TFdH797oeybLj5nNMdUCmPDgIDG8Hv+tkmSobeNx2Xon+3PGw4QaIuF4DH7rOOYpB4uKPjlDlZq0cWSEBkb/SaJs7DchMj3+673Th5nJS4m4TpUgt5LrKOTbjQ4JScHQbyS9E15bsPrRJj0V4NpPyrqBso0W/oSNDC5EJsgmzRpxd/LHGXUOOb9JnnJWV3joKnY0+DyZsgie/wFcAZS4gU1WcD1EgPCkzNHX0HK7grTbJ6On+o2whQ96SSmAXJTbOciIQEaCvoo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a5d27da-8f83-4749-3800-08d72a09aff5
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 09:42:19.3299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3jDLbEqmKRi8qczEJP1cvM0aU8iMYPBzlfYduQErkpu+owVY1njy5cr1c0LNVlGFI9/taeKsuqGteYPQyh+aVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_024220_812336_5AAAE8AC 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

When registering the PLL, unbypass the PLL.
The PLL has two bypass control bit, BYPASS and EXT_BYPASS.
we will expose EXT_BYPASS to clk driver for mux usage, and keep
BYPASS inside pll14xx usage. The PLL has a restriction that
when M/P change, need to RESET/BYPASS pll to avoid glitch, so
we could not expose BYPASS.

To make it easy for clk driver usage, unbypass PLL which does
not hurt current function.

Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 New patch

 drivers/clk/imx/clk-pll14xx.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 656f48b002dd..7a815ec76aa5 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -368,6 +368,7 @@ struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 	struct clk_pll14xx *pll;
 	struct clk *clk;
 	struct clk_init_data init;
+	u32 val;
 
 	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
 	if (!pll)
@@ -399,6 +400,10 @@ struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 	pll->rate_table = pll_clk->rate_table;
 	pll->rate_count = pll_clk->rate_count;
 
+	val = readl_relaxed(pll->base + GNRL_CTL);
+	val &= ~BYPASS_MASK;
+	writel_relaxed(val, pll->base + GNRL_CTL);
+
 	clk = clk_register(NULL, &pll->hw);
 	if (IS_ERR(clk)) {
 		pr_err("%s: failed to register pll %s %lu\n",
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
