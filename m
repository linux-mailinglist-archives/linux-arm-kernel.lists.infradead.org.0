Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7207910F08D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pfo3KSbxUss8lNLR/1WI68ZGiINJJFhxhY86prFH83I=; b=syTaRqLn9n0cC1
	ue/kU4l1XkKH8UhwbiKSs51xZKmhyAOYkRI+lGJ1rO35ZMCxHKfj97PfXsKlbHX7p9NMTExRKvCS5
	+PONT0DzyN69+YM71wPAsmdGMf5C3oFz4mTGVJRFrlFxqXUi+bCTAJuJIBlCwr7xoQqYm3cupV7Xr
	wuTsYru7AyFq1FaBpGABd/m8Ad1K83aU+ztXzZ9G4Y6PfE3CpcE4myogRhIPVpijoF183XUpMoERX
	GjQcbO/s1BneaZLJ/HEWHvWLZZHmwoDIj0tXkZfuhGTIanXmdHTxv7089id5C9prfnrn+D2xSMNaV
	PgsLwQzPOsqtmXQ7+OAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrT2-00008L-GK; Mon, 02 Dec 2019 19:34:44 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrRY-0007QQ-Ti; Mon, 02 Dec 2019 19:33:16 +0000
Received: by mail-lf1-x142.google.com with SMTP id y5so777673lfy.7;
 Mon, 02 Dec 2019 11:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pufhdufTBZ4mSzYNhIa1SU1Zolx0dEUNyE9ky7d08jw=;
 b=Xc6+bsYYLAQi0yIiEPOOsVDOPaXWqYmWsAGZ6RV2VEhV9pVuYL3BsbW3SnM25cmwS0
 AsFNImSjUufwoeD5cU+LBWRxqTjiJH101E6dTd3gVzgmMmtK58WMi8tmDd+mVB21AmMC
 26jmrpI4LIUFW0dI+ZsdH8Q1mmDOZStyy22dGfVi5SFBwBXnx+9b+4YGdwabSu5izF+q
 g2z+T9DJKp1MlZMjk0NZ8IU8ALfdq3ChwuVCiDhpkJSFWVd6XkgBm3fIsgaiReytTE46
 +rc+yBbEdFNNpEPaDtJ8Zfjhx9UiBauYue5/xd2TiCqtdq8EX05A4ejtJKNoE5aJJhTM
 /THA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=pufhdufTBZ4mSzYNhIa1SU1Zolx0dEUNyE9ky7d08jw=;
 b=DLdsW0DA7NvXT7VXIJ4UOHvpplHxZe8pZsp9tD0LGbKWU9PRCazh85jvnS4KR6L1zK
 Wa1jRBSUI8ezHdYvNBGMSDH82HbyXZqr9t5Vs1Qeq3wXendynyKEtT37Cx4q58c2pqsl
 DR2+BlYaS3quHTC1ZvHxG7fW0iEPJuJcSETblrkUjGdsV/L96NSzxBWFk0aRfDL7KarV
 X0TemYsznbFxfX8vrQmRC5/APQBMwN6manSEDuEeuNFEjnD7OKsoy9crwj0FuAZUXkH1
 ekYXfh/kf0EV08fYeBk3qazNFtFLHOQrAs3+bo011qIvpXAD4cpHZQd9R27ooM/FOyLG
 Vrbw==
X-Gm-Message-State: APjAAAUD+Xbk+uy18AgBfTc3dIVc828ABN4dELX9DZeFQVeV/Y1yD296
 vXxbeP2wxIKOcLs/BLD64DQ=
X-Google-Smtp-Source: APXvYqzrv6BigKOuGAiecc+JD92dfDaiQ3Shj7lT0vkeRMJRgmrSt0RVk2kjEFu87HKmvnxxHrbwUw==
X-Received: by 2002:ac2:52a5:: with SMTP id r5mr427632lfm.19.1575315190884;
 Mon, 02 Dec 2019 11:33:10 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 g13sm79482lfb.74.2019.12.02.11.33.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 11:33:10 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v1 04/26] drm: get drm_bridge_panel connector via helper
