Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AB580C91
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgXLdr633YOJxH6jU9yukfO0JOwkt6g+oJEFNnSfDQ0=; b=lGkfoqPSH89iLJ
	OvELLk0PqzBI1EiX6NQKAFg870JNxP11kSdqVSZhu0bU9gPElOtiXMLKT3ULCWPmhLzwqEXWWaklC
	axPa6eqvPHa0gmoO69Ln95IcPBcmSKjhyjq5RCsZ7tQa0qbW2GFFs+8Qi5+hNNYu2+QVPJjPvGWAf
	zeRKqq31AbUs+2BKfdD4RqqEOaTtuoeqjPy71Feghw9jCgsNr1wwQaclvZJslxsJ04LATEIF6RWKB
	BBYqpQru15/VeQvoxsuLpBhl+hHJBp1QfZ4jaOtgvv6IujIyKMLdZA8nzB5zRgV6OY51iEfL/zz79
	GgyF/ub5ooXhpXex4egQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMzJ-0003xc-BO; Sun, 04 Aug 2019 20:20:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwt-0000gN-LQ
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:50 +0000
Received: by mail-lj1-x244.google.com with SMTP id m23so77345833lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=58L2c6AoPRdtw97mukFPxD0pdo2vv2X7JQRJbq8/vUE=;
 b=iWaSTn6msFtanMS3ltawVoyI/akm3SIk334RyboYedy/nyCR1hjYvRVV5qxkjjz0/H
 HqXXvHotINKZ0MV5HIpyWLnyZtxGL/1hGgmFIEEI7UdhvUfg75bpnhgOJWt5N8zKgrdm
 iOXfl/+wIB5SpvjXO1jqzazjXb4JocnXkPI+PCSJkpOFvrS+MIjtXrKGdq9eXuHzZGgb
 +cj5IV6oh60Itbyl7Tn5K5BhmHxd4/gcjJnW0V2KehXKtOWe4oIYhKGzrUlEdTmqAkt/
 88lPYDyYgqhmfZxkZeRgCPjyUrPVFHA+tyGQMdVbBGoApF+gML1pHYItNM5NHOyvti76
 MsBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=58L2c6AoPRdtw97mukFPxD0pdo2vv2X7JQRJbq8/vUE=;
 b=QghldFNTnoMKo632KJ3mebor1kEfDnmYAzVZdSMDaQqdKt2kidCt3mDAGy6+ATDLoV
 gYfbEQxcbRV6Arjuw4kD+0wSSN8eqkPy+2JT/XM66SI1H4gEn8NcOogJN6cd9iaCJZOD
 su6Gugex8sDA+2pJmnxXD6q7p6o6sCX3PpcAArB39ySpX/rw37a/b5/QSfJSK0rIxZrI
 gxSfMbpOBlgs5wMjg8QmTKTiLPd8xyEzqwB49KPzmfDs7X7iyP2Ml2Yt1FRHiofkvF5Y
 956VdioaEhcKKpFcuYhjKlw+aI04TqlfmGeETK5FVrvntrbZ9+zn0h6KEW4z6OtWO3ts
 ZS3Q==
X-Gm-Message-State: APjAAAVj5ukH9jUfZgLO27S5oeR8PW+/ahvbxvsuaJxUoV0zi4aoxhrF
 GQnygaumycRJm5kH3QWkilI=
X-Google-Smtp-Source: APXvYqwd3qng5VMg9Mb2Vmyn/6Orka9Dj+RSr/HOVzJm2eC00ZYEFloJNhEpBCBt7pNnr0htBnzZ8A==
X-Received: by 2002:a2e:834e:: with SMTP id l14mr30558098ljh.158.1564949866148; 
 Sun, 04 Aug 2019 13:17:46 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:45 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 16/16] drm/panel: simple: use drm_panel infrastructure
Date: Sun,  4 Aug 2019 22:16:37 +0200
Message-Id: <20190804201637.1240-17-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131747_865422_2B346539 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 Allison Randal <allison@lohutok.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Shawn Guo <shawnguo@kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Vincent Abriou <vincent.abriou@st.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use drm_panel infrastrucute:
- drm_panel has guards for calling disable/enable twice
- drm_panel has backlight support

To use the drm_panel infrastructure use the drm_panel_*
variants for prepare/enable/disable/unprepare.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/panel/panel-simple.c | 73 +++++-----------------------
 1 file changed, 11 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index bff7578f84dd..c7eed34f2c9c 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -21,7 +21,6 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
