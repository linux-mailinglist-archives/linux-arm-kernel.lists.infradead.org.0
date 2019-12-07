Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C871B115CEA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzsZLEUp70y0L+YawU7tFLTg4yj6KuLCufE2mKGIZ64=; b=g13lcRt4+LHsYT
	QvYh6loCjru2LWzkcjv0k++3W4zrZ/YnzZb+9Y+ETN1qJp4hmK66ZqI/FopTRNSI6d33p+Crf73of
	zWZP3AzP4FD22LUoCpoAYDymHeb6/IJLwr98OMOADwj4PORwYrQJARok+l1iTAbO80WtaJhkvJF/S
	tYRvQih8JVy0BCE7PEshffoQ08yM4irTMUEpbgWtbEk9E96jXsO9p5uIEr+gNDpPWw5fvb4o4HIGL
	1ESoZOJAz0fMrU4BRZlNolS9/Q5U45GoLI3Fok6e6+YpJ+2UHvCutEpLaiS/B4ijV+83k++/Vbt02
	ZbGgkjHHZBg2sbW3Ry/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idal5-0001nE-LP; Sat, 07 Dec 2019 14:08:31 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idahC-0005hL-1O; Sat, 07 Dec 2019 14:04:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id m6so10742809ljc.1;
 Sat, 07 Dec 2019 06:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PEkkKHiq+AcHePdv87qZ46O+yNk0TpaePUBzT0oWsAc=;
 b=ZfHiRiueSHRoMm/wWPg2IEAFbC+nin4k5/h6+jqp6YAW6dtNdKpHxhLUqyQBrdiW5X
 IS69T1/XMFvXqXGcc956VzDbI9EAU0LALkPtX5E1ULJfoYNnPXw878/lGy/5UDWRyoZn
 lOJzZCmr3W4w+L4mhA22VZAR5ei76vWyygf4hVaS3BMOuchXlSmvt1qbmiOnS6ogFTSO
 AFppLqocMVslabJ7DToSGuHPtYw6gN3Q4temBKQ8tfmnNP9Mpz7mwHqyqb78C40OcI3S
 W84v8/HgfHEL4T9hbGi/iSwgNqm/ytbENpyqiJ1UF+/MPBXwVyJpguDgnGdveWD5YDi/
 QtIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=PEkkKHiq+AcHePdv87qZ46O+yNk0TpaePUBzT0oWsAc=;
 b=T7ClYDaIz2TVic+kBYIV5PYjvA3gscZarplT0t6PvYo2bzCuUDhSrKcD02BQBXZetG
 u+Kf6LKedeQeEJ+4X9yRoobJP8KuHihrJjJfUbVY1fm/b7rLchAFcgBKakT3rzU69KDs
 jnH/FQfHBG+GyTn3lFZ2secp72GU/Sgom4N4h2wUyJPryVPQiRH+M4p599cb1fvp1uB8
 Lu56LTC0Pj9bXyAhYACJrhP4yFN0z4kSPnMo0ilWLqNE4EjVEbrV5d8VGFxj4L+HGn6T
 fBa/hlh/te9SuO3JoK4joDBHtHb6A273BDvWxWlCjtcfMBiD+DIW1DwObsHjN/EM4+sa
 XC4A==
X-Gm-Message-State: APjAAAWDNzAKzeXKOBf1ECVsfHSmgAaRcwY+6qGiYqcuOXPT9u3kFpxM
 nU1gV9vXzDp05qoTFD+ai8w=
X-Google-Smtp-Source: APXvYqyvSwIE32v2Kp9t6aC1p3mZ5oj9u6z9msGZC5D9TpRLAqQ5hY1QRbeh6HQns7Z439S/CNir0g==
X-Received: by 2002:a2e:978d:: with SMTP id y13mr11771522lji.103.1575727468217; 
 Sat, 07 Dec 2019 06:04:28 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:27 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 10/25] drm/panel: innolux-p079zca: use drm_panel backlight
 support
