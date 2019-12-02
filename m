Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3E310F08A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:34:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l25DhcGn1HeMSZaVBGCAHv86jEj61ARvk4YBbKb2y0U=; b=U/hONkd1AulALM
	X/Fu0m1pqICy1acz5Z051oycyYt67SlzvjBXBMAm8YnUkOw8Qi7h5BOkk1y3uuJLqk/T0rxTaeJzc
	4R1Ebiw/07AcozAxz7NrbrfvQoP2yEA7UljxoxaiMATInuvanfcBVgstBUcL5KXWeLdTMrY7Cudru
	QR6MPMuyCme87XWsd5nASW7qtvIRaJkFIby+SSqK0+eZ/LpALSF6U1CmKx/V7TzZrkaD9HBbVEZmz
	pF/rodkLrkvEgyRc8mkrHg2E3KN2gmhYdQ7qkzomrQBFEG1y9TyA/QtCSyubpOQcF/cR3eUWqzH0K
	GzPWSmiZckB6dj86J7tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrSq-0008J7-D8; Mon, 02 Dec 2019 19:34:32 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrRY-0007OA-Au; Mon, 02 Dec 2019 19:33:14 +0000
Received: by mail-lf1-x142.google.com with SMTP id b15so790270lfc.4;
 Mon, 02 Dec 2019 11:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=V7Sk0vtzr45wZ8IS1NkDSiSilaqDlsnOxAQYOrMwYkQ=;
 b=EgYXvkPFPix9mbJArMrY8NeAkHpQ9d4jaCKh0z+eSI2RmTfxI6tH0nxQoT6w+sfmnc
 fEtWvBZZpb/e0PdKql1qA648r08sAQTI7p2ddc2eh7wyiuAkat9URK0IBltoqyZR1HrI
 2KYqXQ6I4wfNDDRDfRQx1XAA9+rZyRAOBAcGnrcvpdMy1FIKVzTaq3NQs0tQtVOBd13a
 AlUvXyOntqtmiTqGA/9lTfjOA9eBIqXjLki2aaZnLSK0VMZiXajnqwTmh8DW9W2HgIMK
 O9MnTorcTW8e095CaKaVXszFUwz1gLMc2cA+nfXuOn523h4SJyoz4OjTmZcynePZ5Cmv
 +OyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=V7Sk0vtzr45wZ8IS1NkDSiSilaqDlsnOxAQYOrMwYkQ=;
 b=H6WH6pTRfmzzeLWwEAHhWrBBmB5griU0k3f6HfS+Db4sUNFjPAIGPKjET3ZhwPFnsa
 M3Gls9e/4BayTM+OTZu+yF82GX+znnNde6irlkejGcNeiCU/N9apu+TNvIayqLVmuySk
 FP9ZIUD5xvQ9vlztsDGjJCn4XsszqrEdClvK6l50o86MaQCFrqA7nG+ZGXSMKAKr/qRp
 qUrwUxtoWrXKesPm0YdNBEiZYC2vZs1BTR6I7O7cGptjBB5XnjeaJSmyJx4ty9nfpNGo
 XN9MAD2jfLdB8qLqi2ao2jNVV+0Xk9NKErt42MS2VwRRRzHuqOx5wu+udmZMuaXw3qSA
 HL3Q==
X-Gm-Message-State: APjAAAX2yhEe2keqZCoBdz3dMWh8Paqj7fJ7rds/yW/sCkIxLktFytFw
 cYKwv4sPlDxNeQueUG+GJ24=
X-Google-Smtp-Source: APXvYqyFg/v6//X8iyL25Oa8adNguLHzFky+6g9PTX8HCXsO+nj0VFmTRx6UWZsUGh8DbeL+sZm8kg==
X-Received: by 2002:ac2:5388:: with SMTP id g8mr410915lfh.43.1575315189008;
 Mon, 02 Dec 2019 11:33:09 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 g13sm79482lfb.74.2019.12.02.11.33.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 11:33:08 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v1 03/26] drm/panel: simple: use drm_panel backlight support
Date: Mon,  2 Dec 2019 20:32:07 +0100
Message-Id: <20191202193230.21310-4-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202193230.21310-1-sam@ravnborg.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_113312_520601_F6D60C21 
X-CRM114-Status: GOOD (  13.85  )
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

