Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50BF174B82
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 06:33:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wiYo2ABWUWG7yOsLWECE1Or4fQfovIO7zX0EjKRFZsM=; b=O/R9pZ/qqp32dT3cecBw8XMgYo
	YgoQvCmHVkfZoemhvQiVbgRdDqq0MNtQ8bmDx2XCnbxyzdzG0M/tq1dkEJ7KKalbRZlzAcSdvtNB4
	/nfA9t4FFNU73TZauqD1tbTsLMWJgCm6r5YxGuwJPTf5mbuz1Y03bh3BCGFdIRsZIYXy+76W2BJvJ
	a/MEVMR42VOtYp59hyqynCsIzDB/W+1d3dcvnVvMbbC/zAF7ZdCQ/ZIRtvnaidI7eD5i3yqLw+uVo
	BXfqc1qrYnJo0kH+UNHX8PucID8XZse7OKGc+QYQ5zgvVuxsgEzLVJEvIT/nR0ozJmeJhCxEnGyzh
	higr1bgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8HE6-0002Fl-N5; Sun, 01 Mar 2020 05:33:18 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8HBg-0008Pb-Rc
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 05:30:54 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4C595200A30;
 Sun,  1 Mar 2020 06:30:47 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D014B200A2B;
 Sun,  1 Mar 2020 06:30:36 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8F705402F0;
 Sun,  1 Mar 2020 13:30:25 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: timur@kernel.org, nicoleotsuka@gmail.com, Xiubo.Lee@gmail.com,
 festevam@gmail.com, broonie@kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 8/8] ASoC: fsl_easrc: Add EASRC ASoC CPU DAI and platform
 drivers
Date: Sun,  1 Mar 2020 13:24:19 +0800
Message-Id: <6b820b13d7cd3ca08941e1a2abbcbd8de5a5e943.1583039752.git.shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1583039752.git.shengjiu.wang@nxp.com>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
In-Reply-To: <cover.1583039752.git.shengjiu.wang@nxp.com>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_213049_501316_B7642AA5 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

EASRC (Enhanced Asynchronous Sample Rate Converter) is a new IP module
found on i.MX8MN. It is different with old ASRC module.

The primary features for the EASRC are as follows:
- 4 Contexts - groups of channels with an independent time base
- Fully independent and concurrent context control
- Simultaneous processing of up to 32 audio channels
- Programmable filter charachteristics for each context
- 32, 24, 20, and 16-bit fixed point audio sample support
- 32-bit floating point audio sample support
- 8kHz to 384kHz sample rate
- 1/16 to 8x sample rate conversion ratio

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
Signed-off-by: Cosmin-Gabriel Samoila <cosmin.samoila@nxp.com>
---
 sound/soc/fsl/Kconfig     |   11 +
 sound/soc/fsl/Makefile    |    2 +
 sound/soc/fsl/fsl_easrc.c | 2111 +++++++++++++++++++++++++++++++++++++
 sound/soc/fsl/fsl_easrc.h |  651 ++++++++++++
 4 files changed, 2775 insertions(+)
 create mode 100644 sound/soc/fsl/fsl_easrc.c
 create mode 100644 sound/soc/fsl/fsl_easrc.h

diff --git a/sound/soc/fsl/Kconfig b/sound/soc/fsl/Kconfig
index 65e8cd4be930..ea7b4787a8af 100644
--- a/sound/soc/fsl/Kconfig
+++ b/sound/soc/fsl/Kconfig
@@ -84,6 +84,17 @@ config SND_SOC_FSL_MICFIL
 	  Say Y if you want to add Pulse Density Modulation microphone
 	  interface (MICFIL) support for NXP.
 
+config SND_SOC_FSL_EASRC
+	tristate "Enhanced Asynchronous Sample Rate Converter (EASRC) module support"
+	depends on SND_SOC_FSL_ASRC
+	select REGMAP_MMIO
+	select SND_SOC_GENERIC_DMAENGINE_PCM
+	help
+	  Say Y if you want to add Enhanced ASRC support for NXP. The ASRC is
+	  a digital module that converts audio from a source sample rate to a
+	  destination sample rate. It is a new design module compare with the
+	  old ASRC.
+
 config SND_SOC_FSL_UTILS
 	tristate
 
diff --git a/sound/soc/fsl/Makefile b/sound/soc/fsl/Makefile
index 8cde88c72d93..b835eebf8825 100644
--- a/sound/soc/fsl/Makefile
+++ b/sound/soc/fsl/Makefile
@@ -24,6 +24,7 @@ snd-soc-fsl-micfil-objs := fsl_micfil.o
 snd-soc-fsl-utils-objs := fsl_utils.o
 snd-soc-fsl-dma-objs := fsl_dma.o
 snd-soc-fsl-mqs-objs := fsl_mqs.o
+snd-soc-fsl-easrc-objs := fsl_easrc.o
 
 obj-$(CONFIG_SND_SOC_FSL_AUDMIX) += snd-soc-fsl-audmix.o
 obj-$(CONFIG_SND_SOC_FSL_ASOC_CARD) += snd-soc-fsl-asoc-card.o
@@ -35,6 +36,7 @@ obj-$(CONFIG_SND_SOC_FSL_ESAI) += snd-soc-fsl-esai.o
 obj-$(CONFIG_SND_SOC_FSL_MICFIL) += snd-soc-fsl-micfil.o
 obj-$(CONFIG_SND_SOC_FSL_UTILS) += snd-soc-fsl-utils.o
 obj-$(CONFIG_SND_SOC_FSL_MQS) += snd-soc-fsl-mqs.o
+obj-$(CONFIG_SND_SOC_FSL_EASRC) += snd-soc-fsl-easrc.o
 obj-$(CONFIG_SND_SOC_POWERPC_DMA) += snd-soc-fsl-dma.o
 
 # MPC5200 Platform Support
