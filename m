Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C131B8B46
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 04:28:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTX80U96iPWT5edJEBh+NiWILM48z/4QM77eF5xzuf8=; b=c82u1fAKQ31sfN
	0Jb5EnX7L6aofeECI5aiuyhXwNnFeddBh4ijI4s+ULJGbOSA/bSnAIGyLtDg9AX0jByKFiSjCL/CX
	3xw6rrh2bATF+K4Awg/OKdGAjEpJIefkAH4pIaJmNpkEBPmgM0lwI9c1q7ZDt50+qDq4cgnzQlOVN
	juHL4d7S+k/oYfTK0r8X9UH43O2ChGkjRgR+vwiw3czOqqg81Ml2w4tp3nHTc2+mm6dPHBnqdPnG7
	mR6UDRS2irUWi+VOzx+DTcOTYQZizhghwgdbxfcVxsvHD363xBekxITRUb2MYAV03aCG1c1QpEFVs
	8lWLCNj3MT7U90CvWd4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSX2L-0004cq-86; Sun, 26 Apr 2020 02:28:53 +0000
Received: from mail-bn8nam11olkn2034.outbound.protection.outlook.com
 ([40.92.20.34] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSX0x-0003eC-Fh
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 02:27:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mmJ/UlxEin9jdYPHq8Jjya8ZkO5zAaYIpu11W2wUZzaH65tv2Enn/vwAiQNDloKSgNbVQaNAZaYeFLRsYsdIK6Dtz4vjOwtnsZTvDfsry3O1YsPkYTG81ohyj2tC2XQVbcWlbNv2rgmqu62WiaWUvG1Ps1f4fKFTNhirhO2rQEYl+OnoRoV41FgV8Wrtw2viswY0LMQg8KVvsaoXsNzw4nUBgyiTubWlWd4WpG+q/Ozj50nm/v3ZLHKjaIZntqEcK+3s/9upuqlH432DkDyFO4joZioF0hN+SUq0q4vV8F6ZW4CPJTC39ysByYvC2q7rhGH9HQL0zY2aBnyB3M7KVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u4wkmj/wxZ2i5UZxxrWILZNeF0xG4EpXxRTegd2E8yo=;
 b=WZdH9vebkNGbFDYDktOP0HlUPbY4+G6eKbr9RxWTlqP6A+X02e4N6aZxTJD2tDf58TOvIDo2a/0nNMS5MTIjYItMJZQmh7eRtDRXwLaqzzvIeYJXWOHzG6rj9nkjF5SzfWklZpXeV0YEYDGMh6kceDcGIGyNqrZSUF7rOe3PD46+zTNz+teJz9/rFyHuoO0Xs2MhaLGmYrCuv1r7Sk+RwtQHuLfSEimLu9GOdrwfbuEKpm4ngBbOxhHcB0p9WTFKY6tl1qY8KvMBHjs4Lq3oKmz06GlJ++4SwBo7xcxUxO68a3rK0GaaTidDyD3+ccoatOkqIaM7rYEXmBFSoDACYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=live.ca; dmarc=pass action=none header.from=live.ca; dkim=pass
 header.d=live.ca; arc=none
Received: from DM6NAM11FT041.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::41) by
 DM6NAM11HT170.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::453)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 02:27:26 +0000
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 (2a01:111:e400:fc4d::4a) by DM6NAM11FT041.mail.protection.outlook.com
 (2a01:111:e400:fc4d::98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 02:27:26 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:AB033B3932857C383595B38E01CDE9F697CFB4BE730BA8C25BF9953349945493;
 UpperCasedChecksum:251F5DF023DF429DA512DA425D0E88BDE9F11A13FB4C6F152C139EA712CDA143;
 SizeAsReceived:7879; Count:50
Received: from BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc]) by BN6PR04MB0660.namprd04.prod.outlook.com
 ([fe80::ad10:4127:4bc8:76fc%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 02:27:25 +0000
From: Jonathan Bakker <xc-racer2@live.ca>
To: kyungmin.park@samsung.com, s.nawrocki@samsung.com, mchehab@kernel.org,
 kgene@kernel.org, krzk@kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 03/11] media: exynos4-is: Fix nullptr when no CSIS device
 present
Date: Sat, 25 Apr 2020 19:26:42 -0700
Message-ID: <BN6PR04MB0660EE7304C2BB2E603A8824A3AE0@BN6PR04MB0660.namprd04.prod.outlook.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426022650.10355-1-xc-racer2@live.ca>
References: <20200426022650.10355-1-xc-racer2@live.ca>
X-ClientProxiedBy: MWHPR17CA0086.namprd17.prod.outlook.com
 (2603:10b6:300:c2::24) To BN6PR04MB0660.namprd04.prod.outlook.com
 (2603:10b6:404:d9::21)
X-Microsoft-Original-Message-ID: <20200426022650.10355-4-xc-racer2@live.ca>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jon-hp-6570b.telus (2001:569:fb67:7300:9f89:4b96:de0b:cd14) by
 MWHPR17CA0086.namprd17.prod.outlook.com (2603:10b6:300:c2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Sun, 26 Apr 2020 02:27:24 +0000
X-Mailer: git-send-email 2.20.1
X-Microsoft-Original-Message-ID: <20200426022650.10355-4-xc-racer2@live.ca>
X-TMN: [1oJ+afvzna9c2PI4V+qf3tzhsALYZJsPTuQYln4YeTnVm2ibph30mZ41AhFs9ds6]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 50
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 745d7e3a-e422-41f6-26d8-08d7e9895bc3
X-MS-TrafficTypeDiagnostic: DM6NAM11HT170:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BD5GIXgC5fTuSlXRgvFnes52XLEgoIvphnju8820MXBY4FiCwh0/nr6GjAepqhZ39cU52mLVUrWw3+55dETSquwwooNFSEe5SvdQQwO/Dt6Kb+aQBUKPo9JCCyc2skLnSChTiCrsIEKBmbIqvhIlK4XzpABWScELsAyd0KN7yF1xc2tB2pLibriXZ3E3S8JebVR/FQEqlXLD9iUz0VtiEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR04MB0660.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: AD/vDXyJDCs6KsRNR4vhP4S5ZexxX/KeC42Mu0jnMvckXKPkUxfZuq2kuFhSl9gCT41KQ0EiIDnbh0H0UaH1kwy/L8nQNBd7phcDgv8IbJSSWtsPfivJlih0ldYQ1P5bOs/b+jIb+BoUbEwJT0yo/AUZ67ENcXL1bC2yl+hjsceXa9cvQepfoiUlk1NlA3U4HytWdrlqldrupZtpaJAy2Q==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 745d7e3a-e422-41f6-26d8-08d7e9895bc3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 02:27:25.8751 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_192727_599292_DA9EBF89 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.20.34 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.20.34 listed in wl.mailspike.net]
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

Not all devices use the CSIS device, some may use the FIMC directly in
which case the CSIS device isn't registered.  This leads to a nullptr
exception when starting the stream as the CSIS device is always
referenced.  Instead, if getting the CSIS device fails, try getting the
FIMC directly to check if we are using the subdev API

Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
---
 drivers/media/platform/exynos4-is/media-dev.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index 9aaf3b8060d5..5c32abc7251b 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -289,11 +289,26 @@ static int __fimc_pipeline_s_stream(struct exynos_media_pipeline *ep, bool on)
 		{ IDX_CSIS, IDX_FLITE, IDX_FIMC, IDX_SENSOR, IDX_IS_ISP },
 	};
 	struct fimc_pipeline *p = to_fimc_pipeline(ep);
-	struct fimc_md *fmd = entity_to_fimc_mdev(&p->subdevs[IDX_CSIS]->entity);
 	enum fimc_subdev_index sd_id;
 	int i, ret = 0;
 
 	if (p->subdevs[IDX_SENSOR] == NULL) {
+		struct fimc_md *fmd;
+		struct v4l2_subdev *sd = p->subdevs[IDX_CSIS];
+
+		if (!sd)
+			sd = p->subdevs[IDX_FIMC];
+
+		if (!sd) {
+			/*
+			 * If neither CSIS nor FIMC was set up,
+			 * it's impossible to have any sensors
+			 */
+			return -ENODEV;
+		}
+
+		fmd = entity_to_fimc_mdev(&sd->entity);
+
 		if (!fmd->user_subdev_api) {
 			/*
 			 * Sensor must be already discovered if we
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
