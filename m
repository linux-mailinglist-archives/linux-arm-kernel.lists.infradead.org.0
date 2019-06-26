Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D0856AA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XKfHIVBPbFAi+XvWIp7hdwBqwsc8fL+CJVc6pCKWtpI=; b=LGi5EPxtiPoZYeJbYvdaRXWeMl
	/+cFRcNFpLvs7fVYSSiJx9EEvPDaf45eJCZLv4YaFAp6hbkZH1LMSZzVi+TKuck32Dh5HAm9fa9ik
	SQ8xSUsi0DbOcS6lQHxE1SHXTU4tmFyNNcseGFa6r9adX5KPNlvS7cOCjU0KotqxNtsrMbKjxrTXV
	PJZD3P97USRDIGsMydHoXalPMJfrVBApXArH1Qes7I7WRZWFo5FINAfSyna/vU1IWKJdVI/t11FKK
	cVJyQXi0+IxfLHX0sjrFhiu9FSgYCre+Ry2PmKOoJYxsXBV0SaHcrTbhkK2ytgyARjZMfDLb7Vu/z
	zPpBKOrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg84E-0002G2-Pb; Wed, 26 Jun 2019 13:34:30 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg82E-00017k-R6
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:32:30 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DEDA51A0A2B;
 Wed, 26 Jun 2019 15:32:22 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C63191A0A0B;
 Wed, 26 Jun 2019 15:32:22 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 218D7205DB;
 Wed, 26 Jun 2019 15:32:22 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 01/10] drm/mxsfb: Update mxsfb to support a bridge
Date: Wed, 26 Jun 2019 16:32:09 +0300
Message-Id: <1561555938-21595-2-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
References: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_063227_306751_CA2F11AC 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the MXSFB DRM driver only supports a panel. But, its output
display signal can also be redirected to another encoder, like a DSI
controller. In this case, that DSI controller may act like a drm_bridge.
In order support this use-case too, this patch adds support for
drm_bridge in mxsfb.

Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
---
 drivers/gpu/drm/mxsfb/mxsfb_crtc.c | 46 +++++++++++++++++++++++++++++++++++---
 drivers/gpu/drm/mxsfb/mxsfb_drv.c  | 46 +++++++++++++++++++++++++++++++++-----
 drivers/gpu/drm/mxsfb/mxsfb_drv.h  |  4 +++-
 drivers/gpu/drm/mxsfb/mxsfb_out.c  | 26 +++++++++++----------
 drivers/gpu/drm/mxsfb/mxsfb_regs.h | 15 +++++++++++++
 5 files changed, 116 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
index 93f4133..14bde024 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
@@ -93,8 +93,11 @@ static void mxsfb_set_bus_fmt(struct mxsfb_drm_private *mxsfb)
 
 	reg = readl(mxsfb->base + LCDC_CTRL);
 
