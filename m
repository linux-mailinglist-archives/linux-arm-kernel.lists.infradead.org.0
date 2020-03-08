Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EB817D3E6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 14:32:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRm1snYAywTEatw2jseeTlvpaGGGSwxM8hZO4PTnci0=; b=kxOjdeXyM8lxHa
	BfSI/ZTwi8zRa4Kvj100UhyVzBYxoFv290hP8wm7AQNtdtnkkWE7H32D5ux9xMAI0JZxzzdpkh+TV
	AXUq4FRCycYRvXwEmJNXEDXYgrYPVbFFHyUb4vA6+LPi+BG4Oh+THakijEPZVHOKTjwCMgn1dxZXn
	CZaaBFVOdy5t8WuT/D9zU1a/tM860/pbAJWv9sckuBbmN5ZlEtxNxCIDQcGDwXOT/vDGUJpyJE8h6
	gtFBuvcJClVQhEy2LGaP7GvdxgYRKj+sh+Eak6priNTApgXnrqqUmaX8X0Cxi0v1h3YAkWVK8umaM
	gjEnmn62FwWGo7e/4Zcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAw28-0001WH-77; Sun, 08 Mar 2020 13:31:56 +0000
Received: from mail-eopbgr10070.outbound.protection.outlook.com ([40.107.1.70]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAw1Q-00011a-MQ
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 13:31:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mue+aJC0StCnuUq/AXrvJaZncxlwc+Y2AKnG9b6kKO2JBEe95oXeMis9GZmQRUmYxxYQ8xBYzhGJY7lfT82UO+xVCi0lVc2+V5+AMgvrcGQl/gCk1mcf6vmIu0+W7K4rAqkF+RdVfF97fEfD8RIDijuMZbnO/EKtde4GroS9uFGyMx0nPoPUvZcszRBZvyuxC8E+ptOsRERL/s7Uendx01zkVw12J/dzyV1HeFPoU399zNoXhOAuGCvIDKrlFBozgUNBBd+YlUvw2ww60NrAbgvEx26SMXlpIPLhh5HRAEk54PAbVhmXYdlw840cOAJyPmJyhLVpEgKMKKZsaV86Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cXHX2MtAryfb/y++IhNIyI5FmDd2LlmtusEMdRX0BFA=;
 b=afZCdV7VrtG4Jss9ZEAvQMLV6bAQ5Um5OLhykhnLxhA4e0yMCadqpFm7orj0wct6mynfaiyJQ678R/HHbwlQbMbRVPIsCXh6qT2Oobly/M8JtV7AR7/SIb4A03R7p2eEan6bFCy7k6+XTgMLAtlmYqD+RhRGsXPDiuE/qMOeVLpx5pzqp35linevEk1wXKGCBni1o1azb3O0LtUgahaSq9n0Ghf76hBBxIe6y/V75IL+hxhJkQ+m1aCnenPtr65f96yGS0FcIMD/zFRoVYc7gGndc45h9EF0L1fLBVgdUQ5KxThshceAwdVJmrMRJrZG/pgGGx96M8KLhBotzOMCdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cXHX2MtAryfb/y++IhNIyI5FmDd2LlmtusEMdRX0BFA=;
 b=djLmLpty0zPflx42YtHYpFzK3TvF/oqxuU8b7WbyEBNFrlf975W9yJ+kFozgTlu/pSYFf4SBhENspHwLQVHZLnnFiAouz4Ow3E4gET9OUgmFvmbkKHbpa4eGR7htkZSJLLGstas33iqJmi/47wLyFbWmJCSk55LNKHT2+aGLPPM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6275.eurprd04.prod.outlook.com (20.179.36.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Sun, 8 Mar 2020 13:31:10 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 13:31:10 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com,
	robh+dt@kernel.org
Subject: [PATCH V5 2/2] firmware: arm_scmi: add smc/hvc transport
Date: Sun,  8 Mar 2020 21:24:39 +0800
Message-Id: <1583673879-20714-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
References: <1583673879-20714-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0116.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0116.apcprd01.prod.exchangelabs.com (2603:1096:4:40::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2793.14 via Frontend
 Transport; Sun, 8 Mar 2020 13:31:07 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 80cda6e6-f553-48fc-3a32-08d7c364f68a
X-MS-TrafficTypeDiagnostic: AM0PR04MB6275:|AM0PR04MB6275:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6275CA614591ED1FD09FF40788E10@AM0PR04MB6275.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 03361FCC43
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(366004)(346002)(376002)(136003)(199004)(189003)(5660300002)(16526019)(186003)(2616005)(956004)(2906002)(4326008)(6506007)(6512007)(6666004)(9686003)(52116002)(66556008)(6486002)(81156014)(81166006)(86362001)(478600001)(8676002)(316002)(66946007)(66476007)(26005)(36756003)(69590400007)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6275;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qU6kXjNfFiLBL8id9RLRKmOg9/STbfLJKr6fJ3svxgcGIsbnkF/cEtAjGZ07bgZ0W2kxXF6jzml/Gp0ZLZ2BIZzuM0oIhkXJmId4a3/YjqWPsJ7g0atBMBzwnLZ/Am+gOvi9Khm+dQsG96YDety+JDzQ07HvFemXlUDviwmAVFS2cy+HskFe1RARmSX2uRlktKU4IioDpIQsSjBtHkIGC4CZpfPm6wxjBEy52l4Yk+V0ogZlg7FIdo0lUlY32RuKHrdDr3x7mYqAh9cenx7RuAy2uhg5q5JG1Ns+llOPEs5K1Ljo8MQOYCJTqXYbTvse3botEOWnQsYX8AJi3yJ6HQKP2ZfF5XH6CW81OfhHa0PRLuEV8VW04JA1g8aqwdd09RGnfF67a7VKAWSThRYTXrb3wLvQRvlJ5QN3uPbqSKzRVzVklo8ERl7LD3FtG6lIa91KbQnFbGKrKccIk0Chg6gUslLH4epVh+fN8NUcwyuWfH2VKX84YvUaogrTkSG8
X-MS-Exchange-AntiSpam-MessageData: jiLIqD8npSxqKI5BZF4sKg3SetXMMJ+Z121mcOKrsEkVRjlB70Aed5+nUByBTocBMiOohLanziOR/3diGwMwrtroxZlttwlaY1iIRhlaruJM+k7PqlBuJjQihhhONmVXeVvsH+U78AiUWXfuWKy1Ng==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80cda6e6-f553-48fc-3a32-08d7c364f68a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2020 13:31:10.7917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qYwwHUwFFDkV4gBoElqKcg2uRHp7LXd53wpn/XOPb1ZpZDmgnB4tHqT9HBWOY8H+fVSMA6C0fBDaFr04AhymHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6275
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_063112_781437_2552E0B5 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 f.fainelli@gmail.com, viresh.kumar@linaro.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Take arm,smc-id as the 1st arg, leave the other args as zero for now.
There is no Rx, only Tx because of smc/hvc not support Rx.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/firmware/arm_scmi/Makefile |   2 +-
 drivers/firmware/arm_scmi/common.h |   1 +
 drivers/firmware/arm_scmi/driver.c |   1 +
 drivers/firmware/arm_scmi/smc.c    | 152 +++++++++++++++++++++++++++++++++++++
 4 files changed, 155 insertions(+), 1 deletion(-)
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
index 5ac06469b01c..94fc2b2df940 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -210,6 +210,7 @@ struct scmi_desc {
 };
 
 extern const struct scmi_desc scmi_mailbox_desc;
+extern const struct scmi_desc scmi_smc_desc;
 
 void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr);
 void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id);
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index dbec767222e9..e76a3fab1074 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -827,6 +827,7 @@ ATTRIBUTE_GROUPS(versions);
 /* Each compatible listed below must have descriptor associated with it */
 static const struct of_device_id scmi_of_match[] = {
 	{ .compatible = "arm,scmi", .data = &scmi_mailbox_desc },
+	{ .compatible = "arm,scmi-smc", .data = &scmi_smc_desc},
 	{ /* Sentinel */ },
 };
 
diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
new file mode 100644
index 000000000000..336168e40f49
--- /dev/null
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -0,0 +1,152 @@
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
+#include <linux/mutex.h>
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
+ */
+
+struct scmi_smc {
+	struct scmi_chan_info *cinfo;
+	struct scmi_shared_mem __iomem *shmem;
+	u32 func_id;
+};
+
+static DEFINE_MUTEX(smc_mutex);
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
+	resource_size_t size;
+	struct resource res;
+	struct device_node *np;
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
+	np = of_parse_phandle(cdev->of_node, "shmem", 0);
+	if (!np)
+		np = of_parse_phandle(dev->of_node, "shmem", 0);
+	ret = of_address_to_resource(np, 0, &res);
+	of_node_put(np);
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
+	ret = of_property_read_u32(dev->of_node, "arm,smc-id", &func_id);
+	if (ret < 0)
+		return ret;
+
+	scmi_info->func_id = func_id;
+	scmi_info->cinfo = cinfo;
+	cinfo->transport_info = scmi_info;
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
+
+	mutex_lock(&smc_mutex);
+
+	shmem_tx_prepare(scmi_info->shmem, xfer);
+
+	arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
+	scmi_rx_callback(scmi_info->cinfo, shmem_read_header(scmi_info->shmem));
+
+	mutex_unlock(&smc_mutex);
+
+	return res.a0;
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
