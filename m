Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FF712A28D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:42:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1Xl7ucoj3LkZb+EcZpl3nqvDTngePSmqzmRlahRBxI=; b=ulXdWW32ApwzM+
	ZdDDa55zrpE287RAUag5UfwcOQaPhwGSUqSSCChdohBHJghxG99j3LOMSYC1rse8ggYpc2WBEKKua
	/ADt+6grIr0wcseNEUtu6cSvj3SkWTSh5Db0zBCeAtcaSH7j5ERphjKNGtJSJveK/TMeFUfSDfpcO
	s7LPsO3Udbz4kfwf53vbpRnoAcfR5ZQRajNNJcEB5lWGBu8igBMVlBqxDhQX8inKOz3lWrOmDMXF0
	3kWLkHzZeLN2nuegG2y2pVrJ2G6nVjDp68ThDA0q5HFOPq/QdU6OVbVvydnQ0OeCWZe8GDhJvBaK6
	XrYtCZinsbOD5nUsHeJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlOB-0005W8-7r; Tue, 24 Dec 2019 14:42:23 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlLN-0001yt-C5; Tue, 24 Dec 2019 14:39:32 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 1DE12E0007;
 Tue, 24 Dec 2019 14:39:26 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
Subject: [PATCH v2 09/11] drm/rockchip: lvds: Add PX30 support
Date: Tue, 24 Dec 2019 15:38:58 +0100
Message-Id: <20191224143900.23567-10-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_063929_713066_219A52A2 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce PX30 LVDS support. This means adding the relevant helper
functions, a specific probe and also the initialization of a specific
PHY.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 143 +++++++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_lvds.h |  14 +++
 2 files changed, 157 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index f2ece09e4e24..d762cdd114f9 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -10,6 +10,7 @@
 #include <linux/component.h>
 #include <linux/mfd/syscon.h>
 #include <linux/of_graph.h>
+#include <linux/phy/phy.h>
 #include <linux/pinctrl/devinfo.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
@@ -53,6 +54,7 @@ struct rockchip_lvds {
 	void __iomem *regs;
 	struct regmap *grf;
 	struct clk *pclk;
+	struct phy *dphy;
 	const struct rockchip_lvds_soc_data *soc_data;
 	int output; /* rgb lvds or dual lvds output */
 	int format; /* vesa or jeida format */
@@ -321,6 +323,103 @@ static void rk3288_lvds_encoder_disable(struct drm_encoder *encoder)
 	drm_panel_unprepare(lvds->panel);
 }
 
