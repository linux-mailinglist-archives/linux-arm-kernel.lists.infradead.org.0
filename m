Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AFB1657A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 07:31:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+EyrNxzi2QeARun+BQTZiXsky25mVzfxC4RvRVK12Y=; b=L8vSsOTKODEuv+
	kQ6iuHZOGyaIZ+tgVzQQB4gK8V1dJ/7PXO2hBQTOz0ShexjPZNcLqWmB+G5Ut95hMuYQZsmSL7Opd
	X6BZJHovpLuqvhEEixL2QEkS56NV3PZ4pMn2qpCDAFotGlrxPxNS3ed7d4bWFMH46+LsYtJKQGPIu
	9+usibLBZM/WQZa3MrMtdFX9an9mVsdHwDdGCrAlGzfaMsgI5xBHvrpwfQk3WP7tLfq2IBDcYxztp
	y6kudYHSco5qa7RMcrwawMhfW6tJXgDepVz51nnwhVeDgSeA4io6W06B4OYay3OEX24ECHkWHzYTR
	/z1PFPZdhU+02FpdKRDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4fMU-00089a-Tt; Thu, 20 Feb 2020 06:31:02 +0000
Received: from mail-eopbgr40079.outbound.protection.outlook.com ([40.107.4.79]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4fLx-0007iR-FO
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 06:30:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MSl6TMNcIUKOAHxdA3znBJ7kskzpyRhkR3xdc2W+EclIyB28/JP9wbnbL9yaxzEmDLZQDelJNEf/H9ctuKE84TVJKQu/Xj6Qw66sPY00UEdIQA6Cx2aJdMv3HtaPYWtPwTNE+G0NGGO0OX4Zw2a1eNZz4iw3qSOEvriGV67Eu3py9bgCoKLxMrSozT2q4GDGiGWAQkRau6zzC+9YUPA9PhKE7xbOLflc3km/hfZhI7FFbpaQClvc92kpnv4dvfb8qNvvldQ+5+gCFw4CdXWBxCiCpBpIzX6D8vLmhIApJFEF+CZ74aEDq+qw/bYCAsW2TER9zQZcs1szY+mq1H3TCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2DoQ2c0wWcVtlw44EiO8dgJ20B75pVwEVOAPkPcH9fA=;
 b=NkeGw/oX0dcMfm0RgBOhdPOmtSYHGtpn+PgAHq2PgGG01cYvI2D0+QUjA4GhUPeq71F/Nki3TmIWuO40hUv0A+79GrKSzQbwEeBvi0MIWIh1bcJwHI4GP5yt2idxvdpPRyT7Ip5nQ1/p8XjtklElv6AXe//jN93gKE5agLhOXjSmktDB++dmJXq9VTAggm1IZRzuquuHx319Pfuzcr55R0OM4uORXtNO80l55traMP7o8WuxUO+1XJt5JEaZfWJVCfYXij2PYtsHwB0Hp027KcGjElslMUzZ3mSfDEnSeVpAyaea0Z+3lG4KL9Rv59PCGBO1gmu8xLmlsgvSVBVRHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2DoQ2c0wWcVtlw44EiO8dgJ20B75pVwEVOAPkPcH9fA=;
 b=DHbTLI7Z8bIM9Ctk8z/Tf5xTe/+kkGg+o82h+WiY9QqvudFMAr99LOzTnYY4mnjL7d/zqNbTsrLEhj4YXc7+NmTt+WLOaoIDHBeRxmx++NDMwiBXV1xVXaynFckUNJO7To7Hpei/Wz9puPaqS4ypEgr5xnIR6bBOZ5szvALVHEE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4860.eurprd04.prod.outlook.com (20.176.233.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.29; Thu, 20 Feb 2020 06:30:27 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::59e6:140:b2df:a5b0]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::59e6:140:b2df:a5b0%7]) with mapi id 15.20.2729.033; Thu, 20 Feb 2020
 06:30:27 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V4 2/2] soc: imx: increase build coverage for imx8m soc driver
Date: Thu, 20 Feb 2020 14:24:03 +0800
Message-Id: <1582179843-14375-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582179843-14375-1-git-send-email-peng.fan@nxp.com>
References: <1582179843-14375-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR02CA0133.apcprd02.prod.outlook.com
 (2603:1096:202:16::17) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR02CA0133.apcprd02.prod.outlook.com (2603:1096:202:16::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.18 via Frontend Transport; Thu, 20 Feb 2020 06:30:23 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 87f28521-a8a7-419e-e7dd-08d7b5ce5f8a
X-MS-TrafficTypeDiagnostic: DB7PR04MB4860:|DB7PR04MB4860:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB48607946E4DCEDA6456842A188130@DB7PR04MB4860.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 031996B7EF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(136003)(346002)(396003)(199004)(189003)(8936002)(6666004)(66946007)(66556008)(66476007)(81166006)(5660300002)(69590400006)(81156014)(8676002)(6486002)(9686003)(6512007)(4326008)(36756003)(478600001)(2906002)(86362001)(2616005)(16526019)(316002)(956004)(186003)(26005)(6506007)(52116002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4860;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RyZf88UBonv62gk8mOvjlhnDu3KyAX8ldpnEARUVrlQDa+ru3I5DBonPucyQBB5hNkwhntuhcd7yKnjGihKmm/s1ZcDFVrKLF0RHJgzwtjOAwLvW7Gj5hR3AU94BVBpJ221s8jXiYKwoPHi+nd4mRqbTmmwdNLUUOQVK5/Xls/qGeaJkyAPmn7ENT/RK6PqeSHyiUlxkJETDcQTaFTImdPMMfMRFApMgbht+b+9FBjlg6IrRkPSXwJ52tDfcGOtybCS9v9vr8yZtCLU3cfwKnod8VUwUCH7UPA/V3h7W7xchIRpQ+SWvd02kq+XXq0nyFIa4fYCOdMKzpcjdCr31Nx6m+dfgUPj8Jn/4CNk0qseugxbpmV5aYeKRKNac5Z1B/LnTajZbhSZbZCZyFdLZBsP+gjGTmAX8EoQm6SY0pFQlLHzaT+qIsUQF4bQTDFJ9iWC4fK3MeEECwvrWHtNIUhOshQYNstPcSk8l9m9LxokkiONKjc502Qu7RMT0Gn4ugYYLoL9AB7Z/HeVRm/eh1BXaZdU2kyf2VXjUAyYMhB+I6nqugVz9KIqnjfoO5ZMH
X-MS-Exchange-AntiSpam-MessageData: bPg24R6C5x3zwL9lQpAgNdSRZl3Ydtyn74tpgLaiiCNR6zWPfjioZqH4FiyBQu2S4kOzQGudQmphGWWnMPLSL7S+Vofpc3yBJfoOquzf372b5EKakLv+Tlvht/ndkiK510kF7Ts2qn87PQWR6q9LAg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87f28521-a8a7-419e-e7dd-08d7b5ce5f8a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2020 06:30:26.9182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AHDahOaHNROd1xiXUTXymQ9ggULmsEx+h7JHMTmuP227lrtasTNSdGLgdSIL/z9DzNV5F0oW5HOAE9vFLzIHzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4860
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_223029_550237_69CAD0EA 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
