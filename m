Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C41102604
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:10:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nB3jfXoC6A0/Te41SLKCD63CX9OC+D3rVvejrBK1rY=; b=rQpbGA+Gz4iYmP
	QjJRkyr8QrDHvrqr3SNDBUNtnYRSPJWL9PWMBseKRaNvCFXW1kgPNziwJ5+toMBAvZ0Y2cst8+1fi
	bH0w1oKyzxL/TYwc9yoFRautfobRVZww5K/DsUKxmW79YTMZdL5SV2UJe5FWsh24aRN2dsjU2JGUw
	Gss0iQcNc5PWaU+NqXXB/LK3j6wKMz8Ypu2zznkYvGjy69PbXIKvlJPxRSZdr8rxZ7tVlSj3Jd0Gb
	CQy3zzm5oaVWEvZBiL9n1ZnWUXdwVZ9OoOqjZF+JKfVpvAuZ8CTb2Ehys1zVafWtCyMj8gClX20j1
	7nKPt95W4WgTfZ/hRW7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4Cc-0001p8-PS; Tue, 19 Nov 2019 14:09:58 +0000
Received: from mail-eopbgr00084.outbound.protection.outlook.com ([40.107.0.84]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4BX-000184-Mw
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:08:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GN/tDrGZO+wQlNuj6At81mxKr3o0wBRCtqWdSWhkehw350NHMFXg37BuE++Mq0kwKrehtPXMNZdizZSNyWZNnuWXlZ8w0wlPDuf7S6oG7jNfe/WmVE1WK7CQPwmJCWZQYr8lyvF6PGTSZrdcKEErXwP4TmhNtLm94l1uDPp4N3js06cI94LWbXj9Dmd+Gmrs8uGqQ5tweQ6Gkqfq09KGz/N+I/VJ4siVqehEsqEo6xSdPB50OByOduHTc99seaj1vxdBf4WL1hEBxwvDCncUeCbFml+NvLwJLT472DZOmWE7QMvujTDdYT0767pmmlbLWPGUywQu2ly2byFmyu697Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s9o9cq9TzC6cC27ZBSd5J5BJyLR4OaDIdjpiH84qvtE=;
 b=JV6WboQfxTrxtiw9dE1hIO8LOl0boBdSF9zi8z8xTm0uyl9IpIiuDbkBvnqPuCO5fjf8+P+iX5b/wit0q3r701YslgRwkn0LTOcz2BsJioBgdmE7s6kgU+EM6G3jjBK13HNe6JL/y9mQCQB+F5+E4EgsqL+QCHzWEyaDBNOsx3My6NdZiwIvTXvGBP3i0KEEIbTBdpI+VpJvJ549eCsnFnOt/fLl+Ren2Ozg5A0NbqhkutjGFp0bzFynywhC/yfizOVZqP3bytSrquHzvuxs5GGBJmtloQ4wHAPWEXEdGpMtctj+XG+EnVy3ejBFCaOEP+q2A8LEkKrI/vvzZPjAcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s9o9cq9TzC6cC27ZBSd5J5BJyLR4OaDIdjpiH84qvtE=;
 b=IidN1p51Ym+TvBBnfjlo6Ek5bxxbSk5pOrC+iYZd9kqx/t0b95/UvOIMpTZqrBXf/GQLHVv7k0F9Is+wbKKqG0abLwW7XnRmMh6/YN63eiSPa1cfNVusvETDCnmgIKKvScjXmd8Wx0J5QRhmWposq/CkHqJ7dwD52ICbpCcGb6I=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5428.eurprd04.prod.outlook.com (20.178.113.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Tue, 19 Nov 2019 14:08:40 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 14:08:40 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Jacky
 Bai <ping.bai@nxp.com>
Subject: [PATCH 2/9] clk: imx: pllv1: Switch to clk_hw based API
Thread-Topic: [PATCH 2/9] clk: imx: pllv1: Switch to clk_hw based API
Thread-Index: AQHVnuLXtPo0oM/VL0SGxgLMTYi0hQ==
Date: Tue, 19 Nov 2019 14:08:39 +0000
Message-ID: <1574172496-12987-3-git-send-email-abel.vesa@nxp.com>
References: <1574172496-12987-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1574172496-12987-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR04CA0026.eurprd04.prod.outlook.com
 (2603:10a6:208:122::39) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.7.4
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b6b15f31-06a7-470b-b712-08d76cf9fa41
x-ms-traffictypediagnostic: AM0PR04MB5428:|AM0PR04MB5428:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB54281D02E7B3C21C52FC3D03F64C0@AM0PR04MB5428.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(189003)(199004)(110136005)(256004)(86362001)(316002)(66446008)(66556008)(66476007)(64756008)(66946007)(36756003)(446003)(7736002)(305945005)(186003)(3846002)(6116002)(26005)(5660300002)(478600001)(52116002)(76176011)(99286004)(2616005)(66066001)(54906003)(2906002)(11346002)(6506007)(476003)(44832011)(386003)(6636002)(486006)(6486002)(102836004)(25786009)(8936002)(71200400001)(81156014)(81166006)(71190400001)(50226002)(6512007)(4326008)(6436002)(8676002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5428;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ciYASkefnzprbcD6oVVyMiMGEgBdvvw26ktRZXMfhR9tUml/qVUwNohlW0h3noqdrzY245Vj4dd+KizEsRAmhEXkK9+cfT9V8W7xP7m6WroHwZFQQ0R2YKZJWCDWh6ZpA5bQpvq5vCeXfSomwdzorY3gmBOOExKqtgvk8d468aG6EAWs+l4LRS4xDytbWMLINodg+lfHe4kYXBZhSb5KEme5St2Rd+BGyFxD+yAjgBoweDYXttnsYuBQD17eKhlD+KZcQ4KTs0DoSdF34lUclStOyj57z7wbW3MzHRAqcD8krwYFoXIAkZMd8GZ4T8D8gq+4zd8C0ONMa0X39Z6RpSI+K1v5sk0I2kf2wP02b5Gv2pcx+qHcBWis4yAjXW/lzx8CVoxS6PMx6/TOlFnn+s8v6puEPK93etUx5Xe/Iub8R2GME3lGbBJc2cMg6gA8
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6b15f31-06a7-470b-b712-08d76cf9fa41
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 14:08:39.9420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8AIrRhsJCtUHaS2zGkmL2YVlRTnekPAsYIHccdANAbuHDveptecXFJ5M7MhRirVO5XFmxrfeeyoZ81+v/R1GNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5428
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_060851_745414_DB472151 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 945ce4d..af69fc1 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -109,10 +109,13 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
 #define imx_clk_fixed(name, rate) \
 	imx_clk_hw_fixed(name, rate)->clk
 
+#define imx_clk_pllv1(type, name, parent, base) \
+	imx_clk_hw_pllv1(type, name, parent, base)->clk
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
