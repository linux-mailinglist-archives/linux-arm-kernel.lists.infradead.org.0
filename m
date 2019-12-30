Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFFD12CE19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 10:13:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxXjgXwT2Bb9rQr0dJfeOL9vfLDqqIxPrrJv5T77KrA=; b=LPrQPSZzTL28Cp
	xOilwzQEj0g7s5UPSc2iMNPPdOFh+iYXGV7109cs7fnrqysdMVTF7/3WO8tG5lLPBbPABHMeWc4k1
	TS7pHdxytFeuQE8gB8mW0WHVL7r7AKULJKkqjJRpdxhkiH2PYcqoVW/0URBuo5QjMbUeJeP6DjW9m
	DB9MuDFsh9Am5VmWhuDnCRy1t2qktvTUl3kiizfIgsLhYUDRA/nIWNK5a45oFbKpeZyU5V4E5tmit
	QdKDaSt2DWzBhR4LaUTmEKDwdg0nYRkeGXouKdma5WU3OXr5MZf8Bm9DOX/v/u2GQLb/CAJwJ8mQ6
	QW6Igkw1cYlgyCcNftEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilr7P-0006gl-BY; Mon, 30 Dec 2019 09:13:43 +0000
Received: from mail-eopbgr150050.outbound.protection.outlook.com
 ([40.107.15.50] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilr6m-0006Lq-J0
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 09:13:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QlZcT32CZOhIio6Udf/nhPyL6JNDDW2F3N2bX7gyXxyqq8vOIlC+umLV0l839N+jo/PlZOpgvLMZ0WoeIRoBy1OC6a/DPGJbUQloyOFFAZ1e2Wdqk49PrSobkRhYuu0o/Wip3NRBdqItfT5u5thRiEirAhYEjwTD3IQ4pSxq3P5CfcSWWx4NI//M/N+rbrrViXOC1ENunO1XcDzDGXjSHWMb22/Jqk6Lbn1kv2d+9yCkblXhQN7qHwx13MNM1Lank5VvLZvVOufhMeQ1sZzNX8lq8WYdMNqrA8uPhs6jGP/V94TAxXhlr1l7Yok/KyGzE42n463hc75kedOvCr4W3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6timvOCqNBW7pWKbxH0IVkGh8pAkux6PZz/sd0Is/Kc=;
 b=dmONxn669rxF+V++bcztwbWfN62ahxF6dDHOS9an2h+qrs1x0MPhfYXgl5WxFMFtNtz1IBgiSrv0ze1HK0OiF/foQweoKEOHrA2loW4A4f4eGIlPu7OgYa0JtWx2VPGTVMQxvE5lz8g+KOasznhFIrCZWOUcjP4mA1aKLHOoLH+EqMruoTp1p/IRYVsGW83o0BUqFNc7EN3i56tvO2Lb/hTzFB1sgJfZl7h9HQ71RWggi8OgzobhITqRvVLmtUSVokfBDtcauTucnmdQ3GdTzRth+ypZwPXNogvVQb99Y5/CO8JYrCJ5FV21MKJ1+mH/29fOeIL4n6euNTMTXIoipQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6timvOCqNBW7pWKbxH0IVkGh8pAkux6PZz/sd0Is/Kc=;
 b=sB34AhDUJODVICqRphmvZKAnC2hqHiRhvlLoniuhEd2hH+qcl5+PL8RTmpFuVRc6gEfI/k+a1IeDHNWC292MC5u+gNra46QbFLAhW2BdGaY1r5yKtk6nHvLfPOPacxXGXwoc1wYtVCIItnZMio/v+JovWRA/Wpd3qpImoeoakYo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Mon, 30 Dec 2019 09:13:01 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58%6]) with mapi id 15.20.2581.007; Mon, 30 Dec 2019
 09:13:01 +0000
Received: from localhost.localdomain (119.31.174.67) by
 HK2PR03CA0057.apcprd03.prod.outlook.com (2603:1096:202:17::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2602.8 via Frontend Transport; Mon, 30 Dec 2019 09:12:56 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH 1/3] clk: imx: pll14xx: avoid modify dram pll
