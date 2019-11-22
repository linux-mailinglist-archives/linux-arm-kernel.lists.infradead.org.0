Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A298106C0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CWn0rWfeacUmBtM7f2axmxej/UvmNdUY+/vdQMyI0Y=; b=ZiBVqY7QeLAuHV
	EGcwOzeijz0D4miuTNUD/QpxYoUI4tkLi6/Ym4sUwUkB2KX5qTJledcPYY7H40ZbGMWl0xgS7QHpk
	EQ6rtoquqH/Hv1OYeBzgUDMIn1lhfDjGi5t/tMh3mnG+Rja80cryGVU1cr2iSFy6ZX7dOL4aJu4U1
	hE0EgBCGTTOQGen4OBmcaR7GbPE7ZWfl39PypO5InF0eFiZLYrhTSBwy4TdY/LQuBVqjef+wVYxVQ
	v4wQiRBdykiWJixh2bmMVw82u2JGi7y2f5S+qBbiUKq7IKg68DrMwlPc5cBHzveiAm+//gNkzLebs
	lc9BucaA0ZL7YEhibWew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6W0-00030c-5V; Fri, 22 Nov 2019 10:50:16 +0000
Received: from mail-eopbgr60066.outbound.protection.outlook.com ([40.107.6.66]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6UC-0001gd-R2
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:48:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RvX3AwAHgoQwJdftdhKoxG9p64yGUyp+WmSvsz+FM9t3a7/Pg9sfSCeKGCBrmwldIK0w7vRFUi/5SIWZ70oXTqdFKqIJqaHrkQxsKsKZPWoo3XVMQWIY7IIvQ9IDX/pK6oizwpjxrsGh65bfku2+XTfRmj2WpLPVJ5efCSZJcfqpEh3liiK8TFTuCdIXabvGu/GEDWpPDaydSMegnnuvGITkVPWr+D1+BxNex8AUjKduxmsjqCoeIYtYzf8BarRRyPX2URMZycKyw/2QQjdgyYImDeC/4qpPmBl9CEX0Zkl+7v9w9C7j8sgj/snZcTMYbjUsqxZNuv4zhWziet6NtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aFcaMaCiNx93r3/J5tg+mOqtpfn/9ha3QAxyPVxVuOQ=;
 b=TYWnAgvWE1FabD/1YNlk5+tQ5JZlNFuL8q9KVYwgqn+J5S13avB2hv1mHXet/dP2obxPF1gfLOAImBD7biF1HbLW566X95QL2N1BduHUyIqvWRgPFS5GWwCdz664zSojjDvepdqkWvKO7SCX8adThP/Rh1ykmt2SVAAli7FN3p5AmGhIkKwc7luSv0g7E+PUJNb5Uhv+G9JATpuFG/1IAcTYqA/1EotyVwXD0racKeGPW3cOhWhcZTsxP70sk5E6qcxgX5vhTIj4CuJt/V0IUkzYIrrMVk4zoeziO8WlujvrZgU1olrWRoeQssOM73XDVLyMUeOeflED0KMGh1nc6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aFcaMaCiNx93r3/J5tg+mOqtpfn/9ha3QAxyPVxVuOQ=;
 b=PhU/QG3A6AYWPZ6+4DAUSy/2l6TImk3320jZxcyA2a5E2psGfenAHaPY5p2B2QY7SrJxJp6Wcgm5W5wdJr8uKTJ3FR9vG6Cs0HX1z+NsbHytrtWIUk+g22AmzhsYqzb63K2w5yzLCqXTMEa3xPybYA8yVZQz/x/y+dB+lNSlnaQ=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6961.eurprd04.prod.outlook.com (52.132.212.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Fri, 22 Nov 2019 10:48:18 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2474.019; Fri, 22 Nov 2019
 10:48:18 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v2 08/11] clk: imx: Rename the imx_clk_pllv4 to imply it's
 clk_hw based
Thread-Topic: [PATCH v2 08/11] clk: imx: Rename the imx_clk_pllv4 to imply
 it's clk_hw based
Thread-Index: AQHVoSJZWozaeArIAU+WAPCOiKGqBw==
Date: Fri, 22 Nov 2019 10:48:17 +0000
Message-ID: <1574419679-3813-9-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: 9dd29a45-3004-4027-02f1-08d76f397ba3
x-ms-traffictypediagnostic: AM0PR04MB6961:|AM0PR04MB6961:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB69619595DE4034C921EECA74F6490@AM0PR04MB6961.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(39860400002)(396003)(346002)(189003)(199004)(186003)(44832011)(446003)(11346002)(2616005)(52116002)(76176011)(66446008)(64756008)(66556008)(66476007)(7736002)(478600001)(6636002)(36756003)(5660300002)(6506007)(26005)(2906002)(86362001)(14454004)(102836004)(386003)(305945005)(25786009)(66946007)(256004)(110136005)(8936002)(50226002)(6116002)(316002)(99286004)(54906003)(81166006)(81156014)(8676002)(6436002)(6512007)(4326008)(71190400001)(3846002)(71200400001)(66066001)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6961;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gyw0GSAw3xS+eR53JAKNvZtkJLv80RiStM+BkqQ1FhdmpFFdK1/7wnuGP287hPTKSWJ+H9rCEnOpASqCA8VtflljntNmTdc70M4HI14SEqiHHf9b8upu3r+l9GLv4tka2d0PRmkSD0siJyWZr6uM0Xgho6a2Yf9o+8oKHOSy4z1v1/XlmvpTAObMvxavgpeL34wwhocgmsTkxPgOG0gNaq03/lbkykOHRvgwwukGJgcn9EjQqHHhQRwW9WlgYwDg/ZpkZRLgk0zWlh/wNCVm2MT01OV3ZLTg+Ai85Eml/nNzfAE9/WEquOL1tMYjKlCCMnXMJfkHPeqjn25a/ZeypQqaIRfHx/NKGvplZlPkmBTZaojb7DCIVzs4jR822S0Sty7vi4y+9Qery8R6oBIW8cI4XvtumOYTV7YJiERG3BNpvk4fWVhzEAdbOA8HexPS
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dd29a45-3004-4027-02f1-08d76f397ba3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 10:48:17.6992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XWn62rVvP7df+FzgkWZs5MWVp8s5TxITNW/NR1bYlLFCX4YtZfPSd9zs+b/wNPA0IdwtueJKKIppEdrNnflpgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024825_225634_80DF1C10 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.66 listed in list.dnswl.org]
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

