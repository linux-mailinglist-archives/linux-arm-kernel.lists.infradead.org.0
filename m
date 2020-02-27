Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFD517234B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:25:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gmbgAswVFDgxo7SQl88m6fq8oIhZ6SeG/LmiH+DHi4=; b=fGC2WT4hHh4zia
	ME7ngEZf9gtjr7RZyQuanNEklVS6oh+jlqOD8QtxZyeNgXgj2GhtvqobwqiBZUjJpZS4yfIZzeOiL
	OFlroUL8VSClXFSuZYnwSKYlonLZQoMzjTwNsP84ICLNm+2STH0j1cFBsvdPbkdtmHfaPw0dDM2QF
	GzcoalKmMgzAZGPshzixNjyC5g0WnT+YC6sIFHftdbe1+e2gONKslF1XAxCAOOHf6tn9NkmoQom1i
	JXUibDjRuV+melBpWpR3C5vP2GHa1e/QqW9i6TQaXPEPnP5IUBbNxtByQeguhIvOrv4thtrBh4nt8
	kRbBw6Q80fRoY9UkrhHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Lyp-0004k5-DN; Thu, 27 Feb 2020 16:25:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7LvX-0001UO-8G
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:22:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Lum-0001sQ-8U; Thu, 27 Feb 2020 17:21:32 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Luk-0007q1-DR; Thu, 27 Feb 2020 17:21:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 08/17] drm/imx: tve: split global state container
Date: Thu, 27 Feb 2020 17:21:16 +0100
Message-Id: <20200227162125.10450-9-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227162125.10450-1-m.felsch@pengutronix.de>
References: <20200227162125.10450-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_082219_463816_DE2A7A51 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The race condition reported by [1] applies to the tve driver too but
currently no errors reported. We need to split the connector state from
the encoder state. Furthermore we have to switch from the devres-kmalloc
and the component framework to a 'normal' kmalloc and the drm framework
release mechanism for the DRM containers. All other resources should
still be allocated using the devres-* accessors.

This commit prepares the driver for the kmalloc switch and splits the
resource allocation from the .bind() callback. This improves the drm
master device bind() too because most resources are allocated during
probe.

While on it I dropped the imx_drm_encoder_destroy() API and call
drm_encoder_cleanup() directly.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpu/drm/imx/imx-tve.c | 145 +++++++++++++++++++++++-----------
 1 file changed, 101 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/imx/imx-tve.c b/drivers/gpu/drm/imx/imx-tve.c
index 3340ba6e0222..a7a05c47f68b 100644
--- a/drivers/gpu/drm/imx/imx-tve.c
+++ b/drivers/gpu/drm/imx/imx-tve.c
@@ -100,8 +100,6 @@ enum {
 };
 
 struct imx_tve {
-	struct drm_connector connector;
-	struct drm_encoder encoder;
 	struct device *dev;
 	spinlock_t lock;	/* register lock */
 	bool enabled;
@@ -111,21 +109,38 @@ struct imx_tve {
 
 	struct regmap *regmap;
 	struct regulator *dac_reg;
-	struct i2c_adapter *ddc;
 	struct clk *clk;
 	struct clk *di_sel_clk;
 	struct clk_hw clk_hw_di;
 	struct clk *di_clk;
 };
 
-static inline struct imx_tve *con_to_tve(struct drm_connector *c)
+struct imx_tve_encoder {
+	struct drm_encoder encoder;
+	struct imx_tve *tve;
+};
+
+struct imx_tve_connector {
+	struct drm_connector connector;
+	struct imx_tve *tve;
+	struct i2c_adapter *ddc;
+};
+
+static inline struct imx_tve_connector *con_to_tvec(struct drm_connector *c)
+{
+	return container_of(c, struct imx_tve_connector, connector);
+}
+
+static inline struct imx_tve_encoder *enc_to_tvee(struct drm_encoder *e)
 {
-	return container_of(c, struct imx_tve, connector);
+	return container_of(e, struct imx_tve_encoder, encoder);
 }
 
 static inline struct imx_tve *enc_to_tve(struct drm_encoder *e)
 {
-	return container_of(e, struct imx_tve, encoder);
+	struct imx_tve_encoder *tvee = enc_to_tvee(e);
+
+	return tvee->tve;
 }
 
 static void tve_lock(void *__tve)
@@ -218,16 +233,26 @@ static int tve_setup_vga(struct imx_tve *tve)
 				 TVE_TVDAC_TEST_MODE_MASK, 1);
 }
 
