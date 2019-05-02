Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E40114E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KIf2nuN7sa6Ik6imzYBCjE+fxyD/r/g0vykUr3kvGk=; b=ch6qHjeeNfOfce
	Q/h4i9Gjqn5yRzCWUgXNgtEsWsjpD6xxWxbQeabg9dC2xQdmnTNGM0V7Om5+7536I33IJO1duNWfz
	nILtEgrzDl4pZ2IQ5+icSFgVqub9aWQ2coofYZRRCB3B00ScFjW/dDF1xki5fz4pUbtiGEKuAflqo
	Lp9B7Yi14RLlrzeR2tqXPH5626ENeFXrWLElgbN9MgdvjbPJMlvDR5iCGZ1+jKI15054uC7uyvKKo
	gFCsRut6RpHy7y1JDavAtKyM4rqh+b+9UldSYJ9TEEyoML+NhVaqvj0AJH8iSytLFTN4SEsP/CgjA
	JvXYbUPLIxAsTtP5snXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6ly-0007sZ-D5; Thu, 02 May 2019 08:08:54 +0000
Received: from mail-eopbgr10041.outbound.protection.outlook.com ([40.107.1.41]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6kD-0005Kv-J8
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VreMw08K1QYvE445NH5Gr1g17TVjMFIsCtPHIxRlHHQ=;
 b=bB3h+A6IimXzlG6hxrkETHMOHxR1PFC8lbLLHmJMWmZAGYDL7iHDFY01A8q/nNZL2UQq45cVOfc8Y2lkMsuEMy+kiIJtx1tAn6nDJ4EUOfSj+ZaTrK/lYohgNs6QswcUeOkkM5ylzS9kvZXZR5HkXl/Gt3chhx5iReWCGb1pQTk=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4948.eurprd04.prod.outlook.com (20.177.40.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.16; Thu, 2 May 2019 08:06:48 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:48 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 10/18] clk: imx: clk-fixup-div: Switch to clk_hw based API
Thread-Topic: [PATCH v2 10/18] clk: imx: clk-fixup-div: Switch to clk_hw based
 API
Thread-Index: AQHVAL3+K+LqazBmQEWkh8KDmGpwvw==
Date: Thu, 2 May 2019 08:06:48 +0000
Message-ID: <1556784376-7191-11-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: c92efc5a-4fa4-48d1-fc4a-08d6ced5206c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4948; 
x-ms-traffictypediagnostic: AM0PR04MB4948:
x-microsoft-antispam-prvs: <AM0PR04MB494813BD6D14C95D992E5F7FF6340@AM0PR04MB4948.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(366004)(396003)(346002)(136003)(189003)(199004)(86362001)(3846002)(8676002)(478600001)(25786009)(186003)(6436002)(81156014)(26005)(71190400001)(71200400001)(102836004)(14454004)(6116002)(4326008)(53936002)(305945005)(7736002)(66066001)(36756003)(81166006)(50226002)(8936002)(6512007)(66556008)(64756008)(44832011)(316002)(54906003)(110136005)(99286004)(476003)(2616005)(66946007)(73956011)(486006)(68736007)(66476007)(66446008)(256004)(2906002)(6486002)(11346002)(446003)(5660300002)(52116002)(76176011)(386003)(6506007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4948;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: y1Q8tQataOoGdf6BThSXmV0qU8nnX8ZmcC47hOYdjVw6DXkFVN4eHQpsIb+83KY8u7JWqcSPuV5KMw4VAAKH8lCpMraZexw5IV9R30+GBE/OYLYpt1+xLAmBHn2h+FpXYGqXTKJwBfaJ1xl2VJXcvCDmJTqUUgPU8M1wxuTHgEGA2CSC72eNfP/9uJDj/FmoXnhNHaHDZ/4jm6TeAESiQn9qbPg1rhAY0//Aucb5iCD7k5mlBRY9KlolfF+msozGVAE90aXY6oEssM66ktVtRX4wTHYOMvVkmHLj8gtWmJqZAHfVQefWsjtAnMymXut1u1SedwYkmGewnAub+bvyiilsf3IqkV1xFHuIGWd80z6Y+DQxHJy3SGwAWslNnKzxe11q15LKLSStJC7n+Muqi69rz3JiRdH/Y99yaiic+eU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c92efc5a-4fa4-48d1-fc4a-08d6ced5206c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:48.8652 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010706_244640_2C6F551F 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.41 listed in list.dnswl.org]
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

Switch the imx_clk_fixup_divider function to clk_hw based API, rename
accordingly and add a macro for clk based legacy. This allows us to
move closer to a clear split between consumer and provider clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-fixup-div.c | 15 ++++++++++-----
 drivers/clk/imx/clk.h           |  7 +++++--
 2 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-fixup-div.c b/drivers/clk/imx/clk-fixup-div.c
index ce572273..287539b 100644
--- a/drivers/clk/imx/clk-fixup-div.c
+++ b/drivers/clk/imx/clk-fixup-div.c
@@ -91,13 +91,14 @@ static const struct clk_ops clk_fixup_div_ops = {
 	.set_rate = clk_fixup_div_set_rate,
 };
 
-struct clk *imx_clk_fixup_divider(const char *name, const char *parent,
+struct clk_hw *imx_clk_hw_fixup_divider(const char *name, const char *parent,
 				  void __iomem *reg, u8 shift, u8 width,
 				  void (*fixup)(u32 *val))
 {
 	struct clk_fixup_div *fixup_div;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
+	int ret;
 
 	if (!fixup)
 		return ERR_PTR(-EINVAL);
@@ -120,9 +121,13 @@ struct clk *imx_clk_fixup_divider(const char *name, const char *parent,
 	fixup_div->ops = &clk_divider_ops;
 	fixup_div->fixup = fixup;
 
-	clk = clk_register(NULL, &fixup_div->divider.hw);
-	if (IS_ERR(clk))
+	hw = &fixup_div->divider.hw;
+
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
 		kfree(fixup_div);
+		return ERR_PTR(ret);
+	}
 
-	return clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 1304315..fc32baa 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -72,6 +72,9 @@ struct imx_pll14xx_clk {
 #define imx_clk_gate_exclusive(name, parent, reg, shift, exclusive_mask) \
 	imx_clk_hw_gate_exclusive(name, parent, reg, shift, exclusive_mask)->clk
 
+#define imx_clk_fixup_divider(name, parent, reg, shift, width, fixup) \
+	imx_clk_hw_fixup_divider(name, parent, reg, shift, width, fixup)->clk
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
@@ -148,11 +151,11 @@ struct clk_hw *imx7ulp_clk_composite(const char *name,
 				     bool rate_present, bool gate_present,
 				     void __iomem *reg);
 
-struct clk *imx_clk_fixup_divider(const char *name, const char *parent,
+struct clk_hw *imx_clk_hw_fixup_divider(const char *name, const char *parent,
 				  void __iomem *reg, u8 shift, u8 width,
 				  void (*fixup)(u32 *val));
 
-struct clk *imx_clk_fixup_mux(const char *name, void __iomem *reg,
+struct clk_hw *imx_clk_hw_fixup_mux(const char *name, void __iomem *reg,
 			      u8 shift, u8 width, const char * const *parents,
 			      int num_parents, void (*fixup)(u32 *val));
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
