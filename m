Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DE6181E02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:35:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TKCMUU38YoAhfU/pTXg2WazoLZp0CPWyB3sFnZGGwHA=; b=WnRyCbVG997H9m
	p98czliswF+z4rWrQQxZEOF8j9pSCv/OCbl36q8OQ//UfOVgN4msxeSbKIDdXsTFd2XET0HrUK/95
	FZKnTthPhT18+auLpYi5vcV/eZLf4n33UBMQp49cWEMXYbxza+q7MOc/XDPph+y0QXRkKdKzmaoVp
	bO+5n4CjRj6tFhXxinwUs3feA/ZcA0jvEa/IvClaZU4EekR9akgl3rHBxsmehRE9UIBtNRsTo0sxD
	HjKUka6+lE1GaTZQ4KeB5VnG08wwTctDEX07x+Rn5OyV0CVy14M5qraDzYCy5KMUGJrUzqOjW3N03
	rKmS7ds0ZuzfsAOMWT7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4Js-00044L-33; Wed, 11 Mar 2020 16:34:56 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4JE-0003cB-9I
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:34:20 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 99999
X-Spam-Symbols: ARC_NA, TO_DN_SOME, FREEMAIL_TO, RCVD_COUNT_TWO, FROM_HAS_DN,
 RCPT_COUNT_TWELVE, RCVD_VIA_SMTP_AUTH, R_MISSING_CHARSET,
 TAGGED_RCPT, TO_MATCH_ENVRCPT_SOME, ASN, SUSPICIOUS_RECIPS,
 FREEMAIL_ENVRCPT, BROKEN_CONTENT_TYPE, MID_CONTAINS_FROM,
 RCVD_NO_TLS_LAST, FROM_EQ_ENVFROM, MIME_TRACE
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id 4a46f260
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 11 Mar 2020 09:34:15 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id A459C4C335;
 Wed, 11 Mar 2020 16:34:08 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ondrej Jirman <megous@megous.com>
Subject: [PATCH 3/5] drm: panel: add Xingbangda XBD599 panel
Date: Thu, 12 Mar 2020 00:33:27 +0800
Message-Id: <20200311163329.221840-4-icenowy@aosc.io>
In-Reply-To: <20200311163329.221840-1-icenowy@aosc.io>
References: <20200311163329.221840-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1583944453;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding:in-reply-to:references;
 bh=jo7GUkttUhpdv/xm5+AcSjgUB5SPbWX1Nc/gj6NhbS8=;
 b=bSTYRiMb0xwdXMzk4t0ZFjOn1MADN8RsVnOHWTmlarCAWFPuiS8oS2p1DqRVJQtOdpYo9C
 7MgEm73L7r+v5BBJNkUOcyM69ydEurMru3q7Lqt06CYM1RtOSMS9SlMRb4SSfeha8EXZtN
 657fIBGtddJh4uqSP0hSa7xmI0RiT/s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_093416_418792_2E03538E 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI IPS LCD panel made by
Xingbangda, which is used on PinePhone final assembled phones.

Add support for it.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-xingbangda-xbd599.c   | 367 ++++++++++++++++++
 3 files changed, 377 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-xingbangda-xbd599.c

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index da3b84602cdd..d648f40469c7 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -413,6 +413,15 @@ config DRM_PANEL_TRULY_NT35597_WQXGA
 	  Say Y here if you want to enable support for Truly NT35597 WQXGA Dual DSI
 	  Video Mode panel
 
+config DRM_PANEL_XINGBANGDA_XBD599
+	tristate "Xingbangda XBD599 panel"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y here if you want to enable support for the Xingbangda XBD599
+	  MIPI DSI Video Mode panel.
+
 config DRM_PANEL_XINPENG_XPP055C272
 	tristate "Xinpeng XPP055C272 panel driver"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index af1e2a3cc5fc..d9645f079e59 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -44,4 +44,5 @@ obj-$(CONFIG_DRM_PANEL_TPO_TD028TTEC1) += panel-tpo-td028ttec1.o
 obj-$(CONFIG_DRM_PANEL_TPO_TD043MTEA1) += panel-tpo-td043mtea1.o
 obj-$(CONFIG_DRM_PANEL_TPO_TPG110) += panel-tpo-tpg110.o
 obj-$(CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA) += panel-truly-nt35597.o
+obj-$(CONFIG_DRM_PANEL_XINGBANGDA_XBD599) += panel-xingbangda-xbd599.o
 obj-$(CONFIG_DRM_PANEL_XINPENG_XPP055C272) += panel-xinpeng-xpp055c272.o