+static void imx_tve_connector_destroy(struct drm_connector *connector)
+{
+	struct imx_tve_connector *tvec = con_to_tvec(connector);
+
+	imx_drm_connector_destroy(connector);
+	i2c_put_adapter(tvec->ddc);
+	/* avoid dangling pointers */
+	tvec->tve = NULL;
+}
+
 static int imx_tve_connector_get_modes(struct drm_connector *connector)
 {
-	struct imx_tve *tve = con_to_tve(connector);
+	struct imx_tve_connector *tvec = con_to_tvec(connector);
 	struct edid *edid;
 	int ret = 0;
 
-	if (!tve->ddc)
+	if (!tvec->ddc)
 		return 0;
 
-	edid = drm_get_edid(connector, tve->ddc);
+	edid = drm_get_edid(connector, tvec->ddc);
 	if (edid) {
 		drm_connector_update_edid_property(connector, edid);
 		ret = drm_add_edid_modes(connector, edid);
@@ -240,7 +265,8 @@ static int imx_tve_connector_get_modes(struct drm_connector *connector)
 static int imx_tve_connector_mode_valid(struct drm_connector *connector,
 					struct drm_display_mode *mode)
 {
-	struct imx_tve *tve = con_to_tve(connector);
+	struct imx_tve_connector *tvec = con_to_tvec(connector);
+	struct imx_tve *tve = tvec->tve;
 	unsigned long rate;
 
 	/* pixel clock with 2x oversampling */
@@ -259,6 +285,15 @@ static int imx_tve_connector_mode_valid(struct drm_connector *connector,
 	return MODE_BAD;
 }
 
+static void imx_tve_encoder_destroy(struct drm_encoder *encoder)
+{
+	struct imx_tve_encoder *tvee = enc_to_tvee(encoder);
+
+	drm_encoder_cleanup(encoder);
+	/* avoid dangling pointers */
+	tvee->tve = NULL;
+}
+
 static void imx_tve_encoder_mode_set(struct drm_encoder *encoder,
 				     struct drm_display_mode *orig_mode,
 				     struct drm_display_mode *mode)
@@ -328,7 +363,7 @@ static int imx_tve_atomic_check(struct drm_encoder *encoder,
 
 static const struct drm_connector_funcs imx_tve_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = imx_drm_connector_destroy,
+	.destroy = imx_tve_connector_destroy,
 	.reset = drm_atomic_helper_connector_reset,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
@@ -340,7 +375,7 @@ static const struct drm_connector_helper_funcs imx_tve_connector_helper_funcs =
 };
 
 static const struct drm_encoder_funcs imx_tve_encoder_funcs = {
-	.destroy = imx_drm_encoder_destroy,
+	.destroy = imx_tve_encoder_destroy,
 };
 
 static const struct drm_encoder_helper_funcs imx_tve_encoder_helper_funcs = {
@@ -457,30 +492,31 @@ static int tve_clk_init(struct imx_tve *tve, void __iomem *base)
 	return 0;
 }
 
-static int imx_tve_register(struct drm_device *drm, struct imx_tve *tve)
+static int imx_tve_register(struct drm_device *drm,
+			    struct imx_tve_encoder *tvee,
+			    struct imx_tve_connector *tvec)
 {
+	struct imx_tve *tve = tvee->tve;
+	struct drm_encoder *encoder = &tvee->encoder;
+	struct drm_connector *connector = &tvec->connector;
 	int encoder_type;
 	int ret;
 
 	encoder_type = tve->mode == TVE_MODE_VGA ?
 				DRM_MODE_ENCODER_DAC : DRM_MODE_ENCODER_TVDAC;
 
-	ret = imx_drm_encoder_parse_of(drm, &tve->encoder, tve->dev->of_node);
+	ret = imx_drm_encoder_parse_of(drm, encoder, tve->dev->of_node);
 	if (ret)
 		return ret;
 
-	drm_encoder_helper_add(&tve->encoder, &imx_tve_encoder_helper_funcs);
-	drm_encoder_init(drm, &tve->encoder, &imx_tve_encoder_funcs,
-			 encoder_type, NULL);
+	drm_encoder_helper_add(encoder, &imx_tve_encoder_helper_funcs);
+	drm_encoder_init(drm, encoder, &imx_tve_encoder_funcs, encoder_type, NULL);
 
-	drm_connector_helper_add(&tve->connector,
-			&imx_tve_connector_helper_funcs);
-	drm_connector_init_with_ddc(drm, &tve->connector,
-				    &imx_tve_connector_funcs,
-				    DRM_MODE_CONNECTOR_VGA,
-				    tve->ddc);
+	drm_connector_helper_add(connector, &imx_tve_connector_helper_funcs);
+	drm_connector_init_with_ddc(drm, connector, &imx_tve_connector_funcs,
+				    DRM_MODE_CONNECTOR_VGA, tvec->ddc);
 
-	drm_connector_attach_encoder(&tve->connector, &tve->encoder);
+	drm_connector_attach_encoder(connector, encoder);
 
 	return 0;
 }
@@ -533,10 +569,50 @@ static const int of_get_tve_mode(struct device_node *np)
 
 static int imx_tve_bind(struct device *dev, struct device *master, void *data)
 {
-	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = data;
 	struct device_node *np = dev->of_node;
+	struct imx_tve *imx_tve = dev_get_drvdata(dev);
 	struct device_node *ddc_node;
+	struct imx_tve_encoder *tvee;
+	struct imx_tve_connector *tvec;
+	int ret;
+
+	tvee = devm_kzalloc(dev, sizeof(*tvee), GFP_KERNEL);
+	if (!tvee)
+		return -ENOMEM;
+
+	tvec = devm_kzalloc(dev, sizeof(*tvec), GFP_KERNEL);
+	if (!tvec)
+		return -ENOMEM;
+
+	tvee->tve = imx_tve;
+	tvec->tve = imx_tve;
+
+	ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
+	if (ddc_node) {
+		tvec->ddc = of_find_i2c_adapter_by_node(ddc_node);
+		of_node_put(ddc_node);
+	}
+
+	ret = imx_tve_register(drm, tvee, tvec);
+	if (ret)
+		goto err_put_ddc;
+
+	return 0;
+
+err_put_ddc:
+	i2c_put_adapter(tvec->ddc);
+	return ret;
+}
+
+static const struct component_ops imx_tve_ops = {
+	.bind	= imx_tve_bind,
+};
+
+static int imx_tve_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
 	struct imx_tve *tve;
 	struct resource *res;
 	void __iomem *base;
@@ -551,12 +627,6 @@ static int imx_tve_bind(struct device *dev, struct device *master, void *data)
 	tve->dev = dev;
 	spin_lock_init(&tve->lock);
 
-	ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
-	if (ddc_node) {
-		tve->ddc = of_find_i2c_adapter_by_node(ddc_node);
-		of_node_put(ddc_node);
-	}
-
 	tve->mode = of_get_tve_mode(np);
 	if (tve->mode != TVE_MODE_VGA) {
 		dev_err(dev, "only VGA mode supported, currently\n");
@@ -656,21 +726,8 @@ static int imx_tve_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
-	ret = imx_tve_register(drm, tve);
-	if (ret)
-		return ret;
-
 	dev_set_drvdata(dev, tve);
 
-	return 0;
-}
-
-static const struct component_ops imx_tve_ops = {
-	.bind	= imx_tve_bind,
-};
-
-static int imx_tve_probe(struct platform_device *pdev)
-{
 	return component_add(&pdev->dev, &imx_tve_ops);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
