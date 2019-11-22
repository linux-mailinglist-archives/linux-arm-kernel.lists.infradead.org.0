Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D424E106C36
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7SFogcI47mL8Tg7jCmdbk9WAiqy0dwcnfYq/fvqLVk=; b=K4GJtXMdfdWId3
	hoBiXHW1+t1xu4BIjy6TbOrr4KZIdmNK1Xbr3F03iYWjh6d4aY6f1KnaAXL0lYkQYxdGFho6CiXKu
	8nrbV7Hg7PExhHTz/Ee2vnAn+A1SOOPTQobpcJ+PxuQH7NhV0sNd3fO4t9nvFifdviJa0GUWPvLuF
	3YrnBl9xWk2Y2DfTnvqt4gBZFYT2Q19CoMhLmhrH/bVLfbEbxdzq+zSBGLc7Um1s1rQjlSJ8A3ZO6
	fZhnYrF2IE/LlSZ7MVJ3ZOTgc5PHDjYkCsTXoJMHJ4Nrhj4zFPqdALIsGQysVGHH65Tns/a8ctsyp
	z0JjwsmcqWTzT61D80DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6Wc-0004nz-Aj; Fri, 22 Nov 2019 10:50:54 +0000
Received: from mail-eopbgr10061.outbound.protection.outlook.com ([40.107.1.61]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6UF-0001cm-IL
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:48:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N+alRPxoEcGqA5Vo00h5dyJbvBQZqPA392MDwoVMgIh+kao9YUM/gJU0QOfo910kfihhZLVQdLSZoIGTKJwEXALtheaKlHuBV0Ojtq1XFLGgkh6kxJtK9MC4u1ULPuEti+gdn4iXsPY6hHXCx01EhehxrGGJ04buLTNGyyoV4jSUpWapYMNGiy1E2orOpdGqORLONVhagu5eeuu0C8Ee7n1yr8ecVUx71CxGJW1GKyH+UmSyAY7zwgqZELz1LJ/mT7whjuG7I9J2hT+DAKcfDSm7VkXKoT/M4SkZFunP/WZl/WQoG7/R5WPNPwtGv2MC7VUawIXH/9mD7+xTPvaiLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qjpNt3BKobqblXOtBaq8pdvK3XqmVPORcjlWWWAh5Rc=;
 b=iKoc3e8j8GJj7Viw8A/XsmVfaNTyg9e0gTFiFuNWlNPkF0DaRBOEM/E6ar1W/A9/qSLLanhaC0p6WNya8ED1GSSAclS+xRxEDE7s9zc665xzckTEYvqro+Ovw3vXptp6Cys85+PZ8LP0MfclWesOYemuYHo+pRD/mpHQH0Wo65CYZuD/gmymURbDIel8ogQtYBfDh/zO942SIRKKfyjPx7g5RB1wl44TSb4cyg5k8RW7oR8MuQ9Y2hzwpSh47VjmP4iTHnVtC4pSQ8bKK9kuew6+m2LUATJLD4xrYlrpJp/dtMb8nMh8d5JsoViDPo4XO4P2H0vEv8KRbHA8M98tFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qjpNt3BKobqblXOtBaq8pdvK3XqmVPORcjlWWWAh5Rc=;
 b=B26G/BPX47IXXMNpFTNiea5/Gt057Kn5G3j6KarvgMIeF/ITqffjw4Jdmyk0IzbMNlvYGUAoavNvxixZziar9hjidhAFuKbPOji15Y+ytPjOGXKpgWoFaNfdjdAIcmbenGmdBkDhKP9oF6o2+hu7TQwKI5TZ0XwXIOe4qpfPoOY=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5074.eurprd04.prod.outlook.com (20.177.42.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Fri, 22 Nov 2019 10:48:14 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2474.019; Fri, 22 Nov 2019
 10:48:14 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v2 04/11] clk: imx: pllv1: Switch to clk_hw based API
Thread-Topic: [PATCH v2 04/11] clk: imx: pllv1: Switch to clk_hw based API
Thread-Index: AQHVoSJXY0stcOmqOE+UvoibgGHUaQ==
Date: Fri, 22 Nov 2019 10:48:13 +0000
Message-ID: <1574419679-3813-5-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: 982772e9-97d8-4925-07d6-08d76f39797c
x-ms-traffictypediagnostic: AM0PR04MB5074:|AM0PR04MB5074:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB50749B883A9396EF391C9AEEF6490@AM0PR04MB5074.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(346002)(376002)(396003)(136003)(189003)(199004)(478600001)(256004)(6506007)(54906003)(7736002)(305945005)(316002)(71200400001)(5660300002)(110136005)(102836004)(186003)(86362001)(66066001)(71190400001)(2906002)(4326008)(76176011)(99286004)(36756003)(26005)(52116002)(386003)(8936002)(3846002)(2616005)(446003)(44832011)(11346002)(66556008)(66476007)(66446008)(64756008)(6486002)(66946007)(6436002)(81166006)(8676002)(81156014)(6636002)(6512007)(25786009)(14454004)(50226002)(6116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5074;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lPdSnzOEUo3of75HJggUUlW4XnpK87N49wpoZsy/A5c1eNY2z5cLzllU9E5pBfN0XNDW2i6f/vBDCwWiWDfxLphsTYAdUGYeRdaz1PkqocPk3wsxVfSBQ1k8BVNJ+eJkx18tMd8/s2BrDP9ZBOQ9jFxrXUslkbsLVmk5YPGDLK7AU/xZS+sjYpJq4iw90dHqKnK/S0z8RhYNhvXGIXOOG+GtUXtij/gIZC3CeFUFHaXzyIGF73av3SN6PA+4sYS9+gjGjoED9+9ToqGlND2zY6kUKgg23ogde4s3sM8kzlyPG2dB/TrF16Nyf62HG1dBqXaCdbGOj7yd7lhQrdENDIfikKYG7LpAY0lyP670o3+BcfO0H+Ui5dPyjEfUTyW2nkc5DRzhD3dKqIjCSLyJ4INH14YhuxQZLNjBk09XJs9zRFKeZdPPVW96t36PPNCD
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 982772e9-97d8-4925-07d6-08d76f39797c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 10:48:13.9604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7hMArpO0L/3Vh+x+H0DkTw5iWlDJ4pKn6gWt70uiwPocKOvk7j3GBhFpIKMpVxt5529s+cxg+xLfuHBSIWxirg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024827_657930_F629ECD1 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.61 listed in list.dnswl.org]
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

Switch the imx_clk_pllv1 register function to clk_hw based API, rename
accordingly and add a macro for clk based legacy. This allows us to
move closer to a clear split between consumer and provider clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pllv1.c | 14 +++++++++-----
 drivers/clk/imx/clk.h       |  5 ++++-
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-pllv1.c b/drivers/clk/imx/clk-pllv1.c
index 4ba9973..de4f8a4 100644
--- a/drivers/clk/imx/clk-pllv1.c
+++ b/drivers/clk/imx/clk-pllv1.c
@@ -111,12 +111,13 @@ static const struct clk_ops clk_pllv1_ops = {
 	.recalc_rate = clk_pllv1_recalc_rate,
 };
 
-struct clk *imx_clk_pllv1(enum imx_pllv1_type type, const char *name,
+struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char *name,
 		const char *parent, void __iomem *base)
 {
 	struct clk_pllv1 *pll;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
+	int ret;
 
 	pll = kmalloc(sizeof(*pll), GFP_KERNEL);
 	if (!pll)
@@ -132,10 +133,13 @@ struct clk *imx_clk_pllv1(enum imx_pllv1_type type, const char *name,
 	init.num_parents = 1;
 
 	pll->hw.init = &init;
+	hw = &pll->hw;
 
-	clk = clk_register(NULL, &pll->hw);
-	if (IS_ERR(clk))
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
 		kfree(pll);
+		return ERR_PTR(ret);
+	}
 
-	return clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 3ed17a1..bd6a592 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -109,10 +109,13 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
 #define imx_clk_mux(name, reg, shift, width, parents, num_parents) \
 	to_clk(imx_clk_hw_mux(name, reg, shift, width, parents, num_parents))
 
+#define imx_clk_pllv1(type, name, parent, base) \
+	to_clk(imx_clk_hw_pllv1(type, name, parent, base))
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
-struct clk *imx_clk_pllv1(enum imx_pllv1_type type, const char *name,
+struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char *name,
 		const char *parent, void __iomem *base);
 
 struct clk *imx_clk_pllv2(const char *name, const char *parent,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
