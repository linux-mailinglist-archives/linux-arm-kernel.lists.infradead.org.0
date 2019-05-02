Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3FC118B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8TG1s+4XKwFtWg1EkLWDdvMBlrJZBPC8j0hGLtRrnM=; b=PA963xPPptdpHD
	1S8+CO0uhOEmvzgKwHrEOQSpmdtxDi4jGsmDZYSvwxf07rafZFgx6hB72v0iFBTs0cNPHB6Ml7DWs
	IjwqWH/BUvW5sut8lUSX33esgHkFMnqU6JFaNBoUUtBVWkSyAheUIA7MGNzrWbA7xZaI9blSZ86l+
	L5aoW6+zTntKjoSB6nzUgXzJs3Y48caoE7QFCljEJFQKTJpDMpJDMgguKrqcEaQz9haOVrxXt533M
	U5yi0UQavjEor+ahHEkUkft5yi/beXevWwmpkNwhk0v9fF2H30938hVhPFjGXw69xg3CkN1PBWLC7
	ruETFxD0D+pGy3MjwwGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAZ0-0002fs-NU; Thu, 02 May 2019 12:11:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAYF-0001nE-2e
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:11:04 +0000
Received: by mail-wr1-x444.google.com with SMTP id f7so3041193wrs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 05:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lTZaob3dIwOPx1frhLPGRAw8jIJvDrOiwijEzS8GVXs=;
 b=uAYoI8XiKJvjlyJncyFYjx0rbNQlXTjHkU+oAjZ537OE4u1yw1OzcNS/N7IbjEM6ca
 3tN/J+xScv6i9CfNlgJoXTji2DLpcm38ugazgVUo7Vq1b1J47x4ysSmgIH3TiIrOmDW/
 YRCcAXHvUv1M2tVgGwW4NIImxBQvYBf7id386i3I6rJE/IGTYW99HnherEoM9yez+lDR
 5kxXUD4svzQP85+osLHop/PKR3f6+jgxdTTgWGp/vIkzWP5/IyeLKJgcXmGuveXXY91x
 AypNVS3yfrZJ0MFe2KvhtEy8hif9LCB6Sk+m9oEP5FmOZve/N39EETNTyqivZQ+mV9Mo
 h9Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lTZaob3dIwOPx1frhLPGRAw8jIJvDrOiwijEzS8GVXs=;
 b=oSBDcKyRs7/bT8nJuKtyhWZMdj811jg2FISL1WW83H3TaSg23U5Gfb8B+y/usbrM8N
 bGsrQBLW3fztgYmpuy+kOZQCt2tmi/8ZGqqXnaoaCL7zmPncF9Agel4dk1DPegnIjtcS
 NFxUXSNVF2ksNvLUNWjmpENpiqzev5TOiCR9l9rEVoAw80Nv1sbYlnpzyty0sv5xoTOa
 lgnSBQkGsONHEQqbB5p4/nzJ/3otqjhhXcF1lMSbontDfS/+FrJyxaXSJOUMdxqvjRxI
 RH4P5+aMA7TZNtOcEecCglCLaP+ii6Zv4e0866RYXPXrh8QUv3sRyQuMJYVfUD7a3fP8
 j7yA==
X-Gm-Message-State: APjAAAVKzU2UOqrwEbGMLfwZGTEbyW4KK16N+uc9rwUfq+YPIK/FS+iD
 toJCUgzjXjN1rJZVZpxIl0nqLBgee6k=
X-Google-Smtp-Source: APXvYqycDq3rYjZ2b7UJw033KIjqGdv+Z8RB1ePTvJLHGN3ndxknTfbOvleKrO5cab+PfWy2vFHqjQ==
X-Received: by 2002:adf:e9c2:: with SMTP id l2mr2453131wrn.116.1556799056870; 
 Thu, 02 May 2019 05:10:56 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
 by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 05:10:56 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
 tiwai@suse.com, kaichieh.chuang@mediatek.com, shunli.wang@mediatek.com
Subject: [PATCH 3/5] ASoC: mediatek: Add MT8516 PCM driver
Date: Thu,  2 May 2019 14:10:39 +0200
Message-Id: <20190502121041.8045-4-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502121041.8045-1-fparent@baylibre.com>
References: <20190502121041.8045-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051059_140239_B05D2773 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds the PCM driver for the MediaTek MT8516 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 sound/soc/mediatek/Kconfig                  |  10 +
 sound/soc/mediatek/Makefile                 |   1 +
 sound/soc/mediatek/mt8516/Makefile          |   6 +
 sound/soc/mediatek/mt8516/mt8516-afe-pcm.c  | 792 ++++++++++++++++++++
 sound/soc/mediatek/mt8516/mt8516-afe-regs.h | 218 ++++++
 5 files changed, 1027 insertions(+)
 create mode 100644 sound/soc/mediatek/mt8516/Makefile
 create mode 100644 sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
 create mode 100644 sound/soc/mediatek/mt8516/mt8516-afe-regs.h

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index b35410e4020e..f0bae957d475 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -116,6 +116,16 @@ config SND_SOC_MT8183
 	  Select Y if you have such device.
 	  If unsure select "N".
 
+config SND_SOC_MT8516
+	tristate "ASoC support for Mediatek MT8516 chip"
+	depends on ARCH_MEDIATEK
+	select SND_SOC_MEDIATEK
+	help
+	  This adds ASoC platform driver support for Mediatek MT8516 chip
+	  that can be used with other codecs.
+	  Select Y if you have such device.
+	  If unsure select "N".
+
 config SND_SOC_MTK_BTCVSD
 	tristate "ALSA BT SCO CVSD/MSBC Driver"
 	help
diff --git a/sound/soc/mediatek/Makefile b/sound/soc/mediatek/Makefile
index 76032cae6d51..a48500d69a8b 100644
--- a/sound/soc/mediatek/Makefile
+++ b/sound/soc/mediatek/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_SND_SOC_MT2701) += mt2701/
 obj-$(CONFIG_SND_SOC_MT6797) += mt6797/
 obj-$(CONFIG_SND_SOC_MT8173) += mt8173/
 obj-$(CONFIG_SND_SOC_MT8183) += mt8183/
