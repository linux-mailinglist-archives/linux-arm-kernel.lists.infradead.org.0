Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCB012A282
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzMFuxYC1M2P6Lm7xa3bcsIUS8N6XOwhgisCqTHctjk=; b=K436eW86roa5A+
	1LscbCgEnLIthmlNjW202BcfVwo4HHd3wamlloxaSuX+AjhcQM21RxCajAFrGgkenQ0WqaxtGxtrC
	3wAiGg4G0x5/5k7Q3pp1YBxAQ6pt2H3qp0rf54IEiVdRbcw+/A693PJxRHMxC5Cc/ZMYdnBCV7ek8
	hC1iijvpbQmtBGqiEugXwnKotLE93/HDZP0ogum9AJ48INex3rwEX+6mLhhsiYS9GpklOuvaRPViK
	e5Fguw2RkvgJb0q7ZHc2wtjiMaKQSx7meGBG4Zj1yLiV1lMP6P18+6e43t8ZBO25AqsZ+drnKCI54
	m4gk9l0PjjlGFKVkDT0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlMq-00048R-V4; Tue, 24 Dec 2019 14:41:00 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlLE-0001lj-KS; Tue, 24 Dec 2019 14:39:22 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 91EDDE0009;
 Tue, 24 Dec 2019 14:39:16 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
Subject: [PATCH v2 04/11] drm/rockchip: lvds: Harmonize function names
Date: Tue, 24 Dec 2019 15:38:53 +0100
Message-Id: <20191224143900.23567-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_063920_956225_2D4B4C89 
X-CRM114-Status: GOOD (  14.59  )
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

Prepare the introduction of PX30 support by clarifying the function
prefixes.

We continue to prefix with 'rockchip_lvds_' generic functions that are
not specific to a single hardware. Functions implying hardware
modifications are now prefixed with 'rk3288_lvds_'.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 138 ++++++++++++-----------
 1 file changed, 73 insertions(+), 65 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 64aefa856896..3c08e50923ae 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -66,7 +66,8 @@ struct rockchip_lvds {
 	struct dev_pin_info *pins;
 };
 
-static inline void lvds_writel(struct rockchip_lvds *lvds, u32 offset, u32 val)
+static inline void rk3288_writel(struct rockchip_lvds *lvds, u32 offset,
+				 u32 val)
 {
 	writel_relaxed(val, lvds->regs + offset);
 	if (lvds->output == DISPLAY_OUTPUT_LVDS)
@@ -74,7 +75,7 @@ static inline void lvds_writel(struct rockchip_lvds *lvds, u32 offset, u32 val)
 	writel_relaxed(val, lvds->regs + offset + lvds->soc_data->ch1_offset);
 }
 
-static inline int lvds_name_to_format(const char *s)
+static inline int rockchip_lvds_name_to_format(const char *s)
 {
 	if (strncmp(s, "jeida-18", 8) == 0)
 		return LVDS_JEIDA_18;
@@ -86,7 +87,7 @@ static inline int lvds_name_to_format(const char *s)
 	return -EINVAL;
 }
 
-static inline int lvds_name_to_output(const char *s)
+static inline int rockchip_lvds_name_to_output(const char *s)
 {
 	if (strncmp(s, "rgb", 3) == 0)
 		return DISPLAY_OUTPUT_RGB;
@@ -98,7 +99,7 @@ static inline int lvds_name_to_output(const char *s)
 	return -EINVAL;
 }
 
