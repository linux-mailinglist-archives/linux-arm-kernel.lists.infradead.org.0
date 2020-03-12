Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6107C183C8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 23:33:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xDzB82bbO57rJdgrMXLUjFRiD3mUTy0djF6z54Bmr4=; b=HXEY/DwSkw8lZZ
	8G8paIS73iNOZ99L+1MtxpagURnj7IrGmOoQVyGwBkUQ8fb56JRN8xHPUNX0s2TtgLNXzknBlnXxT
	lUq3fBZCjE0iq2zjFFInsIvO538KXhGyhhitFvfeO/BlraDQAhxOul42kO6BiMx4J7Xt1EFgjIB/Z
	xT2hlpMmZUtU6hSlGub89LrSomuqjNfaaWJlhhSw2Vf7pghMyrmfvIpZap7r5aEkL8S6/skh7xUCo
	kvdt68g2XBuSGL7PF5aEBGtqNeymeMthvcnVzdb9fT5HmXBhtun/om6T6GxVXgKpgl3sFARTUE17a
	4XIQkHKo4QRugRTVRPRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCWOM-0006k3-PZ; Thu, 12 Mar 2020 22:33:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCWO2-0006Zy-SA
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 22:33:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id a5so7934505wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 15:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Uh0qyhxDJZNiOUl/7XtNJ0cPPogwUNK8TyWYeMAzHk8=;
 b=VcifOnLywxiqWRZMRRd6Thz1I6xISfvToXgD+YAAKfxhGoFInmc+/EFlpCc22lUDp7
 jHc/83McLWNxCeRYC7HhJXfm15vJ36B2NBlSTlLVOAhQ6GjflAR3ET9VtYfkzujVEtWI
 PjGYmi8fcuBq6oXufGq5juMeZqtOFleUpn1vg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Uh0qyhxDJZNiOUl/7XtNJ0cPPogwUNK8TyWYeMAzHk8=;
 b=SNG4l11Cuns4Nn2FR3ZHGkxKyXzfb0v2aooRAlKe0CAzaI8yNwuCxTWKcYyv1OjEf0
 7J0ZprLk/Szc50lQi9Ro3fdVLA0LvHoPrSovNznxFM5Qtr+NWHSfkx53dsYUg3ly01DE
 ulRCm8lwrjxeTPjoxskPUoFD8cC9JDd6d9HfO4uFpjZ5N/+pRfDy/BkpVvvkfO+tVsKW
 gbuidGUSkVgcBX6gORsrSgvwwKzwQ1e07L3h+HPaqHRo82KA3P2EVBkacF+W7xI8rf+a
 t+VzGD2/7BpNUlgACtDEHgkBZFkUG5EUvfoFFWdEDbdxQv27RroxLffFq1kOOqOa13DD
 qBjw==
X-Gm-Message-State: ANhLgQ0f16NrSnSgcgpMv5fphLWao3d9OWqo9NTwB6L0ANsALakAOgBF
 SlR4ijlsIg6ydwugRdXW7Z3VpA==
X-Google-Smtp-Source: ADFU+vuwQj1vE2Y/0PRdqVoND8TvDzJtgSi/8WV+5FduCcmrsOo+wrw+w/PP/DI2MslE3u5KG53VGQ==
X-Received: by 2002:a1c:5443:: with SMTP id p3mr6584322wmi.149.1584052385037; 
 Thu, 12 Mar 2020 15:33:05 -0700 (PDT)
Received: from kevin-Precision-Tower-5810.dhcp.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id
 o10sm2964144wrs.65.2020.03.12.15.33.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 12 Mar 2020 15:33:04 -0700 (PDT)
From: Kevin Li <kevin-ke.li@broadcom.com>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 1/2] ASoC: brcm:  Add DSL/PON SoC audio driver
Date: Thu, 12 Mar 2020 15:32:41 -0700
Message-Id: <20200312223242.2843-2-kevin-ke.li@broadcom.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200312223242.2843-1-kevin-ke.li@broadcom.com>
References: <20200312223242.2843-1-kevin-ke.li@broadcom.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_153307_030295_FF378942 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Kevin Li <kevin-ke.li@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds Broadcom DSL/PON SoC audio driver
with Whistler I2S block. The SoC supported by this
patch are BCM63158B0,BCM63178 and BCM47622/6755

Signed-off-by: Kevin Li <kevin-ke.li@broadcom.com>
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
index 000000000000..4298700fa3c0
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
