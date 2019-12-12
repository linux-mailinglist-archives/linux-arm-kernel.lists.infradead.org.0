Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3495811C3C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:01:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEuT4EzbAtj34y1bB+PDNzyLZNfrGHj6M4HJaY2JPFQ=; b=ARpMqE3xRj1rWz
	3Dap3VWgA9d9VIxIGe2Q8HqwhQe41FfEGrdUfo9KHCi4eVURiblV/wbyj/ipJUFIYdmNpkjO11JDa
	e7WaKqEtlYh6I8TbXmP9QSv0wVrWaR25idRPCDhmCyGsJ9E5L+eF9opFWtBuW19OvG19dHAK5fD/H
	uSsoZG8S+KtHlbNEsBqRQXQawaYyTM9UyDtD5qNe9ftF/+dqejgAq+/5RZ+3IDYgzNJKbBKrJzNj/
	J/OPuEbfJArKuQczYsy473/8F7/TfsxmQ+qlhCL02f716wtWshvC30gpPvfdje4o7xjW9xJ7iwGhx
	Aj0qk6JGyBpnUUbeTMSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifEis-0003uU-O0; Thu, 12 Dec 2019 03:01:02 +0000
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifEh6-0001NS-03
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:59:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J4EZh6tcu61qW/oRepJ0pSvGhXHeQG+sXZOCwoU3VDDq1DhkTHmH8WoVb1Yn78qM1ivko1dzZiN6qdI7NksF+SEqXs1R8QWiGjIeuGGVYgM/3v7n/STqBCf588M6Fcr8fvfXCeJ31N1tGyjQYjYU3s5xR9VviL01n08dS1yjzN3orAinuuT5paQcu3QIcgT2F6wZZzUa3DpPbvxL9Y/LTaBsv9u0lcrM8dMchYlFI/ehClP5x2h9pvrw5nEFArLpOXINuBxtQqJD3eVaLXhoj8jdA9NaIiWl0CQdmVKCWgUJEr8YW6UwcWxmzV0a9OQixH+QbnkyTOfFa+RkE+b1Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=127ZqZr3yibLEGADIDwdS92koh1Pj0RZ3R7B7s2PvMA=;
 b=X32L03hLn2FBQOKm/2h4ihJhyZLVON5IzcTPOjSR7FpK/aeuCE8QH6k8OQ5thGsFhvmBglR5FL0GxG7V6apO8c7cDVTmGgVcMfX9M3EWpWatarPhx5wLyKy9rKrY5ClXoIFDoMah1ThdFDVwi4o2xRr0X5X+LVkAhw/trZ76HypFAg70bMjbzOfnHvhzwpSEp6TS0pXpEgVQsFXK6PILZKmbHmQqXFe+Y/IkwXjzy7n5+Ynp+pxwAq1WF3ka5q3xlxveQbuZbVM4H0ECAKvbwSDJaf4d5O0QAQGBOHXNU5PHMeHtEGByFIrs8+yS5moHLRx1tt67FuA+bAvYtR47FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=127ZqZr3yibLEGADIDwdS92koh1Pj0RZ3R7B7s2PvMA=;
 b=BLCTg2v1dOOJtMCV3M3NwmxFMcuw5XrXrPvIje2rz5l3atshSIbbTgnZQ2b1wZPaoI2H+4L3QqSeVIAiDAxaWf9DjVa2g3he+x8dRfSv7p8Ar30ScbatmIwFrlANPJWZX9dnZaQ/eSkd0/DTb+vB/USXPgXgY0Oj2J+WwmXZcTU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6196.eurprd04.prod.outlook.com (20.179.34.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Thu, 12 Dec 2019 02:59:10 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 02:59:10 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V2 6/9] clk: imx: Remove __init for imx_obtain_fixed_clk_hw()
 API
Thread-Topic: [PATCH V2 6/9] clk: imx: Remove __init for
 imx_obtain_fixed_clk_hw() API
Thread-Index: AQHVsJggB12mI9cJ2kSnN3lMk35vrg==
Date: Thu, 12 Dec 2019 02:59:10 +0000
Message-ID: <1576119353-26679-7-git-send-email-peng.fan@nxp.com>
References: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0022.apcprd04.prod.outlook.com
 (2603:1096:202:2::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 693baaa6-e0ba-4736-1466-08d77eaf42b4
x-ms-traffictypediagnostic: AM0PR04MB6196:|AM0PR04MB6196:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB619692945E4957D15EED5DAD88550@AM0PR04MB6196.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(199004)(189003)(81156014)(8936002)(316002)(81166006)(8676002)(36756003)(52116002)(478600001)(4744005)(6512007)(6486002)(71200400001)(110136005)(54906003)(86362001)(186003)(66476007)(4326008)(5660300002)(2906002)(66446008)(64756008)(44832011)(26005)(6636002)(66946007)(6506007)(2616005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6196;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ahiViBqAzNCa50vorosuUMDVYmTRD9vQHKSRKe0z1y7N0cTPbd1FIB4C5gGOQN7fA4vJSCXQIAE5I/aE/ouLn6dWwWF8uJBKCReS3rCQDJGDfm9/ekdz0D/L6WfR6gLgC+PtZsb6+qLdXhGfWDpa66i2bvEgcWKSFRSNT78eW/4C8o4jxquVZm/N59iVWFjPoy2w3o8iW1dDYIoHGJ3jOp4+xXOVtImiYk03z9PlREC20Ld9/uyBAiRfYBUg73cYmwzLtOPBje5V35YgE5ZC9mZHsKrB2cgogSZ7/OiWBvdyowi+1j/3kPwi1v3TKxz0rcw/1puH/p/dzv6+nCk7W40/MlRSjfDWrPdXN0qtXNG0fTmmOqF4R0TNwdMPumhqAQu8bnyJZBApeJHBTzhezpEcegcVrsgcXECmCpbTbkwgFZiXD+/ca8z7V4ioQUmy
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 693baaa6-e0ba-4736-1466-08d77eaf42b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 02:59:10.3476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FKWbq96K6KAjaLGi0QIudOD52YZOgnJS9zqrEDEl02SecEThIyGltPrJ2UivUxJ5azXlp5dFY+d9aszGHpMQwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_185912_296600_1B72D8D1 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Some of i.MX SoCs' clock driver will use platform driver model,
and they need to call imx_obtain_fixed_clk_hw() API, so
imx_obtain_fixed_clk_hw() API should NOT be in .init section.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index d0ce29f2c417..87ab8db3d282 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -102,8 +102,8 @@ struct clk_hw * __init imx_obtain_fixed_clock_hw(
 	return __clk_get_hw(clk);
 }
 
-struct clk_hw * __init imx_obtain_fixed_clk_hw(struct device_node *np,
-					       const char *name)
+struct clk_hw * imx_obtain_fixed_clk_hw(struct device_node *np,
+					const char *name)
 {
 	struct clk *clk;
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
