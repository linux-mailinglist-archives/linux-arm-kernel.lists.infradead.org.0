Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21573114DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4HOty6XW1Ukegvv/A1RJL/TiU4wN7P4HbxkXk/XgDs=; b=djgtWP9EqOL+a5
	9JQgOOio2DA2vJ34kDjnIiEpcq5SO+PuVxnMJp+4MUiMBZUcQEKcfxaCmivF0zX+I6sfp2z1qxCvH
	ZC6pE0MYAVydBxuy6eryHCAe29UNgUPn48OOMl6fE5wGNpsbpzg8VRS/fG9w23UggbspIC5Uh4+mM
	3lyYmBhGtYJQoPDSbrSn/3nbfHNdHXhliOVkxOCgF9hvsQWLN9H653Zz18J2MKErVkFnjUJH9phVE
	4js+FKLfkoKydH1KuIB4D8Uv06lahExF+mad5W0JRouGbul6oeTpdnAtULVKLFnwL/khEfSY/DPuP
	Jjx/7DdcrQmuhVZF+nfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6lX-0007K5-9g; Thu, 02 May 2019 08:08:27 +0000
Received: from mail-eopbgr10041.outbound.protection.outlook.com ([40.107.1.41]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6k6-0005Kv-RR
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:07:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wA6Qf6MZzfh97HRu3YxvB4VKPIsK+XB/X9pf8yDRXSE=;
 b=dbWlX1nqrrv0/8jIZ6COHBV4/Wyw532ihfRi4d5WK06kBGwevMfSqWdg3Dk97Z1gYrrt+AVacRkBWiBQJNinfsBoYSgQ09GWUSYcEHYgB6Az7wX70n5qj2BdcctSc6cA9nCQhKQR5UY+w3FXPxpWdDIpB7RTkl9hg37b2sUysUY=
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
Subject: [PATCH v2 09/18] clk: imx: clk-gate-exclusive: Switch to clk_hw based
 API
Thread-Topic: [PATCH v2 09/18] clk: imx: clk-gate-exclusive: Switch to clk_hw
 based API
Thread-Index: AQHVAL39kem+eMSdpUuD+JPRZq4xDg==
Date: Thu, 2 May 2019 08:06:48 +0000
Message-ID: <1556784376-7191-10-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: 3e03c19f-3194-414e-1bfb-08d6ced51fe5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4948; 
x-ms-traffictypediagnostic: AM0PR04MB4948:
x-microsoft-antispam-prvs: <AM0PR04MB49483D6129680FC27F86516BF6340@AM0PR04MB4948.eurprd04.prod.outlook.com>
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
x-microsoft-antispam-message-info: 5EZ+dSshm9LmkNeSs+/Se1g8ZVlayCv0w55nRunFdiAwunDJOT+p1MZHil9/QWeynJwKJHpU4zvqW/rWLedH3qHoSrKwlIhQGiGu3jomEkRQ6/YlOML8Z3qSCdg0G/94/LlXREBluQfm81VNfmv2/ShYT5EWSBjDknfjfMSK/VP6xC+QbI0YNai2VXfVk9zozAK5oLO+L1TTNlK2z5gggCsLSaQGu0/SzLQcFsEKdxF3T55k5Q5us3SKt1MPuoxtq1Ea8GNZikcRRuaQrMMirUgiXM0h179bd7ZENixAWPxFHU6Xwb13wxHOfcpdrVqgPNdDjflaq/kjKVLwInxPtAnaDmGTL5ryf0mDt5FM+wYGW6WpXeraje0BsoIRSTT+c8EoNnecBHmjl+LBxbfszdavJpO34qTJ8HvKZQFwLhU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e03c19f-3194-414e-1bfb-08d6ced51fe5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:48.0187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010659_637137_15CA034A 
X-CRM114-Status: GOOD (  15.92  )
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

Switch the imx_clk_gate_exclusive function to clk_hw based API, rename
accordingly and add a macro for clk based legacy. This allows us to move
closer to a clear split between consumer and provider clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-gate-exclusive.c | 17 +++++++++++------
 drivers/clk/imx/clk.h                |  5 ++++-
 2 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-gate-exclusive.c b/drivers/clk/imx/clk-gate-exclusive.c
index 3bd9dee..7bd9f14 100644
--- a/drivers/clk/imx/clk-gate-exclusive.c
+++ b/drivers/clk/imx/clk-gate-exclusive.c
@@ -58,13 +58,14 @@ static const struct clk_ops clk_gate_exclusive_ops = {
 	.is_enabled = clk_gate_exclusive_is_enabled,
 };
 
-struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
+struct clk_hw *imx_clk_hw_gate_exclusive(const char *name, const char *parent,
 	 void __iomem *reg, u8 shift, u32 exclusive_mask)
 {
 	struct clk_gate_exclusive *exgate;
 	struct clk_gate *gate;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
+	int ret;
 
 	if (exclusive_mask == 0)
 		return ERR_PTR(-EINVAL);
@@ -86,9 +87,13 @@ struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
 	gate->hw.init = &init;
 	exgate->exclusive_mask = exclusive_mask;
 
-	clk = clk_register(NULL, &gate->hw);
-	if (IS_ERR(clk))
-		kfree(exgate);
+	hw = &gate->hw;
 
-	return clk;
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
+		kfree(gate);
+		return ERR_PTR(ret);
+	}
+
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 86c99b4..1304315 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -69,6 +69,9 @@ struct imx_pll14xx_clk {
 #define imx_clk_pfd(name, parent_name, reg, idx) \
 	imx_clk_hw_pfd(name, parent_name, reg, idx)->clk
 
+#define imx_clk_gate_exclusive(name, parent, reg, shift, exclusive_mask) \
+	imx_clk_hw_gate_exclusive(name, parent, reg, shift, exclusive_mask)->clk
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
@@ -122,7 +125,7 @@ struct clk_hw *imx_obtain_fixed_clock_hw(
 struct clk_hw *imx_obtain_fixed_clk_hw(struct device_node *np,
 				       const char *name);
 
-struct clk *imx_clk_gate_exclusive(const char *name, const char *parent,
+struct clk_hw *imx_clk_hw_gate_exclusive(const char *name, const char *parent,
 	 void __iomem *reg, u8 shift, u32 exclusive_mask);
 
 struct clk_hw *imx_clk_hw_pfd(const char *name, const char *parent_name,
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
