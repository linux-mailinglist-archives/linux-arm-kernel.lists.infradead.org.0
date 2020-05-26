Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C1C1AE085
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbRU7d5s1EkilWtBHaqrP9wz89brhNRNAmhITZCphHk=; b=nHVsPYjEqNrUkD
	P2panf0zo9rMMwFwbOsj/G+h4FrKxZPCdsoJMqVL+mWFneyTNuvh2nIJMclkww7zs/dIpAB2DjiUM
	uLXjzgnT5+GCNjY0E+RR2TvIQOkNfcC9KuwhFCJjwCEpvAR24usXVv1SlheoPJlMvNx3oUnVqlDfA
	XPKdPBLjxvDIIflZpPaX+ao6uMdDPGKYmDrMYHjgqkruOpxOA+8jSgNVcG/WwUusQbNCoecsIiO+I
	sW31RSjuoEsv44WYI4vc7GgqmtHYsevETSrslSPBtqLnyh1rkMc8enEuGL8He8jIHoSneBey/FvbR
	dkiiOL6fKuaj2qTI9mqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSar-00017q-5t; Fri, 17 Apr 2020 15:07:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSZa-00005X-5F; Fri, 17 Apr 2020 15:06:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 2A2A02A2AC4
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org,
	Collabora Kernel ML <kernel@collabora.com>
Subject: [PATCH v3 4/7] drm/mediatek: mtk_dsi: Convert to bridge driver
Date: Fri, 17 Apr 2020 17:06:11 +0200
Message-Id: <20200417150614.2631786-5-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200417150614.2631786-1-enric.balletbo@collabora.com>
References: <20200417150614.2631786-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_080630_485086_3B6177DD 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, Daniel Vetter <daniel@ffwll.ch>,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert mtk_dsi to a bridge driver with built-in encoder support for
compatibility with existing component drivers.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

Changes in v3:
- Add the bridge.type. (Laurent Pinchart)

Changes in v2: None

 drivers/gpu/drm/mediatek/mtk_dsi.c | 93 ++++++++++++++++++++++--------
 1 file changed, 69 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 37b8d7ffd835..869ae0a2e9f8 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -180,6 +180,7 @@ struct mtk_dsi {
 	struct device *dev;
 	struct mipi_dsi_host host;
 	struct drm_encoder encoder;
+	struct drm_bridge bridge;
 	struct drm_connector conn;
 	struct drm_panel *panel;
 	struct drm_bridge *next_bridge;
@@ -205,9 +206,9 @@ struct mtk_dsi {
 	const struct mtk_dsi_driver_data *driver_data;
 };
 
-static inline struct mtk_dsi *encoder_to_dsi(struct drm_encoder *e)
+static inline struct mtk_dsi *bridge_to_dsi(struct drm_bridge *b)
 {
-	return container_of(e, struct mtk_dsi, encoder);
+	return container_of(b, struct mtk_dsi, bridge);
 }
 
 static inline struct mtk_dsi *connector_to_dsi(struct drm_connector *c)
@@ -796,32 +797,43 @@ static const struct drm_encoder_funcs mtk_dsi_encoder_funcs = {
 	.destroy = mtk_dsi_encoder_destroy,
 };
 
-static bool mtk_dsi_encoder_mode_fixup(struct drm_encoder *encoder,
-				       const struct drm_display_mode *mode,
-				       struct drm_display_mode *adjusted_mode)
+static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi);
+static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi);
+
+static int mtk_dsi_bridge_attach(struct drm_bridge *bridge,
+				 enum drm_bridge_attach_flags flags)
+{
+	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
+
+	return mtk_dsi_create_conn_enc(bridge->dev, dsi);
+}
+
+static void mtk_dsi_bridge_detach(struct drm_bridge *bridge)
 {
-	return true;
+	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
+
+	mtk_dsi_destroy_conn_enc(dsi);
 }
 
-static void mtk_dsi_encoder_mode_set(struct drm_encoder *encoder,
-				     struct drm_display_mode *mode,
-				     struct drm_display_mode *adjusted)
+static void mtk_dsi_bridge_mode_set(struct drm_bridge *bridge,
+				    const struct drm_display_mode *mode,
+				    const struct drm_display_mode *adjusted)
 {
-	struct mtk_dsi *dsi = encoder_to_dsi(encoder);
+	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
 
 	drm_display_mode_to_videomode(adjusted, &dsi->vm);
 }
 
