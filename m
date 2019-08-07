Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542CD85157
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HHyYGGyynKEjnBulODdfDHItkdnpJBnhl/zsarfyICs=; b=kUpsZ+FZKQiK+Xe4kN/8IEKyAC
	/wOjlZzVailwwpZEz8w4Rzr6WsdLpjBogKOHQ/gdrZivtvObRW50Rl26cMKcxj0JDeHI0FwJQ7ovs
	eUM2MPU/SAkFveuqCtDGkPKaU2ATMc4k2eSraByPyIZ2vlCvtKR05o0LzwhoQM8wljbPt2zKvuum5
	p6cyO/BzCWW9MiV5abPvYRKO4+Jzp9tioJxkfjnw/7omp2/pLPX16mhvsRf+8lW6TPghI4OIkJ4Dp
	ue6FfNSHDIHksAHBqjuy+CDOZ6wqIfDzp3hbje3ny4EvB26fa1+md6/B7nlD4EcrlvpPyZGggEC00
	D6KaALqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvP2P-00065C-4d; Wed, 07 Aug 2019 16:43:45 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvP1x-0005pr-Gj
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:43:19 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2B1711A07F5;
 Wed,  7 Aug 2019 18:43:14 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1CC7A1A014F;
 Wed,  7 Aug 2019 18:43:14 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 48FC7205E5;
 Wed,  7 Aug 2019 18:43:13 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: daniel.baluta@nxp.com,
	shawnguo@kernel.org
Subject: [PATCH v3 1/5] ASoC: SOF: Add OF DSP device support
Date: Wed,  7 Aug 2019 19:42:54 +0300
Message-Id: <20190807164258.8306-2-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190807164258.8306-1-daniel.baluta@nxp.com>
References: <20190807164258.8306-1-daniel.baluta@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_094317_833709_964742B1 
X-CRM114-Status: GOOD (  15.21  )
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

Add support for device tree based SOF DSP devices.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 sound/soc/sof/Kconfig      |  10 +++
 sound/soc/sof/Makefile     |   3 +
 sound/soc/sof/sof-of-dev.c | 143 +++++++++++++++++++++++++++++++++++++
 3 files changed, 156 insertions(+)
 create mode 100644 sound/soc/sof/sof-of-dev.c

diff --git a/sound/soc/sof/Kconfig b/sound/soc/sof/Kconfig
index 5b41628ad722..73c455dacab5 100644
--- a/sound/soc/sof/Kconfig
+++ b/sound/soc/sof/Kconfig
@@ -36,6 +36,16 @@ config SND_SOC_SOF_ACPI
 	  Say Y if you need this option
 	  If unsure select "N".
 
+config SND_SOC_SOF_OF
+	tristate "SOF OF enumeration support"
+	depends on OF || COMPILE_TEST
+	select SND_SOC_SOF
+	select SND_SOC_SOF_OPTIONS
+	help
+	  This adds support for Device Tree enumeration. This option is
+	  required to enable i.MX8 devices.
+	  Say Y if you need this option. If unsure select "N".
+
 config SND_SOC_SOF_OPTIONS
 	tristate
 	help
diff --git a/sound/soc/sof/Makefile b/sound/soc/sof/Makefile
index 33c3ded2b7e2..f605a02257e7 100644
--- a/sound/soc/sof/Makefile
+++ b/sound/soc/sof/Makefile
@@ -7,6 +7,8 @@ snd-sof-objs := core.o ops.o loader.o ipc.o pcm.o pm.o debug.o topology.o\
 
 snd-sof-pci-objs := sof-pci-dev.o
 snd-sof-acpi-objs := sof-acpi-dev.o
+snd-sof-of-objs := sof-of-dev.o
+
 snd-sof-nocodec-objs := nocodec.o
 
 obj-$(CONFIG_SND_SOC_SOF) += snd-sof.o
@@ -14,6 +16,7 @@ obj-$(CONFIG_SND_SOC_SOF_NOCODEC) += snd-sof-nocodec.o
 
 
 obj-$(CONFIG_SND_SOC_SOF_ACPI) += sof-acpi-dev.o
+obj-$(CONFIG_SND_SOC_SOF_OF) += sof-of-dev.o
 obj-$(CONFIG_SND_SOC_SOF_PCI) += sof-pci-dev.o
 
 obj-$(CONFIG_SND_SOC_SOF_INTEL_TOPLEVEL) += intel/