diff --git a/sound/soc/fsl/fsl_easrc.c b/sound/soc/fsl/fsl_easrc.c
new file mode 100644
index 000000000000..52c76760de0e
--- /dev/null
+++ b/sound/soc/fsl/fsl_easrc.c
@@ -0,0 +1,2111 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright 2019 NXP
+
+#include <linux/atomic.h>
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/dma-mapping.h>
+#include <linux/firmware.h>
+#include <linux/interrupt.h>
+#include <linux/kobject.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/miscdevice.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+#include <linux/sched/signal.h>
+#include <linux/sysfs.h>
+#include <linux/types.h>
+#include <linux/gcd.h>
+#include <sound/dmaengine_pcm.h>
+#include <sound/pcm.h>
+#include <sound/pcm_params.h>
+#include <sound/soc.h>
+#include <sound/tlv.h>
+#include <sound/core.h>
+
+#include "fsl_easrc.h"
+#include "imx-pcm.h"
+
+#define FSL_EASRC_FORMATS       (SNDRV_PCM_FMTBIT_S16_LE | \
+				 SNDRV_PCM_FMTBIT_U16_LE | \
+				 SNDRV_PCM_FMTBIT_S24_LE | \
+				 SNDRV_PCM_FMTBIT_S24_3LE | \
+				 SNDRV_PCM_FMTBIT_U24_LE | \
+				 SNDRV_PCM_FMTBIT_U24_3LE | \
+				 SNDRV_PCM_FMTBIT_S32_LE | \
+				 SNDRV_PCM_FMTBIT_U32_LE | \
+				 SNDRV_PCM_FMTBIT_S20_3LE | \
+				 SNDRV_PCM_FMTBIT_U20_3LE | \
+				 SNDRV_PCM_FMTBIT_FLOAT_LE)
+
+static int fsl_easrc_iec958_put_bits(struct snd_kcontrol *kcontrol,
+				     struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *comp = snd_kcontrol_chip(kcontrol);
+	struct fsl_asrc *easrc = snd_soc_component_get_drvdata(comp);
+	struct fsl_easrc_priv *easrc_priv = easrc->private;
+	struct soc_mreg_control *mc =
+		(struct soc_mreg_control *)kcontrol->private_value;
+	unsigned int regval = ucontrol->value.integer.value[0];
+
+	easrc_priv->bps_iec958[mc->regbase] = regval;
+
+	return 0;
+}
+
+static int fsl_easrc_iec958_get_bits(struct snd_kcontrol *kcontrol,
+				     struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *comp = snd_kcontrol_chip(kcontrol);
+	struct fsl_asrc *easrc = snd_soc_component_get_drvdata(comp);
+	struct fsl_easrc_priv *easrc_priv = easrc->private;
+	struct soc_mreg_control *mc =
+		(struct soc_mreg_control *)kcontrol->private_value;
+
+	ucontrol->value.enumerated.item[0] = easrc_priv->bps_iec958[mc->regbase];
+
+	return 0;
+}
+
+static int fsl_easrc_get_reg(struct snd_kcontrol *kcontrol,
+			     struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
+	struct soc_mreg_control *mc =
+		(struct soc_mreg_control *)kcontrol->private_value;
+	unsigned int regval;
+	int ret;
+
+	ret = snd_soc_component_read(component, mc->regbase, &regval);
+	if (ret < 0)
+		return ret;
+
+	ucontrol->value.integer.value[0] = regval;
+
+	return 0;
+}
+
+static int fsl_easrc_set_reg(struct snd_kcontrol *kcontrol,
+			     struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
+	struct soc_mreg_control *mc =
+		(struct soc_mreg_control *)kcontrol->private_value;
+	unsigned int regval = ucontrol->value.integer.value[0];
+	int ret;
+
+	ret = snd_soc_component_write(component, mc->regbase, regval);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+#define SOC_SINGLE_REG_RW(xname, xreg) \
+{	.iface = SNDRV_CTL_ELEM_IFACE_PCM, .name = (xname), \
+	.access = SNDRV_CTL_ELEM_ACCESS_READWRITE, \
+	.info = snd_soc_info_xr_sx, .get = fsl_easrc_get_reg, \
+	.put = fsl_easrc_set_reg, \
+	.private_value = (unsigned long)&(struct soc_mreg_control) \
+		{ .regbase = xreg, .regcount = 1, .nbits = 32, \
+		  .invert = 0, .min = 0, .max = 0xffffffff, } }
+
+#define SOC_SINGLE_VAL_RW(xname, xreg) \
+{	.iface = SNDRV_CTL_ELEM_IFACE_PCM, .name = (xname), \
+	.access = SNDRV_CTL_ELEM_ACCESS_READWRITE, \
+	.info = snd_soc_info_xr_sx, .get = fsl_easrc_iec958_get_bits, \
+	.put = fsl_easrc_iec958_put_bits, \
+	.private_value = (unsigned long)&(struct soc_mreg_control) \
+		{ .regbase = xreg, .regcount = 1, .nbits = 32, \
+		  .invert = 0, .min = 0, .max = 2, } }
+
+static const struct snd_kcontrol_new fsl_easrc_snd_controls[] = {
+	SOC_SINGLE("Context 0 Dither Switch", REG_EASRC_COC(0), 0, 1, 0),
+	SOC_SINGLE("Context 1 Dither Switch", REG_EASRC_COC(1), 0, 1, 0),
+	SOC_SINGLE("Context 2 Dither Switch", REG_EASRC_COC(2), 0, 1, 0),
+	SOC_SINGLE("Context 3 Dither Switch", REG_EASRC_COC(3), 0, 1, 0),
+
+	SOC_SINGLE("Context 0 IEC958 Validity", REG_EASRC_COC(0), 2, 1, 0),
+	SOC_SINGLE("Context 1 IEC958 Validity", REG_EASRC_COC(1), 2, 1, 0),
+	SOC_SINGLE("Context 2 IEC958 Validity", REG_EASRC_COC(2), 2, 1, 0),
+	SOC_SINGLE("Context 3 IEC958 Validity", REG_EASRC_COC(3), 2, 1, 0),
+
+	SOC_SINGLE_VAL_RW("Context 0 IEC958 Bits Per Sample", 0),
+	SOC_SINGLE_VAL_RW("Context 1 IEC958 Bits Per Sample", 1),
+	SOC_SINGLE_VAL_RW("Context 2 IEC958 Bits Per Sample", 2),
+	SOC_SINGLE_VAL_RW("Context 3 IEC958 Bits Per Sample", 3),
+
+	SOC_SINGLE_REG_RW("Context 0 IEC958 CS0", REG_EASRC_CS0(0)),
+	SOC_SINGLE_REG_RW("Context 1 IEC958 CS0", REG_EASRC_CS0(1)),
+	SOC_SINGLE_REG_RW("Context 2 IEC958 CS0", REG_EASRC_CS0(2)),
+	SOC_SINGLE_REG_RW("Context 3 IEC958 CS0", REG_EASRC_CS0(3)),
+	SOC_SINGLE_REG_RW("Context 0 IEC958 CS1", REG_EASRC_CS1(0)),
+	SOC_SINGLE_REG_RW("Context 1 IEC958 CS1", REG_EASRC_CS1(1)),
+	SOC_SINGLE_REG_RW("Context 2 IEC958 CS1", REG_EASRC_CS1(2)),
+	SOC_SINGLE_REG_RW("Context 3 IEC958 CS1", REG_EASRC_CS1(3)),
+	SOC_SINGLE_REG_RW("Context 0 IEC958 CS2", REG_EASRC_CS2(0)),
+	SOC_SINGLE_REG_RW("Context 1 IEC958 CS2", REG_EASRC_CS2(1)),
+	SOC_SINGLE_REG_RW("Context 2 IEC958 CS2", REG_EASRC_CS2(2)),
+	SOC_SINGLE_REG_RW("Context 3 IEC958 CS2", REG_EASRC_CS2(3)),
+	SOC_SINGLE_REG_RW("Context 0 IEC958 CS3", REG_EASRC_CS3(0)),
+	SOC_SINGLE_REG_RW("Context 1 IEC958 CS3", REG_EASRC_CS3(1)),
+	SOC_SINGLE_REG_RW("Context 2 IEC958 CS3", REG_EASRC_CS3(2)),
+	SOC_SINGLE_REG_RW("Context 3 IEC958 CS3", REG_EASRC_CS3(3)),
+	SOC_SINGLE_REG_RW("Context 0 IEC958 CS4", REG_EASRC_CS4(0)),
+	SOC_SINGLE_REG_RW("Context 1 IEC958 CS4", REG_EASRC_CS4(1)),
+	SOC_SINGLE_REG_RW("Context 2 IEC958 CS4", REG_EASRC_CS4(2)),
+	SOC_SINGLE_REG_RW("Context 3 IEC958 CS4", REG_EASRC_CS4(3)),
+	SOC_SINGLE_REG_RW("Context 0 IEC958 CS5", REG_EASRC_CS5(0)),
+	SOC_SINGLE_REG_RW("Context 1 IEC958 CS5", REG_EASRC_CS5(1)),
+	SOC_SINGLE_REG_RW("Context 2 IEC958 CS5", REG_EASRC_CS5(2)),
+	SOC_SINGLE_REG_RW("Context 3 IEC958 CS5", REG_EASRC_CS5(3)),
+};
+
+/*
+ * fsl_easrc_set_rs_ratio
+ *
+ * According to the resample taps, calculate the resample ratio
+ * ratio = in_rate / out_rate
+ */
+static int fsl_easrc_set_rs_ratio(struct fsl_asrc_pair *ctx)
+{
+	struct fsl_asrc *easrc = ctx->asrc;
+	struct fsl_easrc_priv *easrc_priv = easrc->private;
+	struct fsl_easrc_ctx_priv *ctx_priv = ctx->private;
+	unsigned int in_rate = ctx_priv->in_params.norm_rate;
+	unsigned int out_rate = ctx_priv->out_params.norm_rate;
+	unsigned int int_bits;
+	unsigned int frac_bits;
+	u64 val;
+	u32 *r;
+
+	switch (easrc_priv->rs_num_taps) {
+	case EASRC_RS_32_TAPS:
+		int_bits = 5;
+		frac_bits = 39;
+		break;
+	case EASRC_RS_64_TAPS:
+		int_bits = 6;
+		frac_bits = 38;
+		break;
+	case EASRC_RS_128_TAPS:
+		int_bits = 7;
+		frac_bits = 37;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	val = (u64)in_rate << frac_bits;
+	do_div(val, out_rate);
+	r = (uint32_t *)&val;
+	regmap_write(easrc->regmap, REG_EASRC_RRL(ctx->index),
+		     EASRC_RRL_RS_RL(r[0]));
+	regmap_write(easrc->regmap, REG_EASRC_RRH(ctx->index),
+		     EASRC_RRH_RS_RH(r[1]));
+
+	return 0;
+}
+
+/* Normalize input and output sample rates */
+static void fsl_easrc_normalize_rates(struct fsl_asrc_pair *ctx)
+{
+	struct fsl_easrc_ctx_priv *ctx_priv;
+	int a, b;
+
+	if (!ctx)
+		return;
+
+	ctx_priv = ctx->private;
+
+	a = ctx_priv->in_params.sample_rate;
+	b = ctx_priv->out_params.sample_rate;
+
+	a = gcd(a, b);
+
+	/* Divide by gcd to normalize the rate */
+	ctx_priv->in_params.norm_rate = ctx_priv->in_params.sample_rate / a;
+	ctx_priv->out_params.norm_rate = ctx_priv->out_params.sample_rate / a;
+}
+
+/* Resets the pointer of the coeff memory pointers */
+static int fsl_easrc_coeff_mem_ptr_reset(struct fsl_asrc *easrc,
+					 unsigned int ctx_id, int mem_type)
+{
+	struct device *dev;
+	u32 reg, mask, val;
+
+	if (!easrc)
+		return -ENODEV;
+
+	dev = &easrc->pdev->dev;
+
+	switch (mem_type) {
+	case EASRC_PF_COEFF_MEM:
+		/* This resets the prefilter memory pointer addr */
+		if (ctx_id >= EASRC_CTX_MAX_NUM) {
+			dev_err(dev, "Invalid context id[%d]\n", ctx_id);
+			return -EINVAL;
+		}
+
+		reg = REG_EASRC_CCE1(ctx_id);
+		mask = EASRC_CCE1_COEF_MEM_RST_MASK;
+		val = EASRC_CCE1_COEF_MEM_RST;
+		break;
+	case EASRC_RS_COEFF_MEM:
+		/* This resets the resampling memory pointer addr */
+		reg = REG_EASRC_CRCC;
+		mask = EASRC_CRCC_RS_CPR_MASK;
+		val = EASRC_CRCC_RS_CPR;
+		break;
+	default:
+		dev_err(dev, "Unknown memory type\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * To reset the write pointer back to zero, the register field
+	 * ASRC_CTX_CTRL_EXT1x[PF_COEFF_MEM_RST] can be toggled from
+	 * 0x0 to 0x1 to 0x0.
+	 */
+	regmap_update_bits(easrc->regmap, reg, mask, 0);
+	regmap_update_bits(easrc->regmap, reg, mask, val);
+	regmap_update_bits(easrc->regmap, reg, mask, 0);
+
+	return 0;
+}
+
+static inline uint32_t bits_taps_to_val(unsigned int t)
+{
+	switch (t) {
+	case EASRC_RS_32_TAPS:
+		return 32;
+	case EASRC_RS_64_TAPS:
+		return 64;
+	case EASRC_RS_128_TAPS:
+		return 128;
+	}
+
+	return 0;
+}
+
+static int fsl_easrc_resampler_config(struct fsl_asrc *easrc)
+{
+	struct device *dev = &easrc->pdev->dev;
+	struct fsl_easrc_priv *easrc_priv = easrc->private;
+	struct asrc_firmware_hdr *hdr =  easrc_priv->firmware_hdr;
+	struct interp_params *interp = easrc_priv->interp;
+	struct interp_params *selected_interp = NULL;
+	unsigned int num_coeff;
+	unsigned int i;
+	u64 *arr;
+	u32 *r;
+	int ret;
+
+	if (!hdr) {
+		dev_err(dev, "firmware not loaded!\n");
+		return -ENODEV;
+	}
+
+	for (i = 0; i < hdr->interp_scen; i++) {
+		if ((interp[i].num_taps - 1) ==
+		    bits_taps_to_val(easrc_priv->rs_num_taps)) {
+			arr = interp[i].coeff;
+			selected_interp = &interp[i];
+			dev_dbg(dev, "Selected interp_filter: %u taps - %u phases\n",
+				selected_interp->num_taps,
+				selected_interp->num_phases);
+			break;
+		}
+	}
+
+	if (!selected_interp) {
+		dev_err(dev, "failed to get interpreter configuration\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * RS_LOW - first half of center tap of the sinc function
+	 * RS_HIGH - second half of center tap of the sinc function
+	 * This is due to the fact the resampling function must be
+	 * symetrical - i.e. odd number of taps
+	 */
+	r = (uint32_t *)&selected_interp->center_tap;
+	regmap_write(easrc->regmap, REG_EASRC_RCTCL, EASRC_RCTCL_RS_CL(r[0]));
+	regmap_write(easrc->regmap, REG_EASRC_RCTCH, EASRC_RCTCH_RS_CH(r[1]));
+
+	/*
+	 * Write Number of Resampling Coefficient Taps
+	 * 00b - 32-Tap Resampling Filter
+	 * 01b - 64-Tap Resampling Filter
+	 * 10b - 128-Tap Resampling Filter
+	 * 11b - N/A
+	 */
+	regmap_update_bits(easrc->regmap, REG_EASRC_CRCC,
+			   EASRC_CRCC_RS_TAPS_MASK,
+			   EASRC_CRCC_RS_TAPS(easrc_priv->rs_num_taps));
+
+	/* Reset prefilter coefficient pointer back to 0 */
+	ret = fsl_easrc_coeff_mem_ptr_reset(easrc, 0, EASRC_RS_COEFF_MEM);
+	if (ret)
+		return ret;
+
+	/*
+	 * When the filter is programmed to run in:
+	 * 32-tap mode, 16-taps, 128-phases 4-coefficients per phase
+	 * 64-tap mode, 32-taps, 64-phases 4-coefficients per phase
+	 * 128-tap mode, 64-taps, 32-phases 4-coefficients per phase
+	 * This means the number of writes is constant no matter
+	 * the mode we are using
+	 */
+	num_coeff = 16 * 128 * 4;
+
+	for (i = 0; i < num_coeff; i++) {
+		r = (uint32_t *)&arr[i];
+		regmap_write(easrc->regmap, REG_EASRC_CRCM,
+			     EASRC_CRCM_RS_CWD(r[0]));
+		regmap_write(easrc->regmap, REG_EASRC_CRCM,
+			     EASRC_CRCM_RS_CWD(r[1]));
+	}
+
+	return 0;
+}
+
+/**
+ *  Scale filter coefficients (64 bits float)
+ *  For input float32 normalized range (1.0,-1.0) -> output int[16,24,32]:
+ *      scale it by multiplying filter coefficients by 2^31
+ *  For input int[16, 24, 32] -> output float32
+ *      scale it by multiplying filter coefficients by 2^-15, 2^-23, 2^-31
+ *  input:
+ *      asrc:  Structure pointer of fsl_asrc
+ *      infilter : Pointer to non-scaled input filter
+ *      shift:  The multiply factor
+ *  output:
+ *      outfilter: scaled filter
+ */
+static int fsl_easrc_normalize_filter(struct fsl_asrc *easrc,
+				      u64 *infilter,
+				      u64 *outfilter,
+				      int shift)
+{
+	struct device *dev = &easrc->pdev->dev;
+	u64 coef = *infilter;
+	s64 exp  = (coef & 0x7ff0000000000000ll) >> 52;
+	u64 outcoef;
+
+	/*
+	 * If exponent is zero (value == 0), or 7ff (value == NaNs)
+	 * dont touch the content
+	 */
+	if (((coef & 0x7ff0000000000000ll) == 0) ||
+	    ((coef & 0x7ff0000000000000ll) == ((u64)0x7ff << 52))) {
+		*outfilter = coef;
+	} else {
+		if ((shift > 0 && (shift + exp) >= 2047) ||
+		    (shift < 0 && (exp + shift) <= 0)) {
+			dev_err(dev, "coef error\n");
+			return -EINVAL;
+		}
+
+		/* coefficient * 2^shift ==>  coefficient_exp + shift */
+		exp += shift;
+		outcoef = (u64)(coef & 0x800FFFFFFFFFFFFFll) +
+					((u64)exp << 52);
+		*outfilter = outcoef;
+	}
+
+	return 0;
+}
+
+static int fsl_easrc_write_pf_coeff_mem(struct fsl_asrc *easrc, int ctx_id,
+					u64 *arr, int n_taps, int shift)
+{
+	struct device *dev = &easrc->pdev->dev;
+	int ret = 0;
+	int i;
+	u32 *r;
+	u64 tmp;
+
+	/* If STx_NUM_TAPS is set to 0x0 then return */
+	if (!n_taps)
+		return 0;
+
+	if (!arr) {
+		dev_err(dev, "NULL buffer\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * When switching between stages, the address pointer
+	 * should be reset back to 0x0 before performing a write
+	 */
+	ret = fsl_easrc_coeff_mem_ptr_reset(easrc, ctx_id, EASRC_PF_COEFF_MEM);
+	if (ret)
+		return ret;
+
+	for (i = 0; i < (n_taps + 1) / 2; i++) {
+		ret = fsl_easrc_normalize_filter(easrc, &arr[i], &tmp, shift);
+		if (ret)
+			return ret;
+
+		r = (uint32_t *)&tmp;
+		regmap_write(easrc->regmap, REG_EASRC_PCF(ctx_id),
+			     EASRC_PCF_CD(r[0]));
+		regmap_write(easrc->regmap, REG_EASRC_PCF(ctx_id),
+			     EASRC_PCF_CD(r[1]));
+	}
+
+	return 0;
+}
+
+static int fsl_easrc_prefilter_config(struct fsl_asrc *easrc,
+				      unsigned int ctx_id)
+{
+	struct prefil_params *prefil, *selected_prefil = NULL;
+	struct fsl_easrc_ctx_priv *ctx_priv;
+	struct fsl_easrc_priv *easrc_priv;
+	struct asrc_firmware_hdr *hdr;
+	struct fsl_asrc_pair *ctx;
+	struct device *dev;
+	u32 inrate, outrate, offset = 0;
+	int ret, i;
+
+	if (!easrc)
+		return -ENODEV;
+
+	dev = &easrc->pdev->dev;
+
+	if (ctx_id >= EASRC_CTX_MAX_NUM) {
+		dev_err(dev, "Invalid context id[%d]\n", ctx_id);
+		return -EINVAL;
+	}
+
+	easrc_priv = easrc->private;
+
+	ctx = easrc->pair[ctx_id];
+	ctx_priv = ctx->private;
+
+	ctx_priv->in_filled_sample = bits_taps_to_val(easrc_priv->rs_num_taps) / 2;
+	ctx_priv->out_missed_sample = ctx_priv->in_filled_sample *
+					  ctx_priv->out_params.sample_rate /
+					  ctx_priv->in_params.sample_rate;
+
+	ctx_priv->st1_num_taps = 0;
+	ctx_priv->st2_num_taps = 0;
+
+	regmap_write(easrc->regmap, REG_EASRC_CCE1(ctx_id), 0);
+	regmap_write(easrc->regmap, REG_EASRC_CCE2(ctx_id), 0);
+
+	/*
+	 * The audio float point data range is (-1, 1), the asrc would output
+	 * all zero for float point input and integer output case, that is to
+	 * drop the fractional part of the data directly.
+	 *
+	 * In order to support float to int conversion or int to float
+	 * conversion we need to do special operation on the coefficient to
+	 * enlarge/reduce the data to the expected range.
+	 *
+	 * For float to int case:
+	 * Up sampling:
+	 * 1. Create a 1 tap filter with center tap (only tap) of 2^31
+	 *    in 64 bits floating point.
+	 *    double value = (double)(((uint64_t)1) << 31)
+	 * 2. Program 1 tap prefilter with center tap above.
+	 *
+	 * Down sampling,
+	 * 1. If the filter is single stage filter, add "shift" to the exponent
+	 *    of stage 1 coefficients.
+	 * 2. If the filter is two stage filter , add "shift" to the exponent
+	 *    of stage 2 coefficients.
+	 *
+	 * The "shift" is 31, same for int16, int24, int32 case.
+	 *
+	 * For int to float case:
+	 * Up sampling:
+	 * 1. Create a 1 tap filter with center tap (only tap) of 2^-31
+	 *    in 64 bits floating point.
+	 * 2. Program 1 tap prefilter with center tap above.
+	 *
+	 * Down sampling,
+	 * 1. If the filter is single stage filter, subtract "shift" to the
+	 *    exponent of stage 1 coefficients.
+	 * 2. If the filter is two stage filter , subtract "shift" to the
+	 *    exponent of stage 2 coefficients.
+	 *
+	 * The "shift" is 15,23,31, different for int16, int24, int32 case.
+	 *
+	 */
+	if (ctx_priv->out_params.sample_rate >= ctx_priv->in_params.sample_rate) {
+		if (ctx_priv->out_params.sample_rate == ctx_priv->in_params.sample_rate)
+			regmap_update_bits(easrc->regmap,
+					   REG_EASRC_CCE1(ctx_id),
+					   EASRC_CCE1_RS_BYPASS_MASK,
+					   EASRC_CCE1_RS_BYPASS);
+
+		ctx_priv->st1_num_taps = 1;
+		ctx_priv->st1_coeff    = &easrc_priv->const_coeff;
+		ctx_priv->st1_num_exp  = 1;
+		ctx_priv->st2_num_taps = 0;
+
+		if (ctx_priv->in_params.sample_format == SNDRV_PCM_FORMAT_FLOAT_LE &&
+		    ctx_priv->out_params.sample_format != SNDRV_PCM_FORMAT_FLOAT_LE)
+			ctx_priv->st1_addexp = 31;
+		else if (ctx_priv->in_params.sample_format != SNDRV_PCM_FORMAT_FLOAT_LE &&
+			 ctx_priv->out_params.sample_format == SNDRV_PCM_FORMAT_FLOAT_LE)
+			ctx_priv->st1_addexp -= ctx_priv->in_params.fmt.addexp;
+	} else {
+		inrate = ctx_priv->in_params.norm_rate;
+		outrate = ctx_priv->out_params.norm_rate;
+
+		hdr = easrc_priv->firmware_hdr;
+		prefil = easrc_priv->prefil;
+
+		for (i = 0; i < hdr->prefil_scen; i++) {
+			if (inrate == prefil[i].insr &&
+			    outrate == prefil[i].outsr) {
+				selected_prefil = &prefil[i];
+				dev_dbg(dev, "Selected prefilter: %u insr, %u outsr, %u st1_taps, %u st2_taps\n",
+					selected_prefil->insr,
+					selected_prefil->outsr,
+					selected_prefil->st1_taps,
+					selected_prefil->st2_taps);
+				break;
+			}
+		}
+
+		if (!selected_prefil) {
+			dev_err(dev, "Conversion from in ratio %u(%u) to out ratio %u(%u) is not supported\n",
+				ctx_priv->in_params.sample_rate, inrate,
+				ctx_priv->out_params.sample_rate, outrate);
+			return -EINVAL;
+		}
+
+		/*
+		 * In prefilter coeff array, first st1_num_taps represent the
+		 * stage1 prefilter coefficients followed by next st2_num_taps
+		 * representing stage 2 coefficients
+		 */
+		ctx_priv->st1_num_taps = selected_prefil->st1_taps;
+		ctx_priv->st1_coeff    = selected_prefil->coeff;
+		ctx_priv->st1_num_exp  = selected_prefil->st1_exp;
+
+		offset = ((selected_prefil->st1_taps + 1) / 2);
+		ctx_priv->st2_num_taps = selected_prefil->st2_taps;
+		ctx_priv->st2_coeff    = selected_prefil->coeff + offset;
+
+		if (ctx_priv->in_params.sample_format == SNDRV_PCM_FORMAT_FLOAT_LE &&
+		    ctx_priv->out_params.sample_format != SNDRV_PCM_FORMAT_FLOAT_LE) {
+			/* only change stage2 coefficient for 2 stage case */
+			if (ctx_priv->st2_num_taps > 0)
+				ctx_priv->st2_addexp = 31;
+			else
+				ctx_priv->st1_addexp = 31;
+		} else if (ctx_priv->in_params.sample_format != SNDRV_PCM_FORMAT_FLOAT_LE &&
+			   ctx_priv->out_params.sample_format == SNDRV_PCM_FORMAT_FLOAT_LE) {
+			if (ctx_priv->st2_num_taps > 0)
+				ctx_priv->st2_addexp -= ctx_priv->in_params.fmt.addexp;
+			else
+				ctx_priv->st1_addexp -= ctx_priv->in_params.fmt.addexp;
+		}
+	}
+
+	ctx_priv->in_filled_sample += (ctx_priv->st1_num_taps / 2) * ctx_priv->st1_num_exp +
+				  ctx_priv->st2_num_taps / 2;
+	ctx_priv->out_missed_sample = ctx_priv->in_filled_sample *
+				 ctx_priv->out_params.sample_rate /
+				 ctx_priv->in_params.sample_rate;
+
+	if (ctx_priv->in_filled_sample * ctx_priv->out_params.sample_rate %
+				ctx_priv->in_params.sample_rate != 0)
+		ctx_priv->out_missed_sample += 1;
+	/*
+	 * To modify the value of a prefilter coefficient, the user must
+	 * perform a write to the register ASRC_PRE_COEFF_FIFOn[COEFF_DATA]
+	 * while the respective context RUN_EN bit is set to 0b0
+	 */
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx_id),
+			   EASRC_CC_EN_MASK, 0);
+
+	if (ctx_priv->st1_num_taps > EASRC_MAX_PF_TAPS) {
+		dev_err(dev, "ST1 taps [%d] mus be lower than %d\n",
+			ctx_priv->st1_num_taps, EASRC_MAX_PF_TAPS);
+		ret = -EINVAL;
+		goto ctx_error;
+	}
+
+	/* Update ctx ST1_NUM_TAPS in Context Control Extended 2 register */
+	regmap_update_bits(easrc->regmap, REG_EASRC_CCE2(ctx_id),
+			   EASRC_CCE2_ST1_TAPS_MASK,
+			   EASRC_CCE2_ST1_TAPS(ctx_priv->st1_num_taps - 1));
+
+	/* Prefilter Coefficient Write Select to write in ST1 coeff */
+	regmap_update_bits(easrc->regmap, REG_EASRC_CCE1(ctx_id),
+			   EASRC_CCE1_COEF_WS_MASK,
+			   EASRC_PF_ST1_COEFF_WR << EASRC_CCE1_COEF_WS_SHIFT);
+
+	ret = fsl_easrc_write_pf_coeff_mem(easrc, ctx_id,
+					   ctx_priv->st1_coeff,
+					   ctx_priv->st1_num_taps,
+					   ctx_priv->st1_addexp);
+	if (ret)
+		goto ctx_error;
+
+	if (ctx_priv->st2_num_taps > 0) {
+		if (ctx_priv->st2_num_taps + ctx_priv->st1_num_taps > EASRC_MAX_PF_TAPS) {
+			dev_err(dev, "ST2 taps [%d] mus be lower than %d\n",
+				ctx_priv->st2_num_taps, EASRC_MAX_PF_TAPS);
+			ret = -EINVAL;
+			goto ctx_error;
+		}
+
+		regmap_update_bits(easrc->regmap, REG_EASRC_CCE1(ctx_id),
+				   EASRC_CCE1_PF_TSEN_MASK,
+				   EASRC_CCE1_PF_TSEN);
+		/*
+		 * Enable prefilter stage1 writeback floating point
+		 * which is used for FLOAT_LE case
+		 */
+		regmap_update_bits(easrc->regmap, REG_EASRC_CCE1(ctx_id),
+				   EASRC_CCE1_PF_ST1_WBFP_MASK,
+				   EASRC_CCE1_PF_ST1_WBFP);
+
+		regmap_update_bits(easrc->regmap, REG_EASRC_CCE1(ctx_id),
+				   EASRC_CCE1_PF_EXP_MASK,
+				   EASRC_CCE1_PF_EXP(ctx_priv->st1_num_exp - 1));
+
+		/* Update ctx ST2_NUM_TAPS in Context Control Extended 2 reg */
+		regmap_update_bits(easrc->regmap, REG_EASRC_CCE2(ctx_id),
+				   EASRC_CCE2_ST2_TAPS_MASK,
+				   EASRC_CCE2_ST2_TAPS(ctx_priv->st2_num_taps - 1));
+
+		/* Prefilter Coefficient Write Select to write in ST2 coeff */
+		regmap_update_bits(easrc->regmap, REG_EASRC_CCE1(ctx_id),
+				   EASRC_CCE1_COEF_WS_MASK,
+				   EASRC_PF_ST2_COEFF_WR << EASRC_CCE1_COEF_WS_SHIFT);
+
+		ret = fsl_easrc_write_pf_coeff_mem(easrc, ctx_id,
+						   ctx_priv->st2_coeff,
+						   ctx_priv->st2_num_taps,
+						   ctx_priv->st2_addexp);
+		if (ret)
+			goto ctx_error;
+	}
+
+	return 0;
+
+ctx_error:
+	return ret;
+}
+
+static int fsl_easrc_max_ch_for_slot(struct fsl_asrc_pair *ctx,
+				     struct fsl_easrc_slot *slot)
+{
+	struct fsl_easrc_ctx_priv *ctx_priv = ctx->private;
+	int st1_mem_alloc = 0, st2_mem_alloc = 0;
+	int pf_mem_alloc = 0;
+	int max_channels = 8 - slot->num_channel;
+	int channels = 0;
+
+	if (ctx_priv->st1_num_taps > 0) {
+		if (ctx_priv->st2_num_taps > 0)
+			st1_mem_alloc =
+				(ctx_priv->st1_num_taps - 1) * ctx_priv->st1_num_exp + 1;
+		else
+			st1_mem_alloc = ctx_priv->st1_num_taps;
+	}
+
+	if (ctx_priv->st2_num_taps > 0)
+		st2_mem_alloc = ctx_priv->st2_num_taps;
+
+	pf_mem_alloc = st1_mem_alloc + st2_mem_alloc;
+
+	if (pf_mem_alloc != 0)
+		channels = (6144 - slot->pf_mem_used) / pf_mem_alloc;
+	else
+		channels = 8;
+
+	if (channels < max_channels)
+		max_channels = channels;
+
+	return max_channels;
+}
+
+static int fsl_easrc_config_one_slot(struct fsl_asrc_pair *ctx,
+				     struct fsl_easrc_slot *slot,
+				     unsigned int slot_ctx_idx,
+				     unsigned int *req_channels,
+				     unsigned int *start_channel,
+				     unsigned int *avail_channel)
+{
+	struct fsl_asrc *easrc = ctx->asrc;
+	struct fsl_easrc_ctx_priv *ctx_priv = ctx->private;
+	int st1_chanxexp, st1_mem_alloc = 0, st2_mem_alloc = 0;
+	unsigned int reg0, reg1, reg2, reg3;
+	unsigned int addr;
+
+	if (slot->slot_index == 0) {
+		reg0 = REG_EASRC_DPCS0R0(slot_ctx_idx);
+		reg1 = REG_EASRC_DPCS0R1(slot_ctx_idx);
+		reg2 = REG_EASRC_DPCS0R2(slot_ctx_idx);
+		reg3 = REG_EASRC_DPCS0R3(slot_ctx_idx);
+	} else {
+		reg0 = REG_EASRC_DPCS1R0(slot_ctx_idx);
+		reg1 = REG_EASRC_DPCS1R1(slot_ctx_idx);
+		reg2 = REG_EASRC_DPCS1R2(slot_ctx_idx);
+		reg3 = REG_EASRC_DPCS1R3(slot_ctx_idx);
+	}
+
+	if (*req_channels <= *avail_channel) {
+		slot->num_channel = *req_channels;
+		*req_channels = 0;
+	} else {
+		slot->num_channel = *avail_channel;
+		*req_channels -= *avail_channel;
+	}
+
+	slot->min_channel = *start_channel;
+	slot->max_channel = *start_channel + slot->num_channel - 1;
+	slot->ctx_index = ctx->index;
+	slot->busy = true;
+	*start_channel += slot->num_channel;
+
+	regmap_update_bits(easrc->regmap, reg0,
+			   EASRC_DPCS0R0_MAXCH_MASK,
+			   EASRC_DPCS0R0_MAXCH(slot->max_channel));
+
+	regmap_update_bits(easrc->regmap, reg0,
+			   EASRC_DPCS0R0_MINCH_MASK,
+			   EASRC_DPCS0R0_MINCH(slot->min_channel));
+
+	regmap_update_bits(easrc->regmap, reg0,
+			   EASRC_DPCS0R0_NUMCH_MASK,
+			   EASRC_DPCS0R0_NUMCH(slot->num_channel - 1));
+
+	regmap_update_bits(easrc->regmap, reg0,
+			   EASRC_DPCS0R0_CTXNUM_MASK,
+			   EASRC_DPCS0R0_CTXNUM(slot->ctx_index));
+
+	if (ctx_priv->st1_num_taps > 0) {
+		if (ctx_priv->st2_num_taps > 0)
+			st1_mem_alloc =
+				(ctx_priv->st1_num_taps - 1) * slot->num_channel *
+				ctx_priv->st1_num_exp + slot->num_channel;
+		else
+			st1_mem_alloc = ctx_priv->st1_num_taps * slot->num_channel;
+
+		slot->pf_mem_used = st1_mem_alloc;
+		regmap_update_bits(easrc->regmap, reg2,
+				   EASRC_DPCS0R2_ST1_MA_MASK,
+				   EASRC_DPCS0R2_ST1_MA(st1_mem_alloc));
+
+		if (slot->slot_index == 1)
+			addr = PREFILTER_MEM_LEN - st1_mem_alloc;
+		else
+			addr = 0;
+
+		regmap_update_bits(easrc->regmap, reg2,
+				   EASRC_DPCS0R2_ST1_SA_MASK,
+				   EASRC_DPCS0R2_ST1_SA(addr));
+	}
+
+	if (ctx_priv->st2_num_taps > 0) {
+		st1_chanxexp = slot->num_channel * (ctx_priv->st1_num_exp - 1);
+
+		regmap_update_bits(easrc->regmap, reg1,
+				   EASRC_DPCS0R1_ST1_EXP_MASK,
+				   EASRC_DPCS0R1_ST1_EXP(st1_chanxexp));
+
+		st2_mem_alloc = slot->num_channel * ctx_priv->st2_num_taps;
+		slot->pf_mem_used += st2_mem_alloc;
+		regmap_update_bits(easrc->regmap, reg3,
+				   EASRC_DPCS0R3_ST2_MA_MASK,
+				   EASRC_DPCS0R3_ST2_MA(st2_mem_alloc));
+
+		if (slot->slot_index == 1)
+			addr = PREFILTER_MEM_LEN - st1_mem_alloc - st2_mem_alloc;
+		else
+			addr = st1_mem_alloc;
+
+		regmap_update_bits(easrc->regmap, reg3,
+				   EASRC_DPCS0R3_ST2_SA_MASK,
+				   EASRC_DPCS0R3_ST2_SA(addr));
+	}
+
+	regmap_update_bits(easrc->regmap, reg0,
+			   EASRC_DPCS0R0_EN_MASK, EASRC_DPCS0R0_EN);
+
+	return 0;
+}
+
+/*
+ * fsl_easrc_config_slot
+ *
+ * A single context can be split amongst any of the 4 context processing pipes
+ * in the design.
+ * The total number of channels consumed within the context processor must be
+ * less than or equal to 8. if a single context is configured to contain more
+ * than 8 channels then it must be distributed across multiple context
+ * processing pipe slots.
+ *
+ */
+static int fsl_easrc_config_slot(struct fsl_asrc *easrc, unsigned int ctx_id)
+{
+	struct fsl_easrc_priv *easrc_priv = easrc->private;
+	struct fsl_asrc_pair *ctx = easrc->pair[ctx_id];
+	int req_channels = ctx->channels;
+	int start_channel = 0, avail_channel;
+	struct fsl_easrc_slot *slot0, *slot1;
+	int i, ret;
+
+	if (req_channels <= 0)
+		return -EINVAL;
+
+	for (i = 0; i < EASRC_CTX_MAX_NUM; i++) {
+		slot0 = &easrc_priv->slot[i][0];
+		slot1 = &easrc_priv->slot[i][1];
+
+		if (slot0->busy && slot1->busy)
+			continue;
+
+		if (!slot0->busy) {
+			if (slot1->busy && slot1->ctx_index == ctx->index)
+				continue;
+
+			avail_channel = fsl_easrc_max_ch_for_slot(ctx, slot1);
+			if (avail_channel <= 0)
+				continue;
+
+			slot0->slot_index = 0;
+
+			ret = fsl_easrc_config_one_slot(ctx,
+							slot0, i,
+							&req_channels,
+							&start_channel,
+							&avail_channel);
+			if (ret)
+				return ret;
+
+			if (req_channels > 0)
+				continue;
+			else
+				break;
+		}
+
+		if (slot0->busy && !slot1->busy) {
+			if (slot0->ctx_index == ctx->index)
+				continue;
+
+			avail_channel = fsl_easrc_max_ch_for_slot(ctx, slot0);
+			if (avail_channel <= 0)
+				continue;
+
+			slot1->slot_index = 1;
+
+			ret = fsl_easrc_config_one_slot(ctx,
+							slot1, i,
+							&req_channels,
+							&start_channel,
+							&avail_channel);
+			if (ret)
+				return ret;
+
+			if (req_channels > 0)
+				continue;
+			else
+				break;
+		}
+	}
+
+	if (req_channels > 0) {
+		dev_err(&easrc->pdev->dev, "no avail slot.\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/*
+ * fsl_easrc_release_slot
+ *
+ * Clear the slot configuration
+ */
+static int fsl_easrc_release_slot(struct fsl_asrc *easrc, unsigned int ctx_id)
+{
+	struct fsl_easrc_priv *easrc_priv = easrc->private;
+	struct fsl_asrc_pair *ctx = easrc->pair[ctx_id];
+	int i;
+
+	for (i = 0; i < EASRC_CTX_MAX_NUM; i++) {
+		if (easrc_priv->slot[i][0].busy &&
+		    easrc_priv->slot[i][0].ctx_index == ctx->index) {
+			easrc_priv->slot[i][0].busy = false;
+			easrc_priv->slot[i][0].num_channel = 0;
+			easrc_priv->slot[i][0].pf_mem_used = 0;
+			/* set registers */
+			regmap_write(easrc->regmap, REG_EASRC_DPCS0R0(i), 0);
+			regmap_write(easrc->regmap, REG_EASRC_DPCS0R1(i), 0);
+			regmap_write(easrc->regmap, REG_EASRC_DPCS0R2(i), 0);
+			regmap_write(easrc->regmap, REG_EASRC_DPCS0R3(i), 0);
+		}
+
+		if (easrc_priv->slot[i][1].busy &&
+		    easrc_priv->slot[i][1].ctx_index == ctx->index) {
+			easrc_priv->slot[i][1].busy = false;
+			easrc_priv->slot[i][1].num_channel = 0;
+			easrc_priv->slot[i][1].pf_mem_used = 0;
+			/* set registers */
+			regmap_write(easrc->regmap, REG_EASRC_DPCS1R0(i), 0);
+			regmap_write(easrc->regmap, REG_EASRC_DPCS1R1(i), 0);
+			regmap_write(easrc->regmap, REG_EASRC_DPCS1R2(i), 0);
+			regmap_write(easrc->regmap, REG_EASRC_DPCS1R3(i), 0);
+		}
+	}
+
+	return 0;
+}
+
+/*
+ * fsl_easrc_config_context
+ *
+ * Configure the register relate with context.
+ */
+int fsl_easrc_config_context(struct fsl_asrc *easrc, unsigned int ctx_id)
+{
+	struct fsl_easrc_ctx_priv *ctx_priv;
+	struct fsl_asrc_pair *ctx;
+	struct device *dev;
+	unsigned long lock_flags;
+	int ret;
+
+	if (!easrc)
+		return -ENODEV;
+
+	dev = &easrc->pdev->dev;
+
+	if (ctx_id >= EASRC_CTX_MAX_NUM) {
+		dev_err(dev, "Invalid context id[%d]\n", ctx_id);
+		return -EINVAL;
+	}
+
+	ctx = easrc->pair[ctx_id];
+
+	ctx_priv = ctx->private;
+
+	fsl_easrc_normalize_rates(ctx);
+
+	ret = fsl_easrc_set_rs_ratio(ctx);
+	if (ret)
+		return ret;
+
+	/* Initialize the context coeficients */
+	ret = fsl_easrc_prefilter_config(easrc, ctx->index);
+	if (ret)
+		return ret;
+
+	spin_lock_irqsave(&easrc->lock, lock_flags);
+	ret = fsl_easrc_config_slot(easrc, ctx->index);
+	spin_unlock_irqrestore(&easrc->lock, lock_flags);
+	if (ret)
+		return ret;
+
+	/*
+	 * Both prefilter and resampling filters can use following
+	 * initialization modes:
+	 * 2 - zero-fil mode
+	 * 1 - replication mode
+	 * 0 - software control
+	 */
+	regmap_update_bits(easrc->regmap, REG_EASRC_CCE1(ctx_id),
+			   EASRC_CCE1_RS_INIT_MASK,
+			   EASRC_CCE1_RS_INIT(ctx_priv->rs_init_mode));
+
+	regmap_update_bits(easrc->regmap, REG_EASRC_CCE1(ctx_id),
+			   EASRC_CCE1_PF_INIT_MASK,
+			   EASRC_CCE1_PF_INIT(ctx_priv->pf_init_mode));
+
+	/* Context Input FIFO Watermark */
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx_id),
+			   EASRC_CC_FIFO_WTMK_MASK,
+			   EASRC_CC_FIFO_WTMK(ctx_priv->in_params.fifo_wtmk));
+
+	/* Context Output FIFO Watermark */
+	regmap_update_bits(easrc->regmap, REG_EASRC_COC(ctx_id),
+			   EASRC_COC_FIFO_WTMK_MASK,
+			   EASRC_COC_FIFO_WTMK(ctx_priv->out_params.fifo_wtmk - 1));
+
+	/* Number of channels */
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx_id),
+			   EASRC_CC_CHEN_MASK,
+			   EASRC_CC_CHEN(ctx->channels - 1));
+	return 0;
+}
+
+static int fsl_easrc_process_format(struct fsl_asrc_pair *ctx,
+				    struct fsl_easrc_data_fmt *fmt,
+				    snd_pcm_format_t raw_fmt)
+{
+	struct fsl_asrc *easrc = ctx->asrc;
+	struct fsl_easrc_priv *easrc_priv = easrc->private;
+	int ret;
+
+	if (!fmt)
+		return -EINVAL;
+
+	/*
+	 * Context Input Floating Point Format
+	 * 0 - Integer Format
+	 * 1 - Single Precision FP Format
+	 */
+	fmt->floating_point = !snd_pcm_format_linear(raw_fmt);
+	fmt->sample_pos = 0;
+	fmt->iec958 = 0;
+
+	/* Get the data width */
+	switch (snd_pcm_format_width(raw_fmt)) {
+	case 16:
+		fmt->width = EASRC_WIDTH_16_BIT;
+		fmt->addexp = 15;
+		break;
+	case 20:
+		fmt->width = EASRC_WIDTH_20_BIT;
+		fmt->addexp = 19;
+		break;
+	case 24:
+		fmt->width = EASRC_WIDTH_24_BIT;
+		fmt->addexp = 23;
+		break;
+	case 32:
+		fmt->width = EASRC_WIDTH_32_BIT;
+		fmt->addexp = 31;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	switch (raw_fmt) {
+	case SNDRV_PCM_FORMAT_IEC958_SUBFRAME_LE:
+		fmt->width = easrc_priv->bps_iec958[ctx->index];
+		fmt->iec958 = 1;
+		fmt->floating_point = 0;
+		if (fmt->width == EASRC_WIDTH_16_BIT) {
+			fmt->sample_pos = 12;
+			fmt->addexp = 15;
+		} else if (fmt->width == EASRC_WIDTH_20_BIT) {
+			fmt->sample_pos = 8;
+			fmt->addexp = 19;
+		} else if (fmt->width == EASRC_WIDTH_24_BIT) {
+			fmt->sample_pos = 4;
+			fmt->addexp = 23;
+		}
+		break;
+	default:
+		break;
+	}
+
+	/*
+	 * Data Endianness
+	 * 0 - Little-Endian
+	 * 1 - Big-Endian
+	 */
+	ret = snd_pcm_format_big_endian(raw_fmt);
+	if (ret < 0)
+		return ret;
+
+	fmt->endianness = ret;
+
+	/*
+	 * Input Data sign
+	 * 0b - Signed Format
+	 * 1b - Unsigned Format
+	 */
+	fmt->unsign = snd_pcm_format_unsigned(raw_fmt) > 0 ? 1 : 0;
+
+	return 0;
+}
+
+int fsl_easrc_set_ctx_format(struct fsl_asrc_pair *ctx,
+			     snd_pcm_format_t *in_raw_format,
+			     snd_pcm_format_t *out_raw_format)
+{
+	struct fsl_asrc *easrc = ctx->asrc;
+	struct fsl_easrc_ctx_priv *ctx_priv = ctx->private;
+	struct fsl_easrc_data_fmt *in_fmt = &ctx_priv->in_params.fmt;
+	struct fsl_easrc_data_fmt *out_fmt = &ctx_priv->out_params.fmt;
+	int ret;
+
+	/* Get the bitfield values for input data format */
+	if (in_raw_format && out_raw_format) {
+		ret = fsl_easrc_process_format(ctx, in_fmt, *in_raw_format);
+		if (ret)
+			return ret;
+	}
+
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx->index),
+			   EASRC_CC_BPS_MASK,
+			   EASRC_CC_BPS(in_fmt->width));
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx->index),
+			   EASRC_CC_ENDIANNESS_MASK,
+			   in_fmt->endianness << EASRC_CC_ENDIANNESS_SHIFT);
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx->index),
+			   EASRC_CC_FMT_MASK,
+			   in_fmt->floating_point << EASRC_CC_FMT_SHIFT);
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx->index),
+			   EASRC_CC_INSIGN_MASK,
+			   in_fmt->unsign << EASRC_CC_INSIGN_SHIFT);
+
+	/* In Sample Position */
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx->index),
+			   EASRC_CC_SAMPLE_POS_MASK,
+			   EASRC_CC_SAMPLE_POS(in_fmt->sample_pos));
+
+	/* Get the bitfield values for input data format */
+	if (in_raw_format && out_raw_format) {
+		ret = fsl_easrc_process_format(ctx, out_fmt, *out_raw_format);
+		if (ret)
+			return ret;
+	}
+
+	regmap_update_bits(easrc->regmap, REG_EASRC_COC(ctx->index),
+			   EASRC_COC_BPS_MASK,
+			   EASRC_COC_BPS(out_fmt->width));
+	regmap_update_bits(easrc->regmap, REG_EASRC_COC(ctx->index),
+			   EASRC_COC_ENDIANNESS_MASK,
+			   out_fmt->endianness << EASRC_COC_ENDIANNESS_SHIFT);
+	regmap_update_bits(easrc->regmap, REG_EASRC_COC(ctx->index),
+			   EASRC_COC_FMT_MASK,
+			   out_fmt->floating_point << EASRC_COC_FMT_SHIFT);
+	regmap_update_bits(easrc->regmap, REG_EASRC_COC(ctx->index),
+			   EASRC_COC_OUTSIGN_MASK,
+			   out_fmt->unsign << EASRC_COC_OUTSIGN_SHIFT);
+
+	/* Out Sample Position */
+	regmap_update_bits(easrc->regmap, REG_EASRC_COC(ctx->index),
+			   EASRC_COC_SAMPLE_POS_MASK,
+			   EASRC_COC_SAMPLE_POS(out_fmt->sample_pos));
+
+	regmap_update_bits(easrc->regmap, REG_EASRC_COC(ctx->index),
+			   EASRC_COC_IEC_EN_MASK,
+			   out_fmt->iec958 << EASRC_COC_IEC_EN_SHIFT);
+
+	return ret;
+}
+
+/*
+ * The ASRC provides interleaving support in hardware to ensure that a
+ * variety of sample sources can be internally combined
+ * to conform with this format. Interleaving parameters are accessed
+ * through the ASRC_CTRL_IN_ACCESSa and ASRC_CTRL_OUT_ACCESSa registers
+ */
+int fsl_easrc_set_ctx_organziation(struct fsl_asrc_pair *ctx)
+{
+	struct fsl_easrc_ctx_priv *ctx_priv;
+	struct device *dev;
+	struct fsl_asrc *easrc;
+
+	if (!ctx)
+		return -ENODEV;
+
+	easrc = ctx->asrc;
+	ctx_priv = ctx->private;
+	dev = &easrc->pdev->dev;
+
+	/* input interleaving parameters */
+	regmap_update_bits(easrc->regmap, REG_EASRC_CIA(ctx->index),
+			   EASRC_CIA_ITER_MASK,
+			   EASRC_CIA_ITER(ctx_priv->in_params.iterations));
+	regmap_update_bits(easrc->regmap, REG_EASRC_CIA(ctx->index),
+			   EASRC_CIA_GRLEN_MASK,
+			   EASRC_CIA_GRLEN(ctx_priv->in_params.group_len));
+	regmap_update_bits(easrc->regmap, REG_EASRC_CIA(ctx->index),
+			   EASRC_CIA_ACCLEN_MASK,
+			   EASRC_CIA_ACCLEN(ctx_priv->in_params.access_len));
+
+	/* output interleaving parameters */
+	regmap_update_bits(easrc->regmap, REG_EASRC_COA(ctx->index),
+			   EASRC_COA_ITER_MASK,
+			   EASRC_COA_ITER(ctx_priv->out_params.iterations));
+	regmap_update_bits(easrc->regmap, REG_EASRC_COA(ctx->index),
+			   EASRC_COA_GRLEN_MASK,
+			   EASRC_COA_GRLEN(ctx_priv->out_params.group_len));
+	regmap_update_bits(easrc->regmap, REG_EASRC_COA(ctx->index),
+			   EASRC_COA_ACCLEN_MASK,
+			   EASRC_COA_ACCLEN(ctx_priv->out_params.access_len));
+
+	return 0;
+}
+
+/*
+ * Request one of the available contexts
+ *
+ * Returns a negative number on error and >=0 as context id
+ * on success
+ */
+int fsl_easrc_request_context(int channels, struct fsl_asrc_pair *ctx)
+{
+	enum asrc_pair_index index = ASRC_INVALID_PAIR;
+	struct fsl_asrc *easrc = ctx->asrc;
+	struct device *dev;
+	unsigned long lock_flags;
+	int ret = 0;
+	int i;
+
+	dev = &easrc->pdev->dev;
+
+	spin_lock_irqsave(&easrc->lock, lock_flags);
+
+	for (i = ASRC_PAIR_A; i < EASRC_CTX_MAX_NUM; i++) {
+		if (easrc->pair[i])
+			continue;
+
+		index = i;
+		break;
+	}
+
+	if (index == ASRC_INVALID_PAIR) {
+		dev_err(dev, "all contexts are busy\n");
+		ret = -EBUSY;
+	} else if (channels > easrc->channel_avail) {
+		dev_err(dev, "can't give the required channels: %d\n",
+			channels);
+		ret = -EINVAL;
+	} else {
+		ctx->index = index;
+		ctx->channels = channels;
+		easrc->pair[index] = ctx;
+		easrc->channel_avail -= channels;
+	}
+
+	spin_unlock_irqrestore(&easrc->lock, lock_flags);
+
+	return ret;
+}
+
+/*
+ * Release the context
+ *
+ * This funciton is mainly doing the revert thing in request context
+ */
+void fsl_easrc_release_context(struct fsl_asrc_pair *ctx)
+{
+	unsigned long lock_flags;
+	struct fsl_asrc *easrc;
+	struct device *dev;
+	int ret;
+
+	if (!ctx)
+		return;
+
+	easrc = ctx->asrc;
+	dev = &easrc->pdev->dev;
+
+	spin_lock_irqsave(&easrc->lock, lock_flags);
+
+	ret = fsl_easrc_release_slot(easrc, ctx->index);
+
+	easrc->channel_avail += ctx->channels;
+	easrc->pair[ctx->index] = NULL;
+
+	spin_unlock_irqrestore(&easrc->lock, lock_flags);
+}
+
+/*
+ * Start the context
+ *
+ * Enable the DMA request and context
+ */
+int fsl_easrc_start_context(struct fsl_asrc_pair *ctx)
+{
+	struct fsl_asrc *easrc = ctx->asrc;
+
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx->index),
+			   EASRC_CC_FWMDE_MASK, EASRC_CC_FWMDE);
+	regmap_update_bits(easrc->regmap, REG_EASRC_COC(ctx->index),
+			   EASRC_COC_FWMDE_MASK, EASRC_COC_FWMDE);
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx->index),
+			   EASRC_CC_EN_MASK, EASRC_CC_EN);
+	return 0;
+}
+
+/*
+ * Stop the context
+ *
+ * Disable the DMA request and context
+ */
+int fsl_easrc_stop_context(struct fsl_asrc_pair *ctx)
+{
+	struct fsl_asrc *easrc = ctx->asrc;
+	int val, i;
+	int size = 0;
+	int retry = 200;
+
+	regmap_read(easrc->regmap, REG_EASRC_CC(ctx->index), &val);
+
+	if (val & EASRC_CC_EN_MASK) {
+		regmap_update_bits(easrc->regmap,
+				   REG_EASRC_CC(ctx->index),
+				   EASRC_CC_STOP_MASK, EASRC_CC_STOP);
+		do {
+			regmap_read(easrc->regmap, REG_EASRC_SFS(ctx->index), &val);
+			val &= EASRC_SFS_NSGO_MASK;
+			size = val >> EASRC_SFS_NSGO_SHIFT;
+
+			/* Read FIFO, drop the data */
+			for (i = 0; i < size * ctx->channels; i++)
+				regmap_read(easrc->regmap, REG_EASRC_RDFIFO(ctx->index), &val);
+			/* Check RUN_STOP_DONE */
+			regmap_read(easrc->regmap, REG_EASRC_IRQF, &val);
+			if (val & EASRC_IRQF_RSD(1 << ctx->index)) {
+				/*Clear RUN_STOP_DONE*/
+				regmap_write_bits(easrc->regmap,
+						  REG_EASRC_IRQF,
+						  EASRC_IRQF_RSD(1 << ctx->index),
+						  EASRC_IRQF_RSD(1 << ctx->index));
+				break;
+			}
+			udelay(100);
+		} while (--retry);
+
+		if (retry == 0)
+			dev_warn(&easrc->pdev->dev, "RUN STOP fail\n");
+	}
+
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx->index),
+			   EASRC_CC_EN_MASK | EASRC_CC_STOP_MASK, 0);
+	regmap_update_bits(easrc->regmap, REG_EASRC_CC(ctx->index),
+			   EASRC_CC_FWMDE_MASK, 0);
+	regmap_update_bits(easrc->regmap, REG_EASRC_COC(ctx->index),
+			   EASRC_COC_FWMDE_MASK, 0);
+	return 0;
+}
+
+struct dma_chan *fsl_easrc_get_dma_channel(struct fsl_asrc_pair *ctx,
+					   bool dir)
+{
+	struct fsl_asrc *easrc = ctx->asrc;
+	enum asrc_pair_index index = ctx->index;
+	char name[8];
+
+	/* Example of dma name: ctx0_rx */
+	sprintf(name, "ctx%c_%cx", index + '0', dir == IN ? 'r' : 't');
+
+	return dma_request_slave_channel(&easrc->pdev->dev, name);
+};
+EXPORT_SYMBOL_GPL(fsl_easrc_get_dma_channel);
+
+static const unsigned int easrc_rates[] = {
+	8000, 11025, 12000, 16000,
+	22050, 24000, 32000, 44100,
+	48000, 64000, 88200, 96000,
+	128000, 176400, 192000, 256000,
+	352800, 384000, 705600, 768000,
+};
+
+static const struct snd_pcm_hw_constraint_list easrc_rate_constraints = {
+	.count = ARRAY_SIZE(easrc_rates),
+	.list = easrc_rates,
+};
+
+static int fsl_easrc_startup(struct snd_pcm_substream *substream,
+			     struct snd_soc_dai *dai)
+{
+	return snd_pcm_hw_constraint_list(substream->runtime, 0,
+					  SNDRV_PCM_HW_PARAM_RATE,
+					  &easrc_rate_constraints);
+}
+
+static int fsl_easrc_trigger(struct snd_pcm_substream *substream,
+			     int cmd, struct snd_soc_dai *dai)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct fsl_asrc_pair *ctx = runtime->private_data;
+	int ret;
+
+	switch (cmd) {
+	case SNDRV_PCM_TRIGGER_START:
+	case SNDRV_PCM_TRIGGER_RESUME:
+	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
+		ret = fsl_easrc_start_context(ctx);
+		if (ret)
+			return ret;
+		break;
+	case SNDRV_PCM_TRIGGER_STOP:
+	case SNDRV_PCM_TRIGGER_SUSPEND:
+	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
+		ret = fsl_easrc_stop_context(ctx);
+		if (ret)
+			return ret;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int fsl_easrc_hw_params(struct snd_pcm_substream *substream,
+			       struct snd_pcm_hw_params *params,
+			       struct snd_soc_dai *dai)
+{
+	struct fsl_asrc *easrc = snd_soc_dai_get_drvdata(dai);
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct device *dev = &easrc->pdev->dev;
+	struct fsl_asrc_pair *ctx = runtime->private_data;
+	struct fsl_easrc_ctx_priv *ctx_priv = ctx->private;
+	unsigned int channels = params_channels(params);
+	unsigned int rate = params_rate(params);
+	snd_pcm_format_t format = params_format(params);
+	int ret;
+
+	ret = fsl_easrc_request_context(channels, ctx);
+	if (ret) {
+		dev_err(dev, "failed to request context\n");
+		return ret;
+	}
+
+	ctx_priv->ctx_streams |= BIT(substream->stream);
+
+	/*
+	 * Set the input and output ratio so we can compute
+	 * the resampling ratio in RS_LOW/HIGH
+	 */
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		ctx_priv->in_params.sample_rate = rate;
+		ctx_priv->in_params.sample_format = format;
+		ctx_priv->out_params.sample_rate = easrc->asrc_rate;
+		ctx_priv->out_params.sample_format = easrc->asrc_format;
+	} else {
+		ctx_priv->out_params.sample_rate = rate;
+		ctx_priv->out_params.sample_format = format;
+		ctx_priv->in_params.sample_rate = easrc->asrc_rate;
+		ctx_priv->in_params.sample_format = easrc->asrc_format;
+	}
+
+	ctx->channels = channels;
+	ctx_priv->in_params.fifo_wtmk  = 0x20;
+	ctx_priv->out_params.fifo_wtmk = 0x20;
+
+	/*
+	 * Do only rate conversion and keep the same format for input
+	 * and output data
+	 */
+	ret = fsl_easrc_set_ctx_format(ctx,
+				       &ctx_priv->in_params.sample_format,
+				       &ctx_priv->out_params.sample_format);
+	if (ret) {
+		dev_err(dev, "failed to set format %d", ret);
+		return ret;
+	}
+
+	ret = fsl_easrc_config_context(easrc, ctx->index);
+	if (ret) {
+		dev_err(dev, "failed to config context\n");
+		return ret;
+	}
+
+	ctx_priv->in_params.iterations = 1;
+	ctx_priv->in_params.group_len = ctx->channels;
+	ctx_priv->in_params.access_len = ctx->channels;
+	ctx_priv->out_params.iterations = 1;
+	ctx_priv->out_params.group_len = ctx->channels;
+	ctx_priv->out_params.access_len = ctx->channels;
+
+	ret = fsl_easrc_set_ctx_organziation(ctx);
+	if (ret) {
+		dev_err(dev, "failed to set fifo organization\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int fsl_easrc_hw_free(struct snd_pcm_substream *substream,
+			     struct snd_soc_dai *dai)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct fsl_asrc_pair *ctx = runtime->private_data;
+	struct fsl_easrc_ctx_priv *ctx_priv = ctx->private;
+
+	if (ctx && (ctx_priv->ctx_streams & BIT(substream->stream))) {
+		ctx_priv->ctx_streams &= ~BIT(substream->stream);
+		fsl_easrc_release_context(ctx);
+	}
+
+	return 0;
+}
+
+static struct snd_soc_dai_ops fsl_easrc_dai_ops = {
+	.startup = fsl_easrc_startup,
+	.trigger = fsl_easrc_trigger,
+	.hw_params = fsl_easrc_hw_params,
+	.hw_free = fsl_easrc_hw_free,
+};
+
+static int fsl_easrc_dai_probe(struct snd_soc_dai *cpu_dai)
+{
+	struct fsl_asrc *easrc = dev_get_drvdata(cpu_dai->dev);
+
+	snd_soc_dai_init_dma_data(cpu_dai,
+				  &easrc->dma_params_tx,
+				  &easrc->dma_params_rx);
+	return 0;
+}
+
+static struct snd_soc_dai_driver fsl_easrc_dai = {
+	.probe = fsl_easrc_dai_probe,
+	.playback = {
+		.stream_name = "ASRC-Playback",
+		.channels_min = 1,
+		.channels_max = 32,
+		.rate_min = 8000,
+		.rate_max = 768000,
+		.rates = SNDRV_PCM_RATE_KNOT,
+		.formats = FSL_EASRC_FORMATS,
+	},
+	.capture = {
+		.stream_name = "ASRC-Capture",
+		.channels_min = 1,
+		.channels_max = 32,
+		.rate_min = 8000,
+		.rate_max = 768000,
+		.rates = SNDRV_PCM_RATE_KNOT,
+		.formats = FSL_EASRC_FORMATS |
+			   SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE,
+	},
+	.ops = &fsl_easrc_dai_ops,
+};
+
+static const struct snd_soc_component_driver fsl_easrc_component = {
+	.name		= "fsl-easrc-dai",
+	.controls       = fsl_easrc_snd_controls,
+	.num_controls   = ARRAY_SIZE(fsl_easrc_snd_controls),
+};
+
+static const struct reg_default fsl_easrc_reg_defaults[] = {
+	{REG_EASRC_WRFIFO(0),	0x00000000},
+	{REG_EASRC_WRFIFO(1),	0x00000000},
+	{REG_EASRC_WRFIFO(2),	0x00000000},
+	{REG_EASRC_WRFIFO(3),	0x00000000},
+	{REG_EASRC_RDFIFO(0),	0x00000000},
+	{REG_EASRC_RDFIFO(1),	0x00000000},
+	{REG_EASRC_RDFIFO(2),	0x00000000},
+	{REG_EASRC_RDFIFO(3),	0x00000000},
+	{REG_EASRC_CC(0),	0x00000000},
+	{REG_EASRC_CC(1),	0x00000000},
+	{REG_EASRC_CC(2),	0x00000000},
+	{REG_EASRC_CC(3),	0x00000000},
+	{REG_EASRC_CCE1(0),	0x00000000},
+	{REG_EASRC_CCE1(1),	0x00000000},
+	{REG_EASRC_CCE1(2),	0x00000000},
+	{REG_EASRC_CCE1(3),	0x00000000},
+	{REG_EASRC_CCE2(0),	0x00000000},
+	{REG_EASRC_CCE2(1),	0x00000000},
+	{REG_EASRC_CCE2(2),	0x00000000},
+	{REG_EASRC_CCE2(3),	0x00000000},
+	{REG_EASRC_CIA(0),	0x00000000},
+	{REG_EASRC_CIA(1),	0x00000000},
+	{REG_EASRC_CIA(2),	0x00000000},
+	{REG_EASRC_CIA(3),	0x00000000},
+	{REG_EASRC_DPCS0R0(0),	0x00000000},
+	{REG_EASRC_DPCS0R0(1),	0x00000000},
+	{REG_EASRC_DPCS0R0(2),	0x00000000},
+	{REG_EASRC_DPCS0R0(3),	0x00000000},
+	{REG_EASRC_DPCS0R1(0),	0x00000000},
+	{REG_EASRC_DPCS0R1(1),	0x00000000},
+	{REG_EASRC_DPCS0R1(2),	0x00000000},
+	{REG_EASRC_DPCS0R1(3),	0x00000000},
+	{REG_EASRC_DPCS0R2(0),	0x00000000},
+	{REG_EASRC_DPCS0R2(1),	0x00000000},
+	{REG_EASRC_DPCS0R2(2),	0x00000000},
+	{REG_EASRC_DPCS0R2(3),	0x00000000},
+	{REG_EASRC_DPCS0R3(0),	0x00000000},
+	{REG_EASRC_DPCS0R3(1),	0x00000000},
+	{REG_EASRC_DPCS0R3(2),	0x00000000},
+	{REG_EASRC_DPCS0R3(3),	0x00000000},
+	{REG_EASRC_DPCS1R0(0),	0x00000000},
+	{REG_EASRC_DPCS1R0(1),	0x00000000},
+	{REG_EASRC_DPCS1R0(2),	0x00000000},
+	{REG_EASRC_DPCS1R0(3),	0x00000000},
+	{REG_EASRC_DPCS1R1(0),	0x00000000},
+	{REG_EASRC_DPCS1R1(1),	0x00000000},
+	{REG_EASRC_DPCS1R1(2),	0x00000000},
+	{REG_EASRC_DPCS1R1(3),	0x00000000},
+	{REG_EASRC_DPCS1R2(0),	0x00000000},
+	{REG_EASRC_DPCS1R2(1),	0x00000000},
+	{REG_EASRC_DPCS1R2(2),	0x00000000},
+	{REG_EASRC_DPCS1R2(3),	0x00000000},
+	{REG_EASRC_DPCS1R3(0),	0x00000000},
+	{REG_EASRC_DPCS1R3(1),	0x00000000},
+	{REG_EASRC_DPCS1R3(2),	0x00000000},
+	{REG_EASRC_DPCS1R3(3),	0x00000000},
+	{REG_EASRC_COC(0),	0x00000000},
+	{REG_EASRC_COC(1),	0x00000000},
+	{REG_EASRC_COC(2),	0x00000000},
+	{REG_EASRC_COC(3),	0x00000000},
+	{REG_EASRC_COA(0),	0x00000000},
+	{REG_EASRC_COA(1),	0x00000000},
+	{REG_EASRC_COA(2),	0x00000000},
+	{REG_EASRC_COA(3),	0x00000000},
+	{REG_EASRC_SFS(0),	0x00000000},
+	{REG_EASRC_SFS(1),	0x00000000},
+	{REG_EASRC_SFS(2),	0x00000000},
+	{REG_EASRC_SFS(3),	0x00000000},
+	{REG_EASRC_RRL(0),	0x00000000},
+	{REG_EASRC_RRL(1),	0x00000000},
+	{REG_EASRC_RRL(2),	0x00000000},
+	{REG_EASRC_RRL(3),	0x00000000},
+	{REG_EASRC_RRH(0),	0x00000000},
+	{REG_EASRC_RRH(1),	0x00000000},
+	{REG_EASRC_RRH(2),	0x00000000},
+	{REG_EASRC_RRH(3),	0x00000000},
+	{REG_EASRC_RUC(0),	0x00000000},
+	{REG_EASRC_RUC(1),	0x00000000},
+	{REG_EASRC_RUC(2),	0x00000000},
+	{REG_EASRC_RUC(3),	0x00000000},
+	{REG_EASRC_RUR(0),	0x7FFFFFFF},
+	{REG_EASRC_RUR(1),	0x7FFFFFFF},
+	{REG_EASRC_RUR(2),	0x7FFFFFFF},
+	{REG_EASRC_RUR(3),	0x7FFFFFFF},
+	{REG_EASRC_RCTCL,	0x00000000},
+	{REG_EASRC_RCTCH,	0x00000000},
+	{REG_EASRC_PCF(0),	0x00000000},
+	{REG_EASRC_PCF(1),	0x00000000},
+	{REG_EASRC_PCF(2),	0x00000000},
+	{REG_EASRC_PCF(3),	0x00000000},
+	{REG_EASRC_CRCM,	0x00000000},
+	{REG_EASRC_CRCC,	0x00000000},
+	{REG_EASRC_IRQC,	0x00000FFF},
+	{REG_EASRC_IRQF,	0x00000000},
+	{REG_EASRC_CS0(0),	0x00000000},
+	{REG_EASRC_CS0(1),	0x00000000},
+	{REG_EASRC_CS0(2),	0x00000000},
+	{REG_EASRC_CS0(3),	0x00000000},
+	{REG_EASRC_CS1(0),	0x00000000},
+	{REG_EASRC_CS1(1),	0x00000000},
+	{REG_EASRC_CS1(2),	0x00000000},
+	{REG_EASRC_CS1(3),	0x00000000},
+	{REG_EASRC_CS2(0),	0x00000000},
+	{REG_EASRC_CS2(1),	0x00000000},
+	{REG_EASRC_CS2(2),	0x00000000},
+	{REG_EASRC_CS2(3),	0x00000000},
+	{REG_EASRC_CS3(0),	0x00000000},
+	{REG_EASRC_CS3(1),	0x00000000},
+	{REG_EASRC_CS3(2),	0x00000000},
+	{REG_EASRC_CS3(3),	0x00000000},
+	{REG_EASRC_CS4(0),	0x00000000},
+	{REG_EASRC_CS4(1),	0x00000000},
+	{REG_EASRC_CS4(2),	0x00000000},
+	{REG_EASRC_CS4(3),	0x00000000},
+	{REG_EASRC_CS5(0),	0x00000000},
+	{REG_EASRC_CS5(1),	0x00000000},
+	{REG_EASRC_CS5(2),	0x00000000},
+	{REG_EASRC_CS5(3),	0x00000000},
+	{REG_EASRC_DBGC,	0x00000000},
+	{REG_EASRC_DBGS,	0x00000000},
+};
+
+static const struct regmap_range fsl_easrc_readable_ranges[] = {
+	regmap_reg_range(REG_EASRC_RDFIFO(0), REG_EASRC_RCTCH),
+	regmap_reg_range(REG_EASRC_PCF(0), REG_EASRC_PCF(3)),
+	regmap_reg_range(REG_EASRC_CRCC, REG_EASRC_DBGS),
+};
+
+static const struct regmap_access_table fsl_easrc_readable_table = {
+	.yes_ranges = fsl_easrc_readable_ranges,
+	.n_yes_ranges = ARRAY_SIZE(fsl_easrc_readable_ranges),
+};
+
+static const struct regmap_range fsl_easrc_writeable_ranges[] = {
+	regmap_reg_range(REG_EASRC_WRFIFO(0), REG_EASRC_WRFIFO(3)),
+	regmap_reg_range(REG_EASRC_CC(0), REG_EASRC_COA(3)),
+	regmap_reg_range(REG_EASRC_RRL(0), REG_EASRC_RCTCH),
+	regmap_reg_range(REG_EASRC_PCF(0), REG_EASRC_DBGC),
+};
+
+static const struct regmap_access_table fsl_easrc_writeable_table = {
+	.yes_ranges = fsl_easrc_writeable_ranges,
+	.n_yes_ranges = ARRAY_SIZE(fsl_easrc_writeable_ranges),
+};
+
+static const struct regmap_range fsl_easrc_volatileable_ranges[] = {
+	regmap_reg_range(REG_EASRC_RDFIFO(0), REG_EASRC_RDFIFO(3)),
+	regmap_reg_range(REG_EASRC_SFS(0), REG_EASRC_SFS(3)),
+	regmap_reg_range(REG_EASRC_IRQF, REG_EASRC_IRQF),
+	regmap_reg_range(REG_EASRC_DBGS, REG_EASRC_DBGS),
+};
+
+static const struct regmap_access_table fsl_easrc_volatileable_table = {
+	.yes_ranges = fsl_easrc_volatileable_ranges,
+	.n_yes_ranges = ARRAY_SIZE(fsl_easrc_volatileable_ranges),
+};
+
+static const struct regmap_config fsl_easrc_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+
+	.max_register = REG_EASRC_DBGS,
+	.reg_defaults = fsl_easrc_reg_defaults,
+	.num_reg_defaults = ARRAY_SIZE(fsl_easrc_reg_defaults),
+	.rd_table = &fsl_easrc_readable_table,
+	.wr_table = &fsl_easrc_writeable_table,
+	.volatile_table = &fsl_easrc_volatileable_table,
+	.cache_type = REGCACHE_RBTREE,
+};
+
+void fsl_easrc_dump_firmware(struct fsl_asrc *easrc)
+{
+	struct fsl_easrc_priv *easrc_priv = easrc->private;
+	struct asrc_firmware_hdr *firm = easrc_priv->firmware_hdr;
+	struct interp_params *interp = easrc_priv->interp;
+	struct prefil_params *prefil = easrc_priv->prefil;
+	struct device *dev = &easrc->pdev->dev;
+	int i;
+
+	if (firm->magic != FIRMWARE_MAGIC) {
+		dev_err(dev, "Wrong magic. Something went wrong!");
+		return;
+	}
+
+	dev_dbg(dev, "Firmware v%u dump:\n", firm->firmware_version);
+	dev_dbg(dev, "Num prefitler scenarios: %u\n", firm->prefil_scen);
+	dev_dbg(dev, "Num interpolation scenarios: %u\n", firm->interp_scen);
+	dev_dbg(dev, "\nInterpolation scenarios:\n");
+
+	for (i = 0; i < firm->interp_scen; i++) {
+		if (interp[i].magic != FIRMWARE_MAGIC) {
+			dev_dbg(dev, "%d. wrong interp magic: %x\n",
+				i, interp[i].magic);
+			continue;
+		}
+		dev_dbg(dev, "%d. taps: %u, phases: %u, center: %llu\n", i,
+			interp[i].num_taps, interp[i].num_phases,
+			interp[i].center_tap);
+	}
+
+	for (i = 0; i < firm->prefil_scen; i++) {
+		if (prefil[i].magic != FIRMWARE_MAGIC) {
+			dev_dbg(dev, "%d. wrong prefil magic: %x\n",
+				i, prefil[i].magic);
+			continue;
+		}
+		dev_dbg(dev, "%d. insr: %u, outsr: %u, st1: %u, st2: %u\n", i,
+			prefil[i].insr, prefil[i].outsr,
+			prefil[i].st1_taps, prefil[i].st2_taps);
+	}
+
+	dev_dbg(dev, "end of firmware dump\n");
+}
+
+int fsl_easrc_get_firmware(struct fsl_asrc *easrc)
+{
+	struct fsl_easrc_priv *easrc_priv;
+	u32 pnum, inum, offset;
+	int ret;
+
+	if (!easrc)
+		return -EINVAL;
+
+	easrc_priv = easrc->private;
+
+	ret = request_firmware(&easrc_priv->fw, easrc_priv->fw_name,
+			       &easrc->pdev->dev);
+	if (ret)
+		return ret;
+
+	easrc_priv->firmware_hdr = (struct asrc_firmware_hdr *)easrc_priv->fw->data;
+	pnum = easrc_priv->firmware_hdr->prefil_scen;
+	inum = easrc_priv->firmware_hdr->interp_scen;
+
+	if (inum) {
+		offset = sizeof(struct asrc_firmware_hdr);
+		easrc_priv->interp =
+			(struct interp_params *)(easrc_priv->fw->data + offset);
+	}
+
+	if (pnum) {
+		offset = sizeof(struct asrc_firmware_hdr) +
+				inum * sizeof(struct interp_params);
+		easrc_priv->prefil =
+			(struct prefil_params *)(easrc_priv->fw->data + offset);
+	}
+
+	return 0;
+}
+
+static irqreturn_t fsl_easrc_isr(int irq, void *dev_id)
+{
+	struct fsl_asrc *easrc = (struct fsl_asrc *)dev_id;
+	struct device *dev = &easrc->pdev->dev;
+	int val;
+
+	regmap_read(easrc->regmap, REG_EASRC_IRQF, &val);
+
+	if (val & EASRC_IRQF_OER_MASK)
+		dev_dbg(dev, "output FIFO underflow\n");
+
+	if (val & EASRC_IRQF_IFO_MASK)
+		dev_dbg(dev, "input FIFO overflow\n");
+
+	return IRQ_HANDLED;
+}
+
+static int fsl_easrc_get_fifo_addr(u8 dir, enum asrc_pair_index index)
+{
+	return REG_EASRC_FIFO(dir, index);
+}
+
+static const struct of_device_id fsl_easrc_dt_ids[] = {
+	{ .compatible = "fsl,imx8mn-easrc",},
+	{}
+};
+MODULE_DEVICE_TABLE(of, fsl_easrc_dt_ids);
+
+static int fsl_easrc_probe(struct platform_device *pdev)
+{
+	struct fsl_asrc *easrc;
+	struct fsl_easrc_priv *easrc_priv;
+	struct resource *res;
+	struct device_node *np;
+	void __iomem *regs;
+	int ret, irq;
+
+	easrc = devm_kzalloc(&pdev->dev, sizeof(*easrc), GFP_KERNEL);
+	if (!easrc)
+		return -ENOMEM;
+
+	easrc_priv = devm_kzalloc(&pdev->dev, sizeof(*easrc_priv), GFP_KERNEL);
+	if (!easrc_priv)
+		return -ENOMEM;
+
+	easrc->pdev = pdev;
+	easrc->private = easrc_priv;
+	np = pdev->dev.of_node;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	regs = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(regs)) {
+		dev_err(&pdev->dev, "failed ioremap\n");
+		return PTR_ERR(regs);
+	}
+
+	easrc->paddr = res->start;
+
+	easrc->regmap = devm_regmap_init_mmio_clk(&pdev->dev, "mem", regs,
+						  &fsl_easrc_regmap_config);
+	if (IS_ERR(easrc->regmap)) {
+		dev_err(&pdev->dev, "failed to init regmap");
+		return PTR_ERR(easrc->regmap);
+	}
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		dev_err(&pdev->dev, "no irq for node %s\n",
+			dev_name(&pdev->dev));
+		return irq;
+	}
+
+	ret = devm_request_irq(&pdev->dev, irq, fsl_easrc_isr, 0,
+			       dev_name(&pdev->dev), easrc);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to claim irq %u: %d\n", irq, ret);
+		return ret;
+	}
+
+	easrc->mem_clk = devm_clk_get(&pdev->dev, "mem");
+	if (IS_ERR(easrc->mem_clk)) {
+		dev_err(&pdev->dev, "failed to get mem clock\n");
+		return PTR_ERR(easrc->mem_clk);
+	}
+
+	/* Set default value */
+	easrc->channel_avail = 32;
+	easrc->get_dma_channel = fsl_easrc_get_dma_channel;
+	easrc->request_pair = fsl_easrc_request_context;
+	easrc->release_pair = fsl_easrc_release_context;
+	easrc->get_fifo_addr = fsl_easrc_get_fifo_addr;
+
+	easrc_priv->rs_num_taps = EASRC_RS_128_TAPS;
+	easrc_priv->const_coeff = 0x3FF0000000000000;
+
+	ret = of_property_read_u32(np, "fsl,asrc-rate", &easrc->asrc_rate);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to asrc rate\n");
+		return ret;
+	}
+
+	ret = of_property_read_u32(np, "fsl,asrc-format", &easrc->asrc_format);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to asrc format\n");
+		return ret;
+	}
+
+	if (!(FSL_EASRC_FORMATS & (1ULL << easrc->asrc_format))) {
+		dev_warn(&pdev->dev, "unsupported format, switching to S24_LE\n");
+		easrc->asrc_format = SNDRV_PCM_FORMAT_S24_LE;
+	}
+
+	platform_set_drvdata(pdev, easrc);
+	pm_runtime_enable(&pdev->dev);
+
+	spin_lock_init(&easrc->lock);
+
+	regcache_cache_only(easrc->regmap, true);
+
+	ret = devm_snd_soc_register_component(&pdev->dev, &fsl_easrc_component,
+					      &fsl_easrc_dai, 1);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register ASoC DAI\n");
+		return ret;
+	}
+
+	ret = devm_snd_soc_register_component(&pdev->dev,
+					      &fsl_asrc_component,
+					      NULL, 0);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register ASoC platform\n");
+		return ret;
+	}
+
+	ret = of_property_read_string(np,
+				      "fsl,easrc-ram-script-name",
+				      &easrc_priv->fw_name);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to get firmware name\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int fsl_easrc_remove(struct platform_device *pdev)
+{
+	pm_runtime_disable(&pdev->dev);
+
+	return 0;
+}
+
+#ifdef CONFIG_PM
+static int fsl_easrc_runtime_suspend(struct device *dev)
+{
+	struct fsl_asrc *easrc = dev_get_drvdata(dev);
+	struct fsl_easrc_priv *easrc_priv = easrc->private;
+	unsigned long lock_flags;
+
+	regcache_cache_only(easrc->regmap, true);
+
+	clk_disable_unprepare(easrc->mem_clk);
+
+	spin_lock_irqsave(&easrc->lock, lock_flags);
+	easrc_priv->firmware_loaded = 0;
+	spin_unlock_irqrestore(&easrc->lock, lock_flags);
+
+	return 0;
+}
+
+static int fsl_easrc_runtime_resume(struct device *dev)
+{
+	struct fsl_asrc *easrc = dev_get_drvdata(dev);
+	struct fsl_easrc_priv *easrc_priv = easrc->private;
+	struct fsl_easrc_ctx_priv *ctx_priv;
+	struct fsl_asrc_pair *ctx;
+	unsigned long lock_flags;
+	int ret;
+	int i;
+
+	ret = clk_prepare_enable(easrc->mem_clk);
+	if (ret)
+		return ret;
+
+	regcache_cache_only(easrc->regmap, false);
+	regcache_mark_dirty(easrc->regmap);
+	regcache_sync(easrc->regmap);
+
+	spin_lock_irqsave(&easrc->lock, lock_flags);
+	if (easrc_priv->firmware_loaded) {
+		spin_unlock_irqrestore(&easrc->lock, lock_flags);
+		goto skip_load;
+	}
+	easrc_priv->firmware_loaded = 1;
+	spin_unlock_irqrestore(&easrc->lock, lock_flags);
+
+	ret = fsl_easrc_get_firmware(easrc);
+	if (ret) {
+		dev_err(dev, "failed to get firmware\n");
+		goto disable_mem_clk;
+	}
+
+	/*
+	 * Write Resampling Coefficients
+	 * The coefficient RAM must be configured prior to beginning of
+	 * any context processing within the ASRC
+	 */
+	ret = fsl_easrc_resampler_config(easrc);
+	if (ret) {
+		dev_err(dev, "resampler config failed\n");
+		goto disable_mem_clk;
+	}
+
+	for (i = ASRC_PAIR_A; i < EASRC_CTX_MAX_NUM; i++) {
+		ctx = easrc->pair[i];
+		if (ctx) {
+			ctx_priv = ctx->private;
+			fsl_easrc_set_rs_ratio(ctx);
+			ctx_priv->out_missed_sample = ctx_priv->in_filled_sample *
+							  ctx_priv->out_params.sample_rate /
+							  ctx_priv->in_params.sample_rate;
+			if (ctx_priv->in_filled_sample * ctx_priv->out_params.sample_rate
+					% ctx_priv->in_params.sample_rate != 0)
+				ctx_priv->out_missed_sample += 1;
+
+			ret = fsl_easrc_write_pf_coeff_mem(easrc, i,
+							   ctx_priv->st1_coeff,
+							   ctx_priv->st1_num_taps,
+							   ctx_priv->st1_addexp);
+			if (ret)
+				goto disable_mem_clk;
+
+			ret = fsl_easrc_write_pf_coeff_mem(easrc, i,
+							   ctx_priv->st2_coeff,
+							   ctx_priv->st2_num_taps,
+							   ctx_priv->st2_addexp);
+			if (ret)
+				goto disable_mem_clk;
+		}
+	}
+
+skip_load:
+	return 0;
+
+disable_mem_clk:
+	clk_disable_unprepare(easrc->mem_clk);
+	return ret;
+}
+#endif /* CONFIG_PM */
+
+static const struct dev_pm_ops fsl_easrc_pm_ops = {
+	SET_RUNTIME_PM_OPS(fsl_easrc_runtime_suspend,
+			   fsl_easrc_runtime_resume,
+			   NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
+				pm_runtime_force_resume)
+};
+
+static struct platform_driver fsl_easrc_driver = {
+	.probe = fsl_easrc_probe,
+	.remove = fsl_easrc_remove,
+	.driver = {
+		.name = "fsl-easrc",
+		.pm = &fsl_easrc_pm_ops,
+		.of_match_table = fsl_easrc_dt_ids,
+	},
+};
+module_platform_driver(fsl_easrc_driver);
+
+MODULE_DESCRIPTION("NXP Enhanced Asynchronous Sample Rate (eASRC) driver");
+MODULE_LICENSE("GPL v2");
diff --git a/sound/soc/fsl/fsl_easrc.h b/sound/soc/fsl/fsl_easrc.h
new file mode 100644
index 000000000000..1140e36bad12
--- /dev/null
+++ b/sound/soc/fsl/fsl_easrc.h
@@ -0,0 +1,651 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 NXP
+ */
+
+#ifndef _FSL_EASRC_H
+#define _FSL_EASRC_H
+
+#include <sound/asound.h>
+#include <linux/platform_data/dma-imx.h>
+
+#include "fsl_asrc_common.h"
+
+/* EASRC Register Map */
+
+/* ASRC Input Write FIFO */
+#define REG_EASRC_WRFIFO(ctx)		(0x000 + 4 * (ctx))
+/* ASRC Output Read FIFO */
+#define REG_EASRC_RDFIFO(ctx)		(0x010 + 4 * (ctx))
+/* ASRC Context Control */
+#define REG_EASRC_CC(ctx)		(0x020 + 4 * (ctx))
+/* ASRC Context Control Extended 1 */
+#define REG_EASRC_CCE1(ctx)		(0x030 + 4 * (ctx))
+/* ASRC Context Control Extended 2 */
+#define REG_EASRC_CCE2(ctx)		(0x040 + 4 * (ctx))
+/* ASRC Control Input Access */
+#define REG_EASRC_CIA(ctx)		(0x050 + 4 * (ctx))
+/* ASRC Datapath Processor Control Slot0 */
+#define REG_EASRC_DPCS0R0(ctx)		(0x060 + 4 * (ctx))
+#define REG_EASRC_DPCS0R1(ctx)		(0x070 + 4 * (ctx))
+#define REG_EASRC_DPCS0R2(ctx)		(0x080 + 4 * (ctx))
+#define REG_EASRC_DPCS0R3(ctx)		(0x090 + 4 * (ctx))
+/* ASRC Datapath Processor Control Slot1 */
+#define REG_EASRC_DPCS1R0(ctx)		(0x0A0 + 4 * (ctx))
+#define REG_EASRC_DPCS1R1(ctx)		(0x0B0 + 4 * (ctx))
+#define REG_EASRC_DPCS1R2(ctx)		(0x0C0 + 4 * (ctx))
+#define REG_EASRC_DPCS1R3(ctx)		(0x0D0 + 4 * (ctx))
+/* ASRC Context Output Control */
+#define REG_EASRC_COC(ctx)		(0x0E0 + 4 * (ctx))
+/* ASRC Control Output Access */
+#define REG_EASRC_COA(ctx)		(0x0F0 + 4 * (ctx))
+/* ASRC Sample FIFO Status */
+#define REG_EASRC_SFS(ctx)		(0x100 + 4 * (ctx))
+/* ASRC Resampling Ratio Low */
+#define REG_EASRC_RRL(ctx)		(0x110 + 8 * (ctx))
+/* ASRC Resampling Ratio High */
+#define REG_EASRC_RRH(ctx)		(0x114 + 8 * (ctx))
+/* ASRC Resampling Ratio Update Control */
+#define REG_EASRC_RUC(ctx)		(0x130 + 4 * (ctx))
+/* ASRC Resampling Ratio Update Rate */
+#define REG_EASRC_RUR(ctx)		(0x140 + 4 * (ctx))
+/* ASRC Resampling Center Tap Coefficient Low */
+#define REG_EASRC_RCTCL			(0x150)
+/* ASRC Resampling Center Tap Coefficient High */
+#define REG_EASRC_RCTCH			(0x154)
+/* ASRC Prefilter Coefficient FIFO */
+#define REG_EASRC_PCF(ctx)		(0x160 + 4 * (ctx))
+/* ASRC Context Resampling Coefficient Memory */
+#define REG_EASRC_CRCM			0x170
+/* ASRC Context Resampling Coefficient Control*/
+#define REG_EASRC_CRCC			0x174
+/* ASRC Interrupt Control */
+#define REG_EASRC_IRQC			0x178
+/* ASRC Interrupt Status Flags */
+#define REG_EASRC_IRQF			0x17C
+/* ASRC Channel Status 0 */
+#define REG_EASRC_CS0(ctx)		(0x180 + 4 * (ctx))
+/* ASRC Channel Status 1 */
+#define REG_EASRC_CS1(ctx)		(0x190 + 4 * (ctx))
+/* ASRC Channel Status 2 */
+#define REG_EASRC_CS2(ctx)		(0x1A0 + 4 * (ctx))
+/* ASRC Channel Status 3 */
+#define REG_EASRC_CS3(ctx)		(0x1B0 + 4 * (ctx))
+/* ASRC Channel Status 4 */
+#define REG_EASRC_CS4(ctx)		(0x1C0 + 4 * (ctx))
+/* ASRC Channel Status 5 */
+#define REG_EASRC_CS5(ctx)		(0x1D0 + 4 * (ctx))
+/* ASRC Debug Control Register */
+#define REG_EASRC_DBGC			0x1E0
+/* ASRC Debug Status Register */
+#define REG_EASRC_DBGS			0x1E4
+
+#define REG_EASRC_FIFO(x, ctx)		(x == IN ? REG_EASRC_WRFIFO(ctx) \
+						: REG_EASRC_RDFIFO(ctx))
+
+/* ASRC Context Control (CC) */
+#define EASRC_CC_EN_SHIFT		31
+#define EASRC_CC_EN_MASK		BIT(EASRC_CC_EN_SHIFT)
+#define EASRC_CC_EN			BIT(EASRC_CC_EN_SHIFT)
+#define EASRC_CC_STOP_SHIFT		29
+#define EASRC_CC_STOP_MASK		BIT(EASRC_CC_STOP_SHIFT)
+#define EASRC_CC_STOP			BIT(EASRC_CC_STOP_SHIFT)
+#define EASRC_CC_FWMDE_SHIFT		28
+#define EASRC_CC_FWMDE_MASK		BIT(EASRC_CC_FWMDE_SHIFT)
+#define EASRC_CC_FWMDE			BIT(EASRC_CC_FWMDE_SHIFT)
+#define EASRC_CC_FIFO_WTMK_SHIFT	16
+#define EASRC_CC_FIFO_WTMK_WIDTH	7
+#define EASRC_CC_FIFO_WTMK_MASK		((BIT(EASRC_CC_FIFO_WTMK_WIDTH) - 1) \
+					 << EASRC_CC_FIFO_WTMK_SHIFT)
+#define EASRC_CC_FIFO_WTMK(v)		(((v) << EASRC_CC_FIFO_WTMK_SHIFT) \
+					 & EASRC_CC_FIFO_WTMK_MASK)
+#define EASRC_CC_SAMPLE_POS_SHIFT	11
+#define EASRC_CC_SAMPLE_POS_WIDTH	5
+#define EASRC_CC_SAMPLE_POS_MASK	((BIT(EASRC_CC_SAMPLE_POS_WIDTH) - 1) \
+					 << EASRC_CC_SAMPLE_POS_SHIFT)
+#define EASRC_CC_SAMPLE_POS(v)		(((v) << EASRC_CC_SAMPLE_POS_SHIFT) \
+					 & EASRC_CC_SAMPLE_POS_MASK)
+#define EASRC_CC_ENDIANNESS_SHIFT	10
+#define EASRC_CC_ENDIANNESS_MASK	BIT(EASRC_CC_ENDIANNESS_SHIFT)
+#define EASRC_CC_ENDIANNESS		BIT(EASRC_CC_ENDIANNESS_SHIFT)
+#define EASRC_CC_BPS_SHIFT		8
+#define EASRC_CC_BPS_WIDTH		2
+#define EASRC_CC_BPS_MASK		((BIT(EASRC_CC_BPS_WIDTH) - 1) \
+					 << EASRC_CC_BPS_SHIFT)
+#define EASRC_CC_BPS(v)			(((v) << EASRC_CC_BPS_SHIFT) \
+					 & EASRC_CC_BPS_MASK)
+#define EASRC_CC_FMT_SHIFT		7
+#define EASRC_CC_FMT_MASK		BIT(EASRC_CC_FMT_SHIFT)
+#define EASRC_CC_FMT			BIT(EASRC_CC_FMT_SHIFT)
+#define EASRC_CC_INSIGN_SHIFT		6
+#define EASRC_CC_INSIGN_MASK		BIT(EASRC_CC_INSIGN_SHIFT)
+#define EASRC_CC_INSIGN			BIT(EASRC_CC_INSIGN_SHIFT)
+#define EASRC_CC_CHEN_SHIFT		0
+#define EASRC_CC_CHEN_WIDTH		5
+#define EASRC_CC_CHEN_MASK		((BIT(EASRC_CC_CHEN_WIDTH) - 1) \
+					 << EASRC_CC_CHEN_SHIFT)
+#define EASRC_CC_CHEN(v)		(((v) << EASRC_CC_CHEN_SHIFT) \
+					 & EASRC_CC_CHEN_MASK)
+
+/* ASRC Context Control Extended 1 (CCE1) */
+#define EASRC_CCE1_COEF_WS_SHIFT	25
+#define EASRC_CCE1_COEF_WS_MASK		BIT(EASRC_CCE1_COEF_WS_SHIFT)
+#define EASRC_CCE1_COEF_WS		BIT(EASRC_CCE1_COEF_WS_SHIFT)
+#define EASRC_CCE1_COEF_MEM_RST_SHIFT	24
+#define EASRC_CCE1_COEF_MEM_RST_MASK	BIT(EASRC_CCE1_COEF_MEM_RST_SHIFT)
+#define EASRC_CCE1_COEF_MEM_RST		BIT(EASRC_CCE1_COEF_MEM_RST_SHIFT)
+#define EASRC_CCE1_PF_EXP_SHIFT		16
+#define EASRC_CCE1_PF_EXP_WIDTH		8
+#define EASRC_CCE1_PF_EXP_MASK		((BIT(EASRC_CCE1_PF_EXP_WIDTH) - 1) \
+					 << EASRC_CCE1_PF_EXP_SHIFT)
+#define EASRC_CCE1_PF_EXP(v)		(((v) << EASRC_CCE1_PF_EXP_SHIFT) \
+					 & EASRC_CCE1_PF_EXP_MASK)
+#define EASRC_CCE1_PF_ST1_WBFP_SHIFT	9
+#define EASRC_CCE1_PF_ST1_WBFP_MASK	BIT(EASRC_CCE1_PF_ST1_WBFP_SHIFT)
+#define EASRC_CCE1_PF_ST1_WBFP		BIT(EASRC_CCE1_PF_ST1_WBFP_SHIFT)
+#define EASRC_CCE1_PF_TSEN_SHIFT	8
+#define EASRC_CCE1_PF_TSEN_MASK		BIT(EASRC_CCE1_PF_TSEN_SHIFT)
+#define EASRC_CCE1_PF_TSEN		BIT(EASRC_CCE1_PF_TSEN_SHIFT)
+#define EASRC_CCE1_RS_BYPASS_SHIFT	7
+#define EASRC_CCE1_RS_BYPASS_MASK	BIT(EASRC_CCE1_RS_BYPASS_SHIFT)
+#define EASRC_CCE1_RS_BYPASS		BIT(EASRC_CCE1_RS_BYPASS_SHIFT)
+#define EASRC_CCE1_PF_BYPASS_SHIFT	6
+#define EASRC_CCE1_PF_BYPASS_MASK	BIT(EASRC_CCE1_PF_BYPASS_SHIFT)
+#define EASRC_CCE1_PF_BYPASS		BIT(EASRC_CCE1_PF_BYPASS_SHIFT)
+#define EASRC_CCE1_RS_STOP_SHIFT	5
+#define EASRC_CCE1_RS_STOP_MASK		BIT(EASRC_CCE1_RS_STOP_SHIFT)
+#define EASRC_CCE1_RS_STOP		BIT(EASRC_CCE1_RS_STOP_SHIFT)
+#define EASRC_CCE1_PF_STOP_SHIFT	4
+#define EASRC_CCE1_PF_STOP_MASK		BIT(EASRC_CCE1_PF_STOP_SHIFT)
+#define EASRC_CCE1_PF_STOP		BIT(EASRC_CCE1_PF_STOP_SHIFT)
+#define EASRC_CCE1_RS_INIT_SHIFT	2
+#define EASRC_CCE1_RS_INIT_WIDTH	2
+#define EASRC_CCE1_RS_INIT_MASK		((BIT(EASRC_CCE1_RS_INIT_WIDTH) - 1) \
+					 << EASRC_CCE1_RS_INIT_SHIFT)
+#define EASRC_CCE1_RS_INIT(v)		(((v) << EASRC_CCE1_RS_INIT_SHIFT) \
+					 & EASRC_CCE1_RS_INIT_MASK)
+#define EASRC_CCE1_PF_INIT_SHIFT	0
+#define EASRC_CCE1_PF_INIT_WIDTH	2
+#define EASRC_CCE1_PF_INIT_MASK		((BIT(EASRC_CCE1_PF_INIT_WIDTH) - 1) \
+					 << EASRC_CCE1_PF_INIT_SHIFT)
+#define EASRC_CCE1_PF_INIT(v)		(((v) << EASRC_CCE1_PF_INIT_SHIFT) \
+					 & EASRC_CCE1_PF_INIT_MASK)
+
+/* ASRC Context Control Extended 2 (CCE2) */
+#define EASRC_CCE2_ST2_TAPS_SHIFT	16
+#define EASRC_CCE2_ST2_TAPS_WIDTH	9
+#define EASRC_CCE2_ST2_TAPS_MASK	((BIT(EASRC_CCE2_ST2_TAPS_WIDTH) - 1) \
+					 << EASRC_CCE2_ST2_TAPS_SHIFT)
+#define EASRC_CCE2_ST2_TAPS(v)		(((v) << EASRC_CCE2_ST2_TAPS_SHIFT) \
+					 & EASRC_CCE2_ST2_TAPS_MASK)
+#define EASRC_CCE2_ST1_TAPS_SHIFT	0
+#define EASRC_CCE2_ST1_TAPS_WIDTH	9
+#define EASRC_CCE2_ST1_TAPS_MASK	((BIT(EASRC_CCE2_ST1_TAPS_WIDTH) - 1) \
+					 << EASRC_CCE2_ST1_TAPS_SHIFT)
+#define EASRC_CCE2_ST1_TAPS(v)		(((v) << EASRC_CCE2_ST1_TAPS_SHIFT) \
+					 & EASRC_CCE2_ST1_TAPS_MASK)
+
+/* ASRC Control Input Access (CIA) */
+#define EASRC_CIA_ITER_SHIFT		16
+#define EASRC_CIA_ITER_WIDTH		6
+#define EASRC_CIA_ITER_MASK		((BIT(EASRC_CIA_ITER_WIDTH) - 1) \
+					 << EASRC_CIA_ITER_SHIFT)
+#define EASRC_CIA_ITER(v)		(((v) << EASRC_CIA_ITER_SHIFT) \
+					 & EASRC_CIA_ITER_MASK)
+#define EASRC_CIA_GRLEN_SHIFT		8
+#define EASRC_CIA_GRLEN_WIDTH		6
+#define EASRC_CIA_GRLEN_MASK		((BIT(EASRC_CIA_GRLEN_WIDTH) - 1) \
+					 << EASRC_CIA_GRLEN_SHIFT)
+#define EASRC_CIA_GRLEN(v)		(((v) << EASRC_CIA_GRLEN_SHIFT) \
+					 & EASRC_CIA_GRLEN_MASK)
+#define EASRC_CIA_ACCLEN_SHIFT		0
+#define EASRC_CIA_ACCLEN_WIDTH		6
+#define EASRC_CIA_ACCLEN_MASK		((BIT(EASRC_CIA_ACCLEN_WIDTH) - 1) \
+					 << EASRC_CIA_ACCLEN_SHIFT)
+#define EASRC_CIA_ACCLEN(v)		(((v) << EASRC_CIA_ACCLEN_SHIFT) \
+					 & EASRC_CIA_ACCLEN_MASK)
+
+/* ASRC Datapath Processor Control Slot0 Register0 (DPCS0R0) */
+#define EASRC_DPCS0R0_MAXCH_SHIFT	24
+#define EASRC_DPCS0R0_MAXCH_WIDTH	5
+#define EASRC_DPCS0R0_MAXCH_MASK	((BIT(EASRC_DPCS0R0_MAXCH_WIDTH) - 1) \
+					 << EASRC_DPCS0R0_MAXCH_SHIFT)
+#define EASRC_DPCS0R0_MAXCH(v)		(((v) << EASRC_DPCS0R0_MAXCH_SHIFT) \
+					 & EASRC_DPCS0R0_MAXCH_MASK)
+#define EASRC_DPCS0R0_MINCH_SHIFT	16
+#define EASRC_DPCS0R0_MINCH_WIDTH	5
+#define EASRC_DPCS0R0_MINCH_MASK	((BIT(EASRC_DPCS0R0_MINCH_WIDTH) - 1) \
+					 << EASRC_DPCS0R0_MINCH_SHIFT)
+#define EASRC_DPCS0R0_MINCH(v)		(((v) << EASRC_DPCS0R0_MINCH_SHIFT) \
+					 & EASRC_DPCS0R0_MINCH_MASK)
+#define EASRC_DPCS0R0_NUMCH_SHIFT	8
+#define EASRC_DPCS0R0_NUMCH_WIDTH	5
+#define EASRC_DPCS0R0_NUMCH_MASK	((BIT(EASRC_DPCS0R0_NUMCH_WIDTH) - 1) \
+					 << EASRC_DPCS0R0_NUMCH_SHIFT)
+#define EASRC_DPCS0R0_NUMCH(v)		(((v) << EASRC_DPCS0R0_NUMCH_SHIFT) \
+					 & EASRC_DPCS0R0_NUMCH_MASK)
+#define EASRC_DPCS0R0_CTXNUM_SHIFT	1
+#define EASRC_DPCS0R0_CTXNUM_WIDTH	2
+#define EASRC_DPCS0R0_CTXNUM_MASK	((BIT(EASRC_DPCS0R0_CTXNUM_WIDTH) - 1) \
+					 << EASRC_DPCS0R0_CTXNUM_SHIFT)
+#define EASRC_DPCS0R0_CTXNUM(v)		(((v) << EASRC_DPCS0R0_CTXNUM_SHIFT) \
+					 & EASRC_DPCS0R0_CTXNUM_MASK)
+#define EASRC_DPCS0R0_EN_SHIFT		0
+#define EASRC_DPCS0R0_EN_MASK		BIT(EASRC_DPCS0R0_EN_SHIFT)
+#define EASRC_DPCS0R0_EN		BIT(EASRC_DPCS0R0_EN_SHIFT)
+
+/* ASRC Datapath Processor Control Slot0 Register1 (DPCS0R1) */
+#define EASRC_DPCS0R1_ST1_EXP_SHIFT	0
+#define EASRC_DPCS0R1_ST1_EXP_WIDTH	13
+#define EASRC_DPCS0R1_ST1_EXP_MASK	((BIT(EASRC_DPCS0R1_ST1_EXP_WIDTH) - 1) \
+					 << EASRC_DPCS0R1_ST1_EXP_SHIFT)
+#define EASRC_DPCS0R1_ST1_EXP(v)	(((v) << EASRC_DPCS0R1_ST1_EXP_SHIFT) \
+					 & EASRC_DPCS0R1_ST1_EXP_MASK)
+
+/* ASRC Datapath Processor Control Slot0 Register2 (DPCS0R2) */
+#define EASRC_DPCS0R2_ST1_MA_SHIFT	16
+#define EASRC_DPCS0R2_ST1_MA_WIDTH	13
+#define EASRC_DPCS0R2_ST1_MA_MASK	((BIT(EASRC_DPCS0R2_ST1_MA_WIDTH) - 1) \
+					 << EASRC_DPCS0R2_ST1_MA_SHIFT)
+#define EASRC_DPCS0R2_ST1_MA(v)		(((v) << EASRC_DPCS0R2_ST1_MA_SHIFT) \
+					 & EASRC_DPCS0R2_ST1_MA_MASK)
+#define EASRC_DPCS0R2_ST1_SA_SHIFT	0
+#define EASRC_DPCS0R2_ST1_SA_WIDTH	13
+#define EASRC_DPCS0R2_ST1_SA_MASK	((BIT(EASRC_DPCS0R2_ST1_SA_WIDTH) - 1) \
+					 << EASRC_DPCS0R2_ST1_SA_SHIFT)
+#define EASRC_DPCS0R2_ST1_SA(v)		(((v) << EASRC_DPCS0R2_ST1_SA_SHIFT) \
+					 & EASRC_DPCS0R2_ST1_SA_MASK)
+
+/* ASRC Datapath Processor Control Slot0 Register3 (DPCS0R3) */
+#define EASRC_DPCS0R3_ST2_MA_SHIFT	16
+#define EASRC_DPCS0R3_ST2_MA_WIDTH	13
+#define EASRC_DPCS0R3_ST2_MA_MASK	((BIT(EASRC_DPCS0R3_ST2_MA_WIDTH) - 1) \
+					 << EASRC_DPCS0R3_ST2_MA_SHIFT)
+#define EASRC_DPCS0R3_ST2_MA(v)		(((v) << EASRC_DPCS0R3_ST2_MA_SHIFT) \
+					 & EASRC_DPCS0R3_ST2_MA_MASK)
+#define EASRC_DPCS0R3_ST2_SA_SHIFT	0
+#define EASRC_DPCS0R3_ST2_SA_WIDTH	13
+#define EASRC_DPCS0R3_ST2_SA_MASK	((BIT(EASRC_DPCS0R3_ST2_SA_WIDTH) - 1) \
+					 << EASRC_DPCS0R3_ST2_SA_SHIFT)
+#define EASRC_DPCS0R3_ST2_SA(v)		(((v) << EASRC_DPCS0R3_ST2_SA_SHIFT) \
+						 & EASRC_DPCS0R3_ST2_SA_MASK)
+
+/* ASRC Context Output Control (COC) */
+#define EASRC_COC_FWMDE_SHIFT		28
+#define EASRC_COC_FWMDE_MASK		BIT(EASRC_COC_FWMDE_SHIFT)
+#define EASRC_COC_FWMDE			BIT(EASRC_COC_FWMDE_SHIFT)
+#define EASRC_COC_FIFO_WTMK_SHIFT	16
+#define EASRC_COC_FIFO_WTMK_WIDTH	7
+#define EASRC_COC_FIFO_WTMK_MASK	((BIT(EASRC_COC_FIFO_WTMK_WIDTH) - 1) \
+					 << EASRC_COC_FIFO_WTMK_SHIFT)
+#define EASRC_COC_FIFO_WTMK(v)		(((v) << EASRC_COC_FIFO_WTMK_SHIFT) \
+					 & EASRC_COC_FIFO_WTMK_MASK)
+#define EASRC_COC_SAMPLE_POS_SHIFT	11
+#define EASRC_COC_SAMPLE_POS_WIDTH	5
+#define EASRC_COC_SAMPLE_POS_MASK	((BIT(EASRC_COC_SAMPLE_POS_WIDTH) - 1) \
+					 << EASRC_COC_SAMPLE_POS_SHIFT)
+#define EASRC_COC_SAMPLE_POS(v)		(((v) << EASRC_COC_SAMPLE_POS_SHIFT) \
+					 & EASRC_COC_SAMPLE_POS_MASK)
+#define EASRC_COC_ENDIANNESS_SHIFT	10
+#define EASRC_COC_ENDIANNESS_MASK	BIT(EASRC_COC_ENDIANNESS_SHIFT)
+#define EASRC_COC_ENDIANNESS		BIT(EASRC_COC_ENDIANNESS_SHIFT)
+#define EASRC_COC_BPS_SHIFT		8
+#define EASRC_COC_BPS_WIDTH		2
+#define EASRC_COC_BPS_MASK		((BIT(EASRC_COC_BPS_WIDTH) - 1) \
+					 << EASRC_COC_BPS_SHIFT)
+#define EASRC_COC_BPS(v)		(((v) << EASRC_COC_BPS_SHIFT) \
+					 & EASRC_COC_BPS_MASK)
+#define EASRC_COC_FMT_SHIFT		7
+#define EASRC_COC_FMT_MASK		BIT(EASRC_COC_FMT_SHIFT)
+#define EASRC_COC_FMT			BIT(EASRC_COC_FMT_SHIFT)
+#define EASRC_COC_OUTSIGN_SHIFT		6
+#define EASRC_COC_OUTSIGN_MASK		BIT(EASRC_COC_OUTSIGN_SHIFT)
+#define EASRC_COC_OUTSIGN_OUT		BIT(EASRC_COC_OUTSIGN_SHIFT)
+#define EASRC_COC_IEC_VDATA_SHIFT	2
+#define EASRC_COC_IEC_VDATA_MASK	BIT(EASRC_COC_IEC_VDATA_SHIFT)
+#define EASRC_COC_IEC_VDATA		BIT(EASRC_COC_IEC_VDATA_SHIFT)
+#define EASRC_COC_IEC_EN_SHIFT		1
+#define EASRC_COC_IEC_EN_MASK		BIT(EASRC_COC_IEC_EN_SHIFT)
+#define EASRC_COC_IEC_EN		BIT(EASRC_COC_IEC_EN_SHIFT)
+#define EASRC_COC_DITHER_EN_SHIFT	0
+#define EASRC_COC_DITHER_EN_MASK	BIT(EASRC_COC_DITHER_EN_SHIFT)
+#define EASRC_COC_DITHER_EN		BIT(EASRC_COC_DITHER_EN_SHIFT)
+
+/* ASRC Control Output Access (COA) */
+#define EASRC_COA_ITER_SHIFT		16
+#define EASRC_COA_ITER_WIDTH		6
+#define EASRC_COA_ITER_MASK		((BIT(EASRC_COA_ITER_WIDTH) - 1) \
+					 << EASRC_COA_ITER_SHIFT)
+#define EASRC_COA_ITER(v)		(((v) << EASRC_COA_ITER_SHIFT) \
+					 & EASRC_COA_ITER_MASK)
+#define EASRC_COA_GRLEN_SHIFT		8
+#define EASRC_COA_GRLEN_WIDTH		6
+#define EASRC_COA_GRLEN_MASK		((BIT(EASRC_COA_GRLEN_WIDTH) - 1) \
+					 << EASRC_COA_GRLEN_SHIFT)
+#define EASRC_COA_GRLEN(v)		(((v) << EASRC_COA_GRLEN_SHIFT) \
+					 & EASRC_COA_GRLEN_MASK)
+#define EASRC_COA_ACCLEN_SHIFT		0
+#define EASRC_COA_ACCLEN_WIDTH		6
+#define EASRC_COA_ACCLEN_MASK		((BIT(EASRC_COA_ACCLEN_WIDTH) - 1) \
+					 << EASRC_COA_ACCLEN_SHIFT)
+#define EASRC_COA_ACCLEN(v)		(((v) << EASRC_COA_ACCLEN_SHIFT) \
+					 & EASRC_COA_ACCLEN_MASK)
+
+/* ASRC Sample FIFO Status (SFS) */
+#define EASRC_SFS_IWTMK_SHIFT		23
+#define EASRC_SFS_IWTMK_MASK		BIT(EASRC_SFS_IWTMK_SHIFT)
+#define EASRC_SFS_IWTMK			BIT(EASRC_SFS_IWTMK_SHIFT)
+#define EASRC_SFS_NSGI_SHIFT		16
+#define EASRC_SFS_NSGI_WIDTH		7
+#define EASRC_SFS_NSGI_MASK		((BIT(EASRC_SFS_NSGI_WIDTH) - 1) \
+					 << EASRC_SFS_NSGI_SHIFT)
+#define EASRC_SFS_NSGI(v)		(((v) << EASRC_SFS_NSGI_SHIFT) \
+					 & EASRC_SFS_NSGI_MASK)
+#define EASRC_SFS_OWTMK_SHIFT		7
+#define EASRC_SFS_OWTMK_MASK		BIT(EASRC_SFS_OWTMK_SHIFT)
+#define EASRC_SFS_OWTMK			BIT(EASRC_SFS_OWTMK_SHIFT)
+#define EASRC_SFS_NSGO_SHIFT		0
+#define EASRC_SFS_NSGO_WIDTH		7
+#define EASRC_SFS_NSGO_MASK		((BIT(EASRC_SFS_NSGO_WIDTH) - 1) \
+					 << EASRC_SFS_NSGO_SHIFT)
+#define EASRC_SFS_NSGO(v)		(((v) << EASRC_SFS_NSGO_SHIFT) \
+					 & EASRC_SFS_NSGO_MASK)
+
+/* ASRC Resampling Ratio Low (RRL) */
+#define EASRC_RRL_RS_RL_SHIFT		0
+#define EASRC_RRL_RS_RL_WIDTH		32
+#define EASRC_RRL_RS_RL(v)		((v) << EASRC_RRL_RS_RL_SHIFT)
+
+/* ASRC Resampling Ratio High (RRH) */
+#define EASRC_RRH_RS_VLD_SHIFT		31
+#define EASRC_RRH_RS_VLD_MASK		BIT(EASRC_RRH_RS_VLD_SHIFT)
+#define EASRC_RRH_RS_VLD		BIT(EASRC_RRH_RS_VLD_SHIFT)
+#define EASRC_RRH_RS_RH_SHIFT		0
+#define EASRC_RRH_RS_RH_WIDTH		12
+#define EASRC_RRH_RS_RH_MASK		((BIT(EASRC_RRH_RS_RH_WIDTH) - 1) \
+					 << EASRC_RRH_RS_RH_SHIFT)
+#define EASRC_RRH_RS_RH(v)		(((v) << EASRC_RRH_RS_RH_SHIFT) \
+					 & EASRC_RRH_RS_RH_MASK)
+
+/* ASRC Resampling Ratio Update Control (RSUC) */
+#define EASRC_RSUC_RS_RM_SHIFT		0
+#define EASRC_RSUC_RS_RM_WIDTH		32
+#define EASRC_RSUC_RS_RM(v)		((v) << EASRC_RSUC_RS_RM_SHIFT)
+
+/* ASRC Resampling Ratio Update Rate (RRUR) */
+#define EASRC_RRUR_RRR_SHIFT		0
+#define EASRC_RRUR_RRR_WIDTH		31
+#define EASRC_RRUR_RRR_MASK		((BIT(EASRC_RRUR_RRR_WIDTH) - 1) \
+					 << EASRC_RRUR_RRR_SHIFT)
+#define EASRC_RRUR_RRR(v)		(((v) << EASRC_RRUR_RRR_SHIFT) \
+					 & EASRC_RRUR_RRR_MASK)
+
+/* ASRC Resampling Center Tap Coefficient Low (RCTCL) */
+#define EASRC_RCTCL_RS_CL_SHIFT		0
+#define EASRC_RCTCL_RS_CL_WIDTH		32
+#define EASRC_RCTCL_RS_CL(v)		((v) << EASRC_RCTCL_RS_CL_SHIFT)
+
+/* ASRC Resampling Center Tap Coefficient High (RCTCH) */
+#define EASRC_RCTCH_RS_CH_SHIFT		0
+#define EASRC_RCTCH_RS_CH_WIDTH		32
+#define EASRC_RCTCH_RS_CH(v)		((v) << EASRC_RCTCH_RS_CH_SHIFT)
+
+/* ASRC Prefilter Coefficient FIFO (PCF) */
+#define EASRC_PCF_CD_SHIFT		0
+#define EASRC_PCF_CD_WIDTH		32
+#define EASRC_PCF_CD(v)			((v) << EASRC_PCF_CD_SHIFT)
+
+/* ASRC Context Resampling Coefficient Memory (CRCM) */
+#define EASRC_CRCM_RS_CWD_SHIFT		0
+#define EASRC_CRCM_RS_CWD_WIDTH		32
+#define EASRC_CRCM_RS_CWD(v)		((v) << EASRC_CRCM_RS_CWD_SHIFT)
+
+/* ASRC Context Resampling Coefficient Control (CRCC) */
+#define EASRC_CRCC_RS_CA_SHIFT		16
+#define EASRC_CRCC_RS_CA_WIDTH		11
+#define EASRC_CRCC_RS_CA_MASK		((BIT(EASRC_CRCC_RS_CA_WIDTH) - 1) \
+					 << EASRC_CRCC_RS_CA_SHIFT)
+#define EASRC_CRCC_RS_CA(v)		(((v) << EASRC_CRCC_RS_CA_SHIFT) \
+					 & EASRC_CRCC_RS_CA_MASK)
+#define EASRC_CRCC_RS_TAPS_SHIFT	1
+#define EASRC_CRCC_RS_TAPS_WIDTH	2
+#define EASRC_CRCC_RS_TAPS_MASK		((BIT(EASRC_CRCC_RS_TAPS_WIDTH) - 1) \
+					 << EASRC_CRCC_RS_TAPS_SHIFT)
+#define EASRC_CRCC_RS_TAPS(v)		(((v) << EASRC_CRCC_RS_TAPS_SHIFT) \
+					 & EASRC_CRCC_RS_TAPS_MASK)
+#define EASRC_CRCC_RS_CPR_SHIFT		0
+#define EASRC_CRCC_RS_CPR_MASK		BIT(EASRC_CRCC_RS_CPR_SHIFT)
+#define EASRC_CRCC_RS_CPR		BIT(EASRC_CRCC_RS_CPR_SHIFT)
+
+/* ASRC Interrupt_Control (IC) */
+#define EASRC_IRQC_RSDM_SHIFT		8
+#define EASRC_IRQC_RSDM_WIDTH		4
+#define EASRC_IRQC_RSDM_MASK		((BIT(EASRC_IRQC_RSDM_WIDTH) - 1) \
+					 << EASRC_IRQC_RSDM_SHIFT)
+#define EASRC_IRQC_RSDM(v)		(((v) << EASRC_IRQC_RSDM_SHIFT) \
+					 & EASRC_IRQC_RSDM_MASK)
+#define EASRC_IRQC_OERM_SHIFT		4
+#define EASRC_IRQC_OERM_WIDTH		4
+#define EASRC_IRQC_OERM_MASK		((BIT(EASRC_IRQC_OERM_WIDTH) - 1) \
+					 << EASRC_IRQC_OERM_SHIFT)
+#define EASRC_IRQC_OERM(v)		(((v) << EASRC_IRQC_OERM_SHIFT) \
+					 & EASRC_IEQC_OERM_MASK)
+#define EASRC_IRQC_IOM_SHIFT		0
+#define EASRC_IRQC_IOM_WIDTH		4
+#define EASRC_IRQC_IOM_MASK		((BIT(EASRC_IRQC_IOM_WIDTH) - 1) \
+					 << EASRC_IRQC_IOM_SHIFT)
+#define EASRC_IRQC_IOM(v)		(((v) << EASRC_IRQC_IOM_SHIFT) \
+					 & EASRC_IRQC_IOM_MASK)
+
+/* ASRC Interrupt Status Flags (ISF) */
+#define EASRC_IRQF_RSD_SHIFT		8
+#define EASRC_IRQF_RSD_WIDTH		4
+#define EASRC_IRQF_RSD_MASK		((BIT(EASRC_IRQF_RSD_WIDTH) - 1) \
+					 << EASRC_IRQF_RSD_SHIFT)
+#define EASRC_IRQF_RSD(v)		(((v) << EASRC_IRQF_RSD_SHIFT) \
+					 & EASRC_IRQF_RSD_MASK)
+#define EASRC_IRQF_OER_SHIFT		4
+#define EASRC_IRQF_OER_WIDTH		4
+#define EASRC_IRQF_OER_MASK		((BIT(EASRC_IRQF_OER_WIDTH) - 1) \
+					 << EASRC_IRQF_OER_SHIFT)
+#define EASRC_IRQF_OER(v)		(((v) << EASRC_IRQF_OER_SHIFT) \
+					 & EASRC_IRQF_OER_MASK)
+#define EASRC_IRQF_IFO_SHIFT		0
+#define EASRC_IRQF_IFO_WIDTH		4
+#define EASRC_IRQF_IFO_MASK		((BIT(EASRC_IRQF_IFO_WIDTH) - 1) \
+					 << EASRC_IRQF_IFO_SHIFT)
+#define EASRC_IRQF_IFO(v)		(((v) << EASRC_IRQF_IFO_SHIFT) \
+					 & EASRC_IRQF_IFO_MASK)
+
+/* ASRC Context Channel STAT */
+#define EASRC_CSx_CSx_SHIFT		0
+#define EASRC_CSx_CSx_WIDTH		32
+#define EASRC_CSx_CSx(v)		((v) << EASRC_CSx_CSx_SHIFT)
+
+/* ASRC Debug Control Register */
+#define EASRC_DBGC_DMS_SHIFT		0
+#define EASRC_DBGC_DMS_WIDTH		6
+#define EASRC_DBGC_DMS_MASK		((BIT(EASRC_DBGC_DMS_WIDTH) - 1) \
+					 << EASRC_DBGC_DMS_SHIFT)
+#define EASRC_DBGC_DMS(v)		(((v) << EASRC_DBGC_DMS_SHIFT) \
+					 & EASRC_DBGC_DMS_MASK)
+
+/* ASRC Debug Status Register */
+#define EASRC_DBGS_DS_SHIFT		0
+#define EASRC_DBGS_DS_WIDTH		32
+#define EASRC_DBGS_DS(v)		((v) << EASRC_DBGS_DS_SHIFT)
+
+/* General Constants */
+#define EASRC_CTX_MAX_NUM		4
+#define EASRC_RS_COEFF_MEM		0
+#define EASRC_PF_COEFF_MEM		1
+
+/* Prefilter constants */
+#define EASRC_PF_ST1_ONLY		0
+#define EASRC_PF_TWO_STAGE_MODE		1
+#define EASRC_PF_ST1_COEFF_WR		0
+#define EASRC_PF_ST2_COEFF_WR		1
+#define EASRC_MAX_PF_TAPS		384
+
+/* Resampling constants */
+#define EASRC_RS_32_TAPS		0
+#define EASRC_RS_64_TAPS		1
+#define EASRC_RS_128_TAPS		2
+
+/* Initialization mode */
+#define EASRC_INIT_MODE_SW_CONTROL	0
+#define EASRC_INIT_MODE_REPLICATE	1
+#define EASRC_INIT_MODE_ZERO_FILL	2
+
+/* FIFO watermarks */
+#define FSL_EASRC_INPUTFIFO_WML		0x4
+#define FSL_EASRC_OUTPUTFIFO_WML	0x1
+
+#define EASRC_INPUTFIFO_THRESHOLD_MIN	0
+#define EASRC_INPUTFIFO_THRESHOLD_MAX	127
+#define EASRC_OUTPUTFIFO_THRESHOLD_MIN	0
+#define EASRC_OUTPUTFIFO_THRESHOLD_MAX	63
+
+#define EASRC_DMA_BUFFER_SIZE		(1024 * 48 * 9)
+#define EASRC_MAX_BUFFER_SIZE		(1024 * 48)
+
+#define FIRMWARE_MAGIC			0xDEAD
+#define FIRMWARE_VERSION		1
+
+#define PREFILTER_MEM_LEN		0x1800
+
+enum easrc_word_width {
+	EASRC_WIDTH_16_BIT = 0,
+	EASRC_WIDTH_20_BIT = 1,
+	EASRC_WIDTH_24_BIT = 2,
+	EASRC_WIDTH_32_BIT = 3,
+};
+
+struct __attribute__((__packed__))  asrc_firmware_hdr {
+	u32 magic;
+	u32 interp_scen;
+	u32 prefil_scen;
+	u32 firmware_version;
+};
+
+struct __attribute__((__packed__)) interp_params {
+	u32 magic;
+	u32 num_taps;
+	u32 num_phases;
+	u64 center_tap;
+	u64 coeff[8192];
+};
+
+struct __attribute__((__packed__)) prefil_params {
+	u32 magic;
+	u32 insr;
+	u32 outsr;
+	u32 st1_taps;
+	u32 st2_taps;
+	u32 st1_exp;
+	u64 coeff[256];
+};
+
+struct dma_block {
+	void *dma_vaddr;
+	unsigned int length;
+	unsigned int max_buf_size;
+};
+
+struct fsl_easrc_data_fmt {
+	unsigned int width : 2;
+	unsigned int endianness : 1;
+	unsigned int unsign : 1;
+	unsigned int floating_point : 1;
+	unsigned int iec958: 1;
+	unsigned int sample_pos: 5;
+	unsigned int addexp;
+};
+
+struct fsl_easrc_io_params {
+	struct fsl_easrc_data_fmt fmt;
+	unsigned int group_len;
+	unsigned int iterations;
+	unsigned int access_len;
+	unsigned int fifo_wtmk;
+	unsigned int sample_rate;
+	unsigned int sample_format;
+	unsigned int norm_rate;
+};
+
+struct fsl_easrc_slot {
+	bool busy;
+	int ctx_index;
+	int slot_index;
+	int num_channel;  /*maximum is 8*/
+	int min_channel;
+	int max_channel;
+	int pf_mem_used;
+};
+
+/**
+ * fsl_easrc_ctx_priv: EASRC context private data
+ *
+ * @in_params: input parameter
+ * @out_params:  output parameter
+ * @st1_num_taps: tap number of stage 1
+ * @st2_num_taps: tap number of stage 2
+ * @st1_num_exp: exponent number of stage 1
+ * @pf_init_mode: prefilter init mode
+ * @rs_init_mode:  resample filter init mode
+ * @ctx_streams: stream flag of ctx
+ * @rs_ratio: resampler ratio
+ * @st1_coeff: pointer of stage 1 coeff
+ * @st2_coeff: pointer of stage 2 coeff
+ * @in_filled_sample: input filled sample
+ * @out_missed_sample: sample missed in output
+ * @st1_addexp: exponent added for stage1
+ * @st2_addexp: exponent added for stage2
+ */
+struct fsl_easrc_ctx_priv {
+	struct fsl_easrc_io_params in_params;
+	struct fsl_easrc_io_params out_params;
+	unsigned int st1_num_taps;
+	unsigned int st2_num_taps;
+	unsigned int st1_num_exp;
+	unsigned int pf_init_mode;
+	unsigned int rs_init_mode;
+	unsigned int ctx_streams;
+	u64 rs_ratio;
+	u64 *st1_coeff;
+	u64 *st2_coeff;
+	int in_filled_sample;
+	int out_missed_sample;
+	int st1_addexp;
+	int st2_addexp;
+};
+
+/**
+ * fsl_easrc_priv: EASRC private data
+ *
+ * @slot: slot setting
+ * @firmware_hdr:  the header of firmware
+ * @interp: pointer to interpolation filter coeff
+ * @prefil: pointer to prefilter coeff
+ * @fw: firmware of coeff table
+ * @fw_name: firmware name
+ * @rs_num_taps:  resample filter taps, 32, 64, or 128
+ * @bps_i2c958: bits per sample of iec958
+ * @rs_coeff: resampler coefficient
+ * @const_coeff: one tap prefilter coefficient
+ * @firmware_loaded: firmware is loaded
+ */
+struct fsl_easrc_priv {
+	struct fsl_easrc_slot slot[EASRC_CTX_MAX_NUM][2];
+	struct asrc_firmware_hdr *firmware_hdr;
+	struct interp_params *interp;
+	struct prefil_params *prefil;
+	const struct firmware *fw;
+	const char *fw_name;
+	unsigned int rs_num_taps;
+	unsigned int bps_iec958[EASRC_CTX_MAX_NUM];
+	u64 *rs_coeff;
+	u64 const_coeff;
+	int firmware_loaded;
+};
+#endif /* _FSL_EASRC_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
