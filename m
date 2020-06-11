Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 140921F6811
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 14:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kVeJRHfvMcY0MhQVZ85Kqs1ORxTuW8OQrsEyhlO1Nbo=; b=FWzbigT4tHE4wD
	YHlnojGSJCmdd04wjm3IK1sqDNhWOECSjS++jcDYYY0YZqyuAL8W2oB8CMdmQq1TA2NSKH2WDcV5V
	cbJOxDLjRgB335C894dO+N9ipauX3SCFshZirixThT+YyiQiSi95Og+zEwJmjUgSOk9Ej0wILVXqE
	kiVUtCKdng/DDAVLdtHxUxIF032js0kl6i2J1vdXJflr+NyyOtPF55oUtVPU0YSVSrtToc3yKrIsl
	pVN6E43EO4/wtVBDv/FzDz0pTOtI+rspRqZy+9LhbaXac1HS3tluRr87Gmm5Xp0fO3SwimypueJoc
	kQbj3eSOr02gYvruk5NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjMZO-0002cC-Ds; Thu, 11 Jun 2020 12:44:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjMYg-0002GJ-RI
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 12:43:53 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jjMYV-0004eT-F1; Thu, 11 Jun 2020 14:43:39 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jjMYT-0005Qu-77; Thu, 11 Jun 2020 14:43:37 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 1/2] drm/imx: fix use after free
Date: Thu, 11 Jun 2020 14:43:31 +0200
Message-Id: <20200611124332.20819-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_054351_073359_8A22DF95 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

Component driver structures allocated with devm_kmalloc() in bind() are
freed automatically after unbind(). Since the contained drm structures
are accessed afterwards in drm_mode_config_cleanup(), move the
allocation into probe() to extend the driver structure's lifetime to the
lifetime of the device. This should eventually be changed to use drm
resource managed allocations with lifetime of the drm device.

We also need to ensure that all componets are available during the
unbind() so we need to call component_unbind_all() before we free
non-devres resources like planes.

Note this patch fixes the the use after free bug but introduces a
possible boot loop issue. The issue is triggered if the HDMI support is
enabled and a component driver always return -EPROBE_DEFER, see
discussion [1] for more details.

[1] https://lkml.org/lkml/2020/3/24/1467

Fixes: 17b5001b5143 ("imx-drm: convert to componentised device support")
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
[m.felsch@pengutronix: fix imx_tve_probe()]
[m.felsch@pengutronix: resort component_unbind_all())
[m.felsch@pengutronix: adapt commit message]
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

I've tested this patch on the imx6 based h100 and the imx53 based qsb
evk. My tests cases were:

 - Bind / Unbind driver
 - Correct error handling during bind() calls

Other testers are welcome =)

Regards,
  Marco

 drivers/gpu/drm/imx/dw_hdmi-imx.c      | 15 ++++++++++-----
 drivers/gpu/drm/imx/imx-drm-core.c     |  3 ++-
 drivers/gpu/drm/imx/imx-ldb.c          | 15 ++++++++++-----
 drivers/gpu/drm/imx/imx-tve.c          | 15 ++++++++++-----
 drivers/gpu/drm/imx/ipuv3-crtc.c       | 21 ++++++++++-----------
 drivers/gpu/drm/imx/parallel-display.c | 15 ++++++++++-----
 6 files changed, 52 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/imx/dw_hdmi-imx.c b/drivers/gpu/drm/imx/dw_hdmi-imx.c
