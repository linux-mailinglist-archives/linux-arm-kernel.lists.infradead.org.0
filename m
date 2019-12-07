Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081C4115CD6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdL5l3TonNP50Q9MExoQiQD1avM/G+kTLr/EJDH73QQ=; b=R8ETZDYgcV+Gfx
	lzKAFnVo/nXolptF0FkBKs2/MiTBI2JirTZu31Gx9cAkhgcwcZQ2imBX+bCnerSlboUNBVo3PWBe4
	YKXSAyu9go8FSgTAVg5memUj8Vm0nBTf/aJLHPA2QqitSv50pbM6Vy6WykzAkWN7LxLrYyS9OuPSu
	03FDBU4wRJE4hf5rRnsEn0ZDFnZgIRP1SYbq7xlkT8RUnpAodaYqShHchx+X0gxAwIXc4+AlQ3FKS
	kaZKRvgDA7evlkfQG905rIRsrGlxpM8YYZrp31INnhmQeNo39yhpGdrO6wRu5RFt0E75RJ5BqU9Ek
	VcTdg1DWUJfv6YKAmXjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idaij-0007zv-Bw; Sat, 07 Dec 2019 14:06:05 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idagx-0005WC-MR; Sat, 07 Dec 2019 14:04:17 +0000
Received: by mail-lj1-x242.google.com with SMTP id z17so10642414ljk.13;
 Sat, 07 Dec 2019 06:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5vCTCmVJSztZsLx2nB6Og8LCjqNM0f0O19o9JcKr1ls=;
 b=ONroKxMumL+T3hvdkZI9e/yngpNuwwNxZSNxYiSryJEsMLtAe08ansnBJYorWhKfZO
 hVxGTK2d5XzQTs8G3iaYWtW4eIP7t++joPvMvZ9rSfhLyN+JT1RLt4tHwxWfEyZyoH9j
 QXs8wv0edFhdDrvcFEx22LoEeo6VKaIKfwlNsuEuFVMvRLRADKza27bYBGswsFjyb1z2
 OlztirgxOS/7wTCauSPPhVgG9IzKDrijbHgtAk3sZzkcM0BKmxNUnTec0/Tntd9plCv7
 1r6rCHD4mCSj8KACmxzLunlleNO7X71r0qZBSW7VPzO+aElZICNRbynzkYzyzCsNrMO+
 EXrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=5vCTCmVJSztZsLx2nB6Og8LCjqNM0f0O19o9JcKr1ls=;
 b=sDQpDcc/XPcbiF33MlueBvwLTXdTH1JiK1EspjtBV+5ed8gu3K0+8sqxVeEWyb13He
 I0aJmpw9Hv6wnrQQ9lD6J1B8ZxpeboGwf+1qvVIFzAVPZw4GvUKiYIYz9jneC1lRpIa0
 PV0wme+Q4WwnwsE7wcja799efjmCrAh5CsfTptxOTu2OD3usO0xiWh2xTo+imuUXJ+WO
 PwIu4mnCWPLulJBOEvNx12M1PXfVvCDcRp7sVPgA59dROqVRenCZg2Ds+h7G7UGbWKvo
 VEWnBg5Qw3ntyq/OQQYlpfk5TNiPLunll3fQydypMDwpYNT7V1YVM+C/FAzVB/5auRFp
 qmCA==
X-Gm-Message-State: APjAAAVPefbVgLuNYSYbLsD9I8F/W4N33G9lGi5KapXtG0m9SXqeToxQ
 SZMf3kDOsrVPTPiJ1HHB+3E=
X-Google-Smtp-Source: APXvYqw1rMaDJY7zRGC5Q0+tQaHvY5zBV064KItUGg2cwityxaKTBr2l0hHLdZAMNVa/CibXuS1pdw==
X-Received: by 2002:a2e:9899:: with SMTP id b25mr11320230ljj.70.1575727453898; 
 Sat, 07 Dec 2019 06:04:13 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:13 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 03/25] drm/panel: simple: use drm_panel backlight support
Date: Sat,  7 Dec 2019 15:03:31 +0100
Message-Id: <20191207140353.23967-4-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060415_765769_94998FEF 
X-CRM114-Status: GOOD (  13.42  )
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

Use drm_panel infrastructure for backlight.
Replace direct calls with drm_panel_*() calls
to utilize the drm_panel support.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