Date: Mon,  2 Dec 2019 20:32:08 +0100
Message-Id: <20191202193230.21310-5-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202193230.21310-1-sam@ravnborg.org>
References: <20191202193230.21310-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_113313_137268_277FC001 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Jagan Teki <jagan@amarulasolutions.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Purism Kernel Team <kernel@puri.sm>,
 Eric Anholt <eric@anholt.net>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The drm_connector created by drm_panel_bridge was accessed
via drm_panel.connector.
Avoid the detour around drm_panel by providing a simple get method.
This avoids direct access to the connector field in drm_panel in
the two users.

Update pl111 and tve200 to use the new helper.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Andrzej Hajda <a.hajda@samsung.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Jernej Skrabec <jernej.skrabec@siol.net>
Cc: Eric Anholt <eric@anholt.net>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/bridge/panel.c      | 16 ++++++++++++++++
 drivers/gpu/drm/pl111/pl111_drv.c   |  2 +-
 drivers/gpu/drm/tve200/tve200_drv.c |  2 +-
 include/drm/drm_bridge.h            |  1 +
 4 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/panel.c b/drivers/gpu/drm/bridge/panel.c
index f4e293e7cf64..c5e27b81588a 100644
--- a/drivers/gpu/drm/bridge/panel.c
+++ b/drivers/gpu/drm/bridge/panel.c
@@ -289,3 +289,19 @@ struct drm_bridge *devm_drm_panel_bridge_add_typed(struct device *dev,
 	return bridge;
 }
 EXPORT_SYMBOL(devm_drm_panel_bridge_add_typed);
+
+/**
+ * drm_panel_bridge_connector - return pointer to connector
+ *
+ * drm_panel_bridge creates the connector.
+ * This function gives external access to the connector.
+ *
+ * Returns: Pointer to drm_conneector
+ */
+struct drm_connector *drm_panel_bridge_connector(struct drm_bridge *bridge)
+{
+	struct panel_bridge * panel_bridge;
+	panel_bridge = drm_bridge_to_panel_bridge(bridge);
+
+	return &panel_bridge->connector;
+}
diff --git a/drivers/gpu/drm/pl111/pl111_drv.c b/drivers/gpu/drm/pl111/pl111_drv.c
index 63dfcda04147..aa8aa8d9e405 100644
--- a/drivers/gpu/drm/pl111/pl111_drv.c
+++ b/drivers/gpu/drm/pl111/pl111_drv.c
@@ -166,7 +166,7 @@ static int pl111_modeset_init(struct drm_device *dev)
 	priv->bridge = bridge;
 	if (panel) {
 		priv->panel = panel;
-		priv->connector = panel->connector;
+		priv->connector = drm_panel_bridge_connector(bridge);
 	}
 
 	ret = pl111_display_init(dev);
diff --git a/drivers/gpu/drm/tve200/tve200_drv.c b/drivers/gpu/drm/tve200/tve200_drv.c
index 954b09c948eb..00ba9e5ce130 100644
--- a/drivers/gpu/drm/tve200/tve200_drv.c
+++ b/drivers/gpu/drm/tve200/tve200_drv.c
@@ -110,7 +110,7 @@ static int tve200_modeset_init(struct drm_device *dev)
 	}
 
 	priv->panel = panel;
-	priv->connector = panel->connector;
+	priv->connector = drm_panel_bridge_connector(bridge);
 	priv->bridge = bridge;
 
 	dev_info(dev->dev, "attached to panel %s\n",
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index c0a2286a81e9..9a4902accfe5 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -438,6 +438,7 @@ struct drm_bridge *devm_drm_panel_bridge_add(struct device *dev,
 struct drm_bridge *devm_drm_panel_bridge_add_typed(struct device *dev,
 						   struct drm_panel *panel,
 						   u32 connector_type);
+struct drm_connector *drm_panel_bridge_connector(struct drm_bridge *bridge);
 #endif
 
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
