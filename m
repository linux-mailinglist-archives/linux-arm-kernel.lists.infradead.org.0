Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB1412CDEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 10:05:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rC+RQMQQxi9M/gSd46d4Z79V/FkFItfBfd8eeZJ3QIU=; b=oS14Aibj6/EyXj
	lCEqxKu/XZgaRtUzYAXumjK5v6dFUWgugw90TPTC6gQo2dJJLv0JLzgXPQozR4y8q6sONXV15due7
	GMegDLLgRS+q2prB02v7RK6UNfIenFXU92OXaN2HLX5QocM603yR0E6iy76UBuO2ALgGQq5sAlTZQ
	6BTwDYJIVU3BAL0d5EIdbTXpo91MD+oi7bsguX3S1Bmoc2rwikTfbynk1HDxrRxlH8adnh4BYjgob
	9fqEdFE+pCbz+PwTyRO8UqrIXXJ4eJZVrY13tLPX2fAYZeB7I6LY0S3Gt0rXSX9WmDc3ma2xD7E89
	3vUEdxaKpKuhoQJXMkAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqzQ-0003CJ-L6; Mon, 30 Dec 2019 09:05:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqyW-0001UC-4W; Mon, 30 Dec 2019 09:04:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 53C9728D210
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v24 2/2] drm/bridge: Add I2C based driver for ps8640 bridge
Date: Mon, 30 Dec 2019 10:04:19 +0100
Message-Id: <20191230090419.137141-3-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230090419.137141-1-enric.balletbo@collabora.com>
References: <20191230090419.137141-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_010432_440055_E73BEE9F 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Ulrich Hecht <uli@fpond.eu>, Jernej Skrabec <jernej.skrabec@siol.net>,
 drinkcat@chromium.org, Jitao Shi <jitao.shi@mediatek.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, Daniel Kurtz <djkurtz@chromium.org>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-mediatek@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jitao Shi <jitao.shi@mediatek.com>

This patch adds drm_bridge driver for parade DSI to eDP bridge chip.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Reviewed-by: Daniel Kurtz <djkurtz@chromium.org>
[uli: followed API changes, removed FW update feature]
Signed-off-by: Ulrich Hecht <uli@fpond.eu>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
---
One of the reviews from Laurent was to use 'i2c_new_ancillary_device'. I
didn't change this for two reasons.
1) It doesn't have a devm version, so the remove path is more simple
using the devm_i2c_new_dummy_device family.
2) IIUC the ancillary function is useful when you want to retrieve the
address from the firmware or DT, that's not really the case here, as we
have a base address and fixed offset to the base address which I think
is not configurable.

Let me know if you still think that I should use the ancillary call.

Changes in v24:
- Fix GPIO polarity as all GPIO descriptors should be handled as active high (Laurent Pinchart)
- Make static ps8640_bridge_attach (Ezequiel Garcia)
- Use a define for the number of lanes (Ezequiel Garcia)

Changes in v23:
- Merge mute/unmute functions into one (Nicolas Boichat)
- Use enum for ENABLE/DISABLE instead of bool (Ezequiel Garcia)
- Rename mute/unmute to vdo_control and fix error messages (Nicolas Boichat and Enric)
- Add space between address and address parameter 'address%02x' (Nicolas Boichat)
- Add Tested-by Hsin-Yi
- Added me as author after the refactor

Changes in v22:
- Remove sysfs attributes because are not really used (Enric Balletbo)
- Use enum for address page offsets (Ezequiel Garcia)
- Remove enable tracking (Enric Balletbo)
- Use panel_bridge API (Laurent Pinchart)
- Do not use kernel-doc format for non kernel-doc formatted commands (Enric Balletbo)
- Remove verbose message for PAGE1_VSTART command (Ezequiel Garcia)
- Use time_is_after_jiffies idiom (Ezequiel Garcia)
- Remove unused macros (Ezequiel Garcia)
- Fix weird alignment in dsi->mode_flags (Laurent Pinchart)
- Use drm_of_find_panel_or_bridge helper (Laurent Pinchart)
- Remove mode-sel-gpios as is not used (Laurent Pinchart)
- Remove error messages to get gpios as the core will already report it (Enric Balletbo)
- Remove redundant message getting the regulators (Laurent Pinchart)
- Rename sleep-gpios to powerdown-gpios (Laurent Pinchart)
- Use ARRAY_SIZE(ps_bridge->page) instead of MAX_DEV when possible (Laurent Pinchart)
- Fix race with userspace accessing the sysfs attributes (Laurent Pinchart)
- Remove id_table as is only used on DR platforms (Laurent Pinchart)
- Convert to new i2c device probe() (Laurent Pinchart)
- Use i2c_smbus_read/write helpers instead of open coding it (Laurent Pinchart)
- Remove unnused global variables (Laurent Pinchart)
- Remove unnused fields in ps8640 struct (Laurent Pinchart)
- Remove commented-out headers (Laurent Pinchart)

