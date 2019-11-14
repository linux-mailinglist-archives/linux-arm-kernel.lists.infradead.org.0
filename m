Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82486FBE63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 04:39:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+Cs+bdk4E4bJ+dG86JbFpE+JpLsy3G5zAovUWYXFHc=; b=kIebdQQYi8HeMd
	TQdjWfJ8a4G6qxuSJpCQfJLhwitqtmJDtxXdWWCHBFimPLnaTCK9+SGbxxeLs7bQgdO80s5ILBRrI
	Ua4Z/4UJRlpulu8utWc/ginSSaXAoSj01JO4Zw62XP8S2ESuniM4rN+3Ile0bSrosDu23m8PqT+k3
	v2Im8kI8OPtEya2fPv0ZWfQ08BwOsTSdwuOZnQC4tO1Gjr8uuLcioW8mD2uoUbPUfW/MGsdJIjq+f
	3rjM/y/dT8D7m/s2Wxkh4Q39OiopzWsDIHMa9Dd9jOYZYrAUVw9xCHk453k1+Im7yAmjx4n3fAFb7
	4yLghH20ixAN/RyaF90A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV5yF-0007qS-Vc; Thu, 14 Nov 2019 03:38:59 +0000
Received: from mail-eopbgr20069.outbound.protection.outlook.com ([40.107.2.69]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV5xc-0007SN-QR
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 03:38:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FG6+0f8sSpX28EMb0jQu/u04qr2yR/RNfEMiHO4mQf2tT9nDVs4e7fWGeKBnAjn/Wxqdj2vnReWv0uk6zFE8Fo0af1w99pNAyEvola1ord0z4X+lYU/1v7uHqlURbD25aFI7GoQ6RMp8o4UEU7vWM/nROgMpQ1tmxgTyyhO+9Mfanf+9ip9Mt9AWTJ4VtaUO7RBUQCSK2q6K4EuOj1F34/zJjT9jdMKSbjSuGMg+e08uxJqalDSBDO3SGQ8l52wd0r4YlGWYeCbQkYLIeL+fyb+MtXOXVabRoisHS6gmh+Kov5GYAgWK6Hvx6+SXC9IO8r4tlP25g0KJbK8CJfQzbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CzNDoF45LYTUy62M9qeXEE90iAB4Q+Yrv/AgDxBrrAU=;
 b=GFRrXOtxijuMvFqWyhwHAv/KcxW63sAwpNE6LxPASJWRce690BsVvlLjoLluoPfgZvzztKQVaN/zFuOSLi/iEpTTO5VgbjUxvX4o1J/c7pNj9U6duTxYYzbz+kKva9Jp/WKpIRD1k3nRckhTazZ11jTEE/rSQqVo94mXzkovLrEFu6Ddv2dT7+gsk9KVh03H615xDr0NeVAwkiaSzG8+Wiycwy+xQCqO3C81clleRb05POuwwjfY5vDC3X8xT5rwLb+LewOlJ4eijTvbScFQq30xNF261NYPspQI3Uuwcq1px+vB2tbvh/XcvV6ozBc3sLJBemK7zAIzVNf50r/F5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CzNDoF45LYTUy62M9qeXEE90iAB4Q+Yrv/AgDxBrrAU=;
 b=Mho4kl1mLpr1hYotEF+NcRoSwTbhj8W3c/L0qkmmFPrB3KiMhdz436IVOvntU2ZbjNkXudbd4b657Q+FfCm/DXL7kO/OiKc/ePzEZW4EFTdvkfjmi8J+goCXzfKGyN8Uu34JqVeeVW6tjb0mvv7PcdsVmrP+s/wXMJZX8z2Anek=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4994.eurprd04.prod.outlook.com (20.176.215.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.26; Thu, 14 Nov 2019 03:38:18 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.024; Thu, 14 Nov 2019
 03:38:18 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH V2 2/4] clk: imx: pll14xx: use readl to force write completed
Thread-Topic: [PATCH V2 2/4] clk: imx: pll14xx: use readl to force write
 completed
Thread-Index: AQHVmpz0REJ7jtn970iVrRhgUSL+2Q==
Date: Thu, 14 Nov 2019 03:38:17 +0000
Message-ID: <1573702559-2744-3-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: bd6c229a-daba-4a6e-4af9-08d768b41670
x-ms-traffictypediagnostic: AM0PR04MB4994:|AM0PR04MB4994:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4994BD1A1455B3F27819B48688710@AM0PR04MB4994.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(199004)(189003)(66066001)(305945005)(14454004)(36756003)(71200400001)(71190400001)(4744005)(7736002)(2501003)(99286004)(4326008)(486006)(81156014)(81166006)(25786009)(86362001)(44832011)(2616005)(476003)(50226002)(446003)(11346002)(8676002)(8936002)(52116002)(76176011)(186003)(478600001)(6506007)(386003)(6486002)(6512007)(6436002)(2201001)(102836004)(26005)(316002)(5660300002)(54906003)(110136005)(256004)(3846002)(6116002)(66556008)(6636002)(66446008)(66946007)(64756008)(66476007)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4994;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UMqzF/Sh6EO0BeTcSsOmiafcoSCG7f3R+IyjF+W1paKO45SO7HTBtrg8FsxsuLb7u/Q0bUzRvt5oJj8khahSt+tx/3tq5xe8/mZZUaGhN8wBavM5eqUFQPd1+nRrsV6P6JvTFVXl903dwbYYwF9sRiKhtFKfOshOsFTZkx+p8LYsjsd2LMbqwuWlCW1C9qjjVl2hk7rrhfaxWYcFT6ZkK41qDe+/AgxOt4vBQp6wFrF0AEWlZdHw9jxjxr8SE4SF2t5jKcN8bYeVzVpjIA2eSXdL1nuSvcMoG/kI7are0hQjqnMCG0ugWMDUQQRr5m5zSbGfUo03m77P2t+rd3TjytZaC89se1wIKiVIiEmNDx7DWMoKo1z0vJijyU9CGOAbwiYOerdFVPDq4qbfGR826psPbz2yQMWRcxwLDzZ3w1+qMIIniGlDE1y4Tu5yJnTW
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd6c229a-daba-4a6e-4af9-08d768b41670
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 03:38:17.9752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8hzpYQ5qEiFnsd/yTBxuxDlPT/4lj5XnaIUXtyoJg34nUldMmSx0YT+Hy8Ujbxd1Of3cLRK15Dx0KjPdErxIhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_193820_880427_6AD34611 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.69 listed in list.dnswl.org]
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

To ensure writes to clock registers have properly completed,
add a readl after writel_relaxed. Then we could make sure
when udelay, write has been completed.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
Cc: Will Deacon <will@kernel.org>
---
 drivers/clk/imx/clk-pll14xx.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 5b7d41d43b3b..a8af949f0848 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -205,6 +205,12 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 		(rate->sdiv << SDIV_SHIFT);
 	writel_relaxed(div_val, pll->base + 0x4);
 
+	/*
+	 * readl will force write completed. There is a udelay below,
+	 * we need make sure before udelay, write has been completed
+	 */
+	readl(pll->base + 0x4);
+
 	/*
 	 * According to SPEC, t3 - t2 need to be greater than
 	 * 1us and 1/FREF, respectively.
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
