Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7786111E9E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRrcgsTJIzqWZff1zQcVNfdlF3oNP11moLeFWoQHDQ0=; b=YAPB48c4mngjFq
	TU0kBYNK8omVLT3Aq2T8l9rdh5iW5W7rX6yDVNe9fwiMr5bT2J1es5E8Yu2lhAqC6HNEPd4kL5JfI
	seNAfIB+BSkaUhdpxIT2+GSd7TCuuDoZFy05GZhZxEmrC6O1Il2L3MhM80DHX8sUo9uIy+becNZ//
	G3uGUfP45Li0tuIj50NALU1DdMauG5PMaOHBb88fniVumbQFGynfptCOK0DO1A5uI7Nn9+JSrCoSR
	LSNdMU6MkASifjWYOWzqwMCYXsi2KukBUtNjzuqaUvIybVCi4jr6DYLm1YmXgmPM/WINCzmaAA15N
	vLiFmag58hl99nXalZkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpR4-0001c8-CH; Fri, 13 Dec 2019 18:13:06 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpPB-0008Qm-Sh; Fri, 13 Dec 2019 18:11:11 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 628F8200007;
 Fri, 13 Dec 2019 18:11:06 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 06/12] drm/rockchip: lvds: Create an RK3288 specific probe
 function
Date: Fri, 13 Dec 2019 19:10:45 +0100
Message-Id: <20191213181051.25983-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_101110_223467_DBA309B2 
X-CRM114-Status: GOOD (  14.28  )
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

The probe function is highly tighten to the RK3288 specificities, move
all specific bits into an "rk3288_probe" function, also part of the
platform data.

The goal is to ease the addition of new flavors of Rockchip LVDS IPs.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 94 ++++++++++++++----------
 1 file changed, 57 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 262fec61eb78..0d2902b0d990 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -31,6 +31,8 @@
 #define DISPLAY_OUTPUT_LVDS		1
 #define DISPLAY_OUTPUT_DUAL_LVDS	2
 
+struct rockchip_lvds;
+
 #define connector_to_lvds(c) \
 		container_of(c, struct rockchip_lvds, connector)
 
@@ -39,9 +41,11 @@
 
 /**
  * rockchip_lvds_soc_data - rockchip lvds Soc private data
+ * @probe: LVDS platform probe function
  * @helper_funcs: LVDS connector helper functions
  */
 struct rockchip_lvds_soc_data {
+	int (*probe)(struct platform_device *pdev, struct rockchip_lvds *lvds);
 	const struct drm_encoder_helper_funcs *helper_funcs;
 };
 
@@ -303,6 +307,52 @@ static void rk3288_lvds_encoder_disable(struct drm_encoder *encoder)
 	drm_panel_unprepare(lvds->panel);
 }
 
+static int rk3288_lvds_probe(struct platform_device *pdev,
+			     struct rockchip_lvds *lvds)
+{
+	struct resource *res;
+	int ret;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	lvds->regs = devm_ioremap_resource(lvds->dev, res);
+	if (IS_ERR(lvds->regs))
+		return PTR_ERR(lvds->regs);
+
+	lvds->pclk = devm_clk_get(lvds->dev, "pclk_lvds");
+	if (IS_ERR(lvds->pclk)) {
+		DRM_DEV_ERROR(lvds->dev, "could not get pclk_lvds\n");
+		return PTR_ERR(lvds->pclk);
+	}
+
+	lvds->pins = devm_kzalloc(lvds->dev, sizeof(*lvds->pins),
+				  GFP_KERNEL);
+	if (!lvds->pins)
+		return -ENOMEM;
+
+	lvds->pins->p = devm_pinctrl_get(lvds->dev);
+	if (IS_ERR(lvds->pins->p)) {
+		DRM_DEV_ERROR(lvds->dev, "no pinctrl handle\n");
+		devm_kfree(lvds->dev, lvds->pins);
+		lvds->pins = NULL;
+	} else {
+		lvds->pins->default_state =
+			pinctrl_lookup_state(lvds->pins->p, "lcdc");
+		if (IS_ERR(lvds->pins->default_state)) {
+			DRM_DEV_ERROR(lvds->dev, "no default pinctrl state\n");
+			devm_kfree(lvds->dev, lvds->pins);
+			lvds->pins = NULL;
+		}
+	}
+
+	ret = clk_prepare(lvds->pclk);
+	if (ret < 0) {
+		DRM_DEV_ERROR(lvds->dev, "failed to prepare pclk_lvds\n");
+		return ret;
+	}
+
+	return 0;
+}
+
 static const
 struct drm_encoder_helper_funcs rk3288_lvds_encoder_helper_funcs = {
 	.enable = rk3288_lvds_encoder_enable,
@@ -315,6 +365,7 @@ static const struct drm_encoder_funcs rockchip_lvds_encoder_funcs = {
 };
 
 static const struct rockchip_lvds_soc_data rk3288_lvds_data = {
+	.probe = rk3288_lvds_probe,
 	.helper_funcs = &rk3288_lvds_encoder_helper_funcs,
 };
 
@@ -488,7 +539,6 @@ static int rockchip_lvds_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rockchip_lvds *lvds;
 	const struct of_device_id *match;
-	struct resource *res;
 	int ret;
 
 	if (!dev->of_node)
@@ -504,37 +554,6 @@ static int rockchip_lvds_probe(struct platform_device *pdev)
 		return -ENODEV;
 	lvds->soc_data = match->data;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	lvds->regs = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(lvds->regs))
-		return PTR_ERR(lvds->regs);
-
-	lvds->pclk = devm_clk_get(&pdev->dev, "pclk_lvds");
-	if (IS_ERR(lvds->pclk)) {
-		DRM_DEV_ERROR(dev, "could not get pclk_lvds\n");
-		return PTR_ERR(lvds->pclk);
-	}
-
-	lvds->pins = devm_kzalloc(lvds->dev, sizeof(*lvds->pins),
-				  GFP_KERNEL);
-	if (!lvds->pins)
-		return -ENOMEM;
-
-	lvds->pins->p = devm_pinctrl_get(lvds->dev);
-	if (IS_ERR(lvds->pins->p)) {
-		DRM_DEV_ERROR(dev, "no pinctrl handle\n");
-		devm_kfree(lvds->dev, lvds->pins);
-		lvds->pins = NULL;
-	} else {
-		lvds->pins->default_state =
-			pinctrl_lookup_state(lvds->pins->p, "lcdc");
-		if (IS_ERR(lvds->pins->default_state)) {
-			DRM_DEV_ERROR(dev, "no default pinctrl state\n");
-			devm_kfree(lvds->dev, lvds->pins);
-			lvds->pins = NULL;
-		}
-	}
-
 	lvds->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
 						    "rockchip,grf");
 	if (IS_ERR(lvds->grf)) {
@@ -542,13 +561,14 @@ static int rockchip_lvds_probe(struct platform_device *pdev)
 		return PTR_ERR(lvds->grf);
 	}
 
+	ret = lvds->soc_data->probe(pdev, lvds);
+	if (ret) {
+		DRM_DEV_ERROR(dev, "Platform initialization failed\n");
+		return ret;
+	}
+
 	dev_set_drvdata(dev, lvds);
 
-	ret = clk_prepare(lvds->pclk);
-	if (ret < 0) {
-		DRM_DEV_ERROR(dev, "failed to prepare pclk_lvds\n");
-		return ret;
-	}
 	ret = component_add(&pdev->dev, &rockchip_lvds_component_ops);
 	if (ret < 0) {
 		DRM_DEV_ERROR(dev, "failed to add component\n");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
