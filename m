Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E090B115CEE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:09:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=760fCegRMLeJLUAbOsiwFeuo+vAxUbLbQSjcHy0Rj08=; b=g1ibmIO/Qm+8kf
	G+GhciBOiczaae1rcNQ6AUWTAJ7tZpab/sndbpYfbQeX0m5XXa01WcEaSBrkVQtra3jszyVAyb8xn
	lcXgT/btxppVo/wX7RoURukWOeuTReFMNJzGH10kyprcyAwrDsgpB4fQFbfuJgtFkdRHQgo4Vqm3a
	QNty6H2t21GAY60aH+Lqpf36SMXNzBEhswIKV4LbIZ18eMdGdZ01JOHsgozBxYOjOFZTj9xZEZaeF
	uBPNV8eFBy3+cBrxJowVEP/43MDtujK/2iA6uylrSnUUd4Jx+KY1dFzrO1NdKFVouo+S99TzTuNsr
	wwN6tpSwwMbmUz/Lq42w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idalZ-0002Gj-DG; Sat, 07 Dec 2019 14:09:01 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idahF-0005jh-0G; Sat, 07 Dec 2019 14:04:42 +0000
Received: by mail-lf1-x142.google.com with SMTP id l18so7432673lfc.1;
 Sat, 07 Dec 2019 06:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MSWnR6VdohNUNOoFOCWn8BMjZQT0wFgumDrz53vPK98=;
 b=jJMVa7cVhgExq5uNImKtY6/kAmaigjLdQdldbzHZ8hHjFeI1pllqcDO4VPkreZkZUe
 gInPMWKqkwzqBMn59QbKd6B4gjT7NocpAfheSUD7gPQrHOPNEVCqbh38OtEbOEm0XJng
 FNCtKiR4ukXNMybUrn3xS9B9vJtxzZJpUHaSYVbSwXYai/MhVi6loFQFyYJ/WNXSqhvm
 4g79W0XLNcpsuHCRaif2tYztXzPefA4N5hLfLFp/G5J/Qivb0VZauDHAmJFEcWWu4OyZ
 bR//VvZOUNtfe1bu6uWhvILlq1BXI5fPkjY+cevovvV57fcE3l2izpgpliMgAcGWx2S9
 4J/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=MSWnR6VdohNUNOoFOCWn8BMjZQT0wFgumDrz53vPK98=;
 b=c13h8MOnp1nZWmJs5Ax+1eClQrj0kgMJEoXGjho/R/4LfknWCjQ+dkFYZtbDkumoHm
 u1b0jPcJ2r2nu72n8nmbXjqz4dSVZRze5/SXr5wEaGsRSeBxzecJq3JLcW7UYeBvxcoX
 xUaVCYepyKsb1QOyrTRnosjHKEfNvRMs4XYagHYHMgh5MjwNvUJ11vb/U1e5AxYy0OL1
 HAlzl328lecNE2FxibJiNVgUqoBnNJO8l56DKj5RudMKBqCxIYW0TsVt/ECkJwFUbaPF
 sPl3qc7d42hPgyGHGfSCCy8KLuTRayzIunIkSD/hVQFUk3QpS8aT5S6ImjFbMF9Kz5ur
 DCmg==
X-Gm-Message-State: APjAAAX9ETc6Ob1EXY3W6eB1e2gOv1QRIFwMMr406y8c7oxrCRuFynUR
 mf9TUjl/gtkanzxF5nBntNQ=
X-Google-Smtp-Source: APXvYqyNmfcdDlQvYICW2Ts4KjEsPdwDqWLhVGnv7aiHkVxrXOcZ/rYb2aF+AgT/0jQiarjudoHLkg==
X-Received: by 2002:a19:6a06:: with SMTP id u6mr6860850lfu.187.1575727471568; 
 Sat, 07 Dec 2019 06:04:31 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:31 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 12/25] drm/panel: lvds: use drm_panel backlight support
Date: Sat,  7 Dec 2019 15:03:40 +0100
Message-Id: <20191207140353.23967-13-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060433_360438_31CA2EC8 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