-static int rockchip_lvds_poweron(struct rockchip_lvds *lvds)
+static int rk3288_lvds_poweron(struct rockchip_lvds *lvds)
 {
 	int ret;
 	u32 val;
@@ -120,63 +121,70 @@ static int rockchip_lvds_poweron(struct rockchip_lvds *lvds)
 	if (lvds->output == DISPLAY_OUTPUT_RGB) {
 		val |= RK3288_LVDS_CH0_REG0_TTL_EN |
 			RK3288_LVDS_CH0_REG0_LANECK_EN;
-		lvds_writel(lvds, RK3288_LVDS_CH0_REG0, val);
-		lvds_writel(lvds, RK3288_LVDS_CH0_REG2,
-			    RK3288_LVDS_PLL_FBDIV_REG2(0x46));
-		lvds_writel(lvds, RK3288_LVDS_CH0_REG4,
-			    RK3288_LVDS_CH0_REG4_LANECK_TTL_MODE |
-			    RK3288_LVDS_CH0_REG4_LANE4_TTL_MODE |
-			    RK3288_LVDS_CH0_REG4_LANE3_TTL_MODE |
-			    RK3288_LVDS_CH0_REG4_LANE2_TTL_MODE |
-			    RK3288_LVDS_CH0_REG4_LANE1_TTL_MODE |
-			    RK3288_LVDS_CH0_REG4_LANE0_TTL_MODE);
-		lvds_writel(lvds, RK3288_LVDS_CH0_REG5,
-			    RK3288_LVDS_CH0_REG5_LANECK_TTL_DATA |
-			    RK3288_LVDS_CH0_REG5_LANE4_TTL_DATA |
-			    RK3288_LVDS_CH0_REG5_LANE3_TTL_DATA |
-			    RK3288_LVDS_CH0_REG5_LANE2_TTL_DATA |
-			    RK3288_LVDS_CH0_REG5_LANE1_TTL_DATA |
-			    RK3288_LVDS_CH0_REG5_LANE0_TTL_DATA);
+		rk3288_writel(lvds, RK3288_LVDS_CH0_REG0, val);
+		rk3288_writel(lvds, RK3288_LVDS_CH0_REG2,
+			      RK3288_LVDS_PLL_FBDIV_REG2(0x46));
+		rk3288_writel(lvds, RK3288_LVDS_CH0_REG4,
+			      RK3288_LVDS_CH0_REG4_LANECK_TTL_MODE |
+			      RK3288_LVDS_CH0_REG4_LANE4_TTL_MODE |
+			      RK3288_LVDS_CH0_REG4_LANE3_TTL_MODE |
+			      RK3288_LVDS_CH0_REG4_LANE2_TTL_MODE |
+			      RK3288_LVDS_CH0_REG4_LANE1_TTL_MODE |
+			      RK3288_LVDS_CH0_REG4_LANE0_TTL_MODE);
+		rk3288_writel(lvds, RK3288_LVDS_CH0_REG5,
+			      RK3288_LVDS_CH0_REG5_LANECK_TTL_DATA |
+			      RK3288_LVDS_CH0_REG5_LANE4_TTL_DATA |
+			      RK3288_LVDS_CH0_REG5_LANE3_TTL_DATA |
+			      RK3288_LVDS_CH0_REG5_LANE2_TTL_DATA |
+			      RK3288_LVDS_CH0_REG5_LANE1_TTL_DATA |
+			      RK3288_LVDS_CH0_REG5_LANE0_TTL_DATA);
 	} else {
 		val |= RK3288_LVDS_CH0_REG0_LVDS_EN |
 			    RK3288_LVDS_CH0_REG0_LANECK_EN;
-		lvds_writel(lvds, RK3288_LVDS_CH0_REG0, val);
-		lvds_writel(lvds, RK3288_LVDS_CH0_REG1,
-			    RK3288_LVDS_CH0_REG1_LANECK_BIAS |
-			    RK3288_LVDS_CH0_REG1_LANE4_BIAS |
-			    RK3288_LVDS_CH0_REG1_LANE3_BIAS |
-			    RK3288_LVDS_CH0_REG1_LANE2_BIAS |
-			    RK3288_LVDS_CH0_REG1_LANE1_BIAS |
-			    RK3288_LVDS_CH0_REG1_LANE0_BIAS);
-		lvds_writel(lvds, RK3288_LVDS_CH0_REG2,
-			    RK3288_LVDS_CH0_REG2_RESERVE_ON |
-			    RK3288_LVDS_CH0_REG2_LANECK_LVDS_MODE |
-			    RK3288_LVDS_CH0_REG2_LANE4_LVDS_MODE |
-			    RK3288_LVDS_CH0_REG2_LANE3_LVDS_MODE |
-			    RK3288_LVDS_CH0_REG2_LANE2_LVDS_MODE |
-			    RK3288_LVDS_CH0_REG2_LANE1_LVDS_MODE |
-			    RK3288_LVDS_CH0_REG2_LANE0_LVDS_MODE |
-			    RK3288_LVDS_PLL_FBDIV_REG2(0x46));
-		lvds_writel(lvds, RK3288_LVDS_CH0_REG4, 0x00);
-		lvds_writel(lvds, RK3288_LVDS_CH0_REG5, 0x00);
+		rk3288_writel(lvds, RK3288_LVDS_CH0_REG0, val);
+		rk3288_writel(lvds, RK3288_LVDS_CH0_REG1,
+			      RK3288_LVDS_CH0_REG1_LANECK_BIAS |
+			      RK3288_LVDS_CH0_REG1_LANE4_BIAS |
+			      RK3288_LVDS_CH0_REG1_LANE3_BIAS |
+			      RK3288_LVDS_CH0_REG1_LANE2_BIAS |
+			      RK3288_LVDS_CH0_REG1_LANE1_BIAS |
+			      RK3288_LVDS_CH0_REG1_LANE0_BIAS);
+		rk3288_writel(lvds, RK3288_LVDS_CH0_REG2,
+			      RK3288_LVDS_CH0_REG2_RESERVE_ON |
+			      RK3288_LVDS_CH0_REG2_LANECK_LVDS_MODE |
+			      RK3288_LVDS_CH0_REG2_LANE4_LVDS_MODE |
+			      RK3288_LVDS_CH0_REG2_LANE3_LVDS_MODE |
+			      RK3288_LVDS_CH0_REG2_LANE2_LVDS_MODE |
+			      RK3288_LVDS_CH0_REG2_LANE1_LVDS_MODE |
+			      RK3288_LVDS_CH0_REG2_LANE0_LVDS_MODE |
+			      RK3288_LVDS_PLL_FBDIV_REG2(0x46));
+		rk3288_writel(lvds, RK3288_LVDS_CH0_REG4, 0x00);
+		rk3288_writel(lvds, RK3288_LVDS_CH0_REG5, 0x00);
 	}
-	lvds_writel(lvds, RK3288_LVDS_CH0_REG3, RK3288_LVDS_PLL_FBDIV_REG3(0x46));
-	lvds_writel(lvds, RK3288_LVDS_CH0_REGD, RK3288_LVDS_PLL_PREDIV_REGD(0x0a));
-	lvds_writel(lvds, RK3288_LVDS_CH0_REG20, RK3288_LVDS_CH0_REG20_LSB);
+	rk3288_writel(lvds, RK3288_LVDS_CH0_REG3,
+		      RK3288_LVDS_PLL_FBDIV_REG3(0x46));
+	rk3288_writel(lvds, RK3288_LVDS_CH0_REGD,
+		      RK3288_LVDS_PLL_PREDIV_REGD(0x0a));
+	rk3288_writel(lvds, RK3288_LVDS_CH0_REG20,
+		      RK3288_LVDS_CH0_REG20_LSB);
 
-	lvds_writel(lvds, RK3288_LVDS_CFG_REGC, RK3288_LVDS_CFG_REGC_PLL_ENABLE);
-	lvds_writel(lvds, RK3288_LVDS_CFG_REG21, RK3288_LVDS_CFG_REG21_TX_ENABLE);
+	rk3288_writel(lvds, RK3288_LVDS_CFG_REGC,
+		      RK3288_LVDS_CFG_REGC_PLL_ENABLE);
+	rk3288_writel(lvds, RK3288_LVDS_CFG_REG21,
+		      RK3288_LVDS_CFG_REG21_TX_ENABLE);
 
 	return 0;
 }
 
