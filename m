Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20DD10F0C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqkITwgqCpFoeHNjh1+D26sjPPyr8PJx1l11xZN6jDw=; b=Nu5Yvi777cwO4B
	Rt+PvP3f3wIY5geb2LDkrNv+XIH/aUgi0V3DXY+QV8tTB1asy4DexPY1hrNKPJZ9UIwqz7ti4UJ2F
	tOWKS8DecYjwivvTo3bZGOqJZzkIznRKnyAcsnRRAtwjqx3HRuOA+uI02FjrLcvc5HPyTllxOpFfj
	trqShd2jirvEDMCT94AyHo9sQ+I8fS1FltRsI7m2H6Lc33fUvQBJQfFPWRrKK4rOMF6ygA3PhI5QO
	WAa+DgPrUSI+hatgcc6lhP554OpDr4t3tfctqjKrjyWZYkUpm456SW9WXtZxfmT5Q9qePH6aoZZL0
	OYsssEZnozKuykdqcbxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrYQ-0006W8-83; Mon, 02 Dec 2019 19:40:18 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrS2-0007ow-FY; Mon, 02 Dec 2019 19:33:44 +0000
Received: by mail-lf1-x142.google.com with SMTP id q6so777464lfb.6;
 Mon, 02 Dec 2019 11:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RAsbC5cqN6MKFPQ6PG5e5K6xQzBWVJ78zoRaemBgaGg=;
 b=TXUTqMevG+NnSg2VBH8v+6DuQCnq6JRVAalnYOEupDPG7sgQ4MOBs0GxgbTost/kN2
 5W4yzzNwg+Y3BitXq2T9jpEpfJHIptbCJeIjvnco+zlT2eefFw4RBaEB+ibA+F8H7ymY
 AkNZCpxsiTQfe0XRmefXBvT82/3Wnq/R7+W+Dc195BoXoXm3NxY3jx6fhADMTjgo2ZDN
 4Onzbk+H6sTnkhdgzv7O4OOSO/csJHyyJn6Mz73f1WDRE/lYGlRqBp+jCTYqz4XJtUlD
 WhN2e+8+09qJ90X8cql4g9vMVXvF8HZXhmAp7SXQ2gvtV5c75/VwyBQyjSXFwqleuXbC
 mLag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=RAsbC5cqN6MKFPQ6PG5e5K6xQzBWVJ78zoRaemBgaGg=;
 b=CHACvqwYutSWtHcv7NyLIcZNft4M8vZFig70IixDwYulRlZEkZhdzykVqV5jmZY7uj
 vkaAfph3EPAgvf4DMmhhVaUgTCko5zDu6CUKGhOEM0/OvXER7dvey5NJ4DWf3nwto4EK
 Ys7C8YsHrRU2EsVj57OKCPUshEzPClRa8gnI50ZBqYNami9tarugR3oax0AbjgjreYQy
 bcq0toUNb0dkUg9Nc2hvJAJsUcHiK7AU58Q67IO+bDa/XH+vWvyiA1ahV50IcOn8XnVi
 C/PLXK3rN7a5t0fCoTuOvcvnKR2i3oonCoxnMNGlpMRI1Amk/0XCymS4BZfvk+a0Axbg
 37CA==
X-Gm-Message-State: APjAAAVdyaQzLTEjw9ofudKOuUTn5uZmdl91Yqufep3MzOHFawNqp6Vu
 38R1FTji8ys0Z0fAsDLX0W4=
X-Google-Smtp-Source: APXvYqxgC0o7yY6+/wa5jNY1ByPzl8EwYMqBcVDLKKwFraG7QLXiwa/WDguruEd1xtBPdhlcSdCT9w==
X-Received: by 2002:ac2:4946:: with SMTP id o6mr432258lfi.170.1575315220244;
 Mon, 02 Dec 2019 11:33:40 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 g13sm79482lfb.74.2019.12.02.11.33.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 11:33:39 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v1 19/26] drm/panel: ronbo-rb070d30: use drm_panel backlight
 support
Date: Mon,  2 Dec 2019 20:32:23 +0100
Message-Id: <20191202193230.21310-20-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202193230.21310-1-sam@ravnborg.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_113342_632273_F26AAB38 
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
 drivers/gpu/drm/panel/panel-ronbo-rb070d30.c | 19 +++----------------
 1 file changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-ronbo-rb070d30.c b/drivers/gpu/drm/panel/panel-ronbo-rb070d30.c
index 746a3a221100..ef18559e237e 100644
--- a/drivers/gpu/drm/panel/panel-ronbo-rb070d30.c
+++ b/drivers/gpu/drm/panel/panel-ronbo-rb070d30.c
@@ -7,7 +7,6 @@
  * This file based on panel-ilitek-ili9881c.c
  */
 
-#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/err.h>
@@ -29,7 +28,6 @@
 struct rb070d30_panel {
 	struct drm_panel panel;
 	struct mipi_dsi_device *dsi;
-	struct backlight_device *backlight;
 	struct regulator *supply;
 
 	struct {
@@ -84,22 +82,13 @@ static int rb070d30_panel_enable(struct drm_panel *panel)
 	if (ret)
 		return ret;
 
-	ret = backlight_enable(ctx->backlight);
-	if (ret)
-		goto out;
-
 	return 0;
-
-out:
-	mipi_dsi_dcs_enter_sleep_mode(ctx->dsi);
-	return ret;
 }
 
 static int rb070d30_panel_disable(struct drm_panel *panel)
 {
 	struct rb070d30_panel *ctx = panel_to_rb070d30_panel(panel);
 
-	backlight_disable(ctx->backlight);
 	return mipi_dsi_dcs_enter_sleep_mode(ctx->dsi);
 }
 
@@ -208,11 +197,9 @@ static int rb070d30_panel_dsi_probe(struct mipi_dsi_device *dsi)
 		return PTR_ERR(ctx->gpios.shlr);
 	}
 
-	ctx->backlight = devm_of_find_backlight(&dsi->dev);
-	if (IS_ERR(ctx->backlight)) {
-		DRM_DEV_ERROR(&dsi->dev, "Couldn't get our backlight\n");
-		return PTR_ERR(ctx->backlight);
-	}
+	ret = drm_panel_of_backlight(&ctx->panel);
+	if (ret)
+		return ret;
 
 	ret = drm_panel_add(&ctx->panel);
 	if (ret < 0)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
