Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB69C13D3DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 06:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8U5qA6aCjQ1b81UdTOrqjxe+nMnfgbvN3LY5q+m/rEo=; b=IIR
	DtDNXmN82w9PL/G5RRmYjAPgeBHRBdK87MY5/ia0O/8FB4S6UuSrfLvFWMFwf9Brvau5xdOR4w1+Z
	zO8OD3dwL2WC2IDGA/vCtShWqJnMJ2DWdTz+JRenCgbDmDc+uclhKu4KtkInXb9dGrxrFa9djDXbl
	SSgGmjcaepgVmQTwaAOy3TkmkDC9cWOO2NMRFJI9BsTq8gmd3a0Vt9GVfew/Cl0Ygc2jdlmkF8msZ
	9DjpncU3HM27cgrlOT5BljKMDZcySRanFFLZOCmpSKW1Ix4h4rs87ejPzNMfOAbIqtfRlwGH2ZW7V
	fM4kbUE9OXiFNIUpHpuK6VBIGz73QHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irxzc-0001Ud-3i; Thu, 16 Jan 2020 05:46:56 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irxzR-0001Tn-0g
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 05:46:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so9338085pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 21:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lw8L9cyK+5YydSgWCB88DiA0pS8ghO6UdLDzTrQjL94=;
 b=sj3sxrLYXU6Byh8WoHoW1qfk482ADlqMzcpaJagwduSYnPcEVn0DAZyioYVTJwf6Db
 JMWodHVPYkHi6CMAqH941IuZPeU6L+TGvT2w0ZMy0vIWRbGVaPwFSGGXpD4PzBVrVYZd
 hNaarxaNzyGJGSllOW0m5vqrOSgW/Enq93VflhiDuf4qi2/utmCsLxcVclTIcA+9wMqh
 C1K8fBmtlNBhexVwBPPrm8zVU74Pf2EDRJwjwGuTSAkkytIrABNsYLStpeolTIMjB5IB
 4wEjQSS7dT+p8M+l9PkMARgI4wpNvGm1fgXtrX6cDeODycy2BP6llRsRvZwv6iMrfU2w
 mLDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lw8L9cyK+5YydSgWCB88DiA0pS8ghO6UdLDzTrQjL94=;
 b=CkqffFXgn4KbTNEMjQAk5gkNlC0AkiIO74yPTAIlgPnZu74iP0Q4hpwvfXnN53XFcZ
 35QSOAbA2mTWMd60rKkdzlgjFjCples2yDeOpc363l+Spnp0HqZlU2lq0aGCFJZuJJaz
 pS4vhTvASHmGQCmpYVhD2u9uKMgALQJlyfkRYIAJcZTbnZFtk2VXxr+hbqSSMBWKELir
 HeJAmkhyDlJJV7v8oMfVTXx0ysHbwXNdYKHfyEPEPOIHlB5U77Dyh54PhTyF6DtrmqKu
 wK7mAqKd3R9eIQD6rrUCO1MdQWhZCOityIvyD0g6iF9a4tU3bbXALhGd/e98eCEMcJBW
 bjLQ==
X-Gm-Message-State: APjAAAWdPNdtyWrWoqcKEQH6smrXwHbSl45goPSHoTVvGktYTLreHX4n
 28qblRfatQq0y0p7Oo8SDLA=
X-Google-Smtp-Source: APXvYqyPJTiQjkqb6V+qtRsA3IQ5fO6Ob61jwDK9uKLNbqGJbQqefsurvwjz9S7AdGaWx9CFnA/qTA==
X-Received: by 2002:a63:5114:: with SMTP id f20mr36749350pgb.321.1579153603499; 
 Wed, 15 Jan 2020 21:46:43 -0800 (PST)
Received: from localhost.localdomain ([101.12.40.97])
 by smtp.gmail.com with ESMTPSA id 68sm22490276pge.14.2020.01.15.21.46.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jan 2020 21:46:43 -0800 (PST)
