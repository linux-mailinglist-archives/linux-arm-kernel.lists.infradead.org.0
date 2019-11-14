Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A20EFBE64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 04:39:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pThWVOS0CwmLvKSb1a1egUT/2mV4LM6fxgYJMYC6Xig=; b=Vi93YCvyO3QId9
	s2Q5f5MDZ2xMg8F1JQsDrM0g310/F8IOG3H8wG83o2o0Ztm4NNoK2W2X8MRZcBNpH5vSi6rBJ9QvD
	3hdWyebjwU1incJnRqQU11x8YKl4dbbAkTIi3LsggSHZrUvn15b19EJx3u7CwS33+jo6HV4IGMt8b
	Z2CfUjU62culp9c3dvp4Acor/s0YQ5/2hxT7O3GOcfMyVlojOnIPrn1HCNmbOCqJmSW0EYVoYxhh9
	+fLgfyAkwAIOuHhEiXZbD2a8KcGdp5CIvnbGaaiE2pNJlnZqAYUZz+OiKyqciaZPHViyHLReYxBTS
	d0WBcsFLF8US0uPqcw+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV5yX-00087z-68; Thu, 14 Nov 2019 03:39:17 +0000
Received: from mail-eopbgr40088.outbound.protection.outlook.com ([40.107.4.88]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV5xh-0007Yw-Q0
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 03:38:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OfWeCTYU0cZTsKNxEZCFmH6lfdU2dvfUGYtjmXM1ud616u8BEDUO2glRYa/vKIkHrkkhTc/Uzrz92msJSZYTMlNXYpPlexbGaNtylYjYIiuFh9b1vI6Qsw1VQvW8HCgS0BHtszNVpr/fHz/lNlsOm/QTwJjW7xLp+j17+gjDtZ/DcRdVBDRaprirD8lSLVzEaNLfqawn2qdhdVbwQL4giRLLgUQyhQSeTolucpiwHcbdkVR0ZEYeelxbChDOr2UYwqhY/JKSuZwt4czFJesu4oGxAoBaqvajXy6c0KSeo8pEAk/pvGh2AJlOx2BorBcoEwVZwegBGwQ7lWf7JSKEsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QwDoOPplVVWmM4FL4TrbrZgTJYQ5a3XuMkq+5Ilz0l8=;
 b=cNCK6hKbdLc7pIpAgUVKk42BS1Z9hSADnDe2oZrxoXvwQq8CZdCAXrOWFVMaACStcvUSM/n9/sG27ACoq2uw/B4zZGUoKVOv4mUd3KIxLl2aufr+0k2+c/JisU72LV5uLre6TrmacJdeq2R/rbI5qbLAFukAJr805NqHdjCL2y39UWaEWzPO/sZpPa/tTPZklh8K5YE8gRni2hM4/ZS6CnKCy7J/JPfef/tzm6PNWWAj7BZg2wiEKTD6SWr6J6RtQx0bp5xbShRJS54AhDk815v1iZ7FAy5ab16uwFo2QzuQob8n2udklA8hF1YKzB6u/TrppLLJyZA2YhTdPxNp8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QwDoOPplVVWmM4FL4TrbrZgTJYQ5a3XuMkq+5Ilz0l8=;
 b=NAE9awcgq072S+4zk3SegiX3zeVYKZOGz6NCKJ+hiVEjs7aqEaC+TPjaCgNSJDLU8GiBmLBJ7oz0TvCK7UZJ2m/uLP3JQRgAyuESPKgtXZc89WHDD0+b3LEwd94iou2jt5jFuyJHJsyJRUpVo0cjPet9lnziE5TPgJcLK9GUvK4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4994.eurprd04.prod.outlook.com (20.176.215.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.26; Thu, 14 Nov 2019 03:38:23 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.024; Thu, 14 Nov 2019
 03:38:23 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH V2 3/4] clk: imx: sccg: use relaxed io api
Thread-Topic: [PATCH V2 3/4] clk: imx: sccg: use relaxed io api
Thread-Index: AQHVmpz3UF9PMPyc9Ee3JLDaqOkCIg==
Date: Thu, 14 Nov 2019 03:38:23 +0000
Message-ID: <1573702559-2744-4-git-send-email-peng.fan@nxp.com>
References: <1573702559-2744-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573702559-2744-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0033.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5f4e93ff-f1e4-4c37-11f6-08d768b419aa
x-ms-traffictypediagnostic: AM0PR04MB4994:|AM0PR04MB4994:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4994205DE3E5EEE2550F3EB088710@AM0PR04MB4994.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(199004)(189003)(66066001)(305945005)(14454004)(36756003)(71200400001)(71190400001)(7736002)(2501003)(99286004)(4326008)(486006)(81156014)(81166006)(25786009)(86362001)(44832011)(2616005)(476003)(50226002)(446003)(11346002)(8676002)(8936002)(52116002)(76176011)(186003)(478600001)(6506007)(386003)(6486002)(6512007)(6436002)(2201001)(102836004)(26005)(316002)(5660300002)(54906003)(110136005)(256004)(14444005)(3846002)(6116002)(66556008)(6636002)(66446008)(66946007)(64756008)(66476007)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4994;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xhK0Khxo0bE9fm7FXU52n9RSZB41cBOtEKsZtJ4GJN//4VX5SZAyx/CiFuRCPdciiEXyJ8+QR1z2SjdZASOkFXgDjHL9uVy3Kny2HkZoJL2lj0xLLp0vl8SnQETz7TvjOKMHfd2bXX/SFkY0fb/JF1FetRyOKL4RV10Ra5/J4Kg14m0k8X8DzBCEMJ4Xau2uqfNmNtKsZLTdO51C7DFDFN9wJ69KWZv3qyqgHvR8+nkjiOktZLwMy6FsQL8xZHYjhYqivsuCQgVMdZsNNB3Am7M7MJukaB2ELXS4BJAh1b8O3rPOYA3tCo6EMVvk/DZTu3ai5dhrfLz+BvSBmPCr7AADjY/YM7USbjT9hcJTbub8MaokWlTItFY2LDM25T1zaCloUKvD48XHgtLoJoJoQ2rnkOjSax5ZE6iiE8/aX/sPULCrIs3i3R5+7gP8TFns
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f4e93ff-f1e4-4c37-11f6-08d768b419aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 03:38:23.1791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9guOHkUnk0JPSGajIDKTjnvYdVYfUxoQSHujEnBpBujohcJE5lBXfY7Gbsc0+Rgiq9HW42/Aab31yz1e7YZYrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_193825_859845_9DC5E5C0 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

writel/readl has a barrier, however that barrier is not needed,
because device memory mapping is nGnRE mapping and access is
in order and clk driver has spin lock or other lock to make
sure write finished. It is ok to use relaxed api here, no need
to use stronger readl/writel

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-sccg-pll.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
index 2cf874813458..e03f8acb1e82 100644
--- a/drivers/clk/imx/clk-sccg-pll.c
+++ b/drivers/clk/imx/clk-sccg-pll.c
@@ -106,8 +106,9 @@ static int clk_sccg_pll_wait_lock(struct clk_sccg_pll *pll)
 
 	/* don't wait for lock if all plls are bypassed */
 	if (!(val & SSCG_PLL_BYPASS2_MASK))
-		return readl_poll_timeout(pll->base, val, val & PLL_LOCK_MASK,
-						0, PLL_SCCG_LOCK_TIMEOUT);
+		return readl_relaxed_poll_timeout(pll->base, val,
+						  val & PLL_LOCK_MASK,
+						  0, PLL_SCCG_LOCK_TIMEOUT);
 
 	return 0;
 }
