Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5AF1B8B44
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 04:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/g/Bi4VWffS0sMQ/p3JJ1uzAgtUk8YIpIoDS2Dl796I=; b=oVb+LxK7sCwQ6V
	yuMVVPaR/zBpUmfSHUOFDpjHOLRB/LxhbbeBw9kDfPrFVV6inWolE1SDVvum+8CNVQCuwLSRK4Irc
	CLZkSeaVmLYt07f+mgpJkQzv3nycJdFai86erkckjyfbBoJDzZ2GQg3eHRqoaOk+nK/oJSp0i+C2c
	QcQsbe3VT2dFaV+tgGP1BYO/fmrjwrVg+ZE7iatYVkEQTuztPAiklvGwlBhRdNiPP5AtYUJ5/S5U+
	a4HCxECGQbDdfdX7rVTETfBuYl1mLathwCfzoFBGStC+IWbYw2ZdB6q1Pv0qzWfYWHNsGxZfj12n9
	FVqwMVXVq/BEAnlsc3aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSX1j-00045K-Fb; Sun, 26 Apr 2020 02:28:15 +0000
Received: from mail-co1nam11olkn2042.outbound.protection.outlook.com
 ([40.92.18.42] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSX0v-0003bu-82
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 02:27:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OWnsiCdyUzytcX4GrNtUcJGoqKvBfpgtEk2pnqi7BaoNP3nmS3fkEX5MDuBIjbuaVPHMEAyvhl/Uth4a/KstFh64/rPmv15mthsieqv3B1dpuTDG4pAUiPNvNgTnYj5yvkMs9/uK2Me54jAzg9b4j9zE4+z+jYdCNagsNLjVCnigEoWQ9xp2CdiTOJoaUusZhME96onu1P9cwJNgvSltan8E61rTzbDX1NPsCbLSDYC3Oj1podH9xuCSQCQNMKrKqltRT03d2qV5Q5cNZdd2dL1WqB1Zp+AWF796Sc1E3wkksYkub1jQysT8EUblZqHRVhdBe7bdKfUk9doC0ADmJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nSs294RsueSv8t3XwPH3w3458B4RooPL11xssljNUYU=;
 b=n4lcOn3kuCv6iSvKC/VR9tTWBwqv7wzNb3sf8Hlb4qFyCk36RWC5zFp/LPwgE8YU7nr6/V3RA+jbSKuNREuKw0YxJe5aejOeNvpb3Co/FBq9Qbr3wGyQSvZbIDoWzV/pK3nWjfmM4hbc2ghYlF5m/hAen23U2s/l5GBiQhqFB3ZCo/jnWKHYng0Rufxl6Fd+c+DZn0f6BbuiERuNebEtj7JWSB7mFO0WDwIBH9NBky302gtOm8VG/9EwlcEXI/Et5XoXmBobQgW8kPC5V85rLeqmBOj+kxqjHRF4fuMS2zSOUgzKAceGNaqvLyK1bBDgevUEFMZVsx3NSt6xS07qPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::51) by
 DM6NAM11HT254.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::152)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 02:27:23 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc4d::4a) by DM6NAM11FT041.mail.protection.outlook.com
 (2a01:111:e400:fc4d::98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 02:27:23 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:531B31765C167240FADAD33C2444280293575C44E3AA2CD8BEB47D2BFD6B721D;
 UpperCasedChecksum:382035105F016C51E8D78BD7EC922D9068D323520BD471630FCE1EAC17CCE74A;
 SizeAsReceived:7956; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 02:27:23 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kyungmin.park@samsung.com, s.nawrocki@samsung.com, mchehab@kernel.org,
 kgene@kernel.org, krzk@kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 02/11] media: exynos4-is: Request syscon only if ISP writeback
 is present
Date: Sat, 25 Apr 2020 19:26:41 -0700
Message-ID: <BN6PR04MB066006C199A43996C0502B62A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426022650.10355-1-xc-racer2@live.ca>
References: <20200426022650.10355-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0086.namprd17.prod.outlook.com
 (2603:10b6:300:c2::24) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426022650.10355-3-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR17CA0086.namprd17.prod.outlook.com (2603:10b6:300:c2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Sun, 26 Apr 2020 02:27:21 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426022650.10355-3-xc-racer2@live.ca>
X-TMN: [G7Cs4MM2yrwsmarBCCekGBrr73zkLHuucpIt+RpKrepKcQy9fHU6tvmtkdp/Egxy]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 420a6fac-6952-46ad-b221-08d7e9895a36
X-MS-TrafficTypeDiagnostic: DM6NAM11HT254:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 62/GSOfmLqQflkz9FXkbq35CipkjOYlc3CZH+XRgYPrm6oww5IzK4mosSsg0CXttynvgXLNjU8P0z4wVXEhK8YsfSG2f9VNg/yGFQl35G4CLLIxyTi403shc8/c0YGej4BBpUGwmK/gq5XzNOdv20RJrFByllTk3xVsaY//DH0k/Rz0jV5qHY9OUQzQgSZRI9V5a9aokLNXb/t5phKv26g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: wG+zfM+P8LZZQwjk07Bk/6RaKDXdAHoL2zfQl5j13+CT1itEhCarHPg6NjoB9/7qLoIKZS0eTeEhnEr2lrSoQF1M1UMTasjHkcsBWfCMlhA0Ehpfmol4TkJYOG/RTaVNmRRZz4PpptP4WuMWiFosJZJc9quo+r3Ly/pNm3GsRuYJrmEbNAD3gOKyGl9CdCyHbNuFLziLBu1PO7DAkIUzGA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 420a6fac-6952-46ad-b221-08d7e9895a36
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 02:27:23.3808 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT254
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_192725_311482_CC148141 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.18.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.18.42 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xc-racer2[at]live.ca]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [xc-racer2[at]live.ca]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jonathan Bakker <xc-racer2@live.ca>, Tomasz Figa <tomasz.figa@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tomasz Figa <tomasz.figa@gmail.com>

On FIMC variants which don't have writeback channel, there is no need to
access system registers. This patch makes the driver request sysreg
regmap conditionally depending on whether writeback is supported.

Signed-off-by: Tomasz Figa <tomasz.figa@gmail.com>
Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 drivers/media/platform/exynos4-is/fimc-core.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/exynos4-is/fimc-core.c b/drivers/media/platform/exynos4-is/fimc-core.c
index 2258f3bfc929..08d1f39a914c 100644
--- a/drivers/media/platform/exynos4-is/fimc-core.c
+++ b/drivers/media/platform/exynos4-is/fimc-core.c
@@ -954,9 +954,11 @@ static int fimc_probe(struct platform_device *pdev)
 	spin_lock_init(&fimc->slock);
 	mutex_init(&fimc->lock);
 
-	fimc->sysreg = fimc_get_sysreg_regmap(dev->of_node);
-	if (IS_ERR(fimc->sysreg))
-		return PTR_ERR(fimc->sysreg);
+	if (fimc->variant->has_isp_wb) {
+		fimc->sysreg = fimc_get_sysreg_regmap(dev->of_node);
+		if (IS_ERR(fimc->sysreg))
+			return PTR_ERR(fimc->sysreg);
+	}
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	fimc->regs = devm_ioremap_resource(dev, res);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