Date: Sat,  7 Dec 2019 15:03:38 +0100
Message-Id: <20191207140353.23967-11-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060430_120786_9EAE15E1 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Stefan Agner <stefan@agner.ch>, Andrzej Hajda <a.hajda@samsung.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Jagan Teki <jagan@amarulasolutions.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the backlight support in drm_panel to simplify the driver

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/panel/panel-innolux-p079zca.c | 28 ++++++-------------
 1 file changed, 8 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-innolux-p079zca.c b/drivers/gpu/drm/panel/panel-innolux-p079zca.c
index b9de37a8a0c5..7419f1f0acee 100644
--- a/drivers/gpu/drm/panel/panel-innolux-p079zca.c
+++ b/drivers/gpu/drm/panel/panel-innolux-p079zca.c
@@ -3,7 +3,6 @@
  * Copyright (c) 2017, Fuzhou Rockchip Electronics Co., Ltd
  */
 
-#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
@@ -52,7 +51,6 @@ struct innolux_panel {
 	struct mipi_dsi_device *link;
 	const struct panel_desc *desc;
 
-	struct backlight_device *backlight;
 	struct regulator_bulk_data *supplies;
 	struct gpio_desc *enable_gpio;
 
@@ -72,8 +70,6 @@ static int innolux_panel_disable(struct drm_panel *panel)
 	if (!innolux->enabled)
 		return 0;
 
-	backlight_disable(innolux->backlight);
-
 	innolux->enabled = false;
 
 	return 0;
@@ -204,18 +200,10 @@ static int innolux_panel_prepare(struct drm_panel *panel)
 static int innolux_panel_enable(struct drm_panel *panel)
 {
 	struct innolux_panel *innolux = to_innolux_panel(panel);
-	int ret;
 
 	if (innolux->enabled)
 		return 0;
 
-	ret = backlight_enable(innolux->backlight);
-	if (ret) {
-		DRM_DEV_ERROR(panel->dev,
-			      "Failed to enable backlight %d\n", ret);
-		return ret;
-	}
-
 	innolux->enabled = true;
 
 	return 0;
@@ -482,13 +470,13 @@ static int innolux_panel_add(struct mipi_dsi_device *dsi,
 		innolux->enable_gpio = NULL;
 	}
 
-	innolux->backlight = devm_of_find_backlight(dev);
-	if (IS_ERR(innolux->backlight))
-		return PTR_ERR(innolux->backlight);
-
 	drm_panel_init(&innolux->base, dev, &innolux_panel_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 
+	err = drm_panel_of_backlight(&innolux->base);
+	if (err)
+		return err;
+
 	err = drm_panel_add(&innolux->base);
 	if (err < 0)
 		return err;
@@ -526,12 +514,12 @@ static int innolux_panel_remove(struct mipi_dsi_device *dsi)
 	struct innolux_panel *innolux = mipi_dsi_get_drvdata(dsi);
 	int err;
 
-	err = innolux_panel_unprepare(&innolux->base);
+	err = drm_panel_unprepare(&innolux->base);
 	if (err < 0)
 		DRM_DEV_ERROR(&dsi->dev, "failed to unprepare panel: %d\n",
 			      err);
 
-	err = innolux_panel_disable(&innolux->base);
+	err = drm_panel_disable(&innolux->base);
 	if (err < 0)
 		DRM_DEV_ERROR(&dsi->dev, "failed to disable panel: %d\n", err);
 
@@ -549,8 +537,8 @@ static void innolux_panel_shutdown(struct mipi_dsi_device *dsi)
 {
 	struct innolux_panel *innolux = mipi_dsi_get_drvdata(dsi);
 
-	innolux_panel_unprepare(&innolux->base);
-	innolux_panel_disable(&innolux->base);
+	drm_panel_unprepare(&innolux->base);
+	drm_panel_disable(&innolux->base);
 }
 
 static struct mipi_dsi_driver innolux_panel_driver = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
