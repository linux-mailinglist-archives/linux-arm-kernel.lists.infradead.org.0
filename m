Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEC01B7A74
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8E32R4T2oGPf+lXnHoRcr6tvoI4oZ31yozBdZRP4l0=; b=seIxRwARRJy3CY
	KML2LmVMq4RSyex4QD9ljeQad3ja1fBgunXyjjbgFA6vNAoevr7+ks9uFRaLMbc7potYolFKzgU0l
	/IY0yIaLvMDE7qqNXgp7KLGdu1LQijI/5GYZulOAtiDDwqgzDUGqD3xjSkuxD9Z4xB8f55VnpcLK1
	xsbloCKqDEvy3ABAj5tVgFDJIXWsnIvwjtqmiW22xWK4EleSt5YCTQE55e/mR3d8ZKA9s6ZHW43OC
	K+UCyCoAj3VrupmzTps604yBm9AkF5/19Qd7GHGmhmK+oqh1ZJEHEB7z6jt/p05OmEwSCajAHJFtv
	UeZdwDEjjhUtufK1cv8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0Yz-0005yU-CE; Fri, 24 Apr 2020 15:48:25 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0NB-0007yu-DA; Fri, 24 Apr 2020 15:36:17 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 081F711F1;
 Fri, 24 Apr 2020 11:36:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=/aSkAgJPxGu9V
 VRopKJxNOyQcJbRGNTDx7PUivgMCU0=; b=YmFhQkbmyaQU/rjLZos+4I0/mptzq
 lUt2Jq98L+cidbPNvrWM5Sl3sAq9rTL+5MCW6CAiMBLrNYqUi1LoBVBFuT6gp/09
 +C+FjqLeOuIaCwaaPXOOAY6wLkz1k9UiQu54keT81DXAFUR2rLjQEX6LPzgm+scX
 pSyeVx9Q8e3DO6IVDi1C8AsrMe111PPsCtIU4fJ0Aez2dFluAYjVYPCU9rnr+M/g
 52uLL/X7/dM5PenxMPkforjC1/5mZxOY7LvtDnkRHI/nTnNha7WOe1Pt2KUU0zjk
 ZnCgAH1A/ylmAXTxC5xUpVhX1oKR37pW6p4yXEtzZRd4YaLh0FYA179oQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=/aSkAgJPxGu9VVRopKJxNOyQcJbRGNTDx7PUivgMCU0=; b=zQcKS36n
 KCUfnqtRlnkgAQrgf1daz5JEtK811DtpZMTBNB9xZs/zEjnf21wE4RdYvmDQp4dF
 rYaoO9xT70GbepajBGFBKt0POPe9faNdGjVAMcgRn9vauMKvjIwpW+SfUyE1z7+G
 FCkwsZrBtRMoHJbxecrw0/QDJFR7kOY1IWpkc3hoH759/VAc7BP0ZoRhJiPT7GF9
 W4ay2tvpDBTVjOaRXcwq3K7NyrubnghzhPcQ7Dbudq1KS3IBfH6jE1G2sY91uyo4
 jF/mpWT20hcKkynNTElW7vRdGjebEbUSBw39oMOUxzc6bmISURN+mkOIKW/cRmQv
 DIF7aBhdoIdwnA==
X-ME-Sender: <xms:awejXqyZ8RGngol3blfd1eFBvSQUlrRN5Zv6nargG-LiZYmrxbqh1Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvleenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:awejXiDg5p8qo-so-IPPAw-lHeyivMsaQlXy6ZX19SD9jjpTkB0TFQ>
 <xmx:awejXv5iy3IbmYQoDAcrfaTula5SjNbM7n0yidRVewyt4RaVF2BW9w>
 <xmx:awejXsPv2FZnRgQo1mclSe7krReI-hl6Q_rShrZOdG2mSMZaiZGq-Q>
 <xmx:awejXnwza7zWMntMZ8-U-7DEGB_65ReTN76Zd_fqrpO8zU75XnW2qJAbwK8>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 38C5F3065D93;
 Fri, 24 Apr 2020 11:36:11 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 35/91] drm/vc4: Add support for the BCM2711 HVS5
