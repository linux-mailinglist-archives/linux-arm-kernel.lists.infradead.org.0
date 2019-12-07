Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02363115D14
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:13:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ReL50pIfYGuMurHp0PVfxhXpaKTFch2C7UzG+8rAY+Q=; b=oMaPtUjyQvl0XJ
	xhSR0F08DoCi/IdQ9pTHwYXSZmtyCcMcX/oYR5eKGsaEDScFTHFxnQxu8h9wScytj47RuwceWjQzS
	OIxo4Is6rd5N/bgEd8eInzxwag8TNl6iNXGPfxCK3aQ5/7gRfyauxzAcAAj3nqLHnwTNx/YDgiHQi
	FRoVgGpGquJ7yL7u6Yu4WWfCXXWmLAeWyzUiGslD6mfmCH+J777zfFfdEdB+s0kk+lG13DAWaTf92
	GBDLYvNZWzw4pdQp1thgQmpHhfggrXWT3/sSi6eLyf//DKt8aqNgDKEUj170IqCj97z4QrzcLhTrV
	iYJJUn/KTVohEOJQSayA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idapn-0007hD-Ap; Sat, 07 Dec 2019 14:13:23 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idahc-0005zp-2v; Sat, 07 Dec 2019 14:04:57 +0000
Received: by mail-lj1-x244.google.com with SMTP id e10so10697853ljj.6;
 Sat, 07 Dec 2019 06:04:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ax5u03O4GlUXYUvsqNfWqp3nl/wfPRGvWRKaUynTqzE=;
 b=MOsjEX8G2hTD3/Fqw0NAaEC1u+eRNTD8YHbsDUThxCNZ0y7lK+EPqSY7l0iB0EIoBu
 WR15mn/7DrpvWuejz3eWKvcRkQgfLwrUvNhSp1gY7/7ZlXFmSX2+iE1tyP4SKPER/keM
 AWg11mGYe7VbBl0OhcfPXQafEzJMP7xS6RJ2GlKsZ4uct5p4piuCX67LTXP/8Cavq5ES
 rNHvpjQTrS87tvX0PN23KywnIG3H2tBDf13yBTNiJ0TVC23/BCL2XGnKZMCACyg0zM7l
 GYvBqeAxr9/24mGWgBOXYagq5hgYuZyDuiQQqr+zUDXeJdI4Dsy103KEw0gG1d9kuI+p
 w8/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=Ax5u03O4GlUXYUvsqNfWqp3nl/wfPRGvWRKaUynTqzE=;
 b=FQiO6JSmDvLqEx+CvKT3nB2TVHGNVYIFJMRd8X+kgjjitYzWOXlt611CJ1Q4z1FgAG
 PdPzq9tlt49F2geFjpaHcsgKPEoV273J1Dh6cy+QgWWqnvP9i3YqHYeWy5PFOpBEJP4B
 nZkX3s0re8uUBwSgiobj5fh2bx1vY1EQBKB1WRPn6FQ4Z8xe1rotoC6sNN467PrfZYxo
 zAcBVIp8ELBPFBNcHeaKn03sF6zy+bDmTD93n6aUrP2GqAjZ1WY70Blo/hGgxrwotynk
 cITcz/FbrCnNDlvt7Sq7r17hnDxRVFK4SjMRIgh1WP4U/hKTjA7xP3Ob46+AV195OZ1I
 7lnw==
X-Gm-Message-State: APjAAAVWXHvv3k6lacs6DkbkDsVhwjADp37ulzUmA3x709llo35fbMjI
 rrCrYrySZLCYRcefS6T8YHc=
X-Google-Smtp-Source: APXvYqwuVFG+u6wmnSLIj8XDvpMwmzMMOJBAB41245Fellx5JQ1423tL59LT5rneoJWV6nyNmS7r1A==
X-Received: by 2002:a05:651c:1b5:: with SMTP id
 c21mr12024851ljn.115.1575727494401; 
 Sat, 07 Dec 2019 06:04:54 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:53 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 25/25] drm/panel: tpo-tpg110: use drm_panel backlight
 support
Date: Sat,  7 Dec 2019 15:03:53 +0100
Message-Id: <20191207140353.23967-26-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060456_270435_405E09A7 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
