Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D455317234C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBcjTSVDnp3g1iL8cy5YRqTJEa1uHVHjL+yxIBkEi1k=; b=K9RUJI7gdNANeD
	LyVCp6pHudx1J8Z5L0N3/5wPxK66ZKxQx4Vdt7ZMCPiYokKbhmmdzvgKlOfvYjzVuWBMetGK+/5py
	JP8Rc/eH7OPhljrV3TOSQX9ZJWwhXW/Ef8RwiTDqJixETWCS7Sqf4KR6u7HlTYaEtVzkOfFq5jZGs
	y1Y23Mv0IyRIKcm6htB/XK+lOXAguHkhetkLZGsIH6bKKhaXbWICK8zcJOSAQK2NQ+4ut2rqULKrF
	M06mt5U7koMTNrZacfhpqZ8jqGO4tvbw1j5tit+KhOMNJuYyJCP4UTrDYqaXsBvlx1b74mHW4cZPd
	R5eWSlL8P/HV6GiLyZ0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Lz2-0004xE-V8; Thu, 27 Feb 2020 16:25:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Lvg-0001aO-6k
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:22:30 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Lum-0001sV-8z; Thu, 27 Feb 2020 17:21:32 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7Luk-0007yF-Nu; Thu, 27 Feb 2020 17:21:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
 shawnguo@kernel.org, stefan@agner.ch, rmk+kernel@armlinux.org.uk
Subject: [PATCH 13/17] drm/imx: imx-ldb: split imx_ldb devres allocation
 context
Date: Thu, 27 Feb 2020 17:21:21 +0100
Message-Id: <20200227162125.10450-14-m.felsch@pengutronix.de>
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
X-CRM114-CacheID: sfid-20200227_082228_442025_2DF58DB3 
X-CRM114-Status: GOOD (  22.49  )
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

This patch prepares the driver for a overall 'make drm/imx
drm_mode_config_cleanup() aware' patch to avoid race conditions like
[1]. The patch also improves the driver memory usage by allocating only
the necessary number of 'struct imx_ldb_channel'.

To make the driver drm_mode_config_cleanup() aware we need to split the
driver state 'struct imx_ldb'. All the hardware settings like clocks and
the regmap can be allocated during the driver probe() and so the devres
context is moved to the probe/remove.

Now upon a component.bind() call only the necessary number of channels
are allocated. The difference is that now the 'struct imx_ldb_channel'
memory is allocated within the bind/unbind devres context.

So now the 'struct imx_ldb' driver state is still available after a
component.unbind() call.

[1] https://www.spinics.net/lists/dri-devel/msg189388.html

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpu/drm/imx/imx-ldb.c | 187 ++++++++++++++++++----------------
 1 file changed, 98 insertions(+), 89 deletions(-)

diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
index 87bf659990da..e3fa46e1639d 100644
--- a/drivers/gpu/drm/imx/imx-ldb.c
+++ b/drivers/gpu/drm/imx/imx-ldb.c
@@ -87,7 +87,6 @@ struct bus_mux {
 struct imx_ldb {
 	struct regmap *regmap;
 	struct device *dev;
-	struct imx_ldb_channel channel[2];
 	struct clk *clk[2]; /* our own clock */
 	struct clk *clk_sel[4]; /* parent of display clock */
 	struct clk *clk_parent[4]; /* original parent of clk_sel */
@@ -212,14 +211,14 @@ static void imx_ldb_encoder_enable(struct drm_encoder *encoder)
 		clk_set_parent(ldb->clk_sel[mux], ldb->clk[imx_ldb_ch->chno]);
 	}
 
-	if (imx_ldb_ch == &ldb->channel[0] || dual) {
+	if (imx_ldb_ch->chno == 0 || dual) {
 		ldb->ldb_ctrl &= ~LDB_CH0_MODE_EN_MASK;
 		if (mux == 0 || ldb->lvds_mux)
 			ldb->ldb_ctrl |= LDB_CH0_MODE_EN_TO_DI0;
 		else if (mux == 1)
 			ldb->ldb_ctrl |= LDB_CH0_MODE_EN_TO_DI1;
 	}
-	if (imx_ldb_ch == &ldb->channel[1] || dual) {
+	if (imx_ldb_ch->chno == 1 || dual) {
 		ldb->ldb_ctrl &= ~LDB_CH1_MODE_EN_MASK;
 		if (mux == 1 || ldb->lvds_mux)
 			ldb->ldb_ctrl |= LDB_CH1_MODE_EN_TO_DI1;
@@ -230,9 +229,9 @@ static void imx_ldb_encoder_enable(struct drm_encoder *encoder)
 	if (ldb->lvds_mux) {
 		const struct bus_mux *lvds_mux = NULL;
 
-		if (imx_ldb_ch == &ldb->channel[0])
+		if (imx_ldb_ch->chno == 0)
 			lvds_mux = &ldb->lvds_mux[0];
-		else if (imx_ldb_ch == &ldb->channel[1])
+		else if (imx_ldb_ch->chno == 1)
 			lvds_mux = &ldb->lvds_mux[1];
 
 		regmap_update_bits(ldb->regmap, lvds_mux->reg, lvds_mux->mask,
@@ -278,13 +277,13 @@ imx_ldb_encoder_atomic_mode_set(struct drm_encoder *encoder,
 	}
 
 	/* FIXME - assumes straight connections DI0 --> CH0, DI1 --> CH1 */
-	if (imx_ldb_ch == &ldb->channel[0] || dual) {
+	if (imx_ldb_ch->chno == 0 || dual) {
 		if (mode->flags & DRM_MODE_FLAG_NVSYNC)
 			ldb->ldb_ctrl |= LDB_DI0_VS_POL_ACT_LOW;
 		else if (mode->flags & DRM_MODE_FLAG_PVSYNC)
 			ldb->ldb_ctrl &= ~LDB_DI0_VS_POL_ACT_LOW;
 	}
-	if (imx_ldb_ch == &ldb->channel[1] || dual) {
+	if (imx_ldb_ch->chno == 1 || dual) {
 		if (mode->flags & DRM_MODE_FLAG_NVSYNC)
 			ldb->ldb_ctrl |= LDB_DI1_VS_POL_ACT_LOW;
 		else if (mode->flags & DRM_MODE_FLAG_PVSYNC)
@@ -309,9 +308,9 @@ static void imx_ldb_encoder_disable(struct drm_encoder *encoder)
 
 	drm_panel_disable(imx_ldb_ch->panel);
 
-	if (imx_ldb_ch == &ldb->channel[0])
+	if (imx_ldb_ch->chno == 0)
 		ldb->ldb_ctrl &= ~LDB_CH0_MODE_EN_MASK;
-	else if (imx_ldb_ch == &ldb->channel[1])
+	else if (imx_ldb_ch->chno == 1)
 		ldb->ldb_ctrl &= ~LDB_CH1_MODE_EN_MASK;
 
 	regmap_write(ldb->regmap, IOMUXC_GPR2, ldb->ldb_ctrl);
@@ -324,16 +323,16 @@ static void imx_ldb_encoder_disable(struct drm_encoder *encoder)
 	if (ldb->lvds_mux) {
 		const struct bus_mux *lvds_mux = NULL;
 
-		if (imx_ldb_ch == &ldb->channel[0])
+		if (imx_ldb_ch->chno == 0)
 			lvds_mux = &ldb->lvds_mux[0];
-		else if (imx_ldb_ch == &ldb->channel[1])
+		else if (imx_ldb_ch->chno == 1)
 			lvds_mux = &ldb->lvds_mux[1];
 
 		regmap_read(ldb->regmap, lvds_mux->reg, &mux);
 		mux &= lvds_mux->mask;
 		mux >>= lvds_mux->shift;
 	} else {
-		mux = (imx_ldb_ch == &ldb->channel[0]) ? 0 : 1;
+		mux = imx_ldb_ch->chno;
 	}
 
 	/* set display clock mux back to original input clock */
@@ -513,31 +512,6 @@ static u32 of_get_bus_format(struct device *dev, struct device_node *np)
 	return -ENOENT;
 }
 
-static struct bus_mux imx6q_lvds_mux[2] = {
-	{
-		.reg = IOMUXC_GPR3,
-		.shift = 6,
-		.mask = IMX6Q_GPR3_LVDS0_MUX_CTL_MASK,
-	}, {
-		.reg = IOMUXC_GPR3,
-		.shift = 8,
-		.mask = IMX6Q_GPR3_LVDS1_MUX_CTL_MASK,
-	}
-};
-
-/*
- * For a device declaring compatible = "fsl,imx6q-ldb", "fsl,imx53-ldb",
- * of_match_device will walk through this list and take the first entry
- * matching any of its compatible values. Therefore, the more generic
- * entries (in this case fsl,imx53-ldb) need to be ordered last.
- */
-static const struct of_device_id imx_ldb_dt_ids[] = {
-	{ .compatible = "fsl,imx6q-ldb", .data = imx6q_lvds_mux, },
-	{ .compatible = "fsl,imx53-ldb", .data = NULL, },
-	{ }
-};
-MODULE_DEVICE_TABLE(of, imx_ldb_dt_ids);
-
 static int imx_ldb_panel_ddc(struct device *dev,
 		struct imx_ldb_channel *channel, struct device_node *child)
 {
@@ -582,59 +556,12 @@ static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 {
 	struct drm_device *drm = data;
 	struct device_node *np = dev->of_node;
-	const struct of_device_id *of_id =
-			of_match_device(imx_ldb_dt_ids, dev);
+	struct imx_ldb *imx_ldb = dev_get_drvdata(dev);
+	int dual = imx_ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;
 	struct device_node *child;
-	struct imx_ldb *imx_ldb;
-	int dual;
 	int ret;
 	int i;
 
-	imx_ldb = devm_kzalloc(dev, sizeof(*imx_ldb), GFP_KERNEL);
-	if (!imx_ldb)
-		return -ENOMEM;
-
-	imx_ldb->regmap = syscon_regmap_lookup_by_phandle(np, "gpr");
-	if (IS_ERR(imx_ldb->regmap)) {
-		dev_err(dev, "failed to get parent regmap\n");
-		return PTR_ERR(imx_ldb->regmap);
-	}
-
-	/* disable LDB by resetting the control register to POR default */
-	regmap_write(imx_ldb->regmap, IOMUXC_GPR2, 0);
-
-	imx_ldb->dev = dev;
-
-	if (of_id)
-		imx_ldb->lvds_mux = of_id->data;
-
-	dual = of_property_read_bool(np, "fsl,dual-channel");
-	if (dual)
-		imx_ldb->ldb_ctrl |= LDB_SPLIT_MODE_EN;
-
-	/*
-	 * There are three different possible clock mux configurations:
-	 * i.MX53:  ipu1_di0_sel, ipu1_di1_sel
-	 * i.MX6q:  ipu1_di0_sel, ipu1_di1_sel, ipu2_di0_sel, ipu2_di1_sel
-	 * i.MX6dl: ipu1_di0_sel, ipu1_di1_sel, lcdif_sel
-	 * Map them all to di0_sel...di3_sel.
-	 */
-	for (i = 0; i < 4; i++) {
-		char clkname[16];
-
-		sprintf(clkname, "di%d_sel", i);
-		imx_ldb->clk_sel[i] = devm_clk_get(imx_ldb->dev, clkname);
-		if (IS_ERR(imx_ldb->clk_sel[i])) {
-			ret = PTR_ERR(imx_ldb->clk_sel[i]);
-			imx_ldb->clk_sel[i] = NULL;
-			break;
-		}
-
-		imx_ldb->clk_parent[i] = clk_get_parent(imx_ldb->clk_sel[i]);
-	}
-	if (i == 0)
-		return ret;
-
 	for_each_child_of_node(np, child) {
 		struct imx_ldb_channel *channel;
 		int bus_format;
@@ -653,7 +580,10 @@ static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 			continue;
 		}
 
-		channel = &imx_ldb->channel[i];
+		channel = devm_kzalloc(dev, sizeof(*channel), GFP_KERNEL);
+		if (!channel)
+			return -ENOMEM;
+
 		channel->ldb = imx_ldb;
 		channel->chno = i;
 
@@ -700,8 +630,6 @@ static int imx_ldb_bind(struct device *dev, struct device *master, void *data)
 		}
 	}
 
-	dev_set_drvdata(dev, imx_ldb);
-
 	return 0;
 
 free_child:
@@ -713,8 +641,89 @@ static const struct component_ops imx_ldb_ops = {
 	.bind	= imx_ldb_bind,
 };
 
+static struct bus_mux imx6q_lvds_mux[2] = {
+	{
+		.reg = IOMUXC_GPR3,
+		.shift = 6,
+		.mask = IMX6Q_GPR3_LVDS0_MUX_CTL_MASK,
+	}, {
+		.reg = IOMUXC_GPR3,
+		.shift = 8,
+		.mask = IMX6Q_GPR3_LVDS1_MUX_CTL_MASK,
+	}
+};
+
+/*
+ * For a device declaring compatible = "fsl,imx6q-ldb", "fsl,imx53-ldb",
+ * of_match_device will walk through this list and take the first entry
+ * matching any of its compatible values. Therefore, the more generic
+ * entries (in this case fsl,imx53-ldb) need to be ordered last.
+ */
+static const struct of_device_id imx_ldb_dt_ids[] = {
+	{ .compatible = "fsl,imx6q-ldb", .data = imx6q_lvds_mux, },
+	{ .compatible = "fsl,imx53-ldb", .data = NULL, },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, imx_ldb_dt_ids);
+
 static int imx_ldb_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
+	const struct of_device_id *of_id =
+			of_match_device(imx_ldb_dt_ids, dev);
+	struct device_node *np = dev->of_node;
+	struct imx_ldb *imx_ldb;
+	int dual;
+	int ret;
+	int i;
+
+	imx_ldb = devm_kzalloc(dev, sizeof(*imx_ldb), GFP_KERNEL);
+	if (!imx_ldb)
+		return -ENOMEM;
+
+	imx_ldb->regmap = syscon_regmap_lookup_by_phandle(np, "gpr");
+	if (IS_ERR(imx_ldb->regmap)) {
+		dev_err(dev, "failed to get parent regmap\n");
+		return PTR_ERR(imx_ldb->regmap);
+	}
+
+	/* disable LDB by resetting the control register to POR default */
+	regmap_write(imx_ldb->regmap, IOMUXC_GPR2, 0);
+
+	imx_ldb->dev = dev;
+
+	if (of_id)
+		imx_ldb->lvds_mux = of_id->data;
+
+	dual = of_property_read_bool(np, "fsl,dual-channel");
+	if (dual)
+		imx_ldb->ldb_ctrl |= LDB_SPLIT_MODE_EN;
+
+	/*
+	 * There are three different possible clock mux configurations:
+	 * i.MX53:  ipu1_di0_sel, ipu1_di1_sel
+	 * i.MX6q:  ipu1_di0_sel, ipu1_di1_sel, ipu2_di0_sel, ipu2_di1_sel
+	 * i.MX6dl: ipu1_di0_sel, ipu1_di1_sel, lcdif_sel
+	 * Map them all to di0_sel...di3_sel.
+	 */
+	for (i = 0; i < 4; i++) {
+		char clkname[16];
+
+		sprintf(clkname, "di%d_sel", i);
+		imx_ldb->clk_sel[i] = devm_clk_get(imx_ldb->dev, clkname);
+		if (IS_ERR(imx_ldb->clk_sel[i])) {
+			ret = PTR_ERR(imx_ldb->clk_sel[i]);
+			imx_ldb->clk_sel[i] = NULL;
+			break;
+		}
+
+		imx_ldb->clk_parent[i] = clk_get_parent(imx_ldb->clk_sel[i]);
+	}
+	if (i == 0)
+		return ret;
+
+	dev_set_drvdata(dev, imx_ldb);
+
 	return component_add(&pdev->dev, &imx_ldb_ops);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
