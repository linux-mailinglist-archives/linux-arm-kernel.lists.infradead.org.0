Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A51891B8B47
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 04:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+tiPavmiUYSxaC2U4NgyiPlW6NLzhWmNJoVgdOXj55k=; b=KZw5zB9QRNVLUJ
	JEs974vUCF73QG6pSl1Yy8tKO0sOVLe/GroSbF6YL0kQw0+URKGlPHm4GcNz+efe5u/6o3RoYVpe4
	SEUR2XbtiuTPKatfnLe2OLHlAJGF7XAEVo0TYwiStsQvoPjJvrY779htdSZRfIfsstnBqhSWygtiD
	ERJMBcA6M3uz5v9ApUbjT6mSkIAOqskqI3KP4MaDZbxM8M6EBm447E6zegry8b0+KMnWgGvLdeObO
	Qso7/wT+M4y/U0CUuLBED07EnMhfydE7QHWofomzSRpzBq0N7scYgOEG9/qFV3flCi1V0hJ511+8r
	vbbDBmoGBO8t0OxfrTKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSX2f-0004rJ-0j; Sun, 26 Apr 2020 02:29:13 +0000
Received: from mail-dm6nam11olkn2083.outbound.protection.outlook.com
 ([40.92.19.83] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSX14-0003jf-Ck
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 02:27:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ibZZ8xyalC4Bc9j4o/PO3tC8SlyudgwOQpfJiRfigiyrK+M47AZL5DTAW4dABug9ZCau/1LUU4TA5CGmxBaeCxLhQWLPNZ/ntH6iFcWHyc2BqLjB2YT1+Bl1h+tkv2h+pGUo7BHP5dwgjCxLSvjq9bTR3dnbfsHEgDpTY+OCjNE363RGjptUG0MGg59gg3K0ggG2PRKdVHceBQPTxvzJVR4HSOJDTXbatE/+m+afDp5SVA1+GNNAPpka2IztWppSrrTr8rcq3X05DBOiK56jw4R9JeuhUuQBG99dVKwC7Y0ZxaYuSoMGjXEk6i4zBi4+PZeIZlzBmltEavBOPcHRXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S7HPWS9yVfZrECj3MbRzVdpu2IcW9X8FLw2eD2WHE40=;
 b=drgVEY8lhzPwtKDaCZvtSbc5J4Pspt+hqErx8yhjObFBVOZMVaNo5Gc01vms6npotjm5n7vAN2+otkwuUdZyYQ+5Fb+YbzOhnAY3VQG/lgOUWdYbZLv2Mh9Vj3ZWgXz03OvYE17ulrAnhFRuv0+xAy0cdWWHhxe7jckF4HI0eE+mCSGUFQCCdhbeaaQLc5dFUqjiGRFgYvTG1X67J9CWIFo5McQVXdH/L0gPjEkTFWsD+XNrmyJbC2Z9p5wK5MDkex16QV6nVYjKy2aEkzZjA0n5zt1hqK+CxQw4RH4S/nCZJ2FsqEjQ8LGxipLbPfyJio/2jj8sZZ9WmST+8HQLtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::4b) by
 DM6NAM11HT199.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::127)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 02:27:32 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc4d::4a) by DM6NAM11FT041.mail.protection.outlook.com
 (2a01:111:e400:fc4d::98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 02:27:32 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:C76ACA014B7920A7393CA55B97D57A09B78F9CB0C784F082A0B00C645A33C6A0;
 UpperCasedChecksum:B9AFA0369D6928ACC76F972A634E107E46C0F7B2FB88533137F045E091DE5447;
 SizeAsReceived:7885; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 02:27:31 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kyungmin.park@samsung.com, s.nawrocki@samsung.com, mchehab@kernel.org,
 kgene@kernel.org, krzk@kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 05/11] media: exynos4-is: Improve support for sensors with
 multiple pads
Date: Sat, 25 Apr 2020 19:26:44 -0700
Message-ID: <BN6PR04MB06604D29C9F66EB53FB17581A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426022650.10355-1-xc-racer2@live.ca>
References: <20200426022650.10355-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0086.namprd17.prod.outlook.com
 (2603:10b6:300:c2::24) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426022650.10355-6-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR17CA0086.namprd17.prod.outlook.com (2603:10b6:300:c2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Sun, 26 Apr 2020 02:27:30 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426022650.10355-6-xc-racer2@live.ca>
X-TMN: [Rd0fLBUNqMrJxRoYi4/YUKVkOV912BbEjWmwcE+m4k03pO6ppF2jXFieZQ7FE/xG]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: cbdf9b99-f034-4e64-9646-08d7e9895f40
X-MS-TrafficTypeDiagnostic: DM6NAM11HT199:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o6EI7IFTyhCl/gXh+msQTEJr6g6tpj4qUvYF03zmhkbsyf9JvdREpz908ETSla2qJzPN0QC3AT6SfGokT9mfeEH0zIcIehlXmGvMvMHS+RfC08V7Au+/G3uuZTors1Nyx+SQpavmZUKiseYX+x6IddET6ATSb3Z8vniwcFu1MXxzCqn+xAIfF2+3q+8FeQl6krBHH+EGAKLIqzUSRfpNDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: ECfh7hbTvQzef7wqRFnOk3wzCyEsRZWrW8wqVROoH36F3l8u8phjYF0MPd8nPrxsQfKLo2rchQTVRwQkAjvXT4KKbhsOiS/pispiZY9TwsTUpvzJVjvTZLS693PDqtWcCGuiczWRfB/mUOno1SFg3YbgT/BwFB1QS9RjGOPprmSecDfvrjg+VKA7novQcaZDgJfilziKqXVyT8zarGqI6Q==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbdf9b99-f034-4e64-9646-08d7e9895f40
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 02:27:31.8502 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_192734_453153_39A76B4C 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.19.83 listed in list.dnswl.org]
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

Commit 1c9f5bd7cb8a ("[media] s5p-fimc: Add support for sensors with
multiple pads") caught the case where a sensor with multiple pads was
connected via CSIS, but missed the case where the sensor was directly
connected to the FIMC.

This still assumes that the last pad of a sensor is the source.

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 drivers/media/platform/exynos4-is/media-dev.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index 5c32abc7251b..b38445219c72 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -991,7 +991,8 @@ static int fimc_md_create_links(struct fimc_md *fmd)
 
 		case FIMC_BUS_TYPE_ITU_601...FIMC_BUS_TYPE_ITU_656:
 			source = &sensor->entity;
-			pad = 0;
+			/* Assume the last pad is the source */
+			pad = sensor->entity.num_pads - 1;
 			break;
 
 		default:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
