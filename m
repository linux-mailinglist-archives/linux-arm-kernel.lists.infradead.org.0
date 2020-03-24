Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF3B190CAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 12:46:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4kCne4OzKBnmNYTwYmKyzUVSDXh4LmjCkjZzGUaS0M=; b=E19Nkpnn9/IF0D
	+TYrBzsfDNlcO+db4gPQOBWgNeCQ10A5Uj18QdDYxGMYbpLVYnP6sLdPt3Q/vKDZfwm18uS+P92Dp
	cSqnCe+iSNORzFpXkr6Rebg9c4PhXx8VcmVE5kU6KciLeh5CcxCgFC3yWVUwTsbMunIWpzQgIjkqm
	sHlfY0MNyTt8Iys0loBgI9LONrzNy3AMRqoAAMtepUxn01OwjRqtMcM4R5jX47HTZwBIPz6gjeEPt
	5qFKtnU4n39YSqXwMlYmJH1aDMhrNjollLcnBe/SV8iXfaewFnLeMSy0lBzdTM9toKrDBCMJkkzTM
	XmElqsuWkaI3pZpMW5bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGi0c-0003RZ-HA; Tue, 24 Mar 2020 11:46:14 +0000
Received: from mail-he1eur02on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::626]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGi0Q-0003Q5-R3
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 11:46:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nu6qHAModcbzc7GFiK8R7Y0JVcwZGpPEPBbMHgBHxJUCa4HOQ62cWPVBfDOpzyi2b6+8gYkqmG0pAV/qSXvaqPZ9BoW6ac19dHmGicB78K2Ev4r1CzB/R5eYKFWx5J9FKb3u/yIBl6P8qr4L1sWiI4HqifrJkCc+ITdIEKMRYclwYBYVCtd8HcnsqTNsXsHIPhp4Ys8MgtK3IFtBO0HlWYViDaDbJ4QVSuxqKhYoLp9w6EgBuSS4IeFl0zj0zmiYBJ1XcErs9LDV5AGCyG03bGJK4KoFMDgORh2TSCa6EDfG2bJ4vX290uPKwfQnPPbvOjnAAwsml8wpiy/0/7qFVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jLlmxo3F4Gx/ZLPQd1vZdy7uzn9E1hqWbQUmSJHTuto=;
 b=L5VKEDN4ufQRRTWbJMCFiDSTz/vjDVkYTKhuBO85sdRBurf1urykidcMsICHDPW+3sAleokomXgIQhpSRyMVcYJYaIqaVW74zDihJfmibHG4quvkUvwIk9HIe8q/JRM5leQRTpHV0OxkL4qZrSo/raNgrxBuGONe6kFeFUNllWnAyXvHWJnVqE2a1uSSps/aDGxOLP+ckwmO4V9V9VvYbaC/7lRPd1uheSyPQJcr/F2qgMr05h0ldbAY6WBp2NZkNwUKLJ66EZKJbTTQnJ6eI+Q19ylp/bFx9WrNQRqOWLv3JL3smd0jPk/gkpZGVnCT4FwnSXIlHS97QnVlcvTERg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jLlmxo3F4Gx/ZLPQd1vZdy7uzn9E1hqWbQUmSJHTuto=;
 b=LvZ2b4I1/uVU6wxK3XG1vSRwiAqHCCFl93Hb+2nB8swADLl04+B43FMijrBTwZ73LiIhyhUBmyXQvmsc104Fe3nJLyMPeeu0WRVBhrCZ6P+C/rkLIBnG6LzU4IM30eaIitbIPypu6mLVLDOIyQK/cMuMU2pho6CmE7ZNuuHErA4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB5960.eurprd04.prod.outlook.com (20.178.92.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.20; Tue, 24 Mar 2020 11:30:38 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e%5]) with mapi id 15.20.2835.023; Tue, 24 Mar 2020
 11:30:38 +0000
From: laurentiu.tudor@nxp.com
To: robin.murphy@arm.com, lorenzo.pieralisi@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org
Subject: [RFC PATCH v2 4/4] iommu/of: get rid of fsl-mc specific code
Date: Tue, 24 Mar 2020 13:30:23 +0200
Message-Id: <20200324113023.322-5-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324113023.322-1-laurentiu.tudor@nxp.com>
References: <20200324113023.322-1-laurentiu.tudor@nxp.com>
X-ClientProxiedBy: AM0PR06CA0036.eurprd06.prod.outlook.com
 (2603:10a6:208:ab::49) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-101.ea.freescale.net (89.37.124.34) by
 AM0PR06CA0036.eurprd06.prod.outlook.com (2603:10a6:208:ab::49) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18 via Frontend Transport; Tue, 24 Mar 2020 11:30:37 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c3835b02-cca2-4989-c465-08d7cfe6c6ba
