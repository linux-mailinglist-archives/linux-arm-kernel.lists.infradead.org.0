Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8E82962F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XzKbkg9dZyvymM2k5JCnvyIm9oJn4Dc56t2YBzYLuLk=; b=RnyhDP0tfY0luA
	I1BYpxrXglIK2ONDO7GC3kD6XrbamOeA+CppgJmozj/ienyxG6xjl5K+/80DS6vVwONQFeejEOiXl
	8cT5v9Eh57jnVMA0t2KTjWz4BRUFC3sX17hCFhteg4qO5wjth+bDVSYAGATn7/Gw4QScruf8UD43W
	zd6xgu7+RRvE0xbpeagYNoLjVtornTw2j716S7r8ZZ0usuc8hLEfzYirod5OuZ7AVE2h+WeXRKHc6
	/s1DGQUTqzt7t86c2yAkkWNY8nKVsyHPCJTsrm+fEknWZ88XACxX3opo+q80uBSc8MjBLgsOdY/Qn
	hDnOXHQSLZb/N1HF5d4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7fq-0001xq-A9; Fri, 24 May 2019 10:43:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7fh-0001wy-AQ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:43:34 +0000
Received: by mail-pg1-x544.google.com with SMTP id f25so4850275pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 03:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8vuYuFD/5hunekM87lEsGh/8eCfgNQ+vP68Nh+1lg0I=;
 b=EXBKWqHzxchoyXavJy+DUUjq9erk94e758eJBKaG25cITWW0Xl8CUyFxgzvFO0DMkv
 BxSmZYGJtPSa+kZvcfnj0NdXKDSOk3W19dZTkZwN2O0FAUq8LuiCl0Gh4JQ7F3zrq0BG
 iI/9LpGH7fs1cG8BSzxFwQPyCLkVyWmhSpfhQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8vuYuFD/5hunekM87lEsGh/8eCfgNQ+vP68Nh+1lg0I=;
 b=IE5Tz3AFd+ltg9wVqRgnBypt+j7E7NQptzta6toxtzytvmUjXciG5otqKjZmQ/J+2a
 LdnMOTq5NaExfq2US0tbahfyt1zo+CNTzaU0ROufHXW3t4+VCgOpO+6ouasuL7+xMdt2
 7pwgdM+8dLLfG7D46sRXXcaMDvSIbNUkOfqP1XfLO2I1ApmkxGY4QuvNnWdETGDk1LN6
 TBjivT1AslLpBbAhHXv9KspB9PuoVppcBvODy6PPFPUGUgHkUs25/oJJl5zola685+3C
 yhaeBzxqje4dWElxq2eQiCKlQa50YqRei/eAwgCEyM89BXLH+0UO/lKt+R9Vy727CT6J
 tcfg==
X-Gm-Message-State: APjAAAXSk5uc1kq6PKcjUNFAE9Es4Co9Rkyq2gnBEv0X/dcKIvvNHi9f
 5bcYB85MLTZT0BlMDhB/gKCLQA==
X-Google-Smtp-Source: APXvYqwycicrVwk5ndUffCLYURVgKz0vy41pPuW9ahWqj3rjBAvuDI9sZaRa1UaC/4hduJFpzK7ccg==
X-Received: by 2002:aa7:842f:: with SMTP id
 q15mr112526398pfn.161.1558694612646; 
 Fri, 24 May 2019 03:43:32 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.60])
 by smtp.gmail.com with ESMTPSA id h11sm2303416pfn.170.2019.05.24.03.43.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 03:43:32 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 3/6] drm/sun4i: dsi: Add bridge support
Date: Fri, 24 May 2019 16:13:14 +0530
Message-Id: <20190524104317.20287-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_034333_356490_E9B4F58E 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some display panels would come up with a non-DSI output which
can have an option to connect DSI interface by means of bridge
converter.

This DSI to non-DSI bridge converter would require a bridge
driver that would communicate the DSI controller for bridge
functionalities.

So, add support for bridge functionalities in Allwinner DSI
controller.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 60 +++++++++++++++++++-------
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  1 +
 2 files changed, 45 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index ae2fe31b05b1..2b4b1355a88f 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -775,6 +775,9 @@ static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder)
 	if (!IS_ERR(dsi->panel))
 		drm_panel_prepare(dsi->panel);
 
