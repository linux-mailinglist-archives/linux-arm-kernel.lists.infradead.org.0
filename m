Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5326B16A21F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:25:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dHddZgoxj4td/ZtHS7ovKmYf3+9OcQnI1IyYuJDOvY=; b=fmgzrpbvAHV6dX
	fKKw6dNcRrc8MTxYi32H0+DrqU02fT+MC015vnGd2zZbgvfMt59SQZvCfNaMlrBFHIPaF95Fdfy4I
	CN5dddFrvKZNTWo+gccAYmAt6L23IAzmjcJCSn+Z8cgGlj1oDIH7racYu0/3FKBld9fE0pSxzB4Wd
	ZjgcmBUGqHZx+E+Y0LonqqJ6Vczs+j8qIuF7ZySt7M+0LVlNWpToL/PtmhTJwHB/Un2VYe0Jxq8vP
	Xwf5wgA+467PdqZ7mNkx/7qlryFMxPWU1s4F14+IkCGuxKTqWrE+uKE2Gu2CNmKsSLPjrEWzyEmt2
	/W8ysa8Kf+MuYgc6OEzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69ze-0001Zi-FE; Mon, 24 Feb 2020 09:25:38 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kc-0002LH-MO; Mon, 24 Feb 2020 09:10:11 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id E1D4360C;
 Mon, 24 Feb 2020 04:10:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=mcFwGrdVz0ct4
 0UyDYOD8Nt5bLII11Jc/jf2Q/U4bxw=; b=iHM+sQF6UVnTI47IXZc3PlTYUXsRR
 U2jSuYxriZOMaDsZqqBRjbM/iZwu4VTQYgQ8+kmwZ8v/cLAzQUvRMFJUKkGoQZH9
 2rdHOEdSCdl/HxPKiUBXk0FwActBwp8bQl3TVk4jg1vrWUwxbhYK7JvAz586p9+p
 4LCKcO6YRzgc5BzSrvSdNciWK0kiiBh4QNB5qW/tBgxrP+FkPTiZSZ2v2tswBAUg
 TYlJTyGWoTlAVgkeuQKaWuvGtOEjvDRzkHaWjS2doYfSX/rcvpq9kchdmH6SOEp6
 PfRL1ymXlcqqpv3QhBWJd7vESoTJdQiG/lz7z0tiMpr0mqZoImhTJfC1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=mcFwGrdVz0ct40UyDYOD8Nt5bLII11Jc/jf2Q/U4bxw=; b=IwvgNm4i
 rAO/ba8IQEzPWm3oQieOwnW3kqkvB99vWJ+G8xU2CFXc+kiQdyCtGToW4k+tZN43
 13oc5CpLD0zfujT+WTe+/dailW7PUfuOKvqm2zPBpJq9H+U0paWwqtyA05mFMujG
 FTLKzaTs8mV71ggEOrlaF4fQ0PP9SgofiHsIClYUANU6RzRsbHwlqiUarNgc488o
 Ap5cWVch7BgMADb7D4ZekJkcitpvTJ8BKj9I/hvC+W2jLhP3xIJN4wh8eYmhYBnh
 U4JLVrlyt+eIYP42eq8tZaaHNim289sAZRJ3ClvDuxDIsDuxQpZ0UgXbejpcd1qo
 0Ux83ii93nCuYA==
X-ME-Sender: <xms:7JJTXnIQl7ukWV0H30yvDdiL2yDlF-i14ycmNsFUU720E3pxO1fyQg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepgeegnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:7JJTXtDUHgAxb09YmLoESEs-n9cppupfLwnGZ6DgcID8yPRASWOo4Q>
 <xmx:7JJTXkW501oBP-IZoOsyqytuMyen6WyX6K0ZxWsZ75NQ_D1wTrRhVA>
 <xmx:7JJTXu4onxlITsiJJK7_UGbsZ9Q2fh2_bzxTbDefOY59r2zXB6joqw>
 <xmx:7JJTXnAcT1yYnGKacRxNSVYdN2PNex0Z0hsQLi8be9wKcGd_Y9aAdGKw_1A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1051C328006A;
 Mon, 24 Feb 2020 04:10:03 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 52/89] drm/vc4: crtc: Assign output to channel automatically
