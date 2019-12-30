Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E59F12CE1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 10:14:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeyxAb0EVcarg5saT5seB2sEKuIZ6HhxZ3vDpqnrCs0=; b=YA4eSvEPiD8+mr
	1qTXDddztgOBk0wt+3CauFczPHJNWBPkvm/ogQYBlDQjUy/xQ7i5VJqQ0sbzJc4sQRx22Dzy0mV1j
	fI3lA2SfhzvyNep6wMApl4EO+PpqJA/PuqxodpBNMnOiEtkjVd7l/98Ht0tvB20w645vNJIy4IzGQ
	fFU8SzpjaSe+VBeuudxIz3AoeBpT75+x256LLyswxnZnmwyYc698fgMSoQYYH3Dju4SnT2zid7E2d
	8o1z3trVoBb2dFjCWcr6hV6LZfl6zX/Ay9hlVrXZsckl6OlGsnir642NG0s62ok6F4zlro9zjhHOz
	fGB45T1viTebZdAfeCDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilr7m-0006zE-Ar; Mon, 30 Dec 2019 09:14:06 +0000
Received: from mail-eopbgr150083.outbound.protection.outlook.com
 ([40.107.15.83] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilr6t-0006QN-K6
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 09:13:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UC9bbGqxIq3XQdK7+NQzxboOzExW3nPk0VA6AWuhSpILHi0TVmEubKidQmIdGkA40fDy0NO25siT0ZuUNh1G6iH/Y/tKuWUZW4gywIPiDATR7xoRPzG2ePiXa1VDsSydllqoA2pllorVMmj6T+SCrg4151sQG3goyJwQCog3z7GqVZNrZvyXNPsZwOMkzrB2B6i1ZtSsmiJfP4uQIfaw45RYQxJ8OSL+yQrhZoBgdSZC/wQ3si50BTZVZMCoga5YyEqDFLQZ4S41vs8hz5B0BGUb4QCWD/L7IauuUKVyiAbMnqPy7+t9i1uk2s8jCdQIVlD90wlvKd19wn6SrZd7Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rVFkHVenmvTVlgAE9f+T+H3oa9SfKBL8JwiBDIAetK0=;
 b=FXvBmUEZ23L6EQ0qEYJAK1CH3wP9IW4qRLB9K+X/ZfpF8dqPTBbdFAuyHJm4UAirfcqhYVdFyITh7DWAn5RK47v7cHVf+vh9C8ksDAqhaWQdwYXZ6C/H1Vfuq1KtJSUqPuGkqJlPm4MB9QfJ9hRswt3mTg1ZNJVC4ocvI4OcYaw8bdzyo5sfa3Gz97mBE6fEB5ddv85DPprZeY8Bnog7VxMCqCBGdIXecVJHpMzbzO9pldh8fvFi9q4fCqIashpNfJIIJlTZSTGtDmnEzSD7cQ1X9F86f01XHmDJ3q0kUv3X9b1dTKMEv+nGn8ZYvP95fW+lwNwCqdochB3oTgqCiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rVFkHVenmvTVlgAE9f+T+H3oa9SfKBL8JwiBDIAetK0=;
 b=LSyCUQFox1QBH0AOAQsnpuWWnHfUiIvwpuu3YYSnLmrRW9Y8WrVu2DmQpxdT834UIfJp4l/3pf6909JRNKW9DrBeOny3uvvbq0IToS6BafT//w+Wi8/Dh4Tp8f1Rman1upoBVgLNlrjUX/xyYnniOHu85qovMPeLsG67bAnK8bg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Mon, 30 Dec 2019 09:13:06 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58%6]) with mapi id 15.20.2581.007; Mon, 30 Dec 2019
 09:13:05 +0000
Received: from localhost.localdomain (119.31.174.67) by
 HK2PR03CA0057.apcprd03.prod.outlook.com (2603:1096:202:17::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2602.8 via Frontend Transport; Mon, 30 Dec 2019 09:13:01 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH 2/3] clk: imx: pll14xx: introduce imx_clk_hw_pll14xx_flags
Thread-Topic: [PATCH 2/3] clk: imx: pll14xx: introduce imx_clk_hw_pll14xx_flags
Thread-Index: AQHVvvFYj/i+CACM7UiPThKGK48S/Q==
Date: Mon, 30 Dec 2019 09:13:05 +0000
Message-ID: <1577696903-27870-3-git-send-email-peng.fan@nxp.com>
References: <1577696903-27870-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1577696903-27870-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0057.apcprd03.prod.outlook.com
 (2603:1096:202:17::27) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cb58d679-f90a-43ae-6100-08d78d087a99
x-ms-traffictypediagnostic: AM0PR04MB6401:|AM0PR04MB6401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB64010D86614CBFF8E734406E88270@AM0PR04MB6401.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0267E514F9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(189003)(199004)(81166006)(81156014)(6506007)(66946007)(69590400006)(71200400001)(66476007)(66556008)(8676002)(52116002)(4326008)(66446008)(64756008)(26005)(8936002)(2616005)(110136005)(6486002)(54906003)(956004)(86362001)(6636002)(316002)(16526019)(186003)(478600001)(36756003)(5660300002)(2906002)(6512007)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6401;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IBDc10K5UAezNyDurHAcyWIEEatVxQMvfsq+JDyEsuth1jE+1oQF5m5MkTDGmGCF9tUOxuinAoI3ack2J3eTObi7LZlLs1lEGxvUJjbz1Z151OiGdHJQ9ErWzsoGeWwA5J9gsy0ImhyjzqEGzm81XvCPXmIzVHRItwNGUkztcSj/V4BJhyge7Y6TL76b4YtH2YztDEET/4hQKt3kkXhPusMhg24GQWWVdRyRGWjL/396tZaRomsCig0oIqTIDchrWGL9LfeCY94qlMGv40jFFZtm94QGJ4GGAZP2GvOd72UXqF6U5lOptCQc0s/UkANlaqm1KEGMm9X32fV555+kRZCKC7VMjnhQ5IzTryqEOMQr1k0P3Ot34ItZXbWc/ocGpbwlA6Ef3Q2EZET+m1yxlY+10lAzeT9USdGHxZK5uxuCvPKTWPL2Wtzx3iC71EIukXg+e7lWVle86U42TsY2HlYeVKRHQK/iKPFICOa8roFFqs4osLefUnDlybJGpmOK
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb58d679-f90a-43ae-6100-08d78d087a99
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2019 09:13:05.8887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S5vaG+g4bNOmyShHWPS94tWnW/y+HNoTbqOeYi3hjM9f3LdulSKvCVg9Cn6YBG+1fLAKVL+SryQNvRAfKehBFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_011311_859403_08616E62 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.83 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

imx_clk_hw_pll14xx_flags is intended to provide flexiblity when
add flags for clks, no need to add more imx_pll14xx_clk entries
in clk-pll14xx.c.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pll14xx.c | 10 ++++++----
 drivers/clk/imx/clk.h         | 15 ++++++++++++---
 2 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 9288b21d4d59..030159dc4884 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -378,9 +378,11 @@ static const struct clk_ops clk_pll1443x_min_ops = {
 	.recalc_rate	= clk_pll1443x_recalc_rate,
 };
 
-struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
-				  void __iomem *base,
-				  const struct imx_pll14xx_clk *pll_clk)
+struct clk_hw *imx_clk_hw_pll14xx_flags(const char *name,
+					const char *parent_name,
+					void __iomem *base,
+					const struct imx_pll14xx_clk *pll_clk,
+					unsigned long flags)
 {
 	struct clk_pll14xx *pll;
 	struct clk_hw *hw;
@@ -393,7 +395,7 @@ struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
 		return ERR_PTR(-ENOMEM);
 
 	init.name = name;
-	init.flags = pll_clk->flags;
+	init.flags = pll_clk->flags | flags;
 	init.parent_names = &parent_name;
 	init.num_parents = 1;
 
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 65d80c675aa9..35a9d294b6df 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -131,9 +131,18 @@ struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 #define imx_clk_pll14xx(name, parent_name, base, pll_clk) \
 	to_clk(imx_clk_hw_pll14xx(name, parent_name, base, pll_clk))
 
-struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
-				  void __iomem *base,
-				  const struct imx_pll14xx_clk *pll_clk);
+struct clk_hw *imx_clk_hw_pll14xx_flags(const char *name,
+					const char *parent_name,
+					void __iomem *base,
+					const struct imx_pll14xx_clk *pll_clk,
+					unsigned long flags);
+
+static inline struct clk_hw *imx_clk_hw_pll14xx(const char *name,
+		const char *parent_name, void __iomem *base,
+		const struct imx_pll14xx_clk *pll_clk)
+{
+	return imx_clk_hw_pll14xx_flags(name, parent_name, base, pll_clk, 0);
+}
 
 struct clk_hw *imx_clk_hw_pllv1(enum imx_pllv1_type type, const char *name,
 		const char *parent, void __iomem *base);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
