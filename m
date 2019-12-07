Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080CA115D09
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:12:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oVPYAFXvqQisfPrfJ8YmCB0qyQ/KLlZajaXPC1RZBCQ=; b=NpKV9+cwedLJqq
	1LgNJdl41ruZu6VSPYR1sd0i3gwtENdarRh3B1b29HrZFlfjymU9EMBpxP1AM2vb1gQwJ9QpZL4jp
	uxft/27Cx6r6jsMjl6CymQq/BgGYGlF6MP67izzDxBO/Rnd/xCwwQE7hq7w0h44U6V1qYyn7KCZvY
	9Ee3mL/AZquPjV+dWrXOFKCqXC8AA1tOKZj1t+YchTd0Z5mqKzy5qoBtckhz7HoRuKrFN/QPJVaYf
	1oE0eoalQXdmL0QnhpW5yFaSYXt2lKCugB5e76q5ZJM6d4w1qpwp+Jy9sAG099InN+0mvrepsaPO3
	ZA50JO3m6RowCtuRiOiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idaoq-0006l1-MR; Sat, 07 Dec 2019 14:12:24 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idahW-0005vy-O8; Sat, 07 Dec 2019 14:04:52 +0000
Received: by mail-lj1-x242.google.com with SMTP id 21so10751945ljr.0;
 Sat, 07 Dec 2019 06:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tMLaH1DcHQ+vslghT8+TRlkI4S2XQo8E4UTpDmragvw=;
 b=D5+RmOPm/+yiH3s+zhgEQGpCAmW0YXmO48/99b7aaUbSUOvDCUGN6xw3aJGZok+YIl
 iOJ+GDzDZKJQC457IWNLRwXQHFFwdVfDRnUxN+Q7eaI6POWbKXfSJ8cw7sb4/mHRBbpi
 ynYuv49Pik/w7Xr+hnv7Fi0/jsE3DCzwGrHOx8y12KhtuP7nx4tbQpEOjP15CtyBnrUX
 XF9CEacwHFVlssgCdD8nufa44SMQTmfwEHhskW5VZv72NI/qHuVzIXGwQbkNs2JJwkcG
 qRlj1jvP7/PKAwsYvBF1P1bdl67vM/vuuvfH12DLL0tbY5NLpnHWbygQMkLMGPC8O8NJ
 sHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=tMLaH1DcHQ+vslghT8+TRlkI4S2XQo8E4UTpDmragvw=;
 b=EkjxiUDsGYHCqmQp4mPH9gmxQ4LJcKgol730Hz+3ZOU92atncZS8bCW6qT594ZSKPp
 1J2b6Y3b1p9Ychi0fBceQo+p00T493ag4ZMQs9YpcYAu9SU2/2cfw8Yd8vvGvFwA9CH7
 j9UERc2PbouCsqJqN4lm3ZF5QF+gvehi4rCLo94LAsJuP/oiESXnqT5EVe2qzp+UFXkD
 lsO0GP4xa//Q7QmEksNshsP6E71WvZfo0OsGQZ0Wuf0+6spNyQWWoyBtGyocbLWpVJba
 JIYaDttQiltSNes4N8E5udGGQl9U1u5yCKg7/4QGIYF3FKc0Qn7w0pLgQIImcfcEnQv2
 QzlA==
X-Gm-Message-State: APjAAAXquDNjySPOwrBps+YLcI95ZhHg2v3VYM/8xRfOLQfqMUm5hPUE
 /xhJdgeTLaXK5ZUMtUuoNRo=
X-Google-Smtp-Source: APXvYqy+3wJ62tFG4eYTppjZHiTHnpCgFKPf2bYaW1HgVGCJ9bYH7aEQPcT0zxepBy1VmMfRB5FgmQ==
X-Received: by 2002:a05:651c:153:: with SMTP id
 c19mr11950509ljd.237.1575727489236; 
 Sat, 07 Dec 2019 06:04:49 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:48 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 22/25] drm/panel: sitronix-st7701: use drm_panel backlight
 support
Date: Sat,  7 Dec 2019 15:03:50 +0100
Message-Id: <20191207140353.23967-23-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060450_843202_FCC7E975 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/panel/panel-sitronix-st7701.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7701.c b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
index c08a865a2a93..4b4f2558e3b4 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7701.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
@@ -9,7 +9,6 @@
 #include <drm/drm_panel.h>
 #include <drm/drm_print.h>
 
-#include <linux/backlight.h>
 #include <linux/gpio/consumer.h>
 #include <linux/delay.h>
 #include <linux/module.h>
@@ -103,7 +102,6 @@ struct st7701 {
 	struct mipi_dsi_device *dsi;
 	const struct st7701_panel_desc *desc;
 
-	struct backlight_device *backlight;
 	struct regulator_bulk_data *supplies;
 	struct gpio_desc *reset;
 	unsigned int sleep_delay;
@@ -223,7 +221,6 @@ static int st7701_enable(struct drm_panel *panel)
 	struct st7701 *st7701 = panel_to_st7701(panel);
 
 	ST7701_DSI(st7701, MIPI_DCS_SET_DISPLAY_ON, 0x00);
-	backlight_enable(st7701->backlight);
 
 	return 0;
 }
@@ -232,7 +229,6 @@ static int st7701_disable(struct drm_panel *panel)
 {
 	struct st7701 *st7701 = panel_to_st7701(panel);
 
-	backlight_disable(st7701->backlight);
 	ST7701_DSI(st7701, MIPI_DCS_SET_DISPLAY_OFF, 0x00);
 
 	return 0;
@@ -366,10 +362,6 @@ static int st7701_dsi_probe(struct mipi_dsi_device *dsi)
 		return PTR_ERR(st7701->reset);
 	}
 
-	st7701->backlight = devm_of_find_backlight(&dsi->dev);
-	if (IS_ERR(st7701->backlight))
-		return PTR_ERR(st7701->backlight);
-
 	drm_panel_init(&st7701->panel, &dsi->dev, &st7701_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 
@@ -384,6 +376,10 @@ static int st7701_dsi_probe(struct mipi_dsi_device *dsi)
 	 */
 	st7701->sleep_delay = 120 + desc->panel_sleep_delay;
 
+	ret = drm_panel_of_backlight(&st7701->panel);
+	if (ret)
+		return ret;
+
 	ret = drm_panel_add(&st7701->panel);
 	if (ret < 0)
 		return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
