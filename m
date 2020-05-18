Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC711D7A34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wvr0HaFsp+ptzNR+5h8etPzOXsqI71PFF9V5MKU0Bmk=; b=bwFxcK2rcIaOjU
	CWSCiErovG7Z4xXl5k8DTSgSonLlqAooXkpyyyUcGxC1IdaphI0XD3c9VOSra67whYYKFCL3hXgqK
	DNt6rtiAoUi29gU7nIBSPgxpjkD1cVHqz26RlohH1QuDQDPV/M3TFZotHII8mdWeFKBYJv27yafiF
	8FNZVPwTXOj4TEFSiF3nXHBcOHew6eEzxTRRvIT8+ES9+O3ZxZ9ccnXaw2F3BRpb42GBDJwONvQPe
	B0i+BqbplKU7q4aMxgWPYMl35Bh2lZPFZeGNBgi7MpwKgXs5g22c6BsOIThPASYu8UHYFJlnPPd2t
	3RX2G6l4pYh0oEVJuRNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafzw-000359-VZ; Mon, 18 May 2020 13:40:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafz6-0002S8-Vb; Mon, 18 May 2020 13:39:15 +0000
X-UUID: af0a3492dd3642f58aed68d3aa3e4e9a-20200518
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=4txpK8+SHQy+VhrQXxtHs+I7mGgbJo8BNRv/Vc/vQMg=; 
 b=OLMXGUJNi/0bwAmoT9+AJ7mSe+i1jvG3DwfnJiUGRnsvxB4VFICmB83Ba3PooFkYeDIr9Dvqe2paLb3OKdGB6J7OXRbX5wpHG7btNvuuZ+iVJ7L7WvTGp7AK0ROROGbeedF1JZUaEenR2Gdghzp2Dx9PyruLo+wBONMZWlHoLro=;
