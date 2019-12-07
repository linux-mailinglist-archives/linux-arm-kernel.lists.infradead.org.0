Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5A0115CF4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:10:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5ixim1RqysycGDYAXmmnG7R6Lw+sVXzopLUFEWKipU=; b=g2ho6qiS47SAFk
	KSuPXZb7YsUlthzsAsQBRP/X/WRpDUtXrHZtLpS64wZubuBi5Q869fenCoKrVaHj2Eer0JZED5FOo
	AYBFu2RYp1yGpi6WrN7qt4npOD6CdyWikWMEJK2io/aBR3GLDq9lCOZbv9EOk9B7myaMwqpwku56R
	SmNWlAjh5GRa9I/XEIQ1GjwHMXewDpMJcGElFvaeMUnYwNqJ81DmDHHEDJwYPpZrVpdH5apZzzljp
	9AZr+1tlTJQtdiaHPA/oHhso4NzPt/HvNyD8Avrg95CePvYcorRucaHCJ3LCqUYMERoyn9t65hsqD
	GucZG+mvVR7BI+1pxTaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idanC-00050u-WE; Sat, 07 Dec 2019 14:10:43 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idahM-0005pD-Lp; Sat, 07 Dec 2019 14:04:46 +0000
Received: by mail-lj1-x244.google.com with SMTP id d20so10659723ljc.12;
 Sat, 07 Dec 2019 06:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9ajEOdCUpT16GVN8gH4RbvIy9yc0BScTRBZ/ljCGiME=;
 b=del00zw1hnJOSv6lindha+LEL+pXCeIab6795BI3uAGU4qQMEuuUbjQwOGzbrRfYnV
 sLSpfj7wW3bvryQATj7Q51EwRQD7wRWf62nDjfn6BJFcMaN5LBIhK6IJMt0XJ1Ebfo6J
 XUVLV3X2Ol3AiWrAA9fIpAo3H6pPHhti2T+aMNzt8UWn1Bt5wiHgZX3ad8qBtPltlD/C
 46l3GHw3p5o3zqTX2ZlVW52Bzx2xLd494I1jvveB4FXyii3QJbWyltaWAjdwlm7zXUoI
 jqbYvwE1QXqvMA4YnM5UQcphd58kDP+oaaRq+YP7wmtRkB5l6+6cYecRYZcs/vzQN+4A
 dMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=9ajEOdCUpT16GVN8gH4RbvIy9yc0BScTRBZ/ljCGiME=;
 b=YGdJuC/X2V/toaE8r5Y1nWc734OKytkjyGGx9u08057xlvOrxDHlELliU+odCJbtKm
 RVZHH8dtEmlodTUS2BgNRX4lJKPj/iOZMgV4ZLfVYalIZy3Odmzx4XiOKOOJJaHHW7jL
 Sav2d04QtOzbr/OPifUdsvuUDWVCWC/IIT9cQFsig+uwhLRgmnVS/OpvU9Qg+NbhREG0
 lb89PamKL0fiTBsiig7xzBM+my2e/8a7Z7xVKAAcDFm3bPeblRh20W1OtdOLYcFYN5BY
 cA3DHuREfoiFqc0L9+hvgXFCl7Z4g3gnRBq1gddTkVKjQtzjucoFJbjZNTZqS7seBeIZ
 cVpQ==
X-Gm-Message-State: APjAAAVC8ZFoV60ndMBqQm5sPTGg7j51Uw+wn3XhXhPyFQnDc6ZjUvHe
 KFnZI2cpG54I2YCNwIzgbvA=
X-Google-Smtp-Source: APXvYqzCbSGlblzAZsh3pGQCv4tblDf1OnHgS/cPV5hd9q+X+WS1X5hlR+rDAbIA4PDjxaKo1Ddq2Q==
X-Received: by 2002:a2e:9890:: with SMTP id b16mr11789523ljj.190.1575727478849; 
 Sat, 07 Dec 2019 06:04:38 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:38 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 16/25] drm/panel: raydium-rm68200: use drm_panel backlight
 support
Date: Sat,  7 Dec 2019 15:03:44 +0100
Message-Id: <20191207140353.23967-17-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060440_869870_F563E936 
X-CRM114-Status: GOOD (  10.91  )
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
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/panel/panel-raydium-rm68200.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-raydium-rm68200.c b/drivers/gpu/drm/panel/panel-raydium-rm68200.c
index d6a03328e594..e8982948e0ea 100644
--- a/drivers/gpu/drm/panel/panel-raydium-rm68200.c
+++ b/drivers/gpu/drm/panel/panel-raydium-rm68200.c
@@ -6,9 +6,9 @@
  *          Yannick Fertre <yannick.fertre@st.com>
  */
 
-#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/regulator/consumer.h>
 
@@ -78,7 +78,6 @@ struct rm68200 {
 	struct drm_panel panel;
 	struct gpio_desc *reset_gpio;
 	struct regulator *supply;
-	struct backlight_device *backlight;
 	bool prepared;
 	bool enabled;
 };
@@ -242,8 +241,6 @@ static int rm68200_disable(struct drm_panel *panel)
 	if (!ctx->enabled)
 		return 0;
 
-	backlight_disable(ctx->backlight);
-
 	ctx->enabled = false;
 
 	return 0;
@@ -328,8 +325,6 @@ static int rm68200_enable(struct drm_panel *panel)
 	if (ctx->enabled)
 		return 0;
 
-	backlight_enable(ctx->backlight);
-
 	ctx->enabled = true;
 
 	return 0;
@@ -392,10 +387,6 @@ static int rm68200_probe(struct mipi_dsi_device *dsi)
 		return ret;
 	}
 
-	ctx->backlight = devm_of_find_backlight(dev);
-	if (IS_ERR(ctx->backlight))
-		return PTR_ERR(ctx->backlight);
-
 	mipi_dsi_set_drvdata(dsi, ctx);
 
 	ctx->dev = dev;
@@ -408,6 +399,10 @@ static int rm68200_probe(struct mipi_dsi_device *dsi)
 	drm_panel_init(&ctx->panel, dev, &rm68200_drm_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 
+	ret = drm_panel_of_backlight(&ctx->panel);
+	if (ret)
+		return ret;
+
 	drm_panel_add(&ctx->panel);
 
 	ret = mipi_dsi_attach(dsi);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
