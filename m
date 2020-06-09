Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B791F40BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 18:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVz8P9Yke9OC8ZXkPGtxvlnoEnX3bEXLbNuJyb93irI=; b=s6giMpG41SY/D9
	h5sO4sQbv9d5gMINNbCaceqoVsy4ZwuwJ+0zwlvLOeznL27OH7GXyW64nNIp+iK2z29iUYn5GOkvx
	T18OgqmquQrc1rEvil0BL0FRV6Q5mEZ8OgyJwCE7076jGOiIB1B8v1ImaOv+NEROH/cx45k8H+3Xb
	2PZRFuEVKpYkwDxsM9gZGvmm/793uaHIX5v50mpAx4vz3tXwQfFzJlGlg95X4qot3SJgkolktSQEU
	SmqpVelbiZkKbhCJoUfNDtwBwHuWWcOoE4SvtEKYXnmUNOb6DUY+v0nNWUqFS/Ba2SOYM2hFOSX56
	WrcoR8DG9YTQpM7eDtGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jih5S-00017P-Cb; Tue, 09 Jun 2020 16:26:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jih4I-0000NR-Cg; Tue, 09 Jun 2020 16:25:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 5BAE72A3C0B
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v9 04/11] drm: bridge: dw_mipi_dsi: remove bind/unbind API
Date: Tue,  9 Jun 2020 19:26:53 +0300
Message-Id: <20200609162700.953260-5-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609162700.953260-1-adrian.ratiu@collabora.com>
References: <20200609162700.953260-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_092542_560085_73D5BB65 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Philippe CORNU <philippe.cornu@st.com>,
 Yannick FERTRE <yannick.fertre@st.com>, Andrzej Hajda <a.hajda@samsung.com>,
 linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DW mipi-dsi bind/unbind API was only used to attach the bridge to
the encoder in the Rockchip driver, but with the addition of i.MX6 it
gets more complicated because the i.MX6 part of the bridge is another
bridge in itself which needs to daisy chain to the dw-mipi-dsi core.

So, instead of extending this API to allow daisy-chaining bridges and
risk having trouble with multiple connectors added by various bridges
just delete it and let the DW core bridge be accesed by SoC-specific
parts via the of_drm_find_bridge() API.

This just fixes the Rockchip driver for the bind() deprecation, it
doesn't convert it to a proper bridge daisy-chain with simple encoder
and bridge .attach call-backs, that refactoring work should be done
separately (and the i.MX6 driver can be used as reference).

Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
New in v9.
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 22 -------------------
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  7 +++---
 2 files changed, 3 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 16fd87055e7b7..70df0578cbe7b 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -1453,28 +1453,6 @@ void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi)
 }
 EXPORT_SYMBOL_GPL(dw_mipi_dsi_remove);
 
-/*
- * Bind/unbind API, used from platforms based on the component framework.
- */
-int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi, struct drm_encoder *encoder)
-{
-	int ret;
-
-	ret = drm_bridge_attach(encoder, &dsi->bridge, NULL, 0);
-	if (ret) {
-		DRM_ERROR("Failed to initialize bridge with drm\n");
-		return ret;
-	}
-
-	return ret;
-}
-EXPORT_SYMBOL_GPL(dw_mipi_dsi_bind);
-
-void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi)
-{
-}
-EXPORT_SYMBOL_GPL(dw_mipi_dsi_unbind);
-
 MODULE_AUTHOR("Chris Zhong <zyw@rock-chips.com>");
 MODULE_AUTHOR("Philippe Cornu <philippe.cornu@st.com>");
 MODULE_DESCRIPTION("DW MIPI DSI host controller driver");
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 3feff0c45b3f7..86f87c7ea03cf 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -876,6 +876,7 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 {
 	struct dw_mipi_dsi_rockchip *dsi = dev_get_drvdata(dev);
 	struct drm_device *drm_dev = data;
+	struct drm_bridge *dw_bridge = of_drm_find_bridge(dev->of_node);
 	struct device *second;
 	bool master1, master2;
 	int ret;
@@ -929,9 +930,9 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 		return ret;
 	}
 
-	ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder);
+	ret = drm_bridge_attach(&dsi->encoder, dw_bridge, NULL, 0);
 	if (ret) {
-		DRM_DEV_ERROR(dev, "Failed to bind: %d\n", ret);
+		DRM_DEV_ERROR(dev, "Failed to attach DW DSI bridge: %d\n", ret);
 		return ret;
 	}
 
@@ -947,8 +948,6 @@ static void dw_mipi_dsi_rockchip_unbind(struct device *dev,
 	if (dsi->is_slave)
 		return;
 
-	dw_mipi_dsi_unbind(dsi->dmd);
-
 	clk_disable_unprepare(dsi->pllref_clk);
 }
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