@@ -349,7 +350,7 @@ static unsigned long clk_sccg_pll_recalc_rate(struct clk_hw *hw,
 
 	temp64 = parent_rate;
 
-	val = readl(pll->base + PLL_CFG0);
+	val = readl_relaxed(pll->base + PLL_CFG0);
 	if (val & SSCG_PLL_BYPASS2_MASK) {
 		temp64 = parent_rate;
 	} else if (val & SSCG_PLL_BYPASS1_MASK) {
@@ -372,10 +373,10 @@ static int clk_sccg_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 	u32 val;
 
 	/* set bypass here too since the parent might be the same */
-	val = readl(pll->base + PLL_CFG0);
+	val = readl_relaxed(pll->base + PLL_CFG0);
 	val &= ~SSCG_PLL_BYPASS_MASK;
 	val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, setup->bypass);
-	writel(val, pll->base + PLL_CFG0);
+	writel_relaxed(val, pll->base + PLL_CFG0);
 
 	val = readl_relaxed(pll->base + PLL_CFG2);
 	val &= ~(PLL_DIVF1_MASK | PLL_DIVF2_MASK);
@@ -396,7 +397,7 @@ static u8 clk_sccg_pll_get_parent(struct clk_hw *hw)
 	u32 val;
 	u8 ret = pll->parent;
 
-	val = readl(pll->base + PLL_CFG0);
+	val = readl_relaxed(pll->base + PLL_CFG0);
 	if (val & SSCG_PLL_BYPASS2_MASK)
 		ret = pll->bypass2;
 	else if (val & SSCG_PLL_BYPASS1_MASK)
@@ -409,10 +410,10 @@ static int clk_sccg_pll_set_parent(struct clk_hw *hw, u8 index)
 	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
 	u32 val;
 
-	val = readl(pll->base + PLL_CFG0);
+	val = readl_relaxed(pll->base + PLL_CFG0);
 	val &= ~SSCG_PLL_BYPASS_MASK;
 	val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, pll->setup.bypass);
-	writel(val, pll->base + PLL_CFG0);
+	writel_relaxed(val, pll->base + PLL_CFG0);
 
 	return clk_sccg_pll_wait_lock(pll);
 }
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
