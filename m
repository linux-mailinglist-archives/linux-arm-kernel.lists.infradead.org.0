Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4121D20FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 23:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3WheltZg372RLYnmlFXpTVQM3nNxVV7VoegyLx6gwA=; b=OSravCaZQBM15D
	4nBlXpQGQmO4qNYPDlXm5ZAwZAvK1xr0Rg6PbLDNt/dLZpR6VFusLQHfNbYuTu6HCfikEpSdAFtQb
	TbGkkgtAUjyFWHofiCGnzS11kzZg4boBb9K5E6CcaNEnTfdbIC4RaSVIW7xxSWdlY81Bdp+gelQo/
	vvWSdWIwvQK9VnKs/qCa1C+pOFQzl2OA8QWSaaK2SRAcFfSqRMkyVFppp7G4wsORmBa1TY6fqjIhQ
	yFhiQiHEmfP/n7/rl4Y4oWjP1tDob3GoBYg5Uop26iFHBJhNvdSIyrX20BSu3WXS466cPLgQIOXug
	kE39wsEnKPZln7mi7NCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYytT-0000IY-41; Wed, 13 May 2020 21:26:23 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYys6-0005LM-6R
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 21:25:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1589405096; bh=Ltf9aeNcE4+mQ/GdAR4+0qPXrvLsMpn2puASK5sQ+ag=;
 h=From:To:Cc:Subject:Date:References:From;
 b=I7yBZP2A59cmB2H1JRsOrTDMiyp6lDTaFc037J/dnvU/wC0dVyZTSnVHfrpjk9amm
 FmUiu4qmoTxYiB0zmmpp4zH+PhIugynAgT3xFxEgnAMJcWgOsisVMfz8i9Vn68qU44
 k/bq+12Jf1haOWsycnD2pFIHaEdwyjZ46P9c2UiY=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>, Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH v3 3/5] drm: panel: Add Xingbangda XBD599 panel (ST7703
 controller)
Date: Wed, 13 May 2020 23:24:49 +0200
Message-Id: <20200513212451.1919013-4-megous@megous.com>
In-Reply-To: <20200513212451.1919013-1-megous@megous.com>
References: <20200513212451.1919013-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_142458_587936_568720AD 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Samuel Holland <samuel@sholland.org>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Luca Weiss <luca@z3ntu.xyz>, Martijn Braam <martijn@brixit.nl>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI IPS LCD panel made by
Xingbangda, which is used on PinePhone final assembled phones.

It is based on Sitronix ST7703 LCD controller.

Add support for it.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 386 ++++++++++++++++++
 3 files changed, 397 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-sitronix-st7703.c

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index 39055c1f0e2f..b7bc157b0612 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -395,6 +395,16 @@ config DRM_PANEL_SITRONIX_ST7701
 	  ST7701 controller for 480X864 LCD panels with MIPI/RGB/SPI
 	  system interfaces.
 
+config DRM_PANEL_SITRONIX_ST7703
+	tristate "Sitronix ST7703 panel driver"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y here if you want to enable support for the Sitronix
+	  ST7703 controller for 720X1440 LCD panels with MIPI/RGB/SPI
+	  system interfaces.
+
 config DRM_PANEL_SITRONIX_ST7789V
 	tristate "Sitronix ST7789V panel"
 	depends on OF && SPI
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index de74f282c433..47f4789a8685 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -41,6 +41,7 @@ obj-$(CONFIG_DRM_PANEL_SHARP_LQ101R1SX01) += panel-sharp-lq101r1sx01.o
 obj-$(CONFIG_DRM_PANEL_SHARP_LS037V7DW01) += panel-sharp-ls037v7dw01.o
 obj-$(CONFIG_DRM_PANEL_SHARP_LS043T1LE01) += panel-sharp-ls043t1le01.o
 obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7701) += panel-sitronix-st7701.o
+obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7703) += panel-sitronix-st7703.o
 obj-$(CONFIG_DRM_PANEL_SITRONIX_ST7789V) += panel-sitronix-st7789v.o
 obj-$(CONFIG_DRM_PANEL_SONY_ACX424AKP) += panel-sony-acx424akp.o
 obj-$(CONFIG_DRM_PANEL_SONY_ACX565AKM) += panel-sony-acx565akm.o
diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
new file mode 100644
index 000000000000..092dd73c86d0
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -0,0 +1,386 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * DRM driver for Sitronix ST7703 MIPI DSI panel
+ *
+ * Copyright (C) 2020 Ondrej Jirman <megous@megous.com>
+ * Copyright (C) 2019-2020 Icenowy Zheng <icenowy@aosc.io>
+ *
+ * Based on panel-rocktech-jh057n00900.c, which is:
+ *   Copyright (C) Purism SPC 2019
+ */
+
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/regulator/consumer.h>
+
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_print.h>
+
+/* Manufacturer specific Commands send via DSI */
+#define ST7703_CMD_ALL_PIXEL_OFF 0x22
+#define ST7703_CMD_ALL_PIXEL_ON	 0x23
+#define ST7703_CMD_SETDISP	 0xB2
+#define ST7703_CMD_SETRGBIF	 0xB3
+#define ST7703_CMD_SETCYC	 0xB4
+#define ST7703_CMD_SETBGP	 0xB5
+#define ST7703_CMD_SETVCOM	 0xB6
+#define ST7703_CMD_SETOTP	 0xB7
+#define ST7703_CMD_SETPOWER_EXT	 0xB8
+#define ST7703_CMD_SETEXTC	 0xB9
+#define ST7703_CMD_SETMIPI	 0xBA
+#define ST7703_CMD_SETVDC	 0xBC
+#define ST7703_CMD_SETSCR	 0xC0
+#define ST7703_CMD_SETPOWER	 0xC1
+#define ST7703_CMD_UNK_C6	 0xC6
+#define ST7703_CMD_SETPANEL	 0xCC
+#define ST7703_CMD_SETGAMMA	 0xE0
+#define ST7703_CMD_SETEQ	 0xE3
+#define ST7703_CMD_SETGIP1	 0xE9
+#define ST7703_CMD_SETGIP2	 0xEA
+
+struct st7703_panel_desc {
+	const struct drm_display_mode *mode;
+	unsigned int lanes;
+	unsigned long flags;
+	enum mipi_dsi_pixel_format format;
+	const char *const *supply_names;
+	unsigned int num_supplies;
+};
+
+struct st7703 {
+	struct device *dev;
+	struct drm_panel panel;
+	struct gpio_desc *reset_gpio;
+	struct regulator_bulk_data *supplies;
+	const struct st7703_panel_desc *desc;
+	bool prepared;
+};
+
+static inline struct st7703 *panel_to_st7703(struct drm_panel *panel)
+{
+	return container_of(panel, struct st7703, panel);
+}
+
+#define dsi_dcs_write_seq(dsi, cmd, seq...) do {			\
+		static const u8 d[] = { seq };				\
+		int ret;						\
+		ret = mipi_dsi_dcs_write(dsi, cmd, d, ARRAY_SIZE(d));	\
+		if (ret < 0)						\
+			return ret;					\
+	} while (0)
+
+static int st7703_init_sequence(struct st7703 *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+	struct device *dev = ctx->dev;
+	int ret;
+
+	/*
+	 * Init sequence was supplied by the panel vendor.
+	 */
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC,
+			  0xF1, 0x12, 0x83);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI,
+			  0x33, 0x81, 0x05, 0xF9, 0x0E, 0x0E, 0x20, 0x00,
+			  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x25,
+			  0x00, 0x91, 0x0a, 0x00, 0x00, 0x02, 0x4F, 0x11,
+			  0x00, 0x00, 0x37);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT,
+			  0x25, 0x22, 0x20, 0x03);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF,
+			  0x10, 0x10, 0x05, 0x05, 0x03, 0xFF, 0x00, 0x00,
+			  0x00, 0x00);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR,
+			  0x73, 0x73, 0x50, 0x50, 0x00, 0xC0, 0x08, 0x70,
+			  0x00);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x4E);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0B);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0xF0, 0x12, 0xF0);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ,
+			  0x00, 0x00, 0x0B, 0x0B, 0x10, 0x10, 0x00, 0x00,
+			  0x00, 0x00, 0xFF, 0x00, 0xC0, 0x10);
+	dsi_dcs_write_seq(dsi, 0xC6, 0x01, 0x00, 0xFF, 0xFF, 0x00);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER,
+			  0x74, 0x00, 0x32, 0x32, 0x77, 0xF1, 0xFF, 0xFF,
+			  0xCC, 0xCC, 0x77, 0x77);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x07, 0x07);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x2C, 0x2C);
+	dsi_dcs_write_seq(dsi, 0xBF, 0x02, 0x11, 0x00);
+
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1,
+			  0x82, 0x10, 0x06, 0x05, 0xA2, 0x0A, 0xA5, 0x12,
+			  0x31, 0x23, 0x37, 0x83, 0x04, 0xBC, 0x27, 0x38,
+			  0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00,
+			  0x03, 0x00, 0x00, 0x00, 0x75, 0x75, 0x31, 0x88,
+			  0x88, 0x88, 0x88, 0x88, 0x88, 0x13, 0x88, 0x64,
+			  0x64, 0x20, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88,
+			  0x02, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2,
+			  0x02, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			  0x00, 0x00, 0x00, 0x00, 0x02, 0x46, 0x02, 0x88,
+			  0x88, 0x88, 0x88, 0x88, 0x88, 0x64, 0x88, 0x13,
+			  0x57, 0x13, 0x88, 0x88, 0x88, 0x88, 0x88, 0x88,
+			  0x75, 0x88, 0x23, 0x14, 0x00, 0x00, 0x02, 0x00,
+			  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0A,
+			  0xA5, 0x00, 0x00, 0x00, 0x00);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA,
+			  0x00, 0x09, 0x0D, 0x23, 0x27, 0x3C, 0x41, 0x35,
+			  0x07, 0x0D, 0x0E, 0x12, 0x13, 0x10, 0x12, 0x12,
+			  0x18, 0x00, 0x09, 0x0D, 0x23, 0x27, 0x3C, 0x41,
+			  0x35, 0x07, 0x0D, 0x0E, 0x12, 0x13, 0x10, 0x12,
+			  0x12, 0x18);
+	msleep(20);
+
+	ret = mipi_dsi_dcs_exit_sleep_mode(dsi);
+	if (ret < 0) {
+		DRM_DEV_ERROR(dev, "Failed to exit sleep mode\n");
+		return ret;
+	}
+	msleep(250);
+
+	ret = mipi_dsi_dcs_set_display_on(dsi);
+	if (ret)
+		return ret;
+	msleep(50);
+
+	DRM_DEV_DEBUG_DRIVER(dev, "Panel init sequence done\n");
+	return 0;
+}
+
+static int st7703_prepare(struct drm_panel *panel)
+{
+	struct st7703 *ctx = panel_to_st7703(panel);
+	int ret;
+
+	if (ctx->prepared)
+		return 0;
+
+	ret = regulator_bulk_enable(ctx->desc->num_supplies, ctx->supplies);
+	if (ret)
+		return ret;
+
+	DRM_DEV_DEBUG_DRIVER(ctx->dev, "Resetting the panel\n");
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+	usleep_range(20, 40);
+	gpiod_set_value_cansleep(ctx->reset_gpio, 0);
+	msleep(20);
+
+	ctx->prepared = true;
+
+	return 0;
+}
+
+static int st7703_enable(struct drm_panel *panel)
+{
+	struct st7703 *ctx = panel_to_st7703(panel);
+	int ret;
+
+	ret = st7703_init_sequence(ctx);
+	if (ret < 0) {
+		DRM_DEV_ERROR(ctx->dev, "Panel init sequence failed: %d\n",
+			      ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int st7703_disable(struct drm_panel *panel)
+{
+	struct st7703 *ctx = panel_to_st7703(panel);
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+
+	return mipi_dsi_dcs_set_display_off(dsi);
+}
+
+static int st7703_unprepare(struct drm_panel *panel)
+{
+	struct st7703 *ctx = panel_to_st7703(panel);
+
+	if (!ctx->prepared)
+		return 0;
+
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+	regulator_bulk_disable(ctx->desc->num_supplies, ctx->supplies);
+	ctx->prepared = false;
+
+	return 0;
+}
+
+static int st7703_get_modes(struct drm_panel *panel,
+			    struct drm_connector *connector)
+{
+	struct st7703 *ctx = panel_to_st7703(panel);
+	struct drm_display_mode *mode;
+
+	mode = drm_mode_duplicate(connector->dev, ctx->desc->mode);
+	if (!mode) {
+		DRM_DEV_ERROR(ctx->dev, "Failed to add mode\n");
+		return -ENOMEM;
+	}
+
+	drm_mode_set_name(mode);
+
+	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
+	connector->display_info.width_mm = mode->width_mm;
+	connector->display_info.height_mm = mode->height_mm;
+	drm_mode_probed_add(connector, mode);
+
+	return 1;
+}
+
+static const struct drm_panel_funcs st7703_drm_funcs = {
+	.prepare   = st7703_prepare,
+	.enable    = st7703_enable,
+	.disable   = st7703_disable,
+	.unprepare = st7703_unprepare,
+	.get_modes = st7703_get_modes,
+};
+
+static const struct drm_display_mode xbd599_mode = {
+	.hdisplay    = 720,
+	.hsync_start = 720 + 40,
+	.hsync_end   = 720 + 40 + 40,
+	.htotal	     = 720 + 40 + 40 + 40,
+	.vdisplay    = 1440,
+	.vsync_start = 1440 + 18,
+	.vsync_end   = 1440 + 18 + 10,
+	.vtotal	     = 1440 + 18 + 10 + 17,
+	.vrefresh    = 60,
+	.clock	     = 69000,
+	.flags	     = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+
+	.width_mm    = 68,
+	.height_mm   = 136,
+	.type        = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static const char * const xbd599_supply_names[] = {
+	"iovcc",
+	"vcc",
+};
+
+static const struct st7703_panel_desc xbd599_desc = {
+	.mode = &xbd599_mode,
+	.lanes = 4,
+	.flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE,
+	.format = MIPI_DSI_FMT_RGB888,
+	.supply_names = xbd599_supply_names,
+	.num_supplies = ARRAY_SIZE(xbd599_supply_names),
+};
+
+static int st7703_probe(struct mipi_dsi_device *dsi)
+{
+	const struct st7703_panel_desc *desc;
+	struct device *dev = &dsi->dev;
+	struct st7703 *ctx;
+	int i, ret;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ctx->dev = dev;
+	ctx->desc = desc = of_device_get_match_data(dev);
+
+	dsi->mode_flags = desc->flags;
+	dsi->format = desc->format;
+	dsi->lanes = desc->lanes;
+
+	ctx->supplies = devm_kcalloc(&dsi->dev, desc->num_supplies,
+					sizeof(*ctx->supplies),
+					GFP_KERNEL);
+	if (!ctx->supplies)
+		return -ENOMEM;
+
+	for (i = 0; i < desc->num_supplies; i++)
+		ctx->supplies[i].supply = desc->supply_names[i];
+
+	ret = devm_regulator_bulk_get(&dsi->dev, desc->num_supplies,
+				      ctx->supplies);
+	if (ret < 0)
+		return ret;
+
+	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(ctx->reset_gpio)) {
+		DRM_DEV_ERROR(dev, "Can't get reset gpio\n");
+		return PTR_ERR(ctx->reset_gpio);
+	}
+
+	mipi_dsi_set_drvdata(dsi, ctx);
+
+	drm_panel_init(&ctx->panel, &dsi->dev, &st7703_drm_funcs,
+		       DRM_MODE_CONNECTOR_DSI);
+
+	ret = drm_panel_of_backlight(&ctx->panel);
+	if (ret)
+		return ret;
+
+	drm_panel_add(&ctx->panel);
+
+	ret = mipi_dsi_attach(dsi);
+	if (ret < 0) {
+		DRM_DEV_ERROR(dev, "mipi_dsi_attach failed. Is host ready?\n");
+		drm_panel_remove(&ctx->panel);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void st7703_shutdown(struct mipi_dsi_device *dsi)
+{
+	struct st7703 *ctx = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	ret = drm_panel_unprepare(&ctx->panel);
+	if (ret < 0)
+		DRM_DEV_ERROR(&dsi->dev, "Failed to unprepare panel: %d\n",
+			      ret);
+}
+
+static int st7703_remove(struct mipi_dsi_device *dsi)
+{
+	struct st7703 *ctx = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	st7703_shutdown(dsi);
+
+	ret = mipi_dsi_detach(dsi);
+	if (ret < 0)
+		DRM_DEV_ERROR(&dsi->dev, "Failed to detach from DSI host: %d\n",
+			      ret);
+
+	drm_panel_remove(&ctx->panel);
+
+	return 0;
+}
+
+static const struct of_device_id st7703_of_match[] = {
+	{ .compatible = "xingbangda,xbd599", .data = &xbd599_desc },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, st7703_of_match);
+
+static struct mipi_dsi_driver st7703_driver = {
+	.probe	= st7703_probe,
+	.remove = st7703_remove,
+	.shutdown = st7703_shutdown,
+	.driver = {
+		.name = "st7703",
+		.of_match_table = st7703_of_match,
+	},
+};
+module_mipi_dsi_driver(st7703_driver);
+
+MODULE_AUTHOR("Icenowy Zheng <icenowy@aosc.io>");
+MODULE_DESCRIPTION("DRM driver for Sitronix ST7703 MIPI DSI panel");
+MODULE_LICENSE("GPL v2");
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
