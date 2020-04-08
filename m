Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4221A2ADF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 23:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hS4DCvGLKEvmGIv8lgdRa4J2IgVkYkhMpXgoVl7tj7o=; b=d/HZT9b94jEa+m
	lj87vn2jS5cmb0iycEl6SXSx0a482MgH+cXGf3wRJziZKGy/uiHf/Q9J5MuEhYmHdQDVuX72y+F4E
	/AuZxTnJdroKWnNsQqQjs506AGTlLv0xz2sK3fJhufVkQktwhKZD48G8zjC308wGQ40Wv/7fhNx29
	UYzsUpiKRyNMxnEOFz0StJY5CTbcwnqdfjgp6YaRbl3K5U56qWpRVEnK4x/qyBguAvx1Twvj3+F6T
	jlvKEqSlE/uihKm7vHE0RiCopHc6UL/r5e73HAnz3KiFBN3twdU6AJHHz5L4o9ar493iyj6pP9q2J
	ppfmpHqQf6MYYOleFQIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMI0J-0000TS-NZ; Wed, 08 Apr 2020 21:12:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMHz1-0007v2-SR; Wed, 08 Apr 2020 21:11:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 4B3A629747E
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 6/7] drm/mediatek: mtk_dsi: Use the drm_panel_bridge API
Date: Wed,  8 Apr 2020 23:11:19 +0200
Message-Id: <20200408211120.1407512-7-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408211120.1407512-1-enric.balletbo@collabora.com>
References: <20200408211120.1407512-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_141140_180202_13C34963 
X-CRM114-Status: GOOD (  15.28  )
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
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the manual panel handling code by a drm_panel_bridge. This
simplifies the driver and allows all components in the display pipeline
to be treated as bridges, paving the way to generic connector handling.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/mediatek/mtk_dsi.c | 178 ++++-------------------------
 1 file changed, 20 insertions(+), 158 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 48361c1e9f34..f9706f306275 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -182,8 +182,7 @@ struct mtk_dsi {
 	struct mipi_dsi_host host;
 	struct drm_encoder encoder;
 	struct drm_bridge bridge;
-	struct drm_connector conn;
-	struct drm_panel *panel;
+	struct drm_bridge *panel_bridge;
 	struct drm_bridge *next_bridge;
 	struct phy *phy;
 
@@ -212,11 +211,6 @@ static inline struct mtk_dsi *bridge_to_dsi(struct drm_bridge *b)
 	return container_of(b, struct mtk_dsi, bridge);
 }
 
-static inline struct mtk_dsi *connector_to_dsi(struct drm_connector *c)
-{
-	return container_of(c, struct mtk_dsi, conn);
-}
-
 static inline struct mtk_dsi *host_to_dsi(struct mipi_dsi_host *h)
 {
 	return container_of(h, struct mtk_dsi, host);
@@ -682,16 +676,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 	mtk_dsi_lane0_ulp_mode_leave(dsi);
 	mtk_dsi_clk_hs_mode(dsi, 0);
 
-	if (dsi->panel) {
-		if (drm_panel_prepare(dsi->panel)) {
-			DRM_ERROR("failed to prepare the panel\n");
-			goto err_disable_digital_clk;
-		}
-	}
-
 	return 0;
-err_disable_digital_clk:
-	clk_disable_unprepare(dsi->digital_clk);
 err_disable_engine_clk:
 	clk_disable_unprepare(dsi->engine_clk);
 err_phy_power_off:
@@ -718,15 +703,7 @@ static void mtk_dsi_poweroff(struct mtk_dsi *dsi)
 	 */
 	mtk_dsi_stop(dsi);
 
-	if (!mtk_dsi_switch_to_cmd_mode(dsi, VM_DONE_INT_FLAG, 500)) {
-		if (dsi->panel) {
-			if (drm_panel_unprepare(dsi->panel)) {
-				DRM_ERROR("failed to unprepare the panel\n");
-				return;
-			}
-		}
-	}
-
+	mtk_dsi_switch_to_cmd_mode(dsi, VM_DONE_INT_FLAG, 500);
 	mtk_dsi_reset_engine(dsi);
 	mtk_dsi_lane0_ulp_mode_enter(dsi);
 	mtk_dsi_clk_ulp_mode_enter(dsi);
@@ -757,19 +734,7 @@ static void mtk_output_dsi_enable(struct mtk_dsi *dsi)
 
 	mtk_dsi_start(dsi);
 
-	if (dsi->panel) {
-		if (drm_panel_enable(dsi->panel)) {
-			DRM_ERROR("failed to enable the panel\n");
-			goto err_dsi_power_off;
-		}
-	}
-
 	dsi->enabled = true;
-
-	return;
-err_dsi_power_off:
-	mtk_dsi_stop(dsi);
-	mtk_dsi_poweroff(dsi);
 }
 
 static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
