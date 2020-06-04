Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5630A1EDB7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 05:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=u7yFddiwD2bgL7FT/ovuooI/Tp9wPAP51V2kLsGpr8A=; b=Wzh
	2V2b6szJCvuriXSWVgSto/gL8qsZvaBoh7cuIOu7gpxWdqjRyiaqrhRE0UvP6x7bx4lLxG/SreoJZ
	i1KXMb3uJLoNhpGh6QyQ2U7ZGlorwJoffZMTBwPXR63zK4wn9daNlCUq8Shc9UQ1jaQtOZdLsiZlV
	Mln4zU0Vdj+TkxCYyF1dcmDomTScCzvZmezsD03ThsQAtIXUZqM9epnKWxoxQVc4o1qj1abC0FLti
	OZf+VxRVp6ysGX8Q0oTJlmPefDKUOduVQzPE6edldPMCk3/rAeAIrZFBwFAh7e8D6CpEKMM36kbAt
	7kMwcR1eg+wvgz6aaVSRXsThhHkqPBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgg7f-0002SR-IJ; Thu, 04 Jun 2020 03:00:51 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgg7V-0002RS-Fy; Thu, 04 Jun 2020 03:00:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id bg4so1560854plb.3;
 Wed, 03 Jun 2020 20:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rvoDIIl5z0n16meNfRzw9Gjbe2Xf7lFIgU9VANFdy6g=;
 b=iNLBAQWdtLSGF0pzNMZZCggGpoHSX3jk1ddZTsoxJH/yRxtvVty9KusQm+rN/thckI
 A6siMRoXNYTjLacRmppa/+zrCTZTAUChhnRyE695tkienwOu3dKyK/bJO/oQhBz/Kgrz
 veqpgMBxc6S4J9cCrqIZ2RnM8HkO9BvebB793B/jy5sRQAiANgzz9HWhwo/S8Zv2yuLf
 fIJrYBWm/vvTFdbnYbZ50AS2hddT8zEP/fFzdz2tbxYxq1CXME+iNsiyLREigmGRSRDL
 5ev/6CSrw5utYWlYxaMxJyehLsCT2/mCAdUM2/wXYq62v1TRjGvoUsGxm6DS0y0Eeg9S
 c+SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rvoDIIl5z0n16meNfRzw9Gjbe2Xf7lFIgU9VANFdy6g=;
 b=WkI+NdEwRXEMBhCZBTfXSxoaggQt6GngarS5Vj4eLxQ7AfHi3DdDX6jahYVSrWlKMs
 w/pR19Nx8tVqV/UfmFatNQBY91LKSjM93jt3N35IPwEMM8u/BO/1FDlHgo0Gfk4NZf5r
 XiySYdFyntlp48Gu2q1SNLgEavSz1z7ousqrQ3w/n1x7fUzAzDuDEb/HPJBNrOLVL+DH
 0X9Ic5Bqpz6WIW+Xkyt4DOM+fpMS9+cKo/1Hf1lOCFsEB3e9dQp9VFnX+A3WFJgbCPXW
 Y23XrdCVBQjMclYL8q9Gr2K4s+dz8tTwpmGUOlClFL3J2+If7+gOdRqyWOhQV9L4Cmi7
 Dy+A==
X-Gm-Message-State: AOAM532tegLnHLA/YB9D/joihl+cf0qa0PZIpAOS9qZVvN29Vxoyi2Vi
 fp+LKVEpsqqQN7HG4z+mTlE=
X-Google-Smtp-Source: ABdhPJz1CguSaUBOl6g0rqYi7h7z2Vv7gTgaHdJgoKxTlIpRaB9E7yD6tximIXAdNof76TZGHqad5A==
X-Received: by 2002:a17:90b:882:: with SMTP id
 bj2mr3644938pjb.122.1591239640400; 
 Wed, 03 Jun 2020 20:00:40 -0700 (PDT)
Received: from localhost.localdomain ([2402:7500:423:4ec5:e9c9:abd8:b2f5:5149])
 by smtp.gmail.com with ESMTPSA id w5sm2969750pfn.22.2020.06.03.20.00.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jun 2020 20:00:39 -0700 (PDT)
