Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E21183FB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 04:34:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G84wjVPwMyMyIos5mCdaLBuvequZ5A0gjXfysx+urmw=; b=RKF0axWgHW6tdM
	8oZ9SOR+4HFcj6065OPQPaSxwsnfFBz2ffqO/2lytfQ/hP81LQ9a2fTRpzIwrnaDrAume01viagA9
	I4K7x/fqnd6yETtYjpps5ji1YZo0ddq9ehaaKSy/ywZMdb7TZ4ZM1ILnI9OK1XScvqEk040irlViE
	viKh+XTq+WtFoiUS4hAzZHBU/GpZrCwOk0b2KZNsSBwPBGrfkqcCKKLtppIlyPMRr3KUqUXy8DGrP
	d6kUwKW3ogoMfNjeabPdpBkduMM0uEobOyXCJYX0JvXlfb+Pp7xB1/YxztIvHUDOX0q/EVbCQ2lSD
	It0XmSRhICVgsXLU+lfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCb5K-0006RY-17; Fri, 13 Mar 2020 03:34:06 +0000
Received: from mail-eopbgr70047.outbound.protection.outlook.com ([40.107.7.47]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCb5B-0006R2-PE
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 03:33:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BQeVSZF1F1NT/7iBP1LKupVTYGtDvJwyHtQFoY3Y26hKl870Bi0b5ieFyvmu/e2ZjHgqE9Bmlo9pUQEHaLDgJjHsAQ9mUiUhQsYCqBwNak7fkw2J/MCf9Di8Ohp791FQ0wyrHqRqGPGLU550iRCzB5PSTcOES4Mf72Y0M/ERGSPgzMu81jOinLkTURiNLHR+ZVCaaljxjuJK9KOheAWtuwyHIIsaJLRb/w6rutu0uX3uwebmNzoDWcZk3r5P9m7Og8Y1Cbon4KCC4zaMoybm9t7vB6+mzvVb8YKiWvOsTpber2johcx9e1EEHIf4YoSDSqcI2IP7wISzz3TGX3Y2ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ESkbsp3iQ8ftsnrvkaXmzzB/wsyf0tNFrkz77dQOMek=;
 b=Uu6+2MTK1WhDmNW1gXEg+6vnV7dhWcer69pvK/mAzpPLPc1y8/I3+B06N9MH+1G3ktM5cQiZHKQ3IYgRIBQsYonXvg93/9B97GNpQ09W7CjdmASAO+b/3fHr7WpVGzriX7BFhmJvOSvsdkUYGwD+eq9JSPRAC3FZBxnp+5yoRx8BSoXQiZd88rzeEGYcOYgiTutJEnRFM4pjQrR8Jb9Czmv7PApIpsgwpW0fX6o5u+4+smVGAhNJYrdN/6qAyYKSaufH2c3AROhjpajiFlzSDjcNkbq7e3XOiRG+XYlAUOe72becPeWN+dmR0v+gpMJmqVQ4cB6nd9fbxWnTiJBI7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ESkbsp3iQ8ftsnrvkaXmzzB/wsyf0tNFrkz77dQOMek=;
 b=TN4a6n7A5UQgj7Kn2x3ZhmWU7nuWD4w+6bUgUm7zhzBXuZiaU8BD+w4OEZkzctPC5qBpGhfTyPgHgFx11Xn/h0qNgbMtBy4TXqZAsLnL24Zu0f+/o4wn5XbbZ+kBTX+SioX5UKT37qabhQea6BM6xGvPKuHbCN+iKMgHTSVDbXk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4979.eurprd04.prod.outlook.com (20.177.40.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Fri, 13 Mar 2020 03:33:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 03:33:54 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, sboyd@kernel.org, s.hauer@pengutronix.de,
 linus.walleij@linaro.org, arnd@arndb.de
Subject: [PATCH 0/3] imx: drop dependency on ARM64
Date: Fri, 13 Mar 2020 11:27:13 +0800
Message-Id: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0178.apcprd06.prod.outlook.com
 (2603:1096:1:1e::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0178.apcprd06.prod.outlook.com (2603:1096:1:1e::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.16 via Frontend Transport; Fri, 13 Mar 2020 03:33:49 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 31c984c1-8f8e-46fe-fc57-08d7c6ff5b1c
X-MS-TrafficTypeDiagnostic: AM0PR04MB4979:|AM0PR04MB4979:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB49790AC6C66C6ECCA263336788FA0@AM0PR04MB4979.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
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
X-Microsoft-Antispam-Message-Info: An9/yVWB/pYb0kRVDIU7KnbGIWmITIJ7zM0sybVvy/YiZH5o3Zur/3nYP0ddt7REnQTJWGlJXJqJQjEJVTgAcvFYDTJ4R574Mv05nVsqwdkfb2fSVH0HiWiVnf0+0Gqc8mQni6yKAgpzNbtWayyGCwemJ37bt8Lw1O8HzDnJkbbX+jJK5M3pw0QWTuLL20usy49maPZl9HZrUw9KP768Ipf5aChqpjoxdQfPkRfGSbNDysXrWbf7sbDSdKnto6PiFHVRmueZaUTfm+TTTC6MLUIpeXyvif0XQfVcSVxuY6yqy4WfPggXA96V95HRyu5UXmekCypAyINGULc1+ERy/JtGmzVHNS4rGgLo320kZIPgo63IVBe0agbFTuuqQndbFid7/w29wwbYrs+ISp4ojd/C1IEwMJGGQc1pFlpqmap6WU9odvzG91j+r4IMr5H9OwbKfEwsJ4IYNJFCb8aQ7ra/OCpumBwQkmUS/Wau6tqUKxBZMQe8JI/OeYgDHLcD
X-MS-Exchange-AntiSpam-MessageData: Hj66Awoan8s3FwLLL3JJ7uuEktji9EJuFTMfqxNHSmVRJ02IYTuvDVwYK/mlQxDjdE3mzG8MyM3jLxMZjWWuLssm9I5nTjxs0fpaqpbjqyhLAzUvaihzbjmFO2Q4xXK2fS0J4JtLuDfzKUmhSJ9zdA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31c984c1-8f8e-46fe-fc57-08d7c6ff5b1c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2020 03:33:54.6899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +vycYaJD3a7ShMSqAibo7xOszC3htH1DIbEONUWwmofiplNgrjwIEyhpx4H6bst7dv4qDD1HUBtWmLI0f7i0yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4979
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_203357_827232_39A652E4 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.47 listed in wl.mailspike.net]
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

It is possible to run aarch32 linux on aarch64 hardware, but
with the ARM64 dependency, we are not able to build those drivers
for ARM32.

Select ARM_GIC_V3 for i.MX8M is to enable the gic-v3 driver for i.MX8M

I did a basic boot test on i.MX8MM EVK board. A few ATF changes
to make psci smp work still needed.

Peng Fan (3):
  pinctrl: freescale: drop the dependency on ARM64 for i.MX8M
  clk: imx: drop the dependency on ARM64 for i.MX8M
  soc: imx: select ARM_GIC_V3 for i.MX8M

 drivers/clk/imx/Kconfig           | 8 ++++----
 drivers/pinctrl/freescale/Kconfig | 8 ++++----
 drivers/soc/imx/Kconfig           | 1 +
 3 files changed, 9 insertions(+), 8 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
