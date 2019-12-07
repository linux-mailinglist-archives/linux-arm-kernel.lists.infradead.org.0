Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1F2115CEF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:09:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VZl/vdmqMILLuOUtwJV3wC1CMdJYoG4X8Lz20uo7dA=; b=WnQCf70zJxMeEP
	63IpxkEHdweqcaur3DchSBpyfrMWCLl+tTVtMEndyiTFvunGSTyU/Mb8NRNVJdhU+DZILdDRHtA2x
	YIiqMbkZ3D93uO4zXzLglvXdKQNsXiSsC0hs8B36l2YTRKdGWTVnseKrcnoLSxrplEsnoG8zjPHrJ
	pEQ6D7E8520ab8nMIqB9s3S2Z9vT5izNNyCxUMAZzuzjV6hIhM47iBz6co4o0Ryd8vtUFQFEUINXF
	mE3u9R95qS95I4F73Utr1Lkc/GbiGiVzoTKGNvESR/JazMlF0XgRzjJj5Qb2ga3b1A6EkFlDrpWMz
	g2GXBC8CsRhJXFB41Gsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idalo-0002Sc-CK; Sat, 07 Dec 2019 14:09:16 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idahH-0005lm-5v; Sat, 07 Dec 2019 14:04:43 +0000
Received: by mail-lf1-x142.google.com with SMTP id y19so7378435lfl.9;
 Sat, 07 Dec 2019 06:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=66uC10NTDsBRb7X6vStnogHiILcbdjND8PJjJ30cYbk=;
 b=eXo50RX1awgOgNqXA1euoTjADMDxJIIFt7Pu3nB1qA9kL/D53Wde7x1V7fPKl2ER6f
 mKPD6elw1ZuMST7wwxBb3iv3VN9n4mHUZuCyvBBdvRZ+zO9nzDUfgM+nr89reyidFjk2
 5bl5lEnsZ5a+YLW/5u7sk+EqFefyVyztWmjYqKsrM0j+3Hu9JYA32AFZOHg/zXqQEhil
 EaIetBjkLamIOXtQH7Ef+AHxOdglN5O/sqEFpPCFljHdlSqIYsq3aggg2FUtPigLHmwG
 Qwnhq8a1y98GH4vItHdyUv4SzuVygkRRme4IlJZiEXPhgPjwJOXY5+RKh3KzTEoOj3Oe
 uylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=66uC10NTDsBRb7X6vStnogHiILcbdjND8PJjJ30cYbk=;
 b=lITHTzSCzcrBLldgODRU9dCl2c4yyG7ZpnKWz4rudE2q1iZ2/Z/oH6t4PcCZlXnsGz
 q67CquRFG92TFiReB51HIKRIWVpsF5KmRVQxL+5dOIDxqMopXsRGaiRIe8RgOIDhWD+t
 WOz6RyoK4jT4JnQtJLQB+hFT6SqmDWckQWarcHtCmGx6bjFlEOClB2T2Cj1/dxEzc1og
 eLWS9cezyZE3heKgvn9OMg13WO9mtT+uIfFfTmI0aXTVpow/YXP8ckd0n1AswszZHJiE
 ELEk/gcqmSu4ANWHDHDVScYvf669MXOvPopr1ypi6uIg2E9GRYFkzyFnrMbjhlIxMiAU
 RjXw==
X-Gm-Message-State: APjAAAVSD6yf56ylkaeK/KIlkfn0KnuI2gsxRhv+kRId7mBReV0JEeg8
 TVU85iL58/su5fyOG2OP/zQ=
X-Google-Smtp-Source: APXvYqxVNVpfDn6H4MM9EgRQ26sPL400SlH6382v5r0u3Jj20zEKSwiT5FQB/2Gog+qGIuLc4xC8dA==
X-Received: by 2002:a19:550a:: with SMTP id n10mr10813033lfe.104.1575727473305; 
 Sat, 07 Dec 2019 06:04:33 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:32 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 13/25] drm/panel: olimex-lcd-olinuxino: use drm_panel
 backlight support
Date: Sat,  7 Dec 2019 15:03:41 +0100
Message-Id: <20191207140353.23967-14-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060435_436473_6538958B 
X-CRM114-Status: GOOD (  10.77  )
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
 linux-samsung-soc@vger.kernel.org, Stefan Mavrodiev <stefan@olimex.com>,
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
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