+	if (!IS_ERR(dsi->bridge))
+		drm_bridge_pre_enable(dsi->bridge);
+
 	/*
 	 * FIXME: This should be moved after the switch to HS mode.
 	 *
@@ -790,6 +793,9 @@ static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder)
 	if (!IS_ERR(dsi->panel))
 		drm_panel_enable(dsi->panel);
 
+	if (!IS_ERR(dsi->bridge))
+		drm_bridge_enable(dsi->bridge);
+
 	sun6i_dsi_start(dsi, DSI_START_HSC);
 
 	udelay(1000);
@@ -806,6 +812,9 @@ static void sun6i_dsi_encoder_disable(struct drm_encoder *encoder)
 	if (!IS_ERR(dsi->panel)) {
 		drm_panel_disable(dsi->panel);
 		drm_panel_unprepare(dsi->panel);
+	} else if (!IS_ERR(dsi->bridge)) {
+		drm_bridge_disable(dsi->bridge);
+		drm_bridge_post_disable(dsi->bridge);
 	}
 
 	phy_power_off(dsi->dphy);
@@ -969,11 +978,12 @@ static int sun6i_dsi_attach(struct mipi_dsi_host *host,
 
 	dsi->device = device;
 	ret = drm_of_find_panel_or_bridge(host->dev->of_node, 0, 0,
-					  &dsi->panel, NULL);
+					  &dsi->panel, &dsi->bridge);
 	if (ret)
 		return ret;
 
-	dev_info(host->dev, "Attached device %s\n", device->name);
+	dev_info(host->dev, "Attached %s %s\n",
+		 dsi->bridge ? "bridge" : "panel", device->name);
 
 	return 0;
 }
@@ -983,7 +993,10 @@ static int sun6i_dsi_detach(struct mipi_dsi_host *host,
 {
 	struct sun6i_dsi *dsi = host_to_sun6i_dsi(host);
 
-	dsi->panel = NULL;
+	if (dsi->panel)
+		dsi->panel = NULL;
+	else if (dsi->bridge)
+		dsi->bridge = NULL;
 	dsi->device = NULL;
 
 	return 0;
@@ -1055,8 +1068,10 @@ static int sun6i_dsi_bind(struct device *dev, struct device *master,
 	struct sun4i_tcon *tcon0 = sun4i_get_tcon0(drm);
 	int ret;
 
-	if (!dsi->panel)
+	if (!(dsi->panel || dsi->bridge)) {
+		dev_info(drm->dev, "No panel or bridge found... DSI output disabled\n");
 		return -EPROBE_DEFER;
+	}
 
 	dsi->drv = drv;
 
@@ -1078,19 +1093,29 @@ static int sun6i_dsi_bind(struct device *dev, struct device *master,
 	}
 	dsi->encoder.possible_crtcs = BIT(0);
 
-	drm_connector_helper_add(&dsi->connector,
-				 &sun6i_dsi_connector_helper_funcs);
-	ret = drm_connector_init(drm, &dsi->connector,
-				 &sun6i_dsi_connector_funcs,
-				 DRM_MODE_CONNECTOR_DSI);
-	if (ret) {
-		dev_err(dsi->dev,
-			"Couldn't initialise the DSI connector\n");
-		goto err_cleanup_connector;
+	if (dsi->panel) {
+		drm_connector_helper_add(&dsi->connector,
+					 &sun6i_dsi_connector_helper_funcs);
+		ret = drm_connector_init(drm, &dsi->connector,
+					 &sun6i_dsi_connector_funcs,
+					 DRM_MODE_CONNECTOR_DSI);
+		if (ret) {
+			dev_err(dsi->dev,
+				"Couldn't initialise the DSI connector\n");
+			goto err_cleanup_connector;
+		}
+
+		drm_connector_attach_encoder(&dsi->connector, &dsi->encoder);
+		drm_panel_attach(dsi->panel, &dsi->connector);
 	}
 
-	drm_connector_attach_encoder(&dsi->connector, &dsi->encoder);
-	drm_panel_attach(dsi->panel, &dsi->connector);
+	if (dsi->bridge) {
+		ret = drm_bridge_attach(&dsi->encoder, dsi->bridge, NULL);
+		if (ret) {
+			dev_err(dsi->dev, "Couldn't attach the DSI bridge\n");
+			goto err_cleanup_connector;
+		}
+	}
 
 	return 0;
 
@@ -1104,7 +1129,10 @@ static void sun6i_dsi_unbind(struct device *dev, struct device *master,
 {
 	struct sun6i_dsi *dsi = dev_get_drvdata(dev);
 
-	drm_panel_detach(dsi->panel);
+	if (dsi->panel)
+		drm_panel_detach(dsi->panel);
+	else if (dsi->bridge->funcs->detach)
+		dsi->bridge->funcs->detach(dsi->bridge);
 }
 
 static const struct component_ops sun6i_dsi_ops = {
diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
index c570f2b3868f..c76b71259d2e 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
@@ -32,6 +32,7 @@ struct sun6i_dsi {
 	struct sun4i_tcon	*tcon;
 	struct mipi_dsi_device	*device;
 	struct drm_panel	*panel;
+	struct drm_bridge	*bridge;
 };
 
 static inline struct sun6i_dsi *host_to_sun6i_dsi(struct mipi_dsi_host *host)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
