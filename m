Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808B3183FB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 04:34:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jq5S96Qok1t5HAXz6ybFqncmc2DjLBP++EXmoTs5QJc=; b=s3oy7WZ9p+aeo6
	az3xGDqAnuh2FigaX3n8nwSvvxLsJH76wQNYImTyca6KuBCcacEjbmzdBdQ/TwJQkmUIFHNcVqGSg
	dUL2CUYW+s/0jrkwbxQ0uy+/khfFmSH8hO8NuYpZiBORAQViqo6htRAAk8EfqwufQ9ZqySMEeOtTg
	oAcj6hfIeePprVKaSllFXjpW8Ct1FE28jz2PQNUa2oc1RxcUltu4drtO4TldEhZA3/c1Mvwr1Sayo
	G++t0tDaB0BHo1creTjPNs+exPh3R1LfvWzfEf8CG3nEgmDjVmiNf1zzL1rA2uBzVIRsA1gj/Rfo+
	CwUHkCGJ1PoHte/lj0Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCb5f-0006dj-AX; Fri, 13 Mar 2020 03:34:27 +0000
Received: from mail-eopbgr70078.outbound.protection.outlook.com ([40.107.7.78]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCb5G-0006SJ-Sm
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 03:34:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NlVEAR5zp+T265L4dptBLvcJcsOhhygym89tMYDn1Tdle3QjVTH1JVG311tgiwGnYgkGXkoCRvaVD5spYMNqen8tPKv+//xfPv7IRC8zRyAr/t72/WTXbdVqiG65fIurxS5q+Kn3guTUyu0jfyRWDAoUEdNDsE13SwhGgUIq3jaXxWudQ+Jfum0FmAQO3hQbFU+9AiRVrbgTJcGC6QFAuliGhTF+vrc4KT7L2ANGAhrvSGeR1mjmrabyp5kHIx4mRzElZfmwXBR7NbRWGNGN0b109wpQ6qiywvGhJSib+JwdySJpJODHiVsA45qJpXVn68rrKxJDX+mcxMHaH3c1Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2j0preTf4xqlbsQ4qb0POIHLYFeGHgBkfXP04nVbKE=;
 b=Tdp6awL+gUdsTan6PtKDhV5etlasqh/y1IbJb9WaNZIAKpMh2bhL8fgrx8Fn9EUSsvMLVHCg2Q3zNtsK30Btk9NZM8AxKWRHFNb25ynyNFyuNnu2Cod5PamFMxl5dhqEAIZBph7cptoOA79soAuK4UYB1q0FLwmgh3tbJg2BFV//LFZDH9emILkTmbgdDBJnLdBjyqo8oDbMZ4LhMtNxqDhD8bEEmXMpThfj8E5JUq2TE82mvH6SPegabFWZ4ZfLgBfeLtzenP315V3XCnQXaCDQoI5959+tsShM9a8yd3OrVjtyV8ZAuh9jV8cT9GQUH0krU50O1KpsKWRSGtwoKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2j0preTf4xqlbsQ4qb0POIHLYFeGHgBkfXP04nVbKE=;
 b=SwiLLw3DZiET545kIQV5XCaCZw5DR0RG/PWkg88rtoIalzloDcvHnZLormch7uZC3gPa039Kjuduj8InJ+wZ+nd4n/h/MlrKENVbPXkCrK8kuG+CdfdJv44RHkp0LIdhgdJ+omOmKzSRZcAwQMTGTJwF3TmdBf5cRO+AN97cNFY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4979.eurprd04.prod.outlook.com (20.177.40.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Fri, 13 Mar 2020 03:34:00 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 03:34:00 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, sboyd@kernel.org, s.hauer@pengutronix.de,
 linus.walleij@linaro.org, arnd@arndb.de
Subject: [PATCH 1/3] pinctrl: freescale: drop the dependency on ARM64 for
 i.MX8M
Date: Fri, 13 Mar 2020 11:27:14 +0800
Message-Id: <1584070036-26447-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
References: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0178.apcprd06.prod.outlook.com
 (2603:1096:1:1e::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0178.apcprd06.prod.outlook.com (2603:1096:1:1e::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.16 via Frontend Transport; Fri, 13 Mar 2020 03:33:55 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 092bd2b0-bb80-4b02-1118-08d7c6ff5e5e
X-MS-TrafficTypeDiagnostic: AM0PR04MB4979:|AM0PR04MB4979:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB497901A920FB746AB7A8609C88FA0@AM0PR04MB4979.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 034119E4F6
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(396003)(136003)(346002)(199004)(81156014)(66476007)(478600001)(66556008)(8936002)(956004)(8676002)(52116002)(66946007)(2616005)(81166006)(26005)(7416002)(69590400007)(86362001)(6486002)(4326008)(36756003)(6666004)(316002)(6506007)(2906002)(5660300002)(9686003)(6512007)(186003)(16526019);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4979;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IXUtF17UBdbDpuO0FgdCEUjv7gPJ/w/Eqxg9Ak3muPZBDgH975S1rcCYaNCDxXPdZb7++B+i0byMMG9txoKl2zHHKiif8JMSyrBYRNfbH+vUDGrZbMe+pPnsCV6RO56MjhhqJ205eKH0vIf5NKmU1ayEk3+ju7w8P0f4TkwyQab+D6Kze01gw4Ht32C09SVV9lxO7+PNxLco45dqS2HOVrxb8x0DoUI1/00mkH9moJFVYWv3WrutngK6NADya73S7LXBaHcUImOuxul6iDdolq3/GENBfy7le9Bn4GUjNoKwwYpCQ7zlrqsskY3/7wWEiVOX56RomkKT5oYxNxoz42fSLUdssrnKAZThxjvuHzEyJi85LQzH3dlrKlSEuA7hAl+ToHhbQ3sUIJ4k7jRNR5ocYcmFEpiaLnLmzktaaPgdzY7i55o6WeBwn5epS1fmeXON7opqxbkUv6ZlpqTluVD3wHJg7WIa8wTkOkNWlIXyxLkRETZNo0MGSMCOQDdI
X-MS-Exchange-AntiSpam-MessageData: X6ugdzzcWLZqj/DTZw6tAgbI705XQmQGiWV4qIiJBx/YD6B4XawwE3oJx81tWAB+MiPy56MITAFpbR2f5zDZwWI7ESvXitchrSncRcnVF4opK0GenYb2b76qfenKOj9CEgrFQEbl+aCH6XNRa3RILA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 092bd2b0-bb80-4b02-1118-08d7c6ff5e5e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2020 03:34:00.1595 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KUucDhWYf/hI8TXzZRShtvGX0VgNZWT3HmQ+if9RBRGularsIFW912CeI+v+YsGuEvFPCKqLTanOSkkRObDBrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4979
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_203402_960928_DA27DEE7 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, stefan@agner.ch,
 linux-gpio@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Moving to support aarch32 mode on aarch64 hardware, need to drop
the dependency on ARM64 to make the driver could be selected for
ARM32.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/pinctrl/freescale/Kconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index de775a85a51e..c784663b00ad 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -125,28 +125,28 @@ config PINCTRL_IMX7ULP
 
 config PINCTRL_IMX8MM
 	bool "IMX8MM pinctrl driver"
-	depends on ARCH_MXC && ARM64
+	depends on ARCH_MXC
 	select PINCTRL_IMX
 	help
 	  Say Y here to enable the imx8mm pinctrl driver
 
 config PINCTRL_IMX8MN
 	bool "IMX8MN pinctrl driver"
-	depends on ARCH_MXC && ARM64
+	depends on ARCH_MXC
 	select PINCTRL_IMX
 	help
 	  Say Y here to enable the imx8mn pinctrl driver
 
 config PINCTRL_IMX8MP
 	bool "IMX8MP pinctrl driver"
-	depends on ARCH_MXC && ARM64
+	depends on ARCH_MXC
 	select PINCTRL_IMX
 	help
 	  Say Y here to enable the imx8mp pinctrl driver
 
 config PINCTRL_IMX8MQ
 	bool "IMX8MQ pinctrl driver"
-	depends on ARCH_MXC && ARM64
+	depends on ARCH_MXC
 	select PINCTRL_IMX
 	help
 	  Say Y here to enable the imx8mq pinctrl driver
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
