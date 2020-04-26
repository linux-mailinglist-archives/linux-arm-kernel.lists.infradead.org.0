Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC151B8B4B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 04:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dH353j72ANPUNGtq4taW66pls/N1/DcCdLC57iVJoo4=; b=RM5IA3lDU/6l18
	zPvZhYHPQ3X4pc0U117jEwkd++NTx8kW+F5xT6/MxTS+uxZJXdBpsrBS/T1sNXFYF3lWJJVLOmy0Y
	z411G/DtMbBEfdwOjZ4TncpwmcdWixprVXpcEy+PYP4cTcfmMD92BsUayJmVMegKNPd1Ceie1WXNx
	JrsKsZ8Mw1S2USeK8M4LLRn6W5wBcZybPnpRf+BL1GZAx67uRTjWFQ797SZeLSOwclEbBYzzU2cJX
	6uTvTgCTWb69XIm2fSy78sUW54Ss58jS0Db1N8ptcQ4XY32wlWOLj8FT0llXYSI5/a30AFg2W3B5H
	MPOer1pXDcO7Uf62k3tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSX3N-0005Zc-JU; Sun, 26 Apr 2020 02:29:57 +0000
Received: from mail-dm6nam11olkn2103.outbound.protection.outlook.com
 ([40.92.19.103] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSX19-0003oI-Pf
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 02:27:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RGk0v/MSdl+ay/dJntrpSPMryP/VNJG5/5mydAhLwrei9d6q0G+bUFBaABjAXoeEhYyWNNKanv0alviPtvSv2sB1Kyft0L4uecTfHU+hICTlGTnUBOGy7CGfq11OsYYsDtMCyX45K2Vn1QTd2sOyu5FQQ88i8oq0wlzGZMxSPtb5VxWOl08QJRiASfL9deey+0jKlffO6Rcx0MPISgXQMLwQSfafG2z+Hehr82bshS0cr+6E5p7u7nkOct8cCaQETxNTdVNvq1Boa93UXhqVZBFjUyDy3UyIWhgS6KORYPoAjONbk1ocNspUHf72e5el1abwzVNrmYyHJqlD3QaEdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=STt9G9aXx2m0k28msa6mYVM4b3mtzWZVd+uMZo07GW0=;
 b=U2K0/7ItzMucNEm1sXZNlZ1S1TEIwixGsNgF2Oufotpyhvr/8mKvb/abQ6MkAY7dNtLgpwUj30jXO5rVcbXyUF8w6+0gmEImnVcCTfrrV1nGVe/zPWlb62Fzmym3ZzGmtQYYj6rAi5WOpjDFewnN3Tuko+Wl1odcZQndxw3pfDi8PEDnjQCzzStHzTg12z7vo5pyI7Yqz2rfCmMbd3FAEJmPHfyV7bJxlg/qMpIEGidP2HO3U6EZpTsdFRvpl1xjeK2SNlFNRS1B8f6F/IQ/9tXKcvJh4j+CadhqR4KDB4UCOZoCtykdaO7Up/O+sic9Gs865F43XqzYNVRlYy2YVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::51) by
 DM6NAM11HT151.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::256)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 02:27:39 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc4d::4a) by DM6NAM11FT041.mail.protection.outlook.com
 (2a01:111:e400:fc4d::98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 02:27:39 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:4FD81664749873874A955408E98F71844CD3138907C587078C21BC0CFAC8A793;
 UpperCasedChecksum:C7C7C8FC91D6C4604FFEE68296F27E0B9564CADC161B338CD800998F240F5B67;
 SizeAsReceived:7854; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 02:27:38 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kyungmin.park@samsung.com, s.nawrocki@samsung.com, mchehab@kernel.org,
 kgene@kernel.org, krzk@kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 08/11] media: exynos4-is: Remove inh_sensor_ctrls
