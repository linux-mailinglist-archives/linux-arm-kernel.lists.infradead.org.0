Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 113C21BFA15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbFUVk1Hw8cg0O63nHeoyKyz1+G++j0KKa+hTHZTg78=; b=K/1STKg+b8gF71
	U3LAB3SFqTGM0gSSZlmOLjBU3ocyhRU5bGrtfJ1A9lwDT1kILI8HSEXTvGBtsCZg2Twwzsb0chH5m
	1h7NpO6ekiQ4afZpKxxjoHQuKO6ARMtgN8+2VTdPY6WOT9yraoUBMslIiLDAJUeMS9lYxLnT8+r1L
	4NTqadrswel/nbnC9i+Q8RWsSei7N8xYI4AmahNCK17Ou9qN1FS6qc3A+oFHOOc6mGpTnQOo0VArC
	5gn636ge01Gnd++EZvM6AokCzjaOm6MM1UuLRhXdNo4aLk+Ch9/mrqR4hAJcqs1m9SR/m1Ne6AbHC
	4mCoLtgVy/va/vfomZOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9b6-00008i-GW; Thu, 30 Apr 2020 13:51:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9aR-0008Me-N4; Thu, 30 Apr 2020 13:50:49 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CD0E20870;
 Thu, 30 Apr 2020 13:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588254647;
 bh=Xe0y0cDtMRZyEN2ZJvIc5rY7z05TCohRNzocgE76WF8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wDfFDhx3NbAElH6wCJoV5QjNTRlSYiTf3k9rNx3GJiwC9PRS/oguSHTJrAya9QBvI
 yof39TwQGKPw4DlEk6NtXB6Yvnz8qmYhPQSkpzJlsS8hRGq/BcL8ZmEHamE8vfv5DM
 pEMRvDWDHAEXjNsy42pihkQM9xm2Uh/HEzb5rtj8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 02/79] drm/bridge: analogix_dp: Split bind() into
 probe() and real bind()
Date: Thu, 30 Apr 2020 09:49:26 -0400
Message-Id: <20200430135043.19851-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200430135043.19851-1-sashal@kernel.org>
References: <20200430135043.19851-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_065047_801987_89E87DF3 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Szyprowski <m.szyprowski@samsung.com>

[ Upstream commit 83a196773b8bc6702f49df1eddc848180e350340 ]

Analogix_dp driver acquires all its resources in the ->bind() callback,
what is a bit against the component driver based approach, where the
driver initialization is split into a probe(), where all resources are
gathered, and a bind(), where all objects are created and a compound
driver is initialized.

Extract all the resource related operations to analogix_dp_probe() and
analogix_dp_remove(), then call them before/after registration of the
device components from the main Exynos DP and Rockchip DP drivers. Also
move the plat_data initialization to the probe() to make it available for
the analogix_dp_probe() function.

This fixes the multiple calls to the bind() of the DRM compound driver
when the DP PHY driver is not yet loaded/probed:

[drm] Exynos DRM: using 14400000.fimd device for DMA mapping operations
exynos-drm exynos-drm: bound 14400000.fimd (ops fimd_component_ops [exynosdrm])
exynos-drm exynos-drm: bound 14450000.mixer (ops mixer_component_ops [exynosdrm])
exynos-dp 145b0000.dp-controller: no DP phy configured
exynos-drm exynos-drm: failed to bind 145b0000.dp-controller (ops exynos_dp_ops [exynosdrm]): -517
exynos-drm exynos-drm: master bind failed: -517
...
[drm] Exynos DRM: using 14400000.fimd device for DMA mapping operations
exynos-drm exynos-drm: bound 14400000.fimd (ops hdmi_enable [exynosdrm])
exynos-drm exynos-drm: bound 14450000.mixer (ops hdmi_enable [exynosdrm])
exynos-drm exynos-drm: bound 145b0000.dp-controller (ops hdmi_enable [exynosdrm])
exynos-drm exynos-drm: bound 14530000.hdmi (ops hdmi_enable [exynosdrm])
[drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
Console: switching to colour frame buffer device 170x48
exynos-drm exynos-drm: fb0: exynosdrmfb frame buffer device
[drm] Initialized exynos 1.1.0 20180330 for exynos-drm on minor 1
...

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Acked-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
Signed-off-by: Andrzej Hajda <a.hajda@samsung.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20200310103427.26048-1-m.szyprowski@samsung.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 33 +++++++++++------
 drivers/gpu/drm/exynos/exynos_dp.c            | 29 ++++++++-------
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 36 ++++++++++---------
 include/drm/bridge/analogix_dp.h              |  5 +--
 4 files changed, 61 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 6effe532f8200..461eff94d2767 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1636,8 +1636,7 @@ static ssize_t analogix_dpaux_transfer(struct drm_dp_aux *aux,
 }
 
 struct analogix_dp_device *
-analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
-		 struct analogix_dp_plat_data *plat_data)
+analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct analogix_dp_device *dp;
@@ -1740,22 +1739,30 @@ analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 					irq_flags, "analogix-dp", dp);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to request irq\n");
-		goto err_disable_pm_runtime;
+		return ERR_PTR(ret);
 	}
 	disable_irq(dp->irq);
 
