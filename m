Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1089154492
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 14:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSDJwTVgHXB84FugpQY6Z2NGbFeC4WGO5HQgwC1+zm4=; b=DEE5vr05VIuzVy
	08TrRWIh7dUi5e1wnLAP3CF+7VFML+atcfLkQqXFWoRBfACEV+biXSuU3SETqSCHrNQCrvIXdjOEJ
	C4tyjuyIaAEzuHJQU7fIsbnTBz+kgiBOYoXnns76+jHgz+j+1kWSf0ASEBJgSAfKp6M61wyA4Efec
	YK750dUYlkkUGnDzTxJhGpgKusLg0+4rzVcVfr8A3C/mt6I+7zy3TN8WMhHcS9QZkhdAofRQpby/s
	vOEg1i3VjwhoQHaEna0X4QrRwg8gm5SWqAXoU4VrFa+JxQF6sOTgPnDDkvqPkrXnPf+Qm0qcwx+YT
	2Eb3I/xib7UarmxxZBkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izgsW-0004Fp-ED; Thu, 06 Feb 2020 13:07:32 +0000
Received: from mail-db8eur05on2079.outbound.protection.outlook.com
 ([40.107.20.79] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izgrw-0003om-72
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 13:06:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mkmPpLO1z+7JKHceMSsuhgQl+2WjpQby7xoQnyqTDm0pWvo9XcPBINT5uAikKf8cSqUYyRIrviNweF1VHtzdMTHGgcy806VCD7M5V4TgPBkWX2mBuBWQYGB0IqKSmnGgvHKrRckgNiJt3wwrhY+8fJzxHco4v/xlOWSx2FsbMRp0ionTw+zDIncxHHqa7C6KTnijfwXgwcFIdYrfxUvVOarMG4CfOs1t/bFcLiA13KHNtvngdy+71oJGMcfVujrrWxYyfUwhSJgLcoVluJzcsnRbIfFA6uLdRbb5d8LGSojwrz/w/N7I9jyO4dNRMV5pmFf96qc9xnAD6p6ae2MO0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iotzgHbZD9ulvzIr8pJaQIA7otuy967+Ctx8fwyyszg=;
 b=hyW38Gjt4wPMiey8O963iowNmOl02a3Q0OvJ30GaE625Q28Vd42llskxz5xA2Up+NSn0GbZA8z+DhsI0YtVIY524RtbpDglvSekHr0O+e77hRjvOtVp7xdDN7/yDiby3MyrqyrR9tkmtaEaacFyG6+Ym8Q8Ctwh3u9pYqf4OoiwryIbaATgLBDRPiaqSaZt3GmeJ5PbL1KNdufxQw7wOz5sFYIBYN9A/6EqArH85HgJ0FuFdUThT4lhFPPQyN1yQRLaqIqjgv2Wm0xEVBnpurybpm+ju1qab7M31LYSjstBEvRCpSylsgl0oGLOFFp3tazUBCJc/766Rx90j7HNd0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iotzgHbZD9ulvzIr8pJaQIA7otuy967+Ctx8fwyyszg=;
 b=FShUL4ORArsVPwIZtVVGDZyh2hDOU8GfZmX36j/GaGI5BEAOuxl5mdbreippPN/5jrCBIBWKNBA3lRhhu/0RiSR+Sl2JRpet5tsEAv3tiLvKxscYL6/jjEZHZUyTuD1mBSBIlTsR96F9GPRkG+zg2+RghruZORyI0EsMNHlHsus=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4770.eurprd04.prod.outlook.com (20.177.41.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.32; Thu, 6 Feb 2020 13:06:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.020; Thu, 6 Feb 2020
 13:06:54 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com,
	robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH 2/2] firmware: arm_scmi: add smc/hvc transports
Date: Thu,  6 Feb 2020 21:01:26 +0800
Message-Id: <1580994086-17850-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR02CA0136.apcprd02.prod.outlook.com
 (2603:1096:202:16::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR02CA0136.apcprd02.prod.outlook.com (2603:1096:202:16::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2707.21 via Frontend Transport; Thu, 6 Feb 2020 13:06:50 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 66beea81-a4ee-46ac-6394-08d7ab056ffb
X-MS-TrafficTypeDiagnostic: AM0PR04MB4770:|AM0PR04MB4770:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4770AC93CE9FB88502222A15881D0@AM0PR04MB4770.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-Forefront-PRVS: 0305463112
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(189003)(199004)(86362001)(2616005)(956004)(36756003)(6486002)(6506007)(4326008)(6666004)(6512007)(9686003)(69590400006)(498600001)(26005)(186003)(16526019)(2906002)(66946007)(5660300002)(66476007)(52116002)(81166006)(81156014)(8676002)(8936002)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4770;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5/orxjnrtLCgOgHD4a0o9Vt7hqZmBRSY3xh6iTuCMe6FzOoehNfCl1D28KBowixTSOh0Ej5bsRQhFQwu1w/6U/suUe9tA9DvomhrggPAXhS4Smk6uQcsTlqHjhRWuh50JDpGbY8AQbn0iQ7Lmgl4loodLb4Ot8+i197H1+PMG+G/yy0rlWA4+7ssYClfnRwFiMmklMyDaeUIP68QCUea9QfZkOMpbZvrHAhNq7WSwpU4DZuLZhpEazTDCD2p4Gka4msUUD82cAYLN9Nl+dvFd49HW9GRgVtPIB0QZxnOe9b5O1YNwaAP8EPtJoV067S1F11X01u0CccfsSX1/WL2GVGr91Ck9XUoBhROJ3vCtAe1Okz921hCN+j2DfF40teszo7F9NMr3sNMqW054fFIQHIE2a5eLsLN3FbDS0I5/KLqtnQCKjTJURU85SnDJCXZ4RaA0l7BumrU38RSR9PA/u3RbjSE8lWCOIgO9z8S+HC7Hgu9No4a9sCkOLlpINVNvaZ+KROFG8HFd3fMOCvGQETNogFWBhAtezSKf2sn9jE=
X-MS-Exchange-AntiSpam-MessageData: qaU7TAe9Gx5TEMtLK9094Q2/s96QdsOVFWuGcX90bhIMjoEsCZ9n8s7/K5kltqe4SsE1Ohwjqii7BKpM9NdDt1VpFjDgVPbjr+cAzO+kasrs1hno9s1pBFv5IrU7cgNOu6nA99WNJ/KzX/dtxuNoDQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66beea81-a4ee-46ac-6394-08d7ab056ffb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2020 13:06:54.1784 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6c43rapjI4fbPLSB+ywngKForM1p5Q0vIOMf7S6VfsfW/gFzNOcNlKpacf6ZECEghVCkdLzdOMUJN3ptJ8B5eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_050656_289506_E02EF469 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 f.fainelli@gmail.com, viresh.kumar@linaro.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, andre.przywara@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add SCMI smc/hvc transports support.

Each protocol could have its own smc/hvc id, or share the same id.
There is no Rx, only Tx because of smc/hvc not support Rx.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/firmware/arm_scmi/Makefile |   2 +-
 drivers/firmware/arm_scmi/common.h |   1 +
 drivers/firmware/arm_scmi/driver.c |   1 +
 drivers/firmware/arm_scmi/smc.c    | 177 +++++++++++++++++++++++++++++++++++++
 4 files changed, 180 insertions(+), 1 deletion(-)
 create mode 100644 drivers/firmware/arm_scmi/smc.c

diff --git a/drivers/firmware/arm_scmi/Makefile b/drivers/firmware/arm_scmi/Makefile
index 6694d0d908d6..6b1b0d6c6d0e 100644
--- a/drivers/firmware/arm_scmi/Makefile
+++ b/drivers/firmware/arm_scmi/Makefile
@@ -2,6 +2,6 @@
 obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o scmi-transport.o
 scmi-bus-y = bus.o
 scmi-driver-y = driver.o
-scmi-transport-y = mailbox.o shmem.o
+scmi-transport-y = mailbox.o shmem.o smc.o
 scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
 obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o
diff --git a/drivers/firmware/arm_scmi/common.h b/drivers/firmware/arm_scmi/common.h
index 5df262a564a4..f9ff5cdb68be 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -207,6 +207,7 @@ struct scmi_desc {
 };
 
 extern const struct scmi_desc scmi_mailbox_desc;
+extern const struct scmi_desc scmi_smc_desc;
 
 void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr);
 void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id);
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index dbec767222e9..c759dd094374 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -827,6 +827,7 @@ ATTRIBUTE_GROUPS(versions);
 /* Each compatible listed below must have descriptor associated with it */
 static const struct of_device_id scmi_of_match[] = {
 	{ .compatible = "arm,scmi", .data = &scmi_mailbox_desc },
+	{ .compatible = "arm,scmi-smc", .data = &scmi_smc_desc },
 	{ /* Sentinel */ },
 };
 
diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
new file mode 100644
index 000000000000..4af0bbc4c827
--- /dev/null
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -0,0 +1,177 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * System Control and Management Interface (SCMI) Message SMC/HVC
+ * Transport driver
+ *
+ * Copyright 2020 NXP
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/slab.h>
+
+#include "common.h"
+
+/**
+ * struct scmi_smc - Structure representing a SCMI smc transport
+ *
+ * @cinfo: SCMI channel info
+ * @shmem: Transmit/Receive shared memory area
+ * @func_id: smc/hvc call function id
+ * @smc: Indicate it is smc channel or hvc channel
+ */
+
+struct scmi_smc {
+	struct scmi_chan_info *cinfo;
+	struct scmi_shared_mem __iomem *shmem;
+	u32 func_id;
+	bool smc;
+};
+
+#define client_to_scmi_smc(c) container_of(c, struct scmi_smc, cl)
+
+static bool smc_chan_available(struct device *dev, int idx)
+{
+	return true;
+}
+
+static int smc_chan_setup(struct scmi_chan_info *cinfo, struct device *dev,
+			  bool tx)
+{
+	struct device *cdev = cinfo->dev;
+	struct scmi_smc *scmi_info;
+	struct device_node *shmem;
+	resource_size_t size;
+	struct resource res;
+	u32 func_id;
+	int ret;
+
+	if (!tx)
+		return -ENODEV;
+
+	scmi_info = devm_kzalloc(dev, sizeof(*scmi_info), GFP_KERNEL);
+	if (!scmi_info)
+		return -ENOMEM;
+
+	shmem = of_parse_phandle(cdev->of_node, "shmem", 0);
+	if (!shmem)
+		shmem = of_parse_phandle(dev->of_node, "shmem", 0);
+	ret = of_address_to_resource(shmem, 0, &res);
+	of_node_put(shmem);
+	if (ret) {
+		dev_err(cdev, "failed to get SCMI Tx shared memory\n");
+		return ret;
+	}
+
+	size = resource_size(&res);
+	scmi_info->shmem = devm_ioremap(dev, res.start, size);
+	if (!scmi_info->shmem) {
+		dev_err(dev, "failed to ioremap SCMI Tx shared memory\n");
+		return -EADDRNOTAVAIL;
+	}
+
+	ret = of_property_read_u32(cdev->of_node, "arm,smc-id", &func_id);
+	if (ret)
+		ret = of_property_read_u32(dev->of_node, "arm,smc-id",
+					   &func_id);
+	if (!ret) {
+		scmi_info->smc = true;
+	} else {
+		ret = of_property_read_u32(cdev->of_node, "arm,hvc-id",
+					   &func_id);
+		if (ret)
+			ret = of_property_read_u32(dev->of_node,
+						   "arm,hvc-id",
+						   &func_id);
+
+		if (ret) {
+			dev_err(dev, "failed to get SCMI arm,smc/hvc_id\n");
+			return ret;
+		}
+		scmi_info->smc = false;
+	}
+
+	scmi_info->func_id = func_id;
+	scmi_info->cinfo = cinfo;
+	cinfo->transport_info = scmi_info;
+
+	iowrite32(BIT(0), &scmi_info->shmem->channel_status);
+
+	return 0;
+}
+
+static int smc_chan_free(int id, void *p, void *data)
+{
+	struct scmi_chan_info *cinfo = p;
+	struct scmi_smc *scmi_info = cinfo->transport_info;
+
+	cinfo->transport_info = NULL;
+	scmi_info->cinfo = NULL;
+
+	scmi_free_channel(cinfo, data, id);
+
+	return 0;
+}
+
+static int smc_send_message(struct scmi_chan_info *cinfo,
+			    struct scmi_xfer *xfer)
+{
+	struct scmi_smc *scmi_info = cinfo->transport_info;
+	struct arm_smccc_res res;
+	int ret;
+
+	shmem_tx_prepare(scmi_info->shmem, xfer);
+
+	if (scmi_info->smc)
+		arm_smccc_smc(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
+	else
+		arm_smccc_hvc(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
+
+	ret = res.a0;
+	if (ret > 0)
+		ret = 0;
+
+	scmi_rx_callback(scmi_info->cinfo, shmem_read_header(scmi_info->shmem));
+
+	return ret;
+}
+
+static void smc_mark_txdone(struct scmi_chan_info *cinfo, int ret)
+{
+}
+
+static void smc_fetch_response(struct scmi_chan_info *cinfo,
+			       struct scmi_xfer *xfer)
+{
+	struct scmi_smc *scmi_info = cinfo->transport_info;
+
+	shmem_fetch_response(scmi_info->shmem, xfer);
+}
+
+static bool
+smc_poll_done(struct scmi_chan_info *cinfo, struct scmi_xfer *xfer)
+{
+	struct scmi_smc *scmi_info = cinfo->transport_info;
+
+	return shmem_poll_done(scmi_info->shmem, xfer);
+}
+
+static struct scmi_transport_ops scmi_smc_ops = {
+	.chan_available = smc_chan_available,
+	.chan_setup = smc_chan_setup,
+	.chan_free = smc_chan_free,
+	.send_message = smc_send_message,
+	.mark_txdone = smc_mark_txdone,
+	.fetch_response = smc_fetch_response,
+	.poll_done = smc_poll_done,
+};
+
+const struct scmi_desc scmi_smc_desc = {
+	.ops = &scmi_smc_ops,
+	.max_rx_timeout_ms = 30,
+	.max_msg = 1,
+	.max_msg_size = 128,
+};
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
