Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E781E89CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:41:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rIgDLZmYZpz2cyg4FZQX7TT+/Ai2JD73Eas5xKfj/A=; b=KIdmkYws4KGQHF
	9KoGYCn2GM08Ag3EbqfSByJAYycYbccOjzGjvOkmJCKeIfcn5Anbu7aio5KBiTXLa6yzsnADiMm/r
	ijeN88dGkoLNAT8UBNgmQoVtjsyCXSfnRt3zrPFBy80rdnnbceWuBDgRg3BDx3TFsfQp0YPmJPo60
	5qVEbXFOW0bTnh6nTl2eKU6TS+7vJK5DSBY9YpXWm5H7Pgwf+Ff8l00beJV/ErT2ACkWofCladdBa
	c6H4UWtpL6KW5SEz88jwiYGs0FFOcS9OWSIYOy+n76pRUptqbxWlV9Z/CoHFoaXcOoJn3GshdUE7F
	N8d5omfucFWTUCsacqAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRke-0000sQ-7M; Tue, 29 Oct 2019 13:41:36 +0000
Received: from mail-vi1eur04on0624.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::624]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRk0-0000Yv-Pb
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:40:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H+epHnL7HRhw8geFkgBBQTRVTm+Rhfc5YeB89E/y4HIafureSWnukKjjZlOM2+kUgnsZw5Z0300TfdpVDcRyAcQ+UEjAvQUGD/kTii1rWixkWMGRpZqZeAJVt8vp5XOFEFAB0kLPASsjXQw/U/+2e9CV7AoUXNuCVvFv24jW0p6vnhRwVVV9Psy/nsGGYsZeyCCsSwbpXoRevnLhr/uVKVJm3vyw5U3dt2zUarwskjAawS92BTRpXHeEXE9Oi8jjQyYve+DsnBSnE7BT/zjn6Sb4qqefYGyMyKa2xWzB8yrCtSm1uL2qbx57+qJA7nxygIa5mDEun43LmK9mz7BA4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E+eVfGsjCWdf4WkfHzYME8GXxw5D7OLLAFA2jT61tdg=;
 b=KENxGICY8oSKf6iUxtc/Zdx2AAZvlrBCRZkyJs7ws25hk5ibxrTaxVDfMEylc6lzqz2auMrw2l7lY7cRLY1EF6oXUbywgEPTE3zUDJ5m2D+189WnX2pPvAZNLtM3FAv7RbiatFu4BAEcwMhsqgSrbW1Qa0EGEARniQSKM6veO/EkbYhyhE+f2tYKWWbQhALul7qL9ZQrvdfazneD2HwQCBgX/XhMrB+x6pu5PV4x34eKDNtEkoi/Fqo72RHcZXRqL5SutRxlbgsHvc94z94RPSo51ycbfsQwO4a+k2+KEB69kMQ6XKskUZ7X4vxz2ST7PjOZ2eVeFBCpvK9ZDC2aZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E+eVfGsjCWdf4WkfHzYME8GXxw5D7OLLAFA2jT61tdg=;
 b=ZrIhn/XDnydjukMOEhOynOs2DrhCaYGces8DuP8s9lBJTMvOvaLO326c41RLgzF3Zr+L2MWhbtrWAox3Zuas4/0Rv3vlmiDmM03L/kLT0OV69Ktl42x0n3YNju26NZ/cy+cCHNnIUqLQzrl/YGRFoc5aFPP7MkVxCFg2Gfq0jmU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4177.eurprd04.prod.outlook.com (52.134.92.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Tue, 29 Oct 2019 13:40:55 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.023; Tue, 29 Oct 2019
 13:40:55 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
Thread-Topic: [PATCH 1/7] clk: imx: clk-pll14xx: Switch to clk_hw based API
Thread-Index: AQHVjl58vmyH5lHO9kisrA51FWxJAA==
Date: Tue, 29 Oct 2019 13:40:54 +0000
Message-ID: <1572356175-24950-2-git-send-email-peng.fan@nxp.com>
References: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0030.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1f3aebb3-b9e2-4c0c-e430-08d75c759f22
x-ms-traffictypediagnostic: AM0PR04MB4177:|AM0PR04MB4177:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB41775E2A562EFDE085124A1188610@AM0PR04MB4177.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:270;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(396003)(39860400002)(376002)(189003)(199004)(2501003)(6436002)(5660300002)(8676002)(25786009)(6116002)(44832011)(486006)(3846002)(81166006)(81156014)(476003)(256004)(71190400001)(6512007)(2201001)(86362001)(71200400001)(6486002)(36756003)(478600001)(14454004)(186003)(8936002)(66556008)(66476007)(66066001)(6636002)(50226002)(316002)(66446008)(64756008)(66946007)(102836004)(6506007)(386003)(110136005)(4326008)(54906003)(305945005)(446003)(11346002)(2616005)(52116002)(99286004)(2906002)(76176011)(7736002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4177;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zvjjeECQgQp7vYT08Hvc5Ca7f+Nxd5cRtsRQ+ZmC+jg778hAtz0Tq6XW9WapcYlmArUE8ZMWEAoarOW9F5VbyYMaAbQes4hdA4Ldui7GBpDmOreelTR+LKPJ+GXcVuMelWgN2lObYR7d/U5X3Skq5tu/41QuBlxxHAOFhtr/Rj5ekvdJBAglPRj38+MspEAJJjxAJO7QEhUCT6IK5glOYs2GcICBx+pH4SNx3veGGGXrSbpGFFKG6s+sDz8iFaC14ujyDZdINIpN133xLlXm0RsxNQAV65cyetFNdRpkr5hONnEuCPgEdMM+eIUf+Jw44b0yV2N6OUzT/YnNNEd8cwZwEsWnzsZhMY9IgCzg5XDil9NVCSfKfqS4gcWZWx9rWyGprp8PPV7BX7OGTLLw3ClUZ7R10i1z7nKEgPTb2yz9aY3xqRzSbiam+SR1Utgj
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f3aebb3-b9e2-4c0c-e430-08d75c759f22
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 13:40:54.9606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MXHDTFeQVFhyxfiEZUh4nmy56RgGAK1U4abueQm+ImZtt+z5RZGonRAUrpLexq0fLCnu4txEB6J6yScGAtcmwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_064056_832313_789B59A4 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:624 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
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

Switch the imx_clk_pll14xx function to clk_hw based API, rename
accordingly and add a macro for clk based legacy. This allows us to
move closer to a clear split between consumer and provider clk APIs.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pll14xx.c | 22 +++++++++++++---------
 drivers/clk/imx/clk.h         |  8 ++++++--
 2 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 5c458199060a..fa76e04251c4 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -369,13 +369,14 @@ static const struct clk_ops clk_pll1443x_ops = {
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
@@ -412,12 +413,15 @@ struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
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
index bc5bb6ac8636..5038622f1a72 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -97,8 +97,12 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
 #define imx_clk_mux(name, reg, shift, width, parents, num_parents) \
 	imx_clk_hw_mux(name, reg, shift, width, parents, num_parents)->clk
 
-struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
-		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
+#define imx_clk_pll14xx(name, parent_name, base, pll_clk) \
+	imx_clk_hw_pll14xx(name, parent_name, base, pll_clk)->clk
+
+struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
+				  void __iomem *base,
+				  const struct imx_pll14xx_clk *pll_clk);
 
 struct clk *imx_clk_pllv1(enum imx_pllv1_type type, const char *name,
 		const char *parent, void __iomem *base);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