-static void mtk_dsi_encoder_disable(struct drm_encoder *encoder)
+static void mtk_dsi_bridge_disable(struct drm_bridge *bridge)
 {
-	struct mtk_dsi *dsi = encoder_to_dsi(encoder);
+	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
 
 	mtk_output_dsi_disable(dsi);
 }
 
-static void mtk_dsi_encoder_enable(struct drm_encoder *encoder)
+static void mtk_dsi_bridge_enable(struct drm_bridge *bridge)
 {
-	struct mtk_dsi *dsi = encoder_to_dsi(encoder);
+	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
 
 	mtk_output_dsi_enable(dsi);
 }
@@ -833,11 +845,12 @@ static int mtk_dsi_connector_get_modes(struct drm_connector *connector)
 	return drm_panel_get_modes(dsi->panel, connector);
 }
 
-static const struct drm_encoder_helper_funcs mtk_dsi_encoder_helper_funcs = {
-	.mode_fixup = mtk_dsi_encoder_mode_fixup,
-	.mode_set = mtk_dsi_encoder_mode_set,
-	.disable = mtk_dsi_encoder_disable,
-	.enable = mtk_dsi_encoder_enable,
+static const struct drm_bridge_funcs mtk_dsi_bridge_funcs = {
+	.attach = mtk_dsi_bridge_attach,
+	.detach = mtk_dsi_bridge_detach,
+	.disable = mtk_dsi_bridge_disable,
+	.enable = mtk_dsi_bridge_enable,
+	.mode_set = mtk_dsi_bridge_mode_set,
 };
 
 static const struct drm_connector_funcs mtk_dsi_connector_funcs = {
@@ -1123,6 +1136,34 @@ static const struct mipi_dsi_host_ops mtk_dsi_ops = {
 	.transfer = mtk_dsi_host_transfer,
 };
 
+static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
+{
+	int ret;
+
+	ret = drm_encoder_init(drm, &dsi->encoder, &mtk_dsi_encoder_funcs,
+			       DRM_MODE_ENCODER_DSI, NULL);
+	if (ret) {
+		DRM_ERROR("Failed to encoder init to drm\n");
+		return ret;
+	}
+
+	/*
+	 * Currently display data paths are statically assigned to a crtc each.
+	 * crtc 0 is OVL0 -> COLOR0 -> AAL -> OD -> RDMA0 -> UFOE -> DSI0
+	 */
+	dsi->encoder.possible_crtcs = 1;
+
+	ret = drm_bridge_attach(&dsi->encoder, &dsi->bridge, NULL, 0);
+	if (ret)
+		goto err_cleanup_encoder;
+
+	return 0;
+
+err_cleanup_encoder:
+	drm_encoder_cleanup(&dsi->encoder);
+	return ret;
+}
+
 static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
 {
 	int ret;
@@ -1136,11 +1177,9 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
 		return ret;
 	}
 
-	ret = mtk_dsi_create_conn_enc(drm, dsi);
-	if (ret) {
-		DRM_ERROR("Encoder create failed with %d\n", ret);
+	ret = mtk_dsi_encoder_init(drm, dsi);
+	if (ret)
 		goto err_unregister;
-	}
 
 	return 0;
 
@@ -1155,7 +1194,6 @@ static void mtk_dsi_unbind(struct device *dev, struct device *master,
 	struct drm_device *drm = data;
 	struct mtk_dsi *dsi = dev_get_drvdata(dev);
 
-	mtk_dsi_destroy_conn_enc(dsi);
 	mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
 }
 
@@ -1265,6 +1303,12 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, dsi);
 
+	dsi->bridge.funcs = &mtk_dsi_bridge_funcs;
+	dsi->bridge.of_node = dev->of_node;
+	dsi->bridge.type = DRM_MODE_CONNECTOR_DSI;
+
+	drm_bridge_add(&dsi->bridge);
+
 	ret = component_add(&pdev->dev, &mtk_dsi_component_ops);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to add component: %d\n", ret);
@@ -1283,6 +1327,7 @@ static int mtk_dsi_remove(struct platform_device *pdev)
 	struct mtk_dsi *dsi = platform_get_drvdata(pdev);
 
 	mtk_output_dsi_disable(dsi);
+	drm_bridge_remove(&dsi->bridge);
 	component_del(&pdev->dev, &mtk_dsi_component_ops);
 	mipi_dsi_host_unregister(&dsi->host);
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