+obj-$(CONFIG_SND_SOC_MT8516) += mt8516/
diff --git a/sound/soc/mediatek/mt8516/Makefile b/sound/soc/mediatek/mt8516/Makefile
new file mode 100644
index 000000000000..6e49b01d02c2
--- /dev/null
+++ b/sound/soc/mediatek/mt8516/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+
+snd-soc-mt8516-afe-objs := \
+	mt8516-afe-pcm.o
+
+obj-$(CONFIG_SND_SOC_MT8516) += snd-soc-mt8516-afe.o
diff --git a/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
new file mode 100644
index 000000000000..84fbb5dbbd14
--- /dev/null
+++ b/sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
@@ -0,0 +1,792 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Copyright (c) 2019 MediaTek, Inc
+ * Author: Fabien Parent <fparent@baylibre.com>
+ */
+
+#include <sound/soc.h>
+#include <sound/pcm_params.h>
+#include <linux/module.h>
+#include <linux/of.h>
+
+#include "mt8516-afe-regs.h"
+
+#include "../common/mtk-afe-platform-driver.h"
+#include "../common/mtk-afe-fe-dai.h"
+#include "../common/mtk-base-afe.h"
+
+enum {
+	MT8516_AFE_MEMIF_DL1,
+	MT8516_AFE_MEMIF_DL2,
+	MT8516_AFE_MEMIF_VUL,
+	MT8516_AFE_MEMIF_DAI,
+	MT8516_AFE_MEMIF_AWB,
+	MT8516_AFE_MEMIF_MOD_DAI,
+	MT8516_AFE_MEMIF_HDMI,
+	MT8516_AFE_MEMIF_TDM_IN,
+	MT8516_AFE_MEMIF_MULTILINE_IN,
+	MT8516_AFE_MEMIF_NUM,
+};
+
+enum {
+	MT8516_AFE_IRQ_1 = 0,
+	MT8516_AFE_IRQ_2,
+	MT8516_AFE_IRQ_5, /* dedicated for HDMI */
+	MT8516_AFE_IRQ_7,
+	MT8516_AFE_IRQ_10, /* dedicated for TDM IN */
+	MT8516_AFE_IRQ_13, /* dedicated for ULM*/
+	MT8516_AFE_IRQ_NUM
+};
+
+struct mt8516_afe_rate {
+	unsigned int rate;
+	unsigned int regvalue;
+};
+
+static const struct mt8516_afe_rate mt8516_afe_i2s_rates[] = {
+	{ .rate = 8000, .regvalue = 0 },
+	{ .rate = 11025, .regvalue = 1 },
+	{ .rate = 12000, .regvalue = 2 },
+	{ .rate = 16000, .regvalue = 4 },
+	{ .rate = 22050, .regvalue = 5 },
+	{ .rate = 24000, .regvalue = 6 },
+	{ .rate = 32000, .regvalue = 8 },
+	{ .rate = 44100, .regvalue = 9 },
+	{ .rate = 48000, .regvalue = 10 },
+	{ .rate = 88000, .regvalue = 11 },
+	{ .rate = 96000, .regvalue = 12 },
+	{ .rate = 176400, .regvalue = 13 },
+	{ .rate = 192000, .regvalue = 14 },
+};
+
+static int mt8516_afe_i2s_fs(struct snd_pcm_substream *substream,
+				unsigned int sample_rate)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(mt8516_afe_i2s_rates); i++)
+		if (mt8516_afe_i2s_rates[i].rate == sample_rate)
+			return mt8516_afe_i2s_rates[i].regvalue;
+
+	return -EINVAL;
+}
+
+
+static int mt8516_afe_irq_fs(struct snd_pcm_substream *substream,
+		      unsigned int rate)
+{
+	return mt8516_afe_i2s_fs(substream, rate);
+}
+
+static const unsigned int mt8516_afe_backup_list[] = {
+	AUDIO_TOP_CON0,
+	AUDIO_TOP_CON1,
+	AUDIO_TOP_CON3,
+	AFE_CONN0,
+	AFE_CONN1,
+	AFE_CONN2,
+	AFE_CONN3,
+	AFE_CONN5,
+	AFE_CONN_24BIT,
+	AFE_I2S_CON,
+	AFE_I2S_CON1,
+	AFE_I2S_CON2,
+	AFE_I2S_CON3,
+	AFE_ADDA_PREDIS_CON0,
+	AFE_ADDA_PREDIS_CON1,
+	AFE_ADDA_DL_SRC2_CON0,
+	AFE_ADDA_DL_SRC2_CON1,
+	AFE_ADDA_UL_SRC_CON0,
+	AFE_ADDA_UL_SRC_CON0,
+	AFE_ADDA_NEWIF_CFG1,
+	AFE_ADDA_TOP_CON0,
+	AFE_ADDA_UL_DL_CON0,
+	AFE_MEMIF_PBUF_SIZE,
+	AFE_MEMIF_PBUF2_SIZE,
+	AFE_DAC_CON0,
+	AFE_DAC_CON1,
+	AFE_DL1_BASE,
+	AFE_DL1_END,
+	AFE_DL2_BASE,
+	AFE_DL2_END,
+	AFE_VUL_BASE,
+	AFE_VUL_END,
+	AFE_AWB_BASE,
+	AFE_AWB_END,
+	AFE_DAI_BASE,
+	AFE_DAI_END,
+	AFE_HDMI_OUT_BASE,
+	AFE_HDMI_OUT_END,
+	AFE_HDMI_IN_2CH_BASE,
+	AFE_HDMI_IN_2CH_END,
+};
+
+static const struct snd_pcm_hardware mt8516_afe_hardware = {
+	.info = SNDRV_PCM_INFO_MMAP |
+		SNDRV_PCM_INFO_INTERLEAVED |
+		SNDRV_PCM_INFO_RESUME |
+		SNDRV_PCM_INFO_MMAP_VALID,
+	.buffer_bytes_max = 1024 * 1024,
+	.period_bytes_min = 256,
+	.period_bytes_max = 512 * 1024,
+	.periods_min = 2,
+	.periods_max = 256,
+	.fifo_size = 0,
+};
+
+static const struct snd_kcontrol_new mt8516_afe_o03_mix[] = {
+	SOC_DAPM_SINGLE_AUTODISABLE("I05 Switch", AFE_CONN1, 21, 1, 0),
+	SOC_DAPM_SINGLE_AUTODISABLE("I07 Switch", AFE_CONN1, 23, 1, 0),
+};
+
+static const struct snd_kcontrol_new mt8516_afe_o04_mix[] = {
+	SOC_DAPM_SINGLE_AUTODISABLE("I06 Switch", AFE_CONN2, 6, 1, 0),
+	SOC_DAPM_SINGLE_AUTODISABLE("I08 Switch", AFE_CONN2, 8, 1, 0),
+};
+
+static const struct snd_kcontrol_new mt8516_afe_o09_mix[] = {
+	SOC_DAPM_SINGLE_AUTODISABLE("I00 Switch", AFE_CONN5, 8, 1, 0),
+	SOC_DAPM_SINGLE_AUTODISABLE("I03 Switch", AFE_CONN3, 0, 1, 0),
+};
+
+static const struct snd_kcontrol_new mt8516_afe_o10_mix[] = {
+	SOC_DAPM_SINGLE_AUTODISABLE("I01 Switch", AFE_CONN5, 13, 1, 0),
+	SOC_DAPM_SINGLE_AUTODISABLE("I04 Switch", AFE_CONN3, 3, 1, 0),
+};
+
+static const struct snd_soc_dapm_widget mt8516_memif_widgets[] = {
+	/* inter-connections */
+	SND_SOC_DAPM_MIXER("I03", SND_SOC_NOPM, 0, 0, NULL, 0),
+	SND_SOC_DAPM_MIXER("I04", SND_SOC_NOPM, 0, 0, NULL, 0),
+	SND_SOC_DAPM_MIXER("I05", SND_SOC_NOPM, 0, 0, NULL, 0),
+	SND_SOC_DAPM_MIXER("I06", SND_SOC_NOPM, 0, 0, NULL, 0),
+	SND_SOC_DAPM_MIXER("I07", SND_SOC_NOPM, 0, 0, NULL, 0),
+	SND_SOC_DAPM_MIXER("I08", SND_SOC_NOPM, 0, 0, NULL, 0),
+
+	SND_SOC_DAPM_MIXER("O03", SND_SOC_NOPM, 0, 0,
+			   mt8516_afe_o03_mix, ARRAY_SIZE(mt8516_afe_o03_mix)),
+	SND_SOC_DAPM_MIXER("O04", SND_SOC_NOPM, 0, 0,
+			   mt8516_afe_o04_mix, ARRAY_SIZE(mt8516_afe_o04_mix)),
+	SND_SOC_DAPM_MIXER("O09", SND_SOC_NOPM, 0, 0,
+			   mt8516_afe_o09_mix, ARRAY_SIZE(mt8516_afe_o09_mix)),
+	SND_SOC_DAPM_MIXER("O10", SND_SOC_NOPM, 0, 0,
+			   mt8516_afe_o10_mix, ARRAY_SIZE(mt8516_afe_o10_mix)),
+};
+
+static const struct snd_soc_dapm_route mt8516_memif_routes[] = {
+	/* downlink */
+	{"I05", NULL, "DL1"},
+	{"I06", NULL, "DL1"},
+	{"I07", NULL, "DL2"},
+	{"I08", NULL, "DL2"},
+	{"O03", "I05 Switch", "I05"},
+	{"O04", "I06 Switch", "I06"},
+	{"O03", "I07 Switch", "I07"},
+	{"O04", "I08 Switch", "I08"},
+
+	/* uplink */
+	{"I03", NULL, "AIN Mux"},
+	{"I04", NULL, "AIN Mux"},
+
+	{"O09", "I03 Switch", "I03"},
+	{"O10", "I04 Switch", "I04"},
+	{"VUL", NULL, "O09"},
+	{"VUL", NULL, "O10"},
+};
+
+static struct mtk_base_irq_data mt8516_irq_data[MT8516_AFE_IRQ_NUM] = {
+	[MT8516_AFE_IRQ_1] = {
+		.id = MT8516_AFE_IRQ_1,
+		.irq_cnt_reg = AFE_IRQ_CNT1,
+		.irq_cnt_shift = 0,
+		.irq_cnt_maskbit = 0x3ffff,
+		.irq_fs_reg = AFE_IRQ_MCU_CON,
+		.irq_fs_shift = 4,
+		.irq_fs_maskbit = 0xf,
+		.irq_en_reg = AFE_IRQ_MCU_CON,
+		.irq_en_shift = 0,
+		.irq_clr_reg = AFE_IRQ_CLR,
+		.irq_clr_shift = 0,
+	},
+	[MT8516_AFE_IRQ_2] = {
+		.id = MT8516_AFE_IRQ_2,
+		.irq_cnt_reg = AFE_IRQ_CNT2,
+		.irq_cnt_shift = 0,
+		.irq_cnt_maskbit = 0x3ffff,
+		.irq_fs_reg = AFE_IRQ_MCU_CON,
+		.irq_fs_shift = 8,
+		.irq_fs_maskbit = 0xf,
+		.irq_en_reg = AFE_IRQ_MCU_CON,
+		.irq_en_shift = 1,
+		.irq_clr_reg = AFE_IRQ_CLR,
+		.irq_clr_shift = 1,
+	},
+	[MT8516_AFE_IRQ_5] = {
+		.id = MT8516_AFE_IRQ_5,
+		.irq_cnt_reg = AFE_IRQ_CNT5,
+		.irq_cnt_shift = 0,
+		.irq_cnt_maskbit = 0x3ffff,
+		.irq_fs_reg = -1,
+		.irq_fs_shift = -1,
+		.irq_en_reg = AFE_IRQ_MCU_CON2,
+		.irq_en_shift = 3,
+		.irq_clr_reg = AFE_IRQ_CLR,
+		.irq_clr_shift = 4,
+	},
+	[MT8516_AFE_IRQ_7] = {
+		.id = MT8516_AFE_IRQ_7,
+		.irq_cnt_reg = AFE_IRQ_CNT7,
+		.irq_cnt_shift = 0,
+		.irq_cnt_maskbit = 0x3ffff,
+		.irq_fs_reg = AFE_IRQ_MCU_CON,
+		.irq_fs_shift = 24,
+		.irq_fs_maskbit = 0xf,
+		.irq_en_reg = AFE_IRQ_MCU_CON,
+		.irq_en_shift = 14,
+		.irq_clr_reg = AFE_IRQ_CLR,
+		.irq_clr_shift = 6,
+	},
+	[MT8516_AFE_IRQ_10] = {
+		.id = MT8516_AFE_IRQ_10,
+		.irq_cnt_reg = AFE_IRQ_CNT10,
+		.irq_cnt_shift = 0,
+		.irq_cnt_maskbit = 0x3ffff,
+		.irq_fs_reg = -1,
+		.irq_fs_shift = -1,
+		.irq_en_reg = AFE_IRQ_MCU_CON2,
+		.irq_en_shift = 4,
+		.irq_clr_reg = AFE_IRQ_CLR,
+		.irq_clr_shift = 9,
+	},
+	[MT8516_AFE_IRQ_13] = {
+		.id = MT8516_AFE_IRQ_13,
+		.irq_cnt_reg = AFE_IRQ_CNT13,
+		.irq_cnt_shift = 0,
+		.irq_cnt_maskbit = 0x3ffff,
+		.irq_fs_reg = -1,
+		.irq_fs_shift = -1,
+		.irq_en_reg = AFE_IRQ_MCU_CON2,
+		.irq_en_shift = 7,
+		.irq_clr_reg = AFE_IRQ_CLR,
+		.irq_clr_shift = 12,
+	},
+};
+
+static struct mtk_base_afe_irq mt8516_irqs[MT8516_AFE_IRQ_NUM] = {
+	{ .irq_data = &mt8516_irq_data[MT8516_AFE_IRQ_1] },
+	{ .irq_data = &mt8516_irq_data[MT8516_AFE_IRQ_2] },
+	{ .irq_data = &mt8516_irq_data[MT8516_AFE_IRQ_5] },
+	{ .irq_data = &mt8516_irq_data[MT8516_AFE_IRQ_7] },
+	{ .irq_data = &mt8516_irq_data[MT8516_AFE_IRQ_10] },
+	{ .irq_data = &mt8516_irq_data[MT8516_AFE_IRQ_13] },
+};
+
+static struct mtk_base_memif_data mt8516_memif_data[MT8516_AFE_MEMIF_NUM] = {
+	[MT8516_AFE_MEMIF_DL1] = {
+		.name = "DL1",
+		.id = MT8516_AFE_MEMIF_DL1,
+		.reg_ofs_base = AFE_DL1_BASE,
+		.reg_ofs_cur = AFE_DL1_CUR,
+		.fs_reg = AFE_DAC_CON1,
+		.fs_shift = 0,
+		.fs_maskbit = 0xf,
+		.mono_reg = AFE_DAC_CON1,
+		.mono_shift = 21,
+		.enable_reg = AFE_DAC_CON0,
+		.enable_shift = 1,
+		.hd_shift = -1,
+		.msb_shift = -1,
+		.agent_disable_shift = -1,
+	},
+	[MT8516_AFE_MEMIF_DL2] = {
+		.name = "DL2",
+		.id = MT8516_AFE_MEMIF_DL2,
+		.reg_ofs_base = AFE_DL2_BASE,
+		.reg_ofs_cur = AFE_DL2_CUR,
+		.fs_reg = AFE_DAC_CON1,
+		.fs_shift = 4,
+		.fs_maskbit = 0xf,
+		.mono_reg = AFE_DAC_CON1,
+		.mono_shift = 22,
+		.enable_reg = AFE_DAC_CON0,
+		.enable_shift = 2,
+		.hd_shift = -1,
+		.msb_shift = -1,
+		.agent_disable_shift = -1,
+	},
+	[MT8516_AFE_MEMIF_VUL] = {
+		.name = "VUL",
+		.id = MT8516_AFE_MEMIF_VUL,
+		.reg_ofs_base = AFE_VUL_BASE,
+		.reg_ofs_cur = AFE_VUL_CUR,
+		.fs_reg = AFE_DAC_CON1,
+		.fs_shift = 16,
+		.fs_maskbit = 0xf,
+		.mono_reg = AFE_DAC_CON1,
+		.mono_shift = 27,
+		.enable_reg = AFE_DAC_CON0,
+		.enable_shift = 3,
+		.hd_shift = -1,
+		.msb_shift = -1,
+		.agent_disable_shift = -1,
+	},
+	[MT8516_AFE_MEMIF_DAI] = {
+		.name = "DAI",
+		.id = MT8516_AFE_MEMIF_DAI,
+		.reg_ofs_base = AFE_DAI_BASE,
+		.reg_ofs_cur = AFE_DAI_CUR,
+		.fs_reg = AFE_DAC_CON0,
+		.fs_shift = 24,
+		.fs_maskbit = 0x3,
+		.mono_reg = AFE_DAC_CON1,
+		.mono_shift = -1,
+		.enable_reg = AFE_DAC_CON0,
+		.enable_shift = 4,
+		.hd_shift = -1,
+		.msb_shift = -1,
+		.agent_disable_shift = -1,
+	},
+	[MT8516_AFE_MEMIF_AWB] = {
+		.name = "AWB",
+		.id = MT8516_AFE_MEMIF_AWB,
+		.reg_ofs_base = AFE_AWB_BASE,
+		.reg_ofs_cur = AFE_AWB_CUR,
+		.fs_reg = AFE_DAC_CON1,
+		.fs_shift = 12,
+		.fs_maskbit = 0xf,
+		.mono_reg = AFE_DAC_CON1,
+		.mono_shift = 24,
+		.enable_reg = AFE_DAC_CON0,
+		.enable_shift = 6,
+		.hd_shift = -1,
+		.msb_shift = -1,
+		.agent_disable_shift = -1,
+	},
+	[MT8516_AFE_MEMIF_MOD_DAI] = {
+		.name = "MOD_DAI",
+		.id = MT8516_AFE_MEMIF_MOD_DAI,
+		.reg_ofs_base = AFE_MOD_PCM_BASE,
+		.reg_ofs_cur = AFE_MOD_PCM_CUR,
+		.fs_reg = AFE_DAC_CON1,
+		.fs_shift = 30,
+		.fs_maskbit = 0x3,
+		.mono_reg = AFE_DAC_CON1,
+		.mono_shift = -1,
+		.enable_reg = AFE_DAC_CON0,
+		.enable_shift = 7,
+		.hd_shift = -1,
+		.msb_shift = -1,
+		.agent_disable_shift = -1,
+	},
+	[MT8516_AFE_MEMIF_HDMI] = {
+		.name = "HDMI",
+		.id = MT8516_AFE_MEMIF_HDMI,
+		.reg_ofs_base = AFE_HDMI_OUT_BASE,
+		.reg_ofs_cur = AFE_HDMI_OUT_CUR,
+		.fs_reg = AFE_DAC_CON1,
+		.fs_shift = -1,
+		.fs_maskbit = 0xf,
+		.mono_reg = AFE_DAC_CON1,
+		.mono_shift = -1,
+		.enable_reg = AFE_DAC_CON0,
+		.enable_shift = -1,
+		.hd_shift = -1,
+		.msb_shift = -1,
+		.agent_disable_shift = -1,
+	},
+	[MT8516_AFE_MEMIF_TDM_IN] = {
+		.name = "TDM_IN",
+		.id = MT8516_AFE_MEMIF_TDM_IN,
+		.reg_ofs_base = AFE_HDMI_IN_2CH_BASE,
+		.reg_ofs_cur = AFE_HDMI_IN_2CH_CUR,
+		.fs_reg = AFE_DAC_CON1,
+		.fs_shift = -1,
+		.fs_maskbit = 0xf,
+		.mono_reg = AFE_DAC_CON1,
+		.mono_shift = -1,
+		.enable_reg = AFE_DAC_CON0,
+		.enable_shift = -1,
+		.hd_shift = -1,
+		.msb_shift = -1,
+		.agent_disable_shift = -1,
+	},
+	[MT8516_AFE_MEMIF_MULTILINE_IN] = {
+		.name = "ULM",
+		.id = MT8516_AFE_MEMIF_MULTILINE_IN,
+		.reg_ofs_base = SPDIFIN_BASE_ADR,
+		.reg_ofs_cur = SPDIFIN_CUR_ADR,
+		.fs_reg = AFE_DAC_CON1,
+		.fs_shift = -1,
+		.fs_maskbit = 0xf,
+		.mono_reg = AFE_DAC_CON1,
+		.mono_shift = -1,
+		.enable_reg = AFE_DAC_CON0,
+		.enable_shift = -1,
+		.hd_shift = -1,
+		.msb_shift = -1,
+		.agent_disable_shift = -1,
+	},
+};
+
+struct mtk_base_afe_memif mt8516_memif[] = {
+	[MT8516_AFE_MEMIF_DL1] = {
+		.data = &mt8516_memif_data[MT8516_AFE_MEMIF_DL1],
+		.irq_usage = MT8516_AFE_IRQ_1,
+		.const_irq = 1,
+	},
+	[MT8516_AFE_MEMIF_DL2] = {
+		.data = &mt8516_memif_data[MT8516_AFE_MEMIF_DL2],
+		.irq_usage = MT8516_AFE_IRQ_7,
+		.const_irq = 1,
+	},
+	[MT8516_AFE_MEMIF_VUL] = {
+		.data = &mt8516_memif_data[MT8516_AFE_MEMIF_VUL],
+		.irq_usage = MT8516_AFE_IRQ_2,
+		.const_irq = 1,
+	},
+	[MT8516_AFE_MEMIF_DAI] = {
+		.data = &mt8516_memif_data[MT8516_AFE_MEMIF_DAI],
+		.irq_usage = MT8516_AFE_IRQ_2,
+		.const_irq = 1,
+	},
+	[MT8516_AFE_MEMIF_AWB] = {
+		.data = &mt8516_memif_data[MT8516_AFE_MEMIF_AWB],
+		.irq_usage = MT8516_AFE_IRQ_2,
+		.const_irq = 1,
+	},
+	[MT8516_AFE_MEMIF_MOD_DAI] = {
+		.data = &mt8516_memif_data[MT8516_AFE_MEMIF_MOD_DAI],
+		.irq_usage = MT8516_AFE_IRQ_2,
+		.const_irq = 1,
+	},
+	[MT8516_AFE_MEMIF_HDMI] = {
+		.data = &mt8516_memif_data[MT8516_AFE_MEMIF_HDMI],
+		.irq_usage = MT8516_AFE_IRQ_5,
+		.const_irq = 1,
+	},
+	[MT8516_AFE_MEMIF_TDM_IN] = {
+		.data = &mt8516_memif_data[MT8516_AFE_MEMIF_TDM_IN],
+		.irq_usage = MT8516_AFE_IRQ_10,
+		.const_irq = 1,
+	},
+	[MT8516_AFE_MEMIF_MULTILINE_IN] = {
+		.data = &mt8516_memif_data[MT8516_AFE_MEMIF_MULTILINE_IN],
+		.data = &mt8516_memif_data[8],
+		.irq_usage = MT8516_AFE_IRQ_13,
+		.const_irq = 1,
+	},
+};
+
+static const struct regmap_config mt8516_afe_regmap_config = {
+	.reg_bits = 32,
+	.reg_stride = 4,
+	.val_bits = 32,
+	.max_register = ABB_AFE_SDM_TEST,
+	.cache_type = REGCACHE_NONE,
+};
+
+static irqreturn_t mt8516_afe_irq_handler(int irq, void *dev_id)
+{
+	struct mtk_base_afe *afe = dev_id;
+	unsigned int reg_value;
+	unsigned int memif_status;
+	int i, ret;
+
+	ret = regmap_read(afe->regmap, AFE_IRQ_STATUS, &reg_value);
+	if (ret) {
+		reg_value = AFE_IRQ_STATUS_BITS;
+		goto exit_irq;
+	}
+
+	ret = regmap_read(afe->regmap, AFE_DAC_CON0, &memif_status);
+	if (ret) {
+		reg_value = AFE_IRQ_STATUS_BITS;
+		goto exit_irq;
+	}
+
+	for (i = 0; i < MT8516_AFE_MEMIF_NUM; i++) {
+		struct mtk_base_afe_memif *memif = &afe->memif[i];
+		struct snd_pcm_substream *substream = memif->substream;
+		unsigned int irq_clr_shift =
+			afe->irqs[memif->irq_usage].irq_data->irq_clr_shift;
+		unsigned int enable_shift = memif->data->enable_shift;
+
+		if (!substream)
+			continue;
+
+		if (!(reg_value & (1 << irq_clr_shift)))
+			continue;
+
+		if (enable_shift >= 0 && !((1 << enable_shift) & memif_status))
+			continue;
+
+		snd_pcm_period_elapsed(substream);
+	}
+
+exit_irq:
+	regmap_write(afe->regmap, AFE_IRQ_CLR, reg_value & AFE_IRQ_STATUS_BITS);
+
+	return IRQ_HANDLED;
+}
+
+static struct snd_soc_dai_driver mt8516_memif_dai_driver[] = {
+	/* FE DAIs: memory intefaces to CPU */
+	{
+		.name = "DL1",
+		.id = MT8516_AFE_MEMIF_DL1,
+		.suspend = mtk_afe_dai_suspend,
+		.resume = mtk_afe_dai_resume,
+		.playback = {
+			.stream_name = "DL1",
+			.channels_min = 1,
+			.channels_max = 2,
+			.rates = SNDRV_PCM_RATE_8000_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE |
+				   SNDRV_PCM_FMTBIT_S32_LE,
+		},
+		.ops = &mtk_afe_fe_ops,
+	}, {
+		.name = "DL2",
+		.id = MT8516_AFE_MEMIF_DL2,
+		.suspend = mtk_afe_dai_suspend,
+		.resume = mtk_afe_dai_resume,
+		.playback = {
+			.stream_name = "DL2",
+			.channels_min = 1,
+			.channels_max = 2,
+			.rates = SNDRV_PCM_RATE_8000_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE |
+				   SNDRV_PCM_FMTBIT_S32_LE,
+		},
+		.ops = &mtk_afe_fe_ops,
+	}, {
+		.name = "VUL",
+		.id = MT8516_AFE_MEMIF_VUL,
+		.suspend = mtk_afe_dai_suspend,
+		.resume = mtk_afe_dai_resume,
+		.capture = {
+			.stream_name = "VUL",
+			.channels_min = 1,
+			.channels_max = 2,
+			.rates = SNDRV_PCM_RATE_8000_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE |
+				   SNDRV_PCM_FMTBIT_S32_LE,
+		},
+		.ops = &mtk_afe_fe_ops,
+	}, {
+		.name = "DAI",
+		.id = MT8516_AFE_MEMIF_DAI,
+		.suspend = mtk_afe_dai_suspend,
+		.resume = mtk_afe_dai_resume,
+		.capture = {
+			.stream_name = "DAI",
+			.channels_min = 1,
+			.channels_max = 1,
+			.rates = SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000 |
+				 SNDRV_PCM_RATE_32000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE,
+		},
+		.ops = &mtk_afe_fe_ops,
+	}, {
+		.name = "HDMI",
+		.id = MT8516_AFE_MEMIF_HDMI,
+		.suspend = mtk_afe_dai_suspend,
+		.resume = mtk_afe_dai_resume,
+		.playback = {
+			.stream_name = "HDMI",
+			.channels_min = 1,
+			.channels_max = 8,
+			.rates = SNDRV_PCM_RATE_8000_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE |
+				   SNDRV_PCM_FMTBIT_S32_LE,
+		},
+		.ops = &mtk_afe_fe_ops,
+	}, {
+		.name = "TDM_IN",
+		.id = MT8516_AFE_MEMIF_TDM_IN,
+		.suspend = mtk_afe_dai_suspend,
+		.resume = mtk_afe_dai_resume,
+		.capture = {
+			.stream_name = "TDM_IN",
+			.channels_min = 2,
+			.channels_max = 8,
+			.rates = SNDRV_PCM_RATE_8000_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE |
+				   SNDRV_PCM_FMTBIT_S32_LE,
+		},
+		.ops = &mtk_afe_fe_ops,
+	}, {
+		.name = "ULM",
+		.id = MT8516_AFE_MEMIF_MULTILINE_IN,
+		.suspend = mtk_afe_dai_suspend,
+		.resume = mtk_afe_dai_resume,
+		.capture = {
+			.stream_name = "MULTILINE_IN",
+			.channels_min = 1,
+			.channels_max = 8,
+			.rates = SNDRV_PCM_RATE_32000
+				| SNDRV_PCM_RATE_44100
+				| SNDRV_PCM_RATE_48000
+				| SNDRV_PCM_RATE_88200
+				| SNDRV_PCM_RATE_96000
+				| SNDRV_PCM_RATE_176400
+				| SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE
+				| SNDRV_PCM_FMTBIT_S24_LE
+				| SNDRV_PCM_FMTBIT_S32_LE,
+		},
+		.ops = &mtk_afe_fe_ops,
+	},
+};
+
+static int mt8516_dai_memif_register(struct mtk_base_afe *afe)
+{
+	struct mtk_base_afe_dai *dai;
+
+	dai = devm_kzalloc(afe->dev, sizeof(*dai), GFP_KERNEL);
+	if (!dai)
+		return -ENOMEM;
+
+	list_add(&dai->list, &afe->sub_dais);
+
+	dai->dai_drivers = mt8516_memif_dai_driver;
+	dai->num_dai_drivers = ARRAY_SIZE(mt8516_memif_dai_driver);
+
+	dai->dapm_widgets = mt8516_memif_widgets;
+	dai->num_dapm_widgets = ARRAY_SIZE(mt8516_memif_widgets);
+	dai->dapm_routes = mt8516_memif_routes;
+	dai->num_dapm_routes = ARRAY_SIZE(mt8516_memif_routes);
+
+	return 0;
+}
+
+typedef int (*dai_register_cb)(struct mtk_base_afe *);
+static const dai_register_cb dai_register_cbs[] = {
+	mt8516_dai_memif_register,
+};
+
+static int mt8516_afe_component_probe(struct snd_soc_component *component)
+{
+	return mtk_afe_add_sub_dai_control(component);
+}
+
+static const struct snd_soc_component_driver mt8516_afe_component = {
+	.name = AFE_PCM_NAME,
+	.ops = &mtk_afe_pcm_ops,
+	.pcm_new = mtk_afe_pcm_new,
+	.pcm_free = mtk_afe_pcm_free,
+	.probe = mt8516_afe_component_probe,
+};
+
+static int mt8516_afe_pcm_dev_probe(struct platform_device *pdev)
+{
+	int ret, i;
+	unsigned int irq_id;
+	struct mtk_base_afe *afe;
+	struct resource *res;
+	struct device_node *np = pdev->dev.of_node;
+
+	afe = devm_kzalloc(&pdev->dev, sizeof(*afe), GFP_KERNEL);
+	if (!afe)
+		return -ENOMEM;
+	platform_set_drvdata(pdev, afe);
+
+	afe->dev = &pdev->dev;
+
+	irq_id = platform_get_irq(pdev, 0);
+	if (!irq_id) {
+		dev_err(afe->dev, "np %s no irq\n", np->name);
+		return -ENXIO;
+	}
+
+	ret = devm_request_irq(afe->dev, irq_id, mt8516_afe_irq_handler,
+			       0, "Afe_ISR_Handle", (void *)afe);
+	if (ret) {
+		dev_err(afe->dev, "could not request_irq\n");
+		return ret;
+	}
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	afe->base_addr = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(afe->base_addr))
+		return PTR_ERR(afe->base_addr);
+
+	afe->regmap = devm_regmap_init_mmio(&pdev->dev, afe->base_addr,
+		&mt8516_afe_regmap_config);
+	if (IS_ERR(afe->regmap))
+		return PTR_ERR(afe->regmap);
+
+	afe->reg_back_up_list = &mt8516_afe_backup_list[0];
+	afe->reg_back_up_list_num = ARRAY_SIZE(mt8516_afe_backup_list);
+
+	/* init sub_dais */
+	INIT_LIST_HEAD(&afe->sub_dais);
+
+	for (i = 0; i < ARRAY_SIZE(dai_register_cbs); i++) {
+		ret = dai_register_cbs[i](afe);
+		if (ret) {
+			dev_warn(afe->dev,
+				 "Failed to register dai register %d, ret %d\n",
+				 i, ret);
+			return ret;
+		}
+	}
+
+	/* init dai_driver and component_driver */
+	ret = mtk_afe_combine_sub_dai(afe);
+	if (ret) {
+		dev_warn(afe->dev, "Failed to combine sub-dais, ret %d\n", ret);
+		return ret;
+	}
+
+	afe->mtk_afe_hardware = &mt8516_afe_hardware;
+
+	afe->irqs = mt8516_irqs;
+	afe->irq_fs = mt8516_afe_irq_fs;
+
+	afe->memif = &mt8516_memif[0];
+	afe->memif_size = ARRAY_SIZE(mt8516_memif);
+	afe->memif_fs = mt8516_afe_i2s_fs;
+
+	ret = devm_snd_soc_register_component(&pdev->dev,
+					      &mt8516_afe_component,
+					      afe->dai_drivers,
+					      afe->num_dai_drivers);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int mt8516_afe_pcm_dev_remove(struct platform_device *pdev)
+{
+	return 0;
+}
+
+static const struct of_device_id mt8516_afe_pcm_dt_match[] = {
+	{ .compatible = "mediatek,mt8516-audio", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, mt8516_afe_pcm_dt_match);
+
+static struct platform_driver mt8516_afe_pcm_driver = {
+	.driver = {
+		   .name = "mtk-afe-pcm",
+		   .of_match_table = mt8516_afe_pcm_dt_match,
+	},
+	.probe = mt8516_afe_pcm_dev_probe,
+	.remove = mt8516_afe_pcm_dev_remove,
+};
+
+module_platform_driver(mt8516_afe_pcm_driver);
+
+MODULE_DESCRIPTION("Mediatek ALSA SoC AFE platform driver");
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Fabien Parent <fparent@baylibre.com>");
diff --git a/sound/soc/mediatek/mt8516/mt8516-afe-regs.h b/sound/soc/mediatek/mt8516/mt8516-afe-regs.h
new file mode 100644
index 000000000000..0edb19cfecf4
--- /dev/null
+++ b/sound/soc/mediatek/mt8516/mt8516-afe-regs.h
@@ -0,0 +1,218 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Copyright (c) 2019 MediaTek, Inc
+ * Author: Fabien Parent <fparent@baylibre.com>
+ */
+
+#ifndef _MT8516_AFE_REGS_H_
+#define _MT8516_AFE_REGS_H_
+
+#include <linux/bitops.h>
+
+#define AUDIO_TOP_CON0		0x0000
+#define AUDIO_TOP_CON1		0x0004
+#define AUDIO_TOP_CON3		0x000c
+#define AFE_DAC_CON0		0x0010
+#define AFE_DAC_CON1		0x0014
+#define AFE_I2S_CON		0x0018
+#define AFE_I2S_CON1		0x0034
+#define AFE_I2S_CON2		0x0038
+#define AFE_I2S_CON3		0x004c
+#define AFE_DAIBT_CON0          0x001c
+#define AFE_MRGIF_CON           0x003c
+#define AFE_CONN_24BIT		0x006c
+
+#define AFE_CONN0		0x0020
+#define AFE_CONN1		0x0024
+#define AFE_CONN2		0x0028
+#define AFE_CONN3		0x002C
+#define AFE_CONN4		0x0030
+#define AFE_CONN5		0x005C
+
+/* Memory interface */
+#define AFE_DL1_BASE		0x0040
+#define AFE_DL1_CUR		0x0044
+#define AFE_DL1_END		0x0048
+#define AFE_DL2_BASE		0x0050
+#define AFE_DL2_CUR		0x0054
+#define AFE_DL2_END             0x0058
+#define AFE_AWB_BASE		0x0070
+#define AFE_AWB_END             0x0078
+#define AFE_AWB_CUR		0x007c
+#define AFE_VUL_BASE		0x0080
+#define AFE_VUL_CUR		0x008c
+#define AFE_VUL_END		0x0088
+#define AFE_DAI_BASE		0x0090
+#define AFE_DAI_END		0x0098
+#define AFE_DAI_CUR		0x009c
+#define AFE_MOD_PCM_BASE	0x0330
+#define AFE_MOD_PCM_END		0x0338
+#define AFE_MOD_PCM_CUR		0x033c
+#define AFE_HDMI_OUT_BASE	0x0374
+#define AFE_HDMI_OUT_CUR	0x0378
+#define AFE_HDMI_OUT_END	0x037c
+
+#define AFE_MEMIF_MSB           0x00cc
+#define AFE_MEMIF_MON0          0x00d0
+#define AFE_MEMIF_MON1          0x00d4
+#define AFE_MEMIF_MON2          0x00d8
+#define AFE_MEMIF_MON3          0x00dc
+
+#define AFE_ADDA_DL_SRC2_CON0   0x0108
+#define AFE_ADDA_DL_SRC2_CON1   0x010c
+#define AFE_ADDA_UL_SRC_CON0    0x0114
+#define AFE_ADDA_UL_SRC_CON1    0x0118
+#define AFE_ADDA_TOP_CON0	0x0120
+#define AFE_ADDA_UL_DL_CON0     0x0124
+#define AFE_ADDA_NEWIF_CFG0     0x0138
+#define AFE_ADDA_NEWIF_CFG1     0x013c
+#define AFE_ADDA_PREDIS_CON0    0x0260
+#define AFE_ADDA_PREDIS_CON1    0x0264
+
+#define AFE_HDMI_OUT_CON0	0x0370
+
+#define AFE_IRQ_MCU_CON		0x03a0
+#define AFE_IRQ_STATUS		0x03a4
+#define AFE_IRQ_CLR		0x03a8
+#define AFE_IRQ_CNT1		0x03ac
+#define AFE_IRQ_CNT2		0x03b0
+#define AFE_IRQ_MCU_EN		0x03b4
+#define AFE_IRQ_CNT5		0x03bc
+#define AFE_IRQ_CNT7		0x03dc
+#define AFE_IRQ_CNT13		0x0408
+#define AFE_IRQ1_MCU_CNT_MON    0x03c0
+#define AFE_IRQ2_MCU_CNT_MON    0x03c4
+#define AFE_IRQ_MCU_CON2	0x03f8
+
+#define AFE_MEMIF_PBUF_SIZE	0x03d8
+#define AFE_MEMIF_PBUF2_SIZE	0x03ec
+
+#define AFE_ASRC_CON0		0x0500
+
+#define AFE_ASRC_CON13		0x0550
+#define AFE_ASRC_CON14		0x0554
+#define AFE_ASRC_CON15		0x0558
+#define AFE_ASRC_CON16		0x055c
+#define AFE_ASRC_CON17		0x0560
+#define AFE_ASRC_CON18		0x0564
+#define AFE_ASRC_CON19		0x0568
+#define AFE_ASRC_CON20		0x056c
+#define AFE_ASRC_CON21		0x0570
+
+#define AFE_TDM_CON1		0x0548
+#define AFE_TDM_CON2		0x054c
+
+#define AFE_TDM_IN_CON1		0x0588
+#define AFE_TDM_IN_MON2		0x0594
+#define AFE_IRQ_CNT10		0x08dc
+
+#define AFE_HDMI_IN_2CH_CON0	0x09c0
+#define AFE_HDMI_IN_2CH_BASE	0x09c4
+#define AFE_HDMI_IN_2CH_END	0x09c8
+#define AFE_HDMI_IN_2CH_CUR	0x09cc
+
+#define AFE_MEMIF_MON15		0x0d7c
+#define ABB_AFE_SDM_TEST	0x0f4c
+
+#define AFE_IRQ_STATUS_BITS	0x13ff
+
+/* AFE_I2S_CON (0x0018) */
+#define AFE_I2S_CON_PHASE_SHIFT_FIX	BIT(31)
+#define AFE_I2S_CON_BCK_INV			BIT(29)
+#define AFE_I2S_CON_FROM_IO_MUX		BIT(28)
+#define AFE_I2S_CON_LOW_JITTER_CLK	BIT(12)
+#define AFE_I2S_CON_LRCK_INV		BIT(5)
+#define AFE_I2S_CON_FORMAT_I2S		BIT(3)
+#define AFE_I2S_CON_SRC_SLAVE		BIT(2)
+#define AFE_I2S_CON_WLEN_32BIT		BIT(1)
+#define AFE_I2S_CON_EN			BIT(0)
+
+/* AFE_CONN1 (0x0024) */
+#define AFE_CONN1_I03_O03_S		BIT(19)
+
+/* AFE_CONN2 (0x0028) */
+#define AFE_CONN2_I04_O04_S		BIT(4)
+#define AFE_CONN2_I03_O04_S		BIT(3)
+
+/* AFE_I2S_CON1 (0x0034) */
+#define AFE_I2S_CON1_I2S2_TO_PAD	(1 << 18)
+#define AFE_I2S_CON1_TDMOUT_TO_PAD	(0 << 18)
+#define AFE_I2S_CON1_TDMOUT_MUX_MASK	GENMASK(18, 18)
+#define AFE_I2S_CON1_LOW_JITTER_CLK	BIT(12)
+#define AFE_I2S_CON1_RATE(x)		(((x) & 0xf) << 8)
+#define AFE_I2S_CON1_FORMAT_I2S		BIT(3)
+#define AFE_I2S_CON1_WLEN_32BIT		BIT(1)
+#define AFE_I2S_CON1_EN			BIT(0)
+
+/* AFE_I2S_CON2 (0x0038) */
+#define AFE_I2S_CON2_LOW_JITTER_CLK	BIT(12)
+#define AFE_I2S_CON2_RATE(x)		(((x) & 0xf) << 8)
+#define AFE_I2S_CON2_FORMAT_I2S		BIT(3)
+#define AFE_I2S_CON2_WLEN_32BIT		BIT(1)
+#define AFE_I2S_CON2_EN			BIT(0)
+
+/* AFE_I2S_CON3 (0x004C) */
+#define AFE_I2S_CON3_LOW_JITTER_CLK	BIT(12)
+#define AFE_I2S_CON3_RATE(x)		(((x) & 0xf) << 8)
+#define AFE_I2S_CON3_FORMAT_I2S		BIT(3)
+#define AFE_I2S_CON3_WLEN_32BIT		BIT(1)
+#define AFE_I2S_CON3_EN			BIT(0)
+
+/* AFE_CONN_24BIT (0x006c) */
+#define AFE_CONN_24BIT_O10		BIT(10)
+#define AFE_CONN_24BIT_O09		BIT(9)
+#define AFE_CONN_24BIT_O06		BIT(6)
+#define AFE_CONN_24BIT_O05		BIT(5)
+#define AFE_CONN_24BIT_O04		BIT(4)
+#define AFE_CONN_24BIT_O03		BIT(3)
+#define AFE_CONN_24BIT_O02		BIT(2)
+#define AFE_CONN_24BIT_O01		BIT(1)
+#define AFE_CONN_24BIT_O00		BIT(0)
+
+/* AFE_ADDA_UL_SRC_CON0 */
+#define AFE_ADDA_UL_RATE_CH1_SHIFT	17
+#define AFE_ADDA_UL_RATE_CH1_MASK	0x3
+#define AFE_ADDA_UL_RATE_CH2_SHIFT	19
+#define AFE_ADDA_UL_RATE_CH2_MASK	0x3
+
+/* AFE_ADDA_DL_SRC2_CON0 (0x0108) */
+#define AFE_ADDA_DL_8X_UPSAMPLE		(BIT(25) | BIT(24))
+#define AFE_ADDA_DL_MUTE_OFF		(BIT(12) | BIT(11))
+#define AFE_ADDA_DL_VOICE_DATA		BIT(5)
+#define AFE_ADDA_DL_DEGRADE_GAIN	BIT(1)
+#define AFE_ADDA_DL_RATE_SHIFT	28
+
+/* AFE_ASRC_CON0 (0x0500) */
+#define AFE_ASRC_CON0_ASM_ON		BIT(0)
+#define AFE_ASRC_CON0_STR_CLR_MASK	GENMASK(6, 4)
+#define AFE_ASRC_CON0_CLR_TX		(0x1 << 4)
+#define AFE_ASRC_CON0_CLR_RX		(0x2 << 4)
+#define AFE_ASRC_CON0_CLR_I2S		(0x4 << 4)
+
+/* AFE_ASRC_CON13 (0x0550) */
+#define AFE_ASRC_CON13_16BIT		BIT(19)
+#define AFE_ASRC_CON13_MONO		BIT(16)
+
+/* AFE_ASRC_CON16 (0x055c) */
+#define AFE_ASRC_CON16_FC2_CYCLE_MASK		GENMASK(31, 16)
+#define AFE_ASRC_CON16_FC2_CYCLE(x)		(((x) - 1) << 16)
+#define AFE_ASRC_CON16_FC2_AUTO_RST		BIT(14)
+#define AFE_ASRC_CON16_TUNE_FREQ5		BIT(12)
+#define AFE_ASRC_CON16_COMP_FREQ_EN		BIT(11)
+#define AFE_ASRC_CON16_FC2_SEL			GENMASK(9, 8)
+#define AFE_ASRC_CON16_FC2_I2S_IN		(0x1 << 8)
+#define AFE_ASRC_CON16_FC2_DGL_BYPASS		BIT(7)
+#define AFE_ASRC_CON16_FC2_AUTO_RESTART		BIT(2)
+#define AFE_ASRC_CON16_FC2_FREQ			BIT(1)
+#define AFE_ASRC_CON16_FC2_EN			BIT(0)
+
+/* AFE_ADDA_NEWIF_CFG0 (0x0138) */
+#define AFE_ADDA_NEWIF_ADC_VOICE_MODE_SHIFT	10
+#define AFE_ADDA_NEWIF_ADC_VOICE_MODE_CLR	(0x3 << 10)
+
+/* AFE_SPDIF_IN */
+#define SPDIFIN_BASE_ADR			(0x0994)
+#define SPDIFIN_CUR_ADR				(0x09B8)
+
+#endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