From: Jeff Chang <richtek.jeff.chang@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v7] ASoC: Add MediaTek MT6660 Speaker Amp Driver
Date: Thu, 16 Jan 2020 13:46:37 +0800
Message-Id: <1579153597-23286-1-git-send-email-richtek.jeff.chang@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_214645_091320_553E570F 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richtek.jeff.chang[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, richtek.jeff.chang@gmail.com,
 linux-kernel@vger.kernel.org, tiwai@suse.com, perex@perex.cz,
 jeff_chang@richtek.com, broonie@kernel.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeff Chang <jeff_chang@richtek.com>

The MT6660 is a boosted BTL class-D amplifier with V/I sensing.
A built-in DC-DC step-up converter is used to provide efficient
power for class-D amplifier with multi-level class-G operation.
The digital audio interface supports I2S, left-justified,
right-justified, TDM and DSP A/B format for audio in with a data
out used for chip information like voltage sense and current
sense, which are able to be monitored via DATAO through proper

Signed-off-by: Jeff Chang <jeff_chang@richtek.com>
---
 sound/soc/codecs/Kconfig  |  10 +
 sound/soc/codecs/Makefile |   2 +
 sound/soc/codecs/mt6660.c | 509 ++++++++++++++++++++++++++++++++++++++++++++++
 sound/soc/codecs/mt6660.h |  77 +++++++
 4 files changed, 598 insertions(+)
 create mode 100644 sound/soc/codecs/mt6660.c
 create mode 100644 sound/soc/codecs/mt6660.h


changelogs between v7 & v6
	- remove blank line.
	- remove unused structure
	- use regmap instead of raw access.

changelogs between v6 & v5
        - remove parse DT and apply function about Chip INIT SETTING.
        - remove DT binding Documentation.

changelogs between v5 & v4
        - remove redundant initialization.
        - use packed structures.
        - remove useless switch case.
        - take care of memory allocation failures.

changelogs between v4 & v3
        - remove unnecessary kcontrols.
        - modify copy right header.
        - use dev_dbg instead of dev_info.
        - add necessary debug message.
        - add DT binding documentation.
        - add space before } at every table.

changelogs between v3 & v2

        - modify MT6660 Kconfig, remove unnecessary selection.
        - remove my own debug io interface. use standard regmap for debugging.
        - remove regmap volatile ops, we do not use cache.
        - remove component io read/write function, use snd_soc_component_init_regmap.
        - remove init setting write code. Using parsing dts to set them.
        - remove unnecessary pr_info log message.
        - remove mt6660_component_put_volsw. Using snd_soc_get_volsw.









diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index 229cc89..2f627cf 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -122,6 +122,7 @@ config SND_SOC_ALL_CODECS
 	select SND_SOC_ML26124 if I2C
 	select SND_SOC_MT6351 if MTK_PMIC_WRAP
 	select SND_SOC_MT6358 if MTK_PMIC_WRAP
+	select SND_SOC_MT6660 if I2C
 	select SND_SOC_NAU8540 if I2C
 	select SND_SOC_NAU8810 if I2C
 	select SND_SOC_NAU8822 if I2C
@@ -1465,6 +1466,15 @@ config SND_SOC_MT6358
 	  Enable support for the platform which uses MT6358 as
 	  external codec device.
 
+config SND_SOC_MT6660
+	tristate "Mediatek MT6660 Speaker Amplifier"
+	depends on I2C
+	help
+	  MediaTek MT6660 is a smart power amplifier which contain
+	  speaker protection, multi-band DRC, equalizer functions.
+	  Select N if you don't have MT6660 on board.
+	  Select M to build this as module.
+
 config SND_SOC_NAU8540
        tristate "Nuvoton Technology Corporation NAU85L40 CODEC"
        depends on I2C
diff --git a/sound/soc/codecs/Makefile b/sound/soc/codecs/Makefile
index c498373..2b6814c 100644
--- a/sound/soc/codecs/Makefile
+++ b/sound/soc/codecs/Makefile
@@ -119,6 +119,7 @@ snd-soc-msm8916-analog-objs := msm8916-wcd-analog.o
 snd-soc-msm8916-digital-objs := msm8916-wcd-digital.o
 snd-soc-mt6351-objs := mt6351.o
 snd-soc-mt6358-objs := mt6358.o
+snd-soc-mt6660-objs := mt6660.o
 snd-soc-nau8540-objs := nau8540.o
 snd-soc-nau8810-objs := nau8810.o
 snd-soc-nau8822-objs := nau8822.o