@@ -777,34 +742,24 @@ static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
 	if (!dsi->enabled)
 		return;
 
-	if (dsi->panel) {
-		if (drm_panel_disable(dsi->panel)) {
-			DRM_ERROR("failed to disable the panel\n");
-			return;
-		}
-	}
-
 	mtk_dsi_poweroff(dsi);
 
 	dsi->enabled = false;
 }
 
-static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi);
-static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi);
-
 static int mtk_dsi_bridge_attach(struct drm_bridge *bridge,
 				 enum drm_bridge_attach_flags flags)
 {
 	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
+	struct drm_bridge *next;
 
-	return mtk_dsi_create_conn_enc(bridge->dev, dsi);
-}
-
-static void mtk_dsi_bridge_detach(struct drm_bridge *bridge)
-{
-	struct mtk_dsi *dsi = bridge_to_dsi(bridge);
+	if (dsi->next_bridge)
+		next = dsi->next_bridge;
+	else
+		next = dsi->panel_bridge;
 
-	mtk_dsi_destroy_conn_enc(dsi);
+	/* Attach the panel or bridge to the dsi bridge */
+	return drm_bridge_attach(bridge->encoder, next, &dsi->bridge, flags);
 }
 
 static void mtk_dsi_bridge_mode_set(struct drm_bridge *bridge,
@@ -830,101 +785,13 @@ static void mtk_dsi_bridge_enable(struct drm_bridge *bridge)
 	mtk_output_dsi_enable(dsi);
 }
 
-static int mtk_dsi_connector_get_modes(struct drm_connector *connector)
-{
-	struct mtk_dsi *dsi = connector_to_dsi(connector);
-
-	return drm_panel_get_modes(dsi->panel, connector);
-}
-
 static const struct drm_bridge_funcs mtk_dsi_bridge_funcs = {
 	.attach = mtk_dsi_bridge_attach,
-	.detach = mtk_dsi_bridge_detach,
 	.disable = mtk_dsi_bridge_disable,
 	.enable = mtk_dsi_bridge_enable,
 	.mode_set = mtk_dsi_bridge_mode_set,
 };
 
