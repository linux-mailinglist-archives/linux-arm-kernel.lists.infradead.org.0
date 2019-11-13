Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 540B0FAAED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BDtZiAgW38zUgxLJ6uhrnG1W2+ziyjT3Bm+JRtiQRuc=; b=TjlT0RLvTLqf2t
	1OcA8tLctfYhwnP5TCFMyW1uOK0D8cfLwmF3NrgVeOXuby1MBltLo9KpL+Ullce85qw7A3UDIXjLf
	neTTn845O5wjg6eR9rvApy00bWOKGUsAfU/geZTfs4xS4Ed6HMw4RARnuWTIgkpAGRrLHBZOBo5I2
	ytGXCL34xo/kZPhTRVm3R8iebT9S8qyS/i8EOKDYZ9pqdE9jd2SyEyy0yk8crZbmIesdtC8SXZlBw
	zj4C7TTicxsbbTfl0CUcIt0jgFiTJI0qh08veC/KgUDOrkTd3twwklFwHlK+brtKlS98sxtnoMMD5
	zIklkkxFCdmya+W6YJDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUn3W-0004fb-R0; Wed, 13 Nov 2019 07:27:10 +0000
Received: from mail-eopbgr10078.outbound.protection.outlook.com ([40.107.1.78]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUn3L-0004eJ-4t
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:27:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bJSPqjR7qvd/FEQZ3CLK7yGxtbOUgN4YGhfoDV2GyY1noAnYTl6x/gnYe6Z2S9KfKL0Rf0B4H4EhveiR4oAimfSEB5H/UpZuWpa+IfNyG7b8eC0MX46swjWvM4eK34w7a/ztXTGax4SkqbBDsDnAQDwi05FyksRKIbubUEDbc6ClNq7x2v4ih+6LcVFf4cdddFgnYnvE2r14sdHESJ1xaBUBeEUmcRnf6MktJzRTu/6BUV9kleJlS94L+ysP8l8fycSPFocnr02lFAimImC7FBspb/94NpH6TUSGKlqvR0u7ibuMvByrgpVwOiHWYWaQh9SpxsR+EmMzSuQ6ytaHrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Hxjrz5C9/VV+J9suiKHSnIvaqybT4wMv8GmdNIbsS0=;
 b=MgQyK4nm6e+/7ghZJgL7XN/Www4IGllea3ZDSK0HtfHvnCdnNWM1uPUrCfOOy/rNBi6Oez2/30dtpbJprW1OJsqt640uE8JopuOtYLkDXIp7c81r39JdVNDRWm2UGyitkxYuGZUTT02faMG52JzzIGkJWjL6ZSs8jgtaybzx5OYolUaJD63QAQ+5G74pmYynrr0tuMNLbYlxkkvVLe4auOAiPknFPQWfkVJz07V7S+iimsCwSYbj/Ltbxq1jOvZZZnBhkv1m6U2RSx+JQ/yz2gPVaR9867/xkpuYorFQqWfhbXmKrotxBjr8sid8X00kY+v2mVBdiNgIb6epfMrTvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Hxjrz5C9/VV+J9suiKHSnIvaqybT4wMv8GmdNIbsS0=;
 b=QDP3T4pNdciEM/c73+5035wjPGZO2tCElLX5jsJ5+MF5kgCzxIx+2s7wFfr6b46oWS3cI3mNcEs9N0n2tfOg65kENhmz+emIppVQXfmMHOH+QhY1Qk+nW7pZ+zTDsCoXeBKZES7skmUq8/fSJF0HclNRz7MIvp6JdORv92dY8aI=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB5260.eurprd04.prod.outlook.com (20.176.237.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Wed, 13 Nov 2019 07:26:52 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c%7]) with mapi id 15.20.2430.028; Wed, 13 Nov 2019
 07:26:52 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH] clk: imx: pll14xx: introduce imx_clk_hw_pll14xx_flags
Thread-Topic: [PATCH] clk: imx: pll14xx: introduce imx_clk_hw_pll14xx_flags
Thread-Index: AQHVmfO4UT5wBnIiNkiEwV6EPli0Lg==
Date: Wed, 13 Nov 2019 07:26:52 +0000
Message-ID: <1573629896-23954-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR04CA0022.apcprd04.prod.outlook.com
 (2603:1096:203:36::34) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d96d5909-cb79-44b4-4ec1-08d7680adac5