X-MS-TrafficTypeDiagnostic: AM6PR04MB5960:|AM6PR04MB5960:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB5960544DCE02C73EB1CE0DE3ECF10@AM6PR04MB5960.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 03524FBD26
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(346002)(396003)(366004)(66476007)(6486002)(66556008)(66946007)(6512007)(2906002)(9686003)(478600001)(81166006)(8676002)(186003)(16526019)(81156014)(26005)(52116002)(8936002)(6506007)(1076003)(7416002)(2616005)(5660300002)(956004)(4326008)(6666004)(36756003)(86362001)(316002)(26583001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5960;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jprZlMPOlQpD9VWfoltab5EXeP6bdDQwY0YASstvjwzGpmJB7C9N0ISjKYV0W0htCwnHaxybkiBs7P+F/GCTRjx2JzxM2ysIJZolbgbQ8y6fUapT2Jy4nEcE29dB8NsEgjkSK8Omb0Y3VzBw0628yRTZU91iDLqvTPfvNbqGlRV7w74x5TGHXzhhf13wx6wl/SuNaUccO1AfIUCGDpQyEcIWEse2UgxU6UF1w6li8lQAY3YDKZPhgkGVZ99gJA0TW2F7FcmMznicD06iAXiKuvkZbPb7Qrcp8A2KkUPO5jQQkmPq1d3yNPckNbYRXdL5xPbmA1A5QeBCoApP5lmfjgzYjSPfIpWYJjZDCkOMLCyAApjwqYih5ZMYrWKIdYdefMmMvZBkET5E2uAZWpk7h8o9wt1fI7+tWQmNNQ4/PJxIGq0s0waDv65t9ZbUO3BXXbKxZ059fIrqPZpwPCUOAWOCiUTxgIycHzqQiOrkaYGsEKZev39PAQxxwdIbywoi
X-MS-Exchange-AntiSpam-MessageData: joCfkiIEpH/jZf9b5dOKaRl0IjWZal71mb2WT0Tm+6NPnBWMbbmHtKUFbbui1jLEhMtDrfEZnUPLsUg+SbxTSlrJ3sXKs+Zg4Q3rjJPvRIdqgnBfViCD2kaLSGdbBNrxYr6TytDfqtMBiofSstiFzw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3835b02-cca2-4989-c465-08d7cfe6c6ba
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2020 11:30:38.2059 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: whkgTZ+FC6C/qgiOtKb6moU+0rq7TWFJejOvJeAIQb6Nh0HU98S9DRUgCIWXa3fwSQ60wZpBhdL2v3c1SgpZWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_044602_878991_3B18A9DE 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:626 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: calvin.johnson@nxp.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 pankaj.bansal@nxp.com, diana.craciun@oss.nxp.com, jon@solid-run.com,
 jeremy.linton@arm.com, makarand.pawagi@nxp.com, cristian.sovaiala@nxp.com,
 V.Sethi@nxp.com, ioana.ciornei@nxp.com, tglx@linutronix.de,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, joro@8bytes.org,
 jason@lakedaemon.net, Stuart.Yoder@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laurentiu Tudor <laurentiu.tudor@nxp.com>

Changing the way we configure dma for fsl-mc devices allows
us to get rid of our fsl-mc specific code in the generic
of iommu code.

Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
---
 drivers/iommu/of_iommu.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 20738aacac89..332072ada474 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -15,7 +15,6 @@
 #include <linux/of_pci.h>
 #include <linux/pci.h>
 #include <linux/slab.h>
-#include <linux/fsl/mc.h>
 
 #define NO_IOMMU	1
 
@@ -139,23 +138,6 @@ static int of_pci_iommu_init(struct pci_dev *pdev, u16 alias, void *data)
 	return err;
 }
 
-static int of_fsl_mc_iommu_init(struct fsl_mc_device *mc_dev,
-				struct device_node *master_np)
-{
-	struct of_phandle_args iommu_spec = { .args_count = 1 };
-	int err;
-
-	err = of_map_rid(master_np, mc_dev->icid, "iommu-map",
-			 "iommu-map-mask", &iommu_spec.np,
-			 iommu_spec.args);
-	if (err)
-		return err == -ENODEV ? NO_IOMMU : err;
-
-	err = of_iommu_xlate(&mc_dev->dev, &iommu_spec);
-	of_node_put(iommu_spec.np);
-	return err;
-}
-
 const struct iommu_ops *of_iommu_configure(struct device *dev,
 					   struct device_node *master_np)
 {
@@ -188,8 +170,6 @@ const struct iommu_ops *of_iommu_configure(struct device *dev,
 		pci_request_acs();
 		err = pci_for_each_dma_alias(to_pci_dev(dev),
 					     of_pci_iommu_init, &info);
-	} else if (dev_is_fsl_mc(dev)) {
-		err = of_fsl_mc_iommu_init(to_fsl_mc_device(dev), master_np);
 	} else {
 		struct of_phandle_args iommu_spec;
 		int idx = 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
