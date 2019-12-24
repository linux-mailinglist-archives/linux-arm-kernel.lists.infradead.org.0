Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738C112A285
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:41:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8h0AEKr2QEbm1zrg5Vtq7+vjAEmEY6ish/yn5KFTPI=; b=j390p/IZJxsQ0E
	x5B2mBlnKywiDGV/rJ0kw9Yf730Gx4bcGVBOAu2s0yn6KXrBAx4IeN+iZjPhL8JKQjEknJudR3WHq
	qWehp6dEIDfr4G27jQnjz7++mDhZDlNyyG4MkvR+UdUxC00T5JqUDWBiGcuO3fbnR44P5H/wLkZuy
	kl2aEResuu/B6foHtwNZPoxjIhM2WT8NykAawJSLfitRjQ07fqvQZ8I3OJ5mNQK/MzyflSKwPLltE
	LDQX98DaFjSuElDxAG2MXk7aT/H04mlwkYZgbgOfttMcCEKADi0Xy6aeR7K+8J+VkNCHG5p6+q6pC
	HdBgd3s1/yHbz3WY6k9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlN9-0004Ri-OE; Tue, 24 Dec 2019 14:41:19 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlLG-0001nt-AY; Tue, 24 Dec 2019 14:39:24 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id F31BDE000C;
 Tue, 24 Dec 2019 14:39:18 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
Subject: [PATCH v2 05/11] drm/rockchip: lvds: Change platform data
Date: Tue, 24 Dec 2019 15:38:54 +0100
Message-Id: <20191224143900.23567-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_063922_661396_52D5A274 
X-CRM114-Status: GOOD (  16.58  )
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

Prepare the introduction of PX30 support by using
drm_encoder_helper_funcs as platform data instead of multiple register
names which are specific to rk3288 and not generic to all Rockchip
IPs. This way adding support for a new flavor of a similar IP will be
a matter of adding the relevant helper funcs.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 32 ++++++++----------------
 drivers/gpu/drm/rockchip/rockchip_lvds.h |  3 +++
 2 files changed, 14 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 3c08e50923ae..271e126476e1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -38,16 +38,10 @@
 
 /**
  * rockchip_lvds_soc_data - rockchip lvds Soc private data
- * @ch1_offset: lvds channel 1 registe offset
- * grf_soc_con6: general registe offset for LVDS contrl
- * grf_soc_con7: general registe offset for LVDS contrl
- * has_vop_sel: to indicate whether need to choose from different VOP.
+ * @helper_funcs: LVDS connector helper functions
  */
 struct rockchip_lvds_soc_data {
-	u32 ch1_offset;
-	int grf_soc_con6;
-	int grf_soc_con7;
-	bool has_vop_sel;
+	const struct drm_encoder_helper_funcs *helper_funcs;
 };
 
 struct rockchip_lvds {
@@ -72,7 +66,7 @@ static inline void rk3288_writel(struct rockchip_lvds *lvds, u32 offset,
 	writel_relaxed(val, lvds->regs + offset);
 	if (lvds->output == DISPLAY_OUTPUT_LVDS)
 		return;
-	writel_relaxed(val, lvds->regs + offset + lvds->soc_data->ch1_offset);
+	writel_relaxed(val, lvds->regs + offset + RK3288_LVDS_CH1_OFFSET);
 }
 
 static inline int rockchip_lvds_name_to_format(const char *s)
@@ -187,7 +181,7 @@ static void rk3288_lvds_poweroff(struct rockchip_lvds *lvds)
 		      RK3288_LVDS_CFG_REGC_PLL_ENABLE);
 	val = LVDS_DUAL | LVDS_TTL_EN | LVDS_CH0_EN | LVDS_CH1_EN | LVDS_PWRDN;
 	val |= val << 16;
-	ret = regmap_write(lvds->grf, lvds->soc_data->grf_soc_con7, val);
+	ret = regmap_write(lvds->grf, RK3288_LVDS_GRF_SOC_CON7, val);
 	if (ret != 0)
 		DRM_DEV_ERROR(lvds->dev, "Could not write to GRF: %d\n", ret);
 