+static int px30_lvds_poweron(struct rockchip_lvds *lvds)
+{
+	int ret;
+
+	ret = pm_runtime_get_sync(lvds->dev);
+	if (ret < 0) {
+		DRM_DEV_ERROR(lvds->dev, "failed to get pm runtime: %d\n", ret);
+		return ret;
+	}
+
+	/* Enable LVDS mode */
+	return regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON1,
+				  PX30_LVDS_MODE_EN(1) | PX30_LVDS_P2S_EN(1),
+				  PX30_LVDS_MODE_EN(1) | PX30_LVDS_P2S_EN(1));
+}
+
+static void px30_lvds_poweroff(struct rockchip_lvds *lvds)
+{
+	regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON1,
+			   PX30_LVDS_MODE_EN(1) | PX30_LVDS_P2S_EN(1),
+			   PX30_LVDS_MODE_EN(0) | PX30_LVDS_P2S_EN(0));
+
+	pm_runtime_put(lvds->dev);
+}
+
+static int px30_lvds_grf_config(struct drm_encoder *encoder,
+				struct drm_display_mode *mode)
+{
+	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
+
+	if (lvds->output != DISPLAY_OUTPUT_LVDS) {
+		DRM_DEV_ERROR(lvds->dev, "Unsupported display output %d\n",
+			      lvds->output);
+		return -EINVAL;
+	}
+
+	/* Set format */
+	return regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON1,
+				  PX30_LVDS_FORMAT(lvds->format),
+				  PX30_LVDS_FORMAT(lvds->format));
+}
+
+static int px30_lvds_set_vop_source(struct rockchip_lvds *lvds,
+				    struct drm_encoder *encoder)
+{
+	int vop;
+
+	vop = drm_of_encoder_active_endpoint_id(lvds->dev->of_node, encoder);
+	if (vop < 0)
+		return vop;
+
+	return regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON1,
+				  PX30_LVDS_VOP_SEL(1),
+				  PX30_LVDS_VOP_SEL(vop));
+}
+
+static void px30_lvds_encoder_enable(struct drm_encoder *encoder)
+{
+	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
+	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
+	int ret;
+
+	drm_panel_prepare(lvds->panel);
+
+	ret = px30_lvds_poweron(lvds);
+	if (ret) {
+		DRM_DEV_ERROR(lvds->dev, "failed to power on LVDS: %d\n", ret);
+		drm_panel_unprepare(lvds->panel);
+		return;
+	}
+
+	ret = px30_lvds_grf_config(encoder, mode);
+	if (ret) {
+		DRM_DEV_ERROR(lvds->dev, "failed to configure LVDS: %d\n", ret);
+		drm_panel_unprepare(lvds->panel);
+		return;
+	}
+
+	ret = px30_lvds_set_vop_source(lvds, encoder);
+	if (ret) {
+		DRM_DEV_ERROR(lvds->dev, "failed to set VOP source: %d\n", ret);
+		drm_panel_unprepare(lvds->panel);
+		return;
+	}
+
+	drm_panel_enable(lvds->panel);
+}
+
+static void px30_lvds_encoder_disable(struct drm_encoder *encoder)
+{
+	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
+
+	drm_panel_disable(lvds->panel);
+	px30_lvds_poweroff(lvds);
+	drm_panel_unprepare(lvds->panel);
+}
+
 static const
 struct drm_encoder_helper_funcs rk3288_lvds_encoder_helper_funcs = {
 	.enable = rk3288_lvds_encoder_enable,
@@ -328,6 +427,13 @@ struct drm_encoder_helper_funcs rk3288_lvds_encoder_helper_funcs = {
 	.atomic_check = rockchip_lvds_encoder_atomic_check,
 };
 
+static const
+struct drm_encoder_helper_funcs px30_lvds_encoder_helper_funcs = {
+	.enable = px30_lvds_encoder_enable,
+	.disable = px30_lvds_encoder_disable,
+	.atomic_check = rockchip_lvds_encoder_atomic_check,
+};
+
 static const struct drm_encoder_funcs rockchip_lvds_encoder_funcs = {
 	.destroy = drm_encoder_cleanup,
 };
@@ -378,16 +484,53 @@ static int rk3288_lvds_probe(struct platform_device *pdev,
 	return 0;
 }
 
+static int px30_lvds_probe(struct platform_device *pdev,
+			   struct rockchip_lvds *lvds)
+{
+	int ret;
+
+	/* MSB */
+	ret =  regmap_update_bits(lvds->grf, PX30_LVDS_GRF_PD_VO_CON1,
+				  PX30_LVDS_MSBSEL(1),
+				  PX30_LVDS_MSBSEL(1));
+	if (ret)
+		return ret;
+
+	/* PHY */
+	lvds->dphy = devm_phy_get(&pdev->dev, "dphy");
+	if (IS_ERR(lvds->dphy))
+		return PTR_ERR(lvds->dphy);
+
+	phy_init(lvds->dphy);
+	if (ret)
+		return ret;
+
+	phy_set_mode(lvds->dphy, PHY_MODE_LVDS);
+	if (ret)
+		return ret;
+
+	return phy_power_on(lvds->dphy);
+}
+
 static const struct rockchip_lvds_soc_data rk3288_lvds_data = {
 	.probe = rk3288_lvds_probe,
 	.helper_funcs = &rk3288_lvds_encoder_helper_funcs,
 };
 
+static const struct rockchip_lvds_soc_data px30_lvds_data = {
+	.probe = px30_lvds_probe,
+	.helper_funcs = &px30_lvds_encoder_helper_funcs,
+};
+
 static const struct of_device_id rockchip_lvds_dt_ids[] = {
 	{
 		.compatible = "rockchip,rk3288-lvds",
 		.data = &rk3288_lvds_data
 	},
+	{
+		.compatible = "rockchip,px30-lvds",
+		.data = &px30_lvds_data
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, rockchip_lvds_dt_ids);
diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.h b/drivers/gpu/drm/rockchip/rockchip_lvds.h
index e41e9ab3c306..ff3cffc4770d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.h
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.h
@@ -106,4 +106,18 @@
 #define LVDS_VESA_18				2
 #define LVDS_JEIDA_18				3
 
+#define HIWORD_UPDATE(v, h, l)  ((GENMASK(h, l) << 16) | (v << l))
+
+#define PX30_LVDS_GRF_PD_VO_CON0		0x434
+#define   PX30_LVDS_TIE_CLKS(val)		HIWORD_UPDATE(val,  8,  8)
+#define   PX30_LVDS_INVERT_CLKS(val)		HIWORD_UPDATE(val,  9,  9)
+#define   PX30_LVDS_INVERT_DCLK(val)		HIWORD_UPDATE(val,  5,  5)
+
+#define PX30_LVDS_GRF_PD_VO_CON1		0x438
+#define   PX30_LVDS_FORMAT(val)			HIWORD_UPDATE(val, 14, 13)
+#define   PX30_LVDS_MODE_EN(val)		HIWORD_UPDATE(val, 12, 12)
+#define   PX30_LVDS_MSBSEL(val)			HIWORD_UPDATE(val, 11, 11)
+#define   PX30_LVDS_P2S_EN(val)			HIWORD_UPDATE(val,  6,  6)
+#define   PX30_LVDS_VOP_SEL(val)		HIWORD_UPDATE(val,  1,  1)
+
 #endif /* _ROCKCHIP_LVDS_ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
