Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B92106C0A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:49:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAQDwk836MAxPBnDpjn90cAAPoe7kIOxgf2SNA6ptNM=; b=NY2hYu4r8fq2uv
	aoTckN6364UsKRv3eq9J6yGpalIinJY+x6Lu8kfd+MJlMAsov3M0zjoandg06YCAL8VW9EWCeKWjF
	atNHeneUVSkYTgLARdlriInOeTZvtsbwn0NXdMBkEwEUG8Frgut3HV7OmQ6aA+GwNwQ3doxnrSpWn
	QghCu4Rm9Vxpfur9mnuIChPU80jhnFmv0xbHjKrLP93H4+ZZWv4+/y2U9YKGVTSNAfm/UqIn4MlJg
	vI1uO6aQOPZnLXEKGufZDPhRPU1Hvrf1iLsTyRHUO8eFh0rWjjxkRccdX0Ek1yfAU/r1SCyX/tcFj
	HDxHHIrd9jmReA93Tm9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6VH-0002JU-Ee; Fri, 22 Nov 2019 10:49:31 +0000
Received: from mail-eopbgr60066.outbound.protection.outlook.com ([40.107.6.66]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6U8-0001gd-Ee
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:48:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ogMJF0ItoKS7deLeO+MWiNxwnziPsBCm5yZZRWmAdQXZhjs1F0Wj9TzKwsr1uNTd5H6PXDTA2fUVHwhxFRS8qVukBKCAgf9nKT4/nmg9FLEeZA1yrtBcgpZr4gaPBkNkxbDotloiRSEYusb7kQ/mLm1SbzEmL/pH9SyNaXbxbf8APMXsXW9mrwCjpjIB//yforulMllv3KxjvdsLLoNj8UCYQb2iqw9YRWYMW9L2s2sJuUED5R1fnOcmMHTy9s/Vm4QWmtHeVXfaPl3ypSS2+pDm5ddSkmF4Zvz2GEHECnI8LfvfVDJ5JfRH9zHNeXSqC7+Bj1MJvRgrMLyI6Uhvnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3qqqySnUx5hbngPXJSn7qDcJcQbjLOyL9Ze+Zk60ShI=;
 b=LYEu6u7ncJal+wUzaCQEUr+Rg0II3FhrnLLSA9iYdCckDTFe2NV7TVUPt7Ba9KGW0uHLalNxMAu2/VMVP1BEmWyHkdb1aS9YlMTP2MxtU9d3bDyGVUNi81cvuLDFdGBKbasrEeG9tIgH5xoYv1iuUFOnKAsBcguENzN4cVCULmeuBSc0RHk4s2UGpua8OeIj9sRdp2Gk8zV6YOz/HSuUzqRC8h6CVneKhKtB/+UaAOxptws67q2W9ddo7v5QtXGFXrOlsJ0Sj7Xlsr/+nd/bDb3P80cyOkZjUGcATnzq8fNOzDplo/D+bycGEB5jSo07Y/Dt9q4616zEOLAigBZFsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3qqqySnUx5hbngPXJSn7qDcJcQbjLOyL9Ze+Zk60ShI=;
 b=Iym2zVnGD71PvhClTe/ASh+YSIJ7CIR16quepGhQAyyCZsQR7j5+f2iCs4UBM3dXd9K2NzmmjFKpLW6o2RY9U74b3n3sYr2kunrU88sS2Q3+ZiT1LBRA68D5/lH+QzGewnhpuVPsKsn8+wvupt6HJoQPUkthR3ItbmFLxoH0q3A=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6961.eurprd04.prod.outlook.com (52.132.212.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Fri, 22 Nov 2019 10:48:17 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2474.019; Fri, 22 Nov 2019
 10:48:17 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v2 07/11] clk: imx: Rename sccg and frac pll register to
 suggest clk_hw
Thread-Topic: [PATCH v2 07/11] clk: imx: Rename sccg and frac pll register to
 suggest clk_hw
Thread-Index: AQHVoSJYdI0dfcrcUkSeoWKrP5yyHg==
Date: Fri, 22 Nov 2019 10:48:16 +0000
Message-ID: <1574419679-3813-8-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: 92471ecd-12be-44f1-f26a-08d76f397b1e
x-ms-traffictypediagnostic: AM0PR04MB6961:|AM0PR04MB6961:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB696121794DA502BE5D9B6E6BF6490@AM0PR04MB6961.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:989;
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
x-microsoft-antispam-message-info: qTh15l9nxloArqUScywHo/zhF1J1vavZpfEPwEkhDp/wTXHpeiNiPfksRUJEs7YW/hVvLpUWstoigBKQ/h2uJC3V3oVe8BuHRpdOUBXJVzJD1cN5Gj/6ie2ED5NI67ENxObRh5/GrCbnuq+YOCIQyVPRgADSDnUDR99gMKnk+kKMG/lOdQXh7R66Qim1nQI95PllMU9ZhJ2vELRiB2j6NhmIct26oYWZFBucBb3zK67OPYQErl6aueUUF63S3SouD2d8mu9SmNx++6wL8KN433jvbmkaXwEQR/pT+uJOsPCrLdqejZGV9t2nWrj2cH9lJHpNg7rxn20feKwHiZuy0Ea8CfR2L4U/a1KuLyltoRhU3J7WgxYFprnkNob2JRfkPTbrMkXA3jhngPYPbPnG8mcGXzO+oY0ulAHHjmSoSRBz+ICk+wgOaazNu0Wm5IvB
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92471ecd-12be-44f1-f26a-08d76f397b1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 10:48:16.7138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ydbsT2hH2pz6WD+gB9JjK/b5vUERUrHHamZXyZTaBSKjM0grGxJg2VZ/n6+KgBw/Qo435fyRZUX9a3LTtF3wIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024820_513848_A30A9B1A 
X-CRM114-Status: GOOD (  11.76  )
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

Renaming the imx_clk_frac_pll and imx_clk_sccg_pll register functions to
imx_clk_hw_frac_pll, respectively imx_clk_hw_sccg_pll to be more obvious
that they are clk_hw based.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-frac-pll.c |  7 ++++---
 drivers/clk/imx/clk-sscg-pll.c |  4 ++--
 drivers/clk/imx/clk.h          | 12 ++++++++++--
 3 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-frac-pll.c b/drivers/clk/imx/clk-frac-pll.c
index fece503..101e0a3 100644
--- a/drivers/clk/imx/clk-frac-pll.c
+++ b/drivers/clk/imx/clk-frac-pll.c
@@ -201,8 +201,9 @@ static const struct clk_ops clk_frac_pll_ops = {
 	.set_rate	= clk_pll_set_rate,
 };
 
-struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
-			     void __iomem *base)
+struct clk_hw *imx_clk_hw_frac_pll(const char *name,
+				   const char *parent_name,
+				   void __iomem *base)
 {
 	struct clk_init_data init;
 	struct clk_frac_pll *pll;
@@ -230,5 +231,5 @@ struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
 		return ERR_PTR(ret);
 	}
 