Date: Mon, 24 Feb 2020 10:06:54 +0100
Message-Id: <44e23fcd29c480ee5413c92ee650fb6edc7f200c.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011007_826384_A02D1F29 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The HVS found in the BCM2711 has 6 outputs and 3 FIFOs, with each output
being connected to a pixelvalve, and some muxing between the FIFOs and
outputs.

Any output cannot feed from any FIFO though, and they all have a bunch of
constraints.

In order to support this, let's store the possible FIFOs each output can be
assigned to in the vc4_crtc_data, and use that information at atomic_check
time to iterate over all the CRTCs enabled and assign them FIFOs.

The channel assigned is then set in the vc4_crtc_state so that the rest of
the driver can use it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c |  37 +++++----
 drivers/gpu/drm/vc4/vc4_drv.h  |   7 +-
 drivers/gpu/drm/vc4/vc4_kms.c  | 143 ++++++++++++++++++++++++++++++++--
 drivers/gpu/drm/vc4/vc4_regs.h |  10 ++-
 4 files changed, 173 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 25add62080a1..f8e4b2971510 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -90,6 +90,7 @@ bool vc4_crtc_get_scanoutpos(struct drm_device *dev, unsigned int crtc_id,
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
 	struct drm_crtc *crtc = drm_crtc_from_index(dev, crtc_id);
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+	struct vc4_crtc_state *vc4_crtc_state = to_vc4_crtc_state(crtc->state);
 	unsigned int cob_size;
 	u32 val;
 	int fifo_lines;
@@ -106,7 +107,7 @@ bool vc4_crtc_get_scanoutpos(struct drm_device *dev, unsigned int crtc_id,
 	 * Read vertical scanline which is currently composed for our
 	 * pixelvalve by the HVS, and also the scaler status.
 	 */
-	val = HVS_READ(SCALER_DISPSTATX(vc4_crtc->channel));
+	val = HVS_READ(SCALER_DISPSTATX(vc4_crtc_state->assigned_channel));
 
 	/* Get optional system timestamp after query. */
 	if (etime)
@@ -126,7 +127,7 @@ bool vc4_crtc_get_scanoutpos(struct drm_device *dev, unsigned int crtc_id,
 			*hpos += mode->crtc_htotal / 2;
 	}
 
-	cob_size = vc4_crtc_get_cob_allocation(vc4_crtc, vc4_crtc->channel);
+	cob_size = vc4_crtc_get_cob_allocation(vc4_crtc, vc4_crtc_state->assigned_channel);
 	/* This is the offset we need for translating hvs -> pv scanout pos. */
 	fifo_lines = cob_size / mode->crtc_hdisplay;
 
@@ -213,6 +214,7 @@ vc4_crtc_lut_load(struct drm_crtc *crtc)
 	struct drm_device *dev = crtc->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+	struct vc4_crtc_state *vc4_crtc_state = to_vc4_crtc_state(crtc->state);
 	u32 i;
 
 	/* The LUT memory is laid out with each HVS channel in order,
@@ -221,7 +223,7 @@ vc4_crtc_lut_load(struct drm_crtc *crtc)
 	 */
 	HVS_WRITE(SCALER_GAMADDR,
 		  SCALER_GAMADDR_AUTOINC |
-		  (vc4_crtc->channel * 3 * crtc->gamma_size));
+		  (vc4_crtc_state->assigned_channel * 3 * crtc->gamma_size));
 
 	for (i = 0; i < crtc->gamma_size; i++)
 		HVS_WRITE(SCALER_GAMDATA, vc4_crtc->lut_r[i]);
@@ -394,7 +396,7 @@ static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
 		drm_print_regset32(&p, &vc4_crtc->regset);
 	}
 
