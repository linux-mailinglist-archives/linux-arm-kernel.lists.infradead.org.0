Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FA3C988F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 08:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nL7EZx4sJ6JBnzPP+VpKT1mKcLPF7zuB7VBi/fDFn9E=; b=cqt4LHn4+fjNil
	WDXnZhDMC4C/a/6EsRNbFGpPsuh34VKittpHLlbUKc5F1O92wdk5UJe8ba6z1hQR+B0tv/dTD07Lt
	cgOxFwLx3D+CcqDy5tNdxzgq+DH/zFlELlAgwRzE1qSGpb7bpA5nL09OAkWw0eJvLIrobyGqKf+as
	qsQd+R5v9DfOmG4c7Vhk8oGUlBN6pCGsU9yzY3BlQbjGNcIdEHXnsm5wJdkXTsoxdxJKHO/aCfNBk
	qmXR1GgHV+mR1Auu/zEtav/8kUUt1rWjPMG6HKcWV/roQQhQwAGQtxPw0h96XqxFJu5tl+lYG+ud5
	eqVQR9bsVFSBahx86NFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFuu7-0006Yp-3a; Thu, 03 Oct 2019 06:47:59 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFusb-0004B1-JM
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 06:46:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id x127so1072428pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 23:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=li7R7HVFbHOItbxAXHarAyBOT0QTwsgebw66WXKpkGs=;
 b=VYIg7AM2UHRulaV72g13dMkVxUfv9L3Zcskn5LNCkljpBNnMOEt2HaU3iiT8HX0egq
 NMaJv9cqqBuNqgZITzApRhTOL7KyWlA2nHgCaaBmiNoXveeawA3OnVH07YSiKlbZyZhE
 4YqfE1DUJieoWG2ZMPQ1ANHObHPFliVKSv1Ik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=li7R7HVFbHOItbxAXHarAyBOT0QTwsgebw66WXKpkGs=;
 b=FlPcMbVecqEv9BXfoI5ObAA3IdYZx1630U6Y2XPktzAw1ECN2jfnBAG9hzhLxkun0a
 Bh6uBO8vFUWDBJnw+dPehLmPO0KjrZ6FeLPH/bJWseL1zHJkwZPzGbtrUsj3wmZkg9P0
 w8kBxnoYsgBh6w3rG6Yl806JjsEdpPjZMXrwYz/Zuh0m50oceV0d3eBm7YoAzNnDSD+7
 /x7kUU3F6CiCw6coIIkfaH//8LKA2ceFDq+Hx6IitNO43kV2OyqzuTye/boZ9PjtV6Qn
 J/a64uV5+gKcyfoTxuNzbTkg1fBlon0lSyB73lxUr8Y1zG1gA9iYyfJimmh6F6vtWt0X
 LAQw==
X-Gm-Message-State: APjAAAWNyuDaDZCPFZR9S5iuEv3ZZF3ldOcd/ulb3tfkUsMQ7JIC65FM
 xQq0bkx4yJ3u90vHiZiyfGjvtwdnGzM=
X-Google-Smtp-Source: APXvYqyVc9MK0Qm4dCnzOzFZas7Meq35haCYltQZZDj89dF40GEROq1BqwRDnDs8x8l6UuonJiiKDg==
X-Received: by 2002:a63:4956:: with SMTP id y22mr7708429pgk.398.1570085184421; 
 Wed, 02 Oct 2019 23:46:24 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.121])
 by smtp.gmail.com with ESMTPSA id b18sm1423294pfi.157.2019.10.02.23.46.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 23:46:23 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v11 6/7] drm/panel: Add Bananapi S070WV20-CT16 ICN6211
 MIPI-DSI to RGB bridge
Date: Thu,  3 Oct 2019 12:15:26 +0530
Message-Id: <20191003064527.15128-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191003064527.15128-1-jagan@amarulasolutions.com>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_234625_677253_E0182C01 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Bananapi S070WV20-CT16 ICN6211 is 800x480, 4-lane MIPI-DSI to RGB bridge
panel which can be used to connect via DSI port on BPI-M64 board,
so add a driver for it.

