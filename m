Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9728E89CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:42:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9UXUemDhKdmbYYDREDa/E3hPv4EVn7P8sYr49+OOmI=; b=tDo71/a7YHDaW8
	RWH/HFpwwbXsXXCbxYl+FYncFVnqE/yDFbg9O09PWQwbnDjuEs7iqgnULb/VhIU3ZY02ABmrStorp
	rAg+9VEcvELJ2QeHtxyxo2fMBtUEsPGqYMEzY9SCsqR6a9Xj6ks4fqAYmmBfJNdTBJdTEp7hOCN9p
	tc3g41PZ/tRGiWvwI5T0ipWnfOrJI/bpXk6fC9sLSuYiyVeEaJPmLgBQy8k4oQaqr4OBDVLSnuPHo
	05RAxzoP4yJfK+sACjDxlXDqQX/7f919aMocrEI7tVWFrBwno/1nBJDKu9JLFVoR5nfZDQVemaXnK
	AQC9kBEqGWb1utBgZTng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPRl2-0001Cr-1J; Tue, 29 Oct 2019 13:42:00 +0000
Received: from mail-eopbgr130052.outbound.protection.outlook.com
 ([40.107.13.52] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPRk9-0000fv-PF
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:41:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5Cx/v/RepUVLb9OAoW/bcSEv45jIb24IwyZ5Iwnhc//0rPjS873wbVIqkPLbhVFQKKsG7cdknfrDgWy3bqztn38hHSR7CI70zJ3B6sWDlsAuf/HjpC2Ln+ZHu0a8M0pNYuOLBoS4BIuDq0FUSyy7PEHHRgzYC8kr4ejq+5LqM2mGPNmmJDe/u15YzVTxpMGi2arF3N5srs/dpUl5hepYCecVxF2yC+o1V13A26RTj2SDdM3OBEpUzDkghH1y87vylMrXMDHERTzOGp39JDmf7o9dJnW1sCo719b0DB3lx8BnQltezsAuSzFvzbQnh7i/uKKwCt1/i0mKt9xgPLnXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FERQ5JOsBgqrd/FD6A6Wz2tt3T3WGVvqxaHe7Ec/gpY=;
 b=T0ZFW0fpbXmggO9Lh7hfIrXRmnlhxvNeQyKO1TF0EIFYLulFwifEvu3zhpCgP+0o4hbMJxVaM5SBLYLy38tDmMwgh6st5RplviM410tdr6g9tMnpaYTrPTOS8Slp6a9tvEbkDAaePcKtTXh9njtxjzq9qkMfTF8w3w7Il5R7eh8hn7CJGp/7JPYy9UEOosZolXoceF51tbr0evKHMl96heBOuwy0MRqw/Do5ptLHzmFKkQUKQv/Hjm4PcRREfbIwqmD3PvgNXWk2+NUJklWgZpWyGc995WUR1nWD8tmVYqUXCuFPDfxvrtuFS7kPl9ZuPndAaCmbU1YztfuaNahWUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FERQ5JOsBgqrd/FD6A6Wz2tt3T3WGVvqxaHe7Ec/gpY=;
 b=lF4Vnny8/y+wJLA8xDIvuX9qV+u9Aaw8fRdf7DsgHuF+Hvhk7eD3PnlI0ROrMyo8SEXJ4wJ/AlTodvOF7dhtuilC6b3/H4Uap1WYwA+E59ltMhMCQirC1+BecgDkRqSqKM6hxU7EUM/WqEwsB+yyAnuPg7PRh3tqGRbGhTlj7vg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5139.eurprd04.prod.outlook.com (20.176.215.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 13:41:00 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.023; Tue, 29 Oct 2019
 13:41:00 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 2/7] clk: imx: clk-composite-8m: Switch to clk_hw based API
Thread-Topic: [PATCH 2/7] clk: imx: clk-composite-8m: Switch to clk_hw based
 API
Thread-Index: AQHVjl5/j/spRpTKgUuA1T2shZJKLw==
Date: Tue, 29 Oct 2019 13:41:00 +0000
Message-ID: <1572356175-24950-3-git-send-email-peng.fan@nxp.com>
References: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572356175-24950-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0030.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: aca7b2c6-30a2-41ba-90ae-08d75c75a24f
x-ms-traffictypediagnostic: AM0PR04MB5139:|AM0PR04MB5139:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5139D813D728518B2330542488610@AM0PR04MB5139.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(39860400002)(396003)(136003)(199004)(189003)(6436002)(102836004)(66946007)(52116002)(66556008)(66066001)(5660300002)(66476007)(2501003)(81166006)(8676002)(486006)(81156014)(6506007)(386003)(66446008)(6486002)(64756008)(256004)(478600001)(26005)(2906002)(3846002)(76176011)(186003)(25786009)(99286004)(71190400001)(71200400001)(6116002)(6512007)(6636002)(54906003)(14454004)(7736002)(36756003)(446003)(11346002)(476003)(2616005)(305945005)(4326008)(44832011)(50226002)(316002)(110136005)(86362001)(2201001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5139;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z6putwva7H0y+woQWxeX2g+IZioGwkXEGrtFtPYsZhMcHWYYmpIMoC+yAmC34jUJcRpZucTWi6GntA1NqBwfPDx30IYxg2T9k9vOkF/0EdthoYse61mmM2ElyszAxa6ZiP0FYrKmcXX6QTmnTDllZsbVt/f6ZGEDGHztFgHSoIdCoOXqYQH4tnWULnOljJ6q0YZAxKugNTrCi00+Xt0IpOlURN3wBXIlUtw5AdL6ypiVFw5qzB+aj1Rk1MCLoySfIyb4QLYyPZZ4irj7Nm25qiBoliTT71U9xrjx9Gxuom0Bp9mA32CtKJkcX0aoe0G/ZN5SkLFxpcaao6H4inPVVfOhNwNmBHNc/jD1XOaC+ERJ7VDZtlEjv/Ri07fxqZXloDfRj87Hh9AjNP2cGH+TZNy5J/gBXzShCPYrKkYRdAphWkTdOGr88IGgxCgIjfqx
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aca7b2c6-30a2-41ba-90ae-08d75c75a24f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 13:41:00.2615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ivqTWe/p5oyU6YWhKFeAClwRBz2SgEfHxoA1oNGYE/bdB9b2Vs5ZX+T1Ow+7yoJUbfFOU39SKpXl4nrkaBqPkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_064105_844908_415DED1D 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
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

Switch the imx8m_clk_hw_composite_flags function to clk_hw based API,
rename accordingly and add a macro for clk based legacy. This allows
us to move closer to a clear split between consumer and provider clk
APIs.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c |  4 ++--
 drivers/clk/imx/clk.h              | 29 ++++++++++++++++++++++-------
 2 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 388bdb94f841..e0f25983e80f 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -123,7 +123,7 @@ static const struct clk_ops imx8m_clk_composite_divider_ops = {
 	.set_rate = imx8m_clk_composite_divider_set_rate,
 };
 
-struct clk *imx8m_clk_composite_flags(const char *name,
+struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					const char * const *parent_names,
 					int num_parents, void __iomem *reg,
 					unsigned long flags)
@@ -169,7 +169,7 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 	if (IS_ERR(hw))
 		goto fail;
 
-	return hw->clk;
+	return hw;
 
 fail:
 	kfree(gate);
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 5038622f1a72..e67f7d4ab1dd 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -450,19 +450,34 @@ struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
 		struct clk *div, struct clk *mux, struct clk *pll,
 		struct clk *step);
 
-struct clk *imx8m_clk_composite_flags(const char *name,
-					const char * const *parent_names,
-					int num_parents, void __iomem *reg,
-					unsigned long flags);
-
-#define __imx8m_clk_composite(name, parent_names, reg, flags) \
-	imx8m_clk_composite_flags(name, parent_names, \
+struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
+					    const char * const *parent_names,
+					    int num_parents,
+					    void __iomem *reg,
+					    unsigned long flags);
+
+#define imx8m_clk_composite_flags(name, parent_names, num_parents, reg, \
+				  flags) \
+	imx8m_clk_hw_composite_flags(name, parent_names, num_parents, \
+				     reg, flags)->clk
+
+#define __imx8m_clk_hw_composite(name, parent_names, reg, flags) \
+	imx8m_clk_hw_composite_flags(name, parent_names, \
 		ARRAY_SIZE(parent_names), reg, \
 		flags | CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
 
+#define __imx8m_clk_composite(name, parent_names, reg, flags) \
+	__imx8m_clk_hw_composite(name, parent_names, reg, flags)->clk
+
+#define imx8m_clk_hw_composite(name, parent_names, reg) \
+	__imx8m_clk_hw_composite(name, parent_names, reg, 0)
+
 #define imx8m_clk_composite(name, parent_names, reg) \
 	__imx8m_clk_composite(name, parent_names, reg, 0)
 
+#define imx8m_clk_hw_composite_critical(name, parent_names, reg) \
+	__imx8m_clk_hw_composite(name, parent_names, reg, CLK_IS_CRITICAL)
+
 #define imx8m_clk_composite_critical(name, parent_names, reg) \
 	__imx8m_clk_composite(name, parent_names, reg, CLK_IS_CRITICAL)
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