-static const struct drm_connector_funcs mtk_dsi_connector_funcs = {
-	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = drm_connector_cleanup,
-	.reset = drm_atomic_helper_connector_reset,
-	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
-	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
-};
-
-static const struct drm_connector_helper_funcs
-	mtk_dsi_connector_helper_funcs = {
-	.get_modes = mtk_dsi_connector_get_modes,
-};
-
-static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
-{
-	int ret;
-
-	ret = drm_connector_init(drm, &dsi->conn, &mtk_dsi_connector_funcs,
-				 DRM_MODE_CONNECTOR_DSI);
-	if (ret) {
-		DRM_ERROR("Failed to connector init to drm\n");
-		return ret;
-	}
-
-	drm_connector_helper_add(&dsi->conn, &mtk_dsi_connector_helper_funcs);
-
-	dsi->conn.dpms = DRM_MODE_DPMS_OFF;
-	drm_connector_attach_encoder(&dsi->conn, &dsi->encoder);
-
-	if (dsi->panel) {
-		ret = drm_panel_attach(dsi->panel, &dsi->conn);
-		if (ret) {
-			DRM_ERROR("Failed to attach panel to drm\n");
-			goto err_connector_cleanup;
-		}
-	}
-
-	return 0;
-
-err_connector_cleanup:
-	drm_connector_cleanup(&dsi->conn);
-	return ret;
-}
-
-static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi)
-{
-	int ret;
-
-	/* If there's a bridge, attach to it and let it create the connector */
-	if (dsi->next_bridge) {
-		ret = drm_bridge_attach(&dsi->encoder, dsi->next_bridge, NULL,
-					0);
-		if (ret) {
-			DRM_ERROR("Failed to attach bridge to drm\n");
-			goto err_encoder_cleanup;
-		}
-	} else {
-		/* Otherwise create our own connector and attach to a panel */
-		ret = mtk_dsi_create_connector(drm, dsi);
-		if (ret)
-			goto err_encoder_cleanup;
-	}
-
-	return 0;
-
-err_encoder_cleanup:
-	drm_encoder_cleanup(&dsi->encoder);
-	return ret;
-}
-
-static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi)
-{
-	drm_encoder_cleanup(&dsi->encoder);
-	/* Skip connector cleanup if creation was delegated to the bridge */
-	if (dsi->conn.dev)
-		drm_connector_cleanup(&dsi->conn);
-	if (dsi->panel)
-		drm_panel_detach(dsi->panel);
-}
-
 static void mtk_dsi_ddp_start(struct mtk_ddp_comp *comp)
 {
 	struct mtk_dsi *dsi = container_of(comp, struct mtk_dsi, ddp_comp);
@@ -953,20 +820,6 @@ static int mtk_dsi_host_attach(struct mipi_dsi_host *host,
 	dsi->format = device->format;
 	dsi->mode_flags = device->mode_flags;
 
-	if (dsi->conn.dev)
-		drm_helper_hpd_irq_event(dsi->conn.dev);
-
-	return 0;
-}
-
-static int mtk_dsi_host_detach(struct mipi_dsi_host *host,
-			       struct mipi_dsi_device *device)
-{
-	struct mtk_dsi *dsi = host_to_dsi(host);
-
-	if (dsi->conn.dev)
-		drm_helper_hpd_irq_event(dsi->conn.dev);
-
 	return 0;
 }
 
@@ -1110,7 +963,6 @@ static ssize_t mtk_dsi_host_transfer(struct mipi_dsi_host *host,
 
 static const struct mipi_dsi_host_ops mtk_dsi_ops = {
 	.attach = mtk_dsi_host_attach,
-	.detach = mtk_dsi_host_detach,
 	.transfer = mtk_dsi_host_transfer,
 };
 
@@ -1184,6 +1036,7 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 {
 	struct mtk_dsi *dsi;
 	struct device *dev = &pdev->dev;
+	struct drm_panel *panel;
 	struct resource *regs;
 	int irq_num;
 	int comp_id;
@@ -1202,10 +1055,19 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 	}
 
 	ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
-					  &dsi->panel, &dsi->next_bridge);
+					  &panel, &dsi->next_bridge);
 	if (ret)
 		goto err_unregister_host;
 
+	if (panel) {
+		panel->connector_type = DRM_MODE_CONNECTOR_DSI;
+		dsi->panel_bridge = devm_drm_panel_bridge_add(dev, panel);
+		if (IS_ERR(dsi->panel_bridge)) {
+			ret = PTR_ERR(dsi->panel_bridge);
+			goto err_unregister_host;
+		}
+	}
+
 	dsi->driver_data = of_device_get_match_data(dev);
 
 	dsi->engine_clk = devm_clk_get(dev, "engine");
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