Changes in v21:
 - Use devm_i2c_new_dummy_device and fix build issue using deprecated i2c_new_dummy
 - Fix build issue due missing drm_bridge.h
 - Do not remove in ps8640_remove device managed resources

Changes in v19:
 - fixed return value of ps8640_probe() when no panel is found

Changes in v18:
 - followed DRM API changes
 - use DEVICE_ATTR_RO()
 - remove firmware update code
 - add SPDX identifier

Changes in v17:
 - remove some unused head files.
 - add macros for ps8640 pages.
 - remove ddc_i2c client
 - add mipi_dsi_device_register_full
 - remove the manufacturer from the name and i2c_device_id

Changes in v16:
 - Disable ps8640 DSI MCS Function.
 - Rename gpios name more clearly.
 - Tune the ps8640 power on sequence.

Changes in v15:
 - Drop drm_connector_(un)register calls from parade ps8640.
   The main DRM driver mtk_drm_drv now calls
   drm_connector_register_all() after drm_dev_register() in the
   mtk_drm_bind() function. That function should iterate over all
   connectors and call drm_connector_register() for each of them.
   So, remove drm_connector_(un)register calls from parade ps8640.

Changes in v14:
 - update copyright info.
 - change bridge_to_ps8640 and connector_to_ps8640 to inline function.
 - fix some coding style.
 - use sizeof as array counter.
 - use drm_get_edid when read edid.
 - add mutex when firmware updating.

Changes in v13:
 - add const on data, ps8640_write_bytes(struct i2c_client *client, const u8 *data, u16 data_len)
 - fix PAGE2_SW_REST tyro.
 - move the buf[3] init to entrance of the function.

Changes in v12:
 - fix hw_chip_id build warning

Changes in v11:
 - Remove depends on I2C, add DRM depends
 - Reuse ps8640_write_bytes() in ps8640_write_byte()
 - Use timer check for polling like the routines in <linux/iopoll.h>
 - Fix no drm_connector_unregister/drm_connector_cleanup when ps8640_bridge_attach fail
 - Check the ps8640 hardware id in ps8640_validate_firmware
 - Remove fw_version check
 - Move ps8640_validate_firmware before ps8640_enter_bl
 - Add ddc_i2c unregister when probe fail and ps8640_remove

 drivers/gpu/drm/bridge/Kconfig         |  11 +
 drivers/gpu/drm/bridge/Makefile        |   1 +
 drivers/gpu/drm/bridge/parade-ps8640.c | 348 +++++++++++++++++++++++++
 3 files changed, 360 insertions(+)
 create mode 100644 drivers/gpu/drm/bridge/parade-ps8640.c

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 4734f6993858..3e0a63011723 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -101,6 +101,17 @@ config DRM_PARADE_PS8622
 	---help---
 	  Parade eDP-LVDS bridge chip driver.
 
+config DRM_PARADE_PS8640
+	tristate "Parade PS8640 MIPI DSI to eDP Converter"
+	depends on OF
+	select DRM_KMS_HELPER
+	select DRM_MIPI_DSI
+	select DRM_PANEL
+	help
+	  Choose this option if you have PS8640 for display
+	  The PS8640 is a high-performance and low-power
+	  MIPI DSI to eDP converter
+
 config DRM_SIL_SII8620
 	tristate "Silicon Image SII8620 HDMI/MHL bridge"
 	depends on OF
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index 1c0c92667ac4..91490c595b38 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_DRM_LVDS_ENCODER) += lvds-encoder.o
 obj-$(CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW) += megachips-stdpxxxx-ge-b850v3-fw.o
 obj-$(CONFIG_DRM_NXP_PTN3460) += nxp-ptn3460.o
 obj-$(CONFIG_DRM_PARADE_PS8622) += parade-ps8622.o
