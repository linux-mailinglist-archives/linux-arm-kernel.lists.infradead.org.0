Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728FC29631
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pwo5/gfsky6vft/LDAqOjzwtL3W6n3BBDC+akDDJgtU=; b=ON1+3iFkHJrC5/
	BeVuzbsCXaWjQe4/Gs+4tWOIrcDOJoh4nKIKOYg9LSVodPCpNH/wwMCykEwqyiBasNYG3CDsau50+
	dLN52MAnUiZ3E6jtfDSoxDI/8st7v+gmEhDyShA+14Gj4SDNuxlbj4y8Fkz0wENEpRTr3WDtZGtTZ
	9cd6lzOMQxFFZmDm+o5us31ZJECC3Bytc+PCRCCv8yGHEqtwpwk/HL9W882rivMP1nlQPBdONCSG7
	PSST8v1xfnc88PuM5LhMJn1hSputMfsrDUF6Z3lkaoF8MswMqFt5OD37Iw21NXuC+x0bcnT5vnlgR
	9Ov6yHBQCsARE2dV3G3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7gL-0002aW-RY; Fri, 24 May 2019 10:44:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7g7-0002OA-DD
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:44:05 +0000
Received: by mail-pg1-x542.google.com with SMTP id n2so4845684pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 03:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bq5JeR/itXRFWJkFBy/4tSREROqi+e79H6/1fNsKbVM=;
 b=OyifHJAO2FY1I6WMV5KWMz4fEKUQ5ksubmjH/U8znuzy2iQ40wQwxbzcoCgrPSjNqP
 UmHNJaiDFOdp0ycz0rXeRxoWHEsSi3zTE00HERGPtcpyteh8cFWNlBv7MWc/Esuibd95
 bM4Jg6ykMobiJdLIlTq44XJJbby9O4wz+2fXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bq5JeR/itXRFWJkFBy/4tSREROqi+e79H6/1fNsKbVM=;
 b=Nko6oNDTbcItnV8nPa60nRRw9vq3NnkB5g3heLnzYgFfgTjYygYg2AL+j7MuZsaNWh
 0fczPDQJhKPROoJ44+FPhlxNjtz9RNxPe6RmaairIlqI5YCLFOlHOcBml6thLmLUJ8Us
 E19b4q1PBT9wD9TpAwslcBA/cL4nX0/pdZvLxCeuoYz+3ly4KWyM3pGMLzgEAmRUTrUA
 ChdL16mRr6nDrCmkc8Jhxta7PYPawfP6BjXfq2eo8kSnO9KMIoWn0+AOvvXnvI4OYgzI
 0Ul1FkL/F0SQnv6lD3n+/f0y8bVPySpXjPGROkRaz71tdQBRrB2+G6j/HWOw5Bcov4h2
 zEPg==
X-Gm-Message-State: APjAAAVVLTF40tmrKMCp7hdH3R/j1ogJkXWSMvGI3eGxcT1sPr7Au6Ln
 rhUn1hYNoLNqrFdVL7MzaDqveQ==
X-Google-Smtp-Source: APXvYqxfYiF5og1UQq3Y0TjhTFSgxW3pYtju93KNCwdtLt3rerjecQ5de3ix+C1QlDyDCblrS3f7eQ==
X-Received: by 2002:a63:dc09:: with SMTP id s9mr63725852pgg.425.1558694637934; 
 Fri, 24 May 2019 03:43:57 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.60])
 by smtp.gmail.com with ESMTPSA id h11sm2303416pfn.170.2019.05.24.03.43.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 03:43:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 5/6] drm/bridge: Add Chipone ICN6211 MIPI-DSI/RGB converter
 bridge
Date: Fri, 24 May 2019 16:13:16 +0530
Message-Id: <20190524104317.20287-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190524104317.20287-1-jagan@amarulasolutions.com>
References: <20190524104317.20287-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_034359_749499_7A919246 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ICN6211 is MIPI-DSI/RGB converter bridge from chipone.
It has a flexible configuration of MIPI DSI signal input
and produce RGB565, RGB666, RGB888 output format.

