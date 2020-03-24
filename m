Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED49F190C80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 12:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oisTS656fLKscjLA1Ylc3nn0ChxDD4gVEG6D+0J6wAg=; b=Arp/NdwIVt3BNi
	uJM9rmYFtTlX4iPGpEN8amzujc7zYwh6SMoOicgSC3e5nUdpKeF2E2tVcFVjnVe7mpOCznL+LELQ5
	z/WNJP3LK6zCBByCiFOvFaQ764JPoYXQSNUEq2fdWf7knRZO9dOzPgzEjRA/Da6Gt8NKiuR2SYnfE
	VP8KvShidlAIGNZIl1a8aMblNvXK2S0FwtVHvP1v4VrSVsdz1MzS3f+O1wTzRBl7roIQ7NJaIg2Nh
	yQwbCswPjpgmismi2w7ly/yJkM/AbrmZVHU60tNG59vh58iqRLhl9x1t4tUx0P86vZ+M86pU/2BPo
	6s4m2zjjkmgKGUxAIQyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhlf-0005Id-MF; Tue, 24 Mar 2020 11:30:47 +0000
Received: from mail-eopbgr30067.outbound.protection.outlook.com ([40.107.3.67]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhlV-0005He-0N
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 11:30:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IE7mAxVlBdUGb8hfPnFbq4m+A+RedqiOgaiIGMhDPjlxxgeSJgx8081EgxJVx2aF+DIpoWhlMSQHkGGMvLbIqp90seOvlv2hbwcep759niOyI/OKFGylGQuRyvmteOqXPHu0k7eNDbF2B2MBea+204SlhWTndYvCvv61tkAJVLGEImJNkb9HkuUmMVuFAp9DRs8Fl9QYvJVK3AaYfTNsI9KbNIEXQzDYSngjGqs0yzJYVCHxELauBTFoIKl1DNf+Iy2LXc+HpGi5FAftFZOlZbBQA8vqJ5pX1+pwQULUJbNAup2ip5rYrRQVbPtFjCWcJfkQjUzUHxMa6UJeBNjF3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+UMe0Y7q2irq0c9yix5N5BFbGRWfXjPgXaDnCYKX2CU=;
 b=cDHjijyJTW20i15m6tfrgv+zzJ2ROIiPlU+B+ZktyrZ/dsf5Uy/WQRJK/kQ9qeE3GGdqohhppb/eQFTWz6X6EzwODMbYoeM1GjWX8hhA7v3K6YYo1mH0DO5QHrS+SGS12xa7678WUVYwYFMfVdy64Xz4FiwLoc/nth3HMxwSOa/RCHnf13g6zVTQZivN0ZdvHdqqhDhaUMQA3AxT1gj4szrJ4d5H5Jo68QNg2TBthW5OsW6+/4ibRAUZq/u4rwG8Afbsj97TWpQYSfmYM1rAeIdggdv5N6B0fTQzLQwJK8Y53EkoDV9ed97aKBgubuz/LnVupLSmbhjkD8AN0TD0nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+UMe0Y7q2irq0c9yix5N5BFbGRWfXjPgXaDnCYKX2CU=;
 b=cvRSU7PWX5/olLd0BRK9yYCNgw6/nBmfxS2tfq09/85l1eXVAmLOq4hcpDLTuOAue1dRr1oOfdnXWT1itbDeMqalviQXiFVuxjyEHqzmgEYzAlfFBAFUh91ZpeUeD5k1387ZVMheKugIAEo/IabmhV9uMekl8esxcZCPktIPa0k=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB6504.eurprd04.prod.outlook.com (20.179.246.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.22; Tue, 24 Mar 2020 11:30:34 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::dd71:5f33:1b21:cd9e%5]) with mapi id 15.20.2835.023; Tue, 24 Mar 2020
 11:30:34 +0000
From: laurentiu.tudor@nxp.com
To: robin.murphy@arm.com, lorenzo.pieralisi@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org
Subject: [RFC PATCH v2 1/4] bus: fsl-mc: add custom .dma_configure
 implementation
Date: Tue, 24 Mar 2020 13:30:20 +0200
Message-Id: <20200324113023.322-2-laurentiu.tudor@nxp.com>
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
 15.20.2835.18 via Frontend Transport; Tue, 24 Mar 2020 11:30:33 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 113c6542-ca49-4ff0-3693-08d7cfe6c47d
