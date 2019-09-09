Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD56AD24F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 05:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7mH4DhnE020tkHJgtok4V6G6/yx8ZGHQDi9vnTzRDo=; b=cE91lenV4Yxes+
	nUN7JWYFoRPGgFEy5w2dVbfuFSpgMGGrWTQfmkI48ZfMOREqpMf/Mzl4q3twHdKBjK4yaZ+2TuA7N
	9qb7MwKgSRhAjFGsRc5Rd7xcZNN99Q3eHOjZ4j6aEGhLT2mLJZLk67XXWz9L7Nk6JYGJmuWSXY64F
	+cDgmVE7TqEQMZU3GNdF2M2CaMdciHSQlXTtue5bkyLw94ZccQhJaPj7XLHCGl/95b8u4fDOVLlxf
	SMfZY4HpDDItPbtyMbmFu4quigTk6YDSq/EyCx0zIgNsjzeY2VuZLIUnVn/Q8pB1hvM6OBNC9Sa7N
	DihcnTEXvKUM4CLRtVHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7AXd-0005Fo-3T; Mon, 09 Sep 2019 03:40:37 +0000
Received: from mail-eopbgr60043.outbound.protection.outlook.com ([40.107.6.43]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7AWo-0003ss-VX
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 03:39:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AqKDxZQIKGJTDbycYvfigpyl93mWc6188pkU/3AHwmj55t7qhEnaLRQxlTdJ1sno3Ww7UTzaCyj2ETPJK8bSwI7h9tjwKwnbkYg3h+b4nGddnIQ4h7e8y/pdINmjFbuPGO9XFH4j7/sO0SeqjSa4mvWnCp8aXQi/yi6BZk4kgpx+85t6+Mcy0mxkncriz6eEhLhsL5HF/wr/+/dkqwppdA3DdbbgTfpIw6lS0TvmbIZj2wJ8Mrify58l8hccDgIdpzX5uNy7bBPqTw6NW1AXu0vY3+oMfptYxOgXaw38VOqzagxLf/NA7brxdHxpjK1HSSV0g6DwJ4ZIb1g38N9Srg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9aXmx041BybGXPoe0cYDBv9LJEwhslqrW0bn17QWeT0=;
 b=fX7p9fRZH2CnRZo9wUDLHvbNQNu8ZWH4sSYuIsvIBwc9NVh0s1Sb4xCScFFsvRIhpOWEW3U7JMzt15aIUanry3WUeZv6SUiaflkd/4I36qW1HxWE6FwCkce4efPqxEVFFpiU7VSIKLInjlIVHaSlFz8eepENK7B32/66CPaEnb6mxbPsDuX6dXPkQ2bmmju70noxChGZhTv/Y0UtGjninlgOBTfhN5yTww05UsVye2FNzcdVQaGNBSKUOvLYV2t9I/VflE2bojaw4dzgT18zN9TWjdNbcmO2MrIKSYnJjncul07X1mUrGahS0WmA2AEh85NHVPpdhtzvLnSL0/084g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9aXmx041BybGXPoe0cYDBv9LJEwhslqrW0bn17QWeT0=;
 b=W4O8mwqPJxva1AOdqAIc9jvpU9DXAbdDxfWtfmJ1vVvxSrJREnUJxUfJrxuAvu3B4mMeHDrR2R0bpq32PUo1chw2RzP5O2vxp7YmDq/NmbyTDyZcInV2AXDMyp5DPIXokppbQOibzd68KOWkfvJUmfvb0s55d4OQTV6igPYEY3w=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6020.eurprd04.prod.outlook.com (20.179.32.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.19; Mon, 9 Sep 2019 03:39:34 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 03:39:34 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V3 1/4] clk: imx: pll14xx: avoid glitch when set rate
Thread-Topic: [PATCH V3 1/4] clk: imx: pll14xx: avoid glitch when set rate
Thread-Index: AQHVZsAyq003b0x3bECm8z4jl80Scw==
Date: Mon, 9 Sep 2019 03:39:34 +0000
Message-ID: <1568043491-20680-2-git-send-email-peng.fan@nxp.com>
References: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0004.apcprd03.prod.outlook.com
 (2603:1096:203:2e::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2743aff7-5a43-4aa4-8d67-08d734d754f2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6020; 
x-ms-traffictypediagnostic: AM0PR04MB6020:|AM0PR04MB6020:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB60207EE3B61C488AC3EFE04C88B70@AM0PR04MB6020.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-forefront-prvs: 01559F388D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(199004)(189003)(43544003)(7736002)(186003)(26005)(54906003)(316002)(66446008)(64756008)(76176011)(14444005)(50226002)(446003)(2616005)(4326008)(6512007)(11346002)(44832011)(3846002)(6116002)(66946007)(102836004)(110136005)(2201001)(25786009)(8676002)(52116002)(2501003)(386003)(478600001)(36756003)(14454004)(99286004)(66556008)(5660300002)(66476007)(86362001)(71190400001)(6506007)(2906002)(256004)(476003)(486006)(53936002)(8936002)(6486002)(66066001)(81166006)(6436002)(71200400001)(81156014)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6020;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JhLG1AZ1XDjJ7WwuSQOg4OcDYqJ1ggyhnqOdXgbUqNdEljgeBa4FtxHEVH6wJGJ6Hj1oO4vy0ip0+zDIvJJJRHzMG9RZN6nf31n6GQL02bjodvLxxWHcreXKe43nkYlX79LK/TgLzxZtcr63zDbTW3vLMe8Ez0S/6+mQG5Fve9zC1rrCriQ4qjbyW33CDdrxNmd3z5o6qh1Oho4ClZYSw6egOBz7RtWa7T9QEkW6OYFWFWA7L90Pd1jkj2W/gZ1rcWXPganuUfBFazbqAXTDta+GmzHkgk4xEoI9rZSX2t1VBepVaX12jsFgtkK/yPFy/yW4d+SG5Wkuo1Wrq1HikodP2dsjFlXt74PLPS2zEaB7COeU3ReRpgFjDC0UzdAobro4/5A1tEmCzpbhKLzdPET/3MqRQP6rGvxeLxmzdQk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2743aff7-5a43-4aa4-8d67-08d734d754f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2019 03:39:34.5518 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vBceA4wgGAJMRRoBGzBtY+Ers2y3wCZb0ICcp4wTXGDjjXGTe1fINo2f8rBAKwvszkVHnjvy8T9Qo6rQZAaOgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_203947_014069_561D3605 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

According to PLL1443XA and PLL1416X spec,
"When BYPASS is 0 and RESETB is changed from 0 to 1, FOUT starts to
output unstable clock until lock time passes. PLL1416X/PLL1443XA may
generate a glitch at FOUT."

So set BYPASS when RESETB is changed from 0 to 1 to avoid glitch.
In the end of set rate, BYPASS will be cleared.

When prepare clock, also need to take care to avoid glitch. So
we also follow Spec to set BYPASS before RESETB changed from 0 to 1.
And add a check if the RESETB is already 0, directly return 0;

Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V3:
 None
V2:
  Avoid glitch when prepare
  update commit log

 drivers/clk/imx/clk-pll14xx.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index b7213023b238..656f48b002dd 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -191,6 +191,10 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 	tmp &= ~RST_MASK;
 	writel_relaxed(tmp, pll->base);
 
+	/* Enable BYPASS */
+	tmp |= BYPASS_MASK;
+	writel(tmp, pll->base);
+
 	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
 		(rate->sdiv << SDIV_SHIFT);
 	writel_relaxed(div_val, pll->base + 0x4);
@@ -250,6 +254,10 @@ static int clk_pll1443x_set_rate(struct clk_hw *hw, unsigned long drate,
 	tmp &= ~RST_MASK;
 	writel_relaxed(tmp, pll->base);
 
+	/* Enable BYPASS */
+	tmp |= BYPASS_MASK;
+	writel_relaxed(tmp, pll->base);
+
 	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
 		(rate->sdiv << SDIV_SHIFT);
 	writel_relaxed(div_val, pll->base + 0x4);
@@ -283,16 +291,28 @@ static int clk_pll14xx_prepare(struct clk_hw *hw)
 {
 	struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 	u32 val;
+	int ret;
 
 	/*
 	 * RESETB = 1 from 0, PLL starts its normal
 	 * operation after lock time
 	 */
 	val = readl_relaxed(pll->base + GNRL_CTL);
+	if (val & RST_MASK)
+		return 0;
+	val |= BYPASS_MASK;
+	writel_relaxed(val, pll->base + GNRL_CTL);
 	val |= RST_MASK;
 	writel_relaxed(val, pll->base + GNRL_CTL);
 
-	return clk_pll14xx_wait_lock(pll);
+	ret = clk_pll14xx_wait_lock(pll);
+	if (ret)
+		return ret;
+
+	val &= ~BYPASS_MASK;
+	writel_relaxed(val, pll->base + GNRL_CTL);
+
+	return 0;
 }
 
 static int clk_pll14xx_is_prepared(struct clk_hw *hw)
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
