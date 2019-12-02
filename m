Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A3010F0B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:38:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0ZxyZWAtDjM9uT9hB5PwVoBV1JdzpcaRHEmCuhCAPE=; b=K6Q50DuSY9c3m+
	xdPhf87TGeZ7ssdlx0TIS/1ZhYpP0Gmx/RGN/fUDUePOexSaDZ/5FN1gbC0Tj32hHw+Uy8drjWpzQ
	pTYnd/jQobalYc3IpCKKLLwQBSTR42qIh5v/BfgUV06KLdlpfIaQW3gs7I//HSrvRmSweTcsgjkJt
	PD7hDoYU5366fIiTPm7bFmihsNX38udKovI2CnihiYWGuIxJjoDxjxYuq24SMSmwtAlEaATVw1k4T
	0r/jidZoEwkF50CLUUbFjCf8WHc31K4pI5P0uVK6cRdnl552WU4o6mi0k7TRrImnrTxkP9qrejkur
	b8kLhBHXF8ht5x4kOZPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrWr-0004wQ-GU; Mon, 02 Dec 2019 19:38:41 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrRt-0007hl-AP; Mon, 02 Dec 2019 19:33:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id m6so868913ljc.1;
 Mon, 02 Dec 2019 11:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+5RYUpfQaHxKRkMXMkrP8oHu/MU7hdMpYDFxNzucUWs=;
 b=FxrKOZXvIF29xM5J+pbmyhXLfeQ1nklAk2wjlXyurWeQsWf2xXMKDXqzoBzjlf8k4h
 sPXZBUKfoTu2+QPSuB1Mun/NjlwEGG6y4s2LuJC2ikplHxAIxTxYdo0/pT+lQxVE/Dqe
 Q+qDzTGbtGOUWoFMzbsYsrXtMhBrHPAbakZ4oo4+KxLNrE9+Vhsr57kf756kruBBfiwo
 fnvVT2HrnRTkdac8TGx+bWQLxc5opFap8I718aRsVi5UBY2ky009OO8SgyF0Ws/zpy+y
 t4dIPeOh16FHiRVp976VpPmmC4FK7tfYfhZNi1xoQOGrwALJKP5AAjb0a2R93fuuE4wZ
 p52g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=+5RYUpfQaHxKRkMXMkrP8oHu/MU7hdMpYDFxNzucUWs=;
 b=VLX/da3eSf7kVFpfeivAVk/nYz+9lX6KBleiYOsInZGxi0dUBYMBxJUrU9BOsuZJci
 lZVLCZvX3Mmp/KRR9kDp527PrYLIR/DJoKRXp6Js6dKW9vRn/dou1yLWRWEUxgyyYWiH
 GEDXHp449X3zKK5ReW1IgVvcnd61SiHEuglq7oWZOjnCj3RZlZtXS15tZRsbcgJNdsWA
 uSWqGRaY61oBNePaCLomYNPgUX0Gu0sDQ/3yQXFRtwFmOF15/dnb/g1hytsWT6QZfL2n
 8EZVvlwuKvFHK+n7Wt18Ajba1eqLjnDfJhM2aNCqhohz4IbfIMPPxN0D/Y27S5IaChBX
 YssA==
X-Gm-Message-State: APjAAAUQBHeniLDrzOBctRt+a7lTt09MhY5Q20znNPuL17uF1JxZhF8W
 nTxIOYmCQAuM+aiWT+c+hjc=
X-Google-Smtp-Source: APXvYqw6xZ1V1bDQy1s46yIVtGq4D/aLE8LZc7NwSI+fkDGgYQgqenzANQAALXlLLg5Wahg+qt2cSA==
X-Received: by 2002:a2e:3a15:: with SMTP id h21mr266843lja.256.1575315211669; 
 Mon, 02 Dec 2019 11:33:31 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 g13sm79482lfb.74.2019.12.02.11.33.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 11:33:31 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v1 14/26] drm/panel: olimex-lcd-olinuxino: use drm_panel
 backlight support
Date: Mon,  2 Dec 2019 20:32:18 +0100
Message-Id: <20191202193230.21310-15-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202193230.21310-1-sam@ravnborg.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_113333_489093_98724C98 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
 Stefan Mavrodiev <stefan@olimex.com>, linux-rockchip@lists.infradead.org,
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
Cc: Stefan Mavrodiev <stefan@olimex.com>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 .../gpu/drm/panel/panel-olimex-lcd-olinuxino.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c b/drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c
index e553e584399b..09deb99981a4 100644
--- a/drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c
+++ b/drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c
@@ -6,7 +6,6 @@
  *   Author: Stefan Mavrodiev <stefan@olimex.com>
  */
 
-#include <linux/backlight.h>
 #include <linux/crc32.h>
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
@@ -68,7 +67,6 @@ struct lcd_olinuxino {
 	bool prepared;
 	bool enabled;
 
-	struct backlight_device *backlight;
 	struct regulator *supply;
 	struct gpio_desc *enable_gpio;
 
@@ -87,8 +85,6 @@ static int lcd_olinuxino_disable(struct drm_panel *panel)
 	if (!lcd->enabled)
 		return 0;
 
-	backlight_disable(lcd->backlight);
-
 	lcd->enabled = false;
 
 	return 0;
@@ -134,8 +130,6 @@ static int lcd_olinuxino_enable(struct drm_panel *panel)
 	if (lcd->enabled)
 		return 0;
 
-	backlight_enable(lcd->backlight);
-
 	lcd->enabled = true;
 
 	return 0;
@@ -283,13 +277,13 @@ static int lcd_olinuxino_probe(struct i2c_client *client,
 	if (IS_ERR(lcd->enable_gpio))
 		return PTR_ERR(lcd->enable_gpio);
 
-	lcd->backlight = devm_of_find_backlight(dev);
-	if (IS_ERR(lcd->backlight))
-		return PTR_ERR(lcd->backlight);
-
 	drm_panel_init(&lcd->panel, dev, &lcd_olinuxino_funcs,
 		       DRM_MODE_CONNECTOR_DPI);
 
+	ret = drm_panel_of_backlight(&lcd->panel);
+	if (ret)
+		return ret;
+
 	return drm_panel_add(&lcd->panel);
 }
 
@@ -299,8 +293,8 @@ static int lcd_olinuxino_remove(struct i2c_client *client)
 
 	drm_panel_remove(&panel->panel);
 
-	lcd_olinuxino_disable(&panel->panel);
-	lcd_olinuxino_unprepare(&panel->panel);
+	drm_panel_disable(&panel->panel);
+	drm_panel_unprepare(&panel->panel);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
