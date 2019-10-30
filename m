Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C4FE997F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LnynwG6HtI3++8+dcnHOFV6jjdbmRUM6JCUUyh0AFG4=; b=HVhRsz3td5hd9dqDqXnv2kE++g
	VLH44edwJTYaQOrE/PMh4q4C4Thesp/xq41eGMePRGjeHBSSUYgWrZa9Fq8Y8zJxiypfXVvG29Yyw
	M54uuPZS+3J6ajAFTAVoEeqOnWnmoaRrnynBEt7LVrS+0TJ5z2nBluGPJKSUl09cOeZeYGfibuPaS
	MMQUH9Ad6piKDBnbA3QjaV0SYX7DlySPJwi5tx5+YcZcd99f8xiQVEvdpqcrWTh7ri7fd55FLQPYZ
	RggDW0Em+0PWbZr4MeKpoB/EtlXBg4/iY5Pf+W4xd2AYf8kH8c6a14F8jnNFSycqqc1jiMoxnOgyN
	98y7AOcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPkd5-0001eb-EU; Wed, 30 Oct 2019 09:51:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkcb-0001MA-35
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:50:38 +0000
Received: by mail-pg1-x541.google.com with SMTP id p1so1141248pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 02:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CD4zZK6DI50QJCoBVdHvoH3LrnzHJkB8e0m8BKazheA=;
 b=cw6nrtgwUbwJfEdgyiqeRILIYJG3lKh/d1hgcxFswustpmIezHPa2FEqJZEwB6S55v
 zoCqukiiAChQjZguz+Um6NZvHOAwe1GlBcOhvVya4ndcviKU7/28kZAvBnv1G5W6T6QG
 H++cQXCEAWidom4uIYP2l2us30ZuxGCC63OWMNo4d0Lrv8chJWeiIYbSZkifJpiqPI1j
 klZsbMqhsJXsr1aJEQq4oCnPTM/K8mDBVOtiyVFmonMKmiOyd0RuHAOmgrozp6hT+/FR
 Xbc9vtr0PURxothap8NFH7AIOE+veLr8q1ZUOO4BqBWTYr1D1dIQhuC3zUYfexIh1vit
 GxDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CD4zZK6DI50QJCoBVdHvoH3LrnzHJkB8e0m8BKazheA=;
 b=p2sW5c3fiE1TvwPiUA+FOklZroO67J4OWSxQrIQsuE7B2/02VRCQJap3D7FoTebp3H
 ZcRkAX6QPG+dS0hSU6+jSLxyhYr8MRoWL5We2VhlQkTZv8r+CnkrhVd943CDCUKC7SC4
 3Rp1Qr+KSFNDiwITFKqJMiPIeZLNoTQmW9a0PDQpkXATfIYzAFQ5h5NJi7OMa1XDHsih
 QhNBMfM1fmrltFiqEQoVpmrsFntqx3u7QcrQVBGzVkt8Z4WfONzVxtgb04gKsCgumQD6
 SjxRg+OYEEWyyqQwWsKP4OP3AUh+wm7hz2S7weCo4C/hF6HryEB/VDrSj3GM2YiwDUFl
 TYAw==
X-Gm-Message-State: APjAAAXlkD1Oeo47fTJeqf7v7S4g7hcE32up4OpBGhxnRBXG2qI/F+7y
 Yu7HwbGS5xhEWkE+TnnP+MlMaTN2TQ==
X-Google-Smtp-Source: APXvYqxsNMKWO24IYM7Gde4fDRpTiT4j1uuv87Gsg5ZIW5yetrF0d9U7BGPRfPuKWQ84E0p1dK99Ng==
X-Received: by 2002:a63:a05c:: with SMTP id u28mr34337162pgn.333.1572429030813; 
 Wed, 30 Oct 2019 02:50:30 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
 by smtp.gmail.com with ESMTPSA id n23sm2301329pff.137.2019.10.30.02.50.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 02:50:30 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v4 2/2] media: i2c: Add IMX296 CMOS image sensor driver