X-UUID: af0a3492dd3642f58aed68d3aa3e4e9a-20200518
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1567501416; Mon, 18 May 2020 05:38:57 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 18 May 2020 06:29:04 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 18 May 2020 21:29:04 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 18 May 2020 21:29:03 +0800
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <linus.walleij@linaro.org>, <bgolaszewski@baylibre.com>,
 <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [V6, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Date: Mon, 18 May 2020 21:27:31 +0800
Message-ID: <20200518132731.20855-3-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_063913_026834_3CE70D33 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 louis.kuo@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
control to set the desired focus via IIC serial interface.

Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
---
 MAINTAINERS                |   1 +
 drivers/media/i2c/Kconfig  |  13 ++
 drivers/media/i2c/Makefile |   1 +
 drivers/media/i2c/dw9768.c | 515 +++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 530 insertions(+)
 create mode 100644 drivers/media/i2c/dw9768.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 8d72c41..c92dc99 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5157,6 +5157,7 @@ L:	linux-media@vger.kernel.org
 S:	Maintained
 T:	git git://linuxtv.org/media_tree.git
 F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
+F:	drivers/media/i2c/dw9768.c
 
 DONGWOON DW9807 LENS VOICE COIL DRIVER
 M:	Sakari Ailus <sakari.ailus@linux.intel.com>
diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
index 125d596..afdf994 100644
--- a/drivers/media/i2c/Kconfig
+++ b/drivers/media/i2c/Kconfig
@@ -1040,6 +1040,19 @@ config VIDEO_DW9714
 	  capability. This is designed for linear control of
 	  voice coil motors, controlled via I2C serial interface.
 
+config VIDEO_DW9768
+	tristate "DW9768 lens voice coil support"
+	depends on I2C && VIDEO_V4L2
+	depends on PM
+	select MEDIA_CONTROLLER
+	select VIDEO_V4L2_SUBDEV_API
+	select V4L2_FWNODE
+	help
+	  This is a driver for the DW9768 camera lens voice coil.
+	  DW9768 is a 10 bit DAC with 100mA output current sink
+	  capability. This is designed for linear control of
+	  voice coil motors, controlled via I2C serial interface.
+
 config VIDEO_DW9807_VCM
 	tristate "DW9807 lens voice coil support"
 	depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
index 77bf7d0..4057476 100644
--- a/drivers/media/i2c/Makefile
+++ b/drivers/media/i2c/Makefile
@@ -24,6 +24,7 @@ obj-$(CONFIG_VIDEO_SAA6752HS) += saa6752hs.o
 obj-$(CONFIG_VIDEO_AD5820)  += ad5820.o
 obj-$(CONFIG_VIDEO_AK7375)  += ak7375.o
 obj-$(CONFIG_VIDEO_DW9714)  += dw9714.o
+obj-$(CONFIG_VIDEO_DW9768)  += dw9768.o
 obj-$(CONFIG_VIDEO_DW9807_VCM)  += dw9807-vcm.o
 obj-$(CONFIG_VIDEO_ADV7170) += adv7170.o
 obj-$(CONFIG_VIDEO_ADV7175) += adv7175.o
diff --git a/drivers/media/i2c/dw9768.c b/drivers/media/i2c/dw9768.c
new file mode 100644
index 0000000..a0cc9f3
--- /dev/null
+++ b/drivers/media/i2c/dw9768.c
@@ -0,0 +1,515 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2020 MediaTek Inc.
+
+#include <linux/delay.h>
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
+#include <media/v4l2-async.h>
+#include <media/v4l2-ctrls.h>
+#include <media/v4l2-device.h>
+#include <media/v4l2-fwnode.h>
+#include <media/v4l2-subdev.h>
+
+#define DW9768_NAME				"dw9768"
+#define DW9768_MAX_FOCUS_POS			(1024 - 1)
+/*
+ * This sets the minimum granularity for the focus positions.
+ * A value of 1 gives maximum accuracy for a desired focus position
+ */
+#define DW9768_FOCUS_STEPS			1
+
+/*
+ * Ring control and Power control register
+ * Bit[1] RING_EN
+ * 0: Direct mode
+ * 1: AAC mode (ringing control mode)
+ * Bit[0] PD
+ * 0: Normal operation mode
+ * 1: Power down mode
+ * DW9768 requires waiting time of Topr after PD reset takes place.
+ */
+#define DW9768_RING_PD_CONTROL_REG		0x02
+#define DW9768_PD_MODE_OFF			0x00
+#define DW9768_PD_MODE_EN			BIT(0)
+#define DW9768_AAC_MODE_EN			BIT(1)
+
+/*
+ * DW9768 separates two registers to control the VCM position.
+ * One for MSB value, another is LSB value.
+ * DAC_MSB: D[9:8] (ADD: 0x03)
+ * DAC_LSB: D[7:0] (ADD: 0x04)
+ * D[9:0] DAC data input: positive output current = D[9:0] / 1023 * 100[mA]
+ */
+#define DW9768_MSB_ADDR				0x03
+#define DW9768_LSB_ADDR				0x04
+#define DW9768_STATUS_ADDR			0x05
+
+/*
+ * AAC mode control & prescale register
+ * Bit[7:5] Namely AC[2:0], decide the VCM mode and operation time.
+ * 000 Direct(default)
+ * 001 AAC2 0.48xTvib
+ * 010 AAC3 0.70xTvib
+ * 011 AAC4 0.75xTvib
+ * 100 Reserved
+ * 101 AAC8 1.13xTvib
+ * 110 Reserved
+ * 111 Reserved
+ * Bit[2:0] Namely PRESC[2:0], set the internal clock dividing rate as follow.
+ * 000 2
+ * 001 1(default)
+ * 010 1/2
+ * 011 1/4
+ * 100 8
+ * 101 4
+ * 110 Reserved
+ * 111 Reserved
+ */
+#define DW9768_AAC_PRESC_REG			0x06
+#define DW9768_AAC_MODE_SEL_MASK		GENMASK(7, 5)
+#define DW9768_CLOCK_PRE_SCALE_SEL_MASK		GENMASK(2, 0)
+
+/*
+ * VCM period of vibration register
+ * Bit[5:0] Defined as VCM rising periodic time (Tvib) together with PRESC[2:0]
+ * Tvib = (6.3ms + AACT[5:0] * 0.1ms) * Dividing Rate
+ * Dividing Rate is the internal clock dividing rate that is defined at
+ * PRESCALE register (ADD: 0x06)
+ */
+#define DW9768_AAC_TIME_REG			0x07
+
+/*
+ * DW9768 requires waiting time (delay time) of t_OPR after power-up,
+ * or in the case of PD reset taking place.
+ */
+#define DW9768_T_OPR_US				1000
+
+/*
+ * This acts as the minimum granularity of lens movement.
+ * Keep this value power of 2, so the control steps can be
+ * uniformly adjusted for gradual lens movement, with desired
+ * number of control steps.
+ */
+#define DW9768_MOVE_STEPS			16
+
+/*
+ * DW9768_AAC_PRESC_REG & DW9768_AAC_TIME_REG determine VCM operation time.
+ * If DW9768_AAC_PRESC_REG is 0x41, and DW9768_AAC_TIME_REG is 0x39, VCM mode
+ * would be AAC3, Operation Time would be 0.70xTvib, that is 8.40ms.
+ */
+#define DW9768_MOVE_DELAY_US			8400
+#define DW9768_STABLE_TIME_US			20000
+
+static const char * const dw9768_supply_names[] = {
+	"vin",	/* I2C I/O interface power */
+	"vdd",	/* VCM power */
+};
+
+/* dw9768 device structure */
+struct dw9768 {
+	struct regulator_bulk_data supplies[ARRAY_SIZE(dw9768_supply_names)];
+	struct v4l2_ctrl_handler ctrls;
+	struct v4l2_ctrl	*focus;
+	struct v4l2_subdev	sd;
+
+	u32			aac_mode;
+	u32			aac_timing;
+	u32			clock_dividing_rate;
+	bool			aac_mode_control_enable;
+	bool			aact_cnt_select_enable;
+	bool			clock_dividing_rate_select_enable;
+};
+
+static inline struct dw9768 *sd_to_dw9768(struct v4l2_subdev *subdev)
+{
+	return container_of(subdev, struct dw9768, sd);
+}
+
+struct regval_list {
+	u8 reg_num;
+	u8 value;
+};
+
+static int dw9768_read_smbus(struct dw9768 *dw9768, unsigned char reg,
+			     unsigned char *val)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
+	int ret;
+
+	ret = i2c_smbus_read_byte_data(client, reg);
+
+	if (ret < 0)
+		return ret;
+
+	*val = (unsigned char)ret;
+
+	return 0;
+}
+
+static int dw9768_mod_reg(struct dw9768 *dw9768, u8 reg, u8 mask, u8 val)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
+	u8 readval;
+	int ret;
+
+	ret = dw9768_read_smbus(dw9768, reg, &readval);
+	if (ret)
+		return ret;
+
+	val = (readval & ~mask) | (val & mask);
+
+	return i2c_smbus_write_byte_data(client, reg, val);
+}
+
+static int dw9768_set_dac(struct dw9768 *dw9768, u16 val)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
+
+	/* Write VCM position to registers */
+	return i2c_smbus_write_word_swapped(client, DW9768_MSB_ADDR, val);
+}
+
+static int dw9768_init(struct dw9768 *dw9768)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
+	int ret, val;
+
+	/* Reset DW9768_RING_PD_CONTROL_REG to default status 0x00 */
+	ret = i2c_smbus_write_byte_data(client, DW9768_RING_PD_CONTROL_REG,
+					DW9768_PD_MODE_OFF);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * DW9769 requires waiting delay time of t_OPR
+	 * after PD reset takes place.
+	 */
+	usleep_range(DW9768_T_OPR_US, DW9768_T_OPR_US + 100);
+
+	/* Set DW9768_RING_PD_CONTROL_REG to DW9768_AAC_MODE_EN(0x01) */
+	ret = i2c_smbus_write_byte_data(client, DW9768_RING_PD_CONTROL_REG,
+					DW9768_AAC_MODE_EN);
+	if (ret < 0)
+		return ret;
+
+	/* Set AAC mode according to DT property */
+	if (dw9768->aac_mode_control_enable) {
+		ret = dw9768_mod_reg(dw9768, DW9768_AAC_PRESC_REG,
+				     DW9768_AAC_MODE_SEL_MASK,
+				     dw9768->aac_mode << 5);
+		if (ret < 0)
+			return ret;
+	}
+
+	/* Set Clock Dividing Rate factor according to DT property */
+	if (dw9768->clock_dividing_rate_select_enable) {
+		ret = dw9768_mod_reg(dw9768, DW9768_AAC_PRESC_REG,
+				     DW9768_CLOCK_PRE_SCALE_SEL_MASK,
+				     dw9768->clock_dividing_rate);
+		if (ret < 0)
+			return ret;
+	}
+
+	/* Set AAC Timing according to DT property */
+	if (dw9768->aact_cnt_select_enable) {
+		ret = i2c_smbus_write_byte_data(client, DW9768_AAC_TIME_REG,
+						dw9768->aac_timing);
+		if (ret < 0)
+			return ret;
+	}
+
+	for (val = dw9768->focus->val % DW9768_MOVE_STEPS;
+	     val <= dw9768->focus->val;
+	     val += DW9768_MOVE_STEPS) {
+		ret = dw9768_set_dac(dw9768, val);
+		if (ret) {
+			dev_err(&client->dev, "%s I2C failure: %d",
+				__func__, ret);
+			return ret;
+		}
+		usleep_range(DW9768_MOVE_DELAY_US,
+			     DW9768_MOVE_DELAY_US + 1000);
+	}
+
+	return 0;
+}
+
+static int dw9768_release(struct dw9768 *dw9768)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
+	int ret, val;
+
+	val = round_down(dw9768->focus->val, DW9768_MOVE_STEPS);
+	for ( ; val >= 0; val -= DW9768_MOVE_STEPS) {
+		ret = dw9768_set_dac(dw9768, val);
+		if (ret) {
+			dev_err(&client->dev, "I2C write fail: %d", ret);
+			return ret;
+		}
+		usleep_range(DW9768_MOVE_DELAY_US, DW9768_MOVE_DELAY_US + 1000);
+	}
+
+	/*
+	 * Wait for the motor to stabilize after the last movement
+	 * to prevent the motor from shaking.
+	 */
+	usleep_range(DW9768_STABLE_TIME_US - DW9768_MOVE_DELAY_US,
+		     DW9768_STABLE_TIME_US - DW9768_MOVE_DELAY_US + 1000);
+
+	ret = i2c_smbus_write_byte_data(client, DW9768_RING_PD_CONTROL_REG,
+					DW9768_PD_MODE_EN);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * DW9769 requires waiting delay time of t_OPR
+	 * after PD reset takes place.
+	 */
+	usleep_range(DW9768_T_OPR_US, DW9768_T_OPR_US + 100);
+
+	return 0;
+}
+
+static int dw9768_runtime_suspend(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct dw9768 *dw9768 = sd_to_dw9768(sd);
+
+	dw9768_release(dw9768);
+	regulator_bulk_disable(ARRAY_SIZE(dw9768_supply_names),
+			       dw9768->supplies);
+
+	return 0;
+}
+
+static int dw9768_runtime_resume(struct device *dev)
+{
+	struct i2c_client *client = to_i2c_client(dev);
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct dw9768 *dw9768 = sd_to_dw9768(sd);
+	int ret;
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(dw9768_supply_names),
+				    dw9768->supplies);
+	if (ret < 0) {
+		dev_err(dev, "failed to enable regulators\n");
+		return ret;
+	}
+
+	/*
+	 * The datasheet refers to t_OPR that needs to be waited before sending
+	 * I2C commands after power-up.
+	 */
+	usleep_range(DW9768_T_OPR_US, DW9768_T_OPR_US + 100);
+
+	ret = dw9768_init(dw9768);
+	if (ret < 0)
+		goto disable_regulator;
+
+	return 0;
+
+disable_regulator:
+	regulator_bulk_disable(ARRAY_SIZE(dw9768_supply_names),
+			       dw9768->supplies);
+
+	return ret;
+}
+
+static int dw9768_set_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct dw9768 *dw9768 = container_of(ctrl->handler,
+					     struct dw9768, ctrls);
+
+	if (ctrl->id == V4L2_CID_FOCUS_ABSOLUTE)
+		return dw9768_set_dac(dw9768, ctrl->val);
+
+	return 0;
+}
+
+static const struct v4l2_ctrl_ops dw9768_ctrl_ops = {
+	.s_ctrl = dw9768_set_ctrl,
+};
+
+static int dw9768_open(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
+{
+	int ret;
+
+	ret = pm_runtime_get_sync(sd->dev);
+	if (ret < 0) {
+		pm_runtime_put_noidle(sd->dev);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int dw9768_close(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
+{
+	pm_runtime_put(sd->dev);
+
+	return 0;
+}
+
+static const struct v4l2_subdev_internal_ops dw9768_int_ops = {
+	.open = dw9768_open,
+	.close = dw9768_close,
+};
+
+static const struct v4l2_subdev_ops dw9768_ops = { };
+
+static int dw9768_init_controls(struct dw9768 *dw9768)
+{
+	struct v4l2_ctrl_handler *hdl = &dw9768->ctrls;
+	const struct v4l2_ctrl_ops *ops = &dw9768_ctrl_ops;
+
+	v4l2_ctrl_handler_init(hdl, 1);
+
+	dw9768->focus = v4l2_ctrl_new_std(hdl, ops, V4L2_CID_FOCUS_ABSOLUTE, 0,
+					  DW9768_MAX_FOCUS_POS,
+					  DW9768_FOCUS_STEPS, 0);
+
+	if (hdl->error)
+		return hdl->error;
+
+	dw9768->sd.ctrl_handler = hdl;
+
+	return 0;
+}
+
+static int dw9768_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct dw9768 *dw9768;
+	unsigned int aac_mode_select;
+	unsigned int aac_timing_select;
+	unsigned int clock_dividing_rate_select;
+	unsigned int i;
+	int ret;
+
+	dw9768 = devm_kzalloc(dev, sizeof(*dw9768), GFP_KERNEL);
+	if (!dw9768)
+		return -ENOMEM;
+
+	v4l2_i2c_subdev_init(&dw9768->sd, client, &dw9768_ops);
+	dw9768->aac_mode_control_enable = false;
+	dw9768->aact_cnt_select_enable = false;
+	dw9768->clock_dividing_rate_select_enable = false;
+
+	/* Optional indication of AAC mode select */
+	ret = fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-mode",
+				       &aac_mode_select);
+
+	if (!ret) {
+		dw9768->aac_mode_control_enable = true;
+		dw9768->aac_mode = aac_mode_select;
+	}
+
+	/* Optional indication of VCM internal clock dividing rate select */
+	ret = fwnode_property_read_u32(dev_fwnode(dev),
+				       "dongwoon,clock-dividing-rate",
+				       &clock_dividing_rate_select);
+
+	if (!ret) {
+		dw9768->clock_dividing_rate_select_enable = true;
+		dw9768->clock_dividing_rate = clock_dividing_rate_select;
+	}
+
+	/* Optional indication of AAC Timing */
+	ret = fwnode_property_read_u32(dev_fwnode(dev), "dongwoon,aac-timing",
+				       &aac_timing_select);
+
+	if (!ret) {
+		dw9768->aact_cnt_select_enable = true;
+		dw9768->aac_timing = aac_timing_select;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(dw9768_supply_names); i++)
+		dw9768->supplies[i].supply = dw9768_supply_names[i];
+
+	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(dw9768_supply_names),
+				      dw9768->supplies);
+	if (ret) {
+		dev_err(dev, "failed to get regulators\n");
+		return ret;
+	}
+
+	ret = dw9768_init_controls(dw9768);
+	if (ret)
+		goto entity_cleanup;
+
+	dw9768->sd.flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
+	dw9768->sd.internal_ops = &dw9768_int_ops;
+
+	ret = media_entity_pads_init(&dw9768->sd.entity, 0, NULL);
+	if (ret < 0)
+		goto entity_cleanup;
+
+	dw9768->sd.entity.function = MEDIA_ENT_F_LENS;
+
+	pm_runtime_enable(dev);
+	if (!pm_runtime_enabled(dev)) {
+		ret = dw9768_runtime_resume(dev);
+		if (ret < 0) {
+			dev_err(dev, "failed to power on: %d\n", ret);
+			goto entity_cleanup;
+		}
+	}
+
+	ret = v4l2_async_register_subdev(&dw9768->sd);
+	if (ret < 0)
+		goto entity_cleanup;
+
+	return 0;
+
+entity_cleanup:
+	v4l2_ctrl_handler_free(&dw9768->ctrls);
+	media_entity_cleanup(&dw9768->sd.entity);
+	return ret;
+}
+
+static int dw9768_remove(struct i2c_client *client)
+{
+	struct v4l2_subdev *sd = i2c_get_clientdata(client);
+	struct dw9768 *dw9768 = sd_to_dw9768(sd);
+
+	pm_runtime_disable(&client->dev);
+	v4l2_async_unregister_subdev(&dw9768->sd);
+	v4l2_ctrl_handler_free(&dw9768->ctrls);
+	media_entity_cleanup(&dw9768->sd.entity);
+	if (!pm_runtime_status_suspended(&client->dev))
+		dw9768_runtime_suspend(&client->dev);
+	pm_runtime_set_suspended(&client->dev);
+
+	return 0;
+}
+
+static const struct of_device_id dw9768_of_table[] = {
+	{ .compatible = "dongwoon,dw9768" },
+	{ .compatible = "giantec,gt9769" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, dw9768_of_table);
+
+static const struct dev_pm_ops dw9768_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
+				pm_runtime_force_resume)
+	SET_RUNTIME_PM_OPS(dw9768_runtime_suspend, dw9768_runtime_resume, NULL)
+};
+
+static struct i2c_driver dw9768_i2c_driver = {
+	.driver = {
+		.name = DW9768_NAME,
+		.pm = &dw9768_pm_ops,
+		.of_match_table = dw9768_of_table,
+	},
+	.probe_new  = dw9768_probe,
+	.remove = dw9768_remove,
+};
+module_i2c_driver(dw9768_i2c_driver);
+
+MODULE_AUTHOR("Dongchun Zhu <dongchun.zhu@mediatek.com>");
+MODULE_DESCRIPTION("DW9768 VCM driver");
+MODULE_LICENSE("GPL v2");
-- 
2.9.2
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
