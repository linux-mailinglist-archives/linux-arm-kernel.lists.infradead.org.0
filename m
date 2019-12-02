Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E951B10F0DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:42:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwafHJQ3lcyzh3JerEVJVKv93iFAE8pWvQ+bH9ISr14=; b=AuGwGeCP5PJQuq
	mU5vwZQo3t47DbM6rc39+jw/VDE28x+1tAjVKc90YkoYVLWcUiWEYvHU6TlORgKb+IZB1qzzN7r2a
	Cgczzp/2xv6Vx/YaNtgGe0BB4RDwLN29H6oyuRFoWDhq/lppE7Xwhcb2BpTso5YDpG8hN10sSuwug
	+B4S8eW5e0Am/D9CXMDbWGmlJHqt6XntP8GDJGGi0DVJSyLevENWOUY7M0AN11hC0GV5MqS85nAba
	aoRC9T5zmx9Sf7fX3vBpMj0FfZOf0XxXC1VtnDK2IVK2rxXi0Ocqr9HNQXiCoGebJSNE0A9hea2rU
	QEsVWuDY1KlKOrwrGsmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrag-0001ex-59; Mon, 02 Dec 2019 19:42:38 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrSE-000810-O2; Mon, 02 Dec 2019 19:34:00 +0000
Received: by mail-lf1-x141.google.com with SMTP id l18so808119lfc.1;
 Mon, 02 Dec 2019 11:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CU1uoHEr1EClqVOFtZU3zB21PkkAQa6gthbvOIOjhXw=;
 b=sQ5sz84ahngu04detfdJb7WzDQ0QcopqKxnDfHTl6wWuDWFdmsW99YWf0HBWKVWdCP
 RtINs73RJ+Sk7G71eUzuQ9dzzWizDYLIb9hlwzETpJLExqI+mi5bryV4yuHDhM1bk64b
 vEQDA0fYt2NVXGAInm08lTk2qc9z8Zuy/bBxOD7ZeK96/nmYABuBHoroyzZmnlYo/3hL
 e6lBlbFUTJ/vQgNEhqRXR+CF6RtFCvzDPOJRsXl7kAidChgKhYB4T34t/JadF6qMZ/54
 Ia1/574eLMCCnimEAcJi1a8cMBlCfwJLuzWlre+3Lh7dtm0Umq9xTA63WTRQ+KYk8fR2
 Esxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=CU1uoHEr1EClqVOFtZU3zB21PkkAQa6gthbvOIOjhXw=;
 b=s7YL1GoNvSr/sz+DVjnamiYPTfr0sAAcQWLAZzaseSfUzpBHwW16eNkC+domi6WIcK
 FZNHyoAxU0BwuKuwbqcvJtiqq2P5HCs8EFyrkbS7kyLBCKek1ghS9qUL421B/KxL067N
 tDnmB5UgRuZxhf8hFQjPhE4ZY02BvjcZnPiz1O9BOz/9bTiK3R6i4V38vViMt0fy4iEw
 J7Cus3hOWfFiotfsIevNiJ8FuYvalwA90rPeWykPgx96wIrx88XVAhRdk9sH+hiH1fqJ
 EUM/8UQhag+Om3MzN3JLxq0hWj/L1H+H/6h0UHpkg8nmkg2hfkj57oDgDUEm/505Fyn5
 qZTw==
X-Gm-Message-State: APjAAAX3qZUhja+qBzkJFuF1nGD1DvJveuNwfpOQ++Gzp8da6eYAK+bS
 8eaqGr7xWU06uzqjH6a1scU=
X-Google-Smtp-Source: APXvYqy6JtwNRfjOhSCiLRMY0PnjwO80lGs4bEHgQWo2w/EjSnAnF5rp0zEQoTYkYl1Ki13jCNJp3w==
X-Received: by 2002:ac2:5388:: with SMTP id g8mr412443lfh.43.1575315232849;
 Mon, 02 Dec 2019 11:33:52 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 g13sm79482lfb.74.2019.12.02.11.33.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 11:33:52 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v1 26/26] drm/panel: tpo-tpg110: use drm_panel backlight
 support
Date: Mon,  2 Dec 2019 20:32:30 +0100
Message-Id: <20191202193230.21310-27-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202193230.21310-1-sam@ravnborg.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_113355_001359_AC2F43A9 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/panel/panel-tpo-tpg110.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-tpo-tpg110.c b/drivers/gpu/drm/panel/panel-tpo-tpg110.c
index bee213ea1a42..8472d018c16f 100644
--- a/drivers/gpu/drm/panel/panel-tpo-tpg110.c
+++ b/drivers/gpu/drm/panel/panel-tpo-tpg110.c
@@ -14,13 +14,13 @@
 #include <drm/drm_panel.h>
 #include <drm/drm_print.h>
 
-#include <linux/backlight.h>
 #include <linux/bitops.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/spi/spi.h>
 
@@ -76,10 +76,6 @@ struct tpg110 {
 	 * @panel: the DRM panel instance for this device
 	 */
 	struct drm_panel panel;
-	/**
-	 * @backlight: backlight for this panel
-	 */
-	struct backlight_device *backlight;
 	/**
 	 * @panel_type: the panel mode as detected
 	 */
@@ -356,8 +352,6 @@ static int tpg110_disable(struct drm_panel *panel)
 	val &= ~TPG110_CTRL2_PM;
 	tpg110_write_reg(tpg, TPG110_CTRL2_PM, val);
 
-	backlight_disable(tpg->backlight);
-
 	return 0;
 }
 
@@ -366,8 +360,6 @@ static int tpg110_enable(struct drm_panel *panel)
 	struct tpg110 *tpg = to_tpg110(panel);
 	u8 val;
 
-	backlight_enable(tpg->backlight);
-
 	/* Take chip out of standby */
 	val = tpg110_read_reg(tpg, TPG110_CTRL2_PM);
 	val |= TPG110_CTRL2_PM;
@@ -432,11 +424,6 @@ static int tpg110_probe(struct spi_device *spi)
 	if (ret)
 		DRM_DEV_ERROR(dev, "no panel height specified\n");
 
-	/* Look for some optional backlight */
-	tpg->backlight = devm_of_find_backlight(dev);
-	if (IS_ERR(tpg->backlight))
-		return PTR_ERR(tpg->backlight);
-
 	/* This asserts the GRESTB signal, putting the display into reset */
 	tpg->grestb = devm_gpiod_get(dev, "grestb", GPIOD_OUT_HIGH);
 	if (IS_ERR(tpg->grestb)) {
@@ -459,6 +446,11 @@ static int tpg110_probe(struct spi_device *spi)
 
 	drm_panel_init(&tpg->panel, dev, &tpg110_drm_funcs,
 		       DRM_MODE_CONNECTOR_DPI);
+
+	ret = drm_panel_of_backlight(&tpg->panel);
+	if (ret)
+		return ret;
+
 	spi_set_drvdata(spi, tpg);
 
 	return drm_panel_add(&tpg->panel);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