X-MS-TrafficTypeDiagnostic: AM6PR04MB6504:|AM6PR04MB6504:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB65040EA85AEFA6EE41D63B44ECF10@AM6PR04MB6504.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 03524FBD26
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(366004)(136003)(1076003)(86362001)(6666004)(6512007)(9686003)(6486002)(52116002)(5660300002)(66946007)(66476007)(478600001)(7416002)(66556008)(6506007)(8936002)(8676002)(81156014)(316002)(4326008)(26005)(36756003)(81166006)(956004)(2616005)(2906002)(16526019)(186003)(142923001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6504;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zuO7TC1tbRyfgPzk2Lz4b7MJAjg308r5MDAHrEnezRH/NMRAWREUn71daz5CTN88JZmkB+C2r3uH4MQuleZo5pV+iCnyCvrRP2QNPh9D8QxNwp3Ds/x6+XUZYZycwM4lsrbPQ9mXITHpN1Z4LXEUP/LXRkw4iYKqy3F1EWVQEQlxsoiysNudRPFIyvU0DcsvyaXXIyux7R8gQwfizXSKIiB+1uZPVBiMTsBgqKhUkDF1gUTdSIiUFIJQb80Ew8U4C9+tiBkr1BNaBu1b/U4sO7TtRy8CybNCNcWW4U8KT5ptk0eWVmXliKMTq5GOkmwvCh5lHicE83vW1kdjoEB7cJjN80P61As/y+cOpKflQLwxfsvG/qT7pCzaEMqjYCONzPsA0uQNERBw406m/ep8oIdrd3apisHOJEbY027RK2eQp54zd1SufVWWmqYZpHpN/UEBPVv+RzM69/lkmn0FuJ1V+ANDQnjupyonl+faQ9E=
X-MS-Exchange-AntiSpam-MessageData: ZYAUvX0tGYgY8Ye6QjBMglNR4IKPyV8H0o4kU8kdSz5IzswdpmHvPi11kFmcJDG8m9iTY2Uc9q3oM3D1Rqn0+qOefY8ygzmFfza/gwIwaTQpx6QyCBBSGtwgjgScXBo7iCq3HmvzHKUI0uujRqjsPw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 113c6542-ca49-4ff0-3693-08d7cfe6c47d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2020 11:30:34.4011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QVuxQYJF+VQrGme9eKX5AhkfJh1o2Niqv1jcCefaH5sIb713gJjmf0JJ/SNTsKlHZ6m6lxXIP7lTaRQaxcEHUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_043037_050058_36D7CF63 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The devices on this bus are not discovered by way of device tree
but by queries to the firmware. It makes little sense to trick the
generic of layer into thinking that these devices are of related so
that we can get our dma configuration. Instead of doing that, add
our custom dma configuration implementation.

Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
---
 drivers/bus/fsl-mc/fsl-mc-bus.c | 50 ++++++++++++++++++++++++++++++++-
 1 file changed, 49 insertions(+), 1 deletion(-)

diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index a0f8854acb3a..a3d25c1d4ff8 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -18,6 +18,7 @@
 #include <linux/bitops.h>
 #include <linux/msi.h>
 #include <linux/dma-mapping.h>
+#include <linux/iommu.h>
 
 #include "fsl-mc-private.h"
 
@@ -130,11 +131,58 @@ static int fsl_mc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
 static int fsl_mc_dma_configure(struct device *dev)
 {
 	struct device *dma_dev = dev;
+	struct iommu_fwspec *fwspec;
+	const struct iommu_ops *iommu_ops;
+	struct fsl_mc_device *mc_dev = to_fsl_mc_device(dev);
+	int ret;
+	u32 icid;
+
+	/* Skip DMA setup for devices that are not DMA masters */
+	if (dev->type == &fsl_mc_bus_dpmcp_type ||
+	    dev->type == &fsl_mc_bus_dpbp_type ||
+	    dev->type == &fsl_mc_bus_dpcon_type ||
+	    dev->type == &fsl_mc_bus_dpio_type)
+		return 0;
 
 	while (dev_is_fsl_mc(dma_dev))
 		dma_dev = dma_dev->parent;
 
-	return of_dma_configure(dev, dma_dev->of_node, 0);
+	fwspec = dev_iommu_fwspec_get(dma_dev);
+	if (!fwspec)
+		return -ENODEV;
+	iommu_ops = iommu_ops_from_fwnode(fwspec->iommu_fwnode);
+	if (!iommu_ops)
+		return -ENODEV;
+
+	ret = iommu_fwspec_init(dev, fwspec->iommu_fwnode, iommu_ops);
+	if (ret)
+		return ret;
+
+	if (iommu_ops->of_xlate) {
+		struct of_phandle_args iommu_spec = {
+			.np = fwspec->iommu_fwnode->dev->of_node,
+			.args[0] = mc_dev->icid,
+			.args_count = 1
+		};
+
+		ret = iommu_ops->of_xlate(dev, &iommu_spec);
+		if (ret) {
+			iommu_fwspec_free(dev);
+			return ret;
+		}
+	}
+
+	if (!device_iommu_mapped(dev)) {
+		ret = iommu_probe_device(dev);
+		if (ret) {
+			iommu_fwspec_free(dev);
+			return ret;
+		}
+	}
+
+	arch_setup_dma_ops(dev, 0, *dma_dev->dma_mask + 1, iommu_ops, true);
+
+	return 0;
 }
 
 static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