Date: Wed, 30 Oct 2019 15:19:02 +0530
Message-Id: <20191030094902.32582-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_025033_378631_4F98742B 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add driver for Sony IMX296 CMOS image sensor driver. The driver only
supports I2C interface for programming and MIPI CSI-2 for sensor output.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/Kconfig  |  11 +
 drivers/media/i2c/Makefile |   1 +
 drivers/media/i2c/imx296.c | 715 +++++++++++++++++++++++++++++++++++++
 3 files changed, 727 insertions(+)
 create mode 100644 drivers/media/i2c/imx296.c

diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
index 7eee1812bba3..930db46fa2b8 100644
--- a/drivers/media/i2c/Kconfig
+++ b/drivers/media/i2c/Kconfig
@@ -598,6 +598,17 @@ config VIDEO_IMX274
 	  This is a V4L2 sensor driver for the Sony IMX274
 	  CMOS image sensor.
 
+config VIDEO_IMX296
+	tristate "Sony IMX296 sensor support"
+	depends on I2C && VIDEO_V4L2 && VIDEO_V4L2_SUBDEV_API
+	select V4L2_FWNODE
+	help
+	  This is a Video4Linux2 sensor driver for the Sony
+	  IMX296 camera sensor.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called imx296.
+
 config VIDEO_IMX319
 	tristate "Sony IMX319 sensor support"
 	depends on I2C && VIDEO_V4L2 && VIDEO_V4L2_SUBDEV_API
diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
index beb170b002dc..ed0c02bda450 100644
--- a/drivers/media/i2c/Makefile
+++ b/drivers/media/i2c/Makefile
@@ -112,6 +112,7 @@ obj-$(CONFIG_VIDEO_TC358743)	+= tc358743.o
 obj-$(CONFIG_VIDEO_IMX214)	+= imx214.o
 obj-$(CONFIG_VIDEO_IMX258)	+= imx258.o
 obj-$(CONFIG_VIDEO_IMX274)	+= imx274.o
+obj-$(CONFIG_VIDEO_IMX296)	+= imx296.o
 obj-$(CONFIG_VIDEO_IMX319)	+= imx319.o
 obj-$(CONFIG_VIDEO_IMX355)	+= imx355.o
 obj-$(CONFIG_VIDEO_ST_MIPID02) += st-mipid02.o
