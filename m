Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2436151953
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 12:12:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LdZQ1vKwELelQdNRBIQXmCZzNgCO1LlvRhbN9lUGZvc=; b=aXaLDCFhnkvzn0
	fk4q4Sllak/uYRDOBbzM046TBRJyKiZQHsxaTelz8cDndj2CTPRkNWa2G3LsHBNwGlzGwa6KW28Si
	4IlZMbomzlKuRF4gJ2p/I8aJ3iA3nwKYAke5otUNO/1Tvv2lPfaFstEdvzZOHPfcCgvDLwr42412r
	MXkRv1vQ1V0WVkpFxtgNhaIz65IL5MR4djWEvDfZBJ+Xw6PUI9oCgNxeQhnL1mis/lzdmZz8HvB3f
	rOIzCPdJaGvMcZgokGbjpuOGvEk0GtMCWm1qyBS2b/u2rbD/UBeLGxQBtrwvCEqJU2YpGAUOOgIfI
	K9g+Hd1wFmC0fG6Q4CDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyw7s-0006lt-Uy; Tue, 04 Feb 2020 11:12:16 +0000
Received: from mail-bgr052101128061.outbound.protection.outlook.com
 ([52.101.128.61] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyw7l-0006kl-DE
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 11:12:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vrd0k9gX7W0DdX8NeTCZCVmL4Q68TxrDFuVKMFtSzUVzSyIfLRciy6g/4b9xHLfQTeF26mexxaOCMXAxg168HebzMI9DeAQi/e4YhZfPg/TTRlsVSr4hVAQOTh3P/u9Ht94PTSx3B4eBEIENdB4xGQCfVPpfJH3qPSQbtotNXKVjIMjC0ocY1wndepZv8iyNp6FYWWChfZ63JK+LOArALeV04yF8da+b5L7K/hs4TJDwPlh4VjkfcJGpkeAw7ZeUvP1x53Fa4OI5AMsToBenm/bmXdWgR81kUKxSug7+tU7AUy0a8zRHcVGYadHrk3VCUfpVNAF8EVGNE9k+ixPBpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zkjPjzfDMgMB3/na1YLTKsGY9i8jue32k9z/pee5+lo=;
 b=kns7ubWaCWrjVGpQoX1u5gtjQPhYBH0suqCPrOCjVoSkDp0bFMfKgx2HCRSOZvihEArK+Htlz9QUQutqfjxLDgyqma61nHPeNUzutvOO2MfJJBq0IvD5c3XwC/3oZZrhtazmlLbfFSBlgPvu6wIzziBte26qb4Om164dCzuP4+iPyQ8jS/Vs+Xy6B7LHIO5y9RYlms/qlFrVMnFof1qS1b2CEf1IWV/ekpg8OsqJkSr5q7P9n8kGapV99/vVqB7NjO6nuLdxJRp7flzJ/7Zd1Pb+ouo2uOuP0XXMgqpzTRP3qVza+ww5Mm4WkWUKbADpqFkwhOD6p6Em2YImmV9/Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zkjPjzfDMgMB3/na1YLTKsGY9i8jue32k9z/pee5+lo=;
 b=U6GC4mSi6GqE7iYMFirjNNZXtz0ceTo/4K60QobErI/VJbfcCg8Xj5fqKhF4pDsbQj3drnXCZ0/R8+aywclTqkfz6zeAm6s9TrGL8BEvxlR2iejp++1mDNAOSGCMouW9JJzwQqiG/TFPS/O1gqH5IoXBprREOC5NNkGVoS1a464=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB7039.eurprd05.prod.outlook.com (20.181.33.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.29; Tue, 4 Feb 2020 11:11:58 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 11:11:58 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: devicetree@vger.kernel.org
Subject: [PATCH 0/6] Add Aster carrier board support for Colibri iMX7 CoM
Date: Tue,  4 Feb 2020 13:11:45 +0200
Message-Id: <20200204111151.3426090-1-oleksandr.suvorov@toradex.com>
X-Mailer: git-send-email 2.24.1
X-ClientProxiedBy: PR2P264CA0009.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::21)
 To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
Received: from localhost (194.105.145.90) by
 PR2P264CA0009.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.30 via Frontend Transport; Tue, 4 Feb 2020 11:11:58 +0000
X-Mailer: git-send-email 2.24.1
X-Originating-IP: [194.105.145.90]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 23c72aa3-c4d7-4618-8340-08d7a9630d2d
X-MS-TrafficTypeDiagnostic: VI1PR05MB7039:|VI1PR05MB7039:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB70392196B666E697F7BF0C13F9030@VI1PR05MB7039.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 03030B9493
X-Forefront-Antispam-Report: SFV:SPM;
 SFS:(10019020)(4636009)(346002)(136003)(39840400004)(366004)(376002)(396003)(189003)(199004)(186003)(66946007)(36756003)(478600001)(8676002)(81156014)(2906002)(81166006)(66476007)(6486002)(8936002)(5660300002)(66556008)(16526019)(1076003)(6666004)(956004)(44832011)(7416002)(4326008)(2616005)(54906003)(86362001)(6916009)(316002)(26005)(6496006)(52116002)(23200700001);
 DIR:OUT; SFP:1501; SCL:5; SRVR:VI1PR05MB7039;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; CAT:OSPM; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GgfMpO488fAngJz0IEUQ0ut22t30KmvHzGbe7xpxx81kpOFPrmyBwE4vvvv4gJ6m39IWT4QZ4B+C/Ebnoo/37ybIzzCF/yvGlzWAkKl//lp3dHfinXr5mDXiX8uPIkv5C2SsVeFsibUOYfzHcvQkfcP3qeCV+72nVoWGitqmFlNOQ0Dx87RPj1NJXza/7v0iAHFvy33uBSuSEUAhTzzvcKs9CGSv6bvlAC8mIYOPOViNGF2YHQ7EXN6g0783K99JSlNEbUjiP6gKVUcK5RMX7bWQUfsYBJcdp7YKrgzw/TnP6aC6tGyyrmrRvEW1YJIY8ir6RRY4KVv2OSLhmHd0rvAB4KjjRZVVcjviO10iJS365wvQfyLNgjpYkGAHzBzjIeh/W6StCC8P7ZKgXCEBMMvhrll+oPxOkAtmkxzWzAXhX/6G91La25jvc/4iGX45lcv1A3B3xpMg6QpmhlKtnpYBOHQzQHfKW12a4k38FGlFTkyqd832wyFcBK89aOcALgLTLOSPMRUFP+MFJQmlogWuPuf+x0ZkxuJWcPcRI/yKBvjVrw9IasddHS9rVG/fjgIS4bhiBz5HMqlbPW2W1Hhyy5J/QHurikyl74a6Rn7jK1YyxJp7G8V+3m2O0y4MtfV0tCwWHOzfcn5t6ukUgPdDq5kkwT9gRpSjbOFcfwl5zXO242FRHve2ptP/ux590WmmJMHCzUihgx1Q0iiULMCOV4s2jYj8F5RnbpPEZnnQwUAgUoqdjGs2l898xzOCamp2WBE3kQZYarjOkENy2A==
X-MS-Exchange-AntiSpam-MessageData: FN80g9++rnwkfOkTrqwwH9/lePvBdfuRv4gmur4VWTjuzsbjmd2kD5FsQ3NaaK8ib8q1+KitYP7el6CdBD97s466x7gR6Hi4VHogzhHtTk1SISViPEUA9Rfxy7qz/7PMGNWBh12IFOz9gWEih9Qdeg==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23c72aa3-c4d7-4618-8340-08d7a9630d2d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 11:11:58.6286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 107KJoy3vARzFekdd9/dbrzpBl5w1Tyr28VaclgapbdGTFhnaLSLD95pPDCC8c+iAr1zVvHvB8fIYLieW6yrOCPwyLJ8MDc1mIkXOmRgbiE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB7039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_031209_597811_A62FC677 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.101.128.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Chen <peter.chen@nxp.com>,
 Igor Opaniuk <igor.opaniuk@toradex.com>, Anson Huang <Anson.Huang@nxp.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Adam Ford <aford173@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This series adds devicetree for the Toradex Aster board along with
Toradex Computer on Module Colibri iMX7S/iMX7D.


Oleksandr Suvorov (6):
  ARM: dts: imx7-colibri: add alias for RTC
  ARM: dts: imx7-colibri: fix muxing of usbc_det pin
  ARM: dts: imx7-colibri: Convert to SPDX license tags for Colibri iMX7
  ARM: imx_v6_v7_defconfig: Enable TOUCHSCREEN_ATMEL_MXT
  ARM: imx_v6_v7_defconfig: Enable TOUCHSCREEN_AD7879
  ARM: dts: imx7-colibri: add support for Toradex Aster carrier board

 arch/arm/boot/dts/Makefile                    |   3 +
 arch/arm/boot/dts/imx7-colibri-aster.dtsi     | 191 ++++++++++++++++++
 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi   |  45 +----
 arch/arm/boot/dts/imx7-colibri.dtsi           |  51 +----
 arch/arm/boot/dts/imx7d-colibri-aster.dts     |  20 ++
 .../arm/boot/dts/imx7d-colibri-emmc-aster.dts |  20 ++
 arch/arm/boot/dts/imx7d-colibri-eval-v3.dts   |  40 +---
 arch/arm/boot/dts/imx7s-colibri-aster.dts     |  15 ++
 arch/arm/boot/dts/imx7s-colibri-eval-v3.dts   |  40 +---
 arch/arm/configs/imx_v6_v7_defconfig          |   3 +
 10 files changed, 272 insertions(+), 156 deletions(-)
 create mode 100644 arch/arm/boot/dts/imx7-colibri-aster.dtsi
 create mode 100644 arch/arm/boot/dts/imx7d-colibri-aster.dts
 create mode 100644 arch/arm/boot/dts/imx7d-colibri-emmc-aster.dts
 create mode 100644 arch/arm/boot/dts/imx7s-colibri-aster.dts

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