-#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
@@ -98,13 +97,10 @@ struct panel_desc {
 
 struct panel_simple {
 	struct drm_panel base;
-	bool prepared;
-	bool enabled;
 	bool no_hpd;
 
 	const struct panel_desc *desc;
 
-	struct backlight_device *backlight;
 	struct regulator *supply;
 	struct i2c_adapter *ddc;
 
@@ -232,20 +228,9 @@ static int panel_simple_disable(struct drm_panel *panel)
 {
 	struct panel_simple *p = to_panel_simple(panel);
 
-	if (!p->enabled)
-		return 0;
-
-	if (p->backlight) {
-		p->backlight->props.power = FB_BLANK_POWERDOWN;
-		p->backlight->props.state |= BL_CORE_FBBLANK;
-		backlight_update_status(p->backlight);
-	}
-
 	if (p->desc->delay.disable)
 		msleep(p->desc->delay.disable);
 
-	p->enabled = false;
-
 	return 0;
 }
 
@@ -253,9 +238,6 @@ static int panel_simple_unprepare(struct drm_panel *panel)
 {
 	struct panel_simple *p = to_panel_simple(panel);
 
-	if (!p->prepared)
-		return 0;
-
 	gpiod_set_value_cansleep(p->enable_gpio, 0);
 
 	regulator_disable(p->supply);
@@ -263,8 +245,6 @@ static int panel_simple_unprepare(struct drm_panel *panel)
 	if (p->desc->delay.unprepare)
 		msleep(p->desc->delay.unprepare);
 
-	p->prepared = false;
-
 	return 0;
 }
 
@@ -274,9 +254,6 @@ static int panel_simple_prepare(struct drm_panel *panel)
 	unsigned int delay;
 	int err;
 
-	if (p->prepared)
-		return 0;
-
 	err = regulator_enable(p->supply);
 	if (err < 0) {
 		dev_err(panel->dev, "failed to enable supply: %d\n", err);
@@ -291,8 +268,6 @@ static int panel_simple_prepare(struct drm_panel *panel)
 	if (delay)
 		msleep(delay);
 
-	p->prepared = true;
-
 	return 0;
 }
 
@@ -300,20 +275,9 @@ static int panel_simple_enable(struct drm_panel *panel)
 {
 	struct panel_simple *p = to_panel_simple(panel);
 
-	if (p->enabled)
-		return 0;
-
 	if (p->desc->delay.enable)
 		msleep(p->desc->delay.enable);
 
-	if (p->backlight) {
-		p->backlight->props.state &= ~BL_CORE_FBBLANK;
-		p->backlight->props.power = FB_BLANK_UNBLANK;
-		backlight_update_status(p->backlight);
-	}
-
-	p->enabled = true;
-
 	return 0;
 }
 
@@ -413,7 +377,7 @@ static void panel_simple_parse_panel_timing_node(struct device *dev,
 
 static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 {
-	struct device_node *backlight, *ddc;
+	struct device_node *ddc;
 	struct panel_simple *panel;
 	struct display_timing dt;
 	int err;
@@ -422,8 +386,6 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 	if (!panel)
 		return -ENOMEM;
 
-	panel->enabled = false;
-	panel->prepared = false;
 	panel->desc = desc;
 
 	panel->no_hpd = of_property_read_bool(dev->of_node, "no-hpd");
@@ -441,24 +403,13 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
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
@@ -468,6 +419,10 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 	panel->base.dev = dev;
 	panel->base.funcs = &panel_simple_funcs;
 
+	err = drm_panel_of_backlight(&panel->base);
+	if (err)
+		goto free_ddc;
+
 	err = drm_panel_add(&panel->base);
 	if (err < 0)
 		goto free_ddc;
@@ -479,9 +434,6 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 free_ddc:
 	if (panel->ddc)
 		put_device(&panel->ddc->dev);
-free_backlight:
-	if (panel->backlight)
-		put_device(&panel->backlight->dev);
 
 	return err;
 }
@@ -492,15 +444,12 @@ static int panel_simple_remove(struct device *dev)
 
 	drm_panel_remove(&panel->base);
 
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
 
@@ -508,8 +457,8 @@ static void panel_simple_shutdown(struct device *dev)
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