+	return dp;
+}
+EXPORT_SYMBOL_GPL(analogix_dp_probe);
+
+int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
+{
+	int ret;
+
 	dp->drm_dev = drm_dev;
 	dp->encoder = dp->plat_data->encoder;
 
 	dp->aux.name = "DP-AUX";
 	dp->aux.transfer = analogix_dpaux_transfer;
-	dp->aux.dev = &pdev->dev;
+	dp->aux.dev = dp->dev;
 
 	ret = drm_dp_aux_register(&dp->aux);
 	if (ret)
-		return ERR_PTR(ret);
+		return ret;
 
-	pm_runtime_enable(dev);
+	pm_runtime_enable(dp->dev);
 
 	ret = analogix_dp_create_bridge(drm_dev, dp);
 	if (ret) {
@@ -1763,13 +1770,12 @@ analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
 		goto err_disable_pm_runtime;
 	}
 
-	return dp;
+	return 0;
 
 err_disable_pm_runtime:
+	pm_runtime_disable(dp->dev);
 
-	pm_runtime_disable(dev);
-
-	return ERR_PTR(ret);
+	return ret;
 }
 EXPORT_SYMBOL_GPL(analogix_dp_bind);
 
@@ -1786,10 +1792,15 @@ void analogix_dp_unbind(struct analogix_dp_device *dp)
 
 	drm_dp_aux_unregister(&dp->aux);
 	pm_runtime_disable(dp->dev);
-	clk_disable_unprepare(dp->clock);
 }
 EXPORT_SYMBOL_GPL(analogix_dp_unbind);
 