Date: Fri, 24 Apr 2020 17:34:16 +0200
Message-Id: <ec5044d3762da564028a54c9fb0c3e0328c3c1e5.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083613_868094_5553A499 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

The HVS found in the BCM2711 is slightly different from the previous
generations.

Most notably, the display list layout changes a bit, the LBM doesn't have
the same size and the formats ordering for some formats is swapped.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c  |  24 +++-
 drivers/gpu/drm/vc4/vc4_drv.h   |   4 +-
 drivers/gpu/drm/vc4/vc4_hvs.c   |  16 ++-
 drivers/gpu/drm/vc4/vc4_plane.c | 194 ++++++++++++++++++++++++---------
 drivers/gpu/drm/vc4/vc4_regs.h  |  67 +++++++++++-
 5 files changed, 246 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 1208258ad3b2..591a10ae1950 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -551,6 +551,7 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
 	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
+	u32 dispctrl;
 
 	require_hvs_enabled(dev);
 
@@ -565,11 +566,24 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 	 * When feeding the transposer, we should operate in oneshot
 	 * mode.
 	 */
-	HVS_WRITE(SCALER_DISPCTRLX(vc4_crtc->channel),
-		  VC4_SET_FIELD(mode->hdisplay, SCALER_DISPCTRLX_WIDTH) |
-		  VC4_SET_FIELD(mode->vdisplay, SCALER_DISPCTRLX_HEIGHT) |
-		  SCALER_DISPCTRLX_ENABLE |
-		  (vc4_state->feed_txp ? SCALER_DISPCTRLX_ONESHOT : 0));
+	dispctrl = SCALER_DISPCTRLX_ENABLE;
+
+	if (!vc4->hvs->hvs5)
+		dispctrl |= VC4_SET_FIELD(mode->hdisplay,
+					  SCALER_DISPCTRLX_WIDTH) |
+			    VC4_SET_FIELD(mode->vdisplay,
+					  SCALER_DISPCTRLX_HEIGHT) |
+			    (vc4_state->feed_txp ?
+					SCALER_DISPCTRLX_ONESHOT : 0);
+	else
+		dispctrl |= VC4_SET_FIELD(mode->hdisplay,
+					  SCALER5_DISPCTRLX_WIDTH) |
+			    VC4_SET_FIELD(mode->vdisplay,
+					  SCALER5_DISPCTRLX_HEIGHT) |
+			    (vc4_state->feed_txp ?
+					SCALER5_DISPCTRLX_ONESHOT : 0);
+
+	HVS_WRITE(SCALER_DISPCTRLX(vc4_crtc->channel), dispctrl);
 
 	/* When feeding the transposer block the pixelvalve is unneeded and
 	 * should not be enabled.
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 6024de9ecd35..7da417feff5a 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -332,7 +332,11 @@ struct vc4_hvs {
 	spinlock_t mm_lock;
 
 	struct drm_mm_node mitchell_netravali_filter;
+
 	struct debugfs_regset32 regset;
+
+	/* HVS version 5 flag, therefore requires updated dlist structures */
+	bool hvs5;
 };
 
 struct vc4_plane {
diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index 5a43659da319..0fe4758de03a 100644
--- a/drivers/gpu/drm/vc4/vc4_hvs.c
+++ b/drivers/gpu/drm/vc4/vc4_hvs.c
@@ -230,6 +230,9 @@ static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
 
 	hvs->pdev = pdev;
 
+	if (of_device_is_compatible(pdev->dev.of_node, "brcm,bcm2711-hvs"))
+		hvs->hvs5 = true;
+
 	hvs->regs = vc4_ioremap_regs(pdev, 0);
 	if (IS_ERR(hvs->regs))
 		return PTR_ERR(hvs->regs);
@@ -238,7 +241,10 @@ static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
 	hvs->regset.regs = hvs_regs;
 	hvs->regset.nregs = ARRAY_SIZE(hvs_regs);
 
-	hvs->dlist = hvs->regs + SCALER_DLIST_START;
+	if (!hvs->hvs5)
+		hvs->dlist = hvs->regs + SCALER_DLIST_START;
+	else
+		hvs->dlist = hvs->regs + SCALER5_DLIST_START;
 
 	spin_lock_init(&hvs->mm_lock);
 
@@ -256,7 +262,12 @@ static int vc4_hvs_bind(struct device *dev, struct device *master, void *data)
 	 * between planes when they don't overlap on the screen, but
 	 * for now we just allocate globally.
 	 */
-	drm_mm_init(&hvs->lbm_mm, 0, 96 * 1024);
+	if (!hvs->hvs5)
+		/* 96kB */
+		drm_mm_init(&hvs->lbm_mm, 0, 96 * 1024);
+	else
+		/* 70k words */
+		drm_mm_init(&hvs->lbm_mm, 0, 70 * 2 * 1024);
 
 	/* Upload filter kernels.  We only have the one for now, so we
 	 * keep it around for the lifetime of the driver.
@@ -341,6 +352,7 @@ static int vc4_hvs_dev_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id vc4_hvs_dt_match[] = {
+	{ .compatible = "brcm,bcm2711-hvs" },
 	{ .compatible = "brcm,bcm2835-hvs" },
 	{}
 };
diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
index 57a73a2e2e5c..1575c05e3106 100644
--- a/drivers/gpu/drm/vc4/vc4_plane.c
+++ b/drivers/gpu/drm/vc4/vc4_plane.c
@@ -32,45 +32,60 @@ static const struct hvs_format {
 	u32 drm; /* DRM_FORMAT_* */
 	u32 hvs; /* HVS_FORMAT_* */
 	u32 pixel_order;
+	u32 pixel_order_hvs5;
 } hvs_formats[] = {
 	{
-		.drm = DRM_FORMAT_XRGB8888, .hvs = HVS_PIXEL_FORMAT_RGBA8888,
+		.drm = DRM_FORMAT_XRGB8888,
+		.hvs = HVS_PIXEL_FORMAT_RGBA8888,
 		.pixel_order = HVS_PIXEL_ORDER_ABGR,
+		.pixel_order_hvs5 = HVS_PIXEL_ORDER_ARGB,
 	},
 	{
-		.drm = DRM_FORMAT_ARGB8888, .hvs = HVS_PIXEL_FORMAT_RGBA8888,
+		.drm = DRM_FORMAT_ARGB8888,
+		.hvs = HVS_PIXEL_FORMAT_RGBA8888,
 		.pixel_order = HVS_PIXEL_ORDER_ABGR,
+		.pixel_order_hvs5 = HVS_PIXEL_ORDER_ARGB,
 	},
 	{
-		.drm = DRM_FORMAT_ABGR8888, .hvs = HVS_PIXEL_FORMAT_RGBA8888,
+		.drm = DRM_FORMAT_ABGR8888,
+		.hvs = HVS_PIXEL_FORMAT_RGBA8888,
 		.pixel_order = HVS_PIXEL_ORDER_ARGB,
+		.pixel_order_hvs5 = HVS_PIXEL_ORDER_ABGR,
 	},
 	{
-		.drm = DRM_FORMAT_XBGR8888, .hvs = HVS_PIXEL_FORMAT_RGBA8888,
+		.drm = DRM_FORMAT_XBGR8888,
+		.hvs = HVS_PIXEL_FORMAT_RGBA8888,
 		.pixel_order = HVS_PIXEL_ORDER_ARGB,
+		.pixel_order_hvs5 = HVS_PIXEL_ORDER_ABGR,
 	},
 	{
-		.drm = DRM_FORMAT_RGB565, .hvs = HVS_PIXEL_FORMAT_RGB565,
+		.drm = DRM_FORMAT_RGB565,
+		.hvs = HVS_PIXEL_FORMAT_RGB565,
 		.pixel_order = HVS_PIXEL_ORDER_XRGB,
 	},
 	{
-		.drm = DRM_FORMAT_BGR565, .hvs = HVS_PIXEL_FORMAT_RGB565,
+		.drm = DRM_FORMAT_BGR565,
+		.hvs = HVS_PIXEL_FORMAT_RGB565,
 		.pixel_order = HVS_PIXEL_ORDER_XBGR,
 	},
 	{
-		.drm = DRM_FORMAT_ARGB1555, .hvs = HVS_PIXEL_FORMAT_RGBA5551,
+		.drm = DRM_FORMAT_ARGB1555,
+		.hvs = HVS_PIXEL_FORMAT_RGBA5551,
 		.pixel_order = HVS_PIXEL_ORDER_ABGR,
 	},
 	{
-		.drm = DRM_FORMAT_XRGB1555, .hvs = HVS_PIXEL_FORMAT_RGBA5551,
+		.drm = DRM_FORMAT_XRGB1555,
+		.hvs = HVS_PIXEL_FORMAT_RGBA5551,
 		.pixel_order = HVS_PIXEL_ORDER_ABGR,
 	},
 	{
-		.drm = DRM_FORMAT_RGB888, .hvs = HVS_PIXEL_FORMAT_RGB888,
+		.drm = DRM_FORMAT_RGB888,
+		.hvs = HVS_PIXEL_FORMAT_RGB888,
 		.pixel_order = HVS_PIXEL_ORDER_XRGB,
 	},
 	{
-		.drm = DRM_FORMAT_BGR888, .hvs = HVS_PIXEL_FORMAT_RGB888,
+		.drm = DRM_FORMAT_BGR888,
+		.hvs = HVS_PIXEL_FORMAT_RGB888,
 		.pixel_order = HVS_PIXEL_ORDER_XBGR,
 	},
 	{
@@ -781,35 +796,6 @@ static int vc4_plane_mode_set(struct drm_plane *plane,
 		return -EINVAL;
 	}
 
-	/* Control word */
-	vc4_dlist_write(vc4_state,
-			SCALER_CTL0_VALID |
-			(rotation & DRM_MODE_REFLECT_X ? SCALER_CTL0_HFLIP : 0) |
-			(rotation & DRM_MODE_REFLECT_Y ? SCALER_CTL0_VFLIP : 0) |
-			VC4_SET_FIELD(SCALER_CTL0_RGBA_EXPAND_ROUND, SCALER_CTL0_RGBA_EXPAND) |
-			(format->pixel_order << SCALER_CTL0_ORDER_SHIFT) |
-			(hvs_format << SCALER_CTL0_PIXEL_FORMAT_SHIFT) |
-			VC4_SET_FIELD(tiling, SCALER_CTL0_TILING) |
-			(vc4_state->is_unity ? SCALER_CTL0_UNITY : 0) |
-			VC4_SET_FIELD(scl0, SCALER_CTL0_SCL0) |
-			VC4_SET_FIELD(scl1, SCALER_CTL0_SCL1));
-
-	/* Position Word 0: Image Positions and Alpha Value */
-	vc4_state->pos0_offset = vc4_state->dlist_count;
-	vc4_dlist_write(vc4_state,
-			VC4_SET_FIELD(state->alpha >> 8, SCALER_POS0_FIXED_ALPHA) |
-			VC4_SET_FIELD(vc4_state->crtc_x, SCALER_POS0_START_X) |
-			VC4_SET_FIELD(vc4_state->crtc_y, SCALER_POS0_START_Y));
-
-	/* Position Word 1: Scaled Image Dimensions. */
-	if (!vc4_state->is_unity) {
-		vc4_dlist_write(vc4_state,
-				VC4_SET_FIELD(vc4_state->crtc_w,
-					      SCALER_POS1_SCL_WIDTH) |
-				VC4_SET_FIELD(vc4_state->crtc_h,
-					      SCALER_POS1_SCL_HEIGHT));
-	}
-
 	/* Don't waste cycles mixing with plane alpha if the set alpha
 	 * is opaque or there is no per-pixel alpha information.
 	 * In any case we use the alpha property value as the fixed alpha.
@@ -817,20 +803,120 @@ static int vc4_plane_mode_set(struct drm_plane *plane,
 	mix_plane_alpha = state->alpha != DRM_BLEND_ALPHA_OPAQUE &&
 			  fb->format->has_alpha;
 
-	/* Position Word 2: Source Image Size, Alpha */
-	vc4_state->pos2_offset = vc4_state->dlist_count;
-	vc4_dlist_write(vc4_state,
-			VC4_SET_FIELD(fb->format->has_alpha ?
-				      SCALER_POS2_ALPHA_MODE_PIPELINE :
-				      SCALER_POS2_ALPHA_MODE_FIXED,
-				      SCALER_POS2_ALPHA_MODE) |
-			(mix_plane_alpha ? SCALER_POS2_ALPHA_MIX : 0) |
-			(fb->format->has_alpha ? SCALER_POS2_ALPHA_PREMULT : 0) |
-			VC4_SET_FIELD(vc4_state->src_w[0], SCALER_POS2_WIDTH) |
-			VC4_SET_FIELD(vc4_state->src_h[0], SCALER_POS2_HEIGHT));
+	if (!vc4->hvs->hvs5) {
+	/* Control word */
+		vc4_dlist_write(vc4_state,
+				SCALER_CTL0_VALID |
+				(rotation & DRM_MODE_REFLECT_X ? SCALER_CTL0_HFLIP : 0) |
+				(rotation & DRM_MODE_REFLECT_Y ? SCALER_CTL0_VFLIP : 0) |
+				VC4_SET_FIELD(SCALER_CTL0_RGBA_EXPAND_ROUND, SCALER_CTL0_RGBA_EXPAND) |
+				(format->pixel_order << SCALER_CTL0_ORDER_SHIFT) |
+				(hvs_format << SCALER_CTL0_PIXEL_FORMAT_SHIFT) |
+				VC4_SET_FIELD(tiling, SCALER_CTL0_TILING) |
+				(vc4_state->is_unity ? SCALER_CTL0_UNITY : 0) |
+				VC4_SET_FIELD(scl0, SCALER_CTL0_SCL0) |
+				VC4_SET_FIELD(scl1, SCALER_CTL0_SCL1));
+
+		/* Position Word 0: Image Positions and Alpha Value */
+		vc4_state->pos0_offset = vc4_state->dlist_count;
+		vc4_dlist_write(vc4_state,
+				VC4_SET_FIELD(state->alpha >> 8, SCALER_POS0_FIXED_ALPHA) |
+				VC4_SET_FIELD(vc4_state->crtc_x, SCALER_POS0_START_X) |
+				VC4_SET_FIELD(vc4_state->crtc_y, SCALER_POS0_START_Y));
+
+		/* Position Word 1: Scaled Image Dimensions. */
+		if (!vc4_state->is_unity) {
+			vc4_dlist_write(vc4_state,
+					VC4_SET_FIELD(vc4_state->crtc_w,
+						      SCALER_POS1_SCL_WIDTH) |
+					VC4_SET_FIELD(vc4_state->crtc_h,
+						      SCALER_POS1_SCL_HEIGHT));
+		}
+
+		/* Position Word 2: Source Image Size, Alpha */
+		vc4_state->pos2_offset = vc4_state->dlist_count;
+		vc4_dlist_write(vc4_state,
+				VC4_SET_FIELD(fb->format->has_alpha ?
+					      SCALER_POS2_ALPHA_MODE_PIPELINE :
+					      SCALER_POS2_ALPHA_MODE_FIXED,
+					      SCALER_POS2_ALPHA_MODE) |
+				(mix_plane_alpha ? SCALER_POS2_ALPHA_MIX : 0) |
+				(fb->format->has_alpha ?
+						SCALER_POS2_ALPHA_PREMULT : 0) |
+				VC4_SET_FIELD(vc4_state->src_w[0],
+					      SCALER_POS2_WIDTH) |
+				VC4_SET_FIELD(vc4_state->src_h[0],
+					      SCALER_POS2_HEIGHT));
+
+		/* Position Word 3: Context.  Written by the HVS. */
+		vc4_dlist_write(vc4_state, 0xc0c0c0c0);
+
+	} else {
+		u32 hvs_pixel_order = format->pixel_order;
 
-	/* Position Word 3: Context.  Written by the HVS. */
-	vc4_dlist_write(vc4_state, 0xc0c0c0c0);
+		if (format->pixel_order_hvs5)
+			hvs_pixel_order = format->pixel_order_hvs5;
+
+		/* Control word */
+		vc4_dlist_write(vc4_state,
+				SCALER_CTL0_VALID |
+				(hvs_pixel_order << SCALER_CTL0_ORDER_SHIFT) |
+				(hvs_format << SCALER_CTL0_PIXEL_FORMAT_SHIFT) |
+				VC4_SET_FIELD(tiling, SCALER_CTL0_TILING) |
+				(vc4_state->is_unity ?
+						SCALER5_CTL0_UNITY : 0) |
+				VC4_SET_FIELD(scl0, SCALER_CTL0_SCL0) |
+				VC4_SET_FIELD(scl1, SCALER_CTL0_SCL1) |
+				SCALER5_CTL0_ALPHA_EXPAND |
+				SCALER5_CTL0_RGB_EXPAND);
+
+		/* Position Word 0: Image Positions and Alpha Value */
+		vc4_state->pos0_offset = vc4_state->dlist_count;
+		vc4_dlist_write(vc4_state,
+				(rotation & DRM_MODE_REFLECT_Y ?
+						SCALER5_POS0_VFLIP : 0) |
+				VC4_SET_FIELD(vc4_state->crtc_x,
+					      SCALER_POS0_START_X) |
+				(rotation & DRM_MODE_REFLECT_X ?
+					      SCALER5_POS0_HFLIP : 0) |
+				VC4_SET_FIELD(vc4_state->crtc_y,
+					      SCALER5_POS0_START_Y)
+			       );
+
+		/* Control Word 2 */
+		vc4_dlist_write(vc4_state,
+				VC4_SET_FIELD(state->alpha >> 4,
+					      SCALER5_CTL2_ALPHA) |
+				fb->format->has_alpha ?
+					SCALER5_CTL2_ALPHA_PREMULT : 0 |
+				(mix_plane_alpha ?
+					SCALER5_CTL2_ALPHA_MIX : 0) |
+				VC4_SET_FIELD(fb->format->has_alpha ?
+				      SCALER5_CTL2_ALPHA_MODE_PIPELINE :
+				      SCALER5_CTL2_ALPHA_MODE_FIXED,
+				      SCALER5_CTL2_ALPHA_MODE)
+			       );
+
+		/* Position Word 1: Scaled Image Dimensions. */
+		if (!vc4_state->is_unity) {
+			vc4_dlist_write(vc4_state,
+					VC4_SET_FIELD(vc4_state->crtc_w,
+						      SCALER_POS1_SCL_WIDTH) |
+					VC4_SET_FIELD(vc4_state->crtc_h,
+						      SCALER_POS1_SCL_HEIGHT));
+		}
+
+		/* Position Word 2: Source Image Size */
+		vc4_state->pos2_offset = vc4_state->dlist_count;
+		vc4_dlist_write(vc4_state,
+				VC4_SET_FIELD(vc4_state->src_w[0],
+					      SCALER5_POS2_WIDTH) |
+				VC4_SET_FIELD(vc4_state->src_h[0],
+					      SCALER5_POS2_HEIGHT));
+
+		/* Position Word 3: Context.  Written by the HVS. */
+		vc4_dlist_write(vc4_state, 0xc0c0c0c0);
+	}
 
 
 	/* Pointer Word 0/1/2: RGB / Y / Cb / Cr Pointers
@@ -1208,6 +1294,10 @@ static bool vc4_format_mod_supported(struct drm_plane *plane,
 		default:
 			return false;
 		}
+	case DRM_FORMAT_RGBX1010102:
+	case DRM_FORMAT_BGRX1010102:
+	case DRM_FORMAT_RGBA1010102:
+	case DRM_FORMAT_BGRA1010102:
 	case DRM_FORMAT_YUV422:
 	case DRM_FORMAT_YVU422:
 	case DRM_FORMAT_YUV420:
diff --git a/drivers/gpu/drm/vc4/vc4_regs.h b/drivers/gpu/drm/vc4/vc4_regs.h
index b5a6b4cdd332..8a51baf681fe 100644
--- a/drivers/gpu/drm/vc4/vc4_regs.h
+++ b/drivers/gpu/drm/vc4/vc4_regs.h
@@ -328,6 +328,20 @@
 # define SCALER_DISPCTRLX_HEIGHT_MASK		VC4_MASK(11, 0)
 # define SCALER_DISPCTRLX_HEIGHT_SHIFT		0
 
+# define SCALER5_DISPCTRLX_WIDTH_MASK		VC4_MASK(28, 16)
+# define SCALER5_DISPCTRLX_WIDTH_SHIFT		16
+/* Generates a single frame when VSTART is seen and stops at the last
+ * pixel read from the FIFO.
+ */
+# define SCALER5_DISPCTRLX_ONESHOT		BIT(15)
+/* Processes a single context in the dlist and then task switch,
+ * instead of an entire line.
+ */
+# define SCALER5_DISPCTRLX_ONECTX_MASK		VC4_MASK(14, 13)
+# define SCALER5_DISPCTRLX_ONECTX_SHIFT		13
+# define SCALER5_DISPCTRLX_HEIGHT_MASK		VC4_MASK(12, 0)
+# define SCALER5_DISPCTRLX_HEIGHT_SHIFT		0
+
 #define SCALER_DISPBKGND0                       0x00000044
 # define SCALER_DISPBKGND_AUTOHS		BIT(31)
 # define SCALER_DISPBKGND_INTERLACE		BIT(30)
@@ -461,6 +475,8 @@
 #define SCALER_DLIST_START                      0x00002000
 #define SCALER_DLIST_SIZE                       0x00004000
 
+#define SCALER5_DLIST_START			0x00004000
+
 #define VC4_HDMI_CORE_REV			0x000
 
 #define VC4_HDMI_SW_RESET_CONTROL		0x004
@@ -826,6 +842,8 @@ enum hvs_pixel_format {
 	HVS_PIXEL_FORMAT_PALETTE = 13,
 	HVS_PIXEL_FORMAT_YUV444_RGB = 14,
 	HVS_PIXEL_FORMAT_AYUV444_RGB = 15,
+	HVS_PIXEL_FORMAT_RGBA1010102 = 16,
+	HVS_PIXEL_FORMAT_YCBCR_10BIT = 17,
 };
 
 /* Note: the LSB is the rightmost character shown.  Only valid for
@@ -880,6 +898,10 @@ enum hvs_pixel_format {
 #define SCALER_CTL0_RGBA_EXPAND_MSB		2
 #define SCALER_CTL0_RGBA_EXPAND_ROUND		3
 
+#define SCALER5_CTL0_ALPHA_EXPAND		BIT(12)
+
+#define SCALER5_CTL0_RGB_EXPAND			BIT(11)
+
 #define SCALER_CTL0_SCL1_MASK			VC4_MASK(10, 8)
 #define SCALER_CTL0_SCL1_SHIFT			8
 
@@ -897,10 +919,13 @@ enum hvs_pixel_format {
 
 /* Set to indicate no scaling. */
 #define SCALER_CTL0_UNITY			BIT(4)
+#define SCALER5_CTL0_UNITY			BIT(15)
 
 #define SCALER_CTL0_PIXEL_FORMAT_MASK		VC4_MASK(3, 0)
 #define SCALER_CTL0_PIXEL_FORMAT_SHIFT		0
 
+#define SCALER5_CTL0_PIXEL_FORMAT_MASK		VC4_MASK(4, 0)
+
 #define SCALER_POS0_FIXED_ALPHA_MASK		VC4_MASK(31, 24)
 #define SCALER_POS0_FIXED_ALPHA_SHIFT		24
 
@@ -910,12 +935,48 @@ enum hvs_pixel_format {
 #define SCALER_POS0_START_X_MASK		VC4_MASK(11, 0)
 #define SCALER_POS0_START_X_SHIFT		0
 
+#define SCALER5_POS0_START_Y_MASK		VC4_MASK(27, 16)
+#define SCALER5_POS0_START_Y_SHIFT		16
+
+#define SCALER5_POS0_START_X_MASK		VC4_MASK(13, 0)
+#define SCALER5_POS0_START_X_SHIFT		0
+
+#define SCALER5_POS0_VFLIP			BIT(31)
+#define SCALER5_POS0_HFLIP			BIT(15)
+
+#define SCALER5_CTL2_ALPHA_MODE_MASK		VC4_MASK(31, 30)
+#define SCALER5_CTL2_ALPHA_MODE_SHIFT		30
+#define SCALER5_CTL2_ALPHA_MODE_PIPELINE		0
+#define SCALER5_CTL2_ALPHA_MODE_FIXED		1
+#define SCALER5_CTL2_ALPHA_MODE_FIXED_NONZERO	2
+#define SCALER5_CTL2_ALPHA_MODE_FIXED_OVER_0x07	3
+
+#define SCALER5_CTL2_ALPHA_PREMULT		BIT(29)
+
+#define SCALER5_CTL2_ALPHA_MIX			BIT(28)
+
+#define SCALER5_CTL2_ALPHA_LOC			BIT(25)
+
+#define SCALER5_CTL2_MAP_SEL_MASK		VC4_MASK(18, 17)
+#define SCALER5_CTL2_MAP_SEL_SHIFT		17
+
+#define SCALER5_CTL2_GAMMA			BIT(16)
+
+#define SCALER5_CTL2_ALPHA_MASK			VC4_MASK(15, 4)
+#define SCALER5_CTL2_ALPHA_SHIFT		4
+
 #define SCALER_POS1_SCL_HEIGHT_MASK		VC4_MASK(27, 16)
 #define SCALER_POS1_SCL_HEIGHT_SHIFT		16
 
 #define SCALER_POS1_SCL_WIDTH_MASK		VC4_MASK(11, 0)
 #define SCALER_POS1_SCL_WIDTH_SHIFT		0
 
+#define SCALER5_POS1_SCL_HEIGHT_MASK		VC4_MASK(28, 16)
+#define SCALER5_POS1_SCL_HEIGHT_SHIFT		16
+
+#define SCALER5_POS1_SCL_WIDTH_MASK		VC4_MASK(12, 0)
+#define SCALER5_POS1_SCL_WIDTH_SHIFT		0
+
 #define SCALER_POS2_ALPHA_MODE_MASK		VC4_MASK(31, 30)
 #define SCALER_POS2_ALPHA_MODE_SHIFT		30
 #define SCALER_POS2_ALPHA_MODE_PIPELINE		0
@@ -931,6 +992,12 @@ enum hvs_pixel_format {
 #define SCALER_POS2_WIDTH_MASK			VC4_MASK(11, 0)
 #define SCALER_POS2_WIDTH_SHIFT			0
 
+#define SCALER5_POS2_HEIGHT_MASK		VC4_MASK(28, 16)
+#define SCALER5_POS2_HEIGHT_SHIFT		16
+
+#define SCALER5_POS2_WIDTH_MASK			VC4_MASK(12, 0)
+#define SCALER5_POS2_WIDTH_SHIFT		0
+
 /* Color Space Conversion words.  Some values are S2.8 signed
  * integers, except that the 2 integer bits map as {0x0: 0, 0x1: 1,
  * 0x2: 2, 0x3: -1}
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
