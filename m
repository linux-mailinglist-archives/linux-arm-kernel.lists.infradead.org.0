Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70E012A82E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 14:21:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WDfIRQgJLHYqaxrOym/U2hc5LNMmQCuU0WrA5lA4icw=; b=NO+RoHFn6HjIdw
	GtLU9doCiDNBr0n5Ko+r6GXFiHSGT3z7SzfbI2azh7E5HJTnCW15ioVRzVeciad7mu1epxcaN6TuN
	s9m1xRMW35klgintyb6WJlXRDNFzcXjJOX/KRu8qxU+jB1XQekBcn3dFJqXUmoCs2+EFnBu7DCx1s
	X2L108EmDo67v+NuHTr3V2p2aSOP6iSB0CHErh05yKGXRYN2IOmhVnub9O4hRRGEMWLUGavA4isRU
	OEHiBVhb/Hkls3TVSjnMCSNLXnqivGM95rk89Vj78dMHILGlDFO4BZ5P6TnojZxgvVyAZ5+JadnXq
	WPDAEany6zEv2ITdnaAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik6bi-0003EM-V4; Wed, 25 Dec 2019 13:21:46 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik6bb-0003DS-U4
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 13:21:42 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2C19D3222DBB212D927A;
 Wed, 25 Dec 2019 21:21:26 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Wed, 25 Dec 2019
 21:21:16 +0800
From: yu kuai <yukuai3@huawei.com>
To: <tomi.valkeinen@ti.com>, <airlied@linux.ie>, <daniel@ffwll.ch>,
 <mripard@kernel.org>, <wens@csie.org>, <jernej.skrabec@siol.net>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
Subject: [PATCH] drm: replace IS_ERR and PTR_ERR with PTR_ERR_OR_ZERO
Date: Wed, 25 Dec 2019 21:20:42 +0800
Message-ID: <20191225132042.5491-1-yukuai3@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_052140_137634_0E86D7F5 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: yi.zhang@huawei.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, zhengbin13@huawei.com,
 linux-tegra@vger.kernel.org, yukuai3@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

no functional change, just to make the code simpler

Signed-off-by: yu kuai <yukuai3@huawei.com>
---
 drivers/gpu/drm/omapdrm/dss/hdmi4.c         | 5 +----
 drivers/gpu/drm/omapdrm/dss/hdmi4_core.c    | 6 ++----
 drivers/gpu/drm/omapdrm/dss/hdmi5_core.c    | 4 +---
 drivers/gpu/drm/omapdrm/dss/hdmi_phy.c      | 4 +---
 drivers/gpu/drm/sun4i/sun4i_dotclock.c      | 4 +---
 drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c      | 4 +---
 drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c | 4 +---
 drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c  | 5 +----
 drivers/gpu/drm/tegra/drm.c                 | 4 +---
 drivers/gpu/drm/tegra/gem.c                 | 4 +---
 10 files changed, 11 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi4.c b/drivers/gpu/drm/omapdrm/dss/hdmi4.c
index 0f557fad4513..eb71baedf19e 100644
--- a/drivers/gpu/drm/omapdrm/dss/hdmi4.c
+++ b/drivers/gpu/drm/omapdrm/dss/hdmi4.c
@@ -587,10 +587,7 @@ static int hdmi_audio_register(struct omap_hdmi *hdmi)
 		&hdmi->pdev->dev, "omap-hdmi-audio", PLATFORM_DEVID_AUTO,
 		&pdata, sizeof(pdata));
 
