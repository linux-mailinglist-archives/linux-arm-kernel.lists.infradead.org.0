Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6552E17232F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:24:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CriBJImzYYEhwGMbLSXjzZOZnzY8j2fGJRYeiq1juqw=; b=KfF6e0g0uya6rZ
	0lf1bXdixTBFkePdEoD7r8ll6O/KtdOwYjA1oISn9MGemFb2s7fB6sUS+n0JfLVE5ag8HAAWjXuz+
	gLfI5VwnIgnOABBOoefWoZDvz1rsDMDetth/aTwo36aBUQx8jH0ZnbawMPd+6tvqZviNPpb2q2T4s
	JSzA+RiCbg2wL8aLSJGe2t1LO/3/Vfwzv8YQob1HrGi9MAmEz9Vp5zeBg8NPjDUjMQ89FrMJ1uI2f
	B7If8pzjeCH8E6jhwvjFIQqo4vKXJm+Dkuo4i43HNqgD8DQr7UranCEFwm8SCw5quDyFdGH3hNrXO
	eSdRzUYsd8I1v9HpFcVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Lx9-0002eS-U0; Thu, 27 Feb 2020 16:24:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Lv0-00011T-Pr
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:21:48 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Lum-0001sN-8X; Thu, 27 Feb 2020 17:21:32 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Luk-0007l6-89; Thu, 27 Feb 2020 17:21:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 05/17] drm/imx: parallel-display: split encoder and decoder
 states
Date: Thu, 27 Feb 2020 17:21:13 +0100
Message-Id: <20200227162125.10450-6-m.felsch@pengutronix.de>
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
X-CRM114-CacheID: sfid-20200227_082147_088307_DAD814E3 
X-CRM114-Status: GOOD (  16.90  )
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

This commit prepares the driver to fix the race condition reported by
[1]. The goal is to switch from the devres-kmalloc and the component
framework to a 'normal' kmalloc and the drm framework to release the
memory resources. So all acquired memory resoruces are freed by a
drm_mode_config_cleanup() call and the ->destroy() callbacks. For this
purpose we need to split off the drm_connector structure.

[1] https://www.spinics.net/lists/dri-devel/msg189388.html

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpu/drm/imx/parallel-display.c | 84 ++++++++++++++++----------
 1 file changed, 53 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index e731b19fd6b2..a05808982f2f 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -22,21 +22,25 @@
 #include "imx-drm.h"
 
 struct imx_parallel_display {
-	struct drm_connector connector;
 	struct drm_encoder encoder;
 	struct device *dev;
-	void *edid;
-	int edid_len;
 	u32 bus_format;
 	u32 bus_flags;
-	struct drm_display_mode mode;
 	struct drm_panel *panel;
 	struct drm_bridge *bridge;
 };
 
-static inline struct imx_parallel_display *con_to_imxpd(struct drm_connector *c)
+struct imx_parallel_connector {
+	struct imx_parallel_display *imxpd;
+	struct drm_connector connector;
+	void *edid;
+	int edid_len;
+	struct drm_display_mode mode;
+};
+
+static inline struct imx_parallel_connector *con_to_imxpc(struct drm_connector *c)
 {
-	return container_of(c, struct imx_parallel_display, connector);
+	return container_of(c, struct imx_parallel_connector, connector);
 }
 
 static inline struct imx_parallel_display *enc_to_imxpd(struct drm_encoder *e)
@@ -44,9 +48,19 @@ static inline struct imx_parallel_display *enc_to_imxpd(struct drm_encoder *e)
 	return container_of(e, struct imx_parallel_display, encoder);
 }
 
