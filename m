Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB5F1C3CA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=40QWiW4L3FlDMDA+6vmFK2o0SSPgZ19lIaMfUMFwcr8=; b=GphXaI3F3SSl7A
	7wlb1i7eg2zjv7MOUnNnjOdALVlsbiWZA6lF9hNoMUgTAhwyGMyAOWSSdFVajc1YEKal3csWB2xil
	/BjnfT13cuy61Uj+J5KCEQ0jRwzNr1io5PAaKkp+oOju3UvmZlxsp5wgAVXmqQNZ5XqTiqPGTi92T
	2FPaNm5zvRmauagR0uAcMa2o4sfYi6P3JgAUcKey/nekWKDEC69JSUQQAWvZ3V7NxtajDWw3JpbRU
	k6F22RGesHDEQgxw8h8v1mpveq7mAZZ6T5+lR6gQK+kWjhbDR6MhgojIAyOZv44c1HC4IODaIwtc0
	wESqpGhRVDtoneOkx4Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbrr-0001xr-UX; Mon, 04 May 2020 14:14:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbrO-0001gC-H8; Mon, 04 May 2020 14:14:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 881642A131D
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org,
	Collabora Kernel ML <kernel@collabora.com>
Subject: [PATCH 2/3] drm/mediatek: mtk_dpi: Convert to bridge driver
Date: Mon,  4 May 2020 16:14:07 +0200
Message-Id: <20200504141408.60877-3-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200504141408.60877-1-enric.balletbo@collabora.com>
References: <20200504141408.60877-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_071418_823914_5C0ADB38 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Convert mtk_dpi to a bridge driver with built-in encoder support for
compatibility with existing component drivers.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/mediatek/mtk_dpi.c | 66 +++++++++++++++---------------
 1 file changed, 34 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 7112125dc3d1..baad198c69eb 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -61,6 +61,7 @@ enum mtk_dpi_out_color_format {
 struct mtk_dpi {
 	struct mtk_ddp_comp ddp_comp;
 	struct drm_encoder encoder;
+	struct drm_bridge bridge;
 	struct drm_bridge *next_bridge;
 	void __iomem *regs;
 	struct device *dev;
@@ -77,9 +78,9 @@ struct mtk_dpi {
 	int refcount;
 };
 
-static inline struct mtk_dpi *mtk_dpi_from_encoder(struct drm_encoder *e)
+static inline struct mtk_dpi *bridge_to_dpi(struct drm_bridge *b)
 {
-	return container_of(e, struct mtk_dpi, encoder);
+	return container_of(b, struct mtk_dpi, bridge);
 }
 
 enum mtk_dpi_polarity {
@@ -518,50 +519,44 @@ static const struct drm_encoder_funcs mtk_dpi_encoder_funcs = {
 	.destroy = mtk_dpi_encoder_destroy,
 };
 
-static bool mtk_dpi_encoder_mode_fixup(struct drm_encoder *encoder,
-				       const struct drm_display_mode *mode,
-				       struct drm_display_mode *adjusted_mode)
+static int mtk_dpi_bridge_attach(struct drm_bridge *bridge,
+				 enum drm_bridge_attach_flags flags)
 {
-	return true;
+	struct mtk_dpi *dpi = bridge_to_dpi(bridge);
+
+	return drm_bridge_attach(bridge->encoder, dpi->next_bridge,
+				 &dpi->bridge, flags);
 }
 
-static void mtk_dpi_encoder_mode_set(struct drm_encoder *encoder,
-				     struct drm_display_mode *mode,
-				     struct drm_display_mode *adjusted_mode)
+static void mtk_dpi_bridge_mode_set(struct drm_bridge *bridge,
+				const struct drm_display_mode *mode,
+				const struct drm_display_mode *adjusted_mode)
 {
-	struct mtk_dpi *dpi = mtk_dpi_from_encoder(encoder);
+	struct mtk_dpi *dpi = bridge_to_dpi(bridge);
 
 	drm_mode_copy(&dpi->mode, adjusted_mode);
 }
 
-static void mtk_dpi_encoder_disable(struct drm_encoder *encoder)
+static void mtk_dpi_bridge_disable(struct drm_bridge *bridge)
 {
-	struct mtk_dpi *dpi = mtk_dpi_from_encoder(encoder);
+	struct mtk_dpi *dpi = bridge_to_dpi(bridge);
 
 	mtk_dpi_power_off(dpi);
 }
 
-static void mtk_dpi_encoder_enable(struct drm_encoder *encoder)
+static void mtk_dpi_bridge_enable(struct drm_bridge *bridge)
 {
-	struct mtk_dpi *dpi = mtk_dpi_from_encoder(encoder);
+	struct mtk_dpi *dpi = bridge_to_dpi(bridge);
 
 	mtk_dpi_power_on(dpi);
 	mtk_dpi_set_display_mode(dpi, &dpi->mode);
 }
 
-static int mtk_dpi_atomic_check(struct drm_encoder *encoder,
-				struct drm_crtc_state *crtc_state,
-				struct drm_connector_state *conn_state)
-{
-	return 0;
-}
-
-static const struct drm_encoder_helper_funcs mtk_dpi_encoder_helper_funcs = {
-	.mode_fixup = mtk_dpi_encoder_mode_fixup,
-	.mode_set = mtk_dpi_encoder_mode_set,
-	.disable = mtk_dpi_encoder_disable,
-	.enable = mtk_dpi_encoder_enable,
-	.atomic_check = mtk_dpi_atomic_check,
+static const struct drm_bridge_funcs mtk_dpi_bridge_funcs = {
+	.attach = mtk_dpi_bridge_attach,
+	.mode_set = mtk_dpi_bridge_mode_set,
+	.disable = mtk_dpi_bridge_disable,
+	.enable = mtk_dpi_bridge_enable,
 };
 
 static void mtk_dpi_start(struct mtk_ddp_comp *comp)
@@ -602,16 +597,13 @@ static int mtk_dpi_bind(struct device *dev, struct device *master, void *data)
 		dev_err(dev, "Failed to initialize decoder: %d\n", ret);
 		goto err_unregister;
 	}
-	drm_encoder_helper_add(&dpi->encoder, &mtk_dpi_encoder_helper_funcs);
 
 	/* Currently DPI0 is fixed to be driven by OVL1 */
 	dpi->encoder.possible_crtcs = BIT(1);
 
-	ret = drm_bridge_attach(&dpi->encoder, dpi->next_bridge, NULL, 0);
-	if (ret) {
-		dev_err(dev, "Failed to attach bridge: %d\n", ret);
+	ret = drm_bridge_attach(&dpi->encoder, &dpi->bridge, NULL, 0);
+	if (ret)
 		goto err_cleanup;
-	}
 
 	dpi->bit_num = MTK_DPI_OUT_BIT_NUM_8BITS;
 	dpi->channel_swap = MTK_DPI_OUT_CHANNEL_SWAP_RGB;
@@ -768,8 +760,15 @@ static int mtk_dpi_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, dpi);
 
+	dpi->bridge.funcs = &mtk_dpi_bridge_funcs;
+	dpi->bridge.of_node = dev->of_node;
+	dpi->bridge.type = DRM_MODE_CONNECTOR_DPI;
+
+	drm_bridge_add(&dpi->bridge);
+
 	ret = component_add(dev, &mtk_dpi_component_ops);
 	if (ret) {
+		drm_bridge_remove(&dpi->bridge);
 		dev_err(dev, "Failed to add component: %d\n", ret);
 		return ret;
 	}
@@ -779,7 +778,10 @@ static int mtk_dpi_probe(struct platform_device *pdev)
 
 static int mtk_dpi_remove(struct platform_device *pdev)
 {
+	struct mtk_dpi *dpi = platform_get_drvdata(pdev);
+
 	component_del(&pdev->dev, &mtk_dpi_component_ops);
+	drm_bridge_remove(&dpi->bridge);
 
 	return 0;
 }
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
