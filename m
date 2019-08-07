Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D5B8515B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2IsaihLXCha+DFWtZUIKLU7BspTZRvTO92lPyU7SPG0=; b=IP5xGk4rGlaRJj+C5VdiM1UVVP
	o18rgfH+mVRJn8+CRq4U2JiMA2SwiE3/bxyipmaQxYUx+FgdqRMboTnLBB3x+RvM0JFxUTyN7lflC
	OK/A/gxakbpDGmg8YjuRoL2YFCrUkxjBp5i6W21BMGEesySVFVe+bHMQ6m/Tm9oD3zBJa4XfsuUAQ
	x1oOxlYkQE9mCrmI7YsD/et49OQMK7YTgN6obqrDlxDDFG6AeYbPXvKYu1c50qxEZeJPdeqpl/KDy
	YV7hBUDyXq4ilAQ5RFe3ZdFTyRhx2n3Z7FvAdgAGsY8w3lhkF8JAvecVzDAa1gdbW9/S8YMzhXHZE
	gKRGEWUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvP3L-000714-4M; Wed, 07 Aug 2019 16:44:43 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvP1y-0005py-3Y
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:43:21 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0F90E1A07F2;
 Wed,  7 Aug 2019 18:43:15 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 012031A07E8;
 Wed,  7 Aug 2019 18:43:15 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2DE1D205E5;
 Wed,  7 Aug 2019 18:43:14 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: daniel.baluta@nxp.com,
	shawnguo@kernel.org
Subject: [PATCH v3 2/5] ASoC: SOF: imx: Add i.MX8 HW support
Date: Wed,  7 Aug 2019 19:42:55 +0300
Message-Id: <20190807164258.8306-3-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190807164258.8306-1-daniel.baluta@nxp.com>
References: <20190807164258.8306-1-daniel.baluta@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_094318_424312_E37923AD 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, peng.fan@nxp.com,
 anson.huang@nxp.com, shengjiu.wang@nxp.com, linux-kernel@vger.kernel.org,
 m.felsch@pengutronix.de, paul.olaru@nxp.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, l.stach@pengutronix.de,
 pierre-louis.bossart@linux.intel.com, mark.rutland@arm.com,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, sound-open-firmware@alsa-project.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the audio DSP hardware found on NXP i.MX8 platform.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 sound/soc/sof/Kconfig      |   1 +
 sound/soc/sof/Makefile     |   1 +
 sound/soc/sof/imx/Kconfig  |  22 +++
 sound/soc/sof/imx/Makefile |   4 +
 sound/soc/sof/imx/imx8.c   | 394 +++++++++++++++++++++++++++++++++++++
 5 files changed, 422 insertions(+)
 create mode 100644 sound/soc/sof/imx/Kconfig
 create mode 100644 sound/soc/sof/imx/Makefile
 create mode 100644 sound/soc/sof/imx/imx8.c

diff --git a/sound/soc/sof/Kconfig b/sound/soc/sof/Kconfig
index 73c455dacab5..cc592bcadae7 100644
--- a/sound/soc/sof/Kconfig
+++ b/sound/soc/sof/Kconfig
@@ -181,6 +181,7 @@ config SND_SOC_SOF_PROBE_WORK_QUEUE
 	  When selected, the probe is handled in two steps, for example to
 	  avoid lockdeps if request_module is used in the probe.
 
+source "sound/soc/sof/imx/Kconfig"
 source "sound/soc/sof/intel/Kconfig"
 source "sound/soc/sof/xtensa/Kconfig"
 
diff --git a/sound/soc/sof/Makefile b/sound/soc/sof/Makefile
index f605a02257e7..a37dbfabfa3b 100644
--- a/sound/soc/sof/Makefile
+++ b/sound/soc/sof/Makefile
@@ -20,4 +20,5 @@ obj-$(CONFIG_SND_SOC_SOF_OF) += sof-of-dev.o
 obj-$(CONFIG_SND_SOC_SOF_PCI) += sof-pci-dev.o
 
 obj-$(CONFIG_SND_SOC_SOF_INTEL_TOPLEVEL) += intel/