@@ -403,6 +404,7 @@ obj-$(CONFIG_SND_SOC_MSM8916_WCD_ANALOG) +=snd-soc-msm8916-analog.o
 obj-$(CONFIG_SND_SOC_MSM8916_WCD_DIGITAL) +=snd-soc-msm8916-digital.o
 obj-$(CONFIG_SND_SOC_MT6351)	+= snd-soc-mt6351.o
 obj-$(CONFIG_SND_SOC_MT6358)	+= snd-soc-mt6358.o
+obj-$(CONFIG_SND_SOC_MT6660)	+= snd-soc-mt6660.o
 obj-$(CONFIG_SND_SOC_NAU8540)   += snd-soc-nau8540.o
 obj-$(CONFIG_SND_SOC_NAU8810)   += snd-soc-nau8810.o
 obj-$(CONFIG_SND_SOC_NAU8822)   += snd-soc-nau8822.o
diff --git a/sound/soc/codecs/mt6660.c b/sound/soc/codecs/mt6660.c
new file mode 100644
index 0000000..a36c416
--- /dev/null
+++ b/sound/soc/codecs/mt6660.c
@@ -0,0 +1,509 @@
+// SPDX-License-Identifier: GPL-2.0 //
+
+// Copyright (c) 2019 MediaTek Inc.
+
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/version.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/pm_runtime.h>
+#include <linux/delay.h>
+#include <linux/debugfs.h>
+#include <sound/soc.h>
+#include <sound/tlv.h>
+#include <sound/pcm_params.h>
+
+#include "mt6660.h"
+
+struct reg_size_table {
+	u32 addr;
+	u8 size;
+};
+
+static const struct reg_size_table mt6660_reg_size_table[] = {
+	{ MT6660_REG_HPF1_COEF, 4 },
+	{ MT6660_REG_HPF2_COEF, 4 },
+	{ MT6660_REG_TDM_CFG3, 2 },
+	{ MT6660_REG_RESV17, 2 },
+	{ MT6660_REG_RESV23, 2 },
+	{ MT6660_REG_SIGMAX, 2 },
+	{ MT6660_REG_DEVID, 2 },
+	{ MT6660_REG_HCLIP_CTRL, 2 },
+	{ MT6660_REG_DA_GAIN, 2 },
+};
+
+static int mt6660_get_reg_size(uint32_t addr)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(mt6660_reg_size_table); i++) {
+		if (mt6660_reg_size_table[i].addr == addr)
+			return mt6660_reg_size_table[i].size;
+	}
+	return 1;
+}
+
+static int mt6660_reg_write(void *context, unsigned int reg, unsigned int val)
+{
+	struct mt6660_chip *chip = context;
+	int size = mt6660_get_reg_size(reg);
+	u8 reg_data[4];
+	int i, ret;
+
+	for (i = 0; i < size; i++)
+		reg_data[size - i - 1] = (val >> (8 * i)) & 0xff;
+
+	ret = i2c_smbus_write_i2c_block_data(chip->i2c, reg, size, reg_data);
+	return ret;
+}
+
+static int mt6660_reg_read(void *context, unsigned int reg, unsigned int *val)
+{
+	struct mt6660_chip *chip = context;
+	int size = mt6660_get_reg_size(reg);
+	int i, ret;
+	u8 data[4];
+	u32 reg_data = 0;
+
+	ret = i2c_smbus_read_i2c_block_data(chip->i2c, reg, size, data);
+	if (ret < 0)
+		return ret;
+	for (i = 0; i < size; i++) {
+		reg_data <<= 8;
+		reg_data |= data[i];
+	}
+	*val = reg_data;
+	return 0;
+}
+
+static const struct regmap_config mt6660_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 32,
+	.reg_write = mt6660_reg_write,
+	.reg_read = mt6660_reg_read,
+};
+
+static int mt6660_codec_dac_event(struct snd_soc_dapm_widget *w,
+	struct snd_kcontrol *kcontrol, int event)
+{
+	if (event == SND_SOC_DAPM_POST_PMU)
+		usleep_range(1000, 1100);
+	return 0;
+}
+
+static int mt6660_codec_classd_event(struct snd_soc_dapm_widget *w,
+	struct snd_kcontrol *kcontrol, int event)
+{
+	struct snd_soc_component *component =
+		snd_soc_dapm_to_component(w->dapm);
+	int ret;
+
+	switch (event) {
+	case SND_SOC_DAPM_PRE_PMU:
+		dev_dbg(component->dev,
+			"%s: before classd turn on\n", __func__);
+		/* config to adaptive mode */
+		ret = snd_soc_component_update_bits(component,
+			MT6660_REG_BST_CTRL, 0x03, 0x03);
+		if (ret < 0) {
+			dev_err(component->dev, "config mode adaptive fail\n");
+			return ret;
+		}
+		break;
+	case SND_SOC_DAPM_POST_PMU:
+		/* voltage sensing enable */
+		ret = snd_soc_component_update_bits(component,
+			MT6660_REG_RESV7, 0x04, 0x04);
+		if (ret < 0) {
+			dev_err(component->dev,
+				"enable voltage sensing fail\n");
+			return ret;
+		}
+		dev_dbg(component->dev, "Amp on\n");
+		break;
+	case SND_SOC_DAPM_PRE_PMD:
+		dev_dbg(component->dev, "Amp off\n");
+		/* voltage sensing disable */
+		ret = snd_soc_component_update_bits(component,
+			MT6660_REG_RESV7, 0x04, 0x00);
+		if (ret < 0) {
+			dev_err(component->dev,
+				"disable voltage sensing fail\n");
+			return ret;
+		}
+		/* pop-noise improvement 1 */
+		ret = snd_soc_component_update_bits(component,
+			MT6660_REG_RESV10, 0x10, 0x10);
+		if (ret < 0) {
+			dev_err(component->dev,
+				"pop-noise improvement 1 fail\n");
+			return ret;
+		}
+		break;
+	case SND_SOC_DAPM_POST_PMD:
+		dev_dbg(component->dev,
+			"%s: after classd turn off\n", __func__);
+		/* pop-noise improvement 2 */
+		ret = snd_soc_component_update_bits(component,
+			MT6660_REG_RESV10, 0x10, 0x00);
+		if (ret < 0) {
+			dev_err(component->dev,
+				"pop-noise improvement 2 fail\n");
+			return ret;
+		}
+		/* config to off mode */
+		ret = snd_soc_component_update_bits(component,
+			MT6660_REG_BST_CTRL, 0x03, 0x00);
+		if (ret < 0) {
+			dev_err(component->dev, "config mode off fail\n");
+			return ret;
+		}
+		break;
+	}
+	return 0;
+}
+
+static const struct snd_soc_dapm_widget mt6660_component_dapm_widgets[] = {
+	SND_SOC_DAPM_DAC_E("DAC", NULL, MT6660_REG_PLL_CFG1,
+		0, 1, mt6660_codec_dac_event, SND_SOC_DAPM_POST_PMU),
+	SND_SOC_DAPM_ADC("VI ADC", NULL, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_PGA("PGA", SND_SOC_NOPM, 0, 0, NULL, 0),
+	SND_SOC_DAPM_OUT_DRV_E("ClassD", MT6660_REG_SYSTEM_CTRL, 2, 0,
+			       NULL, 0, mt6660_codec_classd_event,
+			       SND_SOC_DAPM_PRE_PMU | SND_SOC_DAPM_POST_PMU |
+			       SND_SOC_DAPM_PRE_PMD | SND_SOC_DAPM_POST_PMD),
+	SND_SOC_DAPM_OUTPUT("OUTP"),
+	SND_SOC_DAPM_OUTPUT("OUTN"),
+};
+
+static const struct snd_soc_dapm_route mt6660_component_dapm_routes[] = {
+	{ "DAC", NULL, "aif_playback" },
+	{ "PGA", NULL, "DAC" },
+	{ "ClassD", NULL, "PGA" },
+	{ "OUTP", NULL, "ClassD" },
+	{ "OUTN", NULL, "ClassD" },
+	{ "VI ADC", NULL, "ClassD" },
+	{ "aif_capture", NULL, "VI ADC" },
+};
+
+static int mt6660_component_get_volsw(struct snd_kcontrol *kcontrol,
+				  struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *component =
+		snd_soc_kcontrol_component(kcontrol);
+	struct mt6660_chip *chip = (struct mt6660_chip *)
+		snd_soc_component_get_drvdata(component);
+
+	ucontrol->value.integer.value[0] = chip->chip_rev & 0x0f;
+	return 0;
+}
+
+static const DECLARE_TLV_DB_SCALE(vol_ctl_tlv, -1155, 5, 0);
+
+static const struct snd_kcontrol_new mt6660_component_snd_controls[] = {
+	SOC_SINGLE_TLV("Digital Volume", MT6660_REG_VOL_CTRL, 0, 255,
+			   1, vol_ctl_tlv),
+	SOC_SINGLE("Hard Clip Switch", MT6660_REG_HCLIP_CTRL, 8, 1, 0),
+	SOC_SINGLE("Clip Switch", MT6660_REG_SPS_CTRL, 0, 1, 0),
+	SOC_SINGLE("Boost Mode", MT6660_REG_BST_CTRL, 0, 3, 0),
+	SOC_SINGLE("DRE Switch", MT6660_REG_DRE_CTRL, 0, 1, 0),
+	SOC_SINGLE("DC Protect Switch",	MT6660_REG_DC_PROTECT_CTRL, 3, 1, 0),
+	SOC_SINGLE("Data Output Left Channel Selection",
+		   MT6660_REG_DATAO_SEL, 3, 7, 0),
+	SOC_SINGLE("Data Output Right Channel Selection",
+		   MT6660_REG_DATAO_SEL, 0, 7, 0),
+	SOC_SINGLE_EXT("T0 SEL", MT6660_REG_CALI_T0, 0, 7, 0,
+		       snd_soc_get_volsw, NULL),
+	SOC_SINGLE_EXT("Chip Rev", MT6660_REG_DEVID, 8, 15, 0,
+		       mt6660_component_get_volsw, NULL),
+};
+
+static int _mt6660_chip_power_on(struct mt6660_chip *chip, int on_off)
+{
+	return regmap_write_bits(chip->regmap, MT6660_REG_SYSTEM_CTRL,
+				 0x01, on_off ? 0x00 : 0x01);
+}
+
+static int mt6660_component_probe(struct snd_soc_component *component)
+{
+	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
+
+	dev_dbg(component->dev, "%s\n", __func__);
+	snd_soc_component_init_regmap(component, chip->regmap);
+
+	return 0;
+}
+
+static void mt6660_component_remove(struct snd_soc_component *component)
+{
+	dev_dbg(component->dev, "%s\n", __func__);
+	snd_soc_component_exit_regmap(component);
+}
+
+static const struct snd_soc_component_driver mt6660_component_driver = {
+	.probe = mt6660_component_probe,
+	.remove = mt6660_component_remove,
+
+	.controls = mt6660_component_snd_controls,
+	.num_controls = ARRAY_SIZE(mt6660_component_snd_controls),
+	.dapm_widgets = mt6660_component_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(mt6660_component_dapm_widgets),
+	.dapm_routes = mt6660_component_dapm_routes,
+	.num_dapm_routes = ARRAY_SIZE(mt6660_component_dapm_routes),
+
+	.idle_bias_on = false, /* idle_bias_off = true */
+};
+
+static int mt6660_component_aif_hw_params(struct snd_pcm_substream *substream,
+	struct snd_pcm_hw_params *hw_params, struct snd_soc_dai *dai)
+{
+	int word_len = params_physical_width(hw_params);
+	int aud_bit = params_width(hw_params);
+	u16 reg_data = 0;
+	int ret;
+
+	dev_dbg(dai->dev, "%s: ++\n", __func__);
+	dev_dbg(dai->dev, "format: 0x%08x\n", params_format(hw_params));
+	dev_dbg(dai->dev, "rate: 0x%08x\n", params_rate(hw_params));
+	dev_dbg(dai->dev, "word_len: %d, aud_bit: %d\n", word_len, aud_bit);
+	if (word_len > 32 || word_len < 16) {
+		dev_err(dai->dev, "not supported word length\n");
+		return -ENOTSUPP;
+	}
+	switch (aud_bit) {
+	case 16:
+		reg_data = 3;
+		break;
+	case 18:
+		reg_data = 2;
+		break;
+	case 20:
+		reg_data = 1;
+		break;
+	case 24:
+	case 32:
+		reg_data = 0;
+		break;
+	default:
+		return -ENOTSUPP;
+	}
+	ret = snd_soc_component_update_bits(dai->component,
+		MT6660_REG_SERIAL_CFG1, 0xc0, (reg_data << 6));
+	if (ret < 0) {
+		dev_err(dai->dev, "config aud bit fail\n");
+		return ret;
+	}
+	ret = snd_soc_component_update_bits(dai->component,
+		MT6660_REG_TDM_CFG3, 0x3f0, word_len << 4);
+	if (ret < 0) {
+		dev_err(dai->dev, "config word len fail\n");
+		return ret;
+	}
+	dev_dbg(dai->dev, "%s: --\n", __func__);
+	return 0;
+}
+
+static const struct snd_soc_dai_ops mt6660_component_aif_ops = {
+	.hw_params = mt6660_component_aif_hw_params,
+};
+
+#define STUB_RATES	SNDRV_PCM_RATE_8000_192000
+#define STUB_FORMATS	(SNDRV_PCM_FMTBIT_S16_LE | \
+			SNDRV_PCM_FMTBIT_U16_LE | \
+			SNDRV_PCM_FMTBIT_S24_LE | \
+			SNDRV_PCM_FMTBIT_U24_LE | \
+			SNDRV_PCM_FMTBIT_S32_LE | \
+			SNDRV_PCM_FMTBIT_U32_LE)
+
+static struct snd_soc_dai_driver mt6660_codec_dai = {
+	.name = "mt6660-aif",
+	.playback = {
+		.stream_name	= "aif_playback",
+		.channels_min	= 1,
+		.channels_max	= 2,
+		.rates		= STUB_RATES,
+		.formats	= STUB_FORMATS,
+	},
+	.capture = {
+		.stream_name	= "aif_capture",
+		.channels_min	= 1,
+		.channels_max	= 2,
+		.rates = STUB_RATES,
+		.formats = STUB_FORMATS,
+	},
+	/* dai properties */
+	.symmetric_rates = 1,
+	.symmetric_channels = 1,
+	.symmetric_samplebits = 1,
+	/* dai operations */
+	.ops = &mt6660_component_aif_ops,
+};
+
+static int _mt6660_chip_id_check(struct mt6660_chip *chip)
+{
+	int ret;
+	unsigned int val;
+
+	ret = regmap_read(chip->regmap, MT6660_REG_DEVID, &val);
+	if (ret < 0)
+		return ret;
+	val &= 0x0ff0;
+	if (val != 0x00e0 && val != 0x01e0) {
+		dev_err(chip->dev, "%s id(%x) not match\n", __func__, val);
+		return -ENODEV;
+	}
+	return 0;
+}
+
+static int _mt6660_chip_sw_reset(struct mt6660_chip *chip)
+{
+	int ret;
+
+	/* turn on main pll first, then trigger reset */
+	ret = regmap_write(chip->regmap, MT6660_REG_SYSTEM_CTRL, 0x00);
+	if (ret < 0)
+		return ret;
+	ret = regmap_write(chip->regmap, MT6660_REG_SYSTEM_CTRL, 0x80);
+	if (ret < 0)
+		return ret;
+	msleep(30);
+	return 0;
+}
+
+static int _mt6660_read_chip_revision(struct mt6660_chip *chip)
+{
+	int ret;
+	unsigned int val;
+
+	ret = regmap_read(chip->regmap, MT6660_REG_DEVID, &val);
+	if (ret < 0) {
+		dev_err(chip->dev, "get chip revision fail\n");
+		return ret;
+	}
+	chip->chip_rev = val&0xff;
+	dev_info(chip->dev, "%s chip_rev = %x\n", __func__, chip->chip_rev);
+	return 0;
+}
+
+static int mt6660_i2c_probe(struct i2c_client *client,
+			    const struct i2c_device_id *id)
+{
+	struct mt6660_chip *chip = NULL;
+	int ret;
+
+	dev_dbg(&client->dev, "%s\n", __func__);
+	chip = devm_kzalloc(&client->dev, sizeof(*chip), GFP_KERNEL);
+	if (!chip)
+		return -ENOMEM;
+	chip->i2c = client;
+	chip->dev = &client->dev;
+	mutex_init(&chip->io_lock);
+	i2c_set_clientdata(client, chip);
+
+	chip->regmap = devm_regmap_init(&client->dev,
+		NULL, chip, &mt6660_regmap_config);
+	if (IS_ERR(chip->regmap)) {
+		ret = PTR_ERR(chip->regmap);
+		dev_err(&client->dev, "failed to initialise regmap: %d\n", ret);
+		return ret;
+	}
+
+	/* chip reset first */
+	ret = _mt6660_chip_sw_reset(chip);
+	if (ret < 0) {
+		dev_err(chip->dev, "chip reset fail\n");
+		goto probe_fail;
+	}
+	/* chip power on */
+	ret = _mt6660_chip_power_on(chip, 1);
+	if (ret < 0) {
+		dev_err(chip->dev, "chip power on 2 fail\n");
+		goto probe_fail;
+	}
+	/* chip devid check */
+	ret = _mt6660_chip_id_check(chip);
+	if (ret < 0) {
+		dev_err(chip->dev, "chip id check fail\n");
+		goto probe_fail;
+	}
+	/* chip revision get */
+	ret = _mt6660_read_chip_revision(chip);
+	if (ret < 0) {
+		dev_err(chip->dev, "read chip revision fail\n");
+		goto probe_fail;
+	}
+	pm_runtime_set_active(chip->dev);
+	pm_runtime_enable(chip->dev);
+
+	ret = devm_snd_soc_register_component(chip->dev,
+					       &mt6660_component_driver,
+					       &mt6660_codec_dai, 1);
+	return ret;
+probe_fail:
+	_mt6660_chip_power_on(chip, 0);
+	mutex_destroy(&chip->io_lock);
+	return ret;
+}
+
+static int mt6660_i2c_remove(struct i2c_client *client)
+{
+	struct mt6660_chip *chip = i2c_get_clientdata(client);
+
+	pm_runtime_disable(chip->dev);
+	pm_runtime_set_suspended(chip->dev);
+	mutex_destroy(&chip->io_lock);
+	return 0;
+}
+
+static int __maybe_unused mt6660_i2c_runtime_suspend(struct device *dev)
+{
+	struct mt6660_chip *chip = dev_get_drvdata(dev);
+
+	dev_dbg(dev, "enter low power mode\n");
+	return regmap_update_bits(chip->regmap,
+		MT6660_REG_SYSTEM_CTRL, 0x01, 0x01);
+}
+
+static int __maybe_unused mt6660_i2c_runtime_resume(struct device *dev)
+{
+	struct mt6660_chip *chip = dev_get_drvdata(dev);
+
+	dev_dbg(dev, "exit low power mode\n");
+	return regmap_update_bits(chip->regmap,
+		MT6660_REG_SYSTEM_CTRL, 0x01, 0x00);
+}
+
+static const struct dev_pm_ops mt6660_dev_pm_ops = {
+	SET_RUNTIME_PM_OPS(mt6660_i2c_runtime_suspend,
+			   mt6660_i2c_runtime_resume, NULL)
+};
+
+static const struct of_device_id __maybe_unused mt6660_of_id[] = {
+	{ .compatible = "mediatek,mt6660",},
+	{},
+};
+MODULE_DEVICE_TABLE(of, mt6660_of_id);
+
+static const struct i2c_device_id mt6660_i2c_id[] = {
+	{"mt6660", 0 },
+	{},
+};
+MODULE_DEVICE_TABLE(i2c, mt6660_i2c_id);
+
+static struct i2c_driver mt6660_i2c_driver = {
+	.driver = {
+		.name = "mt6660",
+		.of_match_table = of_match_ptr(mt6660_of_id),
+		.pm = &mt6660_dev_pm_ops,
+	},
+	.probe = mt6660_i2c_probe,
+	.remove = mt6660_i2c_remove,
+	.id_table = mt6660_i2c_id,
+};
+module_i2c_driver(mt6660_i2c_driver);
+
+MODULE_AUTHOR("Jeff Chang <jeff_chang@richtek.com>");
+MODULE_DESCRIPTION("MT6660 SPKAMP Driver");
+MODULE_LICENSE("GPL");
+MODULE_VERSION("1.0.7_G");
diff --git a/sound/soc/codecs/mt6660.h b/sound/soc/codecs/mt6660.h
new file mode 100644
index 0000000..054a3c5
--- /dev/null
+++ b/sound/soc/codecs/mt6660.h
@@ -0,0 +1,77 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef __SND_SOC_MT6660_H
+#define __SND_SOC_MT6660_H
+
+#include <linux/mutex.h>
+#include <linux/regmap.h>
+
+#pragma pack(push, 1)
+struct mt6660_platform_data {
+	u8 init_setting_num;
+	u32 *init_setting_addr;
+	u32 *init_setting_mask;
+	u32 *init_setting_val;
+};
+
+struct mt6660_chip {
+	struct i2c_client *i2c;
+	struct device *dev;
+	struct platform_device *param_dev;
+	struct mt6660_platform_data plat_data;
+	struct mutex io_lock;
+	struct regmap *regmap;
+	u16 chip_rev;
+};
+#pragma pack(pop)
+
+#define MT6660_REG_DEVID		(0x00)
+#define MT6660_REG_SYSTEM_CTRL		(0x03)
+#define MT6660_REG_IRQ_STATUS1		(0x05)
+#define MT6660_REG_ADDA_CLOCK		(0x07)
+#define MT6660_REG_SERIAL_CFG1		(0x10)
+#define MT6660_REG_DATAO_SEL		(0x12)
+#define MT6660_REG_TDM_CFG3		(0x15)
+#define MT6660_REG_HPF_CTRL		(0x18)
+#define MT6660_REG_HPF1_COEF		(0x1A)
+#define MT6660_REG_HPF2_COEF		(0x1B)
+#define MT6660_REG_PATH_BYPASS		(0x1E)
+#define MT6660_REG_WDT_CTRL		(0x20)
+#define MT6660_REG_HCLIP_CTRL		(0x24)
+#define MT6660_REG_VOL_CTRL		(0x29)
+#define MT6660_REG_SPS_CTRL		(0x30)
+#define MT6660_REG_SIGMAX		(0x33)
+#define MT6660_REG_CALI_T0		(0x3F)
+#define MT6660_REG_BST_CTRL		(0x40)
+#define MT6660_REG_PROTECTION_CFG	(0x46)
+#define MT6660_REG_DA_GAIN		(0x4c)
+#define MT6660_REG_AUDIO_IN2_SEL	(0x50)
+#define MT6660_REG_SIG_GAIN		(0x51)
+#define MT6660_REG_PLL_CFG1		(0x60)
+#define MT6660_REG_DRE_CTRL		(0x68)
+#define MT6660_REG_DRE_THDMODE		(0x69)
+#define MT6660_REG_DRE_CORASE		(0x6B)
+#define MT6660_REG_PWM_CTRL		(0x70)
+#define MT6660_REG_DC_PROTECT_CTRL	(0x74)
+#define MT6660_REG_ADC_USB_MODE		(0x7c)
+#define MT6660_REG_INTERNAL_CFG		(0x88)
+#define MT6660_REG_RESV0		(0x98)
+#define MT6660_REG_RESV1		(0x99)
+#define MT6660_REG_RESV2		(0x9A)
+#define MT6660_REG_RESV3		(0x9B)
+#define MT6660_REG_RESV6		(0xA2)
+#define MT6660_REG_RESV7		(0xA3)
+#define MT6660_REG_RESV10		(0xB0)
+#define MT6660_REG_RESV11		(0xB1)
+#define MT6660_REG_RESV16		(0xB6)
+#define MT6660_REG_RESV17		(0xB7)
+#define MT6660_REG_RESV19		(0xB9)
+#define MT6660_REG_RESV21		(0xBB)
+#define MT6660_REG_RESV23		(0xBD)
+#define MT6660_REG_RESV31		(0xD3)
+#define MT6660_REG_RESV40		(0xE0)
+
+#endif /* __SND_SOC_MT6660_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