x-ms-traffictypediagnostic: DB7PR04MB5260:|DB7PR04MB5260:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5260C3C5542559CC1416CD1688760@DB7PR04MB5260.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(396003)(376002)(39860400002)(199004)(189003)(102836004)(86362001)(6116002)(50226002)(7736002)(305945005)(2201001)(3846002)(486006)(2501003)(81156014)(81166006)(476003)(66476007)(8676002)(66946007)(66446008)(52116002)(386003)(66556008)(6506007)(44832011)(5660300002)(2616005)(64756008)(6636002)(2906002)(6306002)(26005)(99286004)(6436002)(478600001)(66066001)(4326008)(8936002)(966005)(14454004)(71190400001)(36756003)(256004)(6486002)(316002)(6512007)(25786009)(54906003)(110136005)(186003)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5260;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YUtVGvK5diM/qNM4YJa8JrNJF+GPnF4vWJbb88qBnVLrpaRbjVSvMpxGU/+cB44y2aNZvtQX1C8dFsy87Hf96jLbV/uIdYnbAA96cvPe2wtREGz+tfKR8aSNHXK23fEX63PZ8ELgogz/gYf3rRABtnyztcEYOzvik8Px0e3kxzKfNp+hzN26BW0QHHYQFPkwPV+snzTMDxoyAnRbt23T2XD2RI4st8CY7LsF9mnOUHFHQ1rqKqValkTU39vWGYo6HNWPs7YTZpsB3s74de33Pvxf8oomQjENMkd0TZDjn52RiOMJ8U9GXTnpNvxtfsacd17L84Z/0nQ5ZKsVbMSElPAWkkDDC3tl/xqhdQc5CaQufbTzYsPiZ4dY0LXVonLo2ci8u7Mw6Nn92A8+rCNseEOr5U0BkFz2ro+yTk3TB9LXh6jodB4gSYWZcsPZo4c+
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d96d5909-cb79-44b4-4ec1-08d7680adac5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 07:26:52.7728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sJe+xM/8PWGSI6e0/66k9aPepf0rFMjfnerC7s9bqTM5OFotxYwOQJczMpftscOdV3evpcq6coRCHhiRqV1abQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5260
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_232659_187668_3227B975 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.78 listed in list.dnswl.org]
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

Introduce imx_clk_hw_pll14xx_flags, then no need to add new
imx_pll14xx_clk variable for new flags.

Since the original imx_pll14xx_clk flags is not used, so drop it.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V1:
 Based on https://patchwork.kernel.org/patch/11217889/

 drivers/clk/imx/clk-pll14xx.c | 12 +++++++++++-
 drivers/clk/imx/clk.h         |  7 ++++++-
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 2bbcfbf8081a..a8af949f0848 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -379,6 +379,16 @@ struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
 				  void __iomem *base,
 				  const struct imx_pll14xx_clk *pll_clk)
 {
+
+	return imx_clk_hw_pll14xx_flags(name, parent_name, base, pll_clk, 0);
+}
+
+struct clk_hw *imx_clk_hw_pll14xx_flags(const char *name,
+					const char *parent_name,
+					void __iomem *base,
+					const struct imx_pll14xx_clk *pll_clk,
+					unsigned long flags)
+{
 	struct clk_pll14xx *pll;
 	struct clk_hw *hw;
 	struct clk_init_data init;
@@ -390,7 +400,7 @@ struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
 		return ERR_PTR(-ENOMEM);
 
 	init.name = name;
-	init.flags = pll_clk->flags;
+	init.flags = flags;
 	init.parent_names = &parent_name;
 	init.num_parents = 1;
 
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index cd92d9fdccf4..c2851a82b4fd 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -48,7 +48,6 @@ struct imx_pll14xx_clk {
 	enum imx_pll14xx_type type;
 	const struct imx_pll14xx_rate_table *rate_table;
 	int rate_count;
-	int flags;
 };
 
 extern struct imx_pll14xx_clk imx_1416x_pll;
@@ -105,6 +104,12 @@ struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
 				  void __iomem *base,
 				  const struct imx_pll14xx_clk *pll_clk);
 
+struct clk_hw *imx_clk_hw_pll14xx_flags(const char *name,
+					const char *parent_name,
+					void __iomem *base,
+					const struct imx_pll14xx_clk *pll_clk,
+					unsigned long flags);
+
 struct clk *imx_clk_pllv1(enum imx_pllv1_type type, const char *name,
 		const char *parent, void __iomem *base);
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
