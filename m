Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B259F1B8B38
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 04:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVdQK0SXSpisYIzPqDsPtexQRwT1UMLvGqpHIOGaomE=; b=ewlxepIsCf8m6y
	zq3HAx4KCcp/xaa++HdFXfO7yrRDbdpsLzi9fHzH7u6pGKOlctWiIsuEcf1uixlEDVXDbjBc4CC88
	K7kQ1fabs9DyrDDSDcqEn03wl/T3mjgoyijY5jbt1LEENHvrabY853ft2BkHj3guEQa90MQfe1QQB
	mbJbcUC6Fsmh0WACvmJtwuzXGkpRu9VqwSGlDRiLzQOl3YZCp3njlFtwemIotsj2tEbPadhoJxZr/
	mXXFNJX65t7BYBlatgYNA0lkCUgFVnQ0PdKilH4KIMTHFyxiAQye22iTt38SFD8LZmUpsztvGd7m9
	KNsW7iZlLYBg8mdWxqZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSX1R-0003ky-5g; Sun, 26 Apr 2020 02:27:57 +0000
Received: from mail-dm6nam11olkn2055.outbound.protection.outlook.com
 ([40.92.19.55] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSX0p-0003X2-H3
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 02:27:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KEpwuAZ7q1gwCfi3MC7HhXD6v1iG8QjK4R64W6IarBvwZ+MmPqzcq+vS1n+W+Oaqw1QMk4yCkLDL1GPepi+cL4v7rBw2Q24IMCY5alck8Clh3+P+n/xWzIlZwYgpOiWAsqCMpmre1TZGb6tgVKPQ92Xxm+nOHwZ2eBfKo4QXOPHNwibbDGPGocIrCk/q1Lg0z5vSYmCpt1aWC/HvgcbC6lcV7sValwAs3Yo0suMQMg4z5raxZvjkX4J6qcQVg4m7B8OGAT+p4KJ0+xeZs3WVo3ebfeeZuyKp+vSQmsb4+KN6NgyEv7i/25BCCRNsw1pBDihU0XYocU660clTIReyJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XeOJmF/n0c886MvuR/LRlCCUs8cOIpWLJMuZGS9ZSr8=;
 b=faUuYeYN5O/jHC9e0Fx2zy0eMly88eNlow7DTt55a4wWNzn04Nmo/TFmw4kfQrziCvyWV5NHFU59/QXwFRtAq8KgwaNEXIT7N1lI4l9LjdELSfJky7D08SwDgXY2CEW/5rT1HHB04OEayb6c0RGa0wlEyqU/tT3ga88jV2YJMbCXmv0Z9fi7CiWgnRcqqqluKcXuRlaMhT8OYMezhPKRF06AUWyr5/hThOGLdRVMYAypR+Q3KSJDwxccPT/b+ntfrMJ0P7Osrhi721wZWJVW/WGgej4nNRqpoGqB2aQYJGRjw3kcTqpagvsEUZYvA2EL1YTDz6M+gmX8ChKhuYyOUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::51) by
 DM6NAM11HT151.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::256)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 02:27:17 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc4d::4a) by DM6NAM11FT041.mail.protection.outlook.com
 (2a01:111:e400:fc4d::98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 02:27:17 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:90CBB64AEECE8E1305D1A943A2B9CF8161B11E79E131C91FBC70C33FC1754462;
 UpperCasedChecksum:5913E6A23E4CF9E8E78EEACA767C2A0E1FF79F96F3AA7EAF798A1ADDA001D690;
 SizeAsReceived:7890; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 02:27:17 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kyungmin.park@samsung.com, s.nawrocki@samsung.com, mchehab@kernel.org,
 kgene@kernel.org, krzk@kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 01/11] media: exynos4-is: Remove static driver data for
 S5PV210 FIMC variants
