Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E031BE2892
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 05:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XO0lja0ShsUUP4L4+s78wtRZ3+sKPDzV1DBLKKWKFco=; b=pWyoP3H5bAkkni
	7hOmfx9jpe9mjiaDRnWHfJFO6GhHsJMb+2hBXubK9P/Ikce6gn/u54s38iPYCHMgKe3qgPBTnpBDv
	K2J4W5DMfgq0NNAYoyPjVd355MYaDUMZppQTjetY/xeAikkI0qCS4+2DyW9ujxrqdkNGHhg7yUukF
	kEcB7dr+IMkyIm/meLHHki06i3G1KLaAaszEsHK0GuR2RjLaJeTUcrZWtM/QUQp5Wasljd10w9qey
	SrBiZeKpjLbZosN7ubUpPnxlJX0yCVrTRPD703bQbKYogHYHVr9w6adU90oFLEZETXaCb8TCJM2m1
	MWFsTdSwKZ1UOi3nNz0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNTMd-00040k-8D; Thu, 24 Oct 2019 03:00:39 +0000
Received: from mail-eopbgr40054.outbound.protection.outlook.com ([40.107.4.54]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNTLl-0002Dt-H2
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 02:59:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CIIS+45xc81ZrTXmETICTYJf1NhhJAy6KVHp+DOAu8Vm2ND+hCCqJwH+sKZjpooZqYOyQK4bxRwhhqwwx2Jpe9qPL1lYtYsYyU1/6aYPsNyPyTfBCP/lCfduUPxukEkrtJ9eiBtt5VCnKx4F5jtV0LTOLKDhXZI2h0fEXVNvCDs8OK+NBEZ0O3+LFyiQeN6fLdH03qZPIl4K1eb1yPSZQx6MGnxIjxDmaVHvlUJtd8t01bmVT/pYVywMhdzPPH4NxgiSp0QP1EINQkLAFqdHmVZTSb8Pc0U6n5/T9s3bhNEjzrArGYtAlqO2yAaytun46vh+GrifBw6Hf6NOq3UsVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pA0risZRY0AGIGABB1yT2ErBUbUGKsHltOmhVQW9IH4=;
 b=bpj9vCI7ARpHtNZQkC0LHeX5IMxPR8wX7oySM7nQzvgzkFR9z3zhu1Vou5mD0Rz+eV2a8iVNXpMEMWQDYeovYX+15XnKWVJ3MF1onLiK/nDCJGiO1rkaUdHCNzf45/fsq8NlXpqPZLpBJNgIDVWAyfaPXLkN7LSn3Ru07L3y/D0G8Gv/7kLNS/D2rsSxJ/crSl/bphBCk8Pk7WI7IF7LqXA2XIj6v9r+gfwiCFEQaO7ppGGoBMZAD2V6i2IF1ixYKOFovEX42Tx8mNQiJcOcB/0A6tlojGok0Sz13m3/5jOsChxgBODPsw/UDni1DHM/5zj8k/A1bC8C4NtsWCjSaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pA0risZRY0AGIGABB1yT2ErBUbUGKsHltOmhVQW9IH4=;
 b=L85p98EcyO4b2wlOBS14BUs4kefO0BuAovjg7OfdgdwujDAi/LpOGzqBrUBls3AmCBMJOW+48ujEIXWqMxUTafnwPufThgFs1lnJNnfBGH5Rn5KaSGU+fhMUtATXouIto2gw25OyRsrzWvh9ahqerZgd6QHL+8Ohub+DxtlENl8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6609.eurprd04.prod.outlook.com (20.179.252.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Thu, 24 Oct 2019 02:59:42 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 02:59:42 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V2 3/3] clk: imx: imx6ul: use imx_obtain_fixed_clk_hw to
 simplify code
Thread-Topic: [PATCH V2 3/3] clk: imx: imx6ul: use imx_obtain_fixed_clk_hw to
 simplify code
Thread-Index: AQHVihcVnXhA6yBIr0StOO62YdrjXA==
Date: Thu, 24 Oct 2019 02:59:42 +0000
Message-ID: <1571885777-21662-4-git-send-email-peng.fan@nxp.com>
References: <1571885777-21662-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1571885777-21662-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0081.apcprd04.prod.outlook.com
 (2603:1096:202:15::25) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e0dc5a88-5058-4f67-9185-08d7582e37b3
x-ms-traffictypediagnostic: AM0PR04MB6609:|AM0PR04MB6609:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB66096A8A2431F4AA41662216886A0@AM0PR04MB6609.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(136003)(346002)(366004)(396003)(199004)(189003)(305945005)(486006)(26005)(476003)(102836004)(2616005)(44832011)(52116002)(7736002)(446003)(6506007)(386003)(11346002)(71190400001)(64756008)(71200400001)(66556008)(66446008)(66476007)(66946007)(316002)(186003)(76176011)(54906003)(5660300002)(256004)(110136005)(86362001)(478600001)(99286004)(25786009)(14454004)(2501003)(50226002)(2201001)(6436002)(6486002)(2906002)(8676002)(81156014)(81166006)(66066001)(6512007)(36756003)(8936002)(4326008)(6116002)(3846002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6609;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aDOJCLJnQHOx2cAADQosEwuQBO0ESX/MTP31flBPwZgD71BGXt1r9St6ZVkvhyg5yrMFLjLoCIUDoe960SVJZ/heH3Y3j+H37rCufDYDfaXyTedK5s/2W9n+/MYYDCwfZFxWYk3ctD2x233aqaAH/fWwMmqagfzLpNnrOckfQZWn2iGZrjONowo2raZwWmwkaaD1ZDDpnqhMQ7rTHtxuuyRwIlLE+QQwm39HT21G+7/DRwc2QgU3c3shnBd5y/iqd6dxsZvvsHCYGJ2/X3KMRIsIOCDDlQBbNqxE1yFg6N1VKsdSQtGNjQXcJazAHa7ZzX9xKOYHHHZTtMg20icPr5vHWvLcjLIQJy4O60y8nDUhs4n2anEdqjpkOFYED9eojZK52c/f8sLdrdt6sbMYir+0YxOOkaiXtyAt9gIDh4tiJMVnS7Lgf3nPgfuALl0F
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0dc5a88-5058-4f67-9185-08d7582e37b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 02:59:42.6197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MM4bjBgVxUsiNhi/9FnARa6VHqwePhWjExNRxP96RoKJyNEwYtp3U6f39AFSmyZ216deYkH87wX+G04TBE3hPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6609
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_195945_603034_2545F4C7 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

imx_obtain_fixed_clk_hw could be used to simplify code to replace
__clk_get_hw(of_clk_get_by_name(node, "name"))

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx6ul.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index bc931988fe7b..dafc8806b03e 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -126,12 +126,12 @@ static void __init imx6ul_clocks_init(struct device_node *ccm_node)
 
 	hws[IMX6UL_CLK_DUMMY] = imx_clk_hw_fixed("dummy", 0);
 
-	hws[IMX6UL_CLK_CKIL] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ckil"));
-	hws[IMX6UL_CLK_OSC] = __clk_get_hw(of_clk_get_by_name(ccm_node, "osc"));
+	hws[IMX6UL_CLK_CKIL] = imx_obtain_fixed_clk_hw(ccm_node, "ckil");
+	hws[IMX6UL_CLK_OSC] = imx_obtain_fixed_clk_hw(ccm_node, "osc");
 
 	/* ipp_di clock is external input */
-	hws[IMX6UL_CLK_IPP_DI0] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ipp_di0"));
-	hws[IMX6UL_CLK_IPP_DI1] = __clk_get_hw(of_clk_get_by_name(ccm_node, "ipp_di1"));
+	hws[IMX6UL_CLK_IPP_DI0] = imx_obtain_fixed_clk_hw(ccm_node, "ipp_di0");
+	hws[IMX6UL_CLK_IPP_DI1] = imx_obtain_fixed_clk_hw(ccm_node, "ipp_di1");
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx6ul-anatop");
 	base = of_iomap(np, 0);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
