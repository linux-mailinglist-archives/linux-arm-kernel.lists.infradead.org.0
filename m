Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D096B172334
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCwizK0FpGQvaIJDL7UnVQsc6HTv1ueXM/bMl2UyRw0=; b=hZviSXkajYEzXo
	lzbz5ScVt0RAZKuW3d6zUFuOQnKF9GO/TQwfwySJRHs1pDRPuoIXFgwg9x2Uo3J0ZaYP7/wHaOXxB
	D5CRInkypwUOQZEshcvuWgQ9HMDnuzyQ7pdKvQhodtq3CG6Snbgn6XivHfb1poMr0lXAZxMhnPd2p
	MD0LqEZoR/c0BbnxrwWMBhBxDOVomPKSXIb01YXTQtVFp0tJw6e3K456lVuF1jCWpmZyvZ/pZuNie
	VtZNJV9kKG9cJQtw3GSCluTWek3yWzAj7wJaR+T+WP/bzP+lU2SvVLq4lcT/ywM6mFSP+d/VmWXKW
	6rZ3Htx+q5dTauT3DFng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Lxw-0003bY-TR; Thu, 27 Feb 2020 16:24:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Lv8-00019p-TY
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:21:57 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Lum-0001sY-9C; Thu, 27 Feb 2020 17:21:32 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Luk-00082j-SP; Thu, 27 Feb 2020 17:21:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 16/17] drm/imx: imx-ldb: refactor imx_ldb_bind
Date: Thu, 27 Feb 2020 17:21:24 +0100
Message-Id: <20200227162125.10450-17-m.felsch@pengutronix.de>
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
X-CRM114-CacheID: sfid-20200227_082155_168005_202607CF 
X-CRM114-Status: GOOD (  19.73  )
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

Refactor the function to easaly construct error paths later on. The
error handling gets dirty if we don't refactor the code yet. While on it
I fixed a missing i2c_put_adapter() if the bind() fails.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpu/drm/imx/imx-ldb.c | 246 ++++++++++++++++++----------------
 1 file changed, 132 insertions(+), 114 deletions(-)

diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
index 0e5a3c84df10..5e6c1b09dbfa 100644
--- a/drivers/gpu/drm/imx/imx-ldb.c
+++ b/drivers/gpu/drm/imx/imx-ldb.c
@@ -441,64 +441,6 @@ static int imx_ldb_get_clk(struct imx_ldb *ldb, int chno)
 	return PTR_ERR_OR_ZERO(ldb->clk_pll[chno]);
 }
 