The same panel PCB comes with parallel RBG which is supported via
panel-simple driver with "bananapi,s070wv20-ct16" compatible.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../panel/panel-bananapi-s070wv20-icn6211.c   | 293 ++++++++++++++++++
 3 files changed, 303 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-bananapi-s070wv20-icn6211.c

diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index f152bc4eeb53..93bcca581018 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -18,6 +18,15 @@ config DRM_PANEL_ARM_VERSATILE
 	  reference designs. The panel is detected using special registers
 	  in the Versatile family syscon registers.
 
+config DRM_PANEL_BANANAPI_S070WV20_ICN6211
+	tristate "Bananapi S070WV20-CT16 ICN6211 MIPI-DSI to RGB bridge panel driver"
+	depends on OF
+	depends on DRM_MIPI_DSI
+	depends on BACKLIGHT_CLASS_DEVICE
+	help
+	  Say Y if you want to enable support for panels based on the
+	  Bananapi S070WV20-CT16 MIPI-DSI controller.
+
 config DRM_PANEL_LVDS
 	tristate "Generic LVDS panel driver"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index b6cd39fe0f20..a93a33ca4617 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_DRM_PANEL_ARM_VERSATILE) += panel-arm-versatile.o
+obj-$(CONFIG_DRM_PANEL_BANANAPI_S070WV20_ICN6211) += panel-bananapi-s070wv20-icn6211.o
 obj-$(CONFIG_DRM_PANEL_LVDS) += panel-lvds.o
 obj-$(CONFIG_DRM_PANEL_SIMPLE) += panel-simple.o
 obj-$(CONFIG_DRM_PANEL_FEIYANG_FY07024DI26A30D) += panel-feiyang-fy07024di26a30d.o
