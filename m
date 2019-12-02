Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D62E510F0B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:38:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7StV/RMqe8wBfU3PHMvqc4OLF4UuWVGlycuJfPeo+s=; b=b15+0Kw8UEE7Q0
	7nQLZcHGL4B4NuKHk2EHV5Yn5lIhDzhv4vmVZ2n+PBfBpK1Ahc3c8o2xdbbOpVV1Sxa0FE1ka7qZ8
	V3HAAG2YIt7yGyN6Hp0NxzzBmtyT+L2cx2rM4PgDGtJZWFCARnlnU05Z7uR0nDcGIjvcD5FGTQRNj
	yZH77+EMqwXICcmuX8RWhdmpMrr9uygv1dxVa1dlxd1lL9Uv3eSjReM0QZdsQDGVF6hU/ShC5S4/3
	vAuo43r++qg0mfLy5GbQH59/0vo745X94IPY3Y2X1TMiq3FfOWRoCiXacfRPipwVZpySkoE6U3Thj
	wEKMhRVugbNFSCwT0A6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrWg-0004iS-DI; Mon, 02 Dec 2019 19:38:30 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrRu-0007jC-UQ; Mon, 02 Dec 2019 19:33:40 +0000
Received: by mail-lf1-x142.google.com with SMTP id r14so786932lfm.5;
 Mon, 02 Dec 2019 11:33:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mwTbXFs73rhfB3XHykRb+0twTubxbVTCKbes8vP1eoM=;
 b=fWsZc6pxE2cR74tH1x5bcK85tMs5P3XVQy6wY8Dzsei7SXL9iuN8fSp5lSWf7pMIdC
 xa4gKaBfW9GQl0tsJcMEulN2LTZ1dFp27MuO1x3ucEfaXHh9k03NMnT8pnU6IY5gCxpY
 8kA6ToWIuyco+mlNtxdfOniENQxwNYP7VK8XAJSeokDRcbVtY0rN/Vsyg4bJBVWLT3gI
 W4lYkw+KLbAeuKXj6iVyrITCefWtK7oUSk1KodcyX+U7pkfYxsD190Gy9r+bVtOrtIq+
 AHb1cVc40/4a1zUiR1PFruWHBNmyVb28/b76FXir/cJ/Zsd30ak1i5gzL2R8sNvMdh7l
 S3Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=mwTbXFs73rhfB3XHykRb+0twTubxbVTCKbes8vP1eoM=;
 b=KGMk4dVQ64MrUQzfJ0ngWRhweNGi4PwI58eZ4XbhJ2aO2e07llqkXJNGQDS8Nm2xM9
 lWkqq2dd/PGl/zSzYkDH3D+vzgwg7O6AHFlDG5ienTAsyyxPtCjBiXBEJIZBn4mbhUKR
 UyhE0Na2SkS+Rl8BpkLJOamu0JZeJbNBQCYNPrNoxdjOTEEXf0uZOob87nNLgAbY3Ted
 x4ozHCxQG5V57p3322Dc8Yfx9ZuenXr7NpnJDSIV3S5sfY9plhIHZWe8Vr1DThPZzrW6
 v4iBH+NfwVYzbaJgsINpgOpkUj7LOqht2sRgx7g9d24tjuFt6iDu89AT5iAoEimSOd4T
 UMzA==
X-Gm-Message-State: APjAAAWTr6vArJVTEE8V2xrRXlgbmWPVokHWtavgz+7f5UfVKrhw1Vam
 CI8laQ/a4RJ2gFQRd+smOyo=
X-Google-Smtp-Source: APXvYqxzH31f+2bGhDcEEDLD8E4lagqqgmHLv3NkKQxX8k5tVEOx+63XjFDyGaJYh0xM4o22P4hcLw==
X-Received: by 2002:ac2:5a1a:: with SMTP id q26mr431452lfn.33.1575315213309;
 Mon, 02 Dec 2019 11:33:33 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 g13sm79482lfb.74.2019.12.02.11.33.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 11:33:32 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v1 15/26] drm/panel: osd-osd101t2587-53ts: use drm_panel
 backlight support
Date: Mon,  2 Dec 2019 20:32:19 +0100
Message-Id: <20191202193230.21310-16-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202193230.21310-1-sam@ravnborg.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_113335_087599_B865559B 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
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
