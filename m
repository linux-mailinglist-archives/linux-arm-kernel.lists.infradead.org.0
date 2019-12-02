Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C57610F0B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:38:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zs0C8RyGrTyE7EF+isZSmyXwlerhmRJQMiTGJh7RmTs=; b=lCx605hssDsoIH
	QE35wglk9i1uWXYXA7CIr2VVq7TU/q0iaeuOHULUXB4CxX/W6a/NAGm8+8F7Pd/O/iHnDGljVyBSN
	PxulAUToXU7Qspp9YUbCII7Ev04ySYgKsiKEN5RsyPbrSyPamGlzSnRYG1e10/1uOK+RMg8tN55Oq
	xJAtcPqEHAMrFgVKWLc+HfEidwayGRS+ctfNKG7uoMnWNwHm3iuYFI5Kxs4+lsNLFRyHa3+P4UY8e
	6g472yXsqi4A7rZCzUn8p1wJXRbOdC7y1wpQgeFO1bd4E7A3fymWcuWacYZPV5jhafSfC9n8+Rgvl
	7MEZyintziMfr+m1GC/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrWI-0004M2-LD; Mon, 02 Dec 2019 19:38:06 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrRr-0007gL-Gf; Mon, 02 Dec 2019 19:33:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id h23so806539ljc.8;
 Mon, 02 Dec 2019 11:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R0f42CF+zwCz/GYqQyt+Coe4IA7I6q2AFYs8+413zO0=;
 b=lnMtfHUcqZMMTnJ9gMhihKsg3Z/0eU6Y56rSI1jYsRkXy2EkvUclqmRZIEdI6SSSls
 wPP140xvr7sa1QlrV1iWDGiJ2sjuOkm5L3jQ7FOprQIYggBuzus2yGc1yji7zTj2Nl/O
 cAGOkgbft8rYkYZO8jIVy0IlYiloAfroxD7cWixqmRgTvqmKArka4CvLU0mzj499zQx8
 FJXuUfypTKn7fF2KJwWXlBTvu/WBeYYZxkGmc2iVRMKkGl5lbRPz/4sYiwtyYzLrQxsq
 B9WctI7d/M9bU3H43w9MGzdywkaqP47fHiAPW0Iet8HaUHiDfVL5BPF4qETjJfe8WPzZ
 LLog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=R0f42CF+zwCz/GYqQyt+Coe4IA7I6q2AFYs8+413zO0=;
 b=gw8a3e9TzbYUMgaKYoRKBVFy1VddDJTFauc3yUfINke1ptBnheR3WaZNhlqZZsuj27
 9fB45IrTd7LCFuw7vOKQK6zP5U3n6lq+jO6J1WD9sEhrVrJbdV7Ub06HWidFY00yDamN
 MV4jzNy/HFQ3jSHMhvPSzBYAyuWdw9OO18iLpZ2uhPO1DJoWDumuOMxjfQl0Cpnm22MK
 Pdj3HEYJvW5nOt7NE2No8OLRuSbaX3jjd5pnbY7US9xLjl6bu/k8lw+2GmgdLvJBoBgm
 b8mHFkqMoJea596IU5d5zd935tAuRjfxacFP+sfN4JCuNd7limIBZhjPM3hd7daKYyhk
 BLaQ==
X-Gm-Message-State: APjAAAUERETn2XZP+NpNRavih8Wy40T+PzLGi9xz5UUBWGM1usxYeEeu
 ndTwNSNLyl8ggAoO7r2jAP4=
X-Google-Smtp-Source: APXvYqwxAoUwLTLEkQUfJnM7DgssO8M84iKQHSB7L3N4qws7EummnIVscFtc8tlydjwAe0u9VpqMAA==
X-Received: by 2002:a2e:b61a:: with SMTP id r26mr271701ljn.72.1575315209849;
 Mon, 02 Dec 2019 11:33:29 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 g13sm79482lfb.74.2019.12.02.11.33.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 11:33:29 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v1 13/26] drm/panel: lvds: use drm_panel backlight support