-static void rockchip_lvds_poweroff(struct rockchip_lvds *lvds)
+static void rk3288_lvds_poweroff(struct rockchip_lvds *lvds)
 {
 	int ret;
 	u32 val;
 
-	lvds_writel(lvds, RK3288_LVDS_CFG_REG21, RK3288_LVDS_CFG_REG21_TX_ENABLE);
-	lvds_writel(lvds, RK3288_LVDS_CFG_REGC, RK3288_LVDS_CFG_REGC_PLL_ENABLE);
+	rk3288_writel(lvds, RK3288_LVDS_CFG_REG21,
+		      RK3288_LVDS_CFG_REG21_TX_ENABLE);
+	rk3288_writel(lvds, RK3288_LVDS_CFG_REGC,
+		      RK3288_LVDS_CFG_REGC_PLL_ENABLE);
 	val = LVDS_DUAL | LVDS_TTL_EN | LVDS_CH0_EN | LVDS_CH1_EN | LVDS_PWRDN;
 	val |= val << 16;
 	ret = regmap_write(lvds->grf, lvds->soc_data->grf_soc_con7, val);
@@ -208,8 +216,8 @@ struct drm_connector_helper_funcs rockchip_lvds_connector_helper_funcs = {
 	.get_modes = rockchip_lvds_connector_get_modes,
 };
 
-static void rockchip_lvds_grf_config(struct drm_encoder *encoder,
-				     struct drm_display_mode *mode)
+static void rk3288_lvds_grf_config(struct drm_encoder *encoder,
+				   struct drm_display_mode *mode)
 {
 	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
 	u8 pin_hsync = (mode->flags & DRM_MODE_FLAG_PHSYNC) ? 1 : 0;
@@ -240,8 +248,8 @@ static void rockchip_lvds_grf_config(struct drm_encoder *encoder,
 	}
 }
 
-static int rockchip_lvds_set_vop_source(struct rockchip_lvds *lvds,
-					struct drm_encoder *encoder)
+static int rk3288_lvds_set_vop_source(struct rockchip_lvds *lvds,
+				      struct drm_encoder *encoder)
 {
 	u32 val;
 	int ret;
@@ -277,36 +285,36 @@ rockchip_lvds_encoder_atomic_check(struct drm_encoder *encoder,
 	return 0;
 }
 
-static void rockchip_lvds_encoder_enable(struct drm_encoder *encoder)
+static void rk3288_lvds_encoder_enable(struct drm_encoder *encoder)
 {
 	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
 	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
 	int ret;
 
 	drm_panel_prepare(lvds->panel);
-	ret = rockchip_lvds_poweron(lvds);
+	ret = rk3288_lvds_poweron(lvds);
 	if (ret < 0) {
 		DRM_DEV_ERROR(lvds->dev, "failed to power on lvds: %d\n", ret);
 		drm_panel_unprepare(lvds->panel);
 	}
-	rockchip_lvds_grf_config(encoder, mode);
-	rockchip_lvds_set_vop_source(lvds, encoder);
+	rk3288_lvds_grf_config(encoder, mode);
+	rk3288_lvds_set_vop_source(lvds, encoder);
 	drm_panel_enable(lvds->panel);
 }
 
-static void rockchip_lvds_encoder_disable(struct drm_encoder *encoder)
+static void rk3288_lvds_encoder_disable(struct drm_encoder *encoder)
 {
 	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
 
 	drm_panel_disable(lvds->panel);
-	rockchip_lvds_poweroff(lvds);
+	rk3288_lvds_poweroff(lvds);
 	drm_panel_unprepare(lvds->panel);
 }
 
 static const
-struct drm_encoder_helper_funcs rockchip_lvds_encoder_helper_funcs = {
-	.enable = rockchip_lvds_encoder_enable,
-	.disable = rockchip_lvds_encoder_disable,
+struct drm_encoder_helper_funcs rk3288_lvds_encoder_helper_funcs = {
+	.enable = rk3288_lvds_encoder_enable,
+	.disable = rk3288_lvds_encoder_disable,
 	.atomic_check = rockchip_lvds_encoder_atomic_check,
 };
 
@@ -377,7 +385,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		/* default set it as output rgb */
 		lvds->output = DISPLAY_OUTPUT_RGB;
 	else
-		lvds->output = lvds_name_to_output(name);
+		lvds->output = rockchip_lvds_name_to_output(name);
 
 	if (lvds->output < 0) {
 		DRM_DEV_ERROR(dev, "invalid output type [%s]\n", name);
@@ -389,7 +397,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		/* default set it as format vesa 18 */
 		lvds->format = LVDS_VESA_18;
 	else
-		lvds->format = lvds_name_to_format(name);
+		lvds->format = rockchip_lvds_name_to_format(name);
 
 	if (lvds->format < 0) {
 		DRM_DEV_ERROR(dev, "invalid data-mapping format [%s]\n", name);
@@ -409,7 +417,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		goto err_put_remote;
 	}
 
-	drm_encoder_helper_add(encoder, &rockchip_lvds_encoder_helper_funcs);
+	drm_encoder_helper_add(encoder, &rk3288_lvds_encoder_helper_funcs);
 
 	if (lvds->panel) {
 		connector = &lvds->connector;
@@ -471,7 +479,7 @@ static void rockchip_lvds_unbind(struct device *dev, struct device *master,
 {
 	struct rockchip_lvds *lvds = dev_get_drvdata(dev);
 
-	rockchip_lvds_encoder_disable(&lvds->encoder);
+	rk3288_lvds_encoder_disable(&lvds->encoder);
 	if (lvds->panel)
 		drm_panel_detach(lvds->panel);
 	pm_runtime_disable(dev);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
