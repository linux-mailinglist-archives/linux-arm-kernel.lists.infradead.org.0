Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212A3115CD8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:06:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZGjv9JiHMIGYnxVLLuQN5oV2JuKdelrym+HTe5sYY8=; b=Emw7YhbNdhBPu/
	OnzI7aFYg2qrXRAl418B0099RB8D49wPWMLucDHi82qiS8MRUOiQ6TBxW/NRImF/l7yg3HTEUKCWw
	Kbt4I5a/TT2pAAshnlrApfwI1xF7xHnh6U0dsz1uZaI3nmZxfVzQ/wl9JcUjdRTye3oXyEkhJUL6+
	pIeYu/80VX1i5vweyesZ1fioKFkS5ruMIRek0OF2RJGXQaFMHMzNpFAT4pUFeBHUwl8f/UoKgC6un
	jNBBcUtMH1Y/uhW8oBlTgzofroIErb0dUs2mX6Zj4cDhiEDINuPWJcj5QRNARZaUN19iAIh7CcyCW
	4QmAw/qs4kLKNhh6OH0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idaj1-0008Ou-Ep; Sat, 07 Dec 2019 14:06:23 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idagz-0005Xu-8n; Sat, 07 Dec 2019 14:04:19 +0000
Received: by mail-lj1-x244.google.com with SMTP id m6so10742415ljc.1;
 Sat, 07 Dec 2019 06:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gDEv0RS9u1sLbcP7aKD5NbZuatHNrJrYBV8mFE5d35g=;
 b=kStv8JKNews1ASDw7z7ddDiOlhdDEBCUGAHaTsm2tqKG4s4k0usHJl0qikxyLF9l9i
 b+pAsI3DhJaJ4XzVpar+XAqSpOTNRuZt5OzO/ynvbcmOcibfSycfMibvGO8KC0Racviq
 WDgEemyCuEarftv/+KvkNawtDborBcOYRqnGjIv5g1chot9s2DDqXvAJ/i8SLatpn3gu
 /befl/LXxlDAYDEaCocPaBINxBC+2eQ9QuiKj0lqbRFuYFoMycJZb4CpUXGuURBnuJ8D
 Mp0RLVdvzCvOakf/ZYceQr9QM6xIbMwxYbXvZbnsuwdSKukz28Dn1/CgjJC0NItO/h1P
 +fjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=gDEv0RS9u1sLbcP7aKD5NbZuatHNrJrYBV8mFE5d35g=;
 b=oNfC09f5WbMU4c9PV8THZJBCdYQXAM5xuvlaHnAgZrvb8xWFV3WJsX0LNRDNtGM4E7
 ADooi5Mb4BHWtZ5ak0HGPENhbYKnEe+0qppEB0w+fuHrY/gD/UtLuDfjK5dzs+7CZmdq
 9DySJyToYQh6p6KDfYb3T1KMsAd49nxqQ0IJUFSvT/SEVnk8TKN2FJufLTot0ZQFGm4F
 /UuRcHRkIL3/oaaFsnU7VyR1ODmTJaQ1OOU0R09dNJsCxSK2M9dUIIT5O6ZwsaQu5Zt1
 aEAfm3ihdHOAsL/dAB33H6jz5GqpXRUnVzLSkhWtjT76vDi6Py+vN9rsA/ri0xiiUGoC
 QolQ==
X-Gm-Message-State: APjAAAUeXeR+Aop5CP6vJalrx3QY1ZGMWYZ2tD3KBaj6L3PBCCY0hTMp
 t/GUI5HuaRSVbl3nlPUhM+A=
X-Google-Smtp-Source: APXvYqzZ+jdskQadQ/ngsbumGhCcPqqfliYALT5+d2ISdCnkwPth2IL1jzPJ+7K6rUHJWF2qX8vUWw==
X-Received: by 2002:a05:651c:1110:: with SMTP id
 d16mr11870528ljo.86.1575727455771; 
 Sat, 07 Dec 2019 06:04:15 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:15 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 04/25] drm: get drm_bridge_panel connector via helper
Date: Sat,  7 Dec 2019 15:03:32 +0100
Message-Id: <20191207140353.23967-5-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060417_461673_13222915 
X-CRM114-Status: GOOD (  13.38  )
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
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
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

The change is done in preparation for removal of drm_panel.connector.

Update pl111 and tve200 to use the new helper.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
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
 drivers/gpu/drm/bridge/panel.c      | 17 +++++++++++++++++
 drivers/gpu/drm/pl111/pl111_drv.c   |  2 +-
 drivers/gpu/drm/tve200/tve200_drv.c |  2 +-
 include/drm/drm_bridge.h            |  1 +
 4 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/panel.c b/drivers/gpu/drm/bridge/panel.c
index f4e293e7cf64..554da47f6d62 100644
--- a/drivers/gpu/drm/bridge/panel.c
+++ b/drivers/gpu/drm/bridge/panel.c
@@ -289,3 +289,20 @@ struct drm_bridge *devm_drm_panel_bridge_add_typed(struct device *dev,
 	return bridge;
 }
 EXPORT_SYMBOL(devm_drm_panel_bridge_add_typed);
+
+/**
+ * drm_panel_bridge_connector - return the connector for the panel bridge
+ *
+ * drm_panel_bridge creates the connector.
+ * This function gives external access to the connector.
+ *
+ * Returns: Pointer to drm_connector
+ */
+struct drm_connector *drm_panel_bridge_connector(struct drm_bridge *bridge)
+{
+	struct panel_bridge *panel_bridge;
+
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
