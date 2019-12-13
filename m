Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A2511E9E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uat+6SkD80dAe+rlqvK1+dO1Rc26D+TvwAGC+w6JDYI=; b=o3bBZLY5lqUj8i
	CQq7TR2yQv4FpWbwr448dOw+pfccJcgbNa6Uz12U7ezetzNqA+pLyj/4zfqfTbQ+XQyGjjTNSkzLQ
	ruVhclR20ShfYUqv+XYyYK93t2yKruLJzE8Hns0uPPVTC6lTlACkHVDwBKebqx61hohWOhCXbt1vB
	7GIKtcwpJTYX8Lbmt2BOCeiOMrZ0biH4DZCkFscNkeaKVphoFqFffRwVqhkoiBjA1Ujfi8QzSW6xW
	X8q6scPgQi6KmkCdVuRWj8qAYOUbCsDfrVruKs0C4Qsklrwjv51dMJ2SwEaSsQcjJ+tw7qr8TrtlT
	gHJFbzHp6c5q5BM3X+Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpQV-00014y-0Z; Fri, 13 Dec 2019 18:12:31 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpP7-0008MX-CR; Fri, 13 Dec 2019 18:11:07 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E99D9200005;
 Fri, 13 Dec 2019 18:11:01 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 04/12] drm/rockchip: lvds: Harmonize function names
Date: Fri, 13 Dec 2019 19:10:43 +0100
Message-Id: <20191213181051.25983-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_101105_712885_A9555A3B 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
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
index 8a4c9af0ba73..34e5d0b1172e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -67,7 +67,8 @@ struct rockchip_lvds {
 	struct dev_pin_info *pins;
 };
 
-static inline void lvds_writel(struct rockchip_lvds *lvds, u32 offset, u32 val)
+static inline void rk3288_writel(struct rockchip_lvds *lvds, u32 offset,
+				 u32 val)
 {
 	writel_relaxed(val, lvds->regs + offset);
 	if (lvds->output == DISPLAY_OUTPUT_LVDS)
@@ -75,7 +76,7 @@ static inline void lvds_writel(struct rockchip_lvds *lvds, u32 offset, u32 val)
 	writel_relaxed(val, lvds->regs + offset + lvds->soc_data->ch1_offset);
 }
 
-static inline int lvds_name_to_format(const char *s)
+static inline int rockchip_lvds_name_to_format(const char *s)
 {
 	if (strncmp(s, "jeida-18", 8) == 0)
 		return LVDS_JEIDA_18;
@@ -87,7 +88,7 @@ static inline int lvds_name_to_format(const char *s)
 	return -EINVAL;
 }
 
-static inline int lvds_name_to_output(const char *s)
+static inline int rockchip_lvds_name_to_output(const char *s)
 {
 	if (strncmp(s, "rgb", 3) == 0)
 		return DISPLAY_OUTPUT_RGB;
@@ -99,7 +100,7 @@ static inline int lvds_name_to_output(const char *s)
 	return -EINVAL;
 }
 
-static int rockchip_lvds_poweron(struct rockchip_lvds *lvds)
+static int rk3288_lvds_poweron(struct rockchip_lvds *lvds)
 {
 	int ret;
 	u32 val;
@@ -121,63 +122,70 @@ static int rockchip_lvds_poweron(struct rockchip_lvds *lvds)
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
@@ -209,8 +217,8 @@ struct drm_connector_helper_funcs rockchip_lvds_connector_helper_funcs = {
 	.get_modes = rockchip_lvds_connector_get_modes,
 };
 
-static void rockchip_lvds_grf_config(struct drm_encoder *encoder,
-				     struct drm_display_mode *mode)
+static void rk3288_lvds_grf_config(struct drm_encoder *encoder,
+				   struct drm_display_mode *mode)
 {
 	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
 	u8 pin_hsync = (mode->flags & DRM_MODE_FLAG_PHSYNC) ? 1 : 0;
@@ -241,8 +249,8 @@ static void rockchip_lvds_grf_config(struct drm_encoder *encoder,
 	}
 }
 
-static int rockchip_lvds_set_vop_source(struct rockchip_lvds *lvds,
-					struct drm_encoder *encoder)
+static int rk3288_lvds_set_vop_source(struct rockchip_lvds *lvds,
+				      struct drm_encoder *encoder)
 {
 	u32 val;
 	int ret;
@@ -278,36 +286,36 @@ rockchip_lvds_encoder_atomic_check(struct drm_encoder *encoder,
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
 
@@ -378,7 +386,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		/* default set it as output rgb */
 		lvds->output = DISPLAY_OUTPUT_RGB;
 	else
-		lvds->output = lvds_name_to_output(name);
+		lvds->output = rockchip_lvds_name_to_output(name);
 
 	if (lvds->output < 0) {
 		DRM_DEV_ERROR(dev, "invalid output type [%s]\n", name);
@@ -390,7 +398,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		/* default set it as format vesa 18 */
 		lvds->format = LVDS_VESA_18;
 	else
-		lvds->format = lvds_name_to_format(name);
+		lvds->format = rockchip_lvds_name_to_format(name);
 
 	if (lvds->format < 0) {
 		DRM_DEV_ERROR(dev, "invalid data-mapping format [%s]\n", name);
@@ -410,7 +418,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		goto err_put_remote;
 	}
 
-	drm_encoder_helper_add(encoder, &rockchip_lvds_encoder_helper_funcs);
+	drm_encoder_helper_add(encoder, &rk3288_lvds_encoder_helper_funcs);
 
 	if (lvds->panel) {
 		connector = &lvds->connector;
@@ -472,7 +480,7 @@ static void rockchip_lvds_unbind(struct device *dev, struct device *master,
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