-	if (IS_ERR(hdmi->audio_pdev))
-		return PTR_ERR(hdmi->audio_pdev);
-
-	return 0;
+	return PTR_ERR_OR_ZERO(hdmi->audio_pdev);
 }
 
 /* -----------------------------------------------------------------------------
diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c b/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c
index ea5d5c228534..fdd73fb73653 100644
--- a/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c
+++ b/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c
@@ -924,8 +924,6 @@ int hdmi4_core_init(struct platform_device *pdev, struct hdmi_core_data *core)
 
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "core");
 	core->base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(core->base))
-		return PTR_ERR(core->base);
-
-	return 0;
+
+	return PTR_ERR_OR_ZERO(core->base);
 }
diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c b/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c
index ff4d35c8771f..30454bc9de78 100644
--- a/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c
+++ b/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c
@@ -908,8 +908,6 @@ int hdmi5_core_init(struct platform_device *pdev, struct hdmi_core_data *core)
 
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "core");
 	core->base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(core->base))
-		return PTR_ERR(core->base);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(core->base);
 }
diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c b/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c
index 00bbf24488c1..bbc02d5aa8fb 100644
--- a/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c
+++ b/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c
@@ -191,8 +191,6 @@ int hdmi_phy_init(struct platform_device *pdev, struct hdmi_phy_data *phy,
 
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
 	phy->base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(phy->base))
-		return PTR_ERR(phy->base);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(phy->base);
 }
diff --git a/drivers/gpu/drm/sun4i/sun4i_dotclock.c b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
index 417ade3d2565..84c04d8192b3 100644
--- a/drivers/gpu/drm/sun4i/sun4i_dotclock.c
+++ b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
@@ -191,10 +191,8 @@ int sun4i_dclk_create(struct device *dev, struct sun4i_tcon *tcon)
 	dclk->hw.init = &init;
 
 	tcon->dclk = clk_register(dev, &dclk->hw);
-	if (IS_ERR(tcon->dclk))
-		return PTR_ERR(tcon->dclk);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(tcon->dclk);
 }
 EXPORT_SYMBOL(sun4i_dclk_create);
 
diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
index b66fa27fe6ea..12a7b7b1c99c 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
@@ -278,10 +278,8 @@ static int sun4i_hdmi_init_regmap_fields(struct sun4i_hdmi *hdmi)
 	hdmi->field_ddc_sck_en =
 		devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
 					hdmi->variant->field_ddc_sck_en);
-	if (IS_ERR(hdmi->field_ddc_sck_en))
-		return PTR_ERR(hdmi->field_ddc_sck_en);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(hdmi->field_ddc_sck_en);
 }
 
 int sun4i_hdmi_i2c_create(struct device *dev, struct sun4i_hdmi *hdmi)
diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c
index fbf7da9d9592..41044f013933 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c
@@ -229,8 +229,6 @@ int sun4i_tmds_create(struct sun4i_hdmi *hdmi)
 	tmds->div_offset = hdmi->variant->tmds_clk_div_offset;
 
 	hdmi->tmds_clk = devm_clk_register(hdmi->dev, &tmds->hw);
-	if (IS_ERR(hdmi->tmds_clk))
-		return PTR_ERR(hdmi->tmds_clk);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(hdmi->tmds_clk);
 }
diff --git a/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c b/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c
index a4d31fe3abff..0456b9c144ba 100644
--- a/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c
+++ b/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c
@@ -169,10 +169,7 @@ int sun8i_phy_clk_create(struct sun8i_hdmi_phy *phy, struct device *dev,
 
 	priv->phy = phy;
 	priv->hw.init = &init;
-
 	phy->clk_phy = devm_clk_register(dev, &priv->hw);
-	if (IS_ERR(phy->clk_phy))
-		return PTR_ERR(phy->clk_phy);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(phy->clk_phy);
 }
diff --git a/drivers/gpu/drm/tegra/drm.c b/drivers/gpu/drm/tegra/drm.c
index f455ce71e85d..15be6bfdfe0b 100644
--- a/drivers/gpu/drm/tegra/drm.c
+++ b/drivers/gpu/drm/tegra/drm.c
@@ -347,10 +347,8 @@ static int tegra_gem_create(struct drm_device *drm, void *data,
 
 	bo = tegra_bo_create_with_handle(file, drm, args->size, args->flags,
 					 &args->handle);
-	if (IS_ERR(bo))
-		return PTR_ERR(bo);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(bo);
 }
 
 static int tegra_gem_mmap(struct drm_device *drm, void *data,
diff --git a/drivers/gpu/drm/tegra/gem.c b/drivers/gpu/drm/tegra/gem.c
index 1237df157e05..0a1c96129b2f 100644
--- a/drivers/gpu/drm/tegra/gem.c
+++ b/drivers/gpu/drm/tegra/gem.c
@@ -462,10 +462,8 @@ int tegra_bo_dumb_create(struct drm_file *file, struct drm_device *drm,
 
 	bo = tegra_bo_create_with_handle(file, drm, args->size, 0,
 					 &args->handle);
-	if (IS_ERR(bo))
-		return PTR_ERR(bo);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(bo);
 }
 
 static vm_fault_t tegra_bo_fault(struct vm_fault *vmf)
-- 
2.17.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
