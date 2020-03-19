Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9875218C0D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0/wbDi+r1oqOrDXeGCVOq4ID9VHwFxdt9O5B8mYvq8=; b=b7+A1dx6VqJznC
	ayaSv2/N8mozjSX7+7NuI9csGfSjCPp0r7Cu71wlNV5qoWyjWORTO0OHu3/OLTn4ov+5wgrTYyof1
	/UEQOsmmZdKlguUOLlShDvWbCoBOSwnDYzVzM1svkrc4HDb/WZksxRCj5xXZT+TCOMTL87dLjrOW+
	vUtZAejtXxJAQ1FIam3LW/wDngz7m6VdkJH+yss3GK2I4qJ/KgEzmcDdrea1VUqUVvVAEOqFvWbwm
	CHNC2TqdaoDaSqT5dnY794M7tAbG2FGmKDAet/fT3zCW9j7Cmrm1/NBWW37f4k34Z3tawI+kv+wnW
	m5ytsYKkBqh4eHVE+kHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1Do-0003Tx-O0; Thu, 19 Mar 2020 19:52:52 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1Cq-0002IB-9q
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:51:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQqMuhJXX+a3rHLx5lHMbAgL+5MlOPlL3H+vQiaowGZ434o+hxwag4C43+bgv/nqsfFMNnNjy5vfwl2VBuVC+KtW8Bj7txfM1Zbfmy2XN5GfPbLfVZ4UGD5HGdTjzzihaUTu6WrIKy5IvkLIDJF3YQ4efysIWuPTdViclV8q6CWUp8pNjeaDConhI4uOmjroPF4Lu9gwHSjv7HbA9L7ZX2ZMrXUHS126UoTPpLNmyMBWXp70D2BDsd4A67NS2G6df2NWs92HvdGgYXgm20WF6Y4VGk4oFSWRmlOA1ZVUk7zAjmytCsHr5slNWW3qh8vEtszugI+zyHU1fzEXrZJCOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=38NP0S8wJQtmMN3ElfzXcDF5/EVNSf/MQU/eD4K792k=;
 b=GLJ6qnqNRFeQ5E51zZS5XGvzFTf7QRhE0QTWw4Xwep25WuoIsSOzuXkY9FxneEMWYyewH2xX0YaKCcjxcnuUfORwmcrUp6s6ogYf2HM+375g+EHIoV6l/fOdYzopJ+IUL4shpC/ohTZNmJXnJ2pa2EGRKfJTP5v7v/t8TlsiaXc0Bj9zgyQ9XJMHinfFiZwZ8DVSDsWv+eNv/I2hweSbWU/1LFw1LzF1jeLCUZrsxkgo/r0XitkDHS/njormwviervnEVJ5I8Xw3dqO7iaErE9ZQ5hyVSJUzNdd4c38kqZzaUrjDCdB6E/B70j3sKka2dfC58Z4Vxr/5PScDP/xsgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=38NP0S8wJQtmMN3ElfzXcDF5/EVNSf/MQU/eD4K792k=;
 b=YqaZhaFsYRtumawoHXy+7SA62qe+NVra9Igo12y+Ix56cyQW4epKQxMeguRSRbaJRps2DWC6URxgit1s40meIOEuxiIDIueqd1fx8EKoHSIOtUQ2NIXCp8OgDnebXmEwdIx7KmUIShGoSRt2VSoI3hJedz5xLt/H4GTcNMXOzW4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3486.eurprd04.prod.outlook.com (52.134.4.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Thu, 19 Mar 2020 19:51:48 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0%7]) with mapi id 15.20.2835.017; Thu, 19 Mar 2020
 19:51:48 +0000
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Subject: [PATCH 3/5] ASoC: SOF: imx: Add i.MX8M HW support
Date: Thu, 19 Mar 2020 21:49:55 +0200
Message-Id: <20200319194957.9569-4-daniel.baluta@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
References: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
X-ClientProxiedBy: AM0PR07CA0031.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::44) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM0PR07CA0031.eurprd07.prod.outlook.com (2603:10a6:208:ac::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.12 via Frontend Transport; Thu, 19 Mar 2020 19:51:46 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e65d6896-1d82-4e58-368f-08d7cc3ef5eb
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3486:|VI1PR0402MB3486:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB3486357D292C81C12587DC84B8F40@VI1PR0402MB3486.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(199004)(81156014)(8676002)(8936002)(1076003)(81166006)(186003)(26005)(956004)(4326008)(16526019)(2616005)(478600001)(6506007)(316002)(6666004)(2906002)(44832011)(86362001)(66946007)(7416002)(66476007)(6486002)(52116002)(66556008)(6512007)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3486;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kEwLuU3vijanHnLPjYUUMPEgW50YeGKr955Jh2pdTiIOWythMIJfh/BzByU74N/W9XC3t/9bKZycsjuib2wAilz8KSbdSHja33xGv1oDrUskJXRP/mwO+o/URmBKavbNMgRyyEXGlKgw0jK6jOb3wxKguhrO9B7jh6v5ARVXzFvU1n5cil84q6IHPdiIfxNZAO+YIiRpmc7jfSPLZyutbJHfPAO0LH3P6jzZSOIGviZTnHoYGrcUw2lKz8Dc/cS/rGNmxDWtqoz5DNKo2AzgQFpjNB0MVJ3IllEF1bGFZPvYQEQP0Yw+odZEgsHsR5IUkbj7oPQfBYSeR3xxuxbH2jkHak2DxoY0DT6si1QZ659p1wd9U2haFF4NrMZ7qR3VWoGeoBEB68MAxQrNc5jzx24W/yc4HCsU17kjygILm8hae8Ov8rvXVjukbK2KCCmb
X-MS-Exchange-AntiSpam-MessageData: BW44XzmWuzLfWleLIABTTj6fJ5vp2pBDN4Z8c1EsU8qJ7uYLODET9IhZCGzjTgi3EnP4F9pzmSkN2TlcxcJzzHTX6/MuMN+ENgJlP9CVRUJLPEzCclcjvgGNq4sPmpTlL+DYdwhwv8qj0PkFCx/1qQ==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e65d6896-1d82-4e58-368f-08d7cc3ef5eb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 19:51:48.4564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v3s1KR0F8fKCR5u/b51G9yNcwHohOtHTxagOC74X2KAXZXsaLjXbR+jFwu8apjrZ+m2Zk0hoTjLHSwnjj7zdxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_125152_419270_3BD5670B 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 daniel.baluta@gmail.com, Daniel Baluta <daniel.baluta@nxp.com>,
 kai.vehmanen@linux.intel.com, festevam@gmail.com, s.hauer@pengutronix.de,
 yuehaibing@huawei.com, pierre-louis.bossart@linux.intel.com, krzk@kernel.org,
 ranjani.sridharan@linux.intel.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, alsa-devel@alsa-project.org, shawnguo@kernel.org,
 linux-kernel@vger.kernel.org, sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

This adds skeleton support for the audio DSP hardware found on NXP i.MX8M
platform.

There is one notable difference between i.MX8M and i.MX8, which doesn't
allow us to reuse HW support from imx8.c file designed for i.MX8:

On i.MX8M resources (clocks, power, pinctrl, etc) are managed by the
Linux kernel while on i.MX8 resources are managed by a separate
System Controller Firmware. This makes the interface to those resources
completely different.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 sound/soc/sof/imx/Kconfig  |  15 ++
 sound/soc/sof/imx/Makefile |   2 +
 sound/soc/sof/imx/imx8m.c  | 279 +++++++++++++++++++++++++++++++++++++
 3 files changed, 296 insertions(+)
 create mode 100644 sound/soc/sof/imx/imx8m.c

diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index 9586635cf8ab..0e7964bf4448 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -14,6 +14,7 @@ if SND_SOC_SOF_IMX_TOPLEVEL
 config SND_SOC_SOF_IMX_OF
 	def_tristate SND_SOC_SOF_OF
 	select SND_SOC_SOF_IMX8 if SND_SOC_SOF_IMX8_SUPPORT
+	select SND_SOC_SOF_IMX8M if SND_SOC_SOF_IMX8M_SUPPORT
 	help
 	  This option is not user-selectable but automagically handled by
 	  'select' statements at a higher level
@@ -33,4 +34,18 @@ config SND_SOC_SOF_IMX8
 	  This option is not user-selectable but automagically handled by
 	  'select' statements at a higher level
 
+config SND_SOC_SOF_IMX8M_SUPPORT
+	bool "SOF support for i.MX8M"
+	help
+	  This adds support for Sound Open Firmware for NXP i.MX8M platforms
+	  Say Y if you have such a device.
+	  If unsure select "N".
+
+config SND_SOC_SOF_IMX8M
+	tristate
+	depends on IMX_DSP
+	help
+	  This option is not user-selectable but automagically handled by
+	  'select' statements at a higher level
+
 endif ## SND_SOC_SOF_IMX_IMX_TOPLEVEL
diff --git a/sound/soc/sof/imx/Makefile b/sound/soc/sof/imx/Makefile
index 6ef908e8c807..d9d8dc1765b8 100644
--- a/sound/soc/sof/imx/Makefile
+++ b/sound/soc/sof/imx/Makefile
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
 snd-sof-imx8-objs := imx8.o
+snd-sof-imx8m-objs := imx8m.o
 
 obj-$(CONFIG_SND_SOC_SOF_IMX8) += snd-sof-imx8.o
+obj-$(CONFIG_SND_SOC_SOF_IMX8M) += snd-sof-imx8m.o
diff --git a/sound/soc/sof/imx/imx8m.c b/sound/soc/sof/imx/imx8m.c
new file mode 100644
index 000000000000..07451ba4efae
--- /dev/null
+++ b/sound/soc/sof/imx/imx8m.c
@@ -0,0 +1,279 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+//
+// Copyright 2020 NXP
+//
+// Author: Daniel Baluta <daniel.baluta@nxp.com>
+//
+// Hardware interface for audio DSP on i.MX8M
+
+#include <linux/firmware.h>
+#include <linux/of_platform.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+
+#include <linux/module.h>
+#include <sound/sof.h>
+#include <sound/sof/xtensa.h>
+#include <linux/firmware/imx/dsp.h>
+
+#include "../ops.h"
+
+#define MBOX_OFFSET	0x800000
+#define MBOX_SIZE	0x1000
+
+struct imx8m_priv {
+	struct device *dev;
+	struct snd_sof_dev *sdev;
+
+	/* DSP IPC handler */
+	struct imx_dsp_ipc *dsp_ipc;
+	struct platform_device *ipc_dev;
+};
+
+static void imx8m_get_reply(struct snd_sof_dev *sdev)
+{
+	struct snd_sof_ipc_msg *msg = sdev->msg;
+	struct sof_ipc_reply reply;
+	int ret = 0;
+
+	if (!msg) {
+		dev_warn(sdev->dev, "unexpected ipc interrupt\n");
+		return;
+	}
+
+	/* get reply */
+	sof_mailbox_read(sdev, sdev->host_box.offset, &reply, sizeof(reply));
+
+	if (reply.error < 0) {
+		memcpy(msg->reply_data, &reply, sizeof(reply));
+		ret = reply.error;
+	} else {
+		/* reply has correct size? */
+		if (reply.hdr.size != msg->reply_size) {
+			dev_err(sdev->dev, "error: reply expected %zu got %u bytes\n",
+				msg->reply_size, reply.hdr.size);
+			ret = -EINVAL;
+		}
+
+		/* read the message */
+		if (msg->reply_size > 0)
+			sof_mailbox_read(sdev, sdev->host_box.offset,
+					 msg->reply_data, msg->reply_size);
+	}
+
+	msg->reply_error = ret;
+}
+
+static int imx8m_get_mailbox_offset(struct snd_sof_dev *sdev)
+{
+	return MBOX_OFFSET;
+}
+
+static int imx8m_get_window_offset(struct snd_sof_dev *sdev, u32 id)
+{
+	return MBOX_OFFSET;
+}
+
+static void imx8m_dsp_handle_reply(struct imx_dsp_ipc *ipc)
+{
+	struct imx8m_priv *priv = imx_dsp_get_data(ipc);
+	unsigned long flags;
+
+	spin_lock_irqsave(&priv->sdev->ipc_lock, flags);
+	imx8m_get_reply(priv->sdev);
+	snd_sof_ipc_reply(priv->sdev, 0);
+	spin_unlock_irqrestore(&priv->sdev->ipc_lock, flags);
+}
+
+static void imx8m_dsp_handle_request(struct imx_dsp_ipc *ipc)
+{
+	struct imx8m_priv *priv = imx_dsp_get_data(ipc);
+
+	snd_sof_ipc_msgs_rx(priv->sdev);
+}
+
+struct imx_dsp_ops imx8m_dsp_ops = {
+	.handle_reply		= imx8m_dsp_handle_reply,
+	.handle_request		= imx8m_dsp_handle_request,
+};
+
+static int imx8m_send_msg(struct snd_sof_dev *sdev, struct snd_sof_ipc_msg *msg)
+{
+	struct imx8m_priv *priv = (struct imx8m_priv *)sdev->private;
+
+	sof_mailbox_write(sdev, sdev->host_box.offset, msg->msg_data,
+			  msg->msg_size);
+	imx_dsp_ring_doorbell(priv->dsp_ipc, 0);
+
+	return 0;
+}
+
+/*
+ * DSP control.
+ */
+static int imx8m_run(struct snd_sof_dev *sdev)
+{
+	/* TODO: start DSP using Audio MIX bits */
+	return 0;
+}
+
+static int imx8m_probe(struct snd_sof_dev *sdev)
+{
+	struct platform_device *pdev =
+		container_of(sdev->dev, struct platform_device, dev);
+	struct device_node *np = pdev->dev.of_node;
+	struct device_node *res_node;
+	struct resource *mmio;
+	struct imx8m_priv *priv;
+	struct resource res;
+	u32 base, size;
+	int ret = 0;
+
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	sdev->private = priv;
+	priv->dev = sdev->dev;
+	priv->sdev = sdev;
+
+	priv->ipc_dev = platform_device_register_data(sdev->dev, "imx-dsp",
+						      PLATFORM_DEVID_NONE,
+						      pdev, sizeof(*pdev));
+	if (IS_ERR(priv->ipc_dev))
+		return PTR_ERR(priv->ipc_dev);
+
+	priv->dsp_ipc = dev_get_drvdata(&priv->ipc_dev->dev);
+	if (!priv->dsp_ipc) {
+		/* DSP IPC driver not probed yet, try later */
+		ret = -EPROBE_DEFER;
+		dev_err(sdev->dev, "Failed to get drvdata\n");
+		goto exit_pdev_unregister;
+	}
+
+	imx_dsp_set_data(priv->dsp_ipc, priv);
+	priv->dsp_ipc->ops = &imx8m_dsp_ops;
+
+	/* DSP base */
+	mmio = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (mmio) {
+		base = mmio->start;
+		size = resource_size(mmio);
+	} else {
+		dev_err(sdev->dev, "error: failed to get DSP base at idx 0\n");
+		ret = -EINVAL;
+		goto exit_pdev_unregister;
+	}
+
+	sdev->bar[SOF_FW_BLK_TYPE_IRAM] = devm_ioremap(sdev->dev, base, size);
+	if (!sdev->bar[SOF_FW_BLK_TYPE_IRAM]) {
+		dev_err(sdev->dev, "failed to ioremap base 0x%x size 0x%x\n",
+			base, size);
+		ret = -ENODEV;
+		goto exit_pdev_unregister;
+	}
+	sdev->mmio_bar = SOF_FW_BLK_TYPE_IRAM;
+
+	res_node = of_parse_phandle(np, "memory-region", 0);
+	if (!res_node) {
+		dev_err(&pdev->dev, "failed to get memory region node\n");
+		ret = -ENODEV;
+		goto exit_pdev_unregister;
+	}
+
+	ret = of_address_to_resource(res_node, 0, &res);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to get reserved region address\n");
+		goto exit_pdev_unregister;
+	}
+
+	sdev->bar[SOF_FW_BLK_TYPE_SRAM] = devm_ioremap_wc(sdev->dev, res.start,
+							  res.end - res.start +
+							  1);
+	if (!sdev->bar[SOF_FW_BLK_TYPE_SRAM]) {
+		dev_err(sdev->dev, "failed to ioremap mem 0x%x size 0x%x\n",
+			base, size);
+		ret = -ENOMEM;
+		goto exit_pdev_unregister;
+	}
+	sdev->mailbox_bar = SOF_FW_BLK_TYPE_SRAM;
+
+	/* set default mailbox offset for FW ready message */
+	sdev->dsp_box.offset = MBOX_OFFSET;
+
+	return 0;
+
+exit_pdev_unregister:
+	platform_device_unregister(priv->ipc_dev);
+	return ret;
+}
+
+static int imx8m_remove(struct snd_sof_dev *sdev)
+{
+	struct imx8m_priv *priv = (struct imx8m_priv *)sdev->private;
+
+	platform_device_unregister(priv->ipc_dev);
+
+	return 0;
+}
+
+/* on i.MX8 there is 1 to 1 match between type and BAR idx */
+static int imx8m_get_bar_index(struct snd_sof_dev *sdev, u32 type)
+{
+	return type;
+}
+
+static void imx8m_ipc_msg_data(struct snd_sof_dev *sdev,
+			       struct snd_pcm_substream *substream,
+			       void *p, size_t sz)
+{
+	sof_mailbox_read(sdev, sdev->dsp_box.offset, p, sz);
+}
+
+static int imx8m_ipc_pcm_params(struct snd_sof_dev *sdev,
+				struct snd_pcm_substream *substream,
+				const struct sof_ipc_pcm_params_reply *reply)
+{
+	return 0;
+}
+
+static struct snd_soc_dai_driver imx8m_dai[] = {
+{
+	.name = "sai-port",
+},
+};
+
+/* i.MX8 ops */
+struct snd_sof_dsp_ops sof_imx8m_ops = {
+	/* probe and remove */
+	.probe		= imx8m_probe,
+	.remove		= imx8m_remove,
+	/* DSP core boot */
+	.run		= imx8m_run,
+
+	/* Block IO */
+	.block_read	= sof_block_read,
+	.block_write	= sof_block_write,
+
+	/* ipc */
+	.send_msg	= imx8m_send_msg,
+	.fw_ready	= sof_fw_ready,
+	.get_mailbox_offset	= imx8m_get_mailbox_offset,
+	.get_window_offset	= imx8m_get_window_offset,
+
+	.ipc_msg_data	= imx8m_ipc_msg_data,
+	.ipc_pcm_params	= imx8m_ipc_pcm_params,
+
+	/* module loading */
+	.load_module	= snd_sof_parse_module_memcpy,
+	.get_bar_index	= imx8m_get_bar_index,
+	/* firmware loading */
+	.load_firmware	= snd_sof_load_firmware_memcpy,
+
+	/* DAI drivers */
+	.drv = imx8m_dai,
+	.num_drv = 1, /* we have only 1 SAI interface on i.MX8M */
+};
+EXPORT_SYMBOL(sof_imx8m_ops);
+
+MODULE_LICENSE("Dual BSD/GPL");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
