Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EADB166CFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:39:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+EyrNxzi2QeARun+BQTZiXsky25mVzfxC4RvRVK12Y=; b=tvoXVmA6wPcxkq
	pPmjyrADQuKaAQaSjls/DLF3zunmcBc1nX3wCEeZwYR0J2a1CrvMCnZ/yGO7jjvmuG6qybtY3yVSl
	JU0jQnRCVaL9ty/pXJsrt9JE5MlXGerV0v5wCQB4kFuLpzkevZozCs1EHoBHC8P0da8qjlEjSn7wN
	Onfe8Qeehv1hilana1Jmwz70Zzl3jlGS7AONRlRm6AXKcEea2Bm1BmRPrdc4iMwIXxol3v+IG01YU
	qRj/fAsfOboQNc6NZB6ixCouvIgGO50FkWTbbWa8aiGHDT1eM3DmXjMmFkjo/zuNsK6L3DNhgd+Cs
	gL+ApGXvGibaJfagRbdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4yDi-0008F6-9Q; Fri, 21 Feb 2020 02:39:14 +0000
Received: from mail-eopbgr10073.outbound.protection.outlook.com ([40.107.1.73]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4yD0-0007l1-LE
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:38:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ljxrUqEqh9kIaQrVAwcOO2+UBdNO1TCVzL/NjYqeFcWCFjMG4VACn4I71KMAyKEuM1oi13rM96RgN/4ku4LDuta/5t+6KH1F0KDzXIPU9VdsDMrWZlpIwU8onkiH4y8FM7gM/Ed5+HgGGLNQfckEYr2eSvtldbZAT6iWoUAWYW88UvJzt6WzS50uSMQHdMk6sZqY+YucrlT6p28oMV8PbEmbx7KBLTrTEYyZ8ChfwwK7v5VhojTEV11Igz2JKw0sKi6E0/ZcbKim+4Z8Tvdd+vGIexL+BiBwM3AnpnYDk6kTZj1YwF9Ykw2yZ6AI6wbDUwu3S6qBgHZFT9fcXkwI1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2DoQ2c0wWcVtlw44EiO8dgJ20B75pVwEVOAPkPcH9fA=;
 b=kL/B9ktlTUWLSCX6ZRclBEjIUhmnvX/9YuD8L3zelJBB0X94CEJCpGN3lWWyOrdejbSNizKiZgfingDtHObauMzoi0yCNHfrs19DrvRoAxIlWdY4prqmDxrelE/8WLIVKrvY4ckH3zhjN2HPgchJopMZX9cjyDoGhjstZ3WaXNW7mZQFNR0vubjxueKfROxuSEWy2hQ3cDXIa0OA7GbiKdD7ks/FMsqmCq8GyM/Ic7YXAXtJDsKdAzPmNYQh8Fhx1X8Y9aqhhCKySNTtSUwjQ2TMySir3IL0zm9N0MfS6EAd/bUVwn4Dh8hbw4ktWizewyeR3klgsYd+AggMKf08Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2DoQ2c0wWcVtlw44EiO8dgJ20B75pVwEVOAPkPcH9fA=;
 b=CEjvtLoh/EMHqWVbWUIQ70d0tAkunLoJBL2jkCZ9wwZvoENv43VVceVQolc+40ZTsp/q54PwQOulvZBlWdZsxcNEc8e2nW9Jd3U9s4UxidvfjaOmhVB7ql5OBKvnDoIg2PfESGvsQuvHQBnK24x9t6o8zs0U6mct1UG1+6XwEm0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5281.eurprd04.prod.outlook.com (52.134.89.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Fri, 21 Feb 2020 02:38:28 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 02:38:28 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V5 2/2] soc: imx: increase build coverage for imx8m soc driver
Date: Fri, 21 Feb 2020 10:32:19 +0800
Message-Id: <1582252339-15733-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582252339-15733-1-git-send-email-peng.fan@nxp.com>
References: <1582252339-15733-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR04CA0057.apcprd04.prod.outlook.com
 (2603:1096:202:14::25) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0057.apcprd04.prod.outlook.com (2603:1096:202:14::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.17 via Frontend Transport; Fri, 21 Feb 2020 02:38:24 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2b1ced16-262c-4e7a-6bef-08d7b67721aa
X-MS-TrafficTypeDiagnostic: AM0PR04MB5281:|AM0PR04MB5281:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB528130FD3A798CD91947CD5888120@AM0PR04MB5281.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0320B28BE1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(366004)(346002)(39860400002)(189003)(199004)(2616005)(9686003)(26005)(4326008)(956004)(478600001)(6506007)(36756003)(5660300002)(6486002)(6512007)(16526019)(8676002)(86362001)(8936002)(6666004)(52116002)(69590400006)(2906002)(186003)(66946007)(81166006)(66556008)(81156014)(316002)(66476007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5281;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oyuM6WgTO29dWQRADM8WTrA54CT2USCYckef7YDa81NIPuOYK3Zz/fTuWJU0k6ffAEq4t6o5w/+v5Evu35XBX4a4QyWfczjIhtoVFKTN7mSY1CzGIf9OgtaLnUWzM9R2GAmhq6EzzETT2mDTpE/zV4n5CdYuKfmkTm/1HiZQ3TxW2koO50xXGOOy3sbDsUXSkNTjzkPA4rDMUO0I4e7tzNvvaKRjRS8PXDA6BKpwFk6rB4cc1SXFvYPpQdclfBTybXVViDhC1ImKPqBRPZrNwQrWrGGgUtviuZzxaZf19dvbX2gu+wW65999oVhsF+LzlFWl+kuQtpqDyIp0od8QNj663FvKj4yqSr06iPmOyB6XsYilU1F/PJCeR7yvN88hI8HmsZs7d18FFCQlrOS5X3nKMOdqRbQkendALYjFpU5AjQBEMsO5kKUyD7ze2WsJa/YHElBOUNwMIAfgZ7CpKMHpolUNDvzHfu64i8sTXr4URn4klE8ISYIgiQDRxFKIZMiOnT0Se5yPbX3b1kY3WLv24jaJboiM2aiABTe8iaEK4jf2DfWIdYtsd9fWxL0F
X-MS-Exchange-AntiSpam-MessageData: GiRT9MspXr3FcS8Yt1SUUPk+c4zWT3z4v4NJ14oK/V4F9H3ucF9aiHUbBvfrJa7L1AqMILpYAUkAfWyeIKN8k+6HQWkGlO5MXVgb+aCujkzob0b+Bh5UfwdGDW3E573s98Od/xATgfUTrCYYP+S4/Q==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b1ced16-262c-4e7a-6bef-08d7b67721aa
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2020 02:38:28.0343 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yrvTh/VooBOhReNdE4PjSBflCqjB7XV+d5je1yMZa7O04R5o3c0QOIJazfvt/Ln7XZvZhG6MWGXypUoOQVf8cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5281
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_183830_788615_E0876B42 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
 linux-kernel@vger.kernel.org, krzk@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, olof@lixom.net, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The soc-imx8.c driver is actually for i.MX8M family, so rename it
to soc-imx8m.c.

Use CONFIG_SOC_IMX8M as build gate, not CONFIG_ARCH_MXC, to control
whether build this driver, also make it possible for compile test.

Default set it to y for ARCH_MXC && ARM64

Signed-off-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/soc/Makefile                        | 2 +-
 drivers/soc/imx/Kconfig                     | 9 +++++++++
 drivers/soc/imx/Makefile                    | 2 +-
 drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} | 0
 4 files changed, 11 insertions(+), 2 deletions(-)
 rename drivers/soc/imx/{soc-imx8.c => soc-imx8m.c} (100%)

diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 8b49d782a1ab..a39f17cea376 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -11,7 +11,7 @@ obj-$(CONFIG_ARCH_DOVE)		+= dove/
 obj-$(CONFIG_MACH_DOVE)		+= dove/
 obj-y				+= fsl/
 obj-$(CONFIG_ARCH_GEMINI)	+= gemini/
-obj-$(CONFIG_ARCH_MXC)		+= imx/
+obj-y				+= imx/
 obj-$(CONFIG_ARCH_IXP4XX)	+= ixp4xx/
 obj-$(CONFIG_SOC_XWAY)		+= lantiq/
 obj-y				+= mediatek/
diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 0281ef9a1800..70019cefa617 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -17,4 +17,13 @@ config IMX_SCU_SOC
 	  Controller Unit SoC info module, it will provide the SoC info
 	  like SoC family, ID and revision etc.
 
+config SOC_IMX8M
+	bool "i.MX8M SoC family support"
+	depends on ARCH_MXC || COMPILE_TEST
+	default ARCH_MXC && ARM64
+	help
+	  If you say yes here you get support for the NXP i.MX8M family
+	  support, it will provide the SoC info like SoC family,
+	  ID and revision etc.
+
 endmenu
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