From: Gene Chen <gene.chen.richtek@gmail.com>
To: jic23@kernel.org,
	matthias.bgg@gmail.com
Subject: [PATCH] iio: adc: mt6360: Add ADC driver for MT6360
Date: Thu,  4 Jun 2020 11:00:31 +0800
Message-Id: <1591239631-12265-1-git-send-email-gene.chen.richtek@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_200041_532680_1115BC63 
X-CRM114-Status: GOOD (  18.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gene.chen.richtek[at]gmail.com]
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
Cc: gene_chen@richtek.com, lars@metafoo.de, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, cy_huang@richtek.com, benjamin.chao@mediatek.com,
 linux-mediatek@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gene Chen <gene_chen@richtek.com>

Add MT6360 ADC driver include Charger Current, Voltage, and
Temperature.

Signed-off-by: Gene Chen <gene_chen@richtek.com>
base-commit: 098c4adf249c198519a4abebe482b1e6b8c50e47
---
 drivers/iio/adc/Kconfig      |  11 ++
 drivers/iio/adc/Makefile     |   1 +
 drivers/iio/adc/mt6360-adc.c | 419 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 431 insertions(+)
 create mode 100644 drivers/iio/adc/mt6360-adc.c

diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
index 12bb8b7..a9736ec 100644
--- a/drivers/iio/adc/Kconfig
+++ b/drivers/iio/adc/Kconfig
@@ -657,6 +657,17 @@ config MCP3911
 	  This driver can also be built as a module. If so, the module will be
 	  called mcp3911.
 
+config MEDIATEK_MT6360_ADC
+	tristate "Mediatek MT6360 ADC Part"
+	depends on MFD_MT6360
+	select IIO_BUFFER
+	select IIO_KFIFO_BUF
+	help
+	  Say Y here to enable MT6360 ADC Part.
+	  Integrated for System Monitoring include
+	  Charger and Battery Current, Voltage and
+	  Terperature
+
 config MEDIATEK_MT6577_AUXADC
 	tristate "MediaTek AUXADC driver"
 	depends on ARCH_MEDIATEK || COMPILE_TEST
diff --git a/drivers/iio/adc/Makefile b/drivers/iio/adc/Makefile
index 6378078..4209776 100644
--- a/drivers/iio/adc/Makefile
+++ b/drivers/iio/adc/Makefile
@@ -62,6 +62,7 @@ obj-$(CONFIG_MAX9611) += max9611.o
 obj-$(CONFIG_MCP320X) += mcp320x.o
 obj-$(CONFIG_MCP3422) += mcp3422.o
 obj-$(CONFIG_MCP3911) += mcp3911.o
+obj-$(CONFIG_MEDIATEK_MT6360_ADC) += mt6360-adc.o
 obj-$(CONFIG_MEDIATEK_MT6577_AUXADC) += mt6577_auxadc.o
 obj-$(CONFIG_MEN_Z188_ADC) += men_z188_adc.o
 obj-$(CONFIG_MESON_SARADC) += meson_saradc.o
