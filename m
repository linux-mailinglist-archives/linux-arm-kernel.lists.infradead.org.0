Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC619184C31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:17:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=/jyEydQxf3R+a0RkB4vTHuDwCBSeenYciM2j37gwtZA=; b=fM6
	CCWke2vMLk7S7tro10ws9GsyfFnxt2o18IkTtdaguwaTmMmRu9er5UBMtoErwEEqBX9XffLTxDc0C
	FEhgWGgapjbFOLHHa1Z8oaEDLTjwLI4/mXqzzjLajD3X9+Lb/tFGVa1QGm/MlNjX+VH74JGdYj77R
	BuX4N9xCFnS3LpKKNlbkkdRvxlCam8GV1t42htPrabPr7GBuzw0FVM2aR5mpbEY59vMQU2Asx6o0b
	2H0IMqHeP7K1biwmVHjKAmfSJSgS49nW4kez+BqsjI7YLuS9DR/v0kK+inFvda2CtSDjwpjLjUczW
	0YoUomloIUJ+bN2XtMupblm34/yJ9lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCn0M-0008Qs-Ld; Fri, 13 Mar 2020 16:17:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmzy-0008H2-6h
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:17:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B858A31B;
 Fri, 13 Mar 2020 09:17:21 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 13AC93F6CF;
 Fri, 13 Mar 2020 09:17:20 -0700 (PDT)