+static void imx_pd_connector_destroy(struct drm_connector *connector)
+{
+	struct imx_parallel_connector *imxpc = con_to_imxpc(connector);
+
+	imx_drm_connector_destroy(connector);
+	/* avoid dangling pointer */
+	imxpc->imxpd = NULL;
+}
+
 static int imx_pd_connector_get_modes(struct drm_connector *connector)
 {
-	struct imx_parallel_display *imxpd = con_to_imxpd(connector);
+	struct imx_parallel_connector *imxpc = con_to_imxpc(connector);
+	struct imx_parallel_display *imxpd = imxpc->imxpd;
 	struct device_node *np = imxpd->dev->of_node;
 	int num_modes;
 
@@ -54,9 +68,9 @@ static int imx_pd_connector_get_modes(struct drm_connector *connector)
 	if (num_modes > 0)
 		return num_modes;
 
-	if (imxpd->edid) {
-		drm_connector_update_edid_property(connector, imxpd->edid);
-		num_modes = drm_add_edid_modes(connector, imxpd->edid);
+	if (imxpc->edid) {
+		drm_connector_update_edid_property(connector, imxpc->edid);
+		num_modes = drm_add_edid_modes(connector, imxpc->edid);
 	}
 
 	if (np) {
@@ -66,13 +80,13 @@ static int imx_pd_connector_get_modes(struct drm_connector *connector)
 		if (!mode)
 			return -EINVAL;
 
-		ret = of_get_drm_display_mode(np, &imxpd->mode,
+		ret = of_get_drm_display_mode(np, &imxpc->mode,
 					      &imxpd->bus_flags,
 					      OF_USE_NATIVE_MODE);
 		if (ret)
 			return ret;
 
-		drm_mode_copy(mode, &imxpd->mode);
+		drm_mode_copy(mode, &imxpc->mode);
 		mode->type |= DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
 		drm_mode_probed_add(connector, mode);
 		num_modes++;
@@ -129,7 +143,7 @@ static int imx_pd_encoder_atomic_check(struct drm_encoder *encoder,
 
 static const struct drm_connector_funcs imx_pd_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = imx_drm_connector_destroy,
+	.destroy = imx_pd_connector_destroy,
 	.reset = drm_atomic_helper_connector_reset,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
@@ -150,7 +164,8 @@ static const struct drm_encoder_helper_funcs imx_pd_encoder_helper_funcs = {
 };
 
 static int imx_pd_register(struct drm_device *drm,
-	struct imx_parallel_display *imxpd)
+			   struct imx_parallel_display *imxpd,
+			   struct imx_parallel_connector *imxpc)
 {
 	struct drm_encoder *encoder = &imxpd->encoder;
 	int ret;
@@ -159,27 +174,26 @@ static int imx_pd_register(struct drm_device *drm,
 	if (ret)
 		return ret;
 
-	/* set the connector's dpms to OFF so that
-	 * drm_helper_connector_dpms() won't return
-	 * immediately since the current state is ON
-	 * at this point.
-	 */
-	imxpd->connector.dpms = DRM_MODE_DPMS_OFF;
-
 	drm_encoder_helper_add(encoder, &imx_pd_encoder_helper_funcs);
 	drm_encoder_init(drm, encoder, &imx_pd_encoder_funcs,
 			 DRM_MODE_ENCODER_NONE, NULL);
 
 	if (!imxpd->bridge) {
-		drm_connector_helper_add(&imxpd->connector,
+		/* set the connector's dpms to OFF so that
+		 * drm_helper_connector_dpms() won't return
+		 * immediately since the current state is ON
+		 * at this point.
+		 */
+		imxpc->connector.dpms = DRM_MODE_DPMS_OFF;
+		drm_connector_helper_add(&imxpc->connector,
 				&imx_pd_connector_helper_funcs);
-		drm_connector_init(drm, &imxpd->connector,
+		drm_connector_init(drm, &imxpc->connector,
 				   &imx_pd_connector_funcs,
 				   DRM_MODE_CONNECTOR_DPI);
 	}
 
 	if (imxpd->panel)
-		drm_panel_attach(imxpd->panel, &imxpd->connector);
+		drm_panel_attach(imxpd->panel, &imxpc->connector);
 
 	if (imxpd->bridge) {
 		ret = drm_bridge_attach(encoder, imxpd->bridge, NULL);
@@ -189,7 +203,7 @@ static int imx_pd_register(struct drm_device *drm,
 			return ret;
 		}
 	} else {
-		drm_connector_attach_encoder(&imxpd->connector, encoder);
+		drm_connector_attach_encoder(&imxpc->connector, encoder);
 	}
 
 	return 0;
@@ -201,6 +215,7 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
 	struct device_node *np = dev->of_node;
 	const u8 *edidp;
 	struct imx_parallel_display *imxpd;
+	struct imx_parallel_connector *imxpc;
 	int ret;
 	u32 bus_format = 0;
 	const char *fmt;
@@ -214,10 +229,18 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
 	if (ret && ret != -ENODEV)
 		return ret;
 
-	edidp = of_get_property(np, "edid", &imxpd->edid_len);
-	if (edidp)
-		imxpd->edid = devm_kmemdup(dev, edidp, imxpd->edid_len,
-					   GFP_KERNEL);
+	if (!imxpd->bridge) {
+		imxpc = devm_kzalloc(dev, sizeof(*imxpc), GFP_KERNEL);
+		if (!imxpc)
+			return -ENOMEM;
+
+		imxpc->imxpd = imxpd;
+
+		edidp = of_get_property(np, "edid", &imxpc->edid_len);
+		if (edidp)
+			imxpc->edid = devm_kmemdup(dev, edidp, imxpc->edid_len,
+						   GFP_KERNEL);
+	}
 
 	ret = of_property_read_string(np, "interface-pix-fmt", &fmt);
 	if (!ret) {
@@ -232,10 +255,9 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
 	}
 	imxpd->bus_format = bus_format;
 
-
 	imxpd->dev = dev;
 
-	ret = imx_pd_register(drm, imxpd);
+	ret = imx_pd_register(drm, imxpd, imxpc);
 	if (ret)
 		return ret;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