Add bridge driver for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Note:
- drm_panel_bridge_add seems not working or incompatible 
as per driver setup. any inputs on this would be great.

 MAINTAINERS                              |   6 +
 drivers/gpu/drm/bridge/Kconfig           |  10 +
 drivers/gpu/drm/bridge/Makefile          |   1 +
 drivers/gpu/drm/bridge/chipone-icn6211.c | 344 +++++++++++++++++++++++
 4 files changed, 361 insertions(+)
 create mode 100644 drivers/gpu/drm/bridge/chipone-icn6211.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 4cc30c360fda..97ffb265bedc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4991,6 +4991,12 @@ T:	git git://anongit.freedesktop.org/drm/drm-misc
 S:	Maintained
 F:	drivers/gpu/drm/bochs/
 
+DRM DRIVER FOR CHIPONE ICN6211 MIPI-DSI to RGB CONVERTOR BRIDGE
+M:	Jagan Teki <jagan@amarulasolutions.com>
+S:	Maintained
+F:	drivers/gpu/drm/bridge/chipone-icn6211.c
+F:	Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt
+
 DRM DRIVER FOR FARADAY TVE200 TV ENCODER
 M:	Linus Walleij <linus.walleij@linaro.org>
 T:	git git://anongit.freedesktop.org/drm/drm-misc
diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 3dff9997f5e3..2e06be1aaca3 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -36,6 +36,16 @@ config DRM_CDNS_DSI
 	  Support Cadence DPI to DSI bridge. This is an internal
 	  bridge and is meant to be directly embedded in a SoC.
 
+config DRM_CHIPONE_ICN6211
+	tristate "Chipone ICN6211 MIPI-DSI/RGB converter bridge"
+	depends on DRM && DRM_PANEL
+	depends on OF
+	select DRM_MIPI_DSI
+	help
+	  ICN6211 is MIPI-DSI/RGB converter bridge from chipone.
+	  It has a flexible configuration of MIPI DSI signal input
+	  and produce RGB565, RGB666, RGB888 output format.
+
 config DRM_DUMB_VGA_DAC
 	tristate "Dumb VGA DAC Bridge support"
 	depends on OF
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index 4934fcf5a6f8..541fdccad10b 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
 obj-$(CONFIG_DRM_CDNS_DSI) += cdns-dsi.o
+obj-$(CONFIG_DRM_CHIPONE_ICN6211) += chipone-icn6211.o
 obj-$(CONFIG_DRM_DUMB_VGA_DAC) += dumb-vga-dac.o
 obj-$(CONFIG_DRM_LVDS_ENCODER) += lvds-encoder.o
 obj-$(CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW) += megachips-stdpxxxx-ge-b850v3-fw.o
