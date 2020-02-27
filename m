Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E421C1714B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:06:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4kCne4OzKBnmNYTwYmKyzUVSDXh4LmjCkjZzGUaS0M=; b=D+8c6HFKm1PAqd
	j6ab/oPN1Lm5oNU1ZokYag02ZQDWyrga8W7gC20BFaRxRKLx9Sc18veEpc6N/7sHdr/t37u2tp9Co
	Wt8yrvTQP8XS15KEPaoiSaxZKZmfmkApgGjxWvZ14hkh9+ogxcBo8l4pc53Bgl5PGCyAN4nwMUQyg
	Tc/e/LWGLK9aVQViEzFsAsyJbjoSF8CySILk1m2vAGnvSOWoQ+x1lKgxQtQjPeocybclXNc0hH4MN
	0mr8LVBoA43PS1ygtB3RiMzXB9wHuZaAzHwSRO2XfBbX+qOyk4h64VeMIXq6w8e8MJZLB3XwYqrFe
	54EJ+VUOFG+gzegdgFWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7G3o-0005VX-D1; Thu, 27 Feb 2020 10:06:28 +0000
Received: from mail-eopbgr60064.outbound.protection.outlook.com ([40.107.6.64]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7G3L-0005Jv-Go
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 10:06:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ciJRW8Us6sUYaAeVtx1zg7ohx6rUnu10YWU2KFxG+y9IhJdLkRgDf+Rjfj25Qs83B0UUXBOg9/Y/MicOqCuE/6vF8KE4b2jjKf2IKJ4Daa95ln0r/z1iO0iQUEEWMLgEgoOA8CopBXgwZEDaYk1QK45kSiCqvcMVQr3ZWoDvJn8XbPpx4IPufvTm3Eq3CBe3uGZyBUCa3KLVPjOU7ykitw6mCOTnonSrVKicnIPY87XS9GsYTdip4uhAbM47XI0hORxkk15sx+uRwwC62YVFrSPe3I/Jjxq77dAKo56QHU3fkS0S5dvNHGrK7BPdvJckg66raQrcVrKzndN1HvMoFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jLlmxo3F4Gx/ZLPQd1vZdy7uzn9E1hqWbQUmSJHTuto=;
 b=je0AUJt9LqV/e2JL6lrZxf10H3VWonA46Mmbi3Ph4Ek1CWUD68sUWlmisfJj4+gjs8CrGRBoEkbmeVcksWifddrQ4sV9YJyfb91O0a6hPSOJmdTRQ3x09+j/YzuRlAm4Qzzrj+U6fgKZiBltj/979zhI4zkGhlljqbgN7v9I7TUCAonwzY1JBy7EuTVifPLVDb8oYymJc0CHdZTP/8rwVCCykHYAbXjQLfvGwdQdu+s3qaartmy0PDSaAc2Y+D96xMX2nxDX8RGd1x0ooGendCxKq7axFM/KC9FNIAUlasTOZYcZfZO4GRnd1APh5xDD05I5S4kdIl0GuFCHz4TcGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jLlmxo3F4Gx/ZLPQd1vZdy7uzn9E1hqWbQUmSJHTuto=;
 b=QQv44OYZWOSr3ebdR5+PzTJDK5pLjbLpMmPgyCZbKeiIRO0MgKSfB64WofDzK0qtFVS6RxSj2ryFDbL95qWVrwRKHx+aRZ+OwlWAzv+8z1uOIBp+GK9GbrF1rk/XeALk6Jf8tuzAOyOQs7D4kMS3KO96a1bTdrocNESBnMksetk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5878.eurprd04.prod.outlook.com (20.179.0.89) by
 AM6PR04MB4069.eurprd04.prod.outlook.com (52.135.165.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Thu, 27 Feb 2020 10:05:57 +0000
Received: from AM6PR04MB5878.eurprd04.prod.outlook.com
 ([fe80::bcef:1c59:7d27:d0e]) by AM6PR04MB5878.eurprd04.prod.outlook.com
 ([fe80::bcef:1c59:7d27:d0e%6]) with mapi id 15.20.2750.021; Thu, 27 Feb 2020
 10:05:57 +0000
From: laurentiu.tudor@nxp.com
To: linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org
Subject: [RFC PATCH 4/4] iommu/of: get rid of fsl-mc specific code
Date: Thu, 27 Feb 2020 12:05:42 +0200
Message-Id: <20200227100542.13819-4-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227100542.13819-1-laurentiu.tudor@nxp.com>
References: <20200227100542.13819-1-laurentiu.tudor@nxp.com>
X-ClientProxiedBy: AM6P192CA0056.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:82::33) To AM6PR04MB5878.eurprd04.prod.outlook.com
 (2603:10a6:20b:a2::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-101.ea.freescale.net (89.37.124.34) by
 AM6P192CA0056.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:82::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18 via Frontend Transport; Thu, 27 Feb 2020 10:05:55 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 52036203-d487-44d7-39f1-08d7bb6ca340
X-MS-TrafficTypeDiagnostic: AM6PR04MB4069:|AM6PR04MB4069:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB4069D4ACEF8C0AD0C8206CC6ECEB0@AM6PR04MB4069.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 03264AEA72
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(366004)(396003)(199004)(189003)(478600001)(26005)(16526019)(186003)(4326008)(2616005)(956004)(6666004)(1076003)(6486002)(52116002)(2906002)(86362001)(6506007)(81166006)(5660300002)(8676002)(66946007)(66556008)(66476007)(81156014)(8936002)(9686003)(6512007)(36756003)(316002)(7416002)(26583001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4069;
 H:AM6PR04MB5878.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E1mBzZx05xD5eiHnLiCkSACV+x45nCV1dT2ITTNJnH5dkoOYef3iAQ34+QaG0Pi2EBazmQGhmtrHjP8J/G1EG8XMbbAl0KSMc/JuuklZV5BgJV1jpz0IgdHFBnwN5HtTFVea58Ocjaf/r/PdSeuMnqK2XV8MXscc+Zb6CHWxRAzMlc7o4T2KbbnHWwNzlUtkW/81ZnzHEKjAaTzvU3nUODt+XoiOJPJY2plGI8FkskZD0X23aZEodVpmbavN1S4gvtySjLGD59FmzuCWsZCmkTBvXYdFSLXLwrO6IIipPEi6KyuJebbGQ6Ian0cXWMK8bFwKDQy2lmXTblQAh987o5pNlX4h2D2rOqF88at9zsRqMjMDhFDK458FX3rprIBkgIL8gSfx6QN70NmhfFkPzQ3hDaIUcm8y/YDjAXF80bfN+Ya9O5t34GRNi+a/MAp13sZqpWVIwczn6mKaYzvSluJq1R0Za/vbcRaWUYgYDZfzUf3DAjUp0e6X0CBu51Aq
X-MS-Exchange-AntiSpam-MessageData: +quKIS40JU+BkebzJKKIRLC8irz5mKI78HQEN0aUWWIgCb0c/2bHr1QDdRv/2OdTd1l4OeMeY7/fI9wV/NbAQM1WpMhc/wArYhqmWafBVLh1j43523hhiyIJbfO0jz5MPaaWDw4ESu2+dbyJdlRZjw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52036203-d487-44d7-39f1-08d7bb6ca340
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2020 10:05:56.7870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h9S2emav2JOVvH+ZrtxIDk0aA50T5BxZu+ITgTzYF/c4DwAO1TDHHsS66yVSV1h5E/59ubzzHWcbxfazr28fGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_020559_565391_C5C5B647 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: lorenzo.pieralisi@arm.com, calvin.johnson@nxp.com,
 ard.biesheuvel@linaro.org, maz@kernel.org, pankaj.bansal@nxp.com,
 diana.craciun@oss.nxp.com, jon@solid-run.com, jeremy.linton@arm.com,
 makarand.pawagi@nxp.com, cristian.sovaiala@nxp.com, V.Sethi@nxp.com,
 ioana.ciornei@nxp.com, tglx@linutronix.de,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, robin.murphy@arm.com,
 joro@8bytes.org, jason@lakedaemon.net, Stuart.Yoder@arm.com
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
