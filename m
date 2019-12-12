Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4946911C3AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:59:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJwSAwJk090iggxLp5wkEZ3K4k2/y9YTDo01xxlM8Eg=; b=m6cLtlI+AsbJrx
	cupIytiIEv8kxAHDHQNqa3X4Q1Q2k92BwOE9q0MwY4GMy0iJ1ZRaCf8wgk6yO8Bi+uozqgTbNKL6l
	gFE8sTV4a2BzU3IxDQPta/Uh2zPiICZEaUZ+Tl0mXzPApdQktdeRl9P1I73zPliEANZLW7wQy0WSB
	nFbbASBrsQpf7Vxgfz8I38VszlIGA8BPaGh7p1yGbIMzNuHatNQnUZiHM7zkCu38tJ9aIjHRsj2xh
	wlNEUx/3CKzc74V/po9ON6GC11+vtsMMr7cKagXcLzMXmYFPXY5Ke+/pxzoU6jP+aFpL2OROqZIqc
	ZyS1NXuoOFkrqe5cdNzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifEhN-0001QT-Kq; Thu, 12 Dec 2019 02:59:29 +0000
Received: from mail-eopbgr70044.outbound.protection.outlook.com ([40.107.7.44]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifEgh-00018z-Sc
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:58:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hb0OvMwOfT0zAKRV8cocsCuRTN0fg64Z++w59egUdBfsFCg889lrYGqNhaxLL/mTX2vUz/ZkbgScna18Ec2kqqo93e62wKNK0aOHiSyipSXMSaoqGmKxZjTuhykeyrFaHor63ZeztgRDofmaibRTpSkrZ1jY66X+kI8UuSO/KqKJh1GzeyMkBiWxfDRQvgV7VO4hJ8I+aKVL20tx87U/8m7Axtn9UfgRFJH0YaW21tyzhLhTqdpVTTaqtiulh8y9gghRjyTUjpTV79OnyNaRYy7jbQmxhwWlJTqzN92oVY0+KNMjNd8G86TS4BFErJYqOcktMKJ9pjVl3RBbxisl4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gal1Piys1PGylfNZmJEiIuuLptpQRcnIdDp0U9Lza7E=;
 b=M6ftBOYATEDukz02J9/jIZZdQ3bzG9p+CZ/vHBDrDIwOCPP3HuGdAORn8G6onparSWAgfTolms+XuaP7KqXhdzAMDIItn+O6IGd97qeLHWXkJHjPCSNi8LFr41u+LjzJZX8qflGDsjf2UjG+aLvQHnL3MSdDU2rvzrmLPdW1WhB0XUl1aBbSC0rTZayJ3IH/3tiU7VtTTL0B6eRDd79PmXGe/NMZu386NyubZ0W+Bo5BLfjqBldzfhaHhOzvD29mW4zuirHaCPJ4N1721obpScpghlnM2dKMWztOSKq5Qx6xKOSNOhLmDVHfDwevSw3UgiP4HxvArD48Zgp7CitMMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gal1Piys1PGylfNZmJEiIuuLptpQRcnIdDp0U9Lza7E=;
 b=pR4zSLiJCX7aFEt6VlZOW+T7JABP+Ah2zOHlO4Cy9iKUos92ucoddMsvfIfY41pzudzMrBQZD2DwaZlIxgXfnVKFMa1NFLTUaNxTtMS7lIFZDMDqnrlPjjqbMCjtQHjT6nY6ftcgYDkogRQGmdEw1DOPyWhpAhN8vLh7F5Wi3Sc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6196.eurprd04.prod.outlook.com (20.179.34.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Thu, 12 Dec 2019 02:58:42 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 02:58:42 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V2 1/9] clk: imx: clk-pll14xx: Switch to clk_hw based API
Thread-Topic: [PATCH V2 1/9] clk: imx: clk-pll14xx: Switch to clk_hw based API
Thread-Index: AQHVsJgPEjS6WGPPHEml3WtkGD4THw==
Date: Thu, 12 Dec 2019 02:58:42 +0000
Message-ID: <1576119353-26679-2-git-send-email-peng.fan@nxp.com>
References: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0022.apcprd04.prod.outlook.com
 (2603:1096:202:2::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 15891387-901a-4a68-9f64-08d77eaf3254
x-ms-traffictypediagnostic: AM0PR04MB6196:|AM0PR04MB6196:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6196805A70A499CDF795059088550@AM0PR04MB6196.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:270;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(199004)(189003)(81156014)(8936002)(316002)(81166006)(8676002)(36756003)(52116002)(478600001)(6512007)(6486002)(71200400001)(110136005)(54906003)(86362001)(186003)(66476007)(4326008)(5660300002)(2906002)(66446008)(64756008)(44832011)(26005)(6636002)(66946007)(6506007)(2616005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6196;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Iw+0/WqIf/KhIWTO+rXaLCzFRarV1+IeXe8BAwHTMllAe4qoLk6jdMGLzGdj447yPXm3stPGeYKFBxgO9B/jyYXoOfSaaAvajLChBjgKA+7oxJ2PoCvrRdhKR/41rlikj4haiBXgCxOyvxDgdemQ73hiSrIkViaxDOy47ipAOhlrMxST9QbqdWFTu2fLiajOLmyjmnGFQI36YsJRVayebrfWJAfmiijC2Pgz+ZP/EmpajOFaHSjHujICJESDJUSzFfhwApYf47AzXePM2oIc43X6RP6dCjtM4liap1Db4SSBH/Yl3Kjxw2+hJlfOfDz/rGiiRm2hOJ+vieJzj1z9/dwsvtBjk5/KMo/5KLXOmVxnMY51llpHn3knKX0bX1zxznGu/TGxCsyJ58db73t101Br+t9qAQP9q/r9v747sbOPmfiA2/WpSwI9wDIl5Tpn
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15891387-901a-4a68-9f64-08d77eaf3254
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 02:58:42.7696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 88nPSqhIfjE50oGME9nX64FzT3biiI4uPfystoiUO6ost2s5G4t3/X8cM+JseFtS13Vwppi5BmsJ0Q94MMpb5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_185847_924757_E40AC1E3 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Switch the imx_clk_pll14xx function to clk_hw based API, rename
accordingly and add a macro for clk based legacy. This allows us to
move closer to a clear split between consumer and provider clk APIs.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pll14xx.c | 22 +++++++++++++---------
 drivers/clk/imx/clk.h         |  7 +++++++
 2 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index e2384271ed83..5b0519a81a7a 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -376,13 +376,14 @@ static const struct clk_ops clk_pll1443x_ops = {
 	.set_rate	= clk_pll1443x_set_rate,
 };
 
-struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
-			    void __iomem *base,
-			    const struct imx_pll14xx_clk *pll_clk)
+struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
+				  void __iomem *base,
+				  const struct imx_pll14xx_clk *pll_clk)
 {
 	struct clk_pll14xx *pll;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
+	int ret;
 	u32 val;
 
 	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
@@ -419,12 +420,15 @@ struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 	val &= ~BYPASS_MASK;
 	writel_relaxed(val, pll->base + GNRL_CTL);
 
-	clk = clk_register(NULL, &pll->hw);
-	if (IS_ERR(clk)) {
-		pr_err("%s: failed to register pll %s %lu\n",
-			__func__, name, PTR_ERR(clk));
+	hw = &pll->hw;
+
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
+		pr_err("%s: failed to register pll %s %d\n",
+			__func__, name, ret);
 		kfree(pll);
+		return ERR_PTR(ret);
 	}
 
-	return clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index afc794714992..caee661664c1 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -127,6 +127,13 @@ extern struct imx_pll14xx_clk imx_1443x_dram_pll;
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
+#define imx_clk_pll14xx(name, parent_name, base, pll_clk) \
+	to_clk(imx_clk_hw_pll14xx(name, parent_name, base, pll_clk))
+
+struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
+				  void __iomem *base,
+				  const struct imx_pll14xx_clk *pll_clk);
+
 struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char *name,
 		const char *parent, void __iomem *base);
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