Date: Sat, 25 Apr 2020 19:26:40 -0700
Message-ID: <BN6PR04MB06603A626BB6D54D11CB502CA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426022650.10355-1-xc-racer2@live.ca>
References: <20200426022650.10355-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0086.namprd17.prod.outlook.com
 (2603:10b6:300:c2::24) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426022650.10355-2-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR17CA0086.namprd17.prod.outlook.com (2603:10b6:300:c2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Sun, 26 Apr 2020 02:27:15 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426022650.10355-2-xc-racer2@live.ca>
X-TMN: [JcSDRGh/6rwZxxa73J0KCNpDQXJted/ZX0yPeOwEcc+uL5vVAUC7bGlC3JahgGVn]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: cd9484ea-c853-4113-c3ca-08d7e98956aa
X-MS-TrafficTypeDiagnostic: DM6NAM11HT151:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7oV0MHdTa3UjRIzR4HSTkrHsl8oZU/7uUicrdb8nLbnmluVa34eD2bQ1PQjaMWC55eLpgTRBckYV4xWLbqeetrK4xlSTkyQq+CLIHivRbII08oCNCHfdIiICTo1IAAtmSUXdI5m2vmh/IcT65BjMvwtcwHKf4y6qY/6doRvhGKIs7O172XgXWvEs2UpKrwGRVvY7ss7zhplj1BewmhC4og==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: KJR8RcucXN7IPeoouH6S6CMs3CVSA+wD9k3/eaO0oHfavFqlYMyP0rueglEtTva5yFeMfJfA2dhn99mx0w1lUZNA+eVw29cvmzXaF+DmpKd45xOqOFeSuWCaGgncqHOkXiknr/U/gFS1iN8EA66HGYjCF7CLiyaa7cy+8ASuYpOaF5dicaxXw/q5VQloHL5NzbQpNt9zOBzsU+w7iAdVlA==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd9484ea-c853-4113-c3ca-08d7e98956aa
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 02:27:17.3626 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_192719_561800_DB933E24 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.19.55 listed in list.dnswl.org]
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
Cc: Jonathan Bakker <xc-racer2@live.ca>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The S5PV210 platform only supports device tree based booting
where the FIMC variant data is parsed directly from
the device tree, hence the now unused static data can be removed.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 drivers/media/platform/exynos4-is/fimc-core.c | 59 -------------------
 1 file changed, 59 deletions(-)

diff --git a/drivers/media/platform/exynos4-is/fimc-core.c b/drivers/media/platform/exynos4-is/fimc-core.c
index cde60fbb23a8..2258f3bfc929 100644
--- a/drivers/media/platform/exynos4-is/fimc-core.c
+++ b/drivers/media/platform/exynos4-is/fimc-core.c
@@ -1110,67 +1110,8 @@ static int fimc_remove(struct platform_device *pdev)
 	return 0;
 }
 
-/* Image pixel limits, similar across several FIMC HW revisions. */
-static const struct fimc_pix_limit s5p_pix_limit[4] = {
-	[0] = {
-		.scaler_en_w	= 3264,
-		.scaler_dis_w	= 8192,
-		.out_rot_en_w	= 1920,
-		.out_rot_dis_w	= 4224,
-	},
-	[1] = {
-		.scaler_en_w	= 4224,
-		.scaler_dis_w	= 8192,
-		.out_rot_en_w	= 1920,
-		.out_rot_dis_w	= 4224,
-	},
-	[2] = {
-		.scaler_en_w	= 1920,
-		.scaler_dis_w	= 8192,
-		.out_rot_en_w	= 1280,
-		.out_rot_dis_w	= 1920,
-	},
-};
-
-static const struct fimc_variant fimc0_variant_s5pv210 = {
-	.has_inp_rot	 = 1,
-	.has_out_rot	 = 1,
-	.has_cam_if	 = 1,
-	.min_inp_pixsize = 16,
-	.min_out_pixsize = 16,
-	.hor_offs_align	 = 8,
-	.min_vsize_align = 16,
-	.pix_limit	 = &s5p_pix_limit[1],
-};
-
-static const struct fimc_variant fimc1_variant_s5pv210 = {
-	.has_inp_rot	 = 1,
-	.has_out_rot	 = 1,
-	.has_cam_if	 = 1,
-	.has_mainscaler_ext = 1,
-	.min_inp_pixsize = 16,
-	.min_out_pixsize = 16,
-	.hor_offs_align	 = 1,
-	.min_vsize_align = 1,
-	.pix_limit	 = &s5p_pix_limit[2],
-};
-
-static const struct fimc_variant fimc2_variant_s5pv210 = {
-	.has_cam_if	 = 1,
-	.min_inp_pixsize = 16,
-	.min_out_pixsize = 16,
-	.hor_offs_align	 = 8,
-	.min_vsize_align = 16,
-	.pix_limit	 = &s5p_pix_limit[2],
-};
-
 /* S5PV210, S5PC110 */
 static const struct fimc_drvdata fimc_drvdata_s5pv210 = {
-	.variant = {
-		[0] = &fimc0_variant_s5pv210,
-		[1] = &fimc1_variant_s5pv210,
-		[2] = &fimc2_variant_s5pv210,
-	},
 	.num_entities	= 3,
 	.lclk_frequency	= 166000000UL,
 	.out_buf_count	= 4,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