Date: Mon,  2 Dec 2019 20:32:17 +0100
Message-Id: <20191202193230.21310-14-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202193230.21310-1-sam@ravnborg.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_113331_796590_296AA254 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
 drivers/gpu/drm/panel/panel-lvds.c | 40 ++++--------------------------
 1 file changed, 5 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-lvds.c b/drivers/gpu/drm/panel/panel-lvds.c
index 5e40b674bb15..5ce3f4a2b7a1 100644
--- a/drivers/gpu/drm/panel/panel-lvds.c
+++ b/drivers/gpu/drm/panel/panel-lvds.c
@@ -8,7 +8,6 @@
  * Contact: Laurent Pinchart (laurent.pinchart@ideasonboard.com)
  */
 
-#include <linux/backlight.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
 #include <linux/of_platform.h>
@@ -34,7 +33,6 @@ struct panel_lvds {
 	unsigned int bus_format;
 	bool data_mirror;
 
-	struct backlight_device *backlight;
 	struct regulator *supply;
 
 	struct gpio_desc *enable_gpio;
@@ -46,19 +44,6 @@ static inline struct panel_lvds *to_panel_lvds(struct drm_panel *panel)
 	return container_of(panel, struct panel_lvds, panel);
 }
 
-static int panel_lvds_disable(struct drm_panel *panel)
-{
-	struct panel_lvds *lvds = to_panel_lvds(panel);
-
-	if (lvds->backlight) {
-		lvds->backlight->props.power = FB_BLANK_POWERDOWN;
-		lvds->backlight->props.state |= BL_CORE_FBBLANK;
-		backlight_update_status(lvds->backlight);
-	}
-
-	return 0;
-}
-
 static int panel_lvds_unprepare(struct drm_panel *panel)
 {
 	struct panel_lvds *lvds = to_panel_lvds(panel);
@@ -93,19 +78,6 @@ static int panel_lvds_prepare(struct drm_panel *panel)
 	return 0;
 }
 
-static int panel_lvds_enable(struct drm_panel *panel)
-{
-	struct panel_lvds *lvds = to_panel_lvds(panel);
-
-	if (lvds->backlight) {
-		lvds->backlight->props.state &= ~BL_CORE_FBBLANK;
-		lvds->backlight->props.power = FB_BLANK_UNBLANK;
-		backlight_update_status(lvds->backlight);
-	}
-
-	return 0;
-}
-
 static int panel_lvds_get_modes(struct drm_panel *panel,
 				struct drm_connector *connector)
 {
@@ -132,10 +104,8 @@ static int panel_lvds_get_modes(struct drm_panel *panel,
 }
 
 static const struct drm_panel_funcs panel_lvds_funcs = {
-	.disable = panel_lvds_disable,
 	.unprepare = panel_lvds_unprepare,
 	.prepare = panel_lvds_prepare,
-	.enable = panel_lvds_enable,
 	.get_modes = panel_lvds_get_modes,
 };
 
@@ -242,10 +212,6 @@ static int panel_lvds_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	lvds->backlight = devm_of_find_backlight(lvds->dev);
-	if (IS_ERR(lvds->backlight))
-		return PTR_ERR(lvds->backlight);
-
 	/*
 	 * TODO: Handle all power supplies specified in the DT node in a generic
 	 * way for panels that don't care about power supply ordering. LVDS
@@ -257,6 +223,10 @@ static int panel_lvds_probe(struct platform_device *pdev)
 	drm_panel_init(&lvds->panel, lvds->dev, &panel_lvds_funcs,
 		       DRM_MODE_CONNECTOR_LVDS);
 
+	ret = drm_panel_of_backlight(&lvds->panel);
+	if (ret)
+		return ret;
+
 	ret = drm_panel_add(&lvds->panel);
 	if (ret < 0)
 		return ret;
@@ -271,7 +241,7 @@ static int panel_lvds_remove(struct platform_device *pdev)
 
 	drm_panel_remove(&lvds->panel);
 
-	panel_lvds_disable(&lvds->panel);
+	drm_panel_disable(&lvds->panel);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
