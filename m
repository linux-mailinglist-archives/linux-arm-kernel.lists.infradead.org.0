Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B43FA6241
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0hTtgoku3MSm/7XqOfOoXFFgyk7T9HxYisT2feV931g=; b=k6t
	cgd6wGIk0er3STbm7J9IBiOIlNSOL1bTcbwu1m0/RnTgkwxFSUha7qL5evkv+5u3UVSzOshQcIelc
	Kq9IqiHssRexGQAexq9JdpTPaDSLxkT8oNeT/JdjYtA4qfAuPdLzOFEzKZatkuEgRZDjNE8jkY/4T
	TEmhzk1vm9sfLE9M1MPwTt5AJVK90TVbFxb53L7tnrODYshkBEdIN2vF8FNpCyhMHi2bYc/RsA7yT
	e3Sd7WWhyvdtqX0AqbkjiR2i9Is8uO5sMFzdA+OqDwvN1cKH+sLI2YdV7YHeOaQMDnw8Q/hMCvuly
	+PU9lVl1d3mFObljGYmryTSle6R/mwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52xK-0006zQ-5M; Tue, 03 Sep 2019 07:10:23 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52vW-0006wp-NE; Tue, 03 Sep 2019 07:08:49 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so8599967pgi.6;
 Tue, 03 Sep 2019 00:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=syRYWQf2UZWn6Dyye/2ruofviJP/3goJnhsAYeP99GY=;
 b=iiHHOsVI8FqaiCOwUEe+sIuuluIsmTAA6UOIjenxCfkdMzI0VsJcOjPbRH15hG5qX6
 SSRrVY4jvIxGZyvNLlTycNcU2DmLPEG6NT444x61HGMkI3vso1C2GjpqqKb2jx+pqrAO
 iPpZ+qVlrTIicySoI2YnqBW8qiBk5o1a5W3Ppq3J7qBPgc1CeL9fS15a9nHqTRFxcbW1
 97GXIAwaQdDV8J+8MJmNupCCvd4Joo1sidCYj3jh3ngvGxVML/mqOYj/q9AWIMmPJNJ2
 I2Js0zduZMcdBD1jgoc7u9gvYa3uHBlcJGJlwu9Y4FHCKE9vYPjUjK1ksWPh/A8zedaO
 8+yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=syRYWQf2UZWn6Dyye/2ruofviJP/3goJnhsAYeP99GY=;
 b=G2/sVxptAROhR7WqBM9T9a/H7qXHOK8cAPXZCFhvm4gXw4xWT6A+WbLD0wfac2gT98
 5IMJTWYHDZkrEvo2oMaLJWGkh2PPeAzTr0xWZx1m2FnEyXWpiFMZBXmKAhUTA0R3OCeB
 maUn8BLDTdggy+8CxZ3EtN4WlITKc7H/lZd3gS+XmQ8qAa6RH1P7wau2OilPc2kWJRNh
 YU4yQ8T8XRHRZcf94N4PnJazOtz2BPwg0RGdzh2t1f0rGIgE4IbueaDVKq9bLTCnHkdm
 QDH36P58oF7YMk4swJRC7vzwJZP6lLw9tRBReZMBQ3h1niR2axHhaK31aNOSh5BcFUoj
 6MfA==
X-Gm-Message-State: APjAAAXxaLXUKWNhUAfCPHgTxdGwQ+/Mv9Hp5OJK3Z7b+RIUeW8MaLKL
 x9Rp/vqLebOJrV6H6lNlDZ8=
X-Google-Smtp-Source: APXvYqzeB7t3CDa7SCOLiFw8jkFu0qyYAwXXaP5aUiE01pi0FWz8ApqOemwEzGGMuEQjxBLcMt3/iw==
X-Received: by 2002:a62:ae17:: with SMTP id q23mr7709362pff.62.1567494508609; 
 Tue, 03 Sep 2019 00:08:28 -0700 (PDT)
Received: from localhost.localdomain ([101.12.227.136])
 by smtp.gmail.com with ESMTPSA id v22sm13832471pgk.69.2019.09.03.00.08.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 03 Sep 2019 00:08:28 -0700 (PDT)