Date: Fri, 13 Mar 2020 16:17:19 +0000
From: Mark Brown <broonie@kernel.org>
To: Kevin Li <kevin-ke.li@broadcom.com>
Subject: Applied "ASoC: brcm: Add DSL/PON SoC audio driver" to the asoc tree
In-Reply-To: <20200312223242.2843-2-kevin-ke.li@broadcom.com>
Message-Id: <applied-20200312223242.2843-2-kevin-ke.li@broadcom.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_091722_379960_87184403 
X-CRM114-Status: GOOD (  24.69  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, Scott Branden <sbranden@broadcom.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: brcm: Add DSL/PON SoC audio driver

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 88eb404ccc3efd300fb6fb6a9f8c99c1d5db3747 Mon Sep 17 00:00:00 2001
From: Kevin Li <kevin-ke.li@broadcom.com>
Date: Thu, 12 Mar 2020 15:32:41 -0700
Subject: [PATCH] ASoC: brcm: Add DSL/PON SoC audio driver

This patch adds Broadcom DSL/PON SoC audio driver
with Whistler I2S block. The SoC supported by this
patch are BCM63158B0,BCM63178 and BCM47622/6755

Signed-off-by: Kevin Li <kevin-ke.li@broadcom.com>
Link: https://lore.kernel.org/r/20200312223242.2843-2-kevin-ke.li@broadcom.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/bcm/Kconfig                |   9 +
 sound/soc/bcm/Makefile               |   4 +
 sound/soc/bcm/bcm63xx-i2s-whistler.c | 317 +++++++++++++++++
 sound/soc/bcm/bcm63xx-i2s.h          |  90 +++++
 sound/soc/bcm/bcm63xx-pcm-whistler.c | 485 +++++++++++++++++++++++++++
 5 files changed, 905 insertions(+)
 create mode 100644 sound/soc/bcm/bcm63xx-i2s-whistler.c
 create mode 100644 sound/soc/bcm/bcm63xx-i2s.h
 create mode 100644 sound/soc/bcm/bcm63xx-pcm-whistler.c

diff --git a/sound/soc/bcm/Kconfig b/sound/soc/bcm/Kconfig
index 0037e96aa228..4218057b0874 100644
--- a/sound/soc/bcm/Kconfig
+++ b/sound/soc/bcm/Kconfig
@@ -17,3 +17,12 @@ config SND_SOC_CYGNUS
 	  Cygnus chips (bcm958300, bcm958305, bcm911360)
 
 	  If you don't know what to do here, say N.
+
+config SND_BCM63XX_I2S_WHISTLER
+	tristate "SoC Audio support for the Broadcom BCM63XX I2S module"
+	select REGMAP_MMIO
+	help
+	  Say Y if you want to add support for ASoC audio on Broadcom
+	  DSL/PON chips (bcm63158, bcm63178)
+
+	  If you don't know what to do here, say N
diff --git a/sound/soc/bcm/Makefile b/sound/soc/bcm/Makefile
index b81fa421ec27..7c2d7899603b 100644
--- a/sound/soc/bcm/Makefile
+++ b/sound/soc/bcm/Makefile
@@ -9,3 +9,7 @@ snd-soc-cygnus-objs := cygnus-pcm.o cygnus-ssp.o
 
 obj-$(CONFIG_SND_SOC_CYGNUS) += snd-soc-cygnus.o
 
+# BCM63XX Platform Support
+snd-soc-63xx-objs := bcm63xx-i2s-whistler.o bcm63xx-pcm-whistler.o
+
+obj-$(CONFIG_SND_BCM63XX_I2S_WHISTLER) += snd-soc-63xx.o
\ No newline at end of file
diff --git a/sound/soc/bcm/bcm63xx-i2s-whistler.c b/sound/soc/bcm/bcm63xx-i2s-whistler.c
new file mode 100644
index 000000000000..246a57ac6679
--- /dev/null
+++ b/sound/soc/bcm/bcm63xx-i2s-whistler.c
@@ -0,0 +1,317 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// linux/sound/bcm/bcm63xx-i2s-whistler.c
+// BCM63xx whistler i2s driver
+// Copyright (c) 2020 Broadcom Corporation
+// Author: Kevin-Ke Li <kevin-ke.li@broadcom.com>
+
+#include <linux/clk.h>
+#include <linux/dma-mapping.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+#include <sound/pcm_params.h>
+#include <sound/soc.h>
+#include "bcm63xx-i2s.h"
+
+#define DRV_NAME "brcm-i2s"
+
+static bool brcm_i2s_wr_reg(struct device *dev, unsigned int reg)
+{
+	switch (reg) {
+	case I2S_TX_CFG ... I2S_TX_DESC_IFF_LEN:
+	case I2S_TX_CFG_2 ... I2S_RX_DESC_IFF_LEN:
+	case I2S_RX_CFG_2 ... I2S_REG_MAX:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool brcm_i2s_rd_reg(struct device *dev, unsigned int reg)
+{
+	switch (reg) {
+	case I2S_TX_CFG ... I2S_REG_MAX:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool brcm_i2s_volatile_reg(struct device *dev, unsigned int reg)
+{
+	switch (reg) {
+	case I2S_TX_CFG:
+	case I2S_TX_IRQ_CTL:
+	case I2S_TX_DESC_IFF_ADDR:
+	case I2S_TX_DESC_IFF_LEN:
+	case I2S_TX_DESC_OFF_ADDR:
+	case I2S_TX_DESC_OFF_LEN:
+	case I2S_TX_CFG_2:
+	case I2S_RX_CFG:
+	case I2S_RX_IRQ_CTL:
+	case I2S_RX_DESC_OFF_ADDR:
+	case I2S_RX_DESC_OFF_LEN:
+	case I2S_RX_DESC_IFF_LEN:
+	case I2S_RX_DESC_IFF_ADDR:
+	case I2S_RX_CFG_2:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static const struct regmap_config brcm_i2s_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.max_register = I2S_REG_MAX,
+	.writeable_reg = brcm_i2s_wr_reg,
+	.readable_reg = brcm_i2s_rd_reg,
+	.volatile_reg = brcm_i2s_volatile_reg,
+	.cache_type = REGCACHE_FLAT,
+};
+
+static int bcm63xx_i2s_hw_params(struct snd_pcm_substream *substream,
+				 struct snd_pcm_hw_params *params,
+				 struct snd_soc_dai *dai)
+{
+	int ret = 0;
+	struct bcm_i2s_priv *i2s_priv = snd_soc_dai_get_drvdata(dai);
+
+	ret = clk_set_rate(i2s_priv->i2s_clk, params_rate(params));
+	if (ret < 0)
+		dev_err(i2s_priv->dev,
+			"Can't set sample rate, err: %d\n", ret);
+
+	return ret;
+}
+
+static int bcm63xx_i2s_startup(struct snd_pcm_substream *substream,
+			       struct snd_soc_dai *dai)
+{
+	unsigned int slavemode;
+	struct bcm_i2s_priv *i2s_priv = snd_soc_dai_get_drvdata(dai);
+	struct regmap *regmap_i2s = i2s_priv->regmap_i2s;
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		regmap_update_bits(regmap_i2s, I2S_TX_CFG,
+				   I2S_TX_OUT_R | I2S_TX_DATA_ALIGNMENT |
+				   I2S_TX_DATA_ENABLE | I2S_TX_CLOCK_ENABLE,
+				   I2S_TX_OUT_R | I2S_TX_DATA_ALIGNMENT |
+				   I2S_TX_DATA_ENABLE | I2S_TX_CLOCK_ENABLE);
+		regmap_write(regmap_i2s, I2S_TX_IRQ_CTL, 0);
+		regmap_write(regmap_i2s, I2S_TX_IRQ_IFF_THLD, 0);
+		regmap_write(regmap_i2s, I2S_TX_IRQ_OFF_THLD, 1);
+
+		/* TX and RX block each have an independent bit to indicate
+		 * if it is generating the clock for the I2S bus. The bus
+		 * clocks need to be generated from either the TX or RX block,
+		 * but not both
+		 */
+		regmap_read(regmap_i2s, I2S_RX_CFG_2, &slavemode);
+		if (slavemode & I2S_RX_SLAVE_MODE_MASK)
+			regmap_update_bits(regmap_i2s, I2S_TX_CFG_2,
+					   I2S_TX_SLAVE_MODE_MASK,
+					   I2S_TX_MASTER_MODE);
+		else
+			regmap_update_bits(regmap_i2s, I2S_TX_CFG_2,
+					   I2S_TX_SLAVE_MODE_MASK,
+					   I2S_TX_SLAVE_MODE);
+	} else {
+		regmap_update_bits(regmap_i2s, I2S_RX_CFG,
+				   I2S_RX_IN_R | I2S_RX_DATA_ALIGNMENT |
+				   I2S_RX_CLOCK_ENABLE,
+				   I2S_RX_IN_R | I2S_RX_DATA_ALIGNMENT |
+				   I2S_RX_CLOCK_ENABLE);
+		regmap_write(regmap_i2s, I2S_RX_IRQ_CTL, 0);
+		regmap_write(regmap_i2s, I2S_RX_IRQ_IFF_THLD, 0);
+		regmap_write(regmap_i2s, I2S_RX_IRQ_OFF_THLD, 1);
+
+		regmap_read(regmap_i2s, I2S_TX_CFG_2, &slavemode);
+		if (slavemode & I2S_TX_SLAVE_MODE_MASK)
+			regmap_update_bits(regmap_i2s, I2S_RX_CFG_2,
+					   I2S_RX_SLAVE_MODE_MASK, 0);
+		else
+			regmap_update_bits(regmap_i2s, I2S_RX_CFG_2,
+					   I2S_RX_SLAVE_MODE_MASK,
+					   I2S_RX_SLAVE_MODE);
+	}
+	return 0;
+}
+
+static void bcm63xx_i2s_shutdown(struct snd_pcm_substream *substream,
+				struct snd_soc_dai *dai)
+{
+	unsigned int enabled, slavemode;
+	struct bcm_i2s_priv *i2s_priv = snd_soc_dai_get_drvdata(dai);
+	struct regmap *regmap_i2s = i2s_priv->regmap_i2s;
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		regmap_update_bits(regmap_i2s, I2S_TX_CFG,
+				   I2S_TX_OUT_R | I2S_TX_DATA_ALIGNMENT |
+				   I2S_TX_DATA_ENABLE | I2S_TX_CLOCK_ENABLE, 0);
+		regmap_write(regmap_i2s, I2S_TX_IRQ_CTL, 1);
+		regmap_write(regmap_i2s, I2S_TX_IRQ_IFF_THLD, 4);
+		regmap_write(regmap_i2s, I2S_TX_IRQ_OFF_THLD, 4);
+
+		regmap_read(regmap_i2s, I2S_TX_CFG_2, &slavemode);
+		slavemode = slavemode & I2S_TX_SLAVE_MODE_MASK;
+		if (!slavemode) {
+			regmap_read(regmap_i2s, I2S_RX_CFG, &enabled);
+			enabled = enabled & I2S_RX_ENABLE_MASK;
+			if (enabled)
+				regmap_update_bits(regmap_i2s, I2S_RX_CFG_2,
+						   I2S_RX_SLAVE_MODE_MASK,
+						   I2S_RX_MASTER_MODE);
+		}
+		regmap_update_bits(regmap_i2s, I2S_TX_CFG_2,
+				   I2S_TX_SLAVE_MODE_MASK,
+				   I2S_TX_SLAVE_MODE);
+	} else {
+		regmap_update_bits(regmap_i2s, I2S_RX_CFG,
+				   I2S_RX_IN_R | I2S_RX_DATA_ALIGNMENT |
+				   I2S_RX_CLOCK_ENABLE, 0);
+		regmap_write(regmap_i2s, I2S_RX_IRQ_CTL, 1);
+		regmap_write(regmap_i2s, I2S_RX_IRQ_IFF_THLD, 4);
+		regmap_write(regmap_i2s, I2S_RX_IRQ_OFF_THLD, 4);
+
+		regmap_read(regmap_i2s, I2S_RX_CFG_2, &slavemode);
+		slavemode = slavemode & I2S_RX_SLAVE_MODE_MASK;
+		if (!slavemode) {
+			regmap_read(regmap_i2s, I2S_TX_CFG, &enabled);
+			enabled = enabled & I2S_TX_ENABLE_MASK;
+			if (enabled)
+				regmap_update_bits(regmap_i2s, I2S_TX_CFG_2,
+						   I2S_TX_SLAVE_MODE_MASK,
+						   I2S_TX_MASTER_MODE);
+		}
+
+		regmap_update_bits(regmap_i2s, I2S_RX_CFG_2,
+				   I2S_RX_SLAVE_MODE_MASK, I2S_RX_SLAVE_MODE);
+	}
+}
+
+static const struct snd_soc_dai_ops bcm63xx_i2s_dai_ops = {
+	.startup = bcm63xx_i2s_startup,
+	.shutdown = bcm63xx_i2s_shutdown,
+	.hw_params = bcm63xx_i2s_hw_params,
+};
+
+static struct snd_soc_dai_driver bcm63xx_i2s_dai = {
+	.name = DRV_NAME,
+	.playback = {
+		.channels_min = 2,
+		.channels_max = 2,
+		.rates = SNDRV_PCM_RATE_8000_192000,
+		.formats = SNDRV_PCM_FMTBIT_S32_LE,
+	},
+	.capture = {
+		.channels_min = 2,
+		.channels_max = 2,
+		.rates = SNDRV_PCM_RATE_8000_192000,
+		.formats = SNDRV_PCM_FMTBIT_S32_LE,
+	},
+	.ops = &bcm63xx_i2s_dai_ops,
+	.symmetric_rates = 1,
+	.symmetric_channels = 1,
+};
+
+static const struct snd_soc_component_driver bcm63xx_i2s_component = {
+	.name = "bcm63xx",
+};
+
+static int bcm63xx_i2s_dev_probe(struct platform_device *pdev)
+{
+	int ret = 0;
+	void __iomem *regs;
+	struct resource *r_mem, *region;
+	struct bcm_i2s_priv *i2s_priv;
+	struct regmap *regmap_i2s;
+	struct clk *i2s_clk;
+
+	i2s_priv = devm_kzalloc(&pdev->dev, sizeof(*i2s_priv), GFP_KERNEL);
+	if (!i2s_priv)
+		return -ENOMEM;
+
+	i2s_clk = devm_clk_get(&pdev->dev, "i2sclk");
+	if (IS_ERR(i2s_clk)) {
+		dev_err(&pdev->dev, "%s: cannot get a brcm clock: %ld\n",
+					__func__, PTR_ERR(i2s_clk));
+		return PTR_ERR(i2s_clk);
+	}
+
+	r_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!r_mem) {
+		dev_err(&pdev->dev, "Unable to get register resource.\n");
+		return -ENODEV;
+	}
+
+	region = devm_request_mem_region(&pdev->dev, r_mem->start,
+					resource_size(r_mem), DRV_NAME);
+	if (!region) {
+		dev_err(&pdev->dev, "Memory region already claimed\n");
+		return -EBUSY;
+	}
+
+	regs = devm_ioremap_resource(&pdev->dev, r_mem);
+	if (IS_ERR(regs)) {
+		ret = PTR_ERR(regs);
+		return ret;
+	}
+
+	regmap_i2s = devm_regmap_init_mmio(&pdev->dev,
+					regs, &brcm_i2s_regmap_config);
+	if (IS_ERR(regmap_i2s))
+		return PTR_ERR(regmap_i2s);
+
+	regmap_update_bits(regmap_i2s, I2S_MISC_CFG,
+			   I2S_PAD_LVL_LOOP_DIS_MASK,
+			   I2S_PAD_LVL_LOOP_DIS_ENABLE);
+
+	ret = devm_snd_soc_register_component(&pdev->dev,
+					      &bcm63xx_i2s_component,
+					      &bcm63xx_i2s_dai, 1);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register the dai\n");
+		return ret;
+	}
+
+	i2s_priv->dev = &pdev->dev;
+	i2s_priv->i2s_clk = i2s_clk;
+	i2s_priv->regmap_i2s = regmap_i2s;
+	dev_set_drvdata(&pdev->dev, i2s_priv);
+
+	ret = bcm63xx_soc_platform_probe(pdev, i2s_priv);
+	if (ret)
+		dev_err(&pdev->dev, "failed to register the pcm\n");
+
+	return ret;
+}
+
+static int bcm63xx_i2s_dev_remove(struct platform_device *pdev)
+{
+	bcm63xx_soc_platform_remove(pdev);
+	return 0;
+}
+
+#ifdef CONFIG_OF
+static const struct of_device_id snd_soc_bcm_audio_match[] = {
+	{.compatible = "brcm,bcm63xx-i2s"},
+	{ }
+};
+#endif
+
+static struct platform_driver bcm63xx_i2s_driver = {
+	.driver = {
+		.name = DRV_NAME,
+		.of_match_table = of_match_ptr(snd_soc_bcm_audio_match),
+	},
+	.probe = bcm63xx_i2s_dev_probe,
+	.remove = bcm63xx_i2s_dev_remove,
+};
+
+module_platform_driver(bcm63xx_i2s_driver);
+
+MODULE_AUTHOR("Kevin,Li <kevin-ke.li@broadcom.com>");
+MODULE_DESCRIPTION("Broadcom DSL XPON ASOC I2S Interface");
+MODULE_LICENSE("GPL v2");
diff --git a/sound/soc/bcm/bcm63xx-i2s.h b/sound/soc/bcm/bcm63xx-i2s.h
new file mode 100644
index 000000000000..edc328ba53d3
--- /dev/null
+++ b/sound/soc/bcm/bcm63xx-i2s.h
@@ -0,0 +1,90 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// linux/sound/soc/bcm/bcm63xx-i2s.h
+// Copyright (c) 2020 Broadcom Corporation
+// Author: Kevin-Ke Li <kevin-ke.li@broadcom.com>
+
+#ifndef __BCM63XX_I2S_H
+#define __BCM63XX_I2S_H
+
+#define I2S_DESC_FIFO_DEPTH		8
+#define I2S_MISC_CFG			(0x003C)
+#define I2S_PAD_LVL_LOOP_DIS_MASK	(1 << 2)
+#define I2S_PAD_LVL_LOOP_DIS_ENABLE	I2S_PAD_LVL_LOOP_DIS_MASK
+
+#define I2S_TX_ENABLE_MASK		(1 << 31)
+#define I2S_TX_ENABLE			I2S_TX_ENABLE_MASK
+#define I2S_TX_OUT_R			(1 << 19)
+#define I2S_TX_DATA_ALIGNMENT		(1 << 2)
+#define I2S_TX_DATA_ENABLE		(1 << 1)
+#define I2S_TX_CLOCK_ENABLE		(1 << 0)
+
+#define I2S_TX_DESC_OFF_LEVEL_SHIFT	12
+#define I2S_TX_DESC_OFF_LEVEL_MASK	(0x0F << I2S_TX_DESC_OFF_LEVEL_SHIFT)
+#define I2S_TX_DESC_IFF_LEVEL_SHIFT	8
+#define I2S_TX_DESC_IFF_LEVEL_MASK	(0x0F << I2S_TX_DESC_IFF_LEVEL_SHIFT)
+#define I2S_TX_DESC_OFF_INTR_EN_MSK	(1 << 1)
+#define I2S_TX_DESC_OFF_INTR_EN	I2S_TX_DESC_OFF_INTR_EN_MSK
+
+#define I2S_TX_CFG			(0x0000)
+#define I2S_TX_IRQ_CTL			(0x0004)
+#define I2S_TX_IRQ_EN			(0x0008)
+#define I2S_TX_IRQ_IFF_THLD		(0x000c)
+#define I2S_TX_IRQ_OFF_THLD		(0x0010)
+#define I2S_TX_DESC_IFF_ADDR		(0x0014)
+#define I2S_TX_DESC_IFF_LEN		(0x0018)
+#define I2S_TX_DESC_OFF_ADDR		(0x001C)
+#define I2S_TX_DESC_OFF_LEN		(0x0020)
+#define I2S_TX_CFG_2			(0x0024)
+#define I2S_TX_SLAVE_MODE_SHIFT	13
+#define I2S_TX_SLAVE_MODE_MASK		(1 << I2S_TX_SLAVE_MODE_SHIFT)
+#define I2S_TX_SLAVE_MODE		I2S_TX_SLAVE_MODE_MASK
+#define I2S_TX_MASTER_MODE		0
+#define I2S_TX_INTR_MASK		0x0F
+
+#define I2S_RX_ENABLE_MASK		(1 << 31)
+#define I2S_RX_ENABLE			I2S_RX_ENABLE_MASK
+#define I2S_RX_IN_R			(1 << 19)
+#define I2S_RX_DATA_ALIGNMENT		(1 << 2)
+#define I2S_RX_CLOCK_ENABLE		(1 << 0)
+
+#define I2S_RX_DESC_OFF_LEVEL_SHIFT	12
+#define I2S_RX_DESC_OFF_LEVEL_MASK	(0x0F << I2S_RX_DESC_OFF_LEVEL_SHIFT)
+#define I2S_RX_DESC_IFF_LEVEL_SHIFT	8
+#define I2S_RX_DESC_IFF_LEVEL_MASK	(0x0F << I2S_RX_DESC_IFF_LEVEL_SHIFT)
+#define I2S_RX_DESC_OFF_INTR_EN_MSK	(1 << 1)
+#define I2S_RX_DESC_OFF_INTR_EN	I2S_RX_DESC_OFF_INTR_EN_MSK
+
+#define I2S_RX_CFG			(0x0040) /* 20c0 */
+#define I2S_RX_IRQ_CTL			(0x0044)
+#define I2S_RX_IRQ_EN			(0x0048)
+#define I2S_RX_IRQ_IFF_THLD		(0x004C)
+#define I2S_RX_IRQ_OFF_THLD		(0x0050)
+#define I2S_RX_DESC_IFF_ADDR		(0x0054)
+#define I2S_RX_DESC_IFF_LEN		(0x0058)
+#define I2S_RX_DESC_OFF_ADDR		(0x005C)
+#define I2S_RX_DESC_OFF_LEN		(0x0060)
+#define I2S_RX_CFG_2			(0x0064)
+#define I2S_RX_SLAVE_MODE_SHIFT	13
+#define I2S_RX_SLAVE_MODE_MASK		(1 << I2S_RX_SLAVE_MODE_SHIFT)
+#define I2S_RX_SLAVE_MODE		I2S_RX_SLAVE_MODE_MASK
+#define I2S_RX_MASTER_MODE		0
+#define I2S_RX_INTR_MASK		0x0F
+
+#define I2S_REG_MAX			0x007C
+
+struct bcm_i2s_priv {
+	struct device *dev;
+	struct resource *r_irq;
+	struct regmap *regmap_i2s;
+	struct clk *i2s_clk;
+	struct snd_pcm_substream	*play_substream;
+	struct snd_pcm_substream	*capture_substream;
+	struct i2s_dma_desc *play_dma_desc;
+	struct i2s_dma_desc *capture_dma_desc;
+};
+
+extern int bcm63xx_soc_platform_probe(struct platform_device *pdev,
+				      struct bcm_i2s_priv *i2s_priv);
+extern int bcm63xx_soc_platform_remove(struct platform_device *pdev);
+
+#endif
diff --git a/sound/soc/bcm/bcm63xx-pcm-whistler.c b/sound/soc/bcm/bcm63xx-pcm-whistler.c
new file mode 100644
index 000000000000..55c760f1cf4d
--- /dev/null
+++ b/sound/soc/bcm/bcm63xx-pcm-whistler.c
@@ -0,0 +1,485 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// linux/sound/bcm/bcm63xx-pcm-whistler.c
+// BCM63xx whistler pcm interface
+// Copyright (c) 2020 Broadcom Corporation
+// Author: Kevin-Ke Li <kevin-ke.li@broadcom.com>
+
+#include <linux/dma-mapping.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <sound/pcm_params.h>
+#include <linux/regmap.h>
+#include <linux/of_device.h>
+#include <sound/soc.h>
+#include "bcm63xx-i2s.h"
+
+
+struct i2s_dma_desc {
+	unsigned char *dma_area;
+	dma_addr_t dma_addr;
+	unsigned int dma_len;
+};
+
+struct bcm63xx_runtime_data {
+	int dma_len;
+	dma_addr_t dma_addr;
+	dma_addr_t dma_addr_next;
+};
+
+static const struct snd_pcm_hardware bcm63xx_pcm_hardware = {
+	.info = SNDRV_PCM_INFO_MMAP |
+		SNDRV_PCM_INFO_MMAP_VALID |
+		SNDRV_PCM_INFO_INTERLEAVED |
+		SNDRV_PCM_INFO_PAUSE |
+		SNDRV_PCM_INFO_RESUME,
+	.formats = SNDRV_PCM_FMTBIT_S32_LE, /* support S32 only */
+	.period_bytes_max = 8192 - 32,
+	.periods_min = 1,
+	.periods_max = PAGE_SIZE/sizeof(struct i2s_dma_desc),
+	.buffer_bytes_max = 128 * 1024,
+	.fifo_size = 32,
+};
+
+static int bcm63xx_pcm_hw_params(struct snd_soc_component *component,
+				 struct snd_pcm_substream *substream,
+				 struct snd_pcm_hw_params *params)
+{
+	struct i2s_dma_desc *dma_desc;
+	struct snd_soc_pcm_runtime *rtd = substream->private_data;
+	struct snd_pcm_runtime *runtime = substream->runtime;
+
+	snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);
+	runtime->dma_bytes = params_buffer_bytes(params);
+
+	dma_desc = kzalloc(sizeof(*dma_desc), GFP_NOWAIT);
+	if (!dma_desc)
+		return -ENOMEM;
+
+	snd_soc_dai_set_dma_data(rtd->cpu_dai, substream, dma_desc);
+
+	return 0;
+}
+
+static int bcm63xx_pcm_hw_free(struct snd_soc_component *component,
+			struct snd_pcm_substream *substream)
+{
+	struct i2s_dma_desc	*dma_desc;
+	struct snd_soc_pcm_runtime *rtd = substream->private_data;
+
+	dma_desc = snd_soc_dai_get_dma_data(rtd->cpu_dai, substream);
+	kfree(dma_desc);
+	snd_pcm_set_runtime_buffer(substream, NULL);
+
+	return 0;
+}
+
+static int bcm63xx_pcm_trigger(struct snd_soc_component *component,
+			       struct snd_pcm_substream *substream, int cmd)
+{
+	int ret = 0;
+	struct snd_soc_pcm_runtime *rtd;
+	struct bcm_i2s_priv *i2s_priv;
+	struct regmap   *regmap_i2s;
+
+	rtd = substream->private_data;
+	i2s_priv = dev_get_drvdata(rtd->cpu_dai->dev);
+	regmap_i2s = i2s_priv->regmap_i2s;
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		switch (cmd) {
+		case SNDRV_PCM_TRIGGER_START:
+			regmap_update_bits(regmap_i2s,
+					   I2S_TX_IRQ_EN,
+					   I2S_TX_DESC_OFF_INTR_EN,
+					   I2S_TX_DESC_OFF_INTR_EN);
+			regmap_update_bits(regmap_i2s,
+					   I2S_TX_CFG,
+					   I2S_TX_ENABLE_MASK,
+					   I2S_TX_ENABLE);
+			break;
+		case SNDRV_PCM_TRIGGER_STOP:
+		case SNDRV_PCM_TRIGGER_SUSPEND:
+		case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
+			regmap_write(regmap_i2s,
+				     I2S_TX_IRQ_EN,
+				     0);
+			regmap_update_bits(regmap_i2s,
+					   I2S_TX_CFG,
+					   I2S_TX_ENABLE_MASK,
+					   0);
+			break;
+		default:
+			ret = -EINVAL;
+		}
+	} else {
+		switch (cmd) {
+		case SNDRV_PCM_TRIGGER_START:
+			regmap_update_bits(regmap_i2s,
+					   I2S_RX_IRQ_EN,
+					   I2S_RX_DESC_OFF_INTR_EN_MSK,
+					   I2S_RX_DESC_OFF_INTR_EN);
+			regmap_update_bits(regmap_i2s,
+					   I2S_RX_CFG,
+					   I2S_RX_ENABLE_MASK,
+					   I2S_RX_ENABLE);
+			break;
+		case SNDRV_PCM_TRIGGER_STOP:
+		case SNDRV_PCM_TRIGGER_SUSPEND:
+		case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
+			regmap_update_bits(regmap_i2s,
+					   I2S_RX_IRQ_EN,
+					   I2S_RX_DESC_OFF_INTR_EN_MSK,
+					   0);
+			regmap_update_bits(regmap_i2s,
+					   I2S_RX_CFG,
+					   I2S_RX_ENABLE_MASK,
+					   0);
+			break;
+		default:
+			ret = -EINVAL;
+		}
+	}
+	return ret;
+}
+
+static int bcm63xx_pcm_prepare(struct snd_soc_component *component,
+			struct snd_pcm_substream *substream)
+{
+	struct i2s_dma_desc	*dma_desc;
+	struct regmap		*regmap_i2s;
+	struct bcm_i2s_priv	*i2s_priv;
+	struct snd_soc_pcm_runtime *rtd = substream->private_data;
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	uint32_t regaddr_desclen, regaddr_descaddr;
+
+	dma_desc = snd_soc_dai_get_dma_data(rtd->cpu_dai, substream);
+	dma_desc->dma_len  = snd_pcm_lib_period_bytes(substream);
+	dma_desc->dma_addr = runtime->dma_addr;
+	dma_desc->dma_area = runtime->dma_area;
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		regaddr_desclen = I2S_TX_DESC_IFF_LEN;
+		regaddr_descaddr = I2S_TX_DESC_IFF_ADDR;
+	} else {
+		regaddr_desclen = I2S_RX_DESC_IFF_LEN;
+		regaddr_descaddr = I2S_RX_DESC_IFF_ADDR;
+	}
+
+	i2s_priv = dev_get_drvdata(rtd->cpu_dai->dev);
+	regmap_i2s = i2s_priv->regmap_i2s;
+
+	regmap_write(regmap_i2s, regaddr_desclen, dma_desc->dma_len);
+	regmap_write(regmap_i2s, regaddr_descaddr, dma_desc->dma_addr);
+
+	return 0;
+}
+
+static snd_pcm_uframes_t
+bcm63xx_pcm_pointer(struct snd_soc_component *component,
+		struct snd_pcm_substream *substream)
+{
+	snd_pcm_uframes_t x;
+	struct bcm63xx_runtime_data *prtd = substream->runtime->private_data;
+
+	if ((void *)prtd->dma_addr_next == NULL)
+		prtd->dma_addr_next = substream->runtime->dma_addr;
+
+	x = bytes_to_frames(substream->runtime,
+		prtd->dma_addr_next - substream->runtime->dma_addr);
+
+	return x == substream->runtime->buffer_size ? 0 : x;
+}
+
+static int bcm63xx_pcm_mmap(struct snd_soc_component *component,
+				struct snd_pcm_substream *substream,
+				struct vm_area_struct *vma)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+
+	return  dma_mmap_wc(substream->pcm->card->dev, vma,
+			    runtime->dma_area,
+			    runtime->dma_addr,
+			    runtime->dma_bytes);
+
+}
+
+static int bcm63xx_pcm_open(struct snd_soc_component *component,
+			struct snd_pcm_substream *substream)
+{
+	int ret = 0;
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct bcm63xx_runtime_data *prtd;
+
+	runtime->hw = bcm63xx_pcm_hardware;
+	ret = snd_pcm_hw_constraint_step(runtime, 0,
+					 SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 32);
+	if (ret)
+		goto out;
+
+	ret = snd_pcm_hw_constraint_step(runtime, 0,
+					 SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 32);
+	if (ret)
+		goto out;
+
+	ret = snd_pcm_hw_constraint_integer(runtime,
+					    SNDRV_PCM_HW_PARAM_PERIODS);
+	if (ret < 0)
+		goto out;
+
+	ret = -ENOMEM;
+	prtd = kzalloc(sizeof(*prtd), GFP_KERNEL);
+	if (!prtd)
+		goto out;
+
+	runtime->private_data = prtd;
+	return 0;
+out:
+	return ret;
+}
+
+static int bcm63xx_pcm_close(struct snd_soc_component *component,
+			struct snd_pcm_substream *substream)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct bcm63xx_runtime_data *prtd = runtime->private_data;
+
+	kfree(prtd);
+	return 0;
+}
+
+static irqreturn_t i2s_dma_isr(int irq, void *bcm_i2s_priv)
+{
+	unsigned int availdepth, ifflevel, offlevel, int_status, val_1, val_2;
+	struct bcm63xx_runtime_data *prtd;
+	struct snd_pcm_substream *substream;
+	struct snd_pcm_runtime *runtime;
+	struct regmap *regmap_i2s;
+	struct i2s_dma_desc *dma_desc;
+	struct snd_soc_pcm_runtime *rtd;
+	struct bcm_i2s_priv *i2s_priv;
+
+	i2s_priv = (struct bcm_i2s_priv *)bcm_i2s_priv;
+	regmap_i2s = i2s_priv->regmap_i2s;
+
+	/* rx */
+	regmap_read(regmap_i2s, I2S_RX_IRQ_CTL, &int_status);
+
+	if (int_status & I2S_RX_DESC_OFF_INTR_EN_MSK) {
+		substream = i2s_priv->capture_substream;
+		runtime = substream->runtime;
+		rtd = substream->private_data;
+		prtd = runtime->private_data;
+		dma_desc = snd_soc_dai_get_dma_data(rtd->cpu_dai, substream);
+
+		offlevel = (int_status & I2S_RX_DESC_OFF_LEVEL_MASK) >>
+			   I2S_RX_DESC_OFF_LEVEL_SHIFT;
+		while (offlevel) {
+			regmap_read(regmap_i2s, I2S_RX_DESC_OFF_ADDR, &val_1);
+			regmap_read(regmap_i2s, I2S_RX_DESC_OFF_LEN, &val_2);
+			offlevel--;
+		}
+		prtd->dma_addr_next = val_1 + val_2;
+		ifflevel = (int_status & I2S_RX_DESC_IFF_LEVEL_MASK) >>
+			   I2S_RX_DESC_IFF_LEVEL_SHIFT;
+
+		availdepth = I2S_DESC_FIFO_DEPTH - ifflevel;
+		while (availdepth) {
+			dma_desc->dma_addr +=
+					snd_pcm_lib_period_bytes(substream);
+			dma_desc->dma_area +=
+					snd_pcm_lib_period_bytes(substream);
+			if (dma_desc->dma_addr - runtime->dma_addr >=
+						runtime->dma_bytes) {
+				dma_desc->dma_addr = runtime->dma_addr;
+				dma_desc->dma_area = runtime->dma_area;
+			}
+
+			prtd->dma_addr = dma_desc->dma_addr;
+			regmap_write(regmap_i2s, I2S_RX_DESC_IFF_LEN,
+				     snd_pcm_lib_period_bytes(substream));
+			regmap_write(regmap_i2s, I2S_RX_DESC_IFF_ADDR,
+				     dma_desc->dma_addr);
+			availdepth--;
+		}
+
+		snd_pcm_period_elapsed(substream);
+
+		/* Clear interrupt by writing 0 */
+		regmap_update_bits(regmap_i2s, I2S_RX_IRQ_CTL,
+				   I2S_RX_INTR_MASK, 0);
+	}
+
+	/* tx */
+	regmap_read(regmap_i2s, I2S_TX_IRQ_CTL, &int_status);
+
+	if (int_status & I2S_TX_DESC_OFF_INTR_EN_MSK) {
+		substream = i2s_priv->play_substream;
+		runtime = substream->runtime;
+		rtd = substream->private_data;
+		prtd = runtime->private_data;
+		dma_desc = snd_soc_dai_get_dma_data(rtd->cpu_dai, substream);
+
+		offlevel = (int_status & I2S_TX_DESC_OFF_LEVEL_MASK) >>
+			   I2S_TX_DESC_OFF_LEVEL_SHIFT;
+		while (offlevel) {
+			regmap_read(regmap_i2s, I2S_TX_DESC_OFF_ADDR, &val_1);
+			regmap_read(regmap_i2s, I2S_TX_DESC_OFF_LEN,  &val_2);
+			prtd->dma_addr_next = val_1 + val_2;
+			offlevel--;
+		}
+
+		ifflevel = (int_status & I2S_TX_DESC_IFF_LEVEL_MASK) >>
+			I2S_TX_DESC_IFF_LEVEL_SHIFT;
+		availdepth = I2S_DESC_FIFO_DEPTH - ifflevel;
+
+		while (availdepth) {
+			dma_desc->dma_addr +=
+					snd_pcm_lib_period_bytes(substream);
+			dma_desc->dma_area +=
+					snd_pcm_lib_period_bytes(substream);
+
+			if (dma_desc->dma_addr - runtime->dma_addr >=
+							runtime->dma_bytes) {
+				dma_desc->dma_addr = runtime->dma_addr;
+				dma_desc->dma_area = runtime->dma_area;
+			}
+
+			prtd->dma_addr = dma_desc->dma_addr;
+			regmap_write(regmap_i2s, I2S_TX_DESC_IFF_LEN,
+				snd_pcm_lib_period_bytes(substream));
+			regmap_write(regmap_i2s, I2S_TX_DESC_IFF_ADDR,
+					dma_desc->dma_addr);
+			availdepth--;
+		}
+
+		snd_pcm_period_elapsed(substream);
+
+		/* Clear interrupt by writing 0 */
+		regmap_update_bits(regmap_i2s, I2S_TX_IRQ_CTL,
+				   I2S_TX_INTR_MASK, 0);
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int bcm63xx_pcm_preallocate_dma_buffer(struct snd_pcm *pcm, int stream)
+{
+	struct snd_pcm_substream *substream = pcm->streams[stream].substream;
+	struct snd_dma_buffer *buf = &substream->dma_buffer;
+	size_t size = bcm63xx_pcm_hardware.buffer_bytes_max;
+
+	buf->dev.type = SNDRV_DMA_TYPE_DEV;
+	buf->dev.dev = pcm->card->dev;
+	buf->private_data = NULL;
+
+	buf->area = dma_alloc_wc(pcm->card->dev,
+				 size, &buf->addr,
+				 GFP_KERNEL);
+	if (!buf->area)
+		return -ENOMEM;
+	buf->bytes = size;
+	return 0;
+}
+
+static int bcm63xx_soc_pcm_new(struct snd_soc_component *component,
+		struct snd_soc_pcm_runtime *rtd)
+{
+	struct snd_pcm *pcm = rtd->pcm;
+	struct bcm_i2s_priv *i2s_priv;
+	int ret;
+
+	i2s_priv = dev_get_drvdata(rtd->cpu_dai->dev);
+
+	of_dma_configure(pcm->card->dev, pcm->card->dev->of_node, 1);
+
+	ret = dma_coerce_mask_and_coherent(pcm->card->dev, DMA_BIT_MASK(32));
+	if (ret)
+		goto out;
+
+	if (pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream) {
+		ret = bcm63xx_pcm_preallocate_dma_buffer(pcm,
+						 SNDRV_PCM_STREAM_PLAYBACK);
+		if (ret)
+			goto out;
+
+		i2s_priv->play_substream =
+			pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
+	}
+
+	if (pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream) {
+		ret = bcm63xx_pcm_preallocate_dma_buffer(pcm,
+					SNDRV_PCM_STREAM_CAPTURE);
+		if (ret)
+			goto out;
+		i2s_priv->capture_substream =
+			pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
+	}
+
+out:
+	return ret;
+}
+
+static void bcm63xx_pcm_free_dma_buffers(struct snd_soc_component *component,
+			 struct snd_pcm *pcm)
+{
+	int stream;
+	struct snd_dma_buffer *buf;
+	struct snd_pcm_substream *substream;
+
+	for (stream = 0; stream < 2; stream++) {
+		substream = pcm->streams[stream].substream;
+		if (!substream)
+			continue;
+		buf = &substream->dma_buffer;
+		if (!buf->area)
+			continue;
+		dma_free_wc(pcm->card->dev, buf->bytes,
+					buf->area, buf->addr);
+		buf->area = NULL;
+	}
+}
+
+static const struct snd_soc_component_driver bcm63xx_soc_platform = {
+	.open = bcm63xx_pcm_open,
+	.close = bcm63xx_pcm_close,
+	.hw_params = bcm63xx_pcm_hw_params,
+	.hw_free = bcm63xx_pcm_hw_free,
+	.prepare = bcm63xx_pcm_prepare,
+	.trigger = bcm63xx_pcm_trigger,
+	.pointer = bcm63xx_pcm_pointer,
+	.mmap = bcm63xx_pcm_mmap,
+	.pcm_construct = bcm63xx_soc_pcm_new,
+	.pcm_destruct = bcm63xx_pcm_free_dma_buffers,
+};
+
+int bcm63xx_soc_platform_probe(struct platform_device *pdev,
+			       struct bcm_i2s_priv *i2s_priv)
+{
+	int ret;
+
+	i2s_priv->r_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
+	if (!i2s_priv->r_irq) {
+		dev_err(&pdev->dev, "Unable to get register irq resource.\n");
+		return -ENODEV;
+	}
+
+	ret = devm_request_irq(&pdev->dev, i2s_priv->r_irq->start, i2s_dma_isr,
+			i2s_priv->r_irq->flags, "i2s_dma", (void *)i2s_priv);
+	if (ret) {
+		dev_err(&pdev->dev,
+			"i2s_init: failed to request interrupt.ret=%d\n", ret);
+		return ret;
+	}
+
+	return devm_snd_soc_register_component(&pdev->dev,
+					&bcm63xx_soc_platform, NULL, 0);
+}
+
+int bcm63xx_soc_platform_remove(struct platform_device *pdev)
+{
+	return 0;
+}
+
+MODULE_AUTHOR("Kevin,Li <kevin-ke.li@broadcom.com>");
+MODULE_DESCRIPTION("Broadcom DSL XPON ASOC PCM Interface");
+MODULE_LICENSE("GPL v2");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