Use drm_panel infrastructure for backlight.
Replace direct calls with drm_panel_*() calls
to utilize the drm_panel support.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/panel/panel-simple.c | 50 ++++++----------------------
 1 file changed, 11 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 72f69709f349..a5df6d6dd455 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -21,7 +21,6 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
-#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
@@ -105,7 +104,6 @@ struct panel_simple {
 
 	const struct panel_desc *desc;
 
-	struct backlight_device *backlight;
 	struct regulator *supply;
 	struct i2c_adapter *ddc;
 
@@ -236,12 +234,6 @@ static int panel_simple_disable(struct drm_panel *panel)
 	if (!p->enabled)
 		return 0;
 
-	if (p->backlight) {
-		p->backlight->props.power = FB_BLANK_POWERDOWN;
-		p->backlight->props.state |= BL_CORE_FBBLANK;
-		backlight_update_status(p->backlight);
-	}
-
 	if (p->desc->delay.disable)
 		msleep(p->desc->delay.disable);
 
@@ -307,12 +299,6 @@ static int panel_simple_enable(struct drm_panel *panel)
 	if (p->desc->delay.enable)
 		msleep(p->desc->delay.enable);
 
-	if (p->backlight) {
-		p->backlight->props.state &= ~BL_CORE_FBBLANK;
-		p->backlight->props.power = FB_BLANK_UNBLANK;
-		backlight_update_status(p->backlight);
-	}
-
 	p->enabled = true;
 
 	return 0;
@@ -414,9 +400,9 @@ static void panel_simple_parse_panel_timing_node(struct device *dev,
 
 static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 {
-	struct device_node *backlight, *ddc;
 	struct panel_simple *panel;
 	struct display_timing dt;
+	struct device_node *ddc;
 	int err;
 
 	panel = devm_kzalloc(dev, sizeof(*panel), GFP_KERNEL);
@@ -442,24 +428,13 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 		return err;
 	}
 
-	backlight = of_parse_phandle(dev->of_node, "backlight", 0);
-	if (backlight) {
-		panel->backlight = of_find_backlight_by_node(backlight);
-		of_node_put(backlight);
-
-		if (!panel->backlight)
-			return -EPROBE_DEFER;
-	}
-
 	ddc = of_parse_phandle(dev->of_node, "ddc-i2c-bus", 0);
 	if (ddc) {
 		panel->ddc = of_find_i2c_adapter_by_node(ddc);
 		of_node_put(ddc);
 
-		if (!panel->ddc) {
-			err = -EPROBE_DEFER;
-			goto free_backlight;
-		}
+		if (!panel->ddc)
+			return -EPROBE_DEFER;
 	}
 
 	if (!of_get_display_timing(dev->of_node, "panel-timing", &dt))
@@ -468,6 +443,10 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 	drm_panel_init(&panel->base, dev, &panel_simple_funcs,
 		       desc->connector_type);
 
+	err = drm_panel_of_backlight(&panel->base);
+	if (err)
+		goto free_ddc;
+
 	err = drm_panel_add(&panel->base);
 	if (err < 0)
 		goto free_ddc;
@@ -479,9 +458,6 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 free_ddc:
 	if (panel->ddc)
 		put_device(&panel->ddc->dev);
-free_backlight:
-	if (panel->backlight)
-		put_device(&panel->backlight->dev);
 
 	return err;
 }
@@ -491,16 +467,12 @@ static int panel_simple_remove(struct device *dev)
 	struct panel_simple *panel = dev_get_drvdata(dev);
 
 	drm_panel_remove(&panel->base);
-
-	panel_simple_disable(&panel->base);
-	panel_simple_unprepare(&panel->base);
+	drm_panel_disable(&panel->base);
+	drm_panel_unprepare(&panel->base);
 
 	if (panel->ddc)
 		put_device(&panel->ddc->dev);
 
-	if (panel->backlight)
-		put_device(&panel->backlight->dev);
-
 	return 0;
 }
 
@@ -508,8 +480,8 @@ static void panel_simple_shutdown(struct device *dev)
 {
 	struct panel_simple *panel = dev_get_drvdata(dev);
 
-	panel_simple_disable(&panel->base);
-	panel_simple_unprepare(&panel->base);
+	drm_panel_disable(&panel->base);
+	drm_panel_unprepare(&panel->base);
 }
 
 static const struct drm_display_mode ampire_am_480272h3tmqw_t01h_mode = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
