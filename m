Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F170671436
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K8a9sVfMfCYQJ7LLPPLlRNawSRmqPH0j0TQYOOUgRFQ=; b=cwwEkjD17rWjDN8tkaQn3i0sb7
	RyL9YnluOcSDDtC8wEYR5JrIloBhGcOCqiTT7IeX4JFyN3MOllxafLCXCwmOyVEdyz2R/L8G+5H9K
	FIygY050XxLdom7xntuna3UUXE6XDJaJfjP0gGLCSffeE4GRY8J4sQbHIFk+D3Ilas3iQwewC5CWa
	7B4vW5sHRrpa4KZbwOezmD/LSBtc3j8vfTAio3Crdsqbx1g2GYzVCfLnp/ZEup0hOAFX36RrpVBaV
	ZrEKnUb+dXwiTiKAT4o/ZUyv7KfKlCGTjhjWWYYq75Jg/Un4SxI6yNZuzWj7ww8qsusa0XHfAksoE
	5GUtiCdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqNP-00071p-Bh; Tue, 23 Jul 2019 08:42:27 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqMD-0006KH-9F
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:41:15 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EE5801A00F9;
 Tue, 23 Jul 2019 10:41:11 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EA9401A0024;
 Tue, 23 Jul 2019 10:41:11 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E8753205DD;
 Tue, 23 Jul 2019 10:41:10 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: m.felsch@pengutronix.de,
	shawnguo@kernel.org
Subject: [PATCH v2 3/5] ASoC: SOF: Add DT DSP device support
Date: Tue, 23 Jul 2019 11:41:02 +0300
Message-Id: <20190723084104.12639-4-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723084104.12639-1-daniel.baluta@nxp.com>
References: <20190723084104.12639-1-daniel.baluta@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_014113_610112_4836C0A3 
X-CRM114-Status: GOOD (  14.80  )
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 anson.huang@nxp.com, devicetree@vger.kernel.org,
 Daniel Baluta <daniel.baluta@nxp.com>, shengjiu.wang@nxp.com,
 linux-kernel@vger.kernel.org, paul.olaru@nxp.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 sound-open-firmware@alsa-project.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for device tree based SOF DSP devices.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
This is also on review with SOF community here:
https://github.com/thesofproject/linux/pull/1048

 sound/soc/sof/Kconfig      |   9 +++
 sound/soc/sof/Makefile     |   3 +
 sound/soc/sof/imx/Kconfig  |   1 +
 sound/soc/sof/sof-dt-dev.c | 159 +++++++++++++++++++++++++++++++++++++
 4 files changed, 172 insertions(+)
 create mode 100644 sound/soc/sof/sof-dt-dev.c

diff --git a/sound/soc/sof/Kconfig b/sound/soc/sof/Kconfig
index 61b97fc55bb2..2aa3a1cdf60c 100644
--- a/sound/soc/sof/Kconfig
+++ b/sound/soc/sof/Kconfig
@@ -36,6 +36,15 @@ config SND_SOC_SOF_ACPI
 	  Say Y if you need this option
 	  If unsure select "N".
 
+config SND_SOC_SOF_DT
+	tristate "SOF DT enumeration support"
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
index 6e43d411ffef..8025d9cec4fb 100644
--- a/sound/soc/sof/Makefile
+++ b/sound/soc/sof/Makefile
@@ -5,6 +5,8 @@ snd-sof-objs := core.o ops.o loader.o ipc.o pcm.o pm.o debug.o topology.o\
 
 snd-sof-pci-objs := sof-pci-dev.o
 snd-sof-acpi-objs := sof-acpi-dev.o
+snd-sof-dt-objs := sof-dt-dev.o
+
 snd-sof-nocodec-objs := nocodec.o
 
 obj-$(CONFIG_SND_SOC_SOF) += snd-sof.o
@@ -12,6 +14,7 @@ obj-$(CONFIG_SND_SOC_SOF_NOCODEC) += snd-sof-nocodec.o
 
 
 obj-$(CONFIG_SND_SOC_SOF_ACPI) += sof-acpi-dev.o
+obj-$(CONFIG_SND_SOC_SOF_DT) += sof-dt-dev.o
 obj-$(CONFIG_SND_SOC_SOF_PCI) += sof-pci-dev.o
 
 obj-$(CONFIG_SND_SOC_SOF_INTEL_TOPLEVEL) += intel/
diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index fff64a9970f0..fa35994a79c4 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -12,6 +12,7 @@ if SND_SOC_SOF_IMX_TOPLEVEL
 
 config SND_SOC_SOF_IMX8
 	tristate "SOF support for i.MX8"
+	select SND_SOC_SOF_DT
 	help
           This adds support for Sound Open Firmware for NXP i.MX8 platforms
           Say Y if you have such a device.
diff --git a/sound/soc/sof/sof-dt-dev.c b/sound/soc/sof/sof-dt-dev.c
new file mode 100644
index 000000000000..31429bbb5c7e
--- /dev/null
+++ b/sound/soc/sof/sof-dt-dev.c
@@ -0,0 +1,159 @@
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
+static char *fw_path;
+module_param(fw_path, charp, 0444);
+MODULE_PARM_DESC(fw_path, "alternate path for SOF firmware.");
+
+static char *tplg_path;
+module_param(tplg_path, charp, 0444);
+MODULE_PARM_DESC(tplg_path, "alternate path for SOF topology.");
+
+/* platform specific devices */
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_IMX8)
+static struct sof_dev_desc sof_dt_imx8qxp_desc = {
+	.default_fw_path = "imx/sof",
+	.default_tplg_path = "imx/sof-tplg",
+	.nocodec_fw_filename = "sof-imx8.ri",
+	.nocodec_tplg_filename = "sof-imx8-nocodec.tplg",
+	.ops = &sof_imx8_ops,
+};
+#endif
+
+static const struct dev_pm_ops sof_dt_pm = {
+	SET_SYSTEM_SLEEP_PM_OPS(snd_sof_suspend, snd_sof_resume)
+	SET_RUNTIME_PM_OPS(snd_sof_runtime_suspend, snd_sof_runtime_resume,
+			   NULL)
+};
+
+static void sof_dt_probe_complete(struct device *dev)
+{
+	/* allow runtime_pm */
+	pm_runtime_set_autosuspend_delay(dev, SND_SOF_SUSPEND_DELAY_MS);
+	pm_runtime_use_autosuspend(dev);
+	pm_runtime_enable(dev);
+}
+
+static int sof_dt_probe(struct platform_device *pdev)
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
+	/* alternate fw and tplg filenames */
+	if (fw_path)
+		sof_pdata->fw_filename_prefix = fw_path;
+	else
+		sof_pdata->fw_filename_prefix =
+			sof_pdata->desc->default_fw_path;
+	if (tplg_path)
+		sof_pdata->tplg_filename_prefix = tplg_path;
+	else
+		sof_pdata->tplg_filename_prefix =
+			sof_pdata->desc->default_tplg_path;
+
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE)
+	/* set callback to enable runtime_pm */
+	sof_pdata->sof_probe_complete = sof_dt_probe_complete;
+#endif
+	 /* call sof helper for DSP hardware probe */
+	ret = snd_sof_device_probe(dev, sof_pdata);
+	if (ret) {
+		dev_err(dev, "error: failed to probe DSP hardware\n");
+		return ret;
+	}
+
+#if !IS_ENABLED(CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE)
+	sof_dt_probe_complete(dev);
+#endif
+
+	return ret;
+}
+
+static int sof_dt_remove(struct platform_device *pdev)
+{
+	pm_runtime_disable(&pdev->dev);
+
+	/* call sof helper for DSP hardware remove */
+	snd_sof_device_remove(&pdev->dev);
+
+	return 0;
+}
+
+static const struct of_device_id sof_dt_ids[] = {
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_IMX8)
+	{ .compatible = "fsl,imx8qxp-dsp", .data = &sof_dt_imx8qxp_desc},
+#endif
+	{ }
+};
+MODULE_DEVICE_TABLE(of, sof_dt_ids);
+
+/* DT driver definition */
+static struct platform_driver snd_sof_dt_driver = {
+	.probe = sof_dt_probe,
+	.remove = sof_dt_remove,
+	.driver = {
+		.name = "sof-audio-dt",
+		.pm = &sof_dt_pm,
+		.of_match_table = sof_dt_ids
+	},
+};
+module_platform_driver(snd_sof_dt_driver);
+
+MODULE_LICENSE("Dual BSD/GPL");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