-static int imx_ldb_register_channel(struct drm_device *drm,
-				    struct imx_ldb_channel *imx_ldb_ch,
-				    struct imx_ldb_connector *imx_ldb_con)
-{
-	struct imx_ldb *ldb = imx_ldb_ch->ldb;
-	struct drm_encoder *encoder = &imx_ldb_ch->encoder;
-	struct drm_connector *connector = &imx_ldb_con->connector;
-	int ret;
-
-	ret = imx_drm_encoder_parse_of(drm, encoder, imx_ldb_ch->child);
-	if (ret)
-		return ret;
-
-	ret = imx_ldb_get_clk(ldb, imx_ldb_ch->chno);
-	if (ret)
-		return ret;
-
-	if (imx_ldb_is_dual(ldb)) {
-		ret = imx_ldb_get_clk(ldb, 1);
-		if (ret)
-			return ret;
-	}
-
-	drm_encoder_helper_add(encoder, &imx_ldb_encoder_helper_funcs);
-	drm_encoder_init(drm, encoder, &imx_ldb_encoder_funcs,
-			 DRM_MODE_ENCODER_LVDS, NULL);
-
-	if (imx_ldb_ch->bridge) {
-		ret = drm_bridge_attach(encoder, imx_ldb_ch->bridge, NULL);
-		if (ret) {
-			DRM_ERROR("Failed to initialize bridge with drm\n");
-			return ret;
-		}
-	} else {
-		/*
-		 * We want to add the connector whenever there is no bridge
-		 * that brings its own, not only when there is a panel. For
-		 * historical reasons, the ldb driver can also work without
-		 * a panel.
-		 */
-		drm_connector_helper_add(connector,
-					 &imx_ldb_connector_helper_funcs);
-		drm_connector_init_with_ddc(drm, connector,
-					    &imx_ldb_connector_funcs,
-					    DRM_MODE_CONNECTOR_LVDS,
-					    imx_ldb_con->ddc);
-		drm_connector_attach_encoder(connector, encoder);
-	}
-
-	if (imx_ldb_ch->panel) {
-		ret = drm_panel_attach(imx_ldb_ch->panel, connector);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
 struct imx_ldb_bit_mapping {
 	u32 bus_format;
 	u32 datawidth;
@@ -576,6 +518,136 @@ static int imx_ldb_panel_ddc(struct device *dev,
 	return 0;
 }
 
+static int imx_ldb_setup_channel(struct device *dev,
+				 struct device_node *child,
+				 struct drm_device *drm,
+				 struct imx_ldb *ldb,
+				 int channel_number)
+{
+	struct imx_ldb_channel *channel;
+	struct imx_ldb_connector *imx_ldb_con;
+	struct drm_encoder *encoder;
+	struct drm_connector *connector = NULL;
+	int bus_format;
+	int ret;
+
+	/*
+	 * 1) Parse all available data and alloc needed structs
+	 * 2) Setup the HW
+	 * 3) Register it with the DRM framework
+	 * 4) Attach bridge or connector to encoder
+	 */
+	channel = devm_kzalloc(dev, sizeof(*channel), GFP_KERNEL);
+	if (!channel)
+		return -ENOMEM;
+
+	channel->ldb = ldb;
+	channel->chno = channel_number;
+	channel->child = child;
+	encoder = &channel->encoder;
+
+	/*
+	 * The output port is port@4 with an external 4-port mux or
+	 * port@2 with the internal 2-port mux.
+	 */
+	ret = drm_of_find_panel_or_bridge(child,
+					  ldb->lvds_mux ? 4 : 2, 0,
+					  &channel->panel, &channel->bridge);
+	if (ret && ret != -ENODEV)
+		return ret;
+
+	/* panel ddc only if there is no bridge */
+	if (!channel->bridge) {
+		imx_ldb_con = devm_kzalloc(dev, sizeof(*connector), GFP_KERNEL);
+		if (!imx_ldb_con)
+			return -ENOMEM;
+
+		ret = imx_ldb_panel_ddc(dev, channel, imx_ldb_con, child);
+		if (ret)
+			return ret;
+
+		imx_ldb_con->ldb_channel = channel;
+		connector = &imx_ldb_con->connector;
+	}
+
+	bus_format = of_get_bus_format(dev, child);
+	if (bus_format == -EINVAL) {
+		/*
+		 * If no bus format was specified in the device tree,
+		 * we can still get it from the connected panel later.
+		 */
+		if (channel->panel && channel->panel->funcs &&
+		    channel->panel->funcs->get_modes)
+			bus_format = 0;
+	}
+	if (bus_format < 0) {
+		dev_err(dev, "could not determine data mapping: %d\n",
+			bus_format);
+		ret = bus_format;
+		goto err_put_ddc;
+	}
+	channel->bus_format = bus_format;
+
+	/* 2) Setup the HW */
+	ret = imx_ldb_get_clk(channel->ldb, channel->chno);
+	if (ret)
+		goto err_put_ddc;
+
+	if (imx_ldb_is_dual(ldb)) {
+		ret = imx_ldb_get_clk(ldb, 1);
+		if (ret)
+			goto err_put_ddc;
+	}
+
+	/* 3) Register it with the DRM framework */
+	ret = imx_drm_encoder_parse_of(drm, encoder, channel->child);
+	if (ret)
+		goto err_put_ddc;
+
+	drm_encoder_helper_add(encoder, &imx_ldb_encoder_helper_funcs);
+	drm_encoder_init(drm, encoder, &imx_ldb_encoder_funcs,
+			 DRM_MODE_ENCODER_LVDS, NULL);
+
+	if (!channel->bridge) {
+		/*
+		 * We want to add the connector whenever there is no bridge
+		 * that brings its own, not only when there is a panel. For
+		 * historical reasons, the ldb driver can also work without
+		 * a panel.
+		 */
+		drm_connector_helper_add(connector,
+					 &imx_ldb_connector_helper_funcs);
+		drm_connector_init_with_ddc(drm, connector,
+					    &imx_ldb_connector_funcs,
+					    DRM_MODE_CONNECTOR_LVDS,
+					    imx_ldb_con->ddc);
+	}
+
+	/* 4) Attach bridge or connector to encoder */
+	if (channel->bridge) {
+		ret = drm_bridge_attach(encoder, channel->bridge, NULL);
+		if (ret) {
+			DRM_ERROR("Failed to initialize bridge with drm\n");
+			goto err_put_ddc;
+		}
+	} else {
+		drm_connector_attach_encoder(connector, encoder);
+	}
+
+	if (channel->panel) {
+		ret = drm_panel_attach(channel->panel, connector);
+		if (ret)
+			goto err_put_ddc;
+	}
+
+	return 0;
+
+err_put_ddc:
+	if (imx_ldb_con)
+		i2c_put_adapter(imx_ldb_con->ddc);
+	return ret;
+}
+
 static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 {
 	struct drm_device *drm = data;
@@ -587,9 +659,6 @@ static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 	int i;
 
 	for_each_child_of_node(np, child) {
-		struct imx_ldb_channel *channel;
-		struct imx_ldb_connector *connector;
-		int bus_format;
 
 		ret = of_property_read_u32(child, "reg", &i);
 		if (ret || i < 0 || i > 1) {
@@ -605,60 +674,9 @@ static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 			continue;
 		}
 
-		channel = devm_kzalloc(dev, sizeof(*channel), GFP_KERNEL);
-		if (!channel)
-			return -ENOMEM;
-
-		channel->ldb = imx_ldb;
-		channel->chno = i;
-
-		/*
-		 * The output port is port@4 with an external 4-port mux or
-		 * port@2 with the internal 2-port mux.
-		 */
-		ret = drm_of_find_panel_or_bridge(child,
-						  imx_ldb->lvds_mux ? 4 : 2, 0,
-						  &channel->panel, &channel->bridge);
-		if (ret && ret != -ENODEV)
-			goto free_child;
-
-		/* panel ddc only if there is no bridge */
-		if (!channel->bridge) {
-			connector = devm_kzalloc(dev, sizeof(*connector), GFP_KERNEL);
-			if (!connector)
-				return -ENOMEM;
-
-			ret = imx_ldb_panel_ddc(dev, channel, connector, child);
-			if (ret)
-				goto free_child;
-
-			connector->ldb_channel = channel;
-		}
-
-		bus_format = of_get_bus_format(dev, child);
-		if (bus_format == -EINVAL) {
-			/*
-			 * If no bus format was specified in the device tree,
-			 * we can still get it from the connected panel later.
-			 */
-			if (channel->panel && channel->panel->funcs &&
-			    channel->panel->funcs->get_modes)
-				bus_format = 0;
-		}
-		if (bus_format < 0) {
-			dev_err(dev, "could not determine data mapping: %d\n",
-				bus_format);
-			ret = bus_format;
-			goto free_child;
-		}
-		channel->bus_format = bus_format;
-		channel->child = child;
-
-		ret = imx_ldb_register_channel(drm, channel, connector);
-		if (ret) {
-			channel->child = NULL;
+		ret = imx_ldb_setup_channel(dev, child, drm, imx_ldb, i);
+		if (ret)
 			goto free_child;
-		}
 	}
 
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