diff --git a/drivers/media/i2c/imx296.c b/drivers/media/i2c/imx296.c
new file mode 100644
index 000000000000..1e510c42c117
--- /dev/null
+++ b/drivers/media/i2c/imx296.c
@@ -0,0 +1,715 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Sony IMX296 CMOS Image Sensor Driver
+ *
+ * Copyright (C) 2019 FRAMOS GmbH.
+ *
+ * Copyright (C) 2019 Linaro Ltd.
+ * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+ */
+
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <media/media-entity.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-fwnode.h>
+#include <media/v4l2-subdev.h>
+
+#define IMX296_STANDBY 0x3000
+#define IMX296_REGHOLD 0x3008
+#define IMX296_XMSTA 0x300a
+#define IMX296_GAIN_LOW 0x3204
+#define IMX296_GAIN_HIGH 0x3205
+
+#define IMX296_DEFAULT_FORMAT MEDIA_BUS_FMT_SRGGB10_1X10
+
+static const char * const imx296_supply_name[] = {
+	"vdda",
+	"vddd",
+	"vddo",
+};
+
+#define IMX296_NUM_SUPPLIES ARRAY_SIZE(imx296_supply_name)
+
+struct imx296_regval {
+	u16 reg;
+	u8 val;
+};
+
+struct imx296_mode {
+	u32 width;
+	u32 height;
+	u32 pixel_rate;
+
+	const struct imx296_regval *data;
+	u32 data_size;
+};
+
+struct imx296 {
+	struct device *dev;
+	struct clk *mclk;
+	struct regmap *regmap;
+
+	struct v4l2_subdev sd;
+	struct media_pad pad;
+	struct v4l2_mbus_framefmt current_format;
+	const struct imx296_mode *current_mode;
+
+	struct regulator_bulk_data supplies[IMX296_NUM_SUPPLIES];
+	struct gpio_desc *rst_gpio;
+
+	struct v4l2_ctrl_handler ctrls;
+	struct v4l2_ctrl *pixel_rate;
+
+	struct mutex lock;
+};
+
+static const struct regmap_config imx296_regmap_config = {
+	.reg_bits = 16,
+	.val_bits = 8,
+	.cache_type = REGCACHE_RBTREE,
+};
+
+static const struct imx296_regval imx296_global_init_settings[] = {
+	{ 0x3a00, 0x80 },
+	{ 0x3005, 0xf0 },
+	{ 0x350b, 0x0f },
+	{ 0x300d, 0x00 },
+	{ 0x400e, 0x58 },
+	{ 0x3010, 0x5e },
+	{ 0x3011, 0x04 },
+	{ 0x3014, 0x4c },
+	{ 0x4014, 0x1c },
+	{ 0x3015, 0x04 },
+	{ 0x3516, 0x77 },
+	{ 0x321a, 0x00 },
+	{ 0x3226, 0x02 },
+	{ 0x3832, 0xf5 },
+	{ 0x3833, 0x00 },
+	{ 0x3541, 0x72 },
+	{ 0x4041, 0x2a },
+	{ 0x3d48, 0xa3 },
+	{ 0x3d49, 0x00 },
+	{ 0x3d4a, 0x85 },
+	{ 0x3d4b, 0x00 },
+	{ 0x3256, 0x01 },
+	{ 0x3758, 0xa3 },
+	{ 0x3759, 0x00 },
+	{ 0x375a, 0x85 },
+	{ 0x375b, 0x00 },
+	{ 0x3165, 0x00 },
+	{ 0x3169, 0x10 },
+	{ 0x316a, 0x02 },
+	{ 0x4174, 0x00 },
+	{ 0x3079, 0x08 },
+	{ 0x3090, 0x04 },
+	{ 0x3094, 0x04 },
+	{ 0x3098, 0x04 },
+	{ 0x309e, 0x04 },
+	{ 0x30a0, 0x04 },
+	{ 0x30a1, 0x3c },
+	{ 0x38a2, 0xf6 },
+	{ 0x40a2, 0x06 },
+	{ 0x38a3, 0x00 },
+	{ 0x30a4, 0x5f },
+	{ 0x30a8, 0x91 },
+	{ 0x30ac, 0x28 },
+	{ 0x30af, 0x09 },
+	{ 0x40c1, 0xf6 },
+	{ 0x40c7, 0x0f },
+	{ 0x31c8, 0xf3 },
+	{ 0x40c8, 0x00 },
+	{ 0x31d0, 0xf4 },
+	{ 0x30df, 0x00 },
+};
+
+static const struct imx296_regval imx296_1440_1088_settings[] = {
+	{ 0x300d, 0x00 },
+	{ 0x3010, 0xcb },
+	{ 0x3011, 0x08 },
+	{ 0x3014, 0x4c },
+	{ 0x3015, 0x04 },
+	{ 0x3300, 0x03 },
+	{ 0x3310, 0x08 },
+	{ 0x3311, 0x00 },
+	{ 0x3312, 0x00 },
+	{ 0x3313, 0x00 },
+	{ 0x3314, 0xa0 },
+	{ 0x3315, 0x05 },
+	{ 0x3316, 0x40 },
+	{ 0x3317, 0x04 },
+
+	{ 0x3204, 0x00 },
+	{ 0x3205, 0x00 },
+	{ 0x3212, 0x08 },
+	{ 0x3254, 0x3c },
+	{ 0x3255, 0x00 },
+	{ 0x3089, 0x80 },
+	{ 0x308a, 0x0b },
+	{ 0x308b, 0x80 },
+	{ 0x308c, 0x08 },
+	{ 0x418c, 0x74 },
+	{ 0x308d, 0x0e },
+	{ 0x308e, 0x00 },
+	{ 0x308f, 0x00 },
+};
+
+/* Mode configs */
+static const struct imx296_mode imx296_modes[] = {
+	{
+		.width = 1440,
+		.height = 1088,
+		.data = imx296_1440_1088_settings,
+		.data_size = ARRAY_SIZE(imx296_1440_1088_settings),
+		.pixel_rate = 80000000,
+	},
+};
+
+static inline struct imx296 *to_imx296(struct v4l2_subdev *_sd)
+{
+	return container_of(_sd, struct imx296, sd);
+}
+
+static inline int imx296_read_reg(struct imx296 *imx296, u16 addr, u8 *value)
+{
+	unsigned int regval;
+	int ret;
+
+	ret = regmap_read(imx296->regmap, addr, &regval);
+	if (ret) {
+		dev_err(imx296->dev, "I2C read failed for addr: %x\n", addr);
+		return ret;
+	}
+
+	*value = regval & 0xff;
+
+	return 0;
+}
+
+static int imx296_write_reg(struct imx296 *imx296, u16 addr, u8 value)
+{
+	int ret;
+
+	ret = regmap_write(imx296->regmap, addr, value);
+	if (ret) {
+		dev_err(imx296->dev, "I2C write failed for addr: %x\n", addr);
+		return ret;
+	}
+
+	return ret;
+}
+
+static int imx296_set_register_array(struct imx296 *imx296,
+				     const struct imx296_regval *settings,
+				     unsigned int num_settings)
+{
+	unsigned int i;
+	int ret;
+
+	for (i = 0; i < num_settings; ++i, ++settings) {
+		ret = imx296_write_reg(imx296, settings->reg, settings->val);
+		if (ret < 0)
+			return ret;
+	}
+
+	msleep(10);
+
+	return 0;
+}
+
+static int imx296_write_buffered_reg(struct imx296 *imx296, u16 address_low,
+				     u8 nr_regs, u32 value)
+{
+	unsigned int i;
+	int ret;
+
+	ret = imx296_write_reg(imx296, IMX296_REGHOLD, 0x01);
+	if (ret) {
+		dev_err(imx296->dev, "Error setting hold register\n");
+		return ret;
+	}
+
+	for (i = 0; i < nr_regs; i++) {
+		ret = imx296_write_reg(imx296, address_low + i,
+				       (u8)(value >> (i * 8)));
+		if (ret) {
+			dev_err(imx296->dev, "Error writing buffered registers\n");
+			return ret;
+		}
+	}
+
+	ret = imx296_write_reg(imx296, IMX296_REGHOLD, 0x00);
+	if (ret) {
+		dev_err(imx296->dev, "Error setting hold register\n");
+		return ret;
+	}
+
+	return ret;
+}
+
+static inline int imx296_set_gain(struct imx296 *imx296, u32 value)
+{
+	return imx296_write_buffered_reg(imx296, IMX296_GAIN_LOW, 2, value);
+}
+
+/* Stop streaming */
+static int imx296_stop_streaming(struct imx296 *imx296)
+{
+	int ret;
+
+	ret = imx296_write_reg(imx296, IMX296_STANDBY, 0x01);
+	if (ret < 0)
+		return ret;
+
+	msleep(30);
+
+	return imx296_write_reg(imx296, IMX296_XMSTA, 0x01);
+}
+
+static int imx296_set_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct imx296 *imx296 = container_of(ctrl->handler,
+					     struct imx296, ctrls);
+	int ret = 0;
+
+	/* V4L2 controls values will be applied only when power is already up */
+	if (!pm_runtime_get_if_in_use(imx296->dev))
+		return 0;
+
+	switch (ctrl->id) {
+	case V4L2_CID_GAIN:
+		ret = imx296_set_gain(imx296, ctrl->val);
+		break;
+	default:
+		ret = -EINVAL;
+		break;
+	}
+
+	pm_runtime_put(imx296->dev);
+
+	return ret;
+}
+
+static const struct v4l2_ctrl_ops imx296_ctrl_ops = {
+	.s_ctrl = imx296_set_ctrl,
+};
+
+static int imx296_enum_mbus_code(struct v4l2_subdev *sd,
+				 struct v4l2_subdev_pad_config *cfg,
+				 struct v4l2_subdev_mbus_code_enum *code)
+{
+	code->code = IMX296_DEFAULT_FORMAT;
+
+	return 0;
+}
+
+static int imx296_get_fmt(struct v4l2_subdev *sd,
+			  struct v4l2_subdev_pad_config *cfg,
+			  struct v4l2_subdev_format *fmt)
+{
+	struct imx296 *imx296 = to_imx296(sd);
+	struct v4l2_mbus_framefmt *framefmt;
+
+	mutex_lock(&imx296->lock);
+
+	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY)
+		framefmt = v4l2_subdev_get_try_format(&imx296->sd, cfg,
+						      fmt->pad);
+	else
+		framefmt = &imx296->current_format;
+
+	fmt->format = *framefmt;
+
+	mutex_unlock(&imx296->lock);
+
+	return 0;
+}
+
+static int imx296_set_fmt(struct v4l2_subdev *sd,
+			  struct v4l2_subdev_pad_config *cfg,
+			  struct v4l2_subdev_format *fmt)
+{
+	struct imx296 *imx296 = to_imx296(sd);
+	const struct imx296_mode *mode;
+	struct v4l2_mbus_framefmt *format;
+	int ret = 0;
+
+	mutex_lock(&imx296->lock);
+
+	mode = v4l2_find_nearest_size(imx296_modes,
+				      ARRAY_SIZE(imx296_modes),
+				      width, height,
+				      fmt->format.width, fmt->format.height);
+
+	fmt->format.width = mode->width;
+	fmt->format.height = mode->height;
+
+	fmt->format.code = IMX296_DEFAULT_FORMAT;
+	fmt->format.field = V4L2_FIELD_NONE;
+
+	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
+		format = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
+	} else {
+		format = &imx296->current_format;
+		__v4l2_ctrl_s_ctrl_int64(imx296->pixel_rate, mode->pixel_rate);
+
+		imx296->current_mode = mode;
+	}
+
+	*format = fmt->format;
+
+	mutex_unlock(&imx296->lock);
+
+	return ret;
+}
+
+static int imx296_entity_init_cfg(struct v4l2_subdev *subdev,
+				  struct v4l2_subdev_pad_config *cfg)
+{
+	struct v4l2_subdev_format fmt = { 0 };
+
+	fmt.which = cfg ? V4L2_SUBDEV_FORMAT_TRY : V4L2_SUBDEV_FORMAT_ACTIVE;
+	fmt.format.width = 1440;
+	fmt.format.height = 1088;
+
+	imx296_set_fmt(subdev, cfg, &fmt);
+
+	return 0;
+}
+
+/* Start streaming */
+static int imx296_start_streaming(struct imx296 *imx296)
+{
+	int ret;
+
+	/* Set init register settings */
+	ret = imx296_set_register_array(imx296, imx296_global_init_settings,
+				ARRAY_SIZE(imx296_global_init_settings));
+	if (ret < 0) {
+		dev_err(imx296->dev, "Could not set init registers\n");
+		return ret;
+	}
+
+	/* Apply default values of current mode */
+	ret = imx296_set_register_array(imx296, imx296->current_mode->data,
+					imx296->current_mode->data_size);
+	if (ret < 0) {
+		dev_err(imx296->dev, "Could not set current mode\n");
+		return ret;
+	}
+
+	/* Apply customized values from user */
+	ret = v4l2_ctrl_handler_setup(imx296->sd.ctrl_handler);
+	if (ret) {
+		dev_err(imx296->dev, "Could not sync v4l2 controls\n");
+		return ret;
+	}
+
+	ret = imx296_write_reg(imx296, IMX296_STANDBY, 0x00);
+	if (ret < 0)
+		return ret;
+
+	msleep(30);
+
+	/* Start streaming */
+	return imx296_write_reg(imx296, IMX296_XMSTA, 0x00);
+}
+
+static int imx296_set_stream(struct v4l2_subdev *sd, int enable)
+{
+	struct imx296 *imx296 = to_imx296(sd);
+	int ret;
+
+	if (enable) {
+		ret = pm_runtime_get_sync(imx296->dev);
+		if (ret < 0) {
+			pm_runtime_put_noidle(imx296->dev);
+			return ret;
+		}
+
+		ret = imx296_start_streaming(imx296);
+		if (ret) {
+			dev_err(imx296->dev, "Start stream failed\n");
+			pm_runtime_put(imx296->dev);
+			return ret;
+		}
+	} else {
+		imx296_stop_streaming(imx296);
+		pm_runtime_put(imx296->dev);
+	}
+
+	return 0;
+}
+
+static int imx296_get_regulators(struct device *dev, struct imx296 *imx296)
+{
+	unsigned int i;
+
+	for (i = 0; i < IMX296_NUM_SUPPLIES; i++)
+		imx296->supplies[i].supply = imx296_supply_name[i];
+
+	return devm_regulator_bulk_get(dev, IMX296_NUM_SUPPLIES,
+				       imx296->supplies);
+}
+
+static int imx296_power_on(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct imx296 *imx296 = to_imx296(sd);
+	int ret;
+
+	ret = regulator_bulk_enable(IMX296_NUM_SUPPLIES, imx296->supplies);
+	if (ret) {
+		dev_err(imx296->dev, "Failed to enable regulators\n");
+		return ret;
+	}
+
+	usleep_range(1, 2);
+
+	gpiod_set_value_cansleep(imx296->rst_gpio, 1);
+
+	usleep_range(1, 2);
+
+	ret = clk_prepare_enable(imx296->mclk);
+	if (ret) {
+		dev_err(imx296->dev, "Failed to enable clock\n");
+		return ret;
+	}
+
+	usleep_range(30000, 31000);
+
+	return 0;
+}
+
+static int imx296_power_off(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct imx296 *imx296 = to_imx296(sd);
+
+	clk_disable_unprepare(imx296->mclk);
+	gpiod_set_value_cansleep(imx296->rst_gpio, 0);
+	regulator_bulk_disable(IMX296_NUM_SUPPLIES, imx296->supplies);
+
+	return 0;
+}
+
+static const struct dev_pm_ops imx296_pm_ops = {
+	SET_RUNTIME_PM_OPS(imx296_power_on, imx296_power_off, NULL)
+};
+
+static const struct v4l2_subdev_video_ops imx296_video_ops = {
+	.s_stream = imx296_set_stream,
+};
+
+static const struct v4l2_subdev_pad_ops imx296_pad_ops = {
+	.init_cfg = imx296_entity_init_cfg,
+	.enum_mbus_code = imx296_enum_mbus_code,
+	.get_fmt = imx296_get_fmt,
+	.set_fmt = imx296_set_fmt,
+};
+
+static const struct v4l2_subdev_ops imx296_subdev_ops = {
+	.video = &imx296_video_ops,
+	.pad = &imx296_pad_ops,
+};
+
+static const struct media_entity_operations imx296_subdev_entity_ops = {
+	.link_validate = v4l2_subdev_link_validate,
+};
+
+static int imx296_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct fwnode_handle *endpoint;
+	struct imx296 *imx296;
+	struct v4l2_fwnode_endpoint ep = {
+		.bus_type = V4L2_MBUS_CSI2_DPHY
+	};
+	u32 mclk_freq;
+	int ret;
+
+	imx296 = devm_kzalloc(dev, sizeof(*imx296), GFP_KERNEL);
+	if (!imx296)
+		return -ENOMEM;
+
+	imx296->dev = dev;
+	imx296->regmap = devm_regmap_init_i2c(client, &imx296_regmap_config);
+	if (IS_ERR(imx296->regmap)) {
+		dev_err(dev, "Unable to initialize I2C\n");
+		return -ENODEV;
+	}
+
+	endpoint = fwnode_graph_get_next_endpoint(dev_fwnode(dev), NULL);
+	if (!endpoint) {
+		dev_err(dev, "Endpoint node not found\n");
+		return -EINVAL;
+	}
+
+	ret = v4l2_fwnode_endpoint_alloc_parse(endpoint, &ep);
+	fwnode_handle_put(endpoint);
+	if (ret) {
+		dev_err(dev, "Parsing endpoint node failed\n");
+		goto free_err;
+	}
+
+	/* Set default mode to max resolution */
+	imx296->current_mode = &imx296_modes[0];
+
+	/* get system clock (mclk) */
+	imx296->mclk = devm_clk_get(dev, "mclk");
+	if (IS_ERR(imx296->mclk)) {
+		dev_err(dev, "Could not get mclk");
+		ret = PTR_ERR(imx296->mclk);
+		goto free_err;
+	}
+
+	ret = fwnode_property_read_u32(dev_fwnode(dev), "clock-frequency",
+				       &mclk_freq);
+	if (ret) {
+		dev_err(dev, "Could not get mclk frequency\n");
+		goto free_err;
+	}
+
+	/* external clock must be 37.125 MHz */
+	if (mclk_freq != 37125000) {
+		dev_err(dev, "External clock frequency %u is not supported\n",
+			mclk_freq);
+		ret = -EINVAL;
+		goto free_err;
+	}
+
+	ret = clk_set_rate(imx296->mclk, mclk_freq);
+	if (ret) {
+		dev_err(dev, "Could not set mclk frequency\n");
+		goto free_err;
+	}
+
+	ret = imx296_get_regulators(dev, imx296);
+	if (ret < 0) {
+		dev_err(dev, "Cannot get regulators\n");
+		goto free_err;
+	}
+
+	imx296->rst_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_ASIS);
+	if (IS_ERR(imx296->rst_gpio)) {
+		dev_err(dev, "Cannot get reset gpio\n");
+		ret = PTR_ERR(imx296->rst_gpio);
+		goto free_err;
+	}
+
+	mutex_init(&imx296->lock);
+
+	v4l2_ctrl_handler_init(&imx296->ctrls, 2);
+
+	v4l2_ctrl_new_std(&imx296->ctrls, &imx296_ctrl_ops,
+			  V4L2_CID_GAIN, 0, 48, 1, 0);
+
+	imx296->pixel_rate = v4l2_ctrl_new_std(&imx296->ctrls, &imx296_ctrl_ops,
+					       V4L2_CID_PIXEL_RATE, 1,
+					       INT_MAX, 1,
+					       imx296_modes[0].pixel_rate);
+
+	imx296->sd.ctrl_handler = &imx296->ctrls;
+
+	if (imx296->ctrls.error) {
+		dev_err(dev, "Control initialization error %d\n",
+			imx296->ctrls.error);
+		ret = imx296->ctrls.error;
+		goto free_ctrl;
+	}
+
+	v4l2_i2c_subdev_init(&imx296->sd, client, &imx296_subdev_ops);
+	imx296->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
+	imx296->sd.dev = &client->dev;
+	imx296->sd.entity.ops = &imx296_subdev_entity_ops;
+	imx296->sd.entity.function = MEDIA_ENT_F_CAM_SENSOR;
+
+	imx296->pad.flags = MEDIA_PAD_FL_SOURCE;
+	ret = media_entity_pads_init(&imx296->sd.entity, 1, &imx296->pad);
+	if (ret < 0) {
+		dev_err(dev, "Could not register media entity\n");
+		goto free_ctrl;
+	}
+
+	ret = v4l2_async_register_subdev(&imx296->sd);
+	if (ret < 0) {
+		dev_err(dev, "Could not register v4l2 device\n");
+		goto free_entity;
+	}
+
+	/* Power on the device to match runtime PM state below */
+	ret = imx296_power_on(dev);
+	if (ret < 0) {
+		dev_err(dev, "Could not power on the device\n");
+		goto free_entity;
+	}
+
+	pm_runtime_set_active(dev);
+	pm_runtime_enable(dev);
+	pm_runtime_idle(dev);
+
+	v4l2_fwnode_endpoint_free(&ep);
+
+	return 0;
+
+free_entity:
+	media_entity_cleanup(&imx296->sd.entity);
+free_ctrl:
+	v4l2_ctrl_handler_free(&imx296->ctrls);
+	mutex_destroy(&imx296->lock);
+free_err:
+	v4l2_fwnode_endpoint_free(&ep);
+
+	return ret;
+}
+
+static int imx296_remove(struct i2c_client *client)
+{
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct imx296 *imx296 = to_imx296(sd);
+
+	v4l2_async_unregister_subdev(sd);
+	media_entity_cleanup(&sd->entity);
+	v4l2_ctrl_handler_free(sd->ctrl_handler);
+
+	mutex_destroy(&imx296->lock);
+
+	pm_runtime_disable(imx296->dev);
+	if (!pm_runtime_status_suspended(imx296->dev))
+		imx296_power_off(imx296->dev);
+	pm_runtime_set_suspended(imx296->dev);
+
+	return 0;
+}
+
+static const struct of_device_id imx296_of_match[] = {
+	{ .compatible = "sony,imx296" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, imx296_of_match);
+
+static struct i2c_driver imx296_i2c_driver = {
+	.probe_new  = imx296_probe,
+	.remove = imx296_remove,
+	.driver = {
+		.name  = "imx296",
+		.pm = &imx296_pm_ops,
+		.of_match_table = imx296_of_match,
+	},
+};
+
+module_i2c_driver(imx296_i2c_driver);
+
+MODULE_DESCRIPTION("Sony IMX296 CMOS Image Sensor Driver");
+MODULE_AUTHOR("FRAMOS GmbH");
+MODULE_AUTHOR("Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