From: richtek.jeff.chang@gmail.com
To: lgirdwood@gmail.com
Subject: [PATCH] [MT6660] Mediatek Smart Amplifier Driver
Date: Tue,  3 Sep 2019 15:08:21 +0800
Message-Id: <1567494501-3427-1-git-send-email-richtek.jeff.chang@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_000832_313746_0D965B9F 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richtek.jeff.chang[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 perex@perex.cz, Richtek Jeff Chang <richtek.jeff.chang@gmail.com>,
 broonie@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Richtek Jeff Chang <richtek.jeff.chang@gmail.com>

Signed-off-by: Richtek Jeff Chang <richtek.jeff.chang@gmail.com>
---
 sound/soc/codecs/Kconfig  |  13 +
 sound/soc/codecs/Makefile |   2 +
 sound/soc/codecs/mt6660.c | 802 ++++++++++++++++++++++++++++++++++++++++++++++
 sound/soc/codecs/mt6660.h |  68 ++++
 4 files changed, 885 insertions(+)
 create mode 100644 sound/soc/codecs/mt6660.c
 create mode 100644 sound/soc/codecs/mt6660.h

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index 9f89a53..3407436 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -120,6 +120,7 @@ config SND_SOC_ALL_CODECS
 	select SND_SOC_ML26124 if I2C
 	select SND_SOC_MT6351 if MTK_PMIC_WRAP
 	select SND_SOC_MT6358 if MTK_PMIC_WRAP
+	select SND_SOC_MT6660 if I2C
 	select SND_SOC_NAU8540 if I2C
 	select SND_SOC_NAU8810 if I2C
 	select SND_SOC_NAU8822 if I2C
@@ -1444,6 +1445,18 @@ config SND_SOC_MT6358
 	  Enable support for the platform which uses MT6358 as
 	  external codec device.
 
+config SND_SOC_MT6660
+	tristate "MediaTek MT6660 Speaker amplifier"
+        depends on I2C
+	select CRC32
+	select CRYPTO_SHA256
+	select CRYPTO_RSA
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
index 5b4bb8c..e6a8054 100644
--- a/sound/soc/codecs/Makefile
+++ b/sound/soc/codecs/Makefile
@@ -117,6 +117,7 @@ snd-soc-msm8916-analog-objs := msm8916-wcd-analog.o
 snd-soc-msm8916-digital-objs := msm8916-wcd-digital.o
 snd-soc-mt6351-objs := mt6351.o
 snd-soc-mt6358-objs := mt6358.o
+snd-soc-mt6660-objs := mt6660.o
 snd-soc-nau8540-objs := nau8540.o
 snd-soc-nau8810-objs := nau8810.o
 snd-soc-nau8822-objs := nau8822.o
@@ -398,6 +399,7 @@ obj-$(CONFIG_SND_SOC_MSM8916_WCD_ANALOG) +=snd-soc-msm8916-analog.o
 obj-$(CONFIG_SND_SOC_MSM8916_WCD_DIGITAL) +=snd-soc-msm8916-digital.o
 obj-$(CONFIG_SND_SOC_MT6351)	+= snd-soc-mt6351.o
 obj-$(CONFIG_SND_SOC_MT6358)	+= snd-soc-mt6358.o
+obj-$(CONFIG_SND_SOC_MT6660)	+= snd-soc-mt6660.o
 obj-$(CONFIG_SND_SOC_NAU8540)   += snd-soc-nau8540.o
 obj-$(CONFIG_SND_SOC_NAU8810)   += snd-soc-nau8810.o
 obj-$(CONFIG_SND_SOC_NAU8822)   += snd-soc-nau8822.o
diff --git a/sound/soc/codecs/mt6660.c b/sound/soc/codecs/mt6660.c
new file mode 100644
index 0000000..b82cf03
--- /dev/null
+++ b/sound/soc/codecs/mt6660.c
@@ -0,0 +1,802 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/version.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
+#include <linux/delay.h>
+#include <sound/soc.h>
+#include <sound/tlv.h>
+#include <sound/pcm_params.h>
+#include <linux/debugfs.h>
+
+#include "mt6660.h"
+
+union mt6660_multi_byte_data {
+	u32 data_u32;
+	u16 data_u16;
+	u8 data_u8;
+	u8 data[4];
+};
+
+struct codec_reg_val {
+	u32 addr;
+	u32 mask;
+	u32 data;
+};
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
+	{ MT6660_REG_DEVID, 2},
+	{ MT6660_REG_TDM_CFG3, 2},
+	{ MT6660_REG_HCLIP_CTRL, 2},
+	{ MT6660_REG_DA_GAIN, 2},
+};
+
+static int mt6660_get_reg_size(uint32_t addr)
+{
+	int i = 0;
+
+	for (i = 0; i < ARRAY_SIZE(mt6660_reg_size_table); i++) {
+		if (mt6660_reg_size_table[i].addr == addr)
+			return mt6660_reg_size_table[i].size;
+	}
+	return 1;
+}
+
+static int32_t mt6660_i2c_update_bits(struct mt6660_chip *chip,
+	uint32_t addr, uint32_t mask, uint32_t data)
+{
+	int ret = 0;
+	uint32_t value;
+	int size = mt6660_get_reg_size(addr);
+	union mt6660_multi_byte_data mdata;
+
+	memcpy(&mdata, &data, sizeof(uint32_t));
+
+	mutex_lock(&chip->io_lock);
+	ret = i2c_smbus_read_i2c_block_data(
+		chip->i2c, addr, size, (u8 *)&value);
+	if (ret < 0) {
+		mutex_unlock(&chip->io_lock);
+		return ret;
+	}
+	switch (size) {
+	case 1:
+		value &= ~mask;
+		value |= (mdata.data_u8 & mask);
+		break;
+	case 2:
+		value = be16_to_cpu(value);
+		value &= ~mask;
+		value |= (mdata.data_u16 & mask);
+		value = be16_to_cpu(value);
+		break;
+	case 4:
+		value = be32_to_cpu(value);
+		value &= ~mask;
+		value |= (mdata.data_u32 & mask);
+		value = be32_to_cpu(value);
+		break;
+	default:
+		dev_err(chip->dev, "%s Invalid bytes\n", __func__);
+		break;
+	}
+
+	ret = i2c_smbus_write_i2c_block_data(
+		chip->i2c, addr, size, (u8 *)&value);
+	if (ret < 0) {
+		mutex_unlock(&chip->io_lock);
+		return ret;
+	}
+	mutex_unlock(&chip->io_lock);
+
+	return 0;
+}
+
+static int mt6660_i2c_read(struct mt6660_chip *chip, unsigned int reg)
+{
+	int size = mt6660_get_reg_size(reg);
+	int i = 0, ret = 0;
+	u8 data[4] = {0};
+	u32 reg_data = 0;
+
+	ret = i2c_smbus_read_i2c_block_data(chip->i2c, reg, size, data);
+	if (ret < 0)
+		return ret;
+	for (i = 0; i < size; i++) {
+		reg_data <<= 8;
+		reg_data |= data[i];
+	}
+	return reg_data;
+}
+
+static unsigned int mt6660_component_io_read(
+	struct snd_soc_component *component, unsigned int reg)
+{
+	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
+
+	return mt6660_i2c_read(chip, reg);
+}
+
+static int mt6660_component_io_write(struct snd_soc_component *component,
+	unsigned int reg, unsigned int data)
+{
+	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
+	int size = mt6660_get_reg_size(reg);
+	u8 reg_data[4] = {0};
+	int i = 0;
+
+	for (i = 0; i < size; i++)
+		reg_data[size - i - 1] = (data >> (8 * i)) & 0xff;
+
+	return i2c_smbus_write_i2c_block_data(chip->i2c, reg, size, reg_data);
+}
+
+static const int mt6660_dump_table[] = {
+	MT6660_REG_DEVID,
+	MT6660_REG_SYSTEM_CTRL,
+	MT6660_REG_IRQ_STATUS1,
+	MT6660_REG_SERIAL_CFG1,
+	MT6660_REG_DATAO_SEL,
+	MT6660_REG_TDM_CFG3,
+	MT6660_REG_HPF_CTRL,
+	MT6660_REG_HPF1_COEF,
+	MT6660_REG_HPF2_COEF,
+	MT6660_REG_PATH_BYPASS,
+	MT6660_REG_WDT_CTRL,
+	MT6660_REG_HCLIP_CTRL,
+	MT6660_REG_VOL_CTRL,
+	MT6660_REG_SPS_CTRL,
+	MT6660_REG_SIGMAX,
+	MT6660_REG_CALI_T0,
+	MT6660_REG_BST_CTRL,
+	MT6660_REG_PROTECTION_CFG,
+	MT6660_REG_DA_GAIN,
+	MT6660_REG_AUDIO_IN2_SEL,
+	MT6660_REG_SIG_GAIN,
+	MT6660_REG_PLL_CFG1,
+	MT6660_REG_DRE_CTRL,
+	MT6660_REG_DRE_THDMODE,
+	MT6660_REG_DRE_CORASE,
+	MT6660_REG_PWM_CTRL,
+	MT6660_REG_DC_PROTECT_CTRL,
+	MT6660_REG_ADC_USB_MODE,
+	MT6660_REG_INTERNAL_CFG,
+	MT6660_REG_RESV0,
+	MT6660_REG_RESV1,
+	MT6660_REG_RESV2,
+	MT6660_REG_RESV3,
+	MT6660_REG_RESV7,
+	MT6660_REG_RESV10,
+	MT6660_REG_RESV11,
+	MT6660_REG_RESV16,
+	MT6660_REG_RESV17,
+	MT6660_REG_RESV19,
+	MT6660_REG_RESV21,
+	MT6660_REG_RESV23,
+	MT6660_REG_RESV31,
+	MT6660_REG_RESV40,
+};
+
+static const struct codec_reg_val e4_reg_inits[] = {
+	{ MT6660_REG_WDT_CTRL, 0x80, 0x00 },
+	{ MT6660_REG_SPS_CTRL, 0x01, 0x01 },
+	{ MT6660_REG_AUDIO_IN2_SEL, 0x1c, 0x04 },
+	{ MT6660_REG_RESV11, 0x0c, 0x00 },
+	{ MT6660_REG_RESV31, 0x03, 0x03 },
+	{ MT6660_REG_RESV40, 0x01, 0x00 },
+	{ MT6660_REG_RESV0, 0x44, 0x04 },
+	{ MT6660_REG_RESV19, 0xff, 0x82 },
+	{ MT6660_REG_RESV17, 0x7777, 0x7273 },
+	{ MT6660_REG_RESV16, 0x07, 0x03 },
+	{ MT6660_REG_DRE_CORASE, 0xe0, 0x20 },
+	{ MT6660_REG_ADDA_CLOCK, 0xff, 0x70 },
+	{ MT6660_REG_RESV21, 0xff, 0x20 },
+	{ MT6660_REG_DRE_THDMODE, 0xff, 0x40 },
+	{ MT6660_REG_RESV23, 0xffff, 0x17f8 },
+	{ MT6660_REG_PWM_CTRL, 0xff, 0x15 },
+	{ MT6660_REG_ADC_USB_MODE, 0xff, 0x00 },
+	{ MT6660_REG_PROTECTION_CFG, 0xff, 0x1d },
+	{ MT6660_REG_HPF1_COEF, 0xffffffff, 0x7fdb7ffe },
+	{ MT6660_REG_HPF2_COEF, 0xffffffff, 0x7fdb7ffe },
+	{ MT6660_REG_SIG_GAIN, 0xff, 0x58 },
+	{ MT6660_REG_RESV6, 0xff, 0xce },
+	{ MT6660_REG_SIGMAX, 0xffff, 0x7fff },
+	{ MT6660_REG_DA_GAIN, 0xffff, 0x0116 },
+	{ MT6660_REG_TDM_CFG3, 0x1800, 0x0800 },
+	{ MT6660_REG_DRE_CTRL, 0x1f, 0x07 },
+};
+
+static int mt6660_i2c_init_setting(struct mt6660_chip *chip)
+{
+	int i, len, ret;
+	const struct codec_reg_val *init_table;
+
+	init_table = e4_reg_inits;
+	len = ARRAY_SIZE(e4_reg_inits);
+
+	for (i = 0; i < len; i++) {
+		ret = mt6660_i2c_update_bits(chip, init_table[i].addr,
+				init_table[i].mask, init_table[i].data);
+		if (ret < 0)
+			return ret;
+	}
+	return 0;
+}
+
+static int mt6660_chip_power_on(
+	struct snd_soc_component *component, int on_off)
+{
+	struct mt6660_chip *chip = (struct mt6660_chip *)
+		snd_soc_component_get_drvdata(component);
+	int ret = 0;
+	unsigned int val;
+
+	dev_dbg(component->dev, "%s: on_off = %d\n", __func__, on_off);
+	mutex_lock(&chip->var_lock);
+	if (on_off) {
+		if (chip->pwr_cnt == 0) {
+			ret = mt6660_i2c_update_bits(chip,
+				MT6660_REG_SYSTEM_CTRL, 0x01, 0x00);
+			val = mt6660_i2c_read(chip, MT6660_REG_IRQ_STATUS1);
+			dev_info(chip->dev,
+				"%s reg0x05 = 0x%x\n", __func__, val);
+		}
+		chip->pwr_cnt++;
+	} else {
+		chip->pwr_cnt--;
+		if (chip->pwr_cnt == 0) {
+			ret = mt6660_i2c_update_bits(chip,
+				MT6660_REG_SYSTEM_CTRL, 0x01, 0xff);
+		}
+		if (chip->pwr_cnt < 0) {
+			dev_warn(chip->dev, "not paired on/off\n");
+			chip->pwr_cnt = 0;
+		}
+	}
+	mutex_unlock(&chip->var_lock);
+	if (ret < 0)
+		pr_err("%s ret = %d\n", __func__, ret);
+	return ret;
+}
+
+static int mt6660_component_set_bias_level(struct snd_soc_component *component,
+	enum snd_soc_bias_level level)
+{
+	struct snd_soc_dapm_context *dapm =
+		snd_soc_component_get_dapm(component);
+	int ret;
+	unsigned int val;
+	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
+
+	if (dapm->bias_level == level) {
+		dev_warn(component->dev, "%s: repeat level change\n", __func__);
+		return 0;
+	}
+	switch (level) {
+	case SND_SOC_BIAS_ON:
+	case SND_SOC_BIAS_PREPARE:
+		break;
+	case SND_SOC_BIAS_STANDBY:
+		if (dapm->bias_level != SND_SOC_BIAS_OFF)
+			break;
+		dev_dbg(component->dev, "exit low power mode\n");
+		ret = mt6660_chip_power_on(component, 1);
+		if (ret < 0) {
+			dev_err(component->dev, "power on fail\n");
+			return ret;
+		}
+		break;
+	case SND_SOC_BIAS_OFF:
+		dev_dbg(component->dev, "enter low power mode\n");
+		val = mt6660_i2c_read(chip, MT6660_REG_IRQ_STATUS1);
+		dev_info(component->dev,
+			"%s reg0x05 = 0x%x\n", __func__, val);
+		ret = mt6660_chip_power_on(component, 0);
+		if (ret < 0) {
+			dev_err(component->dev, "power off fail\n");
+			return ret;
+		}
+		break;
+	default:
+		return -EINVAL;
+	}
+	dapm->bias_level = level;
+	dev_dbg(component->dev, "c bias_level = %d\n", level);
+	return 0;
+}
+
+static int mt6660_component_probe(struct snd_soc_component *component)
+{
+	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
+	int ret = 0;
+
+	ret = mt6660_component_set_bias_level(component, SND_SOC_BIAS_STANDBY);
+	if (ret < 0) {
+		dev_err(component->dev, "config bias standby fail\n");
+		return ret;
+	}
+
+	ret = mt6660_component_set_bias_level(component, SND_SOC_BIAS_OFF);
+	if (ret < 0) {
+		dev_err(component->dev, "config bias off fail\n");
+		return ret;
+	}
+	chip->component = component;
+	return 0;
+}
+
+static void mt6660_component_remove(struct snd_soc_component *component)
+{
+	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
+
+	dev_dbg(component->dev, "%s++\n", __func__);
+	chip->component = NULL;
+	dev_dbg(component->dev, "%s--\n", __func__);
+}
+
+static int mt6660_codec_dac_event(struct snd_soc_dapm_widget *w,
+	struct snd_kcontrol *kcontrol, int event)
+{
+	switch (event) {
+	case SND_SOC_DAPM_POST_PMU:
+		usleep_range(1000, 1100);
+		break;
+	}
+	return 0;
+}
+
+static int mt6660_codec_classd_event(struct snd_soc_dapm_widget *w,
+	struct snd_kcontrol *kcontrol, int event)
+{
+	struct snd_soc_component *component =
+		snd_soc_dapm_to_component(w->dapm);
+	int ret = 0;
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
+		break;
+	case SND_SOC_DAPM_PRE_PMD:
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
+	SND_SOC_DAPM_SPK("SPK", NULL),
+};
+
+static const struct snd_soc_dapm_route mt6660_component_dapm_routes[] = {
+	{ "DAC", NULL, "aif_playback"},
+	{ "PGA", NULL, "DAC"},
+	{ "ClassD", NULL, "PGA"},
+	{ "SPK", NULL, "ClassD"},
+	{ "VI ADC", NULL, "ClassD"},
+	{ "aif_capture", NULL, "VI ADC"},
+};
+
+static int mt6660_component_put_volsw(struct snd_kcontrol *kcontrol,
+				  struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *component =
+		snd_soc_kcontrol_component(kcontrol);
+	int ret, put_ret = 0;
+
+	ret = mt6660_chip_power_on(component, 1);
+	if (ret < 0)
+		dev_err(component->dev, "%s: pwr on fail\n", __func__);
+	put_ret = snd_soc_put_volsw(kcontrol, ucontrol);
+	if (ret < 0)
+		return ret;
+	ret = mt6660_chip_power_on(component, 0);
+	if (ret < 0)
+		dev_err(component->dev, "%s: pwr off fail\n", __func__);
+	return put_ret;
+}
+
+static int mt6660_component_get_volsw(struct snd_kcontrol *kcontrol,
+				  struct snd_ctl_elem_value *ucontrol)
+{
+	struct snd_soc_component *component =
+		snd_soc_kcontrol_component(kcontrol);
+	struct mt6660_chip *chip = (struct mt6660_chip *)
+		snd_soc_component_get_drvdata(component);
+	int ret = -EINVAL;
+
+	if (!strcmp(kcontrol->id.name, "Chip_Rev")) {
+		ucontrol->value.integer.value[0] = chip->chip_rev & 0x0f;
+		ret = 0;
+	}
+	return ret;
+}
+
+static const DECLARE_TLV_DB_SCALE(vol_ctl_tlv, -1155, 5, 0);
+
+static const struct snd_kcontrol_new mt6660_component_snd_controls[] = {
+	SOC_SINGLE_EXT_TLV("Volume_Ctrl", MT6660_REG_VOL_CTRL, 0, 255,
+			   1, snd_soc_get_volsw, mt6660_component_put_volsw,
+			   vol_ctl_tlv),
+	SOC_SINGLE_EXT("WDT_Enable", MT6660_REG_WDT_CTRL, 7, 1, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("Hard_Clip_Enable", MT6660_REG_HCLIP_CTRL, 8, 1, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("Clip_Enable", MT6660_REG_SPS_CTRL, 0, 1, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("BoostMode", MT6660_REG_BST_CTRL, 0, 3, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("DRE_Enable", MT6660_REG_DRE_CTRL, 0, 1, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("DC_Protect_Enable",
+		MT6660_REG_DC_PROTECT_CTRL, 3, 1, 0,
+		snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("I2SLRS", MT6660_REG_DATAO_SEL, 6, 3, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("I2SDOLS", MT6660_REG_DATAO_SEL, 3, 7, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("I2SDORS", MT6660_REG_DATAO_SEL, 0, 7, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	/* for debug purpose */
+	SOC_SINGLE_EXT("HPF_AUD_IN_EN", MT6660_REG_HPF_CTRL, 0, 1, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("AUD_LOOP_BACK", MT6660_REG_PATH_BYPASS, 4, 1, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("Mute_Enable", MT6660_REG_SYSTEM_CTRL, 1, 1, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("CS_Comp_Disable", MT6660_REG_PATH_BYPASS, 2, 1, 0,
+		       snd_soc_get_volsw, mt6660_component_put_volsw),
+	SOC_SINGLE_EXT("T0_SEL", MT6660_REG_CALI_T0, 0, 7, 0,
+		       snd_soc_get_volsw, NULL),
+	SOC_SINGLE_EXT("Chip_Rev", SND_SOC_NOPM, 0, 16, 0,
+		       mt6660_component_get_volsw, NULL),
+};
+
+
+static const struct snd_soc_component_driver mt6660_component_driver = {
+	.probe = mt6660_component_probe,
+	.remove = mt6660_component_remove,
+
+	.read = mt6660_component_io_read,
+	.write = mt6660_component_io_write,
+
+	.controls = mt6660_component_snd_controls,
+	.num_controls = ARRAY_SIZE(mt6660_component_snd_controls),
+	.dapm_widgets = mt6660_component_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(mt6660_component_dapm_widgets),
+	.dapm_routes = mt6660_component_dapm_routes,
+	.num_dapm_routes = ARRAY_SIZE(mt6660_component_dapm_routes),
+
+	.set_bias_level = mt6660_component_set_bias_level,
+	.idle_bias_on = false, /* idle_bias_off = true */
+};
+
+static int mt6660_component_aif_startup(struct snd_pcm_substream *substream,
+	struct snd_soc_dai *dai)
+{
+	struct snd_soc_dapm_context *dapm =
+		snd_soc_component_get_dapm(dai->component);
+	int ret = 0;
+
+	dev_dbg(dai->dev, "%s\n", __func__);
+	if (dapm->bias_level == SND_SOC_BIAS_OFF)
+		ret = mt6660_component_set_bias_level(dai->component,
+						  SND_SOC_BIAS_STANDBY);
+	return ret;
+}
+
+static int mt6660_component_aif_hw_params(struct snd_pcm_substream *substream,
+	struct snd_pcm_hw_params *hw_params, struct snd_soc_dai *dai)
+{
+	int word_len = params_physical_width(hw_params);
+	int aud_bit = params_width(hw_params);
+	u16 reg_data = 0;
+	int ret = 0;
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
+	.startup = mt6660_component_aif_startup,
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
+static inline int mt6660_chip_id_check(struct i2c_client *i2c)
+{
+	u8 id[2] = {0};
+	int ret = 0;
+
+	i2c_smbus_write_byte_data(i2c, 0x03, 0x00);
+	ret = i2c_smbus_read_i2c_block_data(i2c, MT6660_REG_DEVID, 2, id);
+	if (ret < 0)
+		return ret;
+	ret = (id[0] << 8) + id[1];
+	ret &= 0x0ff0;
+	if (ret != 0x00e0 && ret != 0x01e0)
+		return -ENODEV;
+	i2c_smbus_write_byte_data(i2c, 0x03, 0x01);
+	return 0;
+}
+
+static inline int _mt6660_chip_sw_reset(struct mt6660_chip *chip)
+{
+	i2c_smbus_write_byte_data(chip->i2c, MT6660_REG_SYSTEM_CTRL, 0x80);
+	msleep(30);
+	return 0;
+}
+
+static inline int _mt6660_chip_power_on(struct mt6660_chip *chip, int on_off)
+{
+	u8 reg_data = 0;
+	int ret = 0;
+
+	ret = i2c_smbus_read_byte_data(chip->i2c, MT6660_REG_SYSTEM_CTRL);
+	if (ret < 0)
+		return ret;
+	reg_data = (u8)ret;
+	if (on_off)
+		reg_data &= (~0x01);
+	else
+		reg_data |= 0x01;
+	return i2c_smbus_write_byte_data(
+		chip->i2c, MT6660_REG_SYSTEM_CTRL, reg_data);
+}
+
+static inline int _mt6660_read_chip_revision(struct mt6660_chip *chip)
+{
+	u8 reg_data[2] = {0};
+	int ret = 0;
+
+	ret = i2c_smbus_read_i2c_block_data(
+		chip->i2c, MT6660_REG_DEVID, 2, reg_data);
+	if (ret < 0) {
+		dev_err(chip->dev, "get chip revision fail\n");
+		return ret;
+	}
+	chip->chip_rev = reg_data[1];
+	return 0;
+}
+
+int mt6660_i2c_probe(struct i2c_client *client, const struct i2c_device_id *id)
+{
+	struct mt6660_chip *chip = NULL;
+	int ret = 0;
+
+	ret = mt6660_chip_id_check(client);
+	if (ret < 0) {
+		dev_err(&client->dev, "chip id check fail\n");
+		return ret;
+	}
+	chip = devm_kzalloc(&client->dev, sizeof(*chip), GFP_KERNEL);
+	if (!chip)
+		return -ENOMEM;
+	chip->i2c = client;
+	chip->dev = &client->dev;
+	mutex_init(&chip->var_lock);
+	mutex_init(&chip->io_lock);
+	i2c_set_clientdata(client, chip);
+
+	/* chip power on */
+	ret = _mt6660_chip_power_on(chip, 1);
+	if (ret < 0) {
+		dev_err(chip->dev, "chip power on 1 fail\n");
+		goto probe_fail;
+	}
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
+	ret = _mt6660_read_chip_revision(chip);
+	if (ret < 0) {
+		dev_err(chip->dev, "read chip revision fail\n");
+		goto probe_fail;
+	}
+	ret = mt6660_i2c_init_setting(chip);
+	if (ret < 0) {
+		dev_err(chip->dev, "chip i2c init setting fail\n");
+		goto probe_fail;
+	}
+	ret = _mt6660_chip_power_on(chip, 0);
+	if (ret < 0) {
+		dev_err(chip->dev, "chip power off fail\n");
+		goto probe_fail;
+	}
+	return snd_soc_register_component(chip->dev,
+		&mt6660_component_driver, &mt6660_codec_dai, 1);
+probe_fail:
+	mutex_destroy(&chip->var_lock);
+	return ret;
+}
+
+int mt6660_i2c_remove(struct i2c_client *client)
+{
+	struct mt6660_chip *chip = i2c_get_clientdata(client);
+
+	dev_dbg(chip->dev, "%s++\n", __func__);
+	snd_soc_unregister_component(chip->dev);
+	mutex_destroy(&chip->var_lock);
+	dev_dbg(chip->dev, "%s--\n", __func__);
+	return 0;
+}
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
+		.owner = THIS_MODULE,
+		.of_match_table = of_match_ptr(mt6660_of_id),
+	},
+	.probe = mt6660_i2c_probe,
+	.remove = mt6660_i2c_remove,
+	.id_table = mt6660_i2c_id,
+};
+module_i2c_driver(mt6660_i2c_driver);
+
+MODULE_AUTHOR("Jeff Chang <jeff_chang@richtek.com");
+MODULE_DESCRIPTION("MT6660 SPKAMP Driver");
+MODULE_LICENSE("GPL");
+MODULE_VERSION("1.0.6_G");
diff --git a/sound/soc/codecs/mt6660.h b/sound/soc/codecs/mt6660.h
new file mode 100644
index 0000000..4d5cc16
--- /dev/null
+++ b/sound/soc/codecs/mt6660.h
@@ -0,0 +1,68 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef __SND_SOC_MT6660_H
+#define __SND_SOC_MT6660_H
+
+#include <linux/mutex.h>
+
+struct mt6660_chip {
+	struct i2c_client *i2c;
+	struct device *dev;
+	struct snd_soc_component *component;
+	struct platform_device *param_dev;
+	struct mutex var_lock;
+	struct mutex io_lock;
+	u16 chip_rev;
+	int pwr_cnt;
+};
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