-	if (mxsfb->connector.display_info.num_bus_formats)
-		bus_format = mxsfb->connector.display_info.bus_formats[0];
+	if (mxsfb->connector->display_info.num_bus_formats)
+		bus_format = mxsfb->connector->display_info.bus_formats[0];
+
+	DRM_DEV_DEBUG_DRIVER(drm->dev, "Using bus_format: 0x%08X\n",
+			     bus_format);
 
 	reg &= ~CTRL_BUS_WIDTH_MASK;
 	switch (bus_format) {
@@ -122,6 +125,9 @@ static void mxsfb_enable_controller(struct mxsfb_drm_private *mxsfb)
 		clk_prepare_enable(mxsfb->clk_disp_axi);
 	clk_prepare_enable(mxsfb->clk);
 
+	writel(CTRL2_OUTSTANDING_REQS__REQ_16,
+	       mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
+
 	/* If it was disabled, re-enable the mode again */
 	writel(CTRL_DOTCLK_MODE, mxsfb->base + LCDC_CTRL + REG_SET);
 
@@ -131,12 +137,15 @@ static void mxsfb_enable_controller(struct mxsfb_drm_private *mxsfb)
 	writel(reg, mxsfb->base + LCDC_VDCTRL4);
 
 	writel(CTRL_RUN, mxsfb->base + LCDC_CTRL + REG_SET);
+	writel(CTRL1_RECOVERY_ON_UNDERFLOW, mxsfb->base + LCDC_CTRL1 + REG_SET);
 }
 
 static void mxsfb_disable_controller(struct mxsfb_drm_private *mxsfb)
 {
 	u32 reg;
 
+	writel(CTRL_RUN, mxsfb->base + LCDC_CTRL + REG_CLR);
+
 	/*
 	 * Even if we disable the controller here, it will still continue
 	 * until its FIFOs are running out of data
@@ -202,8 +211,9 @@ static dma_addr_t mxsfb_get_fb_paddr(struct mxsfb_drm_private *mxsfb)
 
 static void mxsfb_crtc_mode_set_nofb(struct mxsfb_drm_private *mxsfb)
 {
+	struct drm_device *drm = mxsfb->pipe.crtc.dev;
 	struct drm_display_mode *m = &mxsfb->pipe.crtc.state->adjusted_mode;
-	const u32 bus_flags = mxsfb->connector.display_info.bus_flags;
+	const u32 bus_flags = mxsfb->connector->display_info.bus_flags;
 	u32 vdctrl0, vsync_pulse_len, hsync_pulse_len;
 	int err;
 
@@ -227,6 +237,13 @@ static void mxsfb_crtc_mode_set_nofb(struct mxsfb_drm_private *mxsfb)
 
 	clk_set_rate(mxsfb->clk, m->crtc_clock * 1000);
 
+	DRM_DEV_DEBUG_DRIVER(drm->dev, "Pixel clock: %dkHz (actual: %dkHz)\n",
+			     m->crtc_clock,
+			     (int)(clk_get_rate(mxsfb->clk) / 1000));
+	DRM_DEV_DEBUG_DRIVER(drm->dev, "Connector bus_flags: 0x%08X\n",
+			     bus_flags);
+	DRM_DEV_DEBUG_DRIVER(drm->dev, "Mode flags: 0x%08X\n", m->flags);
+
 	writel(TRANSFER_COUNT_SET_VCOUNT(m->crtc_vdisplay) |
 	       TRANSFER_COUNT_SET_HCOUNT(m->crtc_hdisplay),
 	       mxsfb->base + mxsfb->devdata->transfer_count);
@@ -279,6 +296,7 @@ void mxsfb_crtc_enable(struct mxsfb_drm_private *mxsfb)
 	dma_addr_t paddr;
 
 	mxsfb_enable_axi_clk(mxsfb);
+	writel(0, mxsfb->base + LCDC_CTRL);
 	mxsfb_crtc_mode_set_nofb(mxsfb);
 
 	/* Write cur_buf as well to avoid an initial corrupt frame */
@@ -302,6 +320,8 @@ void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
 {
 	struct drm_simple_display_pipe *pipe = &mxsfb->pipe;
 	struct drm_crtc *crtc = &pipe->crtc;
+	struct drm_framebuffer *fb = pipe->plane.state->fb;
+	struct drm_framebuffer *old_fb = old_state->fb;
 	struct drm_pending_vblank_event *event;
 	dma_addr_t paddr;
 
@@ -324,4 +344,24 @@ void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
 		writel(paddr, mxsfb->base + mxsfb->devdata->next_buf);
 		mxsfb_disable_axi_clk(mxsfb);
 	}
+
+	if (!fb || !old_fb)
+		return;
+
+	/*
+	 * TODO: Currently, we only support pixel format change, but we need
+	 * also to care about size changes too
+	 */
+	if (old_fb->format->format != fb->format->format) {
+		struct drm_format_name_buf old_fmt_buf;
+		struct drm_format_name_buf new_fmt_buf;
+
+		DRM_DEV_DEBUG_DRIVER(crtc->dev->dev,
+				     "Switching pixel format: %s -> %s\n",
+				     drm_get_format_name(old_fb->format->format,
+							 &old_fmt_buf),
+				     drm_get_format_name(fb->format->format,
+							 &new_fmt_buf));
+		mxsfb_set_pixel_fmt(mxsfb, true);
+	}
 }
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
index 6fafc90..0d171e9 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
@@ -98,9 +98,25 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
 			      struct drm_crtc_state *crtc_state,
 			      struct drm_plane_state *plane_state)
 {
+	struct drm_connector *connector;
 	struct mxsfb_drm_private *mxsfb = drm_pipe_to_mxsfb_drm_private(pipe);
 	struct drm_device *drm = pipe->plane.dev;
 
+	if (!mxsfb->connector) {
+		list_for_each_entry(connector,
+				    &drm->mode_config.connector_list,
+				    head)
+			if (connector->encoder == &mxsfb->pipe.encoder) {
+				mxsfb->connector = connector;
+				break;
+			}
+	}
+
+	if (!mxsfb->connector) {
+		dev_warn(drm->dev, "No connector attached, using default\n");
+		mxsfb->connector = &mxsfb->panel_connector;
+	}
+
 	pm_runtime_get_sync(drm->dev);
 	drm_panel_prepare(mxsfb->panel);
 	mxsfb_crtc_enable(mxsfb);
@@ -126,6 +142,9 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
 		drm_crtc_send_vblank_event(crtc, event);
 	}
 	spin_unlock_irq(&drm->event_lock);
