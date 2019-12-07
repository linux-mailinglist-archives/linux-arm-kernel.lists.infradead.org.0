Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E77115CF0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:09:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSyvrFWqJSQxGv7HyZlxVLOQwoRnYhyrlTWlOjm+Q5c=; b=sIvKodT0l+slgQ
	tr8CQOqGqg2rmdIl9Fm09Wai9UhyCt30bnM8SmUmu1Sor2KIug2kIYMJ9N+WCG7N7a60YqlkKz8Oy
	rkuNzY6SG6SHOWXlSgJXxxNJ3Iji8kWcSxI1l6TscqkNqtEql1kK6wm3izISdvlVjz8n2qFSfG10i
	gmG5gzmbvBc+r2+4enOta1kcLwOu/hJqb5h9FLscK7uIGr61HU8Hsl8DmzeX8h/PxEg0qmSXSl6PZ
	c1241r12fboLp1dsRrypHA7p5YCDYb3LjTy5z9eQzA9x9nY/H3FxWTSCK4YZYErtejoXJxTh8gFy8
	JM4JI1qKj7uJwh9pHozQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idam4-0002hW-Ja; Sat, 07 Dec 2019 14:09:32 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idahJ-0005mv-1J; Sat, 07 Dec 2019 14:04:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id k8so10695285ljh.5;
 Sat, 07 Dec 2019 06:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QgFTzPZd3zR98m50NY0shuKpKVuv4VS4hyjW7Qv2Omk=;
 b=jrIBA/vqZodxViATSQARFkZD7wiEmAHsUlNjZymh8plju65SezxDVb232LWzAO7ZIW
 kFmv4T1O4tF5vglDYs7mo4WPhnmXCBga6BPzrqpFEBPGLxUnHCEBoSwvhJwtj7oRuhlS
 6rwymBSXbUJPHSE7F/TU8cIy0yfuhOGxq2EqTEjr+GR83yUN1lmmKWt05j/V1aizGnHO
 wgK6mWeVCzmN88mPT83aIwPcsTK3vHQyFbEpBjVUFt4zCSV0mYD0xYZ3Pshw39dUtj4c
 43kY3UcyVgHIbBrvs4Oc2i2daiu7MlFv1k5I9puW67OdIwCy5GI7bOhctWxExoJ6EIrm
 kodA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=QgFTzPZd3zR98m50NY0shuKpKVuv4VS4hyjW7Qv2Omk=;
 b=UpakUKBJ+WSe8Vdt8wqsklknkiXjm/K3IqZPtMs/iPV+oFPsAmcm0vBWEJeDFZNKam
 ZS/ncBRwM2Lj6EmjiiC7ypRzDRSJqV3bYcFCQytFA5MCa9LCr7K3jDDLX5LL5tizDiHf
 RIz4wyGdynTkIbXrxbj+PQNHFqu5NB9YB9/GOjgz446if+e8vF9VEbHGutPq5IxWEO9T
 qh7qsBC+GgM4u5ZiW2+cya4RTJTylN4p8eH/S3J90/ugY6KKY95XBtjO/kBnS6uEVLHQ
 dqMCdGwjVLGCW++KVgUfT3UaVYfyFQAeq6/FBrTRLiDuiHUBLcf7O1ruhnfxF4HJS/c6
 qEwg==
X-Gm-Message-State: APjAAAXxv3b29pLM8ey4SpD5CAnbFG+z7DV96UwTbAHYTeg86TNGTZsf
 bt0Cw3BAgVaJKdxdRF1cBKE=
X-Google-Smtp-Source: APXvYqwqO/B3zDP/lU5w3BMKEFkPcSjN9evJVHeZCNcA2LQ9S+SRHMryllzKBI+PlPdvQ9Zo/y8d+Q==
X-Received: by 2002:a2e:9b58:: with SMTP id o24mr11509631ljj.197.1575727475273; 
 Sat, 07 Dec 2019 06:04:35 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:34 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 14/25] drm/panel: osd-osd101t2587-53ts: use drm_panel
 backlight support