diff --git a/drivers/iio/adc/mt6360-adc.c b/drivers/iio/adc/mt6360-adc.c
new file mode 100644
index 0000000..bc9c488
--- /dev/null
+++ b/drivers/iio/adc/mt6360-adc.c
@@ -0,0 +1,419 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2020 MediaTek Inc.
+ *
+ * Author: Gene Chen <gene_chen@richtek.com>
+ */
+
+#include <linux/completion.h>
+#include <linux/iio/iio.h>
+#include <linux/iio/buffer.h>
+#include <linux/iio/kfifo_buf.h>
+#include <linux/init.h>
+#include <linux/irq.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/kthread.h>
+#include <linux/ktime.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#include <linux/mfd/mt6360.h>
+
+/* CHG_CTRL3 0x13 */
+#define MT6360_AICR_MASK	(0xFC)
+#define MT6360_AICR_SHFT	(2)
+#define MT6360_AICR_400MA	(0x6)
+/* ADC_CONFIG 0x56 */
+#define MT6360_ADCEN_SHFT	(7)
+/* ADC_RPT_1 0x5A */
+#define MT6360_PREFERCH_MASK	(0xF0)
+#define MT6360_PREFERCH_SHFT	(4)
+#define MT6360_RPTCH_MASK	(0x0F)
+
+enum {
+	MT6360_CHAN_USBID = 0,
+	MT6360_CHAN_VBUSDIV5,
+	MT6360_CHAN_VBUSDIV2,
+	MT6360_CHAN_VSYS,
+	MT6360_CHAN_VBAT,
+	MT6360_CHAN_IBUS,
+	MT6360_CHAN_IBAT,
+	MT6360_CHAN_CHG_VDDP,
+	MT6360_CHAN_TEMP_JC,
+	MT6360_CHAN_VREF_TS,
+	MT6360_CHAN_TS,
+	MT6360_CHAN_MAX,
+};
+
+struct mt6360_adc_data {
+	struct device *dev;
+	struct regmap *regmap;
+	struct task_struct *scan_task;
+	struct completion adc_complete;
+	struct mutex adc_lock;
+	ktime_t last_off_timestamps[MT6360_CHAN_MAX];
+	int irq;
+};
+
+static inline int mt6360_adc_val_converte(int val, int multiplier,
+					   int offset, int divisor)
+{
+	return ((val * multiplier) + offset) / divisor;
+}
+
+static int mt6360_adc_get_process_val(struct mt6360_adc_data *info,
+				      int chan_idx, int *val)
+{
+	unsigned int regval = 0;
+	int ret;
+	const struct converter {
+		int multiplier;
+		int offset;
+		int divisor;
+	} adc_converter[MT6360_CHAN_MAX] = {
+		{ 1250, 0, 1}, /* USBID */
+		{ 6250, 0, 1}, /* VBUSDIV5 */
+		{ 2500, 0, 1}, /* VBUSDIV2 */
+		{ 1250, 0, 1}, /* VSYS */
+		{ 1250, 0, 1}, /* VBAT */
+		{ 2500, 0, 1}, /* IBUS */
+		{ 2500, 0, 1}, /* IBAT */
+		{ 1250, 0, 1}, /* CHG_VDDP */
+		{ 105, -8000, 100}, /* TEMP_JC */
+		{ 1250, 0, 1}, /* VREF_TS */
+		{ 1250, 0, 1}, /* TS */
+	}, sp_ibus_adc_converter = { 1900, 0, 1 }, *sel_converter;
+
+	if (chan_idx < 0 || chan_idx >= MT6360_CHAN_MAX)
+		return -EINVAL;
+	sel_converter = adc_converter + chan_idx;
+	if (chan_idx == MT6360_CHAN_IBUS) {
+		/* ibus chan will be affected by aicr config */
+		/* if aicr < 400, apply the special ibus converter */
+		ret = regmap_read(info->regmap, MT6360_PMU_CHG_CTRL3, &regval);
+		if (ret < 0)
+			return ret;
+		regval = (regval & MT6360_AICR_MASK) >> MT6360_AICR_SHFT;
+		if (regval < MT6360_AICR_400MA)
+			sel_converter = &sp_ibus_adc_converter;
+	}
+	*val = mt6360_adc_val_converte(*val, sel_converter->multiplier,
+				 sel_converter->offset, sel_converter->divisor);
+	return 0;
+}
+
+static int mt6360_adc_read_raw(struct iio_dev *iio_dev,
+			       const struct iio_chan_spec *chan,
+			       int *val, int *val2, long mask)
+{
+	struct mt6360_adc_data *mad = iio_priv(iio_dev);
+	long timeout;
+	u8 tmp[2], rpt[3];
+	ktime_t start_t, predict_end_t;
+	int ret;
+
+	mutex_lock(&mad->adc_lock);
+	/* select preferred channel that we want */
+	ret = regmap_update_bits(mad->regmap,
+				 MT6360_PMU_ADC_RPT_1, MT6360_PREFERCH_MASK,
+				 chan->channel << MT6360_PREFERCH_SHFT);
+	if (ret < 0)
+		goto err_adc_init;
+	/* enable adc channel we want and adc_en */
+	memset(tmp, 0, sizeof(tmp));
+	tmp[0] |= BIT(MT6360_ADCEN_SHFT);
+	tmp[(chan->channel / 8) ? 0 : 1] |= BIT(chan->channel % 8);
+	ret = regmap_bulk_write(mad->regmap,
+				MT6360_PMU_ADC_CONFIG, tmp, sizeof(tmp));
+	if (ret < 0)
+		goto err_adc_init;
+	start_t = ktime_get();
+	predict_end_t = ktime_add_ms(
+				   mad->last_off_timestamps[chan->channel], 50);
+	if (ktime_after(start_t, predict_end_t))
+		predict_end_t = ktime_add_ms(start_t, 25);
+	else
+		predict_end_t = ktime_add_ms(start_t, 75);
+	enable_irq(mad->irq);
+retry:
+	reinit_completion(&mad->adc_complete);
+	/* wait for conversion to complete */
+	timeout = wait_for_completion_interruptible_timeout(
+				     &mad->adc_complete, msecs_to_jiffies(200));
+	if (timeout == 0) {
+		ret = -ETIMEDOUT;
+		goto err_adc_conv;
+	} else if (timeout < 0) {
+		ret = -EINTR;
+		goto err_adc_conv;
+	}
+	memset(rpt, 0, sizeof(rpt));
+	ret = regmap_bulk_read(mad->regmap,
+			       MT6360_PMU_ADC_RPT_1, rpt, sizeof(rpt));
+	if (ret < 0)
+		goto err_adc_conv;
+	/* get report channel */
+	if ((rpt[0] & MT6360_RPTCH_MASK) != chan->channel) {
+		dev_dbg(&iio_dev->dev,
+			"not wanted channel report [%02x]\n", rpt[0]);
+		goto retry;
+	}
+	if (!ktime_after(ktime_get(), predict_end_t)) {
+		dev_dbg(&iio_dev->dev, "time is not after 26ms chan_time\n");
+		goto retry;
+	}
+	switch (mask) {
+	case IIO_CHAN_INFO_RAW:
+		*val = (rpt[1] << 8) | rpt[2];
+		break;
+	case IIO_CHAN_INFO_PROCESSED:
+		*val = (rpt[1] << 8) | rpt[2];
+		ret = mt6360_adc_get_process_val(mad, chan->channel, val);
+		if (ret < 0)
+			goto err_adc_conv;
+		break;
+	default:
+		break;
+	}
+	ret = IIO_VAL_INT;
+err_adc_conv:
+	disable_irq(mad->irq);
+	/* whatever disable all channel and keep adc_en*/
+	memset(tmp, 0, sizeof(tmp));
+	tmp[0] |= BIT(MT6360_ADCEN_SHFT);
+	regmap_bulk_write(mad->regmap, MT6360_PMU_ADC_CONFIG, tmp, sizeof(tmp));
+	mad->last_off_timestamps[chan->channel] = ktime_get();
+	/* set prefer channel to 0xf */
+	regmap_update_bits(mad->regmap, MT6360_PMU_ADC_RPT_1,
+			   MT6360_PREFERCH_MASK, 0xF << MT6360_PREFERCH_SHFT);
+err_adc_init:
+	mutex_unlock(&mad->adc_lock);
+	return ret;
+}
+
+static const struct iio_info mt6360_adc_iio_info = {
+	.read_raw = mt6360_adc_read_raw,
+};
+
+#define MT6360_ADC_CHAN(_idx, _type) {				\
+	.type = _type,						\
+	.channel = MT6360_CHAN_##_idx,				\
+	.scan_index = MT6360_CHAN_##_idx,			\
+	.scan_type =  {						\
+		.sign = 's',					\
+		.realbits = 32,					\
+		.storagebits = 32,				\
+		.shift = 0,					\
+		.endianness = IIO_CPU,				\
+	},							\
+	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |		\
+				BIT(IIO_CHAN_INFO_PROCESSED),	\
+	.datasheet_name = #_idx,				\
+	.indexed = 1,						\
+}
+
+static const struct iio_chan_spec mt6360_adc_channels[] = {
+	MT6360_ADC_CHAN(USBID, IIO_VOLTAGE),
+	MT6360_ADC_CHAN(VBUSDIV5, IIO_VOLTAGE),
+	MT6360_ADC_CHAN(VBUSDIV2, IIO_VOLTAGE),
+	MT6360_ADC_CHAN(VSYS, IIO_VOLTAGE),
+	MT6360_ADC_CHAN(VBAT, IIO_VOLTAGE),
+	MT6360_ADC_CHAN(IBUS, IIO_CURRENT),
+	MT6360_ADC_CHAN(IBAT, IIO_CURRENT),
+	MT6360_ADC_CHAN(CHG_VDDP, IIO_VOLTAGE),
+	MT6360_ADC_CHAN(TEMP_JC, IIO_TEMP),
+	MT6360_ADC_CHAN(VREF_TS, IIO_VOLTAGE),
+	MT6360_ADC_CHAN(TS, IIO_VOLTAGE),
+	IIO_CHAN_SOFT_TIMESTAMP(MT6360_CHAN_MAX),
+};
+
+static irqreturn_t mt6360_pmu_adc_donei_handler(int irq, void *data)
+{
+	struct mt6360_adc_data *mad = iio_priv(data);
+
+	complete(&mad->adc_complete);
+	return IRQ_HANDLED;
+}
+
+static int mt6360_adc_scan_task_threadfn(void *data)
+{
+	struct mt6360_adc_data *mad = data;
+	struct iio_dev *indio_dev = iio_priv_to_dev(mad);
+	int channel_vals[MT6360_CHAN_MAX];
+	int i, bit, var = 0;
+	int ret;
+
+	while (!kthread_should_stop()) {
+		memset(channel_vals, 0, sizeof(channel_vals));
+		i = 0;
+		for_each_set_bit(bit, indio_dev->active_scan_mask,
+				 indio_dev->masklength) {
+			ret = mt6360_adc_read_raw(indio_dev,
+						  mt6360_adc_channels + bit,
+						  &var, NULL,
+						  IIO_CHAN_INFO_PROCESSED);
+			if (ret < 0)
+				dev_err(mad->dev, "get adc[%d] fail\n", bit);
+			channel_vals[i++] = var;
+			if (kthread_should_stop())
+				goto out;
+		}
+		iio_push_to_buffers_with_timestamp(indio_dev, channel_vals,
+						   iio_get_time_ns(indio_dev));
+	}
+out:
+	do_exit(0);
+	return 0;
+}
+
+static int mt6360_adc_iio_post_enable(struct iio_dev *iio_dev)
+{
+	struct mt6360_adc_data *mad = iio_priv(iio_dev);
+
+	mad->scan_task = kthread_run(mt6360_adc_scan_task_threadfn, mad,
+				     "scan_thread.%s", dev_name(&iio_dev->dev));
+	return PTR_ERR_OR_ZERO(mad->scan_task);
+}
+
+static int mt6360_adc_iio_pre_disable(struct iio_dev *iio_dev)
+{
+	struct mt6360_adc_data *mad = iio_priv(iio_dev);
+
+	if (mad->scan_task) {
+		kthread_stop(mad->scan_task);
+		mad->scan_task = NULL;
+	}
+	return 0;
+}
+
+static const struct iio_buffer_setup_ops mt6360_adc_iio_setup_ops = {
+	.postenable = mt6360_adc_iio_post_enable,
+	.predisable = mt6360_adc_iio_pre_disable,
+};
+
+static int mt6360_adc_iio_device_register(struct iio_dev *indio_dev)
+{
+	struct mt6360_adc_data *mad = iio_priv(indio_dev);
+	struct iio_buffer *buffer;
+	int ret;
+
+	indio_dev->name = dev_name(mad->dev);
+	indio_dev->dev.parent = mad->dev;
+	indio_dev->dev.of_node = mad->dev->of_node;
+	indio_dev->info = &mt6360_adc_iio_info;
+	indio_dev->channels = mt6360_adc_channels;
+	indio_dev->num_channels = ARRAY_SIZE(mt6360_adc_channels);
+	indio_dev->modes = INDIO_DIRECT_MODE | INDIO_BUFFER_SOFTWARE;
+	indio_dev->setup_ops = &mt6360_adc_iio_setup_ops;
+	buffer = devm_iio_kfifo_allocate(mad->dev);
+	if (!buffer)
+		return -ENOMEM;
+	iio_device_attach_buffer(indio_dev, buffer);
+	ret = devm_iio_device_register(mad->dev, indio_dev);
+	if (ret < 0) {
+		dev_err(mad->dev, "Failed to register iio device\n");
+		return ret;
+	}
+	return 0;
+}
+
+static inline int mt6360_adc_reset(struct mt6360_adc_data *info)
+{
+	u8 tmp[3] = {0x80, 0, 0};
+	ktime_t all_off_time;
+	int i;
+
+	all_off_time = ktime_get();
+	for (i = 0; i < MT6360_CHAN_MAX; i++)
+		info->last_off_timestamps[i] = all_off_time;
+	/* enable adc_en, clear adc_chn_en/zcv/en/adc_wait_t/adc_idle_t */
+	return regmap_bulk_write(info->regmap,
+				 MT6360_PMU_ADC_CONFIG, tmp, sizeof(tmp));
+}
+
+static int mt6360_adc_probe(struct platform_device *pdev)
+{
+	struct mt6360_adc_data *mad;
+	struct iio_dev *indio_dev;
+	int ret;
+
+	indio_dev = devm_iio_device_alloc(&pdev->dev, sizeof(*mad));
+	if (!indio_dev)
+		return -ENOMEM;
+
+	mad = iio_priv(indio_dev);
+	mad->dev = &pdev->dev;
+	init_completion(&mad->adc_complete);
+	mutex_init(&mad->adc_lock);
+	platform_set_drvdata(pdev, indio_dev);
+
+	mad->regmap = dev_get_regmap(pdev->dev.parent, NULL);
+	if (!mad->regmap) {
+		dev_err(&pdev->dev, "Failed to get parent regmap\n");
+		return -ENODEV;
+	}
+
+	ret = mt6360_adc_reset(mad);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Failed to reset adc\n");
+		return ret;
+	}
+
+	ret = mt6360_adc_iio_device_register(indio_dev);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Failed to register iio device\n");
+		return ret;
+	}
+
+	mad->irq = platform_get_irq_byname(pdev, "adc_donei");
+	if (mad->irq < 0) {
+		dev_err(&pdev->dev, "Failed to get adc_done irq\n");
+		return mad->irq;
+	}
+
+	irq_set_status_flags(mad->irq, IRQ_NOAUTOEN);
+	ret = devm_request_threaded_irq(&pdev->dev, mad->irq, NULL,
+					mt6360_pmu_adc_donei_handler,
+					IRQF_TRIGGER_FALLING, "adc_donei",
+					platform_get_drvdata(pdev));
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Failed to register adc_done irq\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int mt6360_adc_remove(struct platform_device *pdev)
+{
+	struct mt6360_adc_data *mad = platform_get_drvdata(pdev);
+
+	if (mad->scan_task)
+		kthread_stop(mad->scan_task);
+
+	return 0;
+}
+
+static const struct of_device_id __maybe_unused mt6360_adc_of_id[] = {
+	{ .compatible = "mediatek,mt6360_adc", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, mt6360_adc_of_id);
+
+static struct platform_driver mt6360_adc_driver = {
+	.driver = {
+		.name = "mt6360_adc",
+		.owner = THIS_MODULE,
+		.of_match_table = of_match_ptr(mt6360_adc_of_id),
+	},
+	.probe = mt6360_adc_probe,
+	.remove = mt6360_adc_remove,
+};
+module_platform_driver(mt6360_adc_driver);
+
+MODULE_AUTHOR("Gene Chen <gene_chen@richtek.com>");
+MODULE_DESCRIPTION("MT6360 ADC Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
