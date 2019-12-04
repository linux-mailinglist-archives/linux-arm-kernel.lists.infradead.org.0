Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C9211291B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 11:14:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YFL4fuA6CLVR/TYND7zIN2npLuJU402bPxgTTPp+2S4=; b=euu7nRZViZP9AX
	SxO0lzN4KRLB0pvMSfTCZrwUuxP8tTMbTbQOK6+2oT8vPRUBjkw4iwMYGirK2DlBb9Znotn+iYX9q
	5NtUFVSiPlTYL9Y4A+haWGzRaejbpA2fQiLHxMRSsRCLcj1vzkdNF7s4m1HaSo4hHHQacCQwjxxH6
	2/EYRdHc2Dhqd6biza4OWGsc2ozToAIfnvLnJWDDSQb17HMUuAkg8Vyz7/DTg2KC9n1XP6K82gYX2
	N9jkgd54Pj88ZIAuIlDxph9WqZzYPrcrMIZhOOlSI0TL21mDkMMcwSYqsjuYPJ7xELNQKkkzNzu8i
	Ss9QERqPZJrVpB0zVUDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRgO-0006lg-Cg; Wed, 04 Dec 2019 10:14:56 +0000
Received: from mail-eopbgr70071.outbound.protection.outlook.com ([40.107.7.71]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRgH-0006l9-3Q
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 10:14:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dE35T5DiSl8TIrF8C4Pkkp7QhE3X2lyzC+1YDwP8lHsa+ysXypIDjS/LcKYSgz9mAK86B7epD0hwWX6SBjjARFdoSH+1M+wuMzNwz+YlTgz8lTU2d9NrHMYh9yrttLWo4BTYjXIEnIu3aP92npyPbniWT0zqAYk/tfF/xghbGf/RgpLudd5Ag1S+S8mXkwg2Z0xOIQCW7oIEUInf9tRKfl9e+PwWwU9D4vftnWee1jHzfZbzInG80SaBmQz2IME2cRioxVGz9KDEE3T97XQDRmLq1UWj9uOdu2+7kEhjTtcJanbt1qcd9NYWjkZBjJsayuWEAsnC7DRsg2VtTtRJeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U0g7+wVaxCT4BL0eA5hYKi+ApQuWHuHAggNhic9ms+0=;
 b=mtBIRYsxjyfT5ER7cUpGecOO/APMejNOwKOPX8r8iRfEra2hjc1ldEiSd9ZBq9K9Kq/psfMI4U5VN33vPsWR7Je6L821vsvzvp4dbENQYOieFXqzRYM+lJFTtoIevLRDa8cFg78dBi525KFqSM0yBgww4WQuCmOTEa5C+v+3HI9B3ABjIiyMlzWbbRBL+2+jAQBxRXEV/uw39nbEYMrT0W/OoCVacIKSVQOmLkoRJ065T83W05CU6kolDpVLzMqfIutE15wv+p4fW0r70BZdoA3+9uoP7ui67a3mh/y/7E92K9NLm+wv3/6oFuhV9duYx7MmnDA9CXHcZqGyHLptiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U0g7+wVaxCT4BL0eA5hYKi+ApQuWHuHAggNhic9ms+0=;
 b=pIp91el2bgvkJMaoBGRQ4LrTUGWqQLAhiNiVRwjLmT91G3O1uIh68DS48Gj/AgZbbZAGcXpS/2TDv3uBbiLKR0qX4Ek1va8nhC+6EySU5BQF8+yKQqSXgOjS8hqdzBnUyEvf8F5sGehhpco/QpvbyITn+r2oSmcQZDTxRSx6WGk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4513.eurprd04.prod.outlook.com (52.135.149.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.21; Wed, 4 Dec 2019 10:14:45 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 10:14:45 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Aisheng Dong <aisheng.dong@nxp.com>
Subject: [PATCH] clk: imx: imx8qxp-lpcg: use devm_platform_ioremap_resource
Thread-Topic: [PATCH] clk: imx: imx8qxp-lpcg: use
 devm_platform_ioremap_resource
Thread-Index: AQHVqoum7IH7ZRFDgESKl5wnHnxd3Q==
Date: Wed, 4 Dec 2019 10:14:45 +0000
Message-ID: <1575454349-5762-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0145.apcprd02.prod.outlook.com
 (2603:1096:202:16::29) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 05331911-3731-4a97-dc40-08d778a2c8fa
x-ms-traffictypediagnostic: AM0PR04MB4513:|AM0PR04MB4513:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4513F213591974817CF17408885D0@AM0PR04MB4513.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1284;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(376002)(39860400002)(396003)(189003)(199004)(66946007)(54906003)(7736002)(305945005)(6486002)(50226002)(6506007)(6512007)(8676002)(99286004)(71190400001)(316002)(102836004)(26005)(64756008)(81166006)(8936002)(66556008)(81156014)(2616005)(186003)(86362001)(66476007)(14454004)(66446008)(25786009)(71200400001)(110136005)(4326008)(2201001)(6116002)(6436002)(2501003)(6636002)(2906002)(5660300002)(478600001)(36756003)(3846002)(52116002)(44832011)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4513;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 52Ia2fKFInVG21yKa56vGM35EWLqauAd03C64dRjGUe2HfvRvj8VAayU9pxEAh//9kC2nHdQAM2Qd8e7y8aUr7jPtPfgvc0ottON0UeIZnEWyAttoOgN5GnYzpc+syYb5neV38683M+ryavicbYTCRqY8KeJx6T/YCx3LU4djiqT4JTA5p2WvCS/wllOui/bpITFWjjn+SUqzRnVBKWViIPs5IpU4pa1y0TnSPZ0KftTlSenOI+Z3+Am0h8MuVlaG3igdABAhdwaCsf4Fpwi72/d5XjwQ20Qc63pGX7l7Y96/SnuDdxFghAjk8Ev0AxgS68qsPnWg6D2CHH86/mrR54O3UqM6nSxlBF07//37k7Y/Y+wgMOFBBmOhwRpbchv5qp8BTnRjDeaaxo8dZdY0TDeH/ZNk5+epBpPPhQoBx/TTaVX3W0yf6fpTcxWrwtNSWHmRSk1jZb4OWMhs9BseWW84KJH4f0jVzDzomHU+2Xj9rtTx0B8C+OrKo4YmaAV
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05331911-3731-4a97-dc40-08d778a2c8fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 10:14:45.1721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bOjnaCqWk3uHteP1LlSXiKpOcWiIokJ5ZDWu5+LglNjnaTfQMCm4p2pEupTBWEIiEOmweZy6Sb5KP2aN94goIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4513
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_021449_144254_B4CC6EE6 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

devm_platform_ioremap_resource() wraps platform_get_resource() and
devm_ioremap_resource(), we could use this API to simplify the code.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8qxp-lpcg.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
index c0aff7ca6374..3f2c2b068c73 100644
--- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
+++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
@@ -164,7 +164,6 @@ static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
 	struct clk_hw_onecell_data *clk_data;
 	const struct imx8qxp_ss_lpcg *ss_lpcg;
 	const struct imx8qxp_lpcg_data *lpcg;
-	struct resource *res;
 	struct clk_hw **clks;
 	void __iomem *base;
 	int i;
@@ -173,12 +172,9 @@ static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
 	if (!ss_lpcg)
 		return -ENODEV;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return -EINVAL;
-	base = devm_ioremap(dev, res->start, resource_size(res));
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (!base)
-		return -ENOMEM;
+		return PTR_ERR(base);
 
 	clk_data = devm_kzalloc(&pdev->dev, struct_size(clk_data, hws,
 				ss_lpcg->num_max), GFP_KERNEL);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