Thread-Topic: [PATCH 1/3] clk: imx: pll14xx: avoid modify dram pll
Thread-Index: AQHVvvFVclUlXNz3QUm1xFZVDau/cw==
Date: Mon, 30 Dec 2019 09:13:00 +0000
Message-ID: <1577696903-27870-2-git-send-email-peng.fan@nxp.com>
References: <1577696903-27870-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1577696903-27870-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0057.apcprd03.prod.outlook.com
 (2603:1096:202:17::27) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 733d5376-6d1f-41eb-8f1b-08d78d0877ef
x-ms-traffictypediagnostic: AM0PR04MB6401:|AM0PR04MB6401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6401C75B2D4EC3CE6EF06B6188270@AM0PR04MB6401.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:239;
x-forefront-prvs: 0267E514F9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(189003)(199004)(81166006)(81156014)(6506007)(66946007)(69590400006)(71200400001)(66476007)(66556008)(8676002)(52116002)(4326008)(66446008)(64756008)(26005)(8936002)(2616005)(110136005)(6486002)(54906003)(6666004)(956004)(86362001)(6636002)(316002)(16526019)(186003)(478600001)(36756003)(5660300002)(2906002)(6512007)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6401;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7SAEPIPVN/NdyO+upqHImZReacu7ShWOGuvzIRQ4m2CyGQ85IeiSqYnzX/9ymSliio1lXWR7e87C0qHo7lpSx9vJ6J6QVtWG8hHaIV1s+QeskcrN7G8WcjK1leJmJ7mpAboxeBqiWJ43rOv2oYiGV2wNdmHuz37DUejH5yazICRyNRgDVMQdTM5tN0L7hYjutiKZoJE7SbUhdmEVX9K8Ieu93snvDaiYF87gHXFZw2gBw8c1qv0ubmymGOecGyu9ZV7r16tmfuM542qlq6kmutS8jy2iQ40iLkSYukvCyAD4+yPMy6CNVV1K3Ku//GbG/LUhkGtEq+6RDSkarJn8bfUHaPze9+oSrS62CmrRaHWjtg4UFAXG3e/VoFV3F+yObTA8WeVII6PoVfODQhhsTMP4WOoBru4o2Q6nQTjFlAJ5DPVxUrIqfNVykyP2NtPmEY8h/HVigEgkSgAeRzGFCX+vn+MHE9v0EUwtFGrIXZ46FoxyU9nfosfE3dD7R7tT
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 733d5376-6d1f-41eb-8f1b-08d78d0877ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2019 09:13:01.0156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: McIAWQEtJgy6BZzlTK5mi2r/ZjHtTrv3br80yplq20Rf8yTBUEtK+ciqXHqszD8sC5joqlcTlTnd0V+aCVf3Fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_011304_653685_D9EBAB04 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.50 listed in list.dnswl.org]
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

The dram pll is only expected to be modified in firmware,
so we should only support read clk frequency in Linux Kernel.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pll14xx.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 5b0519a81a7a..9288b21d4d59 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -69,8 +69,6 @@ struct imx_pll14xx_clk imx_1443x_pll = {
 
 struct imx_pll14xx_clk imx_1443x_dram_pll = {
 	.type = PLL_1443X,
-	.rate_table = imx_pll1443x_tbl,
-	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
 	.flags = CLK_GET_RATE_NOCACHE,
 };
 
@@ -376,6 +374,10 @@ static const struct clk_ops clk_pll1443x_ops = {
 	.set_rate	= clk_pll1443x_set_rate,
 };
 
+static const struct clk_ops clk_pll1443x_min_ops = {
+	.recalc_rate	= clk_pll1443x_recalc_rate,
+};
+
 struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
 				  void __iomem *base,
 				  const struct imx_pll14xx_clk *pll_clk)
@@ -403,7 +405,10 @@ struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
 			init.ops = &clk_pll1416x_ops;
 		break;
 	case PLL_1443X:
-		init.ops = &clk_pll1443x_ops;
+		if (!pll_clk->rate_table)
+			init.ops = &clk_pll1443x_min_ops;
+		else
+			init.ops = &clk_pll1443x_ops;
 		break;
 	default:
 		pr_err("%s: Unknown pll type for pll clk %s\n",
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