diff --git a/drivers/gpu/drm/panel/panel-bananapi-s070wv20-icn6211.c b/drivers/gpu/drm/panel/panel-bananapi-s070wv20-icn6211.c
new file mode 100644
index 000000000000..52a5b60278af
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-bananapi-s070wv20-icn6211.c
@@ -0,0 +1,293 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2018 Amarula Solutions
+ * Author: Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include <linux/backlight.h>
+#include <linux/delay.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+
+#include <linux/gpio/consumer.h>
+#include <linux/regulator/consumer.h>
+
+#include <drm/drm_mipi_dsi.h>
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+
+struct s070wv20 {
+	struct drm_panel	panel;
+	struct mipi_dsi_device	*dsi;
+
+	struct backlight_device	*backlight;
+	struct regulator	*vdd;
+	struct gpio_desc	*enable_gpio;
+	struct gpio_desc	*reset_gpio;
+};
+
+static inline struct s070wv20 *panel_to_s070wv20(struct drm_panel *panel)
+{
+	return container_of(panel, struct s070wv20, panel);
+}
+
+struct s070wv20_init_cmd {
+	size_t len;
+	const char *data;
+};
+
+#define S070WV20_INIT_CMD(...) { \
+	.len = sizeof((char[]){__VA_ARGS__}), \
+	.data = (char[]){__VA_ARGS__} }
+
+static const struct s070wv20_init_cmd s070wv20_init_cmds[] = {
+	S070WV20_INIT_CMD(0x7A, 0xC1),
+	S070WV20_INIT_CMD(0x20, 0x20),
+	S070WV20_INIT_CMD(0x21, 0xE0),
+	S070WV20_INIT_CMD(0x22, 0x13),
+	S070WV20_INIT_CMD(0x23, 0x28),
+	S070WV20_INIT_CMD(0x24, 0x30),
+	S070WV20_INIT_CMD(0x25, 0x28),
+	S070WV20_INIT_CMD(0x26, 0x00),
+	S070WV20_INIT_CMD(0x27, 0x0D),
+	S070WV20_INIT_CMD(0x28, 0x03),
+	S070WV20_INIT_CMD(0x29, 0x1D),
+	S070WV20_INIT_CMD(0x34, 0x80),
+	S070WV20_INIT_CMD(0x36, 0x28),
+	S070WV20_INIT_CMD(0xB5, 0xA0),
+	S070WV20_INIT_CMD(0x5C, 0xFF),
+	S070WV20_INIT_CMD(0x2A, 0x01),
+	S070WV20_INIT_CMD(0x56, 0x92),
+	S070WV20_INIT_CMD(0x6B, 0x71),
+	S070WV20_INIT_CMD(0x69, 0x2B),
+	S070WV20_INIT_CMD(0x10, 0x40),
+	S070WV20_INIT_CMD(0x11, 0x98),
+	S070WV20_INIT_CMD(0xB6, 0x20),
+	S070WV20_INIT_CMD(0x51, 0x20),
+	S070WV20_INIT_CMD(0x09, 0x10),
+};
+
+static int s070wv20_prepare(struct drm_panel *panel)
+{
+	struct s070wv20 *ctx = panel_to_s070wv20(panel);
+	struct mipi_dsi_device *dsi = ctx->dsi;
+	unsigned int i;
+	int ret;
+
+	ret = regulator_enable(ctx->vdd);
+	if (ret)
+		return ret;
+
+	msleep(50);
+
+	gpiod_set_value(ctx->reset_gpio, 1);
+	msleep(50);
+
+	gpiod_set_value(ctx->enable_gpio, 1);
+	msleep(50);
+
+	gpiod_set_value(ctx->reset_gpio, 0);
+	msleep(50);
+
+	gpiod_set_value(ctx->reset_gpio, 1);
+	msleep(20);
+
+	for (i = 0; i < ARRAY_SIZE(s070wv20_init_cmds); i++) {
+		const struct s070wv20_init_cmd *cmd = &s070wv20_init_cmds[i];
+
+		ret = mipi_dsi_generic_write(dsi, cmd->data, cmd->len);
+		if (ret < 0)
+			return ret;
+
+		msleep(10);
+	}
+
+	return 0;
+}
+
+static int s070wv20_enable(struct drm_panel *panel)
+{
+	struct s070wv20 *ctx = panel_to_s070wv20(panel);
+
+	msleep(120);
+
+	mipi_dsi_dcs_set_display_on(ctx->dsi);
+	backlight_enable(ctx->backlight);
+
+	return 0;
+}
+
+static int s070wv20_disable(struct drm_panel *panel)
+{
+	struct s070wv20 *ctx = panel_to_s070wv20(panel);
+
+	backlight_disable(ctx->backlight);
+	return mipi_dsi_dcs_set_display_on(ctx->dsi);
+}
+
+static int s070wv20_unprepare(struct drm_panel *panel)
+{
+	struct s070wv20 *ctx = panel_to_s070wv20(panel);
+	int ret;
+
+	ret = mipi_dsi_dcs_set_display_off(ctx->dsi);
+	if (ret < 0)
+		dev_err(panel->dev, "failed to set display off: %d\n", ret);
+
+	ret = mipi_dsi_dcs_enter_sleep_mode(ctx->dsi);
+	if (ret < 0)
+		dev_err(panel->dev, "failed to enter sleep mode: %d\n", ret);
+
+	msleep(100);
+
+	gpiod_set_value(ctx->reset_gpio, 0);
+
+	gpiod_set_value(ctx->reset_gpio, 1);
+
+	gpiod_set_value(ctx->enable_gpio, 0);
+
+	gpiod_set_value(ctx->reset_gpio, 0);
+
+	regulator_disable(ctx->vdd);
+
+	return 0;
+}
+
+static const struct drm_display_mode s070wv20_default_mode = {
+	.clock = 30000,
+	.vrefresh = 60,
+
+	.hdisplay = 800,
+	.hsync_start = 800 + 40,
+	.hsync_end = 800 + 40 + 48,
+	.htotal = 800 + 40 + 48 + 40,
+
+	.vdisplay = 480,
+	.vsync_start = 480 + 13,
+	.vsync_end = 480 + 13 + 3,
+	.vtotal = 480 + 13 + 3 + 29,
+
+	.width_mm	= 86,
+	.height_mm	= 154,
+};
+
+static int s070wv20_get_modes(struct drm_panel *panel)
+{
+	struct drm_connector *connector = panel->connector;
+	struct s070wv20 *ctx = panel_to_s070wv20(panel);
+	struct drm_display_mode *mode;
+
+	mode = drm_mode_duplicate(panel->drm, &s070wv20_default_mode);
+	if (!mode) {
+		dev_err(&ctx->dsi->dev, "failed to add mode %ux%ux@%u\n",
+			s070wv20_default_mode.hdisplay,
+			s070wv20_default_mode.vdisplay,
+			s070wv20_default_mode.vrefresh);
+		return -ENOMEM;
+	}
+
+	drm_mode_set_name(mode);
+
+	mode->type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED;
+	drm_mode_probed_add(connector, mode);
+
+	panel->connector->display_info.width_mm = mode->width_mm;
+	panel->connector->display_info.height_mm = mode->height_mm;
+
+	return 1;
+}
+
+static const struct drm_panel_funcs s070wv20_funcs = {
+	.disable = s070wv20_disable,
+	.unprepare = s070wv20_unprepare,
+	.prepare = s070wv20_prepare,
+	.enable = s070wv20_enable,
+	.get_modes = s070wv20_get_modes,
+};
+
+static int s070wv20_dsi_probe(struct mipi_dsi_device *dsi)
+{
+	struct device_node *np;
+	struct s070wv20 *ctx;
+	int ret;
+
+	ctx = devm_kzalloc(&dsi->dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+	mipi_dsi_set_drvdata(dsi, ctx);
+	ctx->dsi = dsi;
+
+	drm_panel_init(&ctx->panel);
+	ctx->panel.dev = &dsi->dev;
+	ctx->panel.funcs = &s070wv20_funcs;
+
+	ctx->vdd = devm_regulator_get(&dsi->dev, "vdd");
+	if (IS_ERR(ctx->vdd)) {
+		dev_err(&dsi->dev, "Couldn't get vdd regulator\n");
+		return PTR_ERR(ctx->vdd);
+	}
+
+	ctx->enable_gpio = devm_gpiod_get(&dsi->dev, "enable", GPIOD_OUT_LOW);
+	if (IS_ERR(ctx->enable_gpio)) {
+		dev_err(&dsi->dev, "Couldn't get our enable GPIO\n");
+		return PTR_ERR(ctx->enable_gpio);
+	}
+
+	ctx->reset_gpio = devm_gpiod_get(&dsi->dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(ctx->reset_gpio)) {
+		dev_err(&dsi->dev, "Couldn't get our reset GPIO\n");
+		return PTR_ERR(ctx->reset_gpio);
+	}
+
+	np = of_parse_phandle(dsi->dev.of_node, "backlight", 0);
+	if (np) {
+		ctx->backlight = of_find_backlight_by_node(np);
+		of_node_put(np);
+
+		if (!ctx->backlight)
+			return -EPROBE_DEFER;
+	}
+
+	ret = drm_panel_add(&ctx->panel);
+	if (ret < 0)
+		return ret;
+
+	dsi->mode_flags = MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
+	dsi->format = MIPI_DSI_FMT_RGB888;
+	dsi->lanes = 4;
+
+	return mipi_dsi_attach(dsi);
+}
+
+static int s070wv20_dsi_remove(struct mipi_dsi_device *dsi)
+{
+	struct s070wv20 *ctx = mipi_dsi_get_drvdata(dsi);
+
+	mipi_dsi_detach(dsi);
+	drm_panel_remove(&ctx->panel);
+
+	if (ctx->backlight)
+		put_device(&ctx->backlight->dev);
+
+	return 0;
+}
+
+static const struct of_device_id s070wv20_of_match[] = {
+	{ .compatible = "bananapi,s070wv20-ct16-icn6211", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, s070wv20_of_match);
+
+static struct mipi_dsi_driver s070wv20_driver = {
+	.probe = s070wv20_dsi_probe,
+	.remove = s070wv20_dsi_remove,
+	.driver = {
+		.name = "bananapi-s070wv20-ct16-icn6211",
+		.of_match_table = s070wv20_of_match,
+	},
+};
+module_mipi_dsi_driver(s070wv20_driver);
+
+MODULE_AUTHOR("Jagan Teki <jagan@amarulasolutions.com>");
+MODULE_DESCRIPTION("Bananapi S070WV20-CT16 ICN6211 MIPI-DSI to RGB");
+MODULE_LICENSE("GPL v2");
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
