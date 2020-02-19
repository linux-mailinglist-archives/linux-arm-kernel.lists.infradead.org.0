Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00177163DD8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:39:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLXRNWcwox5ldRf5Wlc11Slp9b1g5O3RX8gPOcillM4=; b=axQFyFiEGLXTxU
	eFIqN6yPz6bqO4F+RXEPxqbNIYZ2iYydkxxEhL+2s+6AOc+7LWp8j7x1RgaAfaiEfl/AF+CC9s2UB
	1lCUNeAcbF6ieb6iz8qQJSmY0gpRSmxEh7ProU4akZGXm/Qv+KSNqLulEFAj6csNUWVnN254vk3Pz
	9eE2ZsFATYctZlcPibN7Y2XUM7SBsSVGRyCrf2bKSlQlFJfD2CftVvwlPOR5odvSsalFkb3DswrcT
	raMEyBXk9TYE/yj4501yYE//cjye+8CpqbFbje9tDbcIfpTqodm/vjfCi+CFaES6cNmOLc75E8GmB
	GR79FokuhCSp4qk8H+UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Jx7-0004ok-Ms; Wed, 19 Feb 2020 07:39:25 +0000
Received: from mail-eopbgr00088.outbound.protection.outlook.com ([40.107.0.88]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Js3-0007Lu-Oj
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m7EMigLF10c36QzSn79YrTrcbF6cZ6Ri5fPiAz2GTaVo/7B2dfZVP/4wcojnJ2iir9qyzYWPxdxxe++sBwxM4uOH7zqIs9l7HBkAHDdWVGJmX1r9ywlj9rN7VpWvHr2R1sbERvxARKZkj2qRXbi04l8R3DM8/XIZ+4RzxOePKji1yTNSM4VQJ5VivVPMq6P56SL8WOF27f9qsnskl8eB+EY8gi77CpgvCO08ywdMCCWfjjToXKYT4/HrqoySp85WS/ypar60/4KkCFhYUSmce3fIBUB7EVW0qw/n0mutvgWGBXEPOUZ40uOV8zO85fRqzapCd3d3ASuTgWt2yLZ8Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/vkCrfHpigAWTKCwQqwZsKOqtxF59CIm1CeIeDIxdYo=;
 b=nSNdpmGriotx2TBUD28IE5fyzOBICMNoaxpIUd8Li/kotJqSvKtUZsaWJcsIfqNf4noL0khgWuP5NGVMrLxswuvNW10JeTAbd2jRBQo5xMp6nuochOuEFWY7Jg7NahvbuNFbH7Z9H4z+jN9j8XsD7Uw+GzZTpir3uofvXa+BQ8F+u0uDmRt3M2hDCaY1aBEqq41Yh8px0NMBrjkHmBWNY4/vUVqbk4ld4HEwiDLeQe9YrgcGLCKGP6ZEY+7g8lFtxqQ6jVmNDgx2BWmFDVmZD3bdVAVu1DfTGNS/qac3sQODHyL89wmz4Vhg6U7EYLJh6nqimpBZo/cuWLTTGXY8lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/vkCrfHpigAWTKCwQqwZsKOqtxF59CIm1CeIeDIxdYo=;
 b=tAjJs4BYobmhKpb0K2spE2p18yWFQU0kmjSurVE1lfFCaH1VktMAAfHKQ6hykSWDLCoTNIVPh94Ah8iIdxqLmoaWLorX/F6K2wsOeYEvehQH4dsdsd9AuCqceK3nefZV2hsvoa0n85slHty6N5rXOywzBksLGCKtFJ1rX7OP+Gc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3969.eurprd04.prod.outlook.com (52.134.95.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 07:34:07 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 07:34:07 +0000
From: peng.fan@nxp.com
To: ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com
Subject: [PATCH 7/9] remoteproc: imx_rproc: add i.MX8QM/QXP
Date: Wed, 19 Feb 2020 15:27:43 +0800
Message-Id: <1582097265-20170-8-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK0PR03CA0115.apcprd03.prod.outlook.com
 (2603:1096:203:b0::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0115.apcprd03.prod.outlook.com (2603:1096:203:b0::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 07:34:03 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 26010d26-ac8e-42d1-ef77-08d7b50e19ee
X-MS-TrafficTypeDiagnostic: AM0PR04MB3969:|AM0PR04MB3969:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB396923001CC2CC28EF55211688100@AM0PR04MB3969.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(376002)(396003)(136003)(189003)(199004)(66556008)(66476007)(8676002)(478600001)(186003)(52116002)(956004)(81166006)(81156014)(7416002)(5660300002)(4326008)(2616005)(66946007)(8936002)(16526019)(316002)(69590400006)(9686003)(6666004)(36756003)(2906002)(86362001)(6506007)(6512007)(26005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3969;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PMbZatyvs/+qy6CvKt7N9fhePnW2kZEYOjvG8+40QZRPD06mH0OiU7aDt0j4O6OXVi6TSDEADkEm+vcxEB2MzLf2b/C9dTvktj91iyukzcRJhPMV3L/qQ8kcnaMwGolB6qoaO3N3MNwts3VIQ6+OSAIr/UE2v+Hr1mfr+ArG57CG1roMqtBcHBTLWNtWMxSUvHyubU3GBBwB1qXAQsErGZyS+tFAeGuUYsVbKBkh/YupYe/7exZnaKGNYuI4rw1f+AGxwUrV7vpu8v86wofwSvnJ2uT4/KYaA5pfA1pLSMi+wgibknVXvfE22rwQ05XPbmaslm0PJO6Ww0QIBOdx8b3crpKrKoPnxnBzmKJj0lEoODUlj2WjkorVpK0iqqEAztZMhfT+dmfGoD0CdtI3tPzExh/VyvgjdjyhS+7l3pD42z/9+boQbOBYqeOXnKxH4VfXXHf26MSH25Vr+j8KiaSMDf7Kcb8SmpyQx9xCJO54OsEZQr809HPKVwSXgWSxA0EbtquiPBZ7iSYpypOjZXKSiNzn3Bay5u0ZG8AeLok=
X-MS-Exchange-AntiSpam-MessageData: /iM381wdH4S3vVVwlyZ2gsZAJa/wbxEZ71ohmM6HW40W7/vs23I1b2jQHOWXpRqwqv7NO96O1IqQuzMSeML65TrALEK/xp21SRyR+yy7W3QELfSe4qUx3l1nGSfDrHLxTAd9Bz6f2qVxJAImwt135Q==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26010d26-ac8e-42d1-ef77-08d7b50e19ee
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 07:34:07.2249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SRaIJqZ5Rqt65cRBQC4KZcbAyOHlkFnuxd+Vsa8xgHhieXWs7iElu427WPlp5n/gp00Ezp9H0aNcSaMBkXaatw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3969
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233412_015879_FDCB6155 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

i.MX8QM and i.MX8QXP support hardware partition feature, the M4
could be controlled by System Control Unit(SCU). The M4 is out
of control of Linux with hardware partition used which is the normal
case for production in automotive space.

When M4 reboot, SCU will issue interrupt to Linux side, and Linux side
will recovery the connection. To use related functions, guard code
with CONFIG_IMX_SCU which is enabled for all i.MX SoCs with SCU inside.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/remoteproc/imx_rproc.c | 84 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 80 insertions(+), 4 deletions(-)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index 36dec1ce4f50..003f9e5c2b0c 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -1,10 +1,14 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (c) 2017 Pengutronix, Oleksij Rempel <kernel@pengutronix.de>
+ * Copyright 2020 NXP, Peng Fan <peng.fan@nxp.com>
  */
 
 #include <linux/clk.h>
 #include <linux/err.h>
+#ifdef CONFIG_IMX_SCU
+#include <linux/firmware/imx/sci.h>
+#endif
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/mailbox_client.h>
@@ -49,6 +53,13 @@
 
 #define IMX7D_RPROC_MEM_MAX		8
 
+enum imx_rproc_variants {
+	IMX8QM,
+	IMX8QXP,
+	IMX7D,
+	IMX6SX,
+};
+
 /**
  * struct imx_rproc_mem - slim internal memory structure
  * @cpu_addr: MPU virtual address of the memory region
@@ -81,6 +92,7 @@ struct imx_rproc_dcfg {
 	u32				src_started;
 	const struct imx_rproc_att	*att;
 	size_t				att_size;
+	enum imx_rproc_variants		variant;
 };
 
 struct imx_rproc {
@@ -95,6 +107,8 @@ struct imx_rproc {
 	struct mbox_chan		*tx_ch;
 	struct mbox_chan		*rx_ch;
 	struct delayed_work		rproc_work;
+	u32				mub_partition;
+	struct notifier_block		proc_nb;
 };
 
 static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
@@ -167,6 +181,14 @@ static const struct imx_rproc_dcfg imx_rproc_cfg_imx6sx = {
 	.att_size	= ARRAY_SIZE(imx_rproc_att_imx6sx),
 };
 
+static const struct imx_rproc_dcfg imx_rproc_cfg_imx8qxp = {
+	.variant	= IMX8QXP,
+};
+
+static const struct imx_rproc_dcfg imx_rproc_cfg_imx8qm = {
+	.variant	= IMX8QM,
+};
+
 static int imx_rproc_start(struct rproc *rproc)
 {
 	struct imx_rproc *priv = rproc->priv;
@@ -507,9 +529,7 @@ static int imx_rproc_configure_mode(struct imx_rproc *priv)
 	int ret;
 	u32 val;
 
-	if (dcfg->variants == IMX7ULP) {
-		priv->early_boot = true;
-	} else if (of_get_property(dev->of_node, "early-booted", NULL)) {
+	if (of_get_property(dev->of_node, "early-booted", NULL)) {
 		priv->early_boot = true;
 	} else {
 		ret = regmap_read(priv->regmap, dcfg->src_reg, &val);
@@ -588,6 +608,25 @@ static int imx_rproc_xtr_mbox_init(struct rproc *rproc)
 	return ret;
 }
 
+#ifdef CONFIG_IMX_SCU
+static int imx_rproc_partition_notify(struct notifier_block *nb,
+				      unsigned long event, void *group)
+{
+	struct imx_rproc *priv = container_of(nb, struct imx_rproc, proc_nb);
+
+	/* Ignore other irqs */
+	if (!((event & BIT(priv->mub_partition)) &&
+	    (*(u8 *)group == 5)))
+		return 0;
+
+	rproc_report_crash(priv->rproc, RPROC_WATCHDOG);
+
+	pr_info("Patition%d reset!\n", priv->mub_partition);
+
+	return 0;
+}
+#endif
+
 static int imx_rproc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -665,15 +704,50 @@ static int imx_rproc_probe(struct platform_device *pdev)
 
 	INIT_DELAYED_WORK(&(priv->rproc_work), imx_rproc_vq_work);
 
+#ifdef CONFIG_IMX_SCU
+	priv->proc_nb.notifier_call = imx_rproc_partition_notify;
+
+	if (dcfg->variant == IMX8QXP || dcfg->variant == IMX8QM) {
+		/*
+		 * Get muB partition id and enable irq in SCFW
+		 * default partition 3
+		 */
+		if (of_property_read_u32(np, "mub-partition",
+					 &priv->mub_partition))
+			priv->mub_partition = 3;
+
+		ret = imx_scu_irq_group_enable(5, BIT(priv->mub_partition),
+					       true);
+		if (ret) {
+			dev_warn(dev, "Enable irq failed.\n");
+			goto err_put_clk;
+		}
+
+		ret = imx_scu_irq_register_notifier(&priv->proc_nb);
+		if (ret) {
+			imx_scu_irq_group_enable(5, BIT(priv->mub_partition),
+						 false);
+			dev_warn(dev, "reqister scu notifier failed.\n");
+			goto err_put_clk;
+		}
+
+		priv->rproc->skip_fw_load_recovery = true;
+	}
+#endif
+
 	ret = rproc_add(rproc);
 	if (ret) {
 		dev_err(dev, "rproc_add failed\n");
-		goto err_put_clk;
+		goto err_put_scu;
 	}
 
 	return 0;
 
+err_put_scu:
+#ifdef CONFIG_IMX_SCU
+	imx_scu_irq_group_enable(5, BIT(priv->mub_partition), false);
 err_put_clk:
+#endif
 	if (!priv->early_boot)
 		clk_disable_unprepare(priv->clk);
 err_put_mbox:
@@ -703,6 +777,8 @@ static int imx_rproc_remove(struct platform_device *pdev)
 static const struct of_device_id imx_rproc_of_match[] = {
 	{ .compatible = "fsl,imx7d-cm4", .data = &imx_rproc_cfg_imx7d },
 	{ .compatible = "fsl,imx6sx-cm4", .data = &imx_rproc_cfg_imx6sx },
+	{ .compatible = "fsl,imx8qxp-cm4", .data = &imx_rproc_cfg_imx8qxp },
+	{ .compatible = "fsl,imx8qm-cm4", .data = &imx_rproc_cfg_imx8qm },
 	{},
 };
 MODULE_DEVICE_TABLE(of, imx_rproc_of_match);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
