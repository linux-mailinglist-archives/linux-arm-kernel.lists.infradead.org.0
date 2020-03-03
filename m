Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5C8176A80
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 03:14:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hb0AcVceh6L4j1K2Xa3/fFjUmt/VmlU4R0k5Un3p3A0=; b=DoGHDLf9a/pNzD
	tRrwmCp/ijUEveOGlaHAUK74RmyDRTJESsSCKHTNuLOjsFWhFN2MOwBIzCpXa1yuDzkC4CIjR5fzw
	B6pRszOuk3aF2M+/uKX8i34cmhWJ0rxTlwlH9U87c0jNZ1PL+LkGOmY/LML9gJCQdSDU7DI0W/kEo
	ttzgXoSzr1SIqCYXEKO13tT2X74j7oIf3Jvt302WsrRf44BPT7Mzbhtr7TfM+ov2/Z6xqO/PtUPvs
	stirGluBgmngMd7Lwx/xwrUIGMY+2Y6bn3wVE1XE0TkOeSimCuBcxHnBUa4AUMF5Uj0X/PepSdUjr
	HgMe4o7W7Aqp927C89ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8x4J-0000F9-Q8; Tue, 03 Mar 2020 02:13:59 +0000
Received: from mail-eopbgr20088.outbound.protection.outlook.com ([40.107.2.88]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8x3e-0008BK-EJ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 02:13:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iQ0wInwxVc5zcpjkd2HCzssk3dXIMVyCRx+5Iheodg9kcdjgl+Ng7U0KIy0u0VvJOAATouWdYEmGyNWSbWjd+EkFe0PpyqPgqa4PL8R7on28P3pkoJoRq1fe0+Sxe3PfUNT9QwPLKAVRlzXRr+3hgtYZ/AjOK94Vvml+4xbpmFhb4bql90uOKbcVVax2NekE8zK5Gr11eOe4CePenSRAtptE48QjAllaNjJulM+Gy8yIvVGzJTwViCB7c/Stxqpi7D2qNpfvTraqXzXl95pBHZisRN7ZprVB/7VuxzE0vQy9WfszjbCJtPA+Kpz0Y8qTxi/SvPKVvFLgmg3UXg/RUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zZmNR0gSYmrqVD4fVT1KvyioIbTz1uvShpRVS6fx2Eo=;
 b=I4+jgM/vr1mmGWQJUXpQC9VhHWxrSldYzLr3PGyJB0ArcU/wIz2xJaLpxlf4RKax/zX9YKyXshqeP1mZlfYRsD68zYHvywiUkZ67SRpHpvrrlWx+0Q9463bDBNwtGIWOAmUUqQrjirAcmZIBu7gmACa+xH/nzlyyha79QtqA2MTidmQqMVJpw5l/Uu1zNq2QvrTwLCh3CRAvzMJDmJmJSnnol+KGGsrpqbAFIdjLQlkc6X4OEU5LsdGyADLWv1cXY9PnlztwaJciT8xem/TXex8+43rTJ9IJxKBR/HG5yb9d6lABdmyPZ3i00jxTnQ7YYC5aJ2SK98iU1skBNVwm7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zZmNR0gSYmrqVD4fVT1KvyioIbTz1uvShpRVS6fx2Eo=;
 b=OkwzfpPTKuGQSbgIx0foq2f4TyQ23Xf0xj4B+dldTZ7HdPKCdMXoDtAaWqlH7DUz+h6JR5b4K+SckdyrOXyUUI1/O3SusbIHyv7rqWNsOWP1WCVwy1Uuta8z56oPfLeU4MVd12zbZznZLrJA3GAII76vaRI9+hqhBZyqUzgWWH4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6946.eurprd04.prod.outlook.com (52.132.214.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.16; Tue, 3 Mar 2020 02:13:15 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 02:13:15 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com,
	robh+dt@kernel.org
Subject: [PATCH V4 2/2] firmware: arm_scmi: add smc/hvc transport
Date: Tue,  3 Mar 2020 10:06:59 +0800
Message-Id: <1583201219-15839-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583201219-15839-1-git-send-email-peng.fan@nxp.com>
References: <1583201219-15839-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0125.apcprd06.prod.outlook.com
 (2603:1096:1:1d::27) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0125.apcprd06.prod.outlook.com (2603:1096:1:1d::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.15 via Frontend Transport; Tue, 3 Mar 2020 02:13:12 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f7416a41-c093-4450-0265-08d7bf186ebf
X-MS-TrafficTypeDiagnostic: AM0PR04MB6946:|AM0PR04MB6946:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6946EBE398D7DCFB656C4B3C88E40@AM0PR04MB6946.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(366004)(346002)(39860400002)(199004)(189003)(4326008)(6486002)(478600001)(36756003)(6506007)(52116002)(86362001)(2906002)(8936002)(69590400007)(8676002)(6666004)(81156014)(81166006)(26005)(6512007)(316002)(9686003)(5660300002)(66946007)(66556008)(66476007)(16526019)(186003)(956004)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6946;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4eE0fbSn6cQfQJZ0/Hw9BsT6i8jfZpo6bHlAME45poT/2YTiHA15Rj6GA5WPMQgVRXAfknDntVWTpK/3rMbLYjEYK1anLv5WFILR71aVeKy2OR6BTRHMSGos16ena7SIfFuD/qM9Fa6Pv2yLskTi+Pp1VfSHeIH7U53jBFR6zYYiOGHrnsVdVDkLNxNBk/h4czbo/WUYOr8Dm0GRk8dpAkmdBPLOL9jKmqXGVDjQd4jvPMSnqGL0ZZmZOLcBSbas5Z2DYWmjc2gsSG7dAex7Qk/cIGj8i/ElkGj8a66nig/rVVZc7DRRCltMQ50Wo4t88VloojDunZOWHjPrW6ve6puDhKXB1f3zDcdi+Bu3TIm1j9LHgGoontu7QoalwM1z+4txaqBH25uMAr/ZBQMKLpnOFQH2KbxPSU1gyQ+utX9vlb4qugQOFQGOSOCmASZGcZdfl7U3L1i3Y/fW0LsEiJsC1slYLXNzN19cRF6PN/ox7x9oXiVhrZXQ1uMRX4+I
X-MS-Exchange-AntiSpam-MessageData: OnoTEKEFrV5m6k5Uk+TRFzkKiFVYlPwjzddsA6wYKzqdgKKHrvToPV77nzlEio4Pwz/NkX8N9mvgrhNrZt2NDo0z7bbO9R3r3WzMo3QV118xeW2j8YPGKe5Gsf+7RYGoy+n2PaBXRW9tybVoDB6Tfg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7416a41-c093-4450-0265-08d7bf186ebf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 02:13:15.7574 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bhfzw+5GQEZNW5UtnrxYZqLSptd5JvLP98/2Ck6dOUdu3SOtJxMbLNpHbPcLWU96aVX4CKBBySH+Bwkv8QivRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6946
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_181318_494981_900179B3 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/firmware/arm_scmi/smc.c    | 145 +++++++++++++++++++++++++++++++++++++
 4 files changed, 148 insertions(+), 1 deletion(-)
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
index 000000000000..88f91b68f297
--- /dev/null
+++ b/drivers/firmware/arm_scmi/smc.c
@@ -0,0 +1,145 @@
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
+	arm_smccc_1_1_invoke(scmi_info->func_id, 0, 0, 0, 0, 0, 0, 0, &res);
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