Renaming the imx_clk_pllv4 register function to imx_clk_hw_pllv4 to be
more obvious it is clk_hw based.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx7ulp.c | 4 ++--
 drivers/clk/imx/clk-pllv4.c   | 2 +-
 drivers/clk/imx/clk.h         | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 64b79a8..afd2c2c 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -90,8 +90,8 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_SPLL_PRE_DIV]	= imx_clk_hw_divider_flags("spll_pre_div", "spll_pre_sel", base + 0x608,	8,	3,	CLK_SET_RATE_GATE);
 
 	/*						name	 parent_name	 base */
-	clks[IMX7ULP_CLK_APLL]		= imx_clk_pllv4("apll",  "apll_pre_div", base + 0x500);
-	clks[IMX7ULP_CLK_SPLL]		= imx_clk_pllv4("spll",  "spll_pre_div", base + 0x600);
+	clks[IMX7ULP_CLK_APLL]		= imx_clk_hw_pllv4("apll",  "apll_pre_div", base + 0x500);
+	clks[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4("spll",  "spll_pre_div", base + 0x600);
 
 	/* APLL PFDs */
 	clks[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
diff --git a/drivers/clk/imx/clk-pllv4.c b/drivers/clk/imx/clk-pllv4.c
index 8155b12..f51a800 100644
--- a/drivers/clk/imx/clk-pllv4.c
+++ b/drivers/clk/imx/clk-pllv4.c
@@ -206,7 +206,7 @@ static const struct clk_ops clk_pllv4_ops = {
 	.is_enabled	= clk_pllv4_is_enabled,
 };
 
-struct clk_hw *imx_clk_pllv4(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pllv4(const char *name, const char *parent_name,
 			  void __iomem *base)
 {
 	struct clk_pllv4 *pll;
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index a7d86df..5ca4615 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -175,7 +175,7 @@ struct clk_hw *imx_clk_hw_pllv3(enum imx_pllv3_type type, const char *name,
 		.kdiv	=	(_k),			\
 	}
 
-struct clk_hw *imx_clk_pllv4(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pllv4(const char *name, const char *parent_name,
 			     void __iomem *base);
 
 struct clk_hw *clk_hw_register_gate2(struct device *dev, const char *name,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