@@ -241,7 +235,7 @@ static void rk3288_lvds_grf_config(struct drm_encoder *encoder,
 
 	val |= (pin_dclk << 8) | (pin_hsync << 9);
 	val |= (0xffff << 16);
-	ret = regmap_write(lvds->grf, lvds->soc_data->grf_soc_con7, val);
+	ret = regmap_write(lvds->grf, RK3288_LVDS_GRF_SOC_CON7, val);
 	if (ret != 0) {
 		DRM_DEV_ERROR(lvds->dev, "Could not write to GRF: %d\n", ret);
 		return;
@@ -254,9 +248,6 @@ static int rk3288_lvds_set_vop_source(struct rockchip_lvds *lvds,
 	u32 val;
 	int ret;
 
-	if (!lvds->soc_data->has_vop_sel)
-		return 0;
-
 	ret = drm_of_encoder_active_endpoint_id(lvds->dev->of_node, encoder);
 	if (ret < 0)
 		return ret;
@@ -265,7 +256,7 @@ static int rk3288_lvds_set_vop_source(struct rockchip_lvds *lvds,
 	if (ret)
 		val |= RK3288_LVDS_SOC_CON6_SEL_VOP_LIT;
 
-	ret = regmap_write(lvds->grf, lvds->soc_data->grf_soc_con6, val);
+	ret = regmap_write(lvds->grf, RK3288_LVDS_GRF_SOC_CON6, val);
 	if (ret < 0)
 		return ret;
 
@@ -323,10 +314,7 @@ static const struct drm_encoder_funcs rockchip_lvds_encoder_funcs = {
 };
 
 static const struct rockchip_lvds_soc_data rk3288_lvds_data = {
-	.ch1_offset = 0x100,
-	.grf_soc_con6 = 0x025c,
-	.grf_soc_con7 = 0x0260,
-	.has_vop_sel = true,
+	.helper_funcs = &rk3288_lvds_encoder_helper_funcs,
 };
 
 static const struct of_device_id rockchip_lvds_dt_ids[] = {
@@ -417,7 +405,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		goto err_put_remote;
 	}
 
-	drm_encoder_helper_add(encoder, &rk3288_lvds_encoder_helper_funcs);
+	drm_encoder_helper_add(encoder, lvds->soc_data->helper_funcs);
 
 	if (lvds->panel) {
 		connector = &lvds->connector;
@@ -478,8 +466,10 @@ static void rockchip_lvds_unbind(struct device *dev, struct device *master,
 				void *data)
 {
 	struct rockchip_lvds *lvds = dev_get_drvdata(dev);
+	const struct drm_encoder_helper_funcs *encoder_funcs;
 
-	rk3288_lvds_encoder_disable(&lvds->encoder);
+	encoder_funcs = lvds->soc_data->helper_funcs;
+	encoder_funcs->disable(&lvds->encoder);
 	if (lvds->panel)
 		drm_panel_detach(lvds->panel);
 	pm_runtime_disable(dev);
diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.h b/drivers/gpu/drm/rockchip/rockchip_lvds.h
index 1387bcbc4bc0..e41e9ab3c306 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.h
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.h
@@ -72,6 +72,9 @@
 #define RK3288_LVDS_CFG_REG21_TX_DISABLE	0x00
 #define RK3288_LVDS_CH1_OFFSET			0x100
 
+#define RK3288_LVDS_GRF_SOC_CON6		0x025C
+#define RK3288_LVDS_GRF_SOC_CON7		0x0260
+
 /* fbdiv value is split over 2 registers, with bit8 in reg2 */
 #define RK3288_LVDS_PLL_FBDIV_REG2(_fbd) \
 		(_fbd & BIT(8) ? RK3288_LVDS_CH0_REG2_PLL_FBDIV8 : 0)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