-	if (vc4_crtc->channel == 2) {
+	if (vc4_crtc->data->hvs_output == 2) {
 		u32 dispctrl;
 		u32 dsp3_mux;
 
@@ -421,7 +423,7 @@ static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
 	if (!vc4_state->feed_txp)
 		vc4_crtc_config_pv(crtc);
 
-	HVS_WRITE(SCALER_DISPBKGNDX(vc4_crtc->channel),
+	HVS_WRITE(SCALER_DISPBKGNDX(vc4_state->assigned_channel),
 		  SCALER_DISPBKGND_AUTOHS |
 		  SCALER_DISPBKGND_GAMMA |
 		  (interlace ? SCALER_DISPBKGND_INTERLACE : 0));
@@ -453,7 +455,8 @@ static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
 	struct drm_device *dev = crtc->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
-	u32 chan = vc4_crtc->channel;
+	struct vc4_crtc_state *vc4_crtc_state = to_vc4_crtc_state(old_state);
+	u32 chan = vc4_crtc_state->assigned_channel;
 	int ret;
 	require_hvs_enabled(dev);
 
@@ -532,12 +535,12 @@ static void vc4_crtc_update_dlist(struct drm_crtc *crtc)
 			crtc->state->event = NULL;
 		}
 
-		HVS_WRITE(SCALER_DISPLISTX(vc4_crtc->channel),
+		HVS_WRITE(SCALER_DISPLISTX(vc4_state->assigned_channel),
 			  vc4_state->mm.start);
 
 		spin_unlock_irqrestore(&dev->event_lock, flags);
 	} else {
-		HVS_WRITE(SCALER_DISPLISTX(vc4_crtc->channel),
+		HVS_WRITE(SCALER_DISPLISTX(vc4_state->assigned_channel),
 			  vc4_state->mm.start);
 	}
 }
@@ -586,7 +589,7 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 			    (vc4_state->feed_txp ?
 					SCALER5_DISPCTRLX_ONESHOT : 0);
 
-	HVS_WRITE(SCALER_DISPCTRLX(vc4_crtc->channel), dispctrl);
+	HVS_WRITE(SCALER_DISPCTRLX(vc4_state->assigned_channel), dispctrl);
 
 	/* When feeding the transposer block the pixelvalve is unneeded and
 	 * should not be enabled.
@@ -702,7 +705,6 @@ static void vc4_crtc_atomic_flush(struct drm_crtc *crtc,
 {
 	struct drm_device *dev = crtc->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
 	struct drm_plane *plane;
 	struct vc4_plane_state *vc4_plane_state;
@@ -744,8 +746,8 @@ static void vc4_crtc_atomic_flush(struct drm_crtc *crtc,
 		/* This sets a black background color fill, as is the case
 		 * with other DRM drivers.
 		 */
-		HVS_WRITE(SCALER_DISPBKGNDX(vc4_crtc->channel),
-			  HVS_READ(SCALER_DISPBKGNDX(vc4_crtc->channel)) |
+		HVS_WRITE(SCALER_DISPBKGNDX(vc4_state->assigned_channel),
+			  HVS_READ(SCALER_DISPBKGNDX(vc4_state->assigned_channel)) |
 			  SCALER_DISPBKGND_FILL);
 
 	/* Only update DISPLIST if the CRTC was already running and is not
@@ -759,7 +761,7 @@ static void vc4_crtc_atomic_flush(struct drm_crtc *crtc,
 		vc4_crtc_update_dlist(crtc);
 
 	if (crtc->state->color_mgmt_changed) {
-		u32 dispbkgndx = HVS_READ(SCALER_DISPBKGNDX(vc4_crtc->channel));
+		u32 dispbkgndx = HVS_READ(SCALER_DISPBKGNDX(vc4_state->assigned_channel));
 
 		if (crtc->state->gamma_lut) {
 			vc4_crtc_update_gamma_lut(crtc);
@@ -771,7 +773,7 @@ static void vc4_crtc_atomic_flush(struct drm_crtc *crtc,
 			 */
 			dispbkgndx &= ~SCALER_DISPBKGND_GAMMA;
 		}
-		HVS_WRITE(SCALER_DISPBKGNDX(vc4_crtc->channel), dispbkgndx);
+		HVS_WRITE(SCALER_DISPBKGNDX(vc4_state->assigned_channel), dispbkgndx);
 	}
 
 	if (debug_dump_regs) {
@@ -802,7 +804,7 @@ static void vc4_crtc_handle_page_flip(struct vc4_crtc *vc4_crtc)
 	struct drm_device *dev = crtc->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
 	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
-	u32 chan = vc4_crtc->channel;
+	u32 chan = vc4_state->assigned_channel;
 	unsigned long flags;
 
 	spin_lock_irqsave(&dev->event_lock, flags);
@@ -1001,6 +1003,7 @@ static struct drm_crtc_state *vc4_crtc_duplicate_state(struct drm_crtc *crtc)
 	old_vc4_state = to_vc4_crtc_state(crtc->state);
 	vc4_state->feed_txp = old_vc4_state->feed_txp;
 	vc4_state->margins = old_vc4_state->margins;
+	vc4_state->assigned_channel = old_vc4_state->assigned_channel;
 
 	__drm_atomic_helper_crtc_duplicate_state(crtc, &vc4_state->base);
 	return &vc4_state->base;
@@ -1060,6 +1063,7 @@ static const struct drm_crtc_helper_funcs vc4_crtc_helper_funcs = {
 };
 
 static const struct vc4_crtc_data bcm2835_pv0_data = {
+	.hvs_available_channels = BIT(0),
 	.hvs_output = 0,
 	.debugfs_name = "crtc0_regs",
 	.pixels_per_clock = 1,
@@ -1070,6 +1074,7 @@ static const struct vc4_crtc_data bcm2835_pv0_data = {
 };
 
 static const struct vc4_crtc_data bcm2835_pv1_data = {
+	.hvs_available_channels = BIT(2),
 	.hvs_output = 2,
 	.debugfs_name = "crtc1_regs",
 	.pixels_per_clock = 1,
@@ -1080,6 +1085,7 @@ static const struct vc4_crtc_data bcm2835_pv1_data = {
 };
 
 static const struct vc4_crtc_data bcm2835_pv2_data = {
+	.hvs_available_channels = BIT(1),
 	.hvs_output = 1,
 	.debugfs_name = "crtc2_regs",
 	.pixels_per_clock = 1,
@@ -1171,7 +1177,6 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 	drm_crtc_init_with_planes(drm, crtc, primary_plane, NULL,
 				  &vc4_crtc_funcs, NULL);
 	drm_crtc_helper_add(crtc, &vc4_crtc_helper_funcs);
-	vc4_crtc->channel = vc4_crtc->data->hvs_output;
 	drm_mode_crtc_set_gamma_size(crtc, ARRAY_SIZE(vc4_crtc->lut_r));
 	drm_crtc_enable_color_mgmt(crtc, 0, false, crtc->gamma_size);
 
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index e1cb7a16f475..f31a6593da8a 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -448,6 +448,9 @@ to_vc4_encoder(struct drm_encoder *encoder)
 }
 
 struct vc4_crtc_data {
+	/* Which channels of the HVS can the output source from */
+	unsigned int hvs_available_channels;
+
 	/* Which output of the HVS this pixelvalve sources from. */
 	int hvs_output;
 
@@ -467,9 +470,6 @@ struct vc4_crtc {
 	/* Timestamp at start of vblank irq - unaffected by lock delays. */
 	ktime_t t_vblank;
 
-	/* Which HVS channel we're using for our CRTC. */
-	int channel;
-
 	u8 lut_r[256];
 	u8 lut_g[256];
 	u8 lut_b[256];
@@ -491,6 +491,7 @@ struct vc4_crtc_state {
 	struct drm_mm_node mm;
 	bool feed_txp;
 	bool txp_armed;
+	unsigned int assigned_channel;
 
 	struct {
 		unsigned int left;
diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index 71e7211a5fb9..bdcd851450da 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -11,6 +11,9 @@
  * crtc, HDMI encoder).
  */
 
+#include <linux/bitfield.h>
+#include <linux/bitops.h>
+
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
@@ -144,6 +147,72 @@ vc4_ctm_commit(struct vc4_dev *vc4, struct drm_atomic_state *state)
 		  VC4_SET_FIELD(ctm_state->fifo, SCALER_OLEDOFFS_DISPFIFO));
 }
 
+static void vc4_hvs_pv_muxing_commit(struct vc4_dev *vc4,
+				     struct drm_atomic_state *state)
+{
+	struct drm_crtc_state *crtc_state;
+	struct drm_crtc *crtc;
+	unsigned char dsp2_mux = 0;
+	unsigned char dsp3_mux = 3;
+	unsigned char dsp4_mux = 3;
+	unsigned char dsp5_mux = 3;
+	unsigned int i;
+	u32 reg;
+
+	for_each_new_crtc_in_state(state, crtc, crtc_state, i) {
+		struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc_state);
+		struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+
+		if (!crtc_state->active)
+			continue;
+
+		switch (vc4_crtc->data->hvs_output) {
+		case 2:
+			dsp2_mux = (vc4_state->assigned_channel == 2) ? 1 : 0;
+			break;
+
+		case 3:
+			dsp3_mux = vc4_state->assigned_channel;
+			break;
+
+		case 4:
+			dsp4_mux = vc4_state->assigned_channel;
+			break;
+
+		case 5:
+			dsp5_mux = vc4_state->assigned_channel;
+			break;
+
+		default:
+			break;
+		}
+	}
+
+	reg = HVS_READ(SCALER_DISPECTRL);
+	if (FIELD_GET(SCALER_DISPECTRL_DSP2_MUX_MASK, reg) != dsp2_mux)
+		HVS_WRITE(SCALER_DISPECTRL,
+			  (reg & ~SCALER_DISPECTRL_DSP2_MUX_MASK) |
+			  VC4_SET_FIELD(dsp2_mux, SCALER_DISPECTRL_DSP2_MUX));
+
+	reg = HVS_READ(SCALER_DISPCTRL);
+	if (FIELD_GET(SCALER_DISPCTRL_DSP3_MUX_MASK, reg) != dsp3_mux)
+		HVS_WRITE(SCALER_DISPCTRL,
+			  (reg & ~SCALER_DISPCTRL_DSP3_MUX_MASK) |
+			  VC4_SET_FIELD(dsp3_mux, SCALER_DISPCTRL_DSP3_MUX));
+
+	reg = HVS_READ(SCALER_DISPEOLN);
+	if (FIELD_GET(SCALER_DISPEOLN_DSP4_MUX_MASK, reg) != dsp4_mux)
+		HVS_WRITE(SCALER_DISPEOLN,
+			  (reg & ~SCALER_DISPEOLN_DSP4_MUX_MASK) |
+			  VC4_SET_FIELD(dsp4_mux, SCALER_DISPEOLN_DSP4_MUX));
+
+	reg = HVS_READ(SCALER_DISPDITHER);
+	if (FIELD_GET(SCALER_DISPDITHER_DSP5_MUX_MASK, reg) != dsp5_mux)
+		HVS_WRITE(SCALER_DISPDITHER,
+			  (reg & ~SCALER_DISPDITHER_DSP5_MUX_MASK) |
+			  VC4_SET_FIELD(dsp5_mux, SCALER_DISPDITHER_DSP5_MUX));
+}
+
 static void
 vc4_atomic_complete_commit(struct drm_atomic_state *state)
 {
@@ -153,11 +222,15 @@ vc4_atomic_complete_commit(struct drm_atomic_state *state)
 	int i;
 
 	for (i = 0; i < dev->mode_config.num_crtc; i++) {
-		if (!state->crtcs[i].ptr || !state->crtcs[i].commit)
+		struct __drm_crtcs_state *_state = &state->crtcs[i];
+		struct vc4_crtc_state *vc4_crtc_state;
+
+		if (!_state->ptr || !_state->commit)
 			continue;
 
-		vc4_crtc = to_vc4_crtc(state->crtcs[i].ptr);
-		vc4_hvs_mask_underrun(dev, vc4_crtc->channel);
+		vc4_crtc = to_vc4_crtc(_state->ptr);
+		vc4_crtc_state = to_vc4_crtc_state(_state->state);
+		vc4_hvs_mask_underrun(dev, vc4_crtc_state->assigned_channel);
 	}
 
 	drm_atomic_helper_wait_for_fences(dev, state, false);
@@ -167,6 +240,7 @@ vc4_atomic_complete_commit(struct drm_atomic_state *state)
 	drm_atomic_helper_commit_modeset_disables(dev, state);
 
 	vc4_ctm_commit(vc4, state);
+	vc4_hvs_pv_muxing_commit(vc4, state);
 
 	drm_atomic_helper_commit_planes(dev, state, 0);
 
@@ -374,8 +448,11 @@ vc4_ctm_atomic_check(struct drm_device *dev, struct drm_atomic_state *state)
 
 		/* CTM is being enabled or the matrix changed. */
 		if (new_crtc_state->ctm) {
+			struct vc4_crtc_state *vc4_crtc_state =
+				to_vc4_crtc_state(new_crtc_state);
+
 			/* fifo is 1-based since 0 disables CTM. */
-			int fifo = to_vc4_crtc(crtc)->channel + 1;
+			int fifo = vc4_crtc_state->assigned_channel + 1;
 
 			/* Check userland isn't trying to turn on CTM for more
 			 * than one CRTC at a time.
@@ -488,10 +565,66 @@ static const struct drm_private_state_funcs vc4_load_tracker_state_funcs = {
 	.atomic_destroy_state = vc4_load_tracker_destroy_state,
 };
 
+#define NUM_OUTPUTS  6
+#define NUM_CHANNELS 3
+
 static int
 vc4_atomic_check(struct drm_device *dev, struct drm_atomic_state *state)
 {
-	int ret;
+	unsigned long unassigned_channels = GENMASK(NUM_CHANNELS - 1, 0);
+	struct drm_crtc_state *crtc_state;
+	struct drm_crtc *crtc;
+	int i, ret;
+
+	for_each_new_crtc_in_state(state, crtc, crtc_state, i) {
+		struct vc4_crtc_state *vc4_crtc_state =
+			to_vc4_crtc_state(crtc_state);
+		struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+		bool is_assigned = false;
+		unsigned int channel;
+
+		if (!crtc_state->active)
+			continue;
+
+		/*
+		 * The problem we have to solve here is that we have
+		 * up to 7 encoders, connected to up to 6 CRTCs.
+		 *
+		 * Those CRTCs, depending on the instance, can be
+		 * routed to 1, 2 or 3 HVS FIFOs, and we need to set
+		 * the change the muxing between FIFOs and outputs in
+		 * the HVS accordingly.
+		 *
+		 * It would be pretty hard to come up with an
+		 * algorithm that would generically solve
+		 * this. However, the current routing trees we support
+		 * allow us to simplify a bit the problem.
+		 *
+		 * Indeed, with the current supported layouts, if we
+		 * try to assign in the ascending crtc index order the
+		 * FIFOs, we can't fall into the situation where an
+		 * earlier CRTC that had multiple routes is assigned
+		 * one that was the only option for a later CRTC.
+		 *
+		 * If the layout changes and doesn't give us that in
+		 * the future, we will need to have something smarter,
+		 * but it works so far.
+		 */
+		for_each_set_bit(channel, &unassigned_channels,
+				 sizeof(unassigned_channels)) {
+
+			if (!(BIT(channel) & vc4_crtc->data->hvs_available_channels))
+				continue;
+
+			vc4_crtc_state->assigned_channel = channel;
+			unassigned_channels &= ~BIT(channel);
+			is_assigned = true;
+			break;
+		}
+
+		if (!is_assigned)
+			return -EINVAL;
+	}
 
 	ret = vc4_ctm_atomic_check(dev, state);
 	if (ret < 0)
diff --git a/drivers/gpu/drm/vc4/vc4_regs.h b/drivers/gpu/drm/vc4/vc4_regs.h
index 8a51baf681fe..b96ebbb1354b 100644
--- a/drivers/gpu/drm/vc4/vc4_regs.h
+++ b/drivers/gpu/drm/vc4/vc4_regs.h
@@ -287,9 +287,19 @@
 
 #define SCALER_DISPID                           0x00000008
 #define SCALER_DISPECTRL                        0x0000000c
+# define SCALER_DISPECTRL_DSP2_MUX_SHIFT	31
+# define SCALER_DISPECTRL_DSP2_MUX_MASK		VC4_MASK(31, 31)
+
 #define SCALER_DISPPROF                         0x00000010
+
 #define SCALER_DISPDITHER                       0x00000014
+# define SCALER_DISPDITHER_DSP5_MUX_SHIFT	30
+# define SCALER_DISPDITHER_DSP5_MUX_MASK	VC4_MASK(31, 30)
+
 #define SCALER_DISPEOLN                         0x00000018
+# define SCALER_DISPEOLN_DSP4_MUX_SHIFT		30
+# define SCALER_DISPEOLN_DSP4_MUX_MASK		VC4_MASK(31, 30)
+
 #define SCALER_DISPLIST0                        0x00000020
 #define SCALER_DISPLIST1                        0x00000024
 #define SCALER_DISPLIST2                        0x00000028
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
