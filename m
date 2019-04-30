Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D21EE18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 02:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qy766VxAOmgWchYBE+u5EUw7IGjwRLhkAGNGP6Sk1NQ=; b=Mj8lou6MGPn+F6
	UIfiKhqmk/KmhL2oEZ58Neob/hcxvAovAvVTA79d/mRKEmnQZbjjMcXQENCi6M6felYIjmFx1b8+g
	JgZ5V1IbMLoVroC01nGrwseGD+RmasiLEhKnn1mMFQJ7TjMuy58Jl3+xiNJQ0RbqhnVIH4vAaYdwf
	/LcZvibApiocGileKgbucElkOPWN+jQXXzhkYJSSNHT2TnUfz2x8eRqXB27VU4G84EQlKrIs1SGUM
	GjwWveGvmDPNFGP+2jgfkTEdzp2Djxzz1EBTpSx+QsotFOuGOw5TGb3ttd1ESwZ5Y+G7eVhMiiq/6
	/OzahcEPR2KaaIn/55Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLH5T-00025c-07; Tue, 30 Apr 2019 00:57:35 +0000
Received: from mail-eopbgr00053.outbound.protection.outlook.com ([40.107.0.53]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLH5L-000253-EZ
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 00:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VUNyhrII1OT+eH8jknP9HHyxvJ9BILSAybBP29zZMTk=;
 b=Kf9a1Q1JnaYWh7w5lDYAbOr5kiBF7eavYd4jW5gIl5py01e/SgGlTyw+iKuGM1czYD0uykEKRWklgdrZPm5xocKLK6RZVcrjmObmv1nuRxDHVxRpgSHy93gvErcs+JOy6H5JEhDzEEt5WYNw1albgzIiIBBAbYoFzF9pypIbpbo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3866.eurprd04.prod.outlook.com (52.134.71.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 00:57:22 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.018; Tue, 30 Apr 2019
 00:57:22 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Aisheng
 Dong <aisheng.dong@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
Thread-Topic: [PATCH V2] clk: imx: pllv4: add fractional-N pll support
Thread-Index: AQHU/u+rfzNhsf6HmUqZui5Dk6oOlQ==
Date: Tue, 30 Apr 2019 00:57:22 +0000
Message-ID: <1556585557-28795-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0032.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::20) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8978e38-a7ee-456c-e734-08d6cd06cd9d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3866; 
x-ms-traffictypediagnostic: DB3PR0402MB3866:
x-microsoft-antispam-prvs: <DB3PR0402MB3866C7584E18AED56D46FA66F53A0@DB3PR0402MB3866.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(136003)(396003)(39860400002)(346002)(189003)(199004)(2201001)(386003)(53936002)(316002)(6436002)(6486002)(68736007)(86362001)(6116002)(5660300002)(3846002)(102836004)(26005)(6506007)(186003)(110136005)(2501003)(36756003)(8936002)(6512007)(66066001)(66556008)(256004)(66446008)(99286004)(4326008)(2906002)(476003)(486006)(2616005)(305945005)(7736002)(8676002)(25786009)(73956011)(71200400001)(71190400001)(66946007)(50226002)(478600001)(97736004)(81156014)(66476007)(81166006)(52116002)(14454004)(64756008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3866;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MwMOdXuvCIsE6EUFLVg2mLoGEMfc2GCLIuiim/SzvoK2JAzH1sfMkkmddB0EgwFjjiGPKI4o23aKMm9et9S3C7yhQxjqC3GV0RrkbdzWOTAKHKNyyWtwv9ADqjhig2GmY0AiHi4s13SFzsE0hqi0gSlt1+1DljLa8awcUSYTTRScMPwgd8UrZTmciXZRtA0H8x8aLd7w4Ve52bbgOlpFFxD99HsAHNEMtk+hx+zpmXGp22/JOJldtTrvWSIFFQndR1BL/bY1g0uP036EpDgkpSnUHIHnkkHmhcD0sLxY6ltwq+o91LXpI7K0kRHe1hibPe2NhnclBRqvEWTD/oXsIw1IvJLoHrX3O84haIe1Xo3+75o0qk0hQCG9DRmYx4p5fQRcA2SlAp2LfMQydTd75JoeYzcniRBrwPu5TP9ZXAA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8978e38-a7ee-456c-e734-08d6cd06cd9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 00:57:22.8513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3866
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_175727_490061_8E6F8513 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pllv4 supports fractional-N function, the formula is:

PLL output freq = input * (mult + num/denom),

This patch adds fractional-N function support, including
clock round rate, calculate rate and set rate, with this
patch, the clock rate of APLL in clock tree is more accurate
than before:

Without fraction:
apll_pre_sel                      1        1        1    24000000          0     0  50000
   apll_pre_div                   1        1        2    24000000          0     0  50000
      apll                        1        1        2   528000000          0     0  50000
         apll_pfd3                0        0        0   792000000          0     0  50000
         apll_pfd2                0        0        0   339428571          0     0  50000
         apll_pfd1                0        0        0   352000000          0     0  50000
            usdhc0                0        0        0   352000000          0     0  50000
         apll_pfd0                1        1        1   352000000          0     0  50000

With fraction:
apll_pre_sel                      1        1        1    24000000          0     0  50000
   apll_pre_div                   1        1        2    24000000          0     0  50000
      apll                        1        1        2   529200000          0     0  50000
         apll_pfd3                0        0        0   793800000          0     0  50000
         apll_pfd2                0        0        0   340200000          0     0  50000
         apll_pfd1                0        0        0   352800000          0     0  50000
            usdhc0                0        0        0   352800000          0     0  50000
         apll_pfd0                1        1        1   352800000          0     0  50000

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 drivers/clk/imx/clk-pllv4.c | 72 +++++++++++++++++++++++++++++++++++++++------
 1 file changed, 63 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/imx/clk-pllv4.c b/drivers/clk/imx/clk-pllv4.c
index d38bc9f..d7e62c3 100644
--- a/drivers/clk/imx/clk-pllv4.c
+++ b/drivers/clk/imx/clk-pllv4.c
@@ -30,6 +30,9 @@
 /* PLL Denominator Register (xPLLDENOM) */
 #define PLL_DENOM_OFFSET	0x14
 
+#define MAX_MFD			0x3fffffff
+#define DEFAULT_MFD		1000000
+
 struct clk_pllv4 {
 	struct clk_hw	hw;
 	void __iomem	*base;
@@ -64,13 +67,20 @@ static unsigned long clk_pllv4_recalc_rate(struct clk_hw *hw,
 					   unsigned long parent_rate)
 {
 	struct clk_pllv4 *pll = to_clk_pllv4(hw);
-	u32 div;
+	u32 mult, mfn, mfd;
+	u64 temp64;
+
+	mult = readl_relaxed(pll->base + PLL_CFG_OFFSET);
+	mult &= BM_PLL_MULT;
+	mult >>= BP_PLL_MULT;
 
-	div = readl_relaxed(pll->base + PLL_CFG_OFFSET);
-	div &= BM_PLL_MULT;
-	div >>= BP_PLL_MULT;
+	mfn = readl_relaxed(pll->base + PLL_NUM_OFFSET);
+	mfd = readl_relaxed(pll->base + PLL_DENOM_OFFSET);
+	temp64 = parent_rate;
+	temp64 *= mfn;
+	do_div(temp64, mfd);
 
-	return parent_rate * div;
+	return (parent_rate * mult) + (u32)temp64;
 }
 
 static long clk_pllv4_round_rate(struct clk_hw *hw, unsigned long rate,
@@ -78,14 +88,46 @@ static long clk_pllv4_round_rate(struct clk_hw *hw, unsigned long rate,
 {
 	unsigned long parent_rate = *prate;
 	unsigned long round_rate, i;
+	u32 mfn, mfd = DEFAULT_MFD;
+	bool found = false;
+	u64 temp64;
 
 	for (i = 0; i < ARRAY_SIZE(pllv4_mult_table); i++) {
 		round_rate = parent_rate * pllv4_mult_table[i];
-		if (rate >= round_rate)
-			return round_rate;
+		if (rate >= round_rate) {
+			found = true;
+			break;
+		}
+	}
+
+	if (!found) {
+		pr_warn("%s: unable to round rate %lu, parent rate %lu\n",
+			clk_hw_get_name(hw), rate, parent_rate);
+		return 0;
 	}
 
-	return round_rate;
+	if (parent_rate <= MAX_MFD)
+		mfd = parent_rate;
+
+	temp64 = (u64)(rate - round_rate);
+	temp64 *= mfd;
+	do_div(temp64, parent_rate);
+	mfn = temp64;
+
+	/*
+	 * NOTE: The value of numerator must always be configured to be
+	 * less than the value of the denominator. If we can't get a proper
+	 * pair of mfn/mfd, we simply return the round_rate without using
+	 * the frac part.
+	 */
+	if (mfn >= mfd)
+		return round_rate;
+
+	temp64 = (u64)parent_rate;
+	temp64 *= mfn;
+	do_div(temp64, mfd);
+
+	return round_rate + (u32)temp64;
 }
 
 static bool clk_pllv4_is_valid_mult(unsigned int mult)
@@ -105,18 +147,30 @@ static int clk_pllv4_set_rate(struct clk_hw *hw, unsigned long rate,
 			      unsigned long parent_rate)
 {
 	struct clk_pllv4 *pll = to_clk_pllv4(hw);
-	u32 val, mult;
+	u32 val, mult, mfn, mfd = DEFAULT_MFD;
+	u64 temp64;
 
 	mult = rate / parent_rate;
 
 	if (!clk_pllv4_is_valid_mult(mult))
 		return -EINVAL;
 
+	if (parent_rate <= MAX_MFD)
+		mfd = parent_rate;
+
+	temp64 = (u64)(rate - mult * parent_rate);
+	temp64 *= mfd;
+	do_div(temp64, parent_rate);
+	mfn = temp64;
+
 	val = readl_relaxed(pll->base + PLL_CFG_OFFSET);
 	val &= ~BM_PLL_MULT;
 	val |= mult << BP_PLL_MULT;
 	writel_relaxed(val, pll->base + PLL_CFG_OFFSET);
 
+	writel_relaxed(mfn, pll->base + PLL_NUM_OFFSET);
+	writel_relaxed(mfd, pll->base + PLL_DENOM_OFFSET);
+
 	return 0;
 }
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