Date: Sat,  7 Dec 2019 15:03:42 +0100
Message-Id: <20191207140353.23967-15-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060437_151368_EC6CB958 
X-CRM114-Status: GOOD (  12.10  )
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
 .../drm/panel/panel-osd-osd101t2587-53ts.c    | 24 +++++++------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-osd-osd101t2587-53ts.c b/drivers/gpu/drm/panel/panel-osd-osd101t2587-53ts.c
index 2734b4835dfa..3a0229d60095 100644
--- a/drivers/gpu/drm/panel/panel-osd-osd101t2587-53ts.c
+++ b/drivers/gpu/drm/panel/panel-osd-osd101t2587-53ts.c
@@ -4,7 +4,6 @@
  *  Author: Peter Ujfalusi <peter.ujfalusi@ti.com>
  */
 
-#include <linux/backlight.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/regulator/consumer.h>
@@ -20,7 +19,6 @@ struct osd101t2587_panel {
 	struct drm_panel base;
 	struct mipi_dsi_device *dsi;
 
-	struct backlight_device *backlight;
 	struct regulator *supply;
 
 	bool prepared;
@@ -42,8 +40,6 @@ static int osd101t2587_panel_disable(struct drm_panel *panel)
 	if (!osd101t2587->enabled)
 		return 0;
 
-	backlight_disable(osd101t2587->backlight);
-
 	ret = mipi_dsi_shutdown_peripheral(osd101t2587->dsi);
 
 	osd101t2587->enabled = false;
@@ -91,8 +87,6 @@ static int osd101t2587_panel_enable(struct drm_panel *panel)
 	if (ret)
 		return ret;
 
-	backlight_enable(osd101t2587->backlight);
-
 	osd101t2587->enabled = true;
 
 	return ret;
@@ -158,18 +152,19 @@ MODULE_DEVICE_TABLE(of, osd101t2587_of_match);
 static int osd101t2587_panel_add(struct osd101t2587_panel *osd101t2587)
 {
 	struct device *dev = &osd101t2587->dsi->dev;
+	int ret;
 
 	osd101t2587->supply = devm_regulator_get(dev, "power");
 	if (IS_ERR(osd101t2587->supply))
 		return PTR_ERR(osd101t2587->supply);
 
-	osd101t2587->backlight = devm_of_find_backlight(dev);
-	if (IS_ERR(osd101t2587->backlight))
-		return PTR_ERR(osd101t2587->backlight);
-
 	drm_panel_init(&osd101t2587->base, &osd101t2587->dsi->dev,
 		       &osd101t2587_panel_funcs, DRM_MODE_CONNECTOR_DSI);
 
+	ret = drm_panel_of_backlight(&osd101t2587->base);
+	if (ret)
+		return ret;
+
 	return drm_panel_add(&osd101t2587->base);
 }
 
@@ -215,12 +210,11 @@ static int osd101t2587_panel_remove(struct mipi_dsi_device *dsi)
 	struct osd101t2587_panel *osd101t2587 = mipi_dsi_get_drvdata(dsi);
 	int ret;
 
-	ret = osd101t2587_panel_disable(&osd101t2587->base);
+	ret = drm_panel_disable(&osd101t2587->base);
 	if (ret < 0)
 		dev_warn(&dsi->dev, "failed to disable panel: %d\n", ret);
 
-	osd101t2587_panel_unprepare(&osd101t2587->base);
-
+	drm_panel_unprepare(&osd101t2587->base);
 	drm_panel_remove(&osd101t2587->base);
 
 	ret = mipi_dsi_detach(dsi);
@@ -234,8 +228,8 @@ static void osd101t2587_panel_shutdown(struct mipi_dsi_device *dsi)
 {
 	struct osd101t2587_panel *osd101t2587 = mipi_dsi_get_drvdata(dsi);
 
-	osd101t2587_panel_disable(&osd101t2587->base);
-	osd101t2587_panel_unprepare(&osd101t2587->base);
+	drm_panel_disable(&osd101t2587->base);
+	drm_panel_unprepare(&osd101t2587->base);
 }
 
 static struct mipi_dsi_driver osd101t2587_panel_driver = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
