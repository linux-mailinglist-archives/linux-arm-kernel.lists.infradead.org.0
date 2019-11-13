Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68547FAAE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:25:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CPrnImz6+emiGEv6ywxr7qXXwJO6Il8BCG7D1Fyo2+4=; b=Jb1eNz4cqVXEdn
	FD346mSwCdeJdWdUkdSjwnEQMoCC2qllizr/bgMAj7jmBShkNx9Wyg7YZPvMBDMsgD080rmgR0H23
	ek/NlJG+T0cKvgaEaGVM/Af0vd2CN4kps108PPfL2Mlub5+btj05WeG9gzdH0dfP9Dw0roFHYuvvn
	00U04R98QSchcmA1tp1e8oujFdGNjbhqcJJp3K876052AIpNmXxBtSiJhTwoqhEJXCxrDyu0QZxC9
	Wdls0Ccyj/t0NNKO/FaGpWloy8V/xl9MXiabAybfTpOg3RkN/QT8RsEWkca6Nwqq//pHWS82YraFH
	ydRXN6KBJl8GlQ/JnDaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUn1m-0002cR-7q; Wed, 13 Nov 2019 07:25:22 +0000
Received: from mail-eopbgr00066.outbound.protection.outlook.com ([40.107.0.66]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUn1I-0002Sv-CM
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:24:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QRnSEkwLKtDW05ZTHfLmic4pOUHwdf/xs0Fy+rsErSxfxEYBqafbHJvHUpkuAtBvzB7taYDO6XDRwiBtgTfOQNAtIjeqFIPpl9kS9JfOjlxwrskIldVlpQFzr0XY6KI6Ux4fWsZyO2PVD7/5FjgA9fw0Y99ZwW9jSn8e95pElilZwa3yRsA959evYXI5tEB/vwsD99/l3mnt4HUnmcPM00cEBgFBpLqYsQUmfFfS+76dafX0O14cC9/E994CPYfFrkbKKT0Cfx9ggQIxWZlKuylht1w9+RMD93tHyhJHZ4AeXmeUcDY8cYz7x5iG88aKVWJzeCCh6R9IjbXmVnulPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JAsWPc4rNod5xFgv8fXO7pzo4SY9yZcYiaJLQgXpPHs=;
 b=j4MzUy4+hMVbtN/saFIA3Mrh5j/LM4Xtra65gkBg1tvVNjD9bA/6ScptrPS4eKd4M3HT4q61eaaKO3SyizppSwKoV05B/cPYxLLoEU0vu13NoIVWO/sDaBtXTBN9k0XKXYBz/aD8io8kF2odI57R9vQ4wGmBPnv6A88KT5CqBoGSnD3c44T1aBlQp4L+yT3ccuiM/Eve74+VDNQigZVPR6IyKMFlPuqGsfrgjPJ/kOCDi4HmyhE6sMjzjInnmYd/juSh5pt6GSAqlERUXI/xwaHWZhV5u7r6L6ROTtxY6e9E1lw1ZPjvO4cpJoRJQkHBP/KknPknEykkqUVoBDdU4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JAsWPc4rNod5xFgv8fXO7pzo4SY9yZcYiaJLQgXpPHs=;
 b=JBRYJf/NOp7I+4n2iGjgd7WwVBJrIBEK93rk0CctvzlqKRl0P4ZW0TjZBCiBGFTbN8HEW7DIivGs5BnOvNAkF/N7d/8KN3gGq0DUmojXMz98NP0NxSUd9CSHViUWF4DqHPI04xJLSeToOpVKU2MZ+G0Hk1yiRS2ymqB2k3zcFK0=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4651.eurprd04.prod.outlook.com (52.135.138.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.22; Wed, 13 Nov 2019 07:24:48 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::115f:1e4f:9ceb:2a2c%7]) with mapi id 15.20.2430.028; Wed, 13 Nov 2019
 07:24:48 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 1/2] clk: imx: pll14xx: use writel_relaxed
Thread-Topic: [PATCH 1/2] clk: imx: pll14xx: use writel_relaxed
Thread-Index: AQHVmfNuHTJgCIWBG0W9BBzI6iT6Ug==
Date: Wed, 13 Nov 2019 07:24:48 +0000
Message-ID: <1573629763-18389-2-git-send-email-peng.fan@nxp.com>
References: <1573629763-18389-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573629763-18389-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0169.apcprd02.prod.outlook.com
 (2603:1096:201:1f::29) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 601fbdcd-7289-429c-0c58-08d7680a908a
x-ms-traffictypediagnostic: DB7PR04MB4651:|DB7PR04MB4651:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4651BF80C3B7DEB7260BE34488760@DB7PR04MB4651.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:663;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(396003)(39860400002)(346002)(199004)(189003)(54906003)(81156014)(81166006)(44832011)(8676002)(76176011)(50226002)(14444005)(256004)(186003)(52116002)(6636002)(6486002)(66066001)(486006)(110136005)(2906002)(8936002)(36756003)(6436002)(316002)(478600001)(6512007)(7736002)(305945005)(71200400001)(2616005)(386003)(11346002)(102836004)(71190400001)(446003)(2501003)(6506007)(26005)(14454004)(476003)(4744005)(5660300002)(66476007)(66556008)(64756008)(66446008)(86362001)(25786009)(6116002)(66946007)(3846002)(99286004)(2201001)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4651;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3q9ejDWl0W/Tsk0I1Od5DhHToCQkZDUWlGKZe1w6P9IBA8peUB41swIJHeGzKXnyT70t04upk3/ZC976rCoJjQMNjbbhLBBLujY9YzOfkdT7NVekUfN9Twj/VfrN7HItLxxYKiCmnTz6byg+T2smCSGvZFfGHlEgO0PagUw9rDLuQqAhnU7eyySHIulp8D5zO9Wd4Whimo4zUMiT9AAs5nQlDHRCyzKr9lkQ9D614L0v4U/w5UKDtY1dg70x2hVEp5LFycEDfs26IhRWEuygE4tuIKozUTR4ZlsPJD9VnMxn3a7u0zUtuFzSMKarexJYaaDpImXru9AJnEosSQqaYVB1TFzZOCNzj2BYgXzM2LxyZKwjSxowpIzXyiRo2mM2K035hSHHWCx04Gw24cnsylMK8ounfw9zkONA3/QMecQ+j9n6qBtGi0b0WIP2XJUI
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 601fbdcd-7289-429c-0c58-08d7680a908a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 07:24:48.4419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xAJYZsstNA7o7obKgihI4pCKHqszfJDez2DTIs4m4Yzx4tn2taqc1b1/kxShzo43LIYYIjOTx9ANb8Swkw1fbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4651
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_232452_417413_45FB9280 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.66 listed in list.dnswl.org]
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
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

It not make sense to use writel, use relaxed variant.

Cc: Will Deacon <will@kernel.org>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pll14xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 5682fce9f5e5..e34813904023 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -199,7 +199,7 @@ static int clk_pll1416x_set_rate(struct clk_hw *hw, unsigned long drate,
 
 	/* Enable BYPASS */
 	tmp |= BYPASS_MASK;
-	writel(tmp, pll->base);
+	writel_relaxed(tmp, pll->base);
 
 	div_val = (rate->mdiv << MDIV_SHIFT) | (rate->pdiv << PDIV_SHIFT) |
 		(rate->sdiv << SDIV_SHIFT);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
