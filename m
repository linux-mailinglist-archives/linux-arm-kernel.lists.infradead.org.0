Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155AE183FBB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 04:35:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUN5eGNNI1npe6vi+0zjBOOBhTlxBCqS31+xC1yUuF8=; b=Buj9iesu0Uz1iy
	EbXCl5PN2ceBwzqcz4bxirPnEbpMLjPkbRL3TLfTz6V864hUBGTDKouKZgx2ULc5i3UgGJue03TBk
	bRnWmJSbDi6/K94blEXsp1zEvxcMXz6wCLWaDNF2aJ7TjTPs55qY42kl4RjafbAR1UZFYr8w2sjm9
	FGrn4g1cPp45NaEu0fsXBHII6I2CGdhdO+Hfp1RFixhSA/d8HFu3WV1tFeyLr36HJTgaqk9gsiP/1
	E2lYeZ94gkfgHySESxUAg/jFXN+xv9LAFyb2bnlheEKfD1kqOWt149gLPobxBLiW/6NWJDnDvSP0y
	yFN+BCXdosvu/FbP5Fjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCb6J-0007Cl-Gd; Fri, 13 Mar 2020 03:35:07 +0000
Received: from mail-eopbgr70047.outbound.protection.outlook.com ([40.107.7.47]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCb5R-0006dc-5q
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 03:34:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cu8dIOVqgEnFOolf8YqFV2YxGixmHIOkBTUxS9R0PP/zFA2/xEIAti10ys4ObEJeYxNFvgdIuTrw6jnyJc9AdA8ZfFm7lAVzJA94HlURrLO3LK+TNnkdAbUQVH7ClvvqwF3DpCt7/EFNGqLH1a/3XnewgMp4v9AZ6PBd3vVW2MAaDxQa3NT6q4HNC08cpeaQa0g0ibLU+Fn7JLzylZ/MnrWctWQO2zfSRdWqfZ8Ep2t41IcdpuW32ICO2MjKsqduyf+DCKFJJieZq0kpozEaI87mSQ3jxHZ6bFZONpq3/vxInTjS7NDiY5Ju913liBFpz96ww2tdkyxd3IHekEhy5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w7YZQHG8z16cUe8rr8Z4fTVt5wMLwJRDLNyCE5kFwdo=;
 b=Bord0qL5g078dJ9WtGyuWjf8g9X67g7jWDcr4dX98JrckD1/m8cVolkVC8Bc7cYe5/ck9xt80nIv6zEw5aW+V9YCfUvcN51nCWDmpKLKkJLcSbrh9LGT8IOXiLaPGRSqUZR9ffP/TUApjPJWpZoENKI7oTF9sZBq04FXW8gkksBy2ZqQxGBc5SioYvSbBuyq61wOryhTw6pwzjP3RJEGGNK7kD1wmLP2QNty2BJWQNzYU15BgavS4ElljfoLxXndHSYfULBuDWqLeXpn9TSVqri3FKbrRd2xHf/12CuwTTSfy9x5QJuXjMa1MI5vhdrNb6/KRZIEGJcZ+d2tzghb5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w7YZQHG8z16cUe8rr8Z4fTVt5wMLwJRDLNyCE5kFwdo=;
 b=K6wE6hPvi1wvJDI2bmqTyVZq0sI67H545m5X3mjSYU7/GYAMcHKBUg/p9sZKrxdh147RrS/zRgzIE+tdLeMURq+2LRd8YWFWh22qTfNAgfYEM4TPuo4kohRmwUq9h3sBJ7OMIWnl2CZgRnTi+xc5dpE3TXxm64UUZwYCLleOU4w=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4979.eurprd04.prod.outlook.com (20.177.40.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Fri, 13 Mar 2020 03:34:10 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 03:34:10 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, sboyd@kernel.org, s.hauer@pengutronix.de,
 linus.walleij@linaro.org, arnd@arndb.de
Subject: [PATCH 3/3] soc: imx: select ARM_GIC_V3 for i.MX8M
Date: Fri, 13 Mar 2020 11:27:16 +0800
Message-Id: <1584070036-26447-4-git-send-email-peng.fan@nxp.com>
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
 15.20.2793.16 via Frontend Transport; Fri, 13 Mar 2020 03:34:05 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 09e29b08-9471-4dcb-6abe-08d7c6ff64a8
X-MS-TrafficTypeDiagnostic: AM0PR04MB4979:|AM0PR04MB4979:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB497979C7838E586679E55DD688FA0@AM0PR04MB4979.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 034119E4F6
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(396003)(136003)(346002)(199004)(81156014)(66476007)(478600001)(66556008)(8936002)(956004)(8676002)(52116002)(66946007)(2616005)(81166006)(4744005)(26005)(7416002)(69590400007)(86362001)(6486002)(4326008)(36756003)(6666004)(316002)(6506007)(2906002)(5660300002)(9686003)(6512007)(186003)(16526019);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4979;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Pg/70JwQ4evkZjZlFXuNBvIzWLUTtZemd2SIjWQZphLoi6daI371+xgDBEn+BxP66+81URcRCBWHjkIpUw7GiarPMoXJsfOXOtc3K+ongPlnpalLd+J5y+LoiNVA3C7R+DUHHpvtwMIEwDD7+m39SafgX1Vlkk0IMv2SA7BIAlXQQm7VInUbePJ5qIkGfmzxBBmelM3fb51E7y5evA5yKz2A+XdlfDwqP13mgQbGCVfGlMxcU02GuIqpMtnSCbLbGjkbLeTEuOWiLl9iynjbS2Q+6ADrS7DoUP14Xyw53PHTlitcvxevi6tDZIFf1ErMM1b9sgWZopVuLnZoPAR44fryYBoeqjRM7AGx4e1HYBvFCqsyZd10mQ3DCQ+IyU9YlECg2sqEmtgpG1r17vuh7r4QrJaCtiruhPxeFHQ7RChI12bOnr/RTzPx3Ve5enyZb3DRI2AE9Wjd2JyNu50d6CKrmjf91OmqBsn0PGbHCbGw3tEX+me9r4m4Nn+87O+m
X-MS-Exchange-AntiSpam-MessageData: QhHCb+0RYdIZ8rdcmnzf2+0OkWG4LQ7IUOeJ9eycdhs9IhMSPsUjVVI/OxOBal4Z2e47QPaEt5z/ZH20arKqHrREKeqQNpN0hq+HMqpxb3RZk79NbwxyztV8JzcMjXEC4LpalkmvYFv/qqEbCahCXA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09e29b08-9471-4dcb-6abe-08d7c6ff64a8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2020 03:34:10.7421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7MsmcOGgFttpMPqrIt5wa5EQ1OauLH9UjvSlsNc8BGyqL3VSM1PWl94Ao7iXmCl8Zmhn/+r5BjgH0fNH4waMLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4979
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_203413_264471_59DD9DD7 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.47 listed in list.dnswl.org]
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

Select ARM_GIC_V3, then it is able to use gic v3 driver in aarch32
mode linux on aarch64 hardware. For aarch64 mode, it not hurts
to select ARM_GIC_V3.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 70019cefa617..0b69024296d5 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -21,6 +21,7 @@ config SOC_IMX8M
 	bool "i.MX8M SoC family support"
 	depends on ARCH_MXC || COMPILE_TEST
 	default ARCH_MXC && ARM64
+	select ARM_GIC_V3
 	help
 	  If you say yes here you get support for the NXP i.MX8M family
 	  support, it will provide the SoC info like SoC family,
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