+
+	if (mxsfb->connector != &mxsfb->panel_connector)
+		mxsfb->connector = NULL;
 }
 
 static void mxsfb_pipe_update(struct drm_simple_display_pipe *pipe,
@@ -223,16 +242,33 @@ static int mxsfb_load(struct drm_device *drm, unsigned long flags)
 
 	ret = drm_simple_display_pipe_init(drm, &mxsfb->pipe, &mxsfb_funcs,
 			mxsfb_formats, ARRAY_SIZE(mxsfb_formats), NULL,
-			&mxsfb->connector);
+			mxsfb->connector);
 	if (ret < 0) {
 		dev_err(drm->dev, "Cannot setup simple display pipe\n");
 		goto err_vblank;
 	}
 
-	ret = drm_panel_attach(mxsfb->panel, &mxsfb->connector);
-	if (ret) {
-		dev_err(drm->dev, "Cannot connect panel\n");
-		goto err_vblank;
+	/*
+	 * Attach panel only if there is one.
+	 * If there is no panel attach, it must be a bridge. In this case, we
+	 * need a reference to its connector for a proper initialization.
+	 * We will do this check in pipe->enable(), since the connector won't
+	 * be attached to an encoder until then.
+	 */
+
+	if (mxsfb->panel) {
+		ret = drm_panel_attach(mxsfb->panel, mxsfb->connector);
+		if (ret) {
+			dev_err(drm->dev, "Cannot connect panel\n");
+			goto err_vblank;
+		}
+	} else if (mxsfb->bridge) {
+		ret = drm_simple_display_pipe_attach_bridge(&mxsfb->pipe,
+							    mxsfb->bridge);
+		if (ret) {
+			dev_err(drm->dev, "Cannot connect bridge\n");
+			goto err_vblank;
+		}
 	}
 
 	drm->mode_config.min_width	= MXSFB_MIN_XRES;
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.h b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
index d975300..0b65b51 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.h
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
@@ -27,8 +27,10 @@ struct mxsfb_drm_private {
 	struct clk			*clk_disp_axi;
 
 	struct drm_simple_display_pipe	pipe;
-	struct drm_connector		connector;
+	struct drm_connector		panel_connector;
+	struct drm_connector		*connector;
 	struct drm_panel		*panel;
+	struct drm_bridge		*bridge;
 };
 
 int mxsfb_setup_crtc(struct drm_device *dev);
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_out.c b/drivers/gpu/drm/mxsfb/mxsfb_out.c
index 91e76f9..b9acf2b 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_out.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_out.c
@@ -22,7 +22,8 @@
 static struct mxsfb_drm_private *
 drm_connector_to_mxsfb_drm_private(struct drm_connector *connector)
 {
-	return container_of(connector, struct mxsfb_drm_private, connector);
+	return container_of(connector, struct mxsfb_drm_private,
+			    panel_connector);
 }
 
 static int mxsfb_panel_get_modes(struct drm_connector *connector)
@@ -77,22 +78,23 @@ static const struct drm_connector_funcs mxsfb_panel_connector_funcs = {
 int mxsfb_create_output(struct drm_device *drm)
 {
 	struct mxsfb_drm_private *mxsfb = drm->dev_private;
-	struct drm_panel *panel;
 	int ret;
 
-	ret = drm_of_find_panel_or_bridge(drm->dev->of_node, 0, 0, &panel, NULL);
+	ret = drm_of_find_panel_or_bridge(drm->dev->of_node, 0, 0,
+					  &mxsfb->panel, &mxsfb->bridge);
 	if (ret)
 		return ret;
 
-	mxsfb->connector.dpms = DRM_MODE_DPMS_OFF;
-	mxsfb->connector.polled = 0;
-	drm_connector_helper_add(&mxsfb->connector,
-			&mxsfb_panel_connector_helper_funcs);
-	ret = drm_connector_init(drm, &mxsfb->connector,
-				 &mxsfb_panel_connector_funcs,
-				 DRM_MODE_CONNECTOR_Unknown);
-	if (!ret)
-		mxsfb->panel = panel;
+	if (mxsfb->panel) {
+		mxsfb->connector = &mxsfb->panel_connector;
+		mxsfb->connector->dpms = DRM_MODE_DPMS_OFF;
+		mxsfb->connector->polled = 0;
+		drm_connector_helper_add(mxsfb->connector,
+					 &mxsfb_panel_connector_helper_funcs);
+		ret = drm_connector_init(drm, mxsfb->connector,
+					 &mxsfb_panel_connector_funcs,
+					 DRM_MODE_CONNECTOR_Unknown);
+	}
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_regs.h b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
index 932d7ea..71426aa 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_regs.h
+++ b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
@@ -14,19 +14,31 @@
 
 #define LCDC_CTRL			0x00
 #define LCDC_CTRL1			0x10
+#define LCDC_V4_CTRL2			0x20
 #define LCDC_V3_TRANSFER_COUNT		0x20
 #define LCDC_V4_TRANSFER_COUNT		0x30
 #define LCDC_V4_CUR_BUF			0x40
 #define LCDC_V4_NEXT_BUF		0x50
 #define LCDC_V3_CUR_BUF			0x30
 #define LCDC_V3_NEXT_BUF		0x40
+#define LCDC_TIMING			0x60
 #define LCDC_VDCTRL0			0x70
 #define LCDC_VDCTRL1			0x80
 #define LCDC_VDCTRL2			0x90
 #define LCDC_VDCTRL3			0xa0
 #define LCDC_VDCTRL4			0xb0
+#define LCDC_DVICTRL0			0xc0
+#define LCDC_DVICTRL1			0xd0
+#define LCDC_DVICTRL2			0xe0
+#define LCDC_DVICTRL3			0xf0
+#define LCDC_DVICTRL4			0x100
+#define LCDC_V4_DATA			0x180
+#define LCDC_V3_DATA			0x1b0
 #define LCDC_V4_DEBUG0			0x1d0
 #define LCDC_V3_DEBUG0			0x1f0
+#define LCDC_AS_CTRL			0x210
+#define LCDC_AS_BUF			0x220
+#define LCDC_AS_NEXT_BUF		0x230
 
 #define CTRL_SFTRST			(1 << 31)
 #define CTRL_CLKGATE			(1 << 30)
@@ -45,12 +57,15 @@
 #define CTRL_DF24			(1 << 1)
 #define CTRL_RUN			(1 << 0)
 
+#define CTRL1_RECOVERY_ON_UNDERFLOW	(1 << 24)
 #define CTRL1_FIFO_CLEAR		(1 << 21)
 #define CTRL1_SET_BYTE_PACKAGING(x)	(((x) & 0xf) << 16)
 #define CTRL1_GET_BYTE_PACKAGING(x)	(((x) >> 16) & 0xf)
 #define CTRL1_CUR_FRAME_DONE_IRQ_EN	(1 << 13)
 #define CTRL1_CUR_FRAME_DONE_IRQ	(1 << 9)
 
+#define CTRL2_OUTSTANDING_REQS__REQ_16		(4 << 21)
+
 #define TRANSFER_COUNT_SET_VCOUNT(x)	(((x) & 0xffff) << 16)
 #define TRANSFER_COUNT_GET_VCOUNT(x)	(((x) >> 16) & 0xffff)
 #define TRANSFER_COUNT_SET_HCOUNT(x)	((x) & 0xffff)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