+void analogix_dp_remove(struct analogix_dp_device *dp)
+{
+	clk_disable_unprepare(dp->clock);
+}
+EXPORT_SYMBOL_GPL(analogix_dp_remove);
+
 #ifdef CONFIG_PM
 int analogix_dp_suspend(struct analogix_dp_device *dp)
 {
diff --git a/drivers/gpu/drm/exynos/exynos_dp.c b/drivers/gpu/drm/exynos/exynos_dp.c
index 4785885c0f4f9..065a1cb2a5444 100644
--- a/drivers/gpu/drm/exynos/exynos_dp.c
+++ b/drivers/gpu/drm/exynos/exynos_dp.c
@@ -158,15 +158,8 @@ static int exynos_dp_bind(struct device *dev, struct device *master, void *data)
 	struct drm_device *drm_dev = data;
 	int ret;
 
-	dp->dev = dev;
 	dp->drm_dev = drm_dev;
 
-	dp->plat_data.dev_type = EXYNOS_DP;
-	dp->plat_data.power_on_start = exynos_dp_poweron;
-	dp->plat_data.power_off = exynos_dp_poweroff;
-	dp->plat_data.attach = exynos_dp_bridge_attach;
-	dp->plat_data.get_modes = exynos_dp_get_modes;
-
 	if (!dp->plat_data.panel && !dp->ptn_bridge) {
 		ret = exynos_dp_dt_parse_panel(dp);
 		if (ret)
@@ -184,13 +177,11 @@ static int exynos_dp_bind(struct device *dev, struct device *master, void *data)
 
 	dp->plat_data.encoder = encoder;
 
-	dp->adp = analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
-	if (IS_ERR(dp->adp)) {
+	ret = analogix_dp_bind(dp->adp, dp->drm_dev);
+	if (ret)
 		dp->encoder.funcs->destroy(&dp->encoder);
-		return PTR_ERR(dp->adp);
-	}
 
-	return 0;
+	return ret;
 }
 
 static void exynos_dp_unbind(struct device *dev, struct device *master,
@@ -221,6 +212,7 @@ static int exynos_dp_probe(struct platform_device *pdev)
 	if (!dp)
 		return -ENOMEM;
 
+	dp->dev = dev;
 	/*
 	 * We just use the drvdata until driver run into component
 	 * add function, and then we would set drvdata to null, so
@@ -246,16 +238,29 @@ static int exynos_dp_probe(struct platform_device *pdev)
 
 	/* The remote port can be either a panel or a bridge */
 	dp->plat_data.panel = panel;
+	dp->plat_data.dev_type = EXYNOS_DP;
+	dp->plat_data.power_on_start = exynos_dp_poweron;
+	dp->plat_data.power_off = exynos_dp_poweroff;
+	dp->plat_data.attach = exynos_dp_bridge_attach;
+	dp->plat_data.get_modes = exynos_dp_get_modes;
 	dp->plat_data.skip_connector = !!bridge;
+
 	dp->ptn_bridge = bridge;
 
 out:
+	dp->adp = analogix_dp_probe(dev, &dp->plat_data);
+	if (IS_ERR(dp->adp))
+		return PTR_ERR(dp->adp);
+
 	return component_add(&pdev->dev, &exynos_dp_ops);
 }
 
 static int exynos_dp_remove(struct platform_device *pdev)
 {
+	struct exynos_dp_device *dp = platform_get_drvdata(pdev);
+
 	component_del(&pdev->dev, &exynos_dp_ops);
+	analogix_dp_remove(dp->adp);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index f38f5e113c6b3..ce98c08aa8b44 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -325,15 +325,9 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 			    void *data)
 {
 	struct rockchip_dp_device *dp = dev_get_drvdata(dev);
-	const struct rockchip_dp_chip_data *dp_data;
 	struct drm_device *drm_dev = data;
 	int ret;
 
-	dp_data = of_device_get_match_data(dev);
-	if (!dp_data)
-		return -ENODEV;
-
-	dp->data = dp_data;
 	dp->drm_dev = drm_dev;
 
 	ret = rockchip_dp_drm_create_encoder(dp);
@@ -344,16 +338,9 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 
 	dp->plat_data.encoder = &dp->encoder;
 
-	dp->plat_data.dev_type = dp->data->chip_type;
-	dp->plat_data.power_on_start = rockchip_dp_poweron_start;
-	dp->plat_data.power_off = rockchip_dp_powerdown;
-	dp->plat_data.get_modes = rockchip_dp_get_modes;
-
-	dp->adp = analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
-	if (IS_ERR(dp->adp)) {
-		ret = PTR_ERR(dp->adp);
+	ret = analogix_dp_bind(dp->adp, drm_dev);
+	if (ret)
 		goto err_cleanup_encoder;
-	}
 
 	return 0;
 err_cleanup_encoder:
@@ -368,8 +355,6 @@ static void rockchip_dp_unbind(struct device *dev, struct device *master,
 
 	analogix_dp_unbind(dp->adp);
 	dp->encoder.funcs->destroy(&dp->encoder);
-
-	dp->adp = ERR_PTR(-ENODEV);
 }
 
 static const struct component_ops rockchip_dp_component_ops = {
@@ -380,10 +365,15 @@ static const struct component_ops rockchip_dp_component_ops = {
 static int rockchip_dp_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	const struct rockchip_dp_chip_data *dp_data;
 	struct drm_panel *panel = NULL;
 	struct rockchip_dp_device *dp;
 	int ret;
 
+	dp_data = of_device_get_match_data(dev);
+	if (!dp_data)
+		return -ENODEV;
+
 	ret = drm_of_find_panel_or_bridge(dev->of_node, 1, 0, &panel, NULL);
 	if (ret < 0)
 		return ret;
@@ -394,7 +384,12 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 
 	dp->dev = dev;
 	dp->adp = ERR_PTR(-ENODEV);
+	dp->data = dp_data;
 	dp->plat_data.panel = panel;
+	dp->plat_data.dev_type = dp->data->chip_type;
+	dp->plat_data.power_on_start = rockchip_dp_poweron_start;
+	dp->plat_data.power_off = rockchip_dp_powerdown;
+	dp->plat_data.get_modes = rockchip_dp_get_modes;
 
 	ret = rockchip_dp_of_probe(dp);
 	if (ret < 0)
@@ -402,12 +397,19 @@ static int rockchip_dp_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, dp);
 
+	dp->adp = analogix_dp_probe(dev, &dp->plat_data);
+	if (IS_ERR(dp->adp))
+		return PTR_ERR(dp->adp);
+
 	return component_add(dev, &rockchip_dp_component_ops);
 }
 
 static int rockchip_dp_remove(struct platform_device *pdev)
 {
+	struct rockchip_dp_device *dp = platform_get_drvdata(pdev);
+
 	component_del(&pdev->dev, &rockchip_dp_component_ops);
+	analogix_dp_remove(dp->adp);
 
 	return 0;
 }
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 7aa2f93da49ca..b0dcc07334a1e 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -42,9 +42,10 @@ int analogix_dp_resume(struct analogix_dp_device *dp);
 int analogix_dp_suspend(struct analogix_dp_device *dp);
 
 struct analogix_dp_device *
-analogix_dp_bind(struct device *dev, struct drm_device *drm_dev,
-		 struct analogix_dp_plat_data *plat_data);
+analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data);
+int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev);
 void analogix_dp_unbind(struct analogix_dp_device *dp);
+void analogix_dp_remove(struct analogix_dp_device *dp);
 
 int analogix_dp_start_crc(struct drm_connector *connector);
 int analogix_dp_stop_crc(struct drm_connector *connector);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