index f22cfbf9353e..2e12a4a3bfa1 100644
--- a/drivers/gpu/drm/imx/dw_hdmi-imx.c
+++ b/drivers/gpu/drm/imx/dw_hdmi-imx.c
@@ -212,9 +212,8 @@ static int dw_hdmi_imx_bind(struct device *dev, struct device *master,
 	if (!pdev->dev.of_node)
 		return -ENODEV;
 
-	hdmi = devm_kzalloc(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
-	if (!hdmi)
-		return -ENOMEM;
+	hdmi = dev_get_drvdata(dev);
+	memset(hdmi, 0, sizeof(*hdmi));
 
 	match = of_match_node(dw_hdmi_imx_dt_ids, pdev->dev.of_node);
 	plat_data = match->data;
@@ -239,8 +238,6 @@ static int dw_hdmi_imx_bind(struct device *dev, struct device *master,
 	drm_encoder_init(drm, encoder, &dw_hdmi_imx_encoder_funcs,
 			 DRM_MODE_ENCODER_TMDS, NULL);
 
-	platform_set_drvdata(pdev, hdmi);
-
 	hdmi->hdmi = dw_hdmi_bind(pdev, encoder, plat_data);
 
 	/*
@@ -270,6 +267,14 @@ static const struct component_ops dw_hdmi_imx_ops = {
 
 static int dw_hdmi_imx_probe(struct platform_device *pdev)
 {
+	struct imx_hdmi *hdmi;
+
+	hdmi = devm_kzalloc(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
+	if (!hdmi)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, hdmi);
+
 	return component_add(&pdev->dev, &dw_hdmi_imx_ops);
 }
 
diff --git a/drivers/gpu/drm/imx/imx-drm-core.c b/drivers/gpu/drm/imx/imx-drm-core.c
index da87c70e413b..881c36d0f16b 100644
--- a/drivers/gpu/drm/imx/imx-drm-core.c
+++ b/drivers/gpu/drm/imx/imx-drm-core.c
@@ -281,9 +281,10 @@ static void imx_drm_unbind(struct device *dev)
 
 	drm_kms_helper_poll_fini(drm);
 
+	component_unbind_all(drm->dev, drm);
+
 	drm_mode_config_cleanup(drm);
 
-	component_unbind_all(drm->dev, drm);
 	dev_set_drvdata(dev, NULL);
 
 	drm_dev_put(drm);
diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
index 4da22a94790c..8e209117b049 100644
--- a/drivers/gpu/drm/imx/imx-ldb.c
+++ b/drivers/gpu/drm/imx/imx-ldb.c
@@ -594,9 +594,8 @@ static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 	int ret;
 	int i;
 
-	imx_ldb = devm_kzalloc(dev, sizeof(*imx_ldb), GFP_KERNEL);
-	if (!imx_ldb)
-		return -ENOMEM;
+	imx_ldb = dev_get_drvdata(dev);
+	memset(imx_ldb, 0, sizeof(*imx_ldb));
 
 	imx_ldb->regmap = syscon_regmap_lookup_by_phandle(np, "gpr");
 	if (IS_ERR(imx_ldb->regmap)) {
@@ -704,8 +703,6 @@ static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 		}
 	}
 
-	dev_set_drvdata(dev, imx_ldb);
-
 	return 0;
 
 free_child:
@@ -737,6 +734,14 @@ static const struct component_ops imx_ldb_ops = {
 
 static int imx_ldb_probe(struct platform_device *pdev)
 {
+	struct imx_ldb *imx_ldb;
+
+	imx_ldb = devm_kzalloc(&pdev->dev, sizeof(*imx_ldb), GFP_KERNEL);
+	if (!imx_ldb)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, imx_ldb);
+
 	return component_add(&pdev->dev, &imx_ldb_ops);
 }
 
diff --git a/drivers/gpu/drm/imx/imx-tve.c b/drivers/gpu/drm/imx/imx-tve.c
index 5bbfaa2cd0f4..9fd4b464e829 100644
--- a/drivers/gpu/drm/imx/imx-tve.c
+++ b/drivers/gpu/drm/imx/imx-tve.c
@@ -546,9 +546,8 @@ static int imx_tve_bind(struct device *dev, struct device *master, void *data)
 	int irq;
 	int ret;
 
-	tve = devm_kzalloc(dev, sizeof(*tve), GFP_KERNEL);
-	if (!tve)
-		return -ENOMEM;
+	tve = dev_get_drvdata(dev);
+	memset(tve, 0, sizeof(*tve));
 
 	tve->dev = dev;
 	spin_lock_init(&tve->lock);
@@ -659,8 +658,6 @@ static int imx_tve_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	dev_set_drvdata(dev, tve);
-
 	return 0;
 }
 
@@ -680,6 +677,14 @@ static const struct component_ops imx_tve_ops = {
 
 static int imx_tve_probe(struct platform_device *pdev)
 {
+	struct imx_tve *tve;
+
+	tve = devm_kzalloc(&pdev->dev, sizeof(*tve), GFP_KERNEL);
+	if (!tve)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, tve);
+
 	return component_add(&pdev->dev, &imx_tve_ops);
 }
 
diff --git a/drivers/gpu/drm/imx/ipuv3-crtc.c b/drivers/gpu/drm/imx/ipuv3-crtc.c
index 63c0284f8b3c..2256c9789fc2 100644
--- a/drivers/gpu/drm/imx/ipuv3-crtc.c
+++ b/drivers/gpu/drm/imx/ipuv3-crtc.c
@@ -438,21 +438,13 @@ static int ipu_drm_bind(struct device *dev, struct device *master, void *data)
 	struct ipu_client_platformdata *pdata = dev->platform_data;
 	struct drm_device *drm = data;
 	struct ipu_crtc *ipu_crtc;
-	int ret;
 
-	ipu_crtc = devm_kzalloc(dev, sizeof(*ipu_crtc), GFP_KERNEL);
-	if (!ipu_crtc)
-		return -ENOMEM;
+	ipu_crtc = dev_get_drvdata(dev);
+	memset(ipu_crtc, 0, sizeof(*ipu_crtc));
 
 	ipu_crtc->dev = dev;
 
-	ret = ipu_crtc_init(ipu_crtc, pdata, drm);
-	if (ret)
-		return ret;
-
-	dev_set_drvdata(dev, ipu_crtc);
-
-	return 0;
+	return ipu_crtc_init(ipu_crtc, pdata, drm);
 }
 
 static void ipu_drm_unbind(struct device *dev, struct device *master,
@@ -474,6 +466,7 @@ static const struct component_ops ipu_crtc_ops = {
 static int ipu_drm_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct ipu_crtc *ipu_crtc;
 	int ret;
 
 	if (!dev->platform_data)
@@ -483,6 +476,12 @@ static int ipu_drm_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ipu_crtc = devm_kzalloc(dev, sizeof(*ipu_crtc), GFP_KERNEL);
+	if (!ipu_crtc)
+		return -ENOMEM;
+
+	dev_set_drvdata(dev, ipu_crtc);
+
 	return component_add(dev, &ipu_crtc_ops);
 }
 
diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index 08fafa4bf8c2..43e109d67fe3 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -330,9 +330,8 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
 	u32 bus_format = 0;
 	const char *fmt;
 
-	imxpd = devm_kzalloc(dev, sizeof(*imxpd), GFP_KERNEL);
-	if (!imxpd)
-		return -ENOMEM;
+	imxpd = dev_get_drvdata(dev);
+	memset(imxpd, 0, sizeof(*imxpd));
 
 	edidp = of_get_property(np, "edid", &imxpd->edid_len);
 	if (edidp)
@@ -363,8 +362,6 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	dev_set_drvdata(dev, imxpd);
-
 	return 0;
 }
 
@@ -386,6 +383,14 @@ static const struct component_ops imx_pd_ops = {
 
 static int imx_pd_probe(struct platform_device *pdev)
 {
+	struct imx_parallel_display *imxpd;
+
+	imxpd = devm_kzalloc(&pdev->dev, sizeof(*imxpd), GFP_KERNEL);
+	if (!imxpd)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, imxpd);
+
 	return component_add(&pdev->dev, &imx_pd_ops);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
