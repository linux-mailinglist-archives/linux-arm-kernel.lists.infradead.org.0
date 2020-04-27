Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA97F1B99E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=soEVZqEn27iTXz5pFvSU4m3jCSxSNE/AikrROI7UjAM=; b=Pnc5khEmY1WsH1
	B90yp1pEWuGbenkghY5hf3UaiWFVA67uYoc/mzZZLSRgpmEQEkrkgvDz3+/xS0a9UhupY/ASzIgRB
	PXUH7e+vGyJpNZdspjLGSTp6Ve7v22s2S8hKq8cjlaYdKY3AfdwCsd5uxHia7L3x5Lo9z8zYNmuYv
	0I9Hh6TUFToXSueRzXGwPzhr4MdT/NKgPFrEl2DxiYT1fNkpGoYZp/H0ZbvP+evVvyu7DrZliBQwB
	+wUI5OIDVVprtQQ91EWdeh8o5TGFDMT/1b746tk+PadPZUZNBcJO5K5nJ776Yq931ssPmLebMiQUX
	7Z/adqYStV6tpwexfLkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyzt-0003Ct-EK; Mon, 27 Apr 2020 08:20:13 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyyk-0002ag-Oe; Mon, 27 Apr 2020 08:19:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 088DA2A0AD7
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [PATCH v8 04/10] drm: bridge: dw_mipi_dsi: allow bridge daisy chaining
Date: Mon, 27 Apr 2020 11:19:46 +0300
Message-Id: <20200427081952.3536741-5-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_011902_935639_56782880 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Up until now the assumption was that the synopsis dsi bridge will
directly connect to an encoder provided by the platform driver, but
the current practice for drivers is to leave the encoder empty via
the simple encoder API and add their logic to their own drm_bridge.

Thus we need an ablility to connect the DSI bridge to another bridge
provided by the platform driver, so we extend the dw_mipi_dsi bind()
API with a new "previous bridge" arg instead of just hardcoding NULL.

Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
New in v8.
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c   | 6 ++++--
 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 2 +-
 include/drm/bridge/dw_mipi_dsi.h                | 5 ++++-
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 16fd87055e7b7..140ff40fa1b62 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -1456,11 +1456,13 @@ EXPORT_SYMBOL_GPL(dw_mipi_dsi_remove);
 /*
  * Bind/unbind API, used from platforms based on the component framework.
  */
-int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi, struct drm_encoder *encoder)
+int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi,
+		     struct drm_encoder *encoder,
+		     struct drm_bridge *prev_bridge)
 {
 	int ret;
 
-	ret = drm_bridge_attach(encoder, &dsi->bridge, NULL, 0);
+	ret = drm_bridge_attach(encoder, &dsi->bridge, prev_bridge, 0);
 	if (ret) {
 		DRM_ERROR("Failed to initialize bridge with drm\n");
 		return ret;
diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 3feff0c45b3f7..83ef43be78135 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -929,7 +929,7 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 		return ret;
 	}
 
-	ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder);
+	ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder, NULL);
 	if (ret) {
 		DRM_DEV_ERROR(dev, "Failed to bind: %d\n", ret);
 		return ret;
diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
index b0e390b3288e8..699b3531f5b36 100644
--- a/include/drm/bridge/dw_mipi_dsi.h
+++ b/include/drm/bridge/dw_mipi_dsi.h
@@ -14,6 +14,7 @@
 #include <drm/drm_modes.h>
 
 struct drm_display_mode;
+struct drm_bridge;
 struct drm_encoder;
 struct dw_mipi_dsi;
 struct mipi_dsi_device;
@@ -62,7 +63,9 @@ struct dw_mipi_dsi *dw_mipi_dsi_probe(struct platform_device *pdev,
 				      const struct dw_mipi_dsi_plat_data
 				      *plat_data);
 void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi);
-int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi, struct drm_encoder *encoder);
+int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi,
+		     struct drm_encoder *encoder,
+		     struct drm_bridge *prev_bridge);
 void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi);
 void dw_mipi_dsi_set_slave(struct dw_mipi_dsi *dsi, struct dw_mipi_dsi *slave);
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