+obj-$(CONFIG_SND_SOC_SOF_IMX_TOPLEVEL) += imx/
 obj-$(CONFIG_SND_SOC_SOF_XTENSA) += xtensa/
diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
new file mode 100644
index 000000000000..fd73d8402dbf
--- /dev/null
+++ b/sound/soc/sof/imx/Kconfig
@@ -0,0 +1,22 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+
+config SND_SOC_SOF_IMX_TOPLEVEL
+	bool "SOF support for NXP i.MX audio DSPs"
+	depends on ARM64 && SND_SOC_SOF_OF || COMPILE_TEST
+	help
+          This adds support for Sound Open Firmware for NXP i.MX platforms.
+          Say Y if you have such a device.
+          If unsure select "N".
+
+if SND_SOC_SOF_IMX_TOPLEVEL
+
+config SND_SOC_SOF_IMX8
+	tristate "SOF support for i.MX8"
+	depends on IMX_SCU
+	depends on IMX_DSP
+	help
+          This adds support for Sound Open Firmware for NXP i.MX8 platforms
+          Say Y if you have such a device.
+          If unsure select "N".
+
+endif ## SND_SOC_SOF_IMX_IMX_TOPLEVEL
diff --git a/sound/soc/sof/imx/Makefile b/sound/soc/sof/imx/Makefile
new file mode 100644
index 000000000000..6ef908e8c807
--- /dev/null
+++ b/sound/soc/sof/imx/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+snd-sof-imx8-objs := imx8.o
+
+obj-$(CONFIG_SND_SOC_SOF_IMX8) += snd-sof-imx8.o
diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
new file mode 100644
index 000000000000..9869d783c31e
--- /dev/null
+++ b/sound/soc/sof/imx/imx8.c
@@ -0,0 +1,394 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+//
+// Copyright 2019 NXP
+//
+// Author: Daniel Baluta <daniel.baluta@nxp.com>
+//
+// Hardware interface for audio DSP on i.MX8
+
+#include <linux/firmware.h>
+#include <linux/of_platform.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/pm_domain.h>
+
+#include <linux/module.h>
+#include <sound/sof.h>
+#include <sound/sof/xtensa.h>
+#include <linux/firmware/imx/ipc.h>
+#include <linux/firmware/imx/dsp.h>
+
+#include <linux/firmware/imx/svc/misc.h>
+#include <dt-bindings/firmware/imx/rsrc.h>
+#include "../ops.h"
+
+/* DSP memories */
+#define IRAM_OFFSET		0x10000
+#define IRAM_SIZE		(2 * 1024)
+#define DRAM0_OFFSET		0x0
+#define DRAM0_SIZE		(32 * 1024)
+#define DRAM1_OFFSET		0x8000
+#define DRAM1_SIZE		(32 * 1024)
+#define SYSRAM_OFFSET		0x18000
+#define SYSRAM_SIZE		(256 * 1024)
+#define SYSROM_OFFSET		0x58000
+#define SYSROM_SIZE		(192 * 1024)
+
+#define RESET_VECTOR_VADDR	0x596f8000
+
+#define MBOX_OFFSET	0x800000
+#define MBOX_SIZE	0x1000
+
+struct imx8_priv {
+	struct device *dev;
+	struct snd_sof_dev *sdev;
+
+	/* DSP IPC handler */
+	struct imx_dsp_ipc *dsp_ipc;
+	struct platform_device *ipc_dev;
+
+	/* System Controller IPC handler */
+	struct imx_sc_ipc *sc_ipc;
+
+	/* Power domain handling */
+	int num_domains;
+	struct device **pd_dev;
+	struct device_link **link;
+
+};
+
+static void imx8_get_reply(struct snd_sof_dev *sdev)
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
+static int imx8_get_mailbox_offset(struct snd_sof_dev *sdev)
+{
+	return MBOX_OFFSET;
+}
+
+static int imx8_get_window_offset(struct snd_sof_dev *sdev, u32 id)
+{
+	return MBOX_OFFSET;
+}
+
+void imx8_dsp_handle_reply(struct imx_dsp_ipc *ipc)
+{
+	struct imx8_priv *priv = imx_dsp_get_data(ipc);
+	unsigned long flags;
+
+	spin_lock_irqsave(&priv->sdev->ipc_lock, flags);
+	imx8_get_reply(priv->sdev);
+	snd_sof_ipc_reply(priv->sdev, 0);
+	spin_unlock_irqrestore(&priv->sdev->ipc_lock, flags);
+}
+
+void imx8_dsp_handle_request(struct imx_dsp_ipc *ipc)
+{
+	struct imx8_priv *priv = imx_dsp_get_data(ipc);
+
+	snd_sof_ipc_msgs_rx(priv->sdev);
+}
+
+struct imx_dsp_ops dsp_ops = {
+	.handle_reply		= imx8_dsp_handle_reply,
+	.handle_request		= imx8_dsp_handle_request,
+};
+
+static int imx8_send_msg(struct snd_sof_dev *sdev, struct snd_sof_ipc_msg *msg)
+{
+	struct imx8_priv *priv = (struct imx8_priv *)sdev->private;
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
+static int imx8_run(struct snd_sof_dev *sdev)
+{
+	int ret;
+	struct imx8_priv *dsp_priv = (struct imx8_priv *)sdev->private;
+
+	ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
+				      IMX_SC_C_OFS_SEL, 1);
+	if (ret < 0) {
+		dev_err(sdev->dev, "Error system address offset source select\n");
+		return ret;
+	}
+
+	ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
+				      IMX_SC_C_OFS_AUDIO, 0x80);
+	if (ret < 0) {
+		dev_err(sdev->dev, "Error system address offset of AUDIO\n");
+		return ret;
+	}
+
+	ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
+				      IMX_SC_C_OFS_PERIPH, 0x5A);
+	if (ret < 0) {
+		dev_err(sdev->dev, "Error system address offset of PERIPH %d\n",
+			ret);
+		return ret;
+	}
+
+	ret = imx_sc_misc_set_control(dsp_priv->sc_ipc, IMX_SC_R_DSP,
+				      IMX_SC_C_OFS_IRQ, 0x51);
+	if (ret < 0) {
+		dev_err(sdev->dev, "Error system address offset of IRQ\n");
+		return ret;
+	}
+
+	imx_sc_pm_cpu_start(dsp_priv->sc_ipc, IMX_SC_R_DSP, true,
+			    RESET_VECTOR_VADDR);
+
+	return 0;
+}
+
+static int imx8_probe(struct snd_sof_dev *sdev)
+{
+	struct platform_device *pdev =
+		container_of(sdev->dev, struct platform_device, dev);
+	struct device_node *np = pdev->dev.of_node;
+	struct device_node *res_node;
+	struct resource *mmio;
+	struct imx8_priv *priv;
+	struct resource res;
+	u32 base, size;
+	int ret = 0;
+	int i;
+
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	sdev->private = priv;
+	priv->dev = sdev->dev;
+	priv->sdev = sdev;
+
+	/* power up device associated power domains */
+	priv->num_domains = of_count_phandle_with_args(np, "power-domains",
+						       "#power-domain-cells");
+	if (priv->num_domains < 0) {
+		dev_err(sdev->dev, "no power-domains property in %pOF\n", np);
+		return priv->num_domains;
+	}
+
+	priv->pd_dev = devm_kmalloc_array(&pdev->dev, priv->num_domains,
+					  sizeof(*priv->pd_dev), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->link = devm_kmalloc_array(&pdev->dev, priv->num_domains,
+					sizeof(*priv->link), GFP_KERNEL);
+	if (!priv->link)
+		return -ENOMEM;
+
+	for (i = 0; i < priv->num_domains; i++) {
+		priv->pd_dev[i] = dev_pm_domain_attach_by_id(&pdev->dev, i);
+		if (IS_ERR(priv->pd_dev[i])) {
+			ret = PTR_ERR(priv->pd_dev[i]);
+			goto exit_unroll_pm;
+		}
+		priv->link[i] = device_link_add(&pdev->dev, priv->pd_dev[i],
+						DL_FLAG_STATELESS |
+						DL_FLAG_PM_RUNTIME |
+						DL_FLAG_RPM_ACTIVE);
+		if (IS_ERR(priv->link[i])) {
+			ret = PTR_ERR(priv->link[i]);
+			dev_pm_domain_detach(priv->pd_dev[i], false);
+			goto exit_unroll_pm;
+		}
+	}
+
+	ret = imx_scu_get_handle(&priv->sc_ipc);
+	if (ret) {
+		dev_err(sdev->dev, "Cannot obtain SCU handle (err = %d)\n",
+			ret);
+		goto exit_unroll_pm;
+	}
+
+	priv->ipc_dev = platform_device_register_data(sdev->dev, "imx-dsp",
+						      PLATFORM_DEVID_NONE,
+						      pdev, sizeof(*pdev));
+	if (IS_ERR(priv->ipc_dev)) {
+		ret = PTR_ERR(priv->ipc_dev);
+		goto exit_unroll_pm;
+	}
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
+	priv->dsp_ipc->ops = &dsp_ops;
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
+	if (IS_ERR(sdev->bar[SOF_FW_BLK_TYPE_SRAM])) {
+		dev_err(sdev->dev, "failed to ioremap mem 0x%x size 0x%x\n",
+			base, size);
+		ret = PTR_ERR(sdev->bar[SOF_FW_BLK_TYPE_SRAM]);
+		goto exit_pdev_unregister;
+	}
+	sdev->mailbox_bar = SOF_FW_BLK_TYPE_SRAM;
+
+	return 0;
+
+exit_pdev_unregister:
+	platform_device_unregister(priv->ipc_dev);
+exit_unroll_pm:
+	while (--i >= 0) {
+		device_link_del(priv->link[i]);
+		dev_pm_domain_detach(priv->pd_dev[i], false);
+	}
+
+	return ret;
+}
+
+static int imx8_remove(struct snd_sof_dev *sdev)
+{
+	int i;
+	struct imx8_priv *priv = (struct imx8_priv *)sdev->private;
+
+	platform_device_unregister(priv->ipc_dev);
+
+	for (i = 0; i < priv->num_domains; i++) {
+		device_link_del(priv->link[i]);
+		dev_pm_domain_detach(priv->pd_dev[i], false);
+	}
+
+	return 0;
+}
+
+/* on i.MX8 there is 1 to 1 match between type and BAR idx */
+int imx8_get_bar_index(struct snd_sof_dev *sdev, u32 type)
+{
+	return type;
+}
+
+void imx8_ipc_msg_data(struct snd_sof_dev *sdev,
+		       struct snd_pcm_substream *substream,
+		       void *p, size_t sz)
+{
+	sof_mailbox_read(sdev, sdev->dsp_box.offset, p, sz);
+}
+
+int imx8_ipc_pcm_params(struct snd_sof_dev *sdev,
+			struct snd_pcm_substream *substream,
+			const struct sof_ipc_pcm_params_reply *reply)
+{
+	return 0;
+}
+
+static struct snd_soc_dai_driver imx8_dai[] = {
+{
+	.name = "esai-port",
+},
+};
+
+/* i.MX8  ops */
+struct snd_sof_dsp_ops sof_imx8_ops = {
+	/* probe and remove */
+	.probe		= imx8_probe,
+	.remove		= imx8_remove,
+	/* DSP core boot */
+	.run		= imx8_run,
+
+	/* Block IO */
+	.block_read	= sof_block_read,
+	.block_write	= sof_block_write,
+
+	/* ipc */
+	.send_msg	= imx8_send_msg,
+	.fw_ready	= sof_fw_ready,
+	.get_mailbox_offset	= imx8_get_mailbox_offset,
+	.get_window_offset	= imx8_get_window_offset,
+
+	.ipc_msg_data	= imx8_ipc_msg_data,
+	.ipc_pcm_params	= imx8_ipc_pcm_params,
+
+	/* module loading */
+	.load_module	= snd_sof_parse_module_memcpy,
+	.get_bar_index	= imx8_get_bar_index,
+	/* firmware loading */
+	.load_firmware	= snd_sof_load_firmware_memcpy,
+
+	/* DAI drivers */
+	.drv = imx8_dai,
+	.num_drv = 1, /* we have only 1 ESAI interface on i.MX8 */
+};
+EXPORT_SYMBOL(sof_imx8_ops);
+
+MODULE_LICENSE("Dual BSD/GPL");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