Date: Sat, 25 Apr 2020 19:26:47 -0700
Message-ID: <BN6PR04MB0660F4263807BBE9EF1DA26BA3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426022650.10355-1-xc-racer2@live.ca>
References: <20200426022650.10355-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0086.namprd17.prod.outlook.com
 (2603:10b6:300:c2::24) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426022650.10355-9-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR17CA0086.namprd17.prod.outlook.com (2603:10b6:300:c2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Sun, 26 Apr 2020 02:27:37 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426022650.10355-9-xc-racer2@live.ca>
X-TMN: [afuhOH3yom0Mw3XhZEdhfLxKcXpi3s3HXLbveEKm2HRI/3tsD1YeFIPqARqgmx+5]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: d4528481-3f05-4eea-e604-08d7e9896388
X-MS-TrafficTypeDiagnostic: DM6NAM11HT151:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3QCJFZUQmBIndamlQZaN2HTn/K/NXESa4qSMm1qKSXUXQ6X2eBIrg6BMc+Q6JP1HI4bMeacNy7LbbJaKiLRIMS8K/SQTeRhoj9GhJcfNRP7UgAtQUXuoXDqKdYHR8i+paUW3I31gsvoDUOEulaK7+/Dwoum783/m0s6YE8uDsIE0TRfSq3o8/FPp3UUTz/pQgfdl9tLSY3ZFfd2Ebf/vgg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: +x/jkFwOmjSGlPmyxqc0XF981y4iZMwTv/xzZunV/CB+9i6xothNsLsbOTVObFQNUFK23G9Yd0AR18fWSpNIb0w6vhSHQLIdyv9YAVOkeDlhp4ph7iFvQY8PGKS5TywcaE8KlnKKQaYTGME9qbUdgaPOQY7FCDDVXezhRdibnYIsBjDk9nP5LaRosLcS91dpSAszSclGLOfKexZlmJo0rg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4528481-3f05-4eea-e604-08d7e9896388
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 02:27:38.9111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_192739_848175_9FA85DB8 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.19.103 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.19.103 listed in wl.mailspike.net]
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

This is a no-op as it is never set and is a remnant from non-DT days
that can be safely removed.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 drivers/media/platform/exynos4-is/fimc-capture.c | 13 +------------
 drivers/media/platform/exynos4-is/fimc-core.h    |  3 ---
 2 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/media/platform/exynos4-is/fimc-capture.c b/drivers/media/platform/exynos4-is/fimc-capture.c
index 86c233e2f2c9..95d4a667bffb 100644
--- a/drivers/media/platform/exynos4-is/fimc-capture.c
+++ b/drivers/media/platform/exynos4-is/fimc-capture.c
@@ -492,17 +492,6 @@ static int fimc_capture_open(struct file *file)
 
 		ret = fimc_pipeline_call(ve, open, &ve->vdev.entity, true);
 
-		if (ret == 0 && vc->user_subdev_api && vc->inh_sensor_ctrls) {
-			/*
-			 * Recreate controls of the the video node to drop
-			 * any controls inherited from the sensor subdev.
-			 */
-			fimc_ctrls_delete(vc->ctx);
-
-			ret = fimc_ctrls_create(vc->ctx);
-			if (ret == 0)
-				vc->inh_sensor_ctrls = false;
-		}
 		if (ret == 0)
 			ve->vdev.entity.use_count++;
 
@@ -1408,7 +1397,7 @@ static int fimc_link_setup(struct media_entity *entity,
 
 	vc->input = sd->grp_id;
 
-	if (vc->user_subdev_api || vc->inh_sensor_ctrls)
+	if (vc->user_subdev_api)
 		return 0;
 
 	/* Inherit V4L2 controls from the image sensor subdev. */
diff --git a/drivers/media/platform/exynos4-is/fimc-core.h b/drivers/media/platform/exynos4-is/fimc-core.h
index d130f664a60b..31f81bcb8483 100644
--- a/drivers/media/platform/exynos4-is/fimc-core.h
+++ b/drivers/media/platform/exynos4-is/fimc-core.h
@@ -299,8 +299,6 @@ struct fimc_m2m_device {
  * @input_index: input (camera sensor) index
  * @input: capture input type, grp_id of the attached subdev
  * @user_subdev_api: true if subdevs are not configured by the host driver
- * @inh_sensor_ctrls: a flag indicating v4l2 controls are inherited from
- *		      an image sensor subdev
  */
 struct fimc_vid_cap {
 	struct fimc_ctx			*ctx;
@@ -322,7 +320,6 @@ struct fimc_vid_cap {
 	int				input_index;
 	u32				input;
 	bool				user_subdev_api;
-	bool				inh_sensor_ctrls;
 };
 
 /**
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