diff --git a/drivers/gpu/drm/bridge/chipone-icn6211.c b/drivers/gpu/drm/bridge/chipone-icn6211.c
new file mode 100644
index 000000000000..76edda52dc57
--- /dev/null
+++ b/drivers/gpu/drm/bridge/chipone-icn6211.c
@@ -0,0 +1,344 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2018 Amarula Solutions
+ * Author: Jagan Teki <jagan@amarulasolutions.com>
+ */
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_fb_helper.h>
+#include <drm/drm_of.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_print.h>
+#include <drm/drm_probe_helper.h>
+#include <drm/drm_mipi_dsi.h>
+
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/of_graph.h>
+
+#include <video/mipi_display.h>
+
+struct chipone_bridge_desc {
+	unsigned int lanes;
+	unsigned long mode_flags;
+	enum mipi_dsi_pixel_format format;
+	void (*chipone_bridge_init)(struct drm_bridge *bridge);
+};
+
+struct chipone {
+	struct device *dev;
+	struct drm_bridge bridge;
+	struct drm_connector connector;
+	struct drm_panel *panel;
+	const struct drm_display_mode *mode;
+	const struct chipone_bridge_desc *desc;
+
+	struct gpio_desc *reset_gpio;
+};
+
+static inline struct chipone *bridge_to_chipone(struct drm_bridge *bridge)
+{
+	return container_of(bridge, struct chipone, bridge);
+}
+
+static inline
+struct chipone *connector_to_chipone(struct drm_connector *connector)
+{
+	return container_of(connector, struct chipone, connector);
+}
+
+static int chipone_get_modes(struct drm_connector *connector)
+{
+	struct chipone *icn = connector_to_chipone(connector);
+
+	return drm_panel_get_modes(icn->panel);
+}
+
+static const
+struct drm_connector_helper_funcs chipone_connector_helper_funcs = {
+	.get_modes = chipone_get_modes,
+};
+
+static const struct drm_connector_funcs chipone_connector_funcs = {
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.destroy = drm_connector_cleanup,
+	.reset = drm_atomic_helper_connector_reset,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+static void chipone_disable(struct drm_bridge *bridge)
+{
+	struct chipone *icn = bridge_to_chipone(bridge);
+	int ret;
+
+	ret = drm_panel_disable(bridge_to_chipone(bridge)->panel);
+	if (ret < 0)
+		DRM_DEV_ERROR(icn->dev, "error disabling panel (%d)\n", ret);
+}
+
+static void chipone_post_disable(struct drm_bridge *bridge)
+{
+	struct chipone *icn = bridge_to_chipone(bridge);
+	int ret;
+
+	ret = drm_panel_unprepare(icn->panel);
+	if (ret < 0)
+		DRM_DEV_ERROR(icn->dev, "error unpreparing panel (%d)\n", ret);
+
+	msleep(50);
+
+	gpiod_set_value(icn->reset_gpio, 0);
+}
+
+static inline int chipone_dsi_write(struct chipone *icn,  const void *seq,
+				    size_t len)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(icn->dev);
+
+	return mipi_dsi_generic_write(dsi, seq, len);
+}
+
+#define CHIPONE_DSI(icn, seq...)				\
+	{							\
+		const u8 d[] = { seq };				\
+		chipone_dsi_write(icn, d, ARRAY_SIZE(d));	\
+	}
+
+static void icn6211_bridge_init(struct drm_bridge *bridge)
+{
+	struct chipone *icn = bridge_to_chipone(bridge);
+	const struct drm_display_mode *mode = icn->mode;
+
+	CHIPONE_DSI(icn, 0x7A, 0xC1);
+
+	/* lower 8 bits of hdisplay */
+	CHIPONE_DSI(icn, 0x20, mode->hdisplay & 0xff);
+
+	/* lower 8 bits of vdisplay */
+	CHIPONE_DSI(icn, 0x21, mode->vdisplay & 0xff);
+
+	/**
+	 * lsb nibble: 2nd nibble of hdisplay
+	 * msb nibble: 2nd nibble of vdisplay
+	 */
+	CHIPONE_DSI(icn, 0x22, (((mode->hdisplay >> 8) & 0xf) |
+		    (((mode->vdisplay >> 8) & 0xf) << 4)));
+
+	/* HFP */
+	CHIPONE_DSI(icn, 0x23, mode->hsync_start - mode->hdisplay);
+
+	/* HSYNC */
+	CHIPONE_DSI(icn, 0x24, mode->hsync_end - mode->hsync_start);
+
+	/* HBP */
+	CHIPONE_DSI(icn, 0x25, mode->htotal - mode->hsync_end);
+
+	CHIPONE_DSI(icn, 0x26, 0x00);
+
+	/* VFP */
+	CHIPONE_DSI(icn, 0x27, mode->vsync_start - mode->vdisplay);
+
+	/* VSYNC */
+	CHIPONE_DSI(icn, 0x28, mode->vsync_end - mode->vsync_start);
+
+	/* VBP */
+	CHIPONE_DSI(icn, 0x29, mode->vtotal - mode->vsync_end);
+
+	/* dsi specific sequence */
+	CHIPONE_DSI(icn, MIPI_DCS_SET_TEAR_OFF, 0x80);
+	CHIPONE_DSI(icn, MIPI_DCS_SET_ADDRESS_MODE, 0x28);
+	CHIPONE_DSI(icn, 0xB5, 0xA0);
+	CHIPONE_DSI(icn, 0x5C, 0xFF);
+	CHIPONE_DSI(icn, MIPI_DCS_SET_COLUMN_ADDRESS, 0x01);
+	CHIPONE_DSI(icn, MIPI_DCS_GET_POWER_SAVE, 0x92);
+	CHIPONE_DSI(icn, 0x6B, 0x71);
+	CHIPONE_DSI(icn, 0x69, 0x2B);
+	CHIPONE_DSI(icn, MIPI_DCS_ENTER_SLEEP_MODE, 0x40);
+	CHIPONE_DSI(icn, MIPI_DCS_EXIT_SLEEP_MODE, 0x98);
+
+	/* icn6211 specific sequence */
+	CHIPONE_DSI(icn, 0xB6, 0x20);
+	CHIPONE_DSI(icn, 0x51, 0x20);
+	CHIPONE_DSI(icn, 0x09, 0x10);
+}
+
+static void chipone_pre_enable(struct drm_bridge *bridge)
+{
+	struct chipone *icn = bridge_to_chipone(bridge);
+	int ret;
+
+	gpiod_set_value(icn->reset_gpio, 0);
+	msleep(20);
+
+	gpiod_set_value(icn->reset_gpio, 1);
+	msleep(50);
+
+	icn->desc->chipone_bridge_init(bridge);
+
+	ret = drm_panel_prepare(icn->panel);
+	if (ret < 0)
+		DRM_DEV_ERROR(icn->dev, "error preparing panel (%d)\n", ret);
+}
+
+static void chipone_enable(struct drm_bridge *bridge)
+{
+	struct chipone *icn = bridge_to_chipone(bridge);
+	int ret;
+
+	ret = drm_panel_enable(icn->panel);
+	if (ret < 0)
+		DRM_DEV_ERROR(icn->dev, "error enabling panel (%d)\n", ret);
+}
+
+static int chipone_attach(struct drm_bridge *bridge)
+{
+	struct chipone *icn = bridge_to_chipone(bridge);
+	struct drm_device *drm = bridge->dev;
+	int ret;
+
+	if (!bridge->encoder) {
+		DRM_ERROR("Parent encoder object not found");
+		return -ENODEV;
+	}
+
+	icn->connector.polled = DRM_CONNECTOR_POLL_HPD;
+	ret = drm_connector_init(drm, &icn->connector,
+				 &chipone_connector_funcs,
+				 DRM_MODE_CONNECTOR_DPI);
+	if (ret) {
+		DRM_DEV_ERROR(icn->dev,
+			      "Couldn't initialise the rgb connector\n");
+		goto err_out;
+	}
+
+	drm_connector_helper_add(&icn->connector,
+				 &chipone_connector_helper_funcs);
+	drm_connector_register(&icn->connector);
+	drm_connector_attach_encoder(&icn->connector, bridge->encoder);
+
+	ret = drm_panel_attach(icn->panel, &icn->connector);
+	if (ret) {
+		DRM_DEV_ERROR(icn->dev, "Couldn't attach our panel\n");
+		goto err_cleanup_connector;
+	}
+
+	return 0;
+
+err_cleanup_connector:
+	drm_encoder_cleanup(bridge->encoder);
+err_out:
+	return ret;
+}
+
+static void chipone_detach(struct drm_bridge *bridge)
+{
+	struct chipone *icn = bridge_to_chipone(bridge);
+
+	drm_connector_unregister(&icn->connector);
+	drm_panel_detach(icn->panel);
+	icn->panel = NULL;
+	drm_connector_put(&icn->connector);
+}
+
+static enum drm_mode_status chipone_mode_valid(struct drm_bridge *bridge,
+					const struct drm_display_mode *mode)
+{
+	struct chipone *icn = bridge_to_chipone(bridge);
+
+	/* mode timings are useful during bridge init */
+	icn->mode = mode;
+
+	return MODE_OK;
+}
+
+static const struct drm_bridge_funcs chipone_bridge_funcs = {
+	.disable = chipone_disable,
+	.post_disable = chipone_post_disable,
+	.enable = chipone_enable,
+	.pre_enable = chipone_pre_enable,
+	.attach = chipone_attach,
+	.detach = chipone_detach,
+	.mode_valid = chipone_mode_valid,
+};
+
+static const struct chipone_bridge_desc icn6211_desc = {
+	.lanes			= 4,
+	.mode_flags		= MIPI_DSI_MODE_VIDEO_SYNC_PULSE,
+	.format			= MIPI_DSI_FMT_RGB888,
+	.chipone_bridge_init	= icn6211_bridge_init,
+};
+
+static int chipone_probe(struct mipi_dsi_device *dsi)
+{
+	struct device *dev = &dsi->dev;
+	const struct chipone_bridge_desc *desc;
+	struct chipone *icn;
+	int ret;
+
+	icn = devm_kzalloc(dev, sizeof(struct chipone), GFP_KERNEL);
+	if (!icn)
+		return -ENOMEM;
+
+	desc = of_device_get_match_data(dev);
+
+	icn->dev = dev;
+	dsi->mode_flags = desc->mode_flags;
+	dsi->format = desc->format;
+	dsi->lanes = desc->lanes;
+
+	icn->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(icn->reset_gpio)) {
+		DRM_DEV_ERROR(dev, "Couldn't get our reset GPIO\n");
+		return PTR_ERR(icn->reset_gpio);
+	}
+
+	ret = drm_of_find_panel_or_bridge(icn->dev->of_node, 1, 0,
+					  &icn->panel, NULL);
+	if (ret && ret != -EPROBE_DEFER) {
+		DRM_DEV_ERROR(dev, "Couldn't find the panel (ret = %d)\n", ret);
+		return ret;
+	}
+
+	icn->bridge.funcs = &chipone_bridge_funcs;
+	icn->bridge.of_node = dev->of_node;
+
+	drm_bridge_add(&icn->bridge);
+	mipi_dsi_set_drvdata(dsi, icn);
+	icn->desc = desc;
+
+	return mipi_dsi_attach(dsi);
+}
+
+static int chipone_remove(struct mipi_dsi_device *dsi)
+{
+	struct chipone *icn = mipi_dsi_get_drvdata(dsi);
+
+	mipi_dsi_detach(dsi);
+	drm_bridge_remove(&icn->bridge);
+
+	return 0;
+}
+
+static const struct of_device_id chipone_of_match[] = {
+	{ .compatible = "chipone,icn6211", .data = &icn6211_desc },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, chipone_of_match);
+
+static struct mipi_dsi_driver chipone_driver = {
+	.probe = chipone_probe,
+	.remove = chipone_remove,
+	.driver = {
+		.name = "chipone-icn6211",
+		.owner = THIS_MODULE,
+		.of_match_table = chipone_of_match,
+	},
+};
+module_mipi_dsi_driver(chipone_driver);
+
+MODULE_AUTHOR("Jagan Teki <jagan@amarulasolutions.com>");
+MODULE_DESCRIPTION("Chipone ICN6211 MIPI-DSI to RGB Convertor Bridge");
+MODULE_LICENSE("GPL v2");
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
