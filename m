Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D40DAB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 05:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mM1cGQoKM+uPMjDa70fOEvjloWh4Nq7Nee9iPYxkXis=; b=sKQslMix5nC33L
	Hsnw2xcqEYd2mRM/G8jrAHKzCVNkiObWPyrAfcI3wIV5+Pt7ZeHuG2fqUBy8Sn1Qis4LBrNuswBoo
	bgvoPEB2lqDY4mhgV+MIvonXEkDXj0f8fGeKCfW9oDMonnKFv5RQJX4O7hQ+mXyNmoZBiONLiyKmM
	5+q+EMycneivQG9XdKEzUx4v3wUGTHZQK/S4OsDe33yi0y3m91L2P/kQ4hoxsD7yDemN7p/dfYU4e
	w0EwVHC2rCVZK8EmRppdqAsBX2J9Lr6DS8BoRwRISZa+SBFenzqrzK2WWgvziVsaJSu8feNqm6KSI
	lTY2GCPCIy6t+eq59M4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKwol-00018w-Mi; Mon, 29 Apr 2019 03:18:59 +0000
Received: from mail-eopbgr150050.outbound.protection.outlook.com
 ([40.107.15.50] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKwoc-00018W-6Y
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 03:18:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4iMLlDfwX5SjLqPHsRwarG/5BUrKn0CHzbRXGTwW7xw=;
 b=qpW1JBl2GFTdY7PvHQ2t+X7EaeCh5JeW/QmA6nul8y8isigYk7P1oYe9VZ0AEMgfdN64NImZvHHeLpenY5vMnldq4ipbflf/5Ir5oDyDot19/gUQjdFrOwMYW6NlGv33+iUr1j2SpWcgTqTpSTukXBM+fCE+fStqHZFjCTCxqH0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3724.eurprd04.prod.outlook.com (52.134.66.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Mon, 29 Apr 2019 03:18:43 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1835.018; Mon, 29 Apr 2019
 03:18:43 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, Aisheng
 Dong <aisheng.dong@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] clk: imx: add fractional-N pll support to pllv4
Thread-Topic: [PATCH] clk: imx: add fractional-N pll support to pllv4
Thread-Index: AQHU/jo/D2ZwDi5WREOeVbOKgmEXYQ==
Date: Mon, 29 Apr 2019 03:18:43 +0000
Message-ID: <1556507637-22847-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0059.apcprd03.prod.outlook.com
 (2603:1096:202:17::29) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1621dcd0-9aa4-4613-ac6c-08d6cc5161f9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3724; 
x-ms-traffictypediagnostic: DB3PR0402MB3724:
x-microsoft-antispam-prvs: <DB3PR0402MB3724A98114832849F315C314F5390@DB3PR0402MB3724.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(346002)(366004)(136003)(396003)(199004)(189003)(53936002)(25786009)(186003)(97736004)(8936002)(478600001)(110136005)(305945005)(7736002)(4326008)(26005)(73956011)(66946007)(3846002)(6116002)(66556008)(476003)(64756008)(66476007)(2616005)(2906002)(2201001)(486006)(66446008)(6506007)(102836004)(66066001)(386003)(6512007)(52116002)(6436002)(5660300002)(68736007)(86362001)(71200400001)(6486002)(71190400001)(36756003)(81156014)(8676002)(316002)(14454004)(2501003)(256004)(81166006)(99286004)(50226002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3724;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YDnUAWd0UZ2nqTuFYIMpg4zROUGw4Zo7/K/+YZI4ZNDnYAoob7OY6LYAurgSltu/69oSUCDD4BH4I4Xcz1QmsGsxJPVTjyZygDO7in5EBVvSt4bZyVS+Us0pSil3JZu7i8Zl86ow23/vqCwf9sq2leWix/WFvQaFHn8HteMR4DU3Lddl1VB/sYDc3e8eT6fXkC+lsTg3Fa8CiaNO+C6KSqGWiWibX5MmGS+mwYOchqmJuPvAku8uzqw06SgyPvSmnidwh5gDYhX03g2fUvY1IzxSkUuzbEKX2zefe9NcK3fvaECwBVYQ9XzR+3x9wHpM7X7aGPyztYY6uDzqLY+oM0JNIGHvO4p7YrhmV7IpD053wzOQ+SV7JoAh3UdL1TbNxQ70DuRCAbPdo8tp71BbiOBjh6fe1XkLcicL3/4qoMA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1621dcd0-9aa4-4613-ac6c-08d6cc5161f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 03:18:43.1046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3724
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_201850_348494_9993343B 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
---
 drivers/clk/imx/clk-pllv4.c | 68 +++++++++++++++++++++++++++++++++++++++------
 1 file changed, 60 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/imx/clk-pllv4.c b/drivers/clk/imx/clk-pllv4.c
index d38bc9f..4ced5ca 100644
--- a/drivers/clk/imx/clk-pllv4.c
+++ b/drivers/clk/imx/clk-pllv4.c
@@ -64,13 +64,18 @@ static unsigned long clk_pllv4_recalc_rate(struct clk_hw *hw,
 					   unsigned long parent_rate)
 {
 	struct clk_pllv4 *pll = to_clk_pllv4(hw);
-	u32 div;
+	u32 mult = readl_relaxed(pll->base + PLL_CFG_OFFSET);
+	u32 mfn = readl_relaxed(pll->base + PLL_NUM_OFFSET);
+	u32 mfd = readl_relaxed(pll->base + PLL_DENOM_OFFSET);
+	u64 temp64 = parent_rate;
 
-	div = readl_relaxed(pll->base + PLL_CFG_OFFSET);
-	div &= BM_PLL_MULT;
-	div >>= BP_PLL_MULT;
+	mult &= BM_PLL_MULT;
+	mult >>= BP_PLL_MULT;
 
-	return parent_rate * div;
+	temp64 *= mfn;
+	do_div(temp64, mfd);
+
+	return (parent_rate * mult) + (u32)temp64;
 }
 
 static long clk_pllv4_round_rate(struct clk_hw *hw, unsigned long rate,
@@ -78,14 +83,47 @@ static long clk_pllv4_round_rate(struct clk_hw *hw, unsigned long rate,
 {
 	unsigned long parent_rate = *prate;
 	unsigned long round_rate, i;
+	bool found = false;
+	u32 mfn, mfd = 1000000;
+	u32 max_mfd = 0x3FFFFFFF;
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
+	if (parent_rate <= max_mfd)
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
@@ -106,17 +144,31 @@ static int clk_pllv4_set_rate(struct clk_hw *hw, unsigned long rate,
 {
 	struct clk_pllv4 *pll = to_clk_pllv4(hw);
 	u32 val, mult;
+	u32 mfn, mfd = 1000000;
+	u32 max_mfd = 0x3FFFFFFF;
+	u64 temp64;
 
 	mult = rate / parent_rate;
 
 	if (!clk_pllv4_is_valid_mult(mult))
 		return -EINVAL;
 
+	if (parent_rate <= max_mfd)
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