+obj-$(CONFIG_DRM_PARADE_PS8640) += parade-ps8640.o
 obj-$(CONFIG_DRM_SIL_SII8620) += sil-sii8620.o
 obj-$(CONFIG_DRM_SII902X) += sii902x.o
 obj-$(CONFIG_DRM_SII9234) += sii9234.o
diff --git a/drivers/gpu/drm/bridge/parade-ps8640.c b/drivers/gpu/drm/bridge/parade-ps8640.c
new file mode 100644
index 000000000000..c6c06688aff2
--- /dev/null
+++ b/drivers/gpu/drm/bridge/parade-ps8640.c
@@ -0,0 +1,348 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2016 MediaTek Inc.
+ */
+
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/gpio/consumer.h>
+#include <linux/i2c.h>
+#include <linux/module.h>
+#include <linux/of_graph.h>
+#include <linux/regulator/consumer.h>
+
+#include <drm/drm_bridge.h>
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_of.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_print.h>
+
+#define PAGE2_GPIO_H		0xa7
+#define PS_GPIO9		BIT(1)
+#define PAGE2_I2C_BYPASS	0xea
+#define I2C_BYPASS_EN		0xd0
+#define PAGE2_MCS_EN		0xf3
+#define MCS_EN			BIT(0)
+#define PAGE3_SET_ADD		0xfe
+#define VDO_CTL_ADD		0x13
+#define VDO_DIS			0x18
+#define VDO_EN			0x1c
+#define DP_NUM_LANES		4
+
+/*
+ * PS8640 uses multiple addresses:
+ * page[0]: for DP control
+ * page[1]: for VIDEO Bridge
+ * page[2]: for control top
+ * page[3]: for DSI Link Control1
+ * page[4]: for MIPI Phy
+ * page[5]: for VPLL
+ * page[6]: for DSI Link Control2
+ * page[7]: for SPI ROM mapping
+ */
+enum page_addr_offset {
+	PAGE0_DP_CNTL = 0,
+	PAGE1_VDO_BDG,
+	PAGE2_TOP_CNTL,
+	PAGE3_DSI_CNTL1,
+	PAGE4_MIPI_PHY,
+	PAGE5_VPLL,
+	PAGE6_DSI_CNTL2,
+	PAGE7_SPI_CNTL,
+	MAX_DEVS
+};
+
+enum ps8640_vdo_control {
+	DISABLE = VDO_DIS,
+	ENABLE = VDO_EN,
+};
+
+struct ps8640 {
+	struct drm_bridge bridge;
+	struct drm_bridge *panel_bridge;
+	struct mipi_dsi_device *dsi;
+	struct i2c_client *page[MAX_DEVS];
+	struct regulator_bulk_data supplies[2];
+	struct gpio_desc *gpio_reset;
+	struct gpio_desc *gpio_powerdown;
+};
+
+static inline struct ps8640 *bridge_to_ps8640(struct drm_bridge *e)
+{
+	return container_of(e, struct ps8640, bridge);
+}
+
+static int ps8640_bridge_vdo_control(struct ps8640 *ps_bridge,
+				     const enum ps8640_vdo_control ctrl)
+{
+	struct i2c_client *client = ps_bridge->page[PAGE3_DSI_CNTL1];
+	u8 vdo_ctrl_buf[] = { VDO_CTL_ADD, ctrl };
+	int ret;
+
+	ret = i2c_smbus_write_i2c_block_data(client, PAGE3_SET_ADD,
+					     sizeof(vdo_ctrl_buf),
+					     vdo_ctrl_buf);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static void ps8640_pre_enable(struct drm_bridge *bridge)
+{
+	struct ps8640 *ps_bridge = bridge_to_ps8640(bridge);
+	struct i2c_client *client = ps_bridge->page[PAGE2_TOP_CNTL];
+	unsigned long timeout;
+	int ret, status;
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(ps_bridge->supplies),
+				    ps_bridge->supplies);
+	if (ret < 0) {
+		DRM_ERROR("cannot enable regulators %d\n", ret);
+		return;
+	}
+
+	gpiod_set_value(ps_bridge->gpio_powerdown, 0);
+	gpiod_set_value(ps_bridge->gpio_reset, 1);
+	usleep_range(2000, 2500);
+	gpiod_set_value(ps_bridge->gpio_reset, 0);
+
+	/*
+	 * Wait for the ps8640 embedded MCU to be ready
+	 * First wait 200ms and then check the MCU ready flag every 20ms
+	 */
+	msleep(200);
+
+	timeout = jiffies + msecs_to_jiffies(200) + 1;
+
+	while (time_is_after_jiffies(timeout)) {
+		status = i2c_smbus_read_byte_data(client, PAGE2_GPIO_H);
+		if (status < 0) {
+			DRM_ERROR("failed read PAGE2_GPIO_H: %d\n", status);
+			goto err_regulators_disable;
+		}
+		if ((status & PS_GPIO9) == PS_GPIO9)
+			break;
+
+		msleep(20);
+	}
+
+	msleep(50);
+
+	/*
+	 * The Manufacturer Command Set (MCS) is a device dependent interface
+	 * intended for factory programming of the display module default
+	 * parameters. Once the display module is configured, the MCS shall be
+	 * disabled by the manufacturer. Once disabled, all MCS commands are
+	 * ignored by the display interface.
+	 */
+	status = i2c_smbus_read_byte_data(client, PAGE2_MCS_EN);
+	if (status < 0) {
+		DRM_ERROR("failed read PAGE2_MCS_EN: %d\n", status);
+		goto err_regulators_disable;
+	}
+
+	ret = i2c_smbus_write_byte_data(client, PAGE2_MCS_EN,
+					status & ~MCS_EN);
+	if (ret < 0) {
+		DRM_ERROR("failed write PAGE2_MCS_EN: %d\n", ret);
+		goto err_regulators_disable;
+	}
+
+	ret = ps8640_bridge_vdo_control(ps_bridge, ENABLE);
+	if (ret) {
+		DRM_ERROR("failed to enable VDO: %d\n", ret);
+		goto err_regulators_disable;
+	}
+
+	/* Switch access edp panel's edid through i2c */
+	ret = i2c_smbus_write_byte_data(client, PAGE2_I2C_BYPASS,
+					I2C_BYPASS_EN);
+	if (ret < 0) {
+		DRM_ERROR("failed write PAGE2_I2C_BYPASS: %d\n", ret);
+		goto err_regulators_disable;
+	}
+
+	return;
+
+err_regulators_disable:
+	regulator_bulk_disable(ARRAY_SIZE(ps_bridge->supplies),
+			       ps_bridge->supplies);
+}
+
+static void ps8640_post_disable(struct drm_bridge *bridge)
+{
+	struct ps8640 *ps_bridge = bridge_to_ps8640(bridge);
+	int ret;
+
+	ret = ps8640_bridge_vdo_control(ps_bridge, DISABLE);
+	if (ret < 0)
+		DRM_ERROR("failed to disable VDO: %d\n", ret);
+
+	gpiod_set_value(ps_bridge->gpio_reset, 1);
+	gpiod_set_value(ps_bridge->gpio_powerdown, 1);
+	ret = regulator_bulk_disable(ARRAY_SIZE(ps_bridge->supplies),
+				     ps_bridge->supplies);
+	if (ret < 0)
+		DRM_ERROR("cannot disable regulators %d\n", ret);
+}
+
+static int ps8640_bridge_attach(struct drm_bridge *bridge)
+{
+	struct ps8640 *ps_bridge = bridge_to_ps8640(bridge);
+	struct device *dev = &ps_bridge->page[0]->dev;
+	struct device_node *in_ep, *dsi_node;
+	struct mipi_dsi_device *dsi;
+	struct mipi_dsi_host *host;
+	int ret;
+	const struct mipi_dsi_device_info info = { .type = "ps8640",
+						   .channel = 0,
+						   .node = NULL,
+						 };
+	/* port@0 is ps8640 dsi input port */
+	in_ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, -1);
+	if (!in_ep)
+		return -ENODEV;
+
+	dsi_node = of_graph_get_remote_port_parent(in_ep);
+	of_node_put(in_ep);
+	if (!dsi_node)
+		return -ENODEV;
+
+	host = of_find_mipi_dsi_host_by_node(dsi_node);
+	of_node_put(dsi_node);
+	if (!host)
+		return -ENODEV;
+
+	dsi = mipi_dsi_device_register_full(host, &info);
+	if (IS_ERR(dsi)) {
+		dev_err(dev, "failed to create dsi device\n");
+		ret = PTR_ERR(dsi);
+		return ret;
+	}
+
+	ps_bridge->dsi = dsi;
+
+	dsi->host = host;
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO |
+			  MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
+	dsi->format = MIPI_DSI_FMT_RGB888;
+	dsi->lanes = DP_NUM_LANES;
+	ret = mipi_dsi_attach(dsi);
+	if (ret)
+		goto err_dsi_attach;
+
+	/* Attach the panel-bridge to the dsi bridge */
+	return drm_bridge_attach(bridge->encoder, ps_bridge->panel_bridge,
+				 &ps_bridge->bridge);
+
+err_dsi_attach:
+	mipi_dsi_device_unregister(dsi);
+	return ret;
+}
+
+static const struct drm_bridge_funcs ps8640_bridge_funcs = {
+	.attach = ps8640_bridge_attach,
+	.post_disable = ps8640_post_disable,
+	.pre_enable = ps8640_pre_enable,
+};
+
+static int ps8640_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct device_node *np = dev->of_node;
+	struct ps8640 *ps_bridge;
+	struct drm_panel *panel;
+	int ret;
+	u32 i;
+
+	ps_bridge = devm_kzalloc(dev, sizeof(*ps_bridge), GFP_KERNEL);
+	if (!ps_bridge)
+		return -ENOMEM;
+
+	/* port@1 is ps8640 output port */
+	ret = drm_of_find_panel_or_bridge(np, 1, 0, &panel, NULL);
+	if (ret < 0)
+		return ret;
+	if (!panel)
+		return -ENODEV;
+
+	panel->connector_type = DRM_MODE_CONNECTOR_eDP;
+
+	ps_bridge->panel_bridge = devm_drm_panel_bridge_add(dev, panel);
+	if (IS_ERR(ps_bridge->panel_bridge))
+		return PTR_ERR(ps_bridge->panel_bridge);
+
+	ps_bridge->supplies[0].supply = "vdd33";
+	ps_bridge->supplies[1].supply = "vdd12";
+	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ps_bridge->supplies),
+				      ps_bridge->supplies);
+	if (ret)
+		return ret;
+
+	ps_bridge->gpio_powerdown = devm_gpiod_get(&client->dev, "powerdown",
+						   GPIOD_OUT_HIGH);
+	if (IS_ERR(ps_bridge->gpio_powerdown))
+		return PTR_ERR(ps_bridge->gpio_powerdown);
+
+	/*
+	 * Assert the reset to avoid the bridge being initialized prematurely
+	 */
+	ps_bridge->gpio_reset = devm_gpiod_get(&client->dev, "reset",
+					       GPIOD_OUT_HIGH);
+	if (IS_ERR(ps_bridge->gpio_reset))
+		return PTR_ERR(ps_bridge->gpio_reset);
+
+	ps_bridge->bridge.funcs = &ps8640_bridge_funcs;
+	ps_bridge->bridge.of_node = dev->of_node;
+
+	ps_bridge->page[PAGE0_DP_CNTL] = client;
+
+	for (i = 1; i < ARRAY_SIZE(ps_bridge->page); i++) {
+		ps_bridge->page[i] = devm_i2c_new_dummy_device(&client->dev,
+							     client->adapter,
+							     client->addr + i);
+		if (IS_ERR(ps_bridge->page[i])) {
+			dev_err(dev, "failed i2c dummy device, address %02x\n",
+				client->addr + i);
+			return PTR_ERR(ps_bridge->page[i]);
+		}
+	}
+
+	i2c_set_clientdata(client, ps_bridge);
+
+	drm_bridge_add(&ps_bridge->bridge);
+
+	return 0;
+}
+
+static int ps8640_remove(struct i2c_client *client)
+{
+	struct ps8640 *ps_bridge = i2c_get_clientdata(client);
+
+	drm_bridge_remove(&ps_bridge->bridge);
+
+	return 0;
+}
+
+static const struct of_device_id ps8640_match[] = {
+	{ .compatible = "parade,ps8640" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, ps8640_match);
+
+static struct i2c_driver ps8640_driver = {
+	.probe_new = ps8640_probe,
+	.remove = ps8640_remove,
+	.driver = {
+		.name = "ps8640",
+		.of_match_table = ps8640_match,
+	},
+};
+module_i2c_driver(ps8640_driver);
+
+MODULE_AUTHOR("Jitao Shi <jitao.shi@mediatek.com>");
+MODULE_AUTHOR("CK Hu <ck.hu@mediatek.com>");
+MODULE_AUTHOR("Enric Balletbo i Serra <enric.balletbo@collabora.com>");
+MODULE_DESCRIPTION("PARADE ps8640 DSI-eDP converter driver");
+MODULE_LICENSE("GPL v2");
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
