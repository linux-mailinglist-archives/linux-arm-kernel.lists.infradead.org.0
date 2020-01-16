Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A41A13D2E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 04:49:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SURDvB8+XFvyeajgt6IzEx6c0VWKKqnf5SehnYWqc9c=; b=XRO8yX4CU52Ugl
	Heo3ZO+Ig7ertDxXB5pqDUw4Pd35a+D2W15sOEnu9AvJwD6WryJ2IxEL9GnbDs6H78urnrN6P14g1
	4SX7nCMg1cK/slkap14XN8luFlbGs3+4iaKa/lM2M266lcFLpiyuns9FccMD1RdhH29FRY1siPEC0
	Pt5gK4gMIpy/CdArE2nTdJt+41filPIGU3DdC2siLuMREwXWRmMOyKT//P4cQK8HKx+U2ZWm9k995
	stUMRRRiY1wq6q+OfFKqfcap5pEy+ukqXJiK0cfsAQ3GWkxxDgnkChgGY0RdSINgE47+59iJ85ujQ
	UXtJcVF8Fe+wVj3XNKtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irwA6-0007YR-VI; Thu, 16 Jan 2020 03:49:38 +0000
Received: from mail-he1eur04on0616.outbound.protection.outlook.com
 ([2a01:111:f400:fe0d::616]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irw9o-0007Pq-Fe
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 03:49:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cs4XFACGmuac/8HTHFXhHrgUyw8pEofxhmN77ihjhKESpZ4iz32srDKADGcxlkUYGAYhplccj1fm3J8olHrpHssB6gj5cVS9genzVwhk9kgwDLphyR0MOb26dAOiT0Iva/l84EwmYE/qpvp9jKPqhhg73yhoVnB++oggE9DlwVyXInjUAVy5uUAbwvLfO70nuFe82BaxjGx8rXxBzIs4j/iUMke2UW/bAKX2yaXzI3m37UmzjVK+OAEndQpkcVkAR7s5amH5Z3ynV27JOxbsMDhonseL9sKA+3Gd6wk5fQOVOasmG9d5pAHhZan5Zx6WUEANk7CoR2PkChwW0ftg5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HWdrEgsGxBUhEeIl1TveLZnox0xgq3TjOubjUxjvwTM=;
 b=C4wcsnq3fA4MQcD+1T2oo4e9snkeDjNTz8Ff0ispemMJIck3KZWS4Sf8Gb/s1H2U1i476nE9j80lKzcXUdsb8qd56aDqvenbw1J0y+bZSu/XJqw96bcTdvTGfFaydHHJMDhfhkoRmj7EU87yw02R6ZyPOjJlKxsetzxXgLU2o99XybOONO+ZYTc0RAbm7m+80UEIjBOdqbEjmHKtfImBwyoUyNyiRRZj1B7vqPIQpnmJKLZUHpA302lKOriTw2TCpAlM9HBpezCkZhZ+RyuTM0Qkx44nfT4qBGezR1XYrzRx08GGdfKovHPDnmIDYqYby9zos1/+Re1V3lrLRJbfIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HWdrEgsGxBUhEeIl1TveLZnox0xgq3TjOubjUxjvwTM=;
 b=ChLLMiBUjM88eN5J/vnxOOaeUcip4jVn+m1QGu37cXOOJcy3wSDD79ESHDebLXcMMa2isnHPzYKfdYAiBy52ymc8ypiV5Wbz0qHECdDJv37tJFHoETJr87eYHI1uHuepTNF1lBVkz1zU8uQ+SSVg5FWr61UGjaL9fEqMrhLeLtY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4612.eurprd04.prod.outlook.com (52.135.146.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 16 Jan 2020 03:49:17 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 03:49:16 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0002.apcprd06.prod.outlook.com (2603:1096:202:2e::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.20 via Frontend Transport; Thu, 16 Jan 2020 03:49:12 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "arnd@arndb.de"
 <arnd@arndb.de>
Subject: [PATCH 4/4] soc: imx: Use CONFIG_SOC_IMX8M as build gate
Thread-Topic: [PATCH 4/4] soc: imx: Use CONFIG_SOC_IMX8M as build gate
Thread-Index: AQHVzB/s+hHkepQnjku3J7ycSA+g0w==
Date: Thu, 16 Jan 2020 03:49:16 +0000
Message-ID: <1579146280-1750-5-git-send-email-peng.fan@nxp.com>
References: <1579146280-1750-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1579146280-1750-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0002.apcprd06.prod.outlook.com
 (2603:1096:202:2e::14) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dd1e982c-b780-4275-cc83-08d79a370f0f
x-ms-traffictypediagnostic: AM0PR04MB4612:|AM0PR04MB4612:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4612D1868298F9AF5F7F6EA188360@AM0PR04MB4612.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(189003)(199004)(478600001)(2616005)(66946007)(2906002)(956004)(110136005)(8676002)(81156014)(81166006)(8936002)(44832011)(4326008)(66556008)(7416002)(66446008)(64756008)(66476007)(54906003)(5660300002)(86362001)(71200400001)(69590400006)(6506007)(316002)(36756003)(26005)(186003)(16526019)(52116002)(6486002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4612;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yrbWfduEyrEW+5JTTzP172ID6kip/4qYyGkc+IienQWRrwYLqWIL7oHLu7vkF58/r6uB/tkkWra7uNj/cBCA/D2BWGIuMxN8c+y12ELrSas0+DiIKrN3zmZPfVR09dGiuXpHyceST/HBkZxxUhCla22i+KQmFycNmtWhHsma2zoHmp3RAvart6+LL05tE7+JtMDmzjWLgM0QkU8wqIm4JFr2qNYAQO7Czio2eaRVVF5eYZ5PfG0HgHiRjwhaYAYPlAyrV79KFgr+I87JW1cWg2eE2vKVEfk9/c2thvk7d31cZZh8W7VEEuC+jYu8VEjBWo432ksv2873/oiFg48g8jK0lS2KhlGTnxLYG+o/bbQiihPLTD3DZvwpwyx+MlM0UAkeb0ZJFHcRlzXwS4p31KoqpkOs1GntGut2cIEIQi9zE28KLxnKgzzSHDadREYC7VK+a6quBFNJlyJ/G4KdDbNLkacPzEROeUVnCTwFk7Pp5j6niumAHcmLTqJbyHpP
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd1e982c-b780-4275-cc83-08d79a370f0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 03:49:16.6684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: chO3To2d3Puh+dwEr+gdg6qnt1Wj8KHLXLldamd5k7Izn29eCMYwp5rW7nhftl9Wy/nvIacTYueUSedG9sl17g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4612
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_194920_545117_0828720D 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0d:0:0:0:616 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The soc-imx8.c driver is actually for i.MX8M family, so rename it
to soc-imx8m.c.
Use CONFIG_SOC_IMX8M as build gate, not CONFIG_ARCH_MXC, to control
whether build this driver, also make it possible for compile test.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/imx/Makefile                    | 2 +-
 drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} (100%)

diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index cf9ca42ff739..103e2c93c342 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
-obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
+obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
 obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8m.c
similarity index 100%
rename from drivers/soc/imx/soc-imx8.c
rename to drivers/soc/imx/soc-imx8m.c
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
