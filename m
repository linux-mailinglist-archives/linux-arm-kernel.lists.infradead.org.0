Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480A5114CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEm0G1mppc/OUdDDKlRjPlnA7Q5h1A75+YcfWn1dduc=; b=d5KattxKbC8Cux
	1nTXE9iyLT2cS5R8CF+69IlblDE8p3+jsQGY6aZFJOpoYjv0nmAisd1fYJsVe0iD8uaulq4NwZaAo
	6plN9tAW9C8DiQzJrksdBTCwVqbQhbP/F1JnsUYghz9VfLtTJ3SmCeOgYKtWUsHolwEnlBLr/Ak7H
	7Q24PxPXDf93nL40CPrmCuvGUh6FL7z3Gs2M2rPOBLyPN7GR4D7BAPn1hDB7H8NELzByiI8UkFXt8
	/H5CLrAk7IorRhR6kx1Nqr1XkqHd4qAIQrUhJptWfGw7iBairBt8PQggMHNTU+UX5nh/CIZuBnX1/
	CWkNi1150X3/cpTlIIYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6lD-0006v0-TQ; Thu, 02 May 2019 08:08:07 +0000
Received: from mail-eopbgr10041.outbound.protection.outlook.com ([40.107.1.41]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6k2-0005Kv-2U
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:06:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ksu7ZH3fEYnTzgN4djwRseQACF6Ke1PM3tSgyHLRNsc=;
 b=blPGb/hAVvLZRGwTnw7creeudzPFWVyuHjDj47NBmyiV9/Mzhah4Av56HhfPJuDdIlqtps8R06ZfMeqdjmh56R5i3lH5jIz83RZddfiOb162xZFnLsY4iGos76Vv4Fb+mZHXv1xkJc0KGeToXMJDUKnjZhv9ftLiNPkJnTjHoQo=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4948.eurprd04.prod.outlook.com (20.177.40.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.16; Thu, 2 May 2019 08:06:47 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:47 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 08/18] clk: imx: clk-pfd: Switch to clk_hw based API
Thread-Topic: [PATCH v2 08/18] clk: imx: clk-pfd: Switch to clk_hw based API
Thread-Index: AQHVAL396xAjzLIjjE+l3n1d4NxiBg==
Date: Thu, 2 May 2019 08:06:47 +0000
Message-ID: <1556784376-7191-9-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: dba862f9-2c36-4bb0-0352-08d6ced51f5c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4948; 
x-ms-traffictypediagnostic: AM0PR04MB4948:
x-microsoft-antispam-prvs: <AM0PR04MB4948BF40C9D4A53545E23AC3F6340@AM0PR04MB4948.eurprd04.prod.outlook.com>
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
x-microsoft-antispam-message-info: 9l77cz/lXuE5WMyPQceROoxuIE5POh5bRIhy9yRzIW12vOrYznglLn7452xc+vdCCyAKw/8AveYEIBOZbsoc54wofZMT5e90JnX3ITBA9hvGqNLmUAA/+vFtsFvjcbv/695/BTamotLip7KbI90YvmHZvcNkfZ6VgONTbqxdy5sdcYgFoURsNJppUyKJ03g6omwf6SQoeXpN+Iw72Z3B6k8sPb8hi9NfRVvhz0iZqrBpCQhoAt0rPMdKTS4VHF/lRdbXTqP4/qsvVjLdIr0x2jnDlotied01EMSwXA5Edm02YGXsFgzyT6WPRubMS22jQtL2drtNJbxH3Xddv0UbXKNW6UKRDB+qHEgS4V6ngPU77KEbeHPMZcuJSDhIlEeR07F5i/Vk7lNY/zwm64urJ86B9yvgfZavM5aCWh4N7vs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dba862f9-2c36-4bb0-0352-08d6ced51f5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:47.1202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010654_673876_48BE747E 
X-CRM114-Status: GOOD (  15.45  )
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

Switch the imx_clk_pfd function to clk_hw based API, rename accordingly
and add a macro for clk based legacy. This allows us to move closer to
a clear split between consumer and provider clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-pfd.c | 14 +++++++++-----
 drivers/clk/imx/clk.h     |  5 ++++-
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-pfd.c b/drivers/clk/imx/clk-pfd.c
index 04a3e78..3b43d29 100644
--- a/drivers/clk/imx/clk-pfd.c
+++ b/drivers/clk/imx/clk-pfd.c
@@ -127,12 +127,13 @@ static const struct clk_ops clk_pfd_ops = {
 	.is_enabled     = clk_pfd_is_enabled,
 };
 
-struct clk *imx_clk_pfd(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pfd(const char *name, const char *parent_name,
 			void __iomem *reg, u8 idx)
 {
 	struct clk_pfd *pfd;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
+	int ret;
 
 	pfd = kzalloc(sizeof(*pfd), GFP_KERNEL);
 	if (!pfd)
@@ -148,10 +149,13 @@ struct clk *imx_clk_pfd(const char *name, const char *parent_name,
 	init.num_parents = 1;
 
 	pfd->hw.init = &init;
+	hw = &pfd->hw;
 
-	clk = clk_register(NULL, &pfd->hw);
-	if (IS_ERR(clk))
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
 		kfree(pfd);
+		return ERR_PTR(ret);
+	}
 
-	return clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index a079c78..86c99b4 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -66,6 +66,9 @@ struct imx_pll14xx_clk {
 #define imx_clk_pllv3(type, name, parent_name, base, div_mask) \
 	imx_clk_hw_pllv3(type, name, parent_name, base, div_mask)->clk
 
+#define imx_clk_pfd(name, parent_name, reg, idx) \
+	imx_clk_hw_pfd(name, parent_name, reg, idx)->clk
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
@@ -122,7 +125,7 @@ struct clk_hw *imx_obtain_fixed_clk_hw(struct device_node *np,
 struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
 	 void __iomem *reg, u8 shift, u32 exclusive_mask);
 
-struct clk *imx_clk_pfd(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pfd(const char *name, const char *parent_name,
 		void __iomem *reg, u8 idx);
 
 struct clk_hw *imx_clk_pfdv2(const char *name, const char *parent_name,
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
