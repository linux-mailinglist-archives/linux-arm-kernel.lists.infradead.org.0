Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47F21B8B45
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 04:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3w38M4jK9gjYkbq0SNaf+K/rCp28isAdVoqUbeGfXP0=; b=fCPr4fwLHWM8K9
	wlXtaWY+vZhwFCedwkyz567WctyH8hbG8cUN0+yY6YMFb2+57SKm3b0UqSFykW6d3hBT5RnY4kvSs
	ue429eox3VQKFNCh1pHI+EeJtHApabUFmmfX3FMujVm71V0qBO8yrA4qx7NgCUt2Yqe0NlVmu+5IS
	IOlh1mNw3/Q4wIMlKdI3hq18kNJ24FNtyHa0RRGxm+dYZYUbbEFJbZeBmaumIAvJcV7Zq0SJQbDcq
	/umSxJjK/9ITyJVSXAwLd7FzHLNGbQ1HTzHWJmcPSfESouQ79U4ZYA+sxrftf7//fU/m+mCJH8Y22
	Om1mO3yUeLyZ0fKByH+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSX27-0004Kr-D8; Sun, 26 Apr 2020 02:28:39 +0000
Received: from mail-bn8nam11olkn2054.outbound.protection.outlook.com
 ([40.92.20.54] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSX0z-0003ge-Uk
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 02:27:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j1ALIYNR+r8L3zoBeHOsIpIWiMnGgf+a+JL/JsXfViXEJ+iuVCeKRB1SwljqfGWn4YgC3mDZ4wxjA7qBlCpy8eaHKRJNMkylg5lDSaI58ZbOqF1drMFdTMaHXJjB23DRuEqoSe+YndM4/ofIJz4LUHwwUv3HYKyrj0snEGJdBLtXeLoGHkVmQvDLu3U40pP3tm0Uj4wuY8V9yggGC+eGq6fQSwOJphMbvSSwz4TjX8cMoM7Q0Tp5TZMz2c5FxuST58wDseHy/Zhe5sG1OlDWYZtJfVjgrzgIcRBU3kCfgp2vfwm1wId/QtRd8cvWe59XcuyHQ7bDHb0C7jlfBQeNmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FYG5JsFEnKGMhf5ZzJYDTjU+1+CCTZQpGobakOJ7jmo=;
 b=GLIK7LabzbH7wZ7xO80fW2ofB/iNzq3f96Gq9tBWqZ4rfjZ1bwbsOWW5i5+yldZDoZjc4kdkZkJjmqVrHS/JRwvFvFk5mTrKcxOtkHWpAHlJOmP5/8GlY//rQKWa8B4Yqf0ImfKdBVvYyjIsKsKQvaHxvYsAsuWOQEkIfxgkctrZTWux+1DiXR5WSfCyqDtT/SpT4yz5iYBdFJv2T6S9Drq7iSIq/71Vj8x24/h5E8JqYMLjwBGguNePt82b+7IIMJn76F66iXrGsjYHmMqeU6vknuJka8pceOPLL1Opgn3v6uWczdXFjHjIdC+NkN8LV8kpXeAPAVMXzlDL1M1R8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::4c) by
 DM6NAM11HT126.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::118)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 02:27:28 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc4d::4a) by DM6NAM11FT041.mail.protection.outlook.com
 (2a01:111:e400:fc4d::98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 02:27:28 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:AC5484BF1987E13A74F66DD3E8908075B8B61AB457AB9B28C727C2D99AA19FC5;
 UpperCasedChecksum:83C8C5955D66DF4B1DC3C6FC8278CD46458A2C85D4AA7DA9BDD2226F39D46E35;
 SizeAsReceived:7885; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 02:27:28 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kyungmin.park@samsung.com, s.nawrocki@samsung.com, mchehab@kernel.org,
 kgene@kernel.org, krzk@kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 04/11] media: exynos4-is: Correct missing entity function
 initialization
Date: Sat, 25 Apr 2020 19:26:43 -0700
Message-ID: <BN6PR04MB0660E680A4F69E3037D87E70A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426022650.10355-1-xc-racer2@live.ca>
References: <20200426022650.10355-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0086.namprd17.prod.outlook.com
 (2603:10b6:300:c2::24) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426022650.10355-5-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR17CA0086.namprd17.prod.outlook.com (2603:10b6:300:c2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Sun, 26 Apr 2020 02:27:26 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426022650.10355-5-xc-racer2@live.ca>
X-TMN: [hRAG4lJvWdX2ftofBKqA5ojw10PlQXUww80CuFNlK02D21XLeKC5mo/gnIL4TrCE]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: b3c4ea0f-a617-4209-7d31-08d7e9895d1e
X-MS-TrafficTypeDiagnostic: DM6NAM11HT126:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 28Xpl/YAbCbNsTBrMreqyfWwZCbZHrVopMs1nhOBcTmtfya01JWVLPAK6jHO448V9O3/klxZBV4d5qzBXhrJ0IzOXPnRf54bwF7C9wSpFRngwQnx5I1HBqmxENYkVcM7kK/pkRbciTWoyaqPQH1UQGYvOYv3X77zdbKK2PMXdI3xZBnKmYS25DrGLfEenVNn3n/2cx79eXnNTQfJWUfMdQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: L+8NB0yY7Pao1UE57PQFZOZpcVI1AuBBqK6/1e2BIPNbbWXa+v2T74w7CreMppbgR/kpe6RoV2FZHw/XpPFhR7RAur9GCVKF4F2m0cbfVxoZG5aCMX+rH9VXjviXURQqZfuJ3ECFpXAx9BPihvNCv9GubyU4C7gk3G9qyTUjEns+atuqjU7GUd0PSfuXEZjhu3f1NE2mMxhzF/lrH6GWtw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3c4ea0f-a617-4209-7d31-08d7e9895d1e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 02:27:28.1894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_192731_142036_E70CB854 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.20.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.20.54 listed in wl.mailspike.net]
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

Commit bae4500399c4 ("[media] exynos4-is: Add missing entity function
initialization") tried to suppress the warnings such as

s5p-fimc-md camera: Entity type for entity FIMC.0 was not initialized!

However, this didn't work in all cases.  Correct this by calling the set
function earlier.

Fixes: bae4500399c4 ("exynos4-is: Add missing entity function initialization")
Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 drivers/media/platform/exynos4-is/fimc-capture.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/exynos4-is/fimc-capture.c b/drivers/media/platform/exynos4-is/fimc-capture.c
index 705f182330ca..86c233e2f2c9 100644
--- a/drivers/media/platform/exynos4-is/fimc-capture.c
+++ b/drivers/media/platform/exynos4-is/fimc-capture.c
@@ -1799,7 +1799,6 @@ static int fimc_register_capture_device(struct fimc_dev *fimc,
 	vid_cap->wb_fmt.code = fmt->mbus_code;
 
 	vid_cap->vd_pad.flags = MEDIA_PAD_FL_SINK;
-	vfd->entity.function = MEDIA_ENT_F_PROC_VIDEO_SCALER;
 	ret = media_entity_pads_init(&vfd->entity, 1, &vid_cap->vd_pad);
 	if (ret)
 		goto err_free_ctx;
@@ -1898,6 +1897,7 @@ int fimc_initialize_capture_subdev(struct fimc_dev *fimc)
 		return ret;
 
 	sd->entity.ops = &fimc_sd_media_ops;
+	sd->entity.function = MEDIA_ENT_F_PROC_VIDEO_SCALER;
 	sd->internal_ops = &fimc_capture_sd_internal_ops;
 	v4l2_set_subdevdata(sd, fimc);
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