-	return hw->clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk-sscg-pll.c b/drivers/clk/imx/clk-sscg-pll.c
index 0669e17..acd1b90 100644
--- a/drivers/clk/imx/clk-sscg-pll.c
+++ b/drivers/clk/imx/clk-sscg-pll.c
@@ -506,7 +506,7 @@ static const struct clk_ops clk_sscg_pll_ops = {
 	.determine_rate	= clk_sscg_pll_determine_rate,
 };
 
-struct clk *imx_clk_sscg_pll(const char *name,
+struct clk_hw *imx_clk_hw_sscg_pll(const char *name,
 				const char * const *parent_names,
 				u8 num_parents,
 				u8 parent, u8 bypass1, u8 bypass2,
@@ -545,5 +545,5 @@ struct clk *imx_clk_sscg_pll(const char *name,
 		return ERR_PTR(ret);
 	}
 
-	return hw->clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index d6c65f0..a7d86df 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -115,6 +115,14 @@ extern struct imx_pll14xx_clk imx_1443x_pll;
 #define imx_clk_pllv2(name, parent, base) \
 	to_clk(imx_clk_hw_pllv2(name, parent, base))
 
+#define imx_clk_frac_pll(name, parent_name, base) \
+	to_clk(imx_clk_hw_frac_pll(name, parent_name, base))
+
+#define imx_clk_sscg_pll(name, parent_names, num_parents, parent,\
+				bypass1, bypass2, base, flags) \
+	to_clk(imx_clk_hw_sscg_pll(name, parent_names, num_parents, parent,\
+				bypass1, bypass2, base, flags))
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
@@ -124,10 +132,10 @@ struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char *name,
 struct clk_hw *imx_clk_hw_pllv2(const char *name, const char *parent,
 		void __iomem *base);
 
-struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_frac_pll(const char *name, const char *parent_name,
 			     void __iomem *base);
 
-struct clk *imx_clk_sscg_pll(const char *name,
+struct clk_hw *imx_clk_hw_sscg_pll(const char *name,
 				const char * const *parent_names,
 				u8 num_parents,
 				u8 parent, u8 bypass1, u8 bypass2,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
