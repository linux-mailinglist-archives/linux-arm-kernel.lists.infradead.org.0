Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C4C27654
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 08:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=RJLPuZzqxdHioMLV29VEX7eegS3Zh+tHBjN7tfc0nmM=; b=M/
	PvlxPo9dbFSvA4bsBU6/dCTsljSB9VDboq4xxyOqtOkMPrXoyVaU7e6khb/f1CdXllOaTxHkVsMxg
	4fau3UvoE23IRECYppxFz7YI52D1Q1tTfmPTxEvRz9jX6dWIcGd5Ji07CvEesnQpeUBUBEVmotxU0
	0iJM/ThXxzOcmV79GJIbt2Pz6rIIGih2xoUNby05gIjitfkzp3rI7lM1RwzjtFrAKBHzo7CHDrV82
	lNrVPllilOpKldCixwupZx3XC88N/xWCnGMPFqHtg3LUz+xHcH+KynoKLysKpMUf0keku0aBbbuCC
	qSQcWJ5l1itma/KzAQfuo7TuL9WaNNzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hThcr-0000kB-Jc; Thu, 23 May 2019 06:54:53 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThcI-0000Dv-UI
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 06:54:23 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id 0734568BFE; Thu, 23 May 2019 08:53:56 +0200 (CEST)
From: Torsten Duwe <duwe@lst.de>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Icenowy Zheng <icenowy@aosc.io>, Sean Paul <seanpaul@chromium.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Harald Geyer <harald@ccbib.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 4/6] drm/bridge: Add Analogix anx6345 support
References: <20190523065013.2719D68B05@newverein.lst.de>
Message-Id: <20190523065356.0734568BFE@newverein.lst.de>
Date: Thu, 23 May 2019 08:53:56 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_235419_460704_321A9AF0 
X-CRM114-Status: GOOD (  22.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

The ANX6345 is an ultra-low power DisplayPower/eDP transmitter designed
for portable devices. This driver adds initial support for RGB to eDP
mode, without HPD and interrupts.

This is a configuration usually seen in eDP applications.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Torsten Duwe <duwe@suse.de>
---
 drivers/gpu/drm/bridge/analogix/Kconfig            |  11 +
 drivers/gpu/drm/bridge/analogix/Makefile           |   1 +
 drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 808 +++++++++++++++++++++
 .../gpu/drm/bridge/analogix/analogix-i2c-dptx.c    |   2 +-
 .../gpu/drm/bridge/analogix/analogix-i2c-dptx.h    |   8 +
 .../drm/bridge/analogix/analogix-i2c-txcommon.h    |   3 +
 6 files changed, 832 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-anx6345.c

diff --git a/drivers/gpu/drm/bridge/analogix/Kconfig b/drivers/gpu/drm/bridge/analogix/Kconfig
index ed2d05c12546..3c6ec535d361 100644
--- a/drivers/gpu/drm/bridge/analogix/Kconfig
+++ b/drivers/gpu/drm/bridge/analogix/Kconfig
@@ -1,3 +1,14 @@
 # SPDX-License-Identifier: GPL-2.0-only
+config DRM_ANALOGIX_ANX6345
+	tristate "Analogix ANX6345 bridge"
+	select DRM_ANALOGIX_DP_I2C
+	select DRM_KMS_HELPER
+	select REGMAP_I2C
+	help
+	  ANX6345 is an ultra-low Full-HD DisplayPort/eDP
+	  transmitter designed for portable devices. The
+	  ANX6345 transforms the LVTTL RGB output of an
+	  application processor to eDP or DisplayPort.
+
 config DRM_ANALOGIX_ANX78XX
 	tristate "Analogix ANX78XX bridge"
 	select DRM_ANALOGIX_DP_I2C
diff --git a/drivers/gpu/drm/bridge/analogix/Makefile b/drivers/gpu/drm/bridge/analogix/Makefile
index 2d523b67487d..12fed7b04e1e 100644
--- a/drivers/gpu/drm/bridge/analogix/Makefile
+++ b/drivers/gpu/drm/bridge/analogix/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 analogix_dp-objs := analogix_dp_core.o analogix_dp_reg.o
 analogix_dp_i2c-objs := analogix-i2c-dptx.o
+obj-$(CONFIG_DRM_ANALOGIX_ANX6345) += analogix-anx6345.o
 obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
 obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix_dp.o
 obj-$(CONFIG_DRM_ANALOGIX_DP_I2C) += analogix_dp_i2c.o
diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
new file mode 100644
index 000000000000..36f38a9f042a
--- /dev/null
+++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
@@ -0,0 +1,810 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright(c) Icenowy Zheng <icenowy@aosc.io>
+ * Based on analogix-anx6345.c, which is:
+ *   Copyright(c) 2016, Analogix Semiconductor.
+ */
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/i2c.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/regmap.h>
+#include <linux/types.h>
+#include <linux/gpio/consumer.h>
+#include <linux/regulator/consumer.h>
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_crtc.h>
+#include <drm/drm_crtc_helper.h>
+#include <drm/drm_dp_helper.h>
+#include <drm/drm_edid.h>
+#include <drm/drm_of.h>
+#include <drm/drm_print.h>
+#include <drm/drm_panel.h>
+
+#include "analogix-i2c-dptx.h"
+#include "analogix-i2c-txcommon.h"
+
+#define I2C_NUM_ADDRESSES	2
+#define I2C_IDX_DPTX		0
+#define I2C_IDX_TXCOM		1
+
+#define POLL_DELAY		50000 /* us */
+#define POLL_TIMEOUT		5000000 /* us */
+
+static const u8 anx6345_i2c_addresses[] = {
+	[I2C_IDX_DPTX]	= ANALOGIX_I2C_DPTX,
+	[I2C_IDX_TXCOM]	= ANALOGIX_I2C_TXCOMMON,
+};
+
+struct anx6345 {
+	struct drm_dp_aux aux;
+	struct drm_bridge bridge;
+	struct i2c_client *client;
+	struct edid *edid;
+	struct drm_connector connector;
+	struct drm_dp_link link;
+	struct drm_panel *panel;
+	struct regulator *dvdd12;
+	struct regulator *dvdd25;
+	struct gpio_desc *gpiod_reset;
+	struct mutex lock;
+
+	/*
+	 * I2C Slave addresses of ANX6345 are mapped as DPTX and SYS
+	 */
+	struct i2c_client *i2c_clients[I2C_NUM_ADDRESSES];
+	struct regmap *map[I2C_NUM_ADDRESSES];
+
+	u16 chipid;
+	u8 dpcd[DP_RECEIVER_CAP_SIZE];
+
+	bool powered;
+};
+
+static inline struct anx6345 *connector_to_anx6345(struct drm_connector *c)
+{
+	return container_of(c, struct anx6345, connector);
+}
+
+static inline struct anx6345 *bridge_to_anx6345(struct drm_bridge *bridge)
+{
+	return container_of(bridge, struct anx6345, bridge);
+}
+
+static int anx6345_set_bits(struct regmap *map, u8 reg, u8 mask)
+{
+	return regmap_update_bits(map, reg, mask, mask);
+}
+
+static int anx6345_clear_bits(struct regmap *map, u8 reg, u8 mask)
+{
+	return regmap_update_bits(map, reg, mask, 0);
+}
+
+static ssize_t anx6345_aux_transfer(struct drm_dp_aux *aux,
+				    struct drm_dp_aux_msg *msg)
+{
+	struct anx6345 *anx6345 = container_of(aux, struct anx6345, aux);
+
+	return anx_aux_transfer(anx6345->map[I2C_IDX_DPTX], msg);
+}
+
+static int anx6345_dp_link_training(struct anx6345 *anx6345)
+{
+	unsigned int value;
+	u8 dp_bw;
+	int err;
+
+	err = anx6345_clear_bits(anx6345->map[I2C_IDX_TXCOM],
+				 SP_POWERDOWN_CTRL_REG,
+				 SP_TOTAL_PD);
+	if (err)
+		return err;
+
+	err = drm_dp_dpcd_readb(&anx6345->aux, DP_MAX_LINK_RATE, &dp_bw);
+	if (err < 0)
+		return err;
+
+	switch (dp_bw) {
+	case DP_LINK_BW_1_62:
+	case DP_LINK_BW_2_7:
+		break;
+
+	default:
+		DRM_DEBUG_KMS("DP bandwidth (%#02x) not supported\n", dp_bw);
+		return -EINVAL;
+	}
+
+	err = anx6345_set_bits(anx6345->map[I2C_IDX_TXCOM], SP_VID_CTRL1_REG,
+			       SP_VIDEO_MUTE);
+	if (err)
+		return err;
+
+	err = anx6345_clear_bits(anx6345->map[I2C_IDX_TXCOM],
+				 SP_VID_CTRL1_REG, SP_VIDEO_EN);
+	if (err)
+		return err;
+
+	/* Get DPCD info */
+	err = drm_dp_dpcd_read(&anx6345->aux, DP_DPCD_REV,
+			       &anx6345->dpcd, DP_RECEIVER_CAP_SIZE);
+	if (err < 0) {
+		DRM_ERROR("Failed to read DPCD: %d\n", err);
+		return err;
+	}
+
+	/* Clear channel x SERDES power down */
+	err = anx6345_clear_bits(anx6345->map[I2C_IDX_DPTX],
+				 SP_DP_ANALOG_POWER_DOWN_REG, SP_CH0_PD);
+	if (err)
+		return err;
+
+	/* Check link capabilities */
+	err = drm_dp_link_probe(&anx6345->aux, &anx6345->link);
+	if (err < 0) {
+		DRM_ERROR("Failed to probe link capabilities: %d\n", err);
+		return err;
+	}
+
+	/* Power up the sink */
+	err = drm_dp_link_power_up(&anx6345->aux, &anx6345->link);
+	if (err < 0) {
+		DRM_ERROR("Failed to power up DisplayPort link: %d\n", err);
+		return err;
+	}
+
+	/* Possibly enable downspread on the sink */
+	err = regmap_write(anx6345->map[I2C_IDX_DPTX],
+			   SP_DP_DOWNSPREAD_CTRL1_REG, 0);
+	if (err)
+		return err;
+
+	if (anx6345->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5) {
+		DRM_DEBUG("Enable downspread on the sink\n");
+		/* 4000PPM */
+		err = regmap_write(anx6345->map[I2C_IDX_DPTX],
+				   SP_DP_DOWNSPREAD_CTRL1_REG, 8);
+		if (err)
+			return err;
+
+		err = drm_dp_dpcd_writeb(&anx6345->aux, DP_DOWNSPREAD_CTRL,
+					 DP_SPREAD_AMP_0_5);
+		if (err < 0)
+			return err;
+	} else {
+		err = drm_dp_dpcd_writeb(&anx6345->aux, DP_DOWNSPREAD_CTRL, 0);
+		if (err < 0)
+			return err;
+	}
+
+	/* Set the lane count and the link rate on the sink */
+	if (drm_dp_enhanced_frame_cap(anx6345->dpcd))
+		err = anx6345_set_bits(anx6345->map[I2C_IDX_DPTX],
+				       SP_DP_SYSTEM_CTRL_BASE + 4,
+				       SP_ENHANCED_MODE);
+	else
+		err = anx6345_clear_bits(anx6345->map[I2C_IDX_DPTX],
+					 SP_DP_SYSTEM_CTRL_BASE + 4,
+					 SP_ENHANCED_MODE);
+	if (err)
+		return err;
+
+	value = drm_dp_link_rate_to_bw_code(anx6345->link.rate);
+	err = regmap_write(anx6345->map[I2C_IDX_DPTX],
+			   SP_DP_MAIN_LINK_BW_SET_REG, value);
+	if (err)
+		return err;
+
+	err = regmap_write(anx6345->map[I2C_IDX_DPTX],
+			   SP_DP_LANE_COUNT_SET_REG, anx6345->link.num_lanes);
+	if (err)
+		return err;
+
+	err = drm_dp_link_configure(&anx6345->aux, &anx6345->link);
+	if (err < 0) {
+		DRM_ERROR("Failed to configure DisplayPort link: %d\n", err);
+		return err;
+	}
+
+	/* Start training on the source */
+	err = regmap_write(anx6345->map[I2C_IDX_DPTX], SP_DP_LT_CTRL_REG,
+			   SP_LT_EN);
+	if (err)
+		return err;
+
+	err = regmap_read_poll_timeout(anx6345->map[I2C_IDX_DPTX],
+				       SP_DP_LT_CTRL_REG,
+				       value, !(value & SP_DP_LT_INPROGRESS),
+				       POLL_DELAY, POLL_TIMEOUT);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static int anx6345_tx_initialization(struct anx6345 *anx6345)
+{
+	int err, i;
+
+	/* FIXME: hardcode color depth now */
+	err = regmap_write(anx6345->map[I2C_IDX_TXCOM], SP_VID_CTRL2_REG,
+			   SP_IN_BPC_6BIT << SP_IN_BPC_SHIFT);
+	if (err)
+		return err;
+
+	err = regmap_write(anx6345->map[I2C_IDX_DPTX], SP_DP_PLL_CTRL_REG, 0);
+	if (err)
+		return err;
+
+	err = regmap_write(anx6345->map[I2C_IDX_TXCOM],
+			   SP_ANALOG_DEBUG1_REG, 0);
+	if (err)
+		return err;
+
+	err = regmap_write(anx6345->map[I2C_IDX_DPTX],
+			   SP_DP_LINK_DEBUG_CTRL_REG,
+			   SP_NEW_PRBS7 | SP_M_VID_DEBUG);
+	if (err)
+		return err;
+
+	err = regmap_write(anx6345->map[I2C_IDX_DPTX],
+			   SP_DP_ANALOG_POWER_DOWN_REG, 0);
+	if (err)
+		return err;
+
+	/* Force HPD */
+	err = anx6345_set_bits(anx6345->map[I2C_IDX_DPTX],
+			       SP_DP_SYSTEM_CTRL_BASE + 3,
+			       SP_HPD_FORCE | SP_HPD_CTRL);
+	if (err)
+		return err;
+
+	for (i = 0; i < 4; i++) {
+		/* 4 lanes */
+		err = regmap_write(anx6345->map[I2C_IDX_DPTX],
+				   SP_DP_LANE0_LT_CTRL_REG + i, 0);
+		if (err)
+			return err;
+	}
+
+	/* Reset AUX */
+	err = anx6345_set_bits(anx6345->map[I2C_IDX_TXCOM],
+			       SP_RESET_CTRL2_REG, SP_AUX_RST);
+	if (err)
+		return err;
+
+	err = anx6345_clear_bits(anx6345->map[I2C_IDX_TXCOM],
+				 SP_RESET_CTRL2_REG, SP_AUX_RST);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static void anx6345_poweron(struct anx6345 *anx6345)
+{
+	int err;
+
+	/* Ensure reset is asserted before starting power on sequence */
+	gpiod_set_value_cansleep(anx6345->gpiod_reset, 1);
+	usleep_range(1000, 2000);
+
+	err = regulator_enable(anx6345->dvdd12);
+	if (err) {
+		DRM_ERROR("Failed to enable DVDD12 regulator: %d\n",
+			  err);
+		return;
+	}
+
+	/* T1 - delay between VDD12 and VDD25 should be 0-2ms */
+	usleep_range(1000, 2000);
+
+	err = regulator_enable(anx6345->dvdd25);
+	if (err) {
+		DRM_ERROR("Failed to enable DVDD25 regulator: %d\n",
+			  err);
+		return;
+	}
+
+	/* T2 - delay between RESETN and all power rail stable,
+	 * should be 2-5ms
+	 */
+	usleep_range(2000, 5000);
+
+	gpiod_set_value_cansleep(anx6345->gpiod_reset, 0);
+
+	/* Power on registers module */
+	anx6345_set_bits(anx6345->map[I2C_IDX_TXCOM], SP_POWERDOWN_CTRL_REG,
+			 SP_HDCP_PD | SP_AUDIO_PD | SP_VIDEO_PD | SP_LINK_PD);
+	anx6345_clear_bits(anx6345->map[I2C_IDX_TXCOM], SP_POWERDOWN_CTRL_REG,
+			   SP_REGISTER_PD | SP_TOTAL_PD);
+
+	if (anx6345->panel)
+		drm_panel_prepare(anx6345->panel);
+
+	anx6345->powered = true;
+}
+
+static void anx6345_poweroff(struct anx6345 *anx6345)
+{
+	int err;
+
+	gpiod_set_value_cansleep(anx6345->gpiod_reset, 1);
+	usleep_range(1000, 2000);
+
+	if (anx6345->panel)
+		drm_panel_unprepare(anx6345->panel);
+
+	err = regulator_disable(anx6345->dvdd25);
+	if (err) {
+		DRM_ERROR("Failed to disable DVDD25 regulator: %d\n",
+			  err);
+		return;
+	}
+
+	usleep_range(5000, 10000);
+
+	err = regulator_disable(anx6345->dvdd12);
+	if (err) {
+		DRM_ERROR("Failed to disable DVDD12 regulator: %d\n",
+			  err);
+		return;
+	}
+
+	usleep_range(1000, 2000);
+
+	anx6345->powered = false;
+}
+
+static int anx6345_start(struct anx6345 *anx6345)
+{
+	int err;
+
+	if (!anx6345->powered)
+		anx6345_poweron(anx6345);
+
+	/* Power on needed modules */
+	err = anx6345_clear_bits(anx6345->map[I2C_IDX_TXCOM],
+				SP_POWERDOWN_CTRL_REG,
+				SP_VIDEO_PD | SP_LINK_PD);
+
+	err = anx6345_tx_initialization(anx6345);
+	if (err) {
+		DRM_ERROR("Failed DisplayPort transmitter initialization: %d\n", err);
+		anx6345_poweroff(anx6345);
+		return err;
+	}
+
+	err = anx6345_dp_link_training(anx6345);
+	if (err) {
+		DRM_ERROR("Failed link training: %d\n", err);
+		anx6345_poweroff(anx6345);
+		return err;
+	}
+
+	/*
+	 * This delay seems to help keep the hardware in a good state. Without
+	 * it, there are times where it fails silently.
+	 */
+	usleep_range(10000, 15000);
+
+	return 0;
+}
+
+static int anx6345_config_dp_output(struct anx6345 *anx6345)
+{
+	int err;
+
+	err = anx6345_clear_bits(anx6345->map[I2C_IDX_TXCOM], SP_VID_CTRL1_REG,
+				 SP_VIDEO_MUTE);
+	if (err)
+		return err;
+
+	/* Enable DP output */
+	err = anx6345_set_bits(anx6345->map[I2C_IDX_TXCOM], SP_VID_CTRL1_REG,
+			       SP_VIDEO_EN);
+	if (err)
+		return err;
+
+	/* Force stream valid */
+	err = anx6345_set_bits(anx6345->map[I2C_IDX_DPTX],
+			       SP_DP_SYSTEM_CTRL_BASE + 3,
+			       SP_STRM_FORCE | SP_STRM_CTRL);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static int anx6345_get_downstream_info(struct anx6345 *anx6345)
+{
+	u8 value;
+	int err;
+
+	err = drm_dp_dpcd_readb(&anx6345->aux, DP_SINK_COUNT, &value);
+	if (err < 0) {
+		DRM_ERROR("Get sink count failed %d\n", err);
+		return err;
+	}
+
+	if (!DP_GET_SINK_COUNT(value)) {
+		DRM_ERROR("Downstream disconnected\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int anx6345_get_modes(struct drm_connector *connector)
+{
+	struct anx6345 *anx6345 = connector_to_anx6345(connector);
+	int err, num_modes = 0;
+	bool power_off = false;
+
+	mutex_lock(&anx6345->lock);
+
+	if (!anx6345->edid) {
+		if (!anx6345->powered) {
+			anx6345_poweron(anx6345);
+			power_off = true;
+		}
+
+		err = anx6345_get_downstream_info(anx6345);
+		if (err) {
+			DRM_ERROR("Failed to get downstream info: %d\n", err);
+			goto unlock;
+		}
+
+		anx6345->edid = drm_get_edid(connector, &anx6345->aux.ddc);
+		if (!anx6345->edid)
+			DRM_ERROR("Failed to read EDID from panel\n");
+
+		err = drm_connector_update_edid_property(connector,
+							 anx6345->edid);
+		if (err) {
+			DRM_ERROR("Failed to update EDID property: %d\n", err);
+			goto unlock;
+		}
+	}
+
+	num_modes += drm_add_edid_modes(connector, anx6345->edid);
+
+unlock:
+	if (power_off)
+		anx6345_poweroff(anx6345);
+
+	mutex_unlock(&anx6345->lock);
+
+	if (!num_modes && anx6345->panel)
+		num_modes += drm_panel_get_modes(anx6345->panel);
+
+	return num_modes;
+}
+
+static const struct drm_connector_helper_funcs anx6345_connector_helper_funcs = {
+	.get_modes = anx6345_get_modes,
+};
+
+static void
+anx6345_connector_destroy(struct drm_connector *connector)
+{
+	struct anx6345 *anx6345 = connector_to_anx6345(connector);
+
+	if (anx6345->panel)
+		drm_panel_detach(anx6345->panel);
+	drm_connector_cleanup(connector);
+}
+
+static const struct drm_connector_funcs anx6345_connector_funcs = {
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.destroy = anx6345_connector_destroy,
+	.reset = drm_atomic_helper_connector_reset,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+static int anx6345_bridge_attach(struct drm_bridge *bridge)
+{
+	struct anx6345 *anx6345 = bridge_to_anx6345(bridge);
+	int err;
+
+	if (!bridge->encoder) {
+		DRM_ERROR("Parent encoder object not found");
+		return -ENODEV;
+	}
+
+	/* Register aux channel */
+	anx6345->aux.name = "DP-AUX";
+	anx6345->aux.dev = &anx6345->client->dev;
+	anx6345->aux.transfer = anx6345_aux_transfer;
+
+	err = drm_dp_aux_register(&anx6345->aux);
+	if (err < 0) {
+		DRM_ERROR("Failed to register aux channel: %d\n", err);
+		return err;
+	}
+
+	err = drm_connector_init(bridge->dev, &anx6345->connector,
+				 &anx6345_connector_funcs,
+				 DRM_MODE_CONNECTOR_eDP);
+	if (err) {
+		DRM_ERROR("Failed to initialize connector: %d\n", err);
+		return err;
+	}
+
+	drm_connector_helper_add(&anx6345->connector,
+				 &anx6345_connector_helper_funcs);
+
+	err = drm_connector_register(&anx6345->connector);
+	if (err) {
+		DRM_ERROR("Failed to register connector: %d\n", err);
+		return err;
+	}
+
+	anx6345->connector.polled = DRM_CONNECTOR_POLL_HPD;
+
+	err = drm_connector_attach_encoder(&anx6345->connector,
+					   bridge->encoder);
+	if (err) {
+		DRM_ERROR("Failed to link up connector to encoder: %d\n", err);
+		return err;
+	}
+
+	if (anx6345->panel) {
+		err = drm_panel_attach(anx6345->panel, &anx6345->connector);
+		if (err) {
+			DRM_ERROR("Failed to attach panel: %d\n", err);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
+static enum drm_mode_status
+anx6345_bridge_mode_valid(struct drm_bridge *bridge,
+			  const struct drm_display_mode *mode)
+{
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		return MODE_NO_INTERLACE;
+
+	/* Max 1200p at 5.4 Ghz, one lane */
+	if (mode->clock > 154000)
+		return MODE_CLOCK_HIGH;
+
+	return MODE_OK;
+}
+
+static void anx6345_bridge_disable(struct drm_bridge *bridge)
+{
+	struct anx6345 *anx6345 = bridge_to_anx6345(bridge);
+
+	/* Power off all modules except configuration registers access */
+	anx6345_set_bits(anx6345->map[I2C_IDX_TXCOM], SP_POWERDOWN_CTRL_REG,
+			 SP_HDCP_PD | SP_AUDIO_PD | SP_VIDEO_PD | SP_LINK_PD);
+	if (anx6345->panel)
+		drm_panel_disable(anx6345->panel);
+
+	if (anx6345->powered)
+		anx6345_poweroff(anx6345);
+}
+
+static void anx6345_bridge_enable(struct drm_bridge *bridge)
+{
+	struct anx6345 *anx6345 = bridge_to_anx6345(bridge);
+	int err;
+
+	if (anx6345->panel)
+		drm_panel_enable(anx6345->panel);
+
+	err = anx6345_start(anx6345);
+	if (err) {
+		DRM_ERROR("Failed to initialize: %d\n", err);
+		return;
+	}
+
+	err = anx6345_config_dp_output(anx6345);
+	if (err)
+		DRM_ERROR("Failed to enable DP output: %d\n", err);
+}
+
+static const struct drm_bridge_funcs anx6345_bridge_funcs = {
+	.attach = anx6345_bridge_attach,
+	.mode_valid = anx6345_bridge_mode_valid,
+	.disable = anx6345_bridge_disable,
+	.enable = anx6345_bridge_enable,
+};
+
+static void unregister_i2c_dummy_clients(struct anx6345 *anx6345)
+{
+	unsigned int i;
+
+	for (i = 1; i < ARRAY_SIZE(anx6345->i2c_clients); i++)
+		if (anx6345->i2c_clients[i] &&
+		    anx6345->i2c_clients[i]->addr != anx6345->client->addr)
+			i2c_unregister_device(anx6345->i2c_clients[i]);
+}
+
+static const struct regmap_config anx6345_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = 0xff,
+	.cache_type = REGCACHE_NONE,
+};
+
+static const u16 anx6345_chipid_list[] = {
+	0x6345,
+};
+
+static int anx6345_i2c_probe(struct i2c_client *client,
+			     const struct i2c_device_id *id)
+{
+	struct anx6345 *anx6345;
+	struct device *dev;
+	unsigned int i, idl, idh, version;
+	bool found = false;
+	int err;
+
+	anx6345 = devm_kzalloc(&client->dev, sizeof(*anx6345), GFP_KERNEL);
+	if (!anx6345)
+		return -ENOMEM;
+
+	mutex_init(&anx6345->lock);
+
+	anx6345->bridge.of_node = client->dev.of_node;
+
+	anx6345->client = client;
+	i2c_set_clientdata(client, anx6345);
+
+	dev = &anx6345->client->dev;
+
+	err = drm_of_find_panel_or_bridge(client->dev.of_node, 1, 0,
+					  &anx6345->panel, NULL);
+	if (err == -EPROBE_DEFER)
+		return err;
+
+	if (err)
+		DRM_DEBUG("No panel found\n");
+
+	/* 1.2V digital core power regulator  */
+	anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12-supply");
+	if (IS_ERR(anx6345->dvdd12)) {
+		DRM_ERROR("DVDD12 regulator not found\n");
+		return PTR_ERR(anx6345->dvdd12);
+	}
+
+	/* 2.5V digital core power regulator  */
+	anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25-supply");
+	if (IS_ERR(anx6345->dvdd25)) {
+		DRM_ERROR("DVDD25 regulator not found\n");
+		return PTR_ERR(anx6345->dvdd25);
+	}
+
+	/* GPIO for chip reset */
+	anx6345->gpiod_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(anx6345->gpiod_reset)) {
+		DRM_ERROR("Reset gpio not found\n");
+		return PTR_ERR(anx6345->gpiod_reset);
+	}
+
+	/* Map slave addresses of ANX6345 */
+	for (i = 0; i < I2C_NUM_ADDRESSES; i++) {
+		if (anx6345_i2c_addresses[i] >> 1 != client->addr)
+			anx6345->i2c_clients[i] = i2c_new_dummy(client->adapter,
+						anx6345_i2c_addresses[i] >> 1);
+		else
+			anx6345->i2c_clients[i] = client;
+
+		if (!anx6345->i2c_clients[i]) {
+			err = -ENOMEM;
+			DRM_ERROR("Failed to reserve I2C bus %02x\n",
+				  anx6345_i2c_addresses[i]);
+			goto err_unregister_i2c;
+		}
+
+		anx6345->map[i] = devm_regmap_init_i2c(anx6345->i2c_clients[i],
+						       &anx6345_regmap_config);
+		if (IS_ERR(anx6345->map[i])) {
+			err = PTR_ERR(anx6345->map[i]);
+			DRM_ERROR("Failed regmap initialization %02x\n",
+				  anx6345_i2c_addresses[i]);
+			goto err_unregister_i2c;
+		}
+	}
+
+	/* Look for supported chip ID */
+	anx6345_poweron(anx6345);
+
+	err = regmap_read(anx6345->map[I2C_IDX_TXCOM], SP_DEVICE_IDL_REG,
+			  &idl);
+	if (err)
+		goto err_poweroff;
+
+	err = regmap_read(anx6345->map[I2C_IDX_TXCOM], SP_DEVICE_IDH_REG,
+			  &idh);
+	if (err)
+		goto err_poweroff;
+
+	anx6345->chipid = (u8)idl | ((u8)idh << 8);
+
+	err = regmap_read(anx6345->map[I2C_IDX_TXCOM], SP_DEVICE_VERSION_REG,
+			  &version);
+	if (err)
+		goto err_poweroff;
+
+	for (i = 0; i < ARRAY_SIZE(anx6345_chipid_list); i++) {
+		if (anx6345->chipid == anx6345_chipid_list[i]) {
+			DRM_INFO("Found ANX%x (ver. %d) eDP Transmitter\n",
+				 anx6345->chipid, version);
+			found = true;
+			break;
+		}
+	}
+
+	if (!found) {
+		DRM_ERROR("ANX%x (ver. %d) not supported by this driver\n",
+			  anx6345->chipid, version);
+		err = -ENODEV;
+		goto err_poweroff;
+	}
+
+	anx6345->bridge.funcs = &anx6345_bridge_funcs;
+
+	drm_bridge_add(&anx6345->bridge);
+
+	anx6345_poweroff(anx6345);
+
+	return 0;
+
+err_poweroff:
+	anx6345_poweroff(anx6345);
+
+err_unregister_i2c:
+	unregister_i2c_dummy_clients(anx6345);
+	return err;
+}
+
+static int anx6345_i2c_remove(struct i2c_client *client)
+{
+	struct anx6345 *anx6345 = i2c_get_clientdata(client);
+
+	drm_bridge_remove(&anx6345->bridge);
+
+	unregister_i2c_dummy_clients(anx6345);
+
+	kfree(anx6345->edid);
+
+	return 0;
+}
+
+static const struct i2c_device_id anx6345_id[] = {
+	{ "anx6345", 0 },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(i2c, anx6345_id);
+
+static const struct of_device_id anx6345_match_table[] = {
+	{ .compatible = "analogix,anx6345", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, anx6345_match_table);
+
+static struct i2c_driver anx6345_driver = {
+	.driver = {
+		   .name = "anx6345",
+		   .of_match_table = of_match_ptr(anx6345_match_table),
+		  },
+	.probe = anx6345_i2c_probe,
+	.remove = anx6345_i2c_remove,
+	.id_table = anx6345_id,
+};
+module_i2c_driver(anx6345_driver);
+
+MODULE_DESCRIPTION("ANX6345 eDP Transmitter driver");
+MODULE_AUTHOR("Icenowy Zheng <icenowy@aosc.io>");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
index 9cb30962032e..53b0e73d6a24 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
@@ -117,7 +117,7 @@ ssize_t anx_aux_transfer(struct regmap *map_dptx, struct drm_dp_aux_msg *msg)
 	else	/* For non-zero-sized set the length field. */
 		ctrl1 |= (msg->size - 1) << SP_AUX_LENGTH_SHIFT;
 
-	if ((msg->request & DP_AUX_I2C_READ) == 0) {
+	if ((msg->size > 0) && ((msg->request & DP_AUX_I2C_READ) == 0)) {
 		/* When WRITE | MOT write values to data buffer */
 		err = regmap_bulk_write(map_dptx,
 					SP_DP_BUF_DATA0_REG, buffer,
diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
index c2ca854613a0..b29a0b3bc23c 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
@@ -75,7 +75,11 @@
 #define SP_CHA_STA			BIT(2)
 /* Bits for DP System Control Register 3 */
 #define SP_HPD_STATUS			BIT(6)
+#define SP_HPD_FORCE			BIT(5)
+#define SP_HPD_CTRL			BIT(4)
 #define SP_STRM_VALID			BIT(2)
+#define SP_STRM_FORCE			BIT(1)
+#define SP_STRM_CTRL			BIT(0)
 /* Bits for DP System Control Register 4 */
 #define SP_ENHANCED_MODE		BIT(3)
 
@@ -120,6 +124,9 @@
 #define SP_LINK_BW_SET_MASK		0x1f
 #define SP_INITIAL_SLIM_M_AUD_SEL	BIT(5)
 
+/* DP Lane Count Setting Register */
+#define SP_DP_LANE_COUNT_SET_REG	0xa1
+
 /* DP Training Pattern Set Register */
 #define SP_DP_TRAINING_PATTERN_SET_REG	0xa2
 
@@ -133,6 +140,7 @@
 
 /* DP Link Training Control Register */
 #define SP_DP_LT_CTRL_REG		0xa8
+#define SP_DP_LT_INPROGRESS		0x80
 #define SP_LT_ERROR_TYPE_MASK		0x70
 #  define SP_LT_NO_ERROR		0x00
 #  define SP_LT_AUX_WRITE_ERROR		0x01
diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-txcommon.h b/drivers/gpu/drm/bridge/analogix/analogix-i2c-txcommon.h
index 7d683573e970..480c98a225b1 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-i2c-txcommon.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-txcommon.h
@@ -183,6 +183,9 @@
 #define SP_VBIT				BIT(1)
 #define SP_AUDIO_LAYOUT			BIT(0)
 
+/* Analog Debug Register 1 */
+#define SP_ANALOG_DEBUG1_REG		0xdc
+
 /* Analog Debug Register 2 */
 #define SP_ANALOG_DEBUG2_REG		0xdd
 #define SP_FORCE_SW_OFF_BYPASS		0x20
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