diff --git a/drivers/gpu/drm/panel/panel-xingbangda-xbd599.c b/drivers/gpu/drm/panel/panel-xingbangda-xbd599.c
new file mode 100644
index 000000000000..68a5d8bb7f26
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-xingbangda-xbd599.c
@@ -0,0 +1,367 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Xingbangda XBD599 MIPI-DSI panel driver
+ *
+ * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.io>
+ *
+ * Based on panel-rocktech-jh057n00900.c, which is:
+ *   Copyright (C) Purism SPC 2019
+ */
+
+#include <linux/gpio/consumer.h>
+#include <linux/delay.h>
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
+#define DRV_NAME "panel-xingbangda-xbd599"
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
+static const char * const regulator_names[] = {
+	"iovcc",
+	"vcc",
+};
+
+struct xbd599 {
+	struct device *dev;
+	struct drm_panel panel;
+	struct gpio_desc *reset_gpio;
+	struct regulator_bulk_data supplies[ARRAY_SIZE(regulator_names)];
+	bool prepared;
+};
+
+static inline struct xbd599 *panel_to_xbd599(struct drm_panel *panel)
+{
+	return container_of(panel, struct xbd599, panel);
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
+static int xbd599_init_sequence(struct xbd599 *ctx)
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
+			  0x00, 0x00, 0x00 ,0x00, 0x00, 0x00, 0x03, 0x0A,
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
+static int xbd599_disable(struct drm_panel *panel)
+{
+	struct xbd599 *ctx = panel_to_xbd599(panel);
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+
+	return mipi_dsi_dcs_set_display_off(dsi);
+}
+
+static int xbd599_unprepare(struct drm_panel *panel)
+{
+	struct xbd599 *ctx = panel_to_xbd599(panel);
+
+	if (!ctx->prepared)
+		return 0;
+
+	regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
+	ctx->prepared = false;
+
+	return 0;
+}
+
+static int xbd599_enable(struct drm_panel *panel)
+{
+	struct xbd599 *ctx = panel_to_xbd599(panel);
+	int ret;
+
+	ret = xbd599_init_sequence(ctx);
+	if (ret < 0) {
+		DRM_DEV_ERROR(ctx->dev, "Panel init sequence failed: %d\n",
+			      ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int xbd599_prepare(struct drm_panel *panel)
+{
+	struct xbd599 *ctx = panel_to_xbd599(panel);
+	int ret;
+
+	if (ctx->prepared)
+		return 0;
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
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
+static const struct drm_display_mode xbd599_default_mode = {
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
+static int xbd599_get_modes(struct drm_panel *panel,
+			    struct drm_connector *connector)
+{
+	struct xbd599 *ctx = panel_to_xbd599(panel);
+	struct drm_display_mode *mode;
+
+	mode = drm_mode_duplicate(connector->dev, &xbd599_default_mode);
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
+static const struct drm_panel_funcs xbd599_drm_funcs = {
+	.disable   = xbd599_disable,
+	.unprepare = xbd599_unprepare,
+	.enable    = xbd599_enable,
+	.prepare   = xbd599_prepare,
+	.get_modes = xbd599_get_modes,
+};
+
+static int xbd599_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	struct xbd599 *ctx;
+	int i, ret;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	for (i = 0; i < ARRAY_SIZE(ctx->supplies); i++)
+		ctx->supplies[i].supply = regulator_names[i];
+
+	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ctx->supplies),
+				      ctx->supplies);
+	if (ret < 0) {
+		DRM_DEV_ERROR(&dsi->dev, "cannot get regulators\n");
+		return ret;
+	}
+
+	ctx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(ctx->reset_gpio)) {
+		DRM_DEV_ERROR(dev, "cannot get reset gpio\n");
+		return PTR_ERR(ctx->reset_gpio);
+	}
+
+	mipi_dsi_set_drvdata(dsi, ctx);
+
+	ctx->dev = dev;
+
+	dsi->lanes = 4;
+	dsi->format = MIPI_DSI_FMT_RGB888;
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
+
+	drm_panel_init(&ctx->panel, &dsi->dev, &xbd599_drm_funcs,
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
+	DRM_DEV_INFO(dev, "%ux%u@%u %ubpp dsi %udl - ready\n",
+		     xbd599_default_mode.hdisplay,
+		     xbd599_default_mode.vdisplay,
+		     xbd599_default_mode.vrefresh,
+		     mipi_dsi_pixel_format_to_bpp(dsi->format), dsi->lanes);
+
+	return 0;
+}
+
+static void xbd599_shutdown(struct mipi_dsi_device *dsi)
+{
+	struct xbd599 *ctx = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	ret = xbd599_unprepare(&ctx->panel);
+	if (ret < 0)
+		DRM_DEV_ERROR(&dsi->dev, "Failed to unprepare panel: %d\n",
+			      ret);
+}
+
+static int xbd599_remove(struct mipi_dsi_device *dsi)
+{
+	struct xbd599 *ctx = mipi_dsi_get_drvdata(dsi);
+	int ret;
+
+	xbd599_shutdown(dsi);
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
+static const struct of_device_id xbd599_of_match[] = {
+	{ .compatible = "xingbangda,xbd599", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, xbd599_of_match);
+
+static struct mipi_dsi_driver xbd599_driver = {
+	.probe	= xbd599_probe,
+	.remove = xbd599_remove,
+	.shutdown = xbd599_shutdown,
+	.driver = {
+		.name = DRV_NAME,
+		.of_match_table = xbd599_of_match,
+	},
+};
+module_mipi_dsi_driver(xbd599_driver);
+
+MODULE_AUTHOR("Icenowy Zheng <icenowy@aosc.io>");
+MODULE_DESCRIPTION("DRM driver for Xingbangda XBD599 MIPI DSI panel");
+MODULE_LICENSE("GPL v2");
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
