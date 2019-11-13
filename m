Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3496DFADE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:02:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TyU7XViDvMCh1jg5qI187sSan8PH8x5aT4oobdEIYxI=; b=HW8SqrEzOqEyka
	x5QoaGYVw4dohaUq2OY7WZiGuW/8baW+B09jdEwSwywqAlMbtbOikZK5+LzjttV6Q0nvQqn3d1x1N
	z0TC1st61tZVvBjpG1pg2NxU4qJlfGqjWQh2tnoudbdphcAuQlvYwpG6v2bDrWnHh2kPgERVnG5Et
	u6WKOwZE+chtDeBJJ5SidaxeQUa/NMdCHzXX0PZc4mV5ytqI5u0uXCKReP4tk/kKrd1DCTlVDztT9
	v7pBhTkaqbUKHUTjeVVZk/Lk7W5uu0Vv9DVPuuGXrcb67b4D9rj1LnvHDBWXNUPRxki3HW+AfUCG0
	5GVZPGEp5PDVw/+KvnKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpTd-0001y0-Bj; Wed, 13 Nov 2019 10:02:17 +0000
Received: from mail-eopbgr40044.outbound.protection.outlook.com ([40.107.4.44]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpTS-0001xb-My
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:02:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bXruUUhSi3HNjtFy9UF7jwkFfavCzE0hqhLoSzI23mzt3Ie7QUjBpDVnczjzSBCSrH4U/ErNy+QY5OcajkjVcu9Z2reK7pYJWRVOuESJrKe/yDTdqVAMtVOC4gOjByDf4ryU0NopILKNHeZyVf9eGyqJDU+DLTbDTZMcXCvkKnkdqZW9ypR/BiOcadgUOXMwwusAtsAdiscbUeWuBj0tB9GSX3zW25126TJQNCXC2z8mG0FeEiBoqDfLizutlwFBArQnp4/JET+gqcBMuEKA5AtwhfJsnOajXlimj4hooTZxAzXWa+u/M6buMnjbWL1+WhdTqovCKDLzXCbt26LeFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rLmrB5D04yOJegmBFfizvGX9OeLI7oDQb4m2MVPRTFE=;
 b=O8Zt7gjvGcC8wQZEZRQU0buLW3ILULn0TqshgzDB0houOeQPWblKw5/0o40rGOBH5QGQC6mVsw/FUi3dzWU7OjaXcP558U+GBQB5UVuZ4BbGSrAYbzlMLJmhSBeTrzLkh3u+KifsJK4kYsxPYNxMJFJaA8ZDxohikr6konksm2tY8mp9V3hniYdl4SqwlZgAd5bVvlLjMVkHnSzs715OjLhYKbUwwzx1Gjzs7/S5opG6/wQQw2wc9Xsj+ArjAkTwsOaOv2U7fYdZLBGAGLxJhHyKhqvxj96uWNiz8rNiaQRGzP5GtT8vOqME7Kww0gymA/+BopFENJ8SHmr8JP5sWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rLmrB5D04yOJegmBFfizvGX9OeLI7oDQb4m2MVPRTFE=;
 b=D9hwoOyRdNDRIuYdfVXuGs603Ym+QXSeUcO0XsfuqUMPBYSIKDJ9VsfNLkoKbOEefngYNp88nYof5KVsUJMrJztuASFE8GCfcYPm71w0mCsMVx+C7trPq1mH/ztSLgvXY7kbBPZEfolqpT/5GrYU/PEc8qlzB+S6oghn/2xQUnI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5812.eurprd04.prod.outlook.com (20.178.119.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 13 Nov 2019 10:02:03 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.023; Wed, 13 Nov 2019
 10:02:03 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 1/2] clk: imx: sccg: use relaxed io api
Thread-Topic: [PATCH 1/2] clk: imx: sccg: use relaxed io api
Thread-Index: AQHVmgllyVcYHISGfUyhube4yQW84A==
Date: Wed, 13 Nov 2019 10:02:03 +0000
Message-ID: <1573638817-4363-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0044.apcprd03.prod.outlook.com
 (2603:1096:202:17::14) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dd3e53d3-b599-48e2-4d0a-08d768208730
x-ms-traffictypediagnostic: AM0PR04MB5812:|AM0PR04MB5812:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5812ABFD218BC89BBFDD236988760@AM0PR04MB5812.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(136003)(396003)(366004)(39860400002)(199004)(189003)(110136005)(8676002)(2201001)(478600001)(71190400001)(71200400001)(54906003)(50226002)(486006)(81156014)(36756003)(99286004)(86362001)(476003)(25786009)(81166006)(2616005)(8936002)(2906002)(66066001)(7736002)(305945005)(256004)(26005)(14444005)(386003)(102836004)(6506007)(316002)(186003)(2501003)(6636002)(6116002)(52116002)(3846002)(4326008)(66446008)(6512007)(6486002)(6436002)(5660300002)(44832011)(64756008)(66556008)(66476007)(14454004)(66946007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5812;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V2R0XVAQJfZK7vl5Ug2OROohyq8RndcOwX0O8gwwdQuAubP6zLY9G9hxQhAFb/R7E/OwOYPRtNy/EJjVCi5FnAA5IjPSNe0hdpWNFHIsJpgk/Dji+lI4cGNdp6jE51fpqaJkEYn7J71SUMdwQsnHAjgmKn8+ifXSwrn6Veoy5tmkIpQ6cR49XggFpnVX+0jstO8WJ2vhenejscZAKSbvPN0sWv08QVIx+ioDPM1WTOpANucCd8Dw9iIViRLtYAEeaUu1ui39kUpHZN9u3oyWmHL2zDcTmp6r09hbMe/RSuPlWfZkMSmqL6xaXKhKTHziJxF29bLFmY+SnL/js2/U0LFsWjUU32bVmwCv9LsuPH+FbmFhxJLE4TEvwK4P6VkXH9LUXnkQTw/A6RfjcSaOu1OOx802E4t4C3nk/ys8gDb2wD5YYWATb/pJc+jwGWav
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd3e53d3-b599-48e2-4d0a-08d768208730
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 10:02:03.2374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mp5ovHvzUmbbRsYktpZSHOtp9HuX3dCm25nj9UsV/c8xP+x9lxTLOt3ee8Bh/KDTQhlrta0AENtTJXbrLPAbGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5812
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_020206_933925_34C300BE 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.44 listed in list.dnswl.org]
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
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

It is ok to use relaxed api here, no need to use stronger readl/writel

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