diff --git a/sound/soc/sof/sof-of-dev.c b/sound/soc/sof/sof-of-dev.c
new file mode 100644
index 000000000000..28a9692974e5
--- /dev/null
+++ b/sound/soc/sof/sof-of-dev.c
@@ -0,0 +1,143 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+//
+// Copyright 2019 NXP
+//
+// Author: Daniel Baluta <daniel.baluta@nxp.com>
+//
+
+#include <linux/firmware.h>
+#include <linux/module.h>
+#include <linux/pm_runtime.h>
+#include <sound/sof.h>
+
+#include "ops.h"
+
+extern struct snd_sof_dsp_ops sof_imx8_ops;
+
+/* platform specific devices */
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_IMX8)
+static struct sof_dev_desc sof_of_imx8qxp_desc = {
+	.default_fw_path = "imx/sof",
+	.default_tplg_path = "imx/sof-tplg",
+	.nocodec_fw_filename = "sof-imx8.ri",
+	.nocodec_tplg_filename = "sof-imx8-nocodec.tplg",
+	.ops = &sof_imx8_ops,
+};
+#endif
+
+static const struct dev_pm_ops sof_of_pm = {
+	SET_SYSTEM_SLEEP_PM_OPS(snd_sof_suspend, snd_sof_resume)
+	SET_RUNTIME_PM_OPS(snd_sof_runtime_suspend, snd_sof_runtime_resume,
+			   NULL)
+};
+
+static void sof_of_probe_complete(struct device *dev)
+{
+	/* allow runtime_pm */
+	pm_runtime_set_autosuspend_delay(dev, SND_SOF_SUSPEND_DELAY_MS);
+	pm_runtime_use_autosuspend(dev);
+	pm_runtime_enable(dev);
+}
+
+static int sof_of_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	const struct sof_dev_desc *desc;
+	/*TODO: create a generic snd_soc_xxx_mach */
+	struct snd_soc_acpi_mach *mach;
+	struct snd_sof_pdata *sof_pdata;
+	const struct snd_sof_dsp_ops *ops;
+	int ret;
+
+	dev_info(&pdev->dev, "DT DSP detected");
+
+	sof_pdata = devm_kzalloc(dev, sizeof(*sof_pdata), GFP_KERNEL);
+	if (!sof_pdata)
+		return -ENOMEM;
+
+	desc = device_get_match_data(dev);
+	if (!desc)
+		return -ENODEV;
+
+	/* get ops for platform */
+	ops = desc->ops;
+	if (!ops) {
+		dev_err(dev, "error: no matching DT descriptor ops\n");
+		return -ENODEV;
+	}
+
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_FORCE_NOCODEC_MODE)
+	/* force nocodec mode */
+	dev_warn(dev, "Force to use nocodec mode\n");
+	mach = devm_kzalloc(dev, sizeof(*mach), GFP_KERNEL);
+	if (!mach)
+		return -ENOMEM;
+	ret = sof_nocodec_setup(dev, sof_pdata, mach, desc, ops);
+	if (ret < 0)
+		return ret;
+#else
+	/* TODO: implement case where we actually have a codec */
+	return -ENODEV;
+#endif
+
+	if (mach)
+		mach->mach_params.platform = dev_name(dev);
+
+	sof_pdata->machine = mach;
+	sof_pdata->desc = desc;
+	sof_pdata->dev = &pdev->dev;
+	sof_pdata->platform = dev_name(dev);
+
+	/* TODO: read alternate fw and tplg filenames from DT */
+	sof_pdata->fw_filename_prefix = sof_pdata->desc->default_fw_path;
+	sof_pdata->tplg_filename_prefix = sof_pdata->desc->default_tplg_path;
+
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE)
+	/* set callback to enable runtime_pm */
+	sof_pdata->sof_probe_complete = sof_of_probe_complete;
+#endif
+	 /* call sof helper for DSP hardware probe */
+	ret = snd_sof_device_probe(dev, sof_pdata);
+	if (ret) {
+		dev_err(dev, "error: failed to probe DSP hardware\n");
+		return ret;
+	}
+
+#if !IS_ENABLED(CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE)
+	sof_of_probe_complete(dev);
+#endif
+
+	return ret;
+}
+
+static int sof_of_remove(struct platform_device *pdev)
+{
+	pm_runtime_disable(&pdev->dev);
+
+	/* call sof helper for DSP hardware remove */
+	snd_sof_device_remove(&pdev->dev);
+
+	return 0;
+}
+
+static const struct of_device_id sof_of_ids[] = {
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_IMX8)
+	{ .compatible = "fsl,imx8qxp-dsp", .data = &sof_of_imx8qxp_desc},
+#endif
+	{ }
+};
+MODULE_DEVICE_TABLE(of, sof_of_ids);
+
+/* DT driver definition */
+static struct platform_driver snd_sof_of_driver = {
+	.probe = sof_of_probe,
+	.remove = sof_of_remove,
+	.driver = {
+		.name = "sof-audio-of",
+		.pm = &sof_of_pm,
+		.of_match_table = sof_of_ids,
+	},
+};
+module_platform_driver(snd_sof_of_driver);
+
+MODULE_LICENSE("Dual BSD/GPL");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
