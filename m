Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6644410F0A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SY8EQlUfhyK6AId3CufzpixD7EfyIsnp6zgAxaUXE8U=; b=FlNQuitnG3+5R7
	U3Kt6aidCpVY0KJjJN/Jz8E9YR3/8E7ac56ZMmSN47LRXV1POegUehp3dr0pDYKhQkmbrWxtYOV0S
	yVMAtS4xtonpagoIlF0UwyQ7eftYi4jk88q01Y3uPGqNnMIKykdyVSRDQucF6S85SuTFqQKdB3m8y
	No9HwqktyJtv4X/4pjQKYknNzOjpaye2hClyaLyZ2NWHge6Ry2OZH3+syJ+XWGy9D+OUdcPpo80Sg
	FuoQkpAqD+qK04/ZzqTdoIuG8MAENq1xFy9QjpcUT9DUd6k6dheBLZrexs9Vs2eEADeLzZqiTxZI0
	7jItiaNyg8jNw+Y+Fo7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrUw-0003EU-M0; Mon, 02 Dec 2019 19:36:42 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrRl-0007bp-9B; Mon, 02 Dec 2019 19:33:30 +0000
Received: by mail-lj1-x242.google.com with SMTP id m6so868476ljc.1;
 Mon, 02 Dec 2019 11:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SZWMV+Yn1n2qxRJClXssw0x9jjzxt8p36cqP16qYlFw=;
 b=frMI18ND0CrGpRVoz0OF84/PH36Owh77oBXHkdHxFAhthah1O0rNVYydhRQb7d6viP
 BCk+dD/GzECwi/F2n2DqleQS893D3L2lqkpbbYK95/S/TIv4XagcmzI9eAo5q4uRuQg0
 xzhWOqXqvMgPDG5cYICG3bapo4zCav/4T+Idmji0shD088h5xUCqyDVlZ+zxlkn8tIGx
 a9ZHWmSRGNggrqIV3w7Q/5tL1+kql/xXrReYl5u34OrzQgWnRXjkGuFAd0M1X2aHk0B+
 eG8VKd22Sio2oqOYiybikcVPNtv+psbbAuVYKAjE7br9TYNcnyCgpNhutdtXJUOxwbc8
 CkPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=SZWMV+Yn1n2qxRJClXssw0x9jjzxt8p36cqP16qYlFw=;
 b=D8Hg6h71oRvC3CeJ2WiLBv1hckaTF84NeEpRC4t2U+wVYyDzujdzMt1k2fyXb/neur
 hsTyQVq09nnUhsO0jfafKjoyW+9QqxVHenQ1us5QLiYg7wzO6juuKWCWnPDQFL3VC/Mj
 dUPCpV5cIibp5e4Ln6YQMgaaeK/AI2yZQjKys4d5UNP1su7DftO7Gr8P1BZQejdahu5A
 gXexPT1Bgd3UpSbk58sMziiQa6R+CBXPFhb5kquooscQFQr/MdL1WsE4C5X98xgH0FYr
 z8HOE7xHgLPbtSFbD8+HLvlK0tWK1nd0HmJBa03Ve+WES5V7JZILgwVozibRQ82S4dw4
 cIjA==
X-Gm-Message-State: APjAAAWIsHUlnH14yAesb1QvZ+LtSZ064RfNnHn9iWjSkRCb+fyBtwnn
 HZQ3qgwdrkf4w1rxRjjnPcs=
X-Google-Smtp-Source: APXvYqyXXdCnUTLi1SoZH1pKdgl0Vb/3Bp3QBgnJto+WVAY2jbGBVOdB3Q4OelNXtyNkSlqln2bYfQ==
X-Received: by 2002:a2e:89c6:: with SMTP id c6mr264410ljk.113.1575315203864;
 Mon, 02 Dec 2019 11:33:23 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 g13sm79482lfb.74.2019.12.02.11.33.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 11:33:23 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v1 10/26] drm/panel: ilitek-ili9881c: use drm_panel backlight
 support
Date: Mon,  2 Dec 2019 20:32:14 +0100
Message-Id: <20191202193230.21310-11-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202193230.21310-1-sam@ravnborg.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_113326_195737_EDD6DF41 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 19 +++----------------
 1 file changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
index 31e5a4e67750..f54077c216a3 100644
--- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
+++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
@@ -3,7 +3,6 @@
  * Copyright (C) 2017-2018, Bootlin
  */
 
-#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/err.h>
@@ -25,7 +24,6 @@ struct ili9881c {
 	struct drm_panel	panel;
 	struct mipi_dsi_device	*dsi;
 
-	struct backlight_device *backlight;
 	struct regulator	*power;
 	struct gpio_desc	*reset;
 };
@@ -348,7 +346,6 @@ static int ili9881c_enable(struct drm_panel *panel)
 	msleep(120);
 
 	mipi_dsi_dcs_set_display_on(ctx->dsi);
-	backlight_enable(ctx->backlight);
 
 	return 0;
 }
@@ -357,7 +354,6 @@ static int ili9881c_disable(struct drm_panel *panel)
 {
 	struct ili9881c *ctx = panel_to_ili9881c(panel);
 
-	backlight_disable(ctx->backlight);
 	return mipi_dsi_dcs_set_display_off(ctx->dsi);
 }
 
@@ -423,7 +419,6 @@ static const struct drm_panel_funcs ili9881c_funcs = {
 
 static int ili9881c_dsi_probe(struct mipi_dsi_device *dsi)
 {
-	struct device_node *np;
 	struct ili9881c *ctx;
 	int ret;
 
@@ -448,14 +443,9 @@ static int ili9881c_dsi_probe(struct mipi_dsi_device *dsi)
 		return PTR_ERR(ctx->reset);
 	}
 
-	np = of_parse_phandle(dsi->dev.of_node, "backlight", 0);
-	if (np) {
-		ctx->backlight = of_find_backlight_by_node(np);
-		of_node_put(np);
-
-		if (!ctx->backlight)
-			return -EPROBE_DEFER;
-	}
+	ret = drm_panel_of_backlight(&ctx->panel);
+	if (ret)
+		return ret;
 
 	ret = drm_panel_add(&ctx->panel);
 	if (ret < 0)
@@ -475,9 +465,6 @@ static int ili9881c_dsi_remove(struct mipi_dsi_device *dsi)
 	mipi_dsi_detach(dsi);
 	drm_panel_remove(&ctx->panel);
 
-	if (ctx->backlight)
-		put_device(&ctx->backlight->dev);
-
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
