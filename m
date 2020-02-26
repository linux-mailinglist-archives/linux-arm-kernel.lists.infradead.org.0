Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6243916F877
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 08:20:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6vTJ2w7x4iRBHQqIL4EbobZB7IqGKczPNoiKQpeJzI=; b=e0q2eW31HRmzon
	egVQzqv55DWDtm3c8LhmowlINnVFqKtqb9wgeJz+IvofkexEVmg0bMpFsSCbPF29MDauAUrL2/t8N
	zbBqFx45BzPkhChwtjsyba5TGG8powbYv7eOVoIlZTLCnqaCdKRCcjfe1h6H94nhtxccfIRezbxyv
	6vuFEiBwXE0rodpUAbHjYq0DOZHvnRVTnEhKdVAGeEgqJbYmQNe+wuHOmUVINA58UlPgwVqnCbA3T
	ZFWuQd9CYpiHEY/qYxL0ZDbcezpNEfFHSwiyH5xlVFX4NiCy5MDDwwMvf2U+sfk/X8G45U7ckeacV
	gsKvqIeiIFDuw9c4eedw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6qz0-00079x-9X; Wed, 26 Feb 2020 07:19:50 +0000
Received: from mail-eopbgr70080.outbound.protection.outlook.com ([40.107.7.80]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6qyH-0006I2-5K
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 07:19:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mWLHZSXfZ95QZ1JV3TFJgElHku8dmp7tl5+cB7soW2Gbp/KAPKAvOQ/q7ioXgSx2/61frRcnDmF2Qjm3XOUI5u+gy9//H3sczwjNVLtTAJhNN5qr57E+QLQP+hjIHrWYfp4qvpYcmg03n3ZXbBksJzyvTXwnnmvUhtU8T44jhkd7sbASmsWucf3/Fz+AjvWHsOg6iCkCaP+89/5UqJawZk0f86LXQk1vMu3KuromnlZ6h8oxz8MyKaWQRteL0QUAhO6CcgQtuqx5WPyn77kc4XIMjZwfVNYsp6whvnA/zqLvbH71BIeMmZuSNi4jJVU3GWP6mCj3TySg4WcG3Xdmpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XC0MEAqHS1tsa7WkXuPcbgeDBkAmtuvCfNhMyoLlzR0=;
 b=UbMWu4HCvQcd1SLGtyF4eesZNNP/A2DFhuFmd05GuujBFhftDUx2ds55pfoBV13bTieBJEGO5bnsuYnB6XAqk0eaZxepU+/DxQ7dL465lRKXrqS3sIP8fvl6bKjoYEgwfo/FEbTKeGyDEakePl7e6VneaqKfoA5jTBqqjIwpbsCYqnN6AMTiYHmBOvl8LTkq2ojulZ5JqWjeZ57HF3UlzuksmuQkLkjfjnxGpg0yx2OLDYo4e/PzVWCcBGR534I/bqGQ2kcaOJ9Y9KgHjKIHc+ao6KDoPlcjNvgrr8Qibi9Vn5sholRKT/V2lqGeq4ldCvY4iy7mCDw4NpnZIO/oDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XC0MEAqHS1tsa7WkXuPcbgeDBkAmtuvCfNhMyoLlzR0=;
 b=e6c6IicbFn09HlUS1+lGOXT2+IXDhEc8nRA4LAAKRTIwtvx/Zm5R3efImNnyS40W/FArGXUNVM+LiK0pVBHi1r0vzOBNgWXXuzgdLmOA+dkdL4JbsSqbZYRVc0xsOiV4Jd1pIAH1hK25ZwE8/Ka0/vByobtbIdsk5PIV+uibRuY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5506.eurprd04.prod.outlook.com (20.178.115.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Wed, 26 Feb 2020 07:19:01 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 07:19:01 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com, robh+dt@kernel.org, mark.rutland@arm.com,
 robh@kernel.org
Subject: [PATCH V3 2/2] firmware: arm_scmi: add smc/hvc transport
Date: Wed, 26 Feb 2020 15:12:51 +0800
Message-Id: <1582701171-26842-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582701171-26842-1-git-send-email-peng.fan@nxp.com>
References: <1582701171-26842-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0131.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::35) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0131.apcprd01.prod.exchangelabs.com (2603:1096:4:40::35) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2750.18 via Frontend
 Transport; Wed, 26 Feb 2020 07:18:58 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9b4cf32e-d208-47f0-66bc-08d7ba8c2746
X-MS-TrafficTypeDiagnostic: AM0PR04MB5506:|AM0PR04MB5506:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5506BE7F16979ABB88110B6D88EA0@AM0PR04MB5506.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(199004)(189003)(2906002)(6512007)(26005)(2616005)(16526019)(478600001)(8676002)(186003)(956004)(9686003)(8936002)(81156014)(6506007)(66946007)(66556008)(81166006)(6486002)(4326008)(7416002)(52116002)(36756003)(316002)(5660300002)(86362001)(66476007)(69590400006)(6666004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5506;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sa/UW5bntYAlpNrWRKKtNlDAYEeM0XNKV0dDYu/O5siu+WgaqWNtaJ6H+Bpgr550ut1djYX4Z2xU40gKYXYXnkTF6hUi4AwXx5LnLSwZ99jAEw/FcTPGovpjB5iqjwTUxvftgXz6e92Kaq1mXgbDGuWXobrDvR6ioCGvgOgy/l2wOqcEbSortAa2f9PgIbZz2ZKOY5WcJvx5mOejoMq1qHSboFHz76NHx+xQVLU8mvhLFi2qKZIJQIU/KlOaDHjYvJzel2Y8uZLgZEmYHo+vHLyz8aq7w7ZKS3DDccJQc0+N249+6lY2pOTRbFCBmU8zPgfq6CV7U9z1qESrZk4wH+lLl6SMExdpPLeY6s+zPakgYmzz1WYV5+XCN9ciW7BO+t1r1Rd+V/F2pLR+/0ub2DRRMb9DAYJgY/Lgdv422TUlqefDHcjMdKtBuFHMgm6E6rBfII7LH+CVu+hpbAO0KSc2KHDDYnYC9N6/tiqSgbotkp9IAEsXlSsahU5bdyqpUcEh1Uc4ptD3BD4nKn02HG6CHs2Jut1VFf2Vq0apgdc=
X-MS-Exchange-AntiSpam-MessageData: rMRkIGyzWfGt2semLJzeuYDZCTBjZpClVbM+CFOdt6PO0O1B7aErSbgAejBpSRP9qpo2vu0MW/m4ttCmLLQX50K0mPNaz9M/yEEAWC582lQ+ZSfMDBMR1/cDQs3QHTyjs/3EUVI3aASlnJwaq2MfVg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b4cf32e-d208-47f0-66bc-08d7ba8c2746
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 07:19:01.6735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B4p+Sf+orIfu38unY4xYdPiF4ZkfAiGy2WbagmFmMaCwMFk/dSP5fJhxYa814HumnI0Irk5notqmmQsldaojIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5506
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_231905_459166_FB33D860 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Take arm,smc-id as the 1st arg, and protocol id as the 2nd arg when
issuing SMC/HVC. Since we need protocol id, so add this parameter
to scmi_chan_info, then smc transport driver could directly use it.
There is no Rx, only Tx because of smc/hvc not support Rx.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/firmware/arm_scmi/Makefile |   2 +-
 drivers/firmware/arm_scmi/common.h |   3 +
 drivers/firmware/arm_scmi/driver.c |   2 +
 drivers/firmware/arm_scmi/smc.c    | 146 +++++++++++++++++++++++++++++++++++++
 4 files changed, 152 insertions(+), 1 deletion(-)
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
index 5ac06469b01c..8cf330809e9e 100644
--- a/drivers/firmware/arm_scmi/common.h
+++ b/drivers/firmware/arm_scmi/common.h
@@ -162,11 +162,13 @@ int scmi_base_protocol_init(struct scmi_handle *h);
  *	 channel
  * @handle: Pointer to SCMI entity handle
  * @transport_info: Transport layer related information
+ * @prot_id: The id of the protocol that will use this channel
  */
 struct scmi_chan_info {
 	struct device *dev;
 	struct scmi_handle *handle;
 	void *transport_info;
+	int prot_id;
 };
 
 /**
@@ -210,6 +212,7 @@ struct scmi_desc {
 };
 
 extern const struct scmi_desc scmi_mailbox_desc;
+extern const struct scmi_desc scmi_smc_desc;
 
 void scmi_rx_callback(struct scmi_chan_info *cinfo, u32 msg_hdr);
 void scmi_free_channel(struct scmi_chan_info *cinfo, struct idr *idr, int id);
diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index dbec767222e9..3715aecd0fc1 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -606,6 +606,7 @@ static int scmi_chan_setup(struct scmi_info *info, struct device *dev,
 		return ret;
 	}
 
+	cinfo->prot_id = prot_id;
 	cinfo->handle = &info->handle;
 	return 0;
 }
@@ -827,6 +828,7 @@ ATTRIBUTE_GROUPS(versions);
 /* Each compatible listed below must have descriptor associated with it */
 static const struct of_device_id scmi_of_match[] = {
 	{ .compatible = "arm,scmi", .data = &scmi_mailbox_desc },
+	{ .compatible = "arm,scmi-smc", .data = &scmi_smc_desc},
 	{ /* Sentinel */ },
 };
 
diff --git a/drivers/firmware/arm_scmi/smc.c b/drivers/firmware/arm_scmi/smc.c
new file mode 100644
index 000000000000..58d5f44fa77b
--- /dev/null
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -0,0 +1,146 @@
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
+ */
+
+struct scmi_smc {
+	struct scmi_chan_info *cinfo;
+	struct scmi_shared_mem __iomem *shmem;
+	u32 func_id;
+};
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
+	shmem_tx_prepare(scmi_info->shmem, xfer);
+
+	arm_smccc_1_1_invoke(scmi_info->func_id, cinfo->prot_id, 0, 0, 0,
+			     0, 0, 0, &res);
+	scmi_rx_callback(scmi_info->cinfo, shmem_read_header(scmi_info->shmem));
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
