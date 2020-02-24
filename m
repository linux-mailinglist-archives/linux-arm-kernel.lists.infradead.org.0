Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A811916A26D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:36:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rvRC8VBuLYWn6CbsJwVWo0zpC/n5KsYhZCCUouPJpM=; b=cdLUMFkU/HZ00K
	mICVC3RxYUpV8TyQSJyCHdvZTXXzJi4vrts1uW0a0Ll/RfXuGxsrNz12d4RoN9suslKk/bxaQO4fy
	BGwxuHT8D+S+0ttD8fVisQoNEc7Y1dsb/EJHKQE3XsXTEar9yRtwPmQdCC5Pkf7udcxC1dUQbqEKb
	kBHt7lUvSE6QCEaywPiMIx3Udv8LfII2igpymrz73jRDeoRCakYh+LkPSdy/x54eag16hshdCShQu
	UeSKh7TRx7OQMaJysFdWx8q8riS9JARH+wk+cXTAFIoOD4q1xkCG5rbXAg+P4UTFGLIf9eKBMa5UM
	HRHTqjtoKhEQW8uLoG0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AAS-0005kF-HH; Mon, 24 Feb 2020 09:36:48 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69lE-0003n7-2T; Mon, 24 Feb 2020 09:10:48 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 4493764A;
 Mon, 24 Feb 2020 04:10:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=f23s5LtUPpWk9
 1fNarGn9mwa2qYlTUm0iFAnmaL3yBc=; b=sA8Fvznc57wpG+poIynFpxciivib4
 WOWNyUEAveG92r9FkUDkuBZ2+d9BN21ewCZPoZItfRRTOc7Iv24rnqNt4d3ffXXu
 OeBNQXTR2w25mnhTfhMh6Gn3PtSWIPJhbWZwwIxZRoEiL+MY5NGHL4mCUP2Bq43u
 YOB70CQ0/nI3gDJHLmRNgnx95REF1E29E2PwWoRrA3XZZX/7kHiwA79OkfqONq9d
 ACQpRw6gkz8lVygQWOXTAeIm4SdgGCuyrdNXEzcJrf2CXf3ZZqal8dpmJbFjM90J
 iBfcQcPrbN+xm4DibSuhyeZchKWGfp0UaQ7NiG0y9wEcHWWSfIWZAJ3Lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=f23s5LtUPpWk91fNarGn9mwa2qYlTUm0iFAnmaL3yBc=; b=L7nAKSp3
 Ov5VTao6YYh9VzLM4uFw0JnK8s1fsVJjv2gObz2AIuZYeLmvlkC9QMBmb1mYht1u
 E9kHxvE8h0nN4e3DdqlO5Nn3v7sngMefoCnbBfT08A2ku1HxBMAMd4a2UB4ms4dm
 batXIQpxdrfO8RHU1o6ZbSnsnJs8Ren7ukEYeT/eKeRha++n9EE51HQROqQmOXUT
 /lQ8pbK2Q1VxYUJvMFzaSFekpZs2UrgSnaTVVGtRZ0b+s6lfipowmM4jmb/WpJTC
 rLWtvXzjRLvSyhfs21HruBaEeVdNuGvjt0DGG0AWEaJXfZGU1dZL99cXCU8G0O77
 RyBBeR2mvfVhrg==
X-ME-Sender: <xms:EZNTXsjOv40Pj0gSpdNXK6kSUYVgY5Jckfsbfp1TAjwFPAWlqaj4DA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudegnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:EZNTXmm32Yc12LVtZqZp-C8n4Ni_R1t8bENxYspHWceDcqDyX8-kDg>
 <xmx:EZNTXqZUEw0TMy-EtMw4ONSLt5e2Kh1_L15aWM_huHUvr_kbkj1vqw>
 <xmx:EZNTXpFn9l8_oVVgMO-Z_49TGCNW1YhROfp910c8gzjx0_lk2zb4YA>
 <xmx:EZNTXg9iQQcRbtvqXcC0sDsVOoZqWzVHH46GgaqQj1_dh6VXbXGd9Yy-tGE>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 80161328005A;
 Mon, 24 Feb 2020 04:10:41 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 78/89] drm/vc4: hdmi: Add a set_timings callback
Date: Mon, 24 Feb 2020 10:07:20 +0100
Message-Id: <a07716498186ab32e26c6f918ee7f9dbf84d1025.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011044_352824_CA39734F 
X-CRM114-Status: GOOD (  12.50  )
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

Similarly to the previous patches, the timings setup in the HDMI controller
of the BCM2711 is slightly different, mostly because it supports higher
resolutions and thus needed more spaces for the various timings, resulting
in the register layout changing.

Let's add a callback for that as well.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 71 +++++++++++++++++++----------------
 drivers/gpu/drm/vc4/vc4_hdmi.h |  4 ++-
 2 files changed, 44 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 405019118a20..98198ece8db8 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -371,12 +371,9 @@ static void vc4_hdmi_csc_setup(struct vc4_hdmi *vc4_hdmi, bool enable)
 	HDMI_WRITE(HDMI_CSC_CTL, csc_ctl);
 }
 
-static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
+static void vc4_hdmi_set_timings(struct vc4_hdmi *vc4_hdmi,
+				 struct drm_display_mode *mode)
 {
-	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
-	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
-	struct vc4_hdmi_encoder *vc4_encoder = &vc4_hdmi->encoder;
-	bool debug_dump_regs = false;
 	bool hsync_pos = mode->flags & DRM_MODE_FLAG_PHSYNC;
 	bool vsync_pos = mode->flags & DRM_MODE_FLAG_PVSYNC;
 	bool interlaced = mode->flags & DRM_MODE_FLAG_INTERLACE;
@@ -394,6 +391,41 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 					mode->crtc_vsync_end -
 					interlaced,
 					VC4_HDMI_VERTB_VBP));
+
+	HDMI_WRITE(HDMI_HORZA,
+		   (vsync_pos ? VC4_HDMI_HORZA_VPOS : 0) |
+		   (hsync_pos ? VC4_HDMI_HORZA_HPOS : 0) |
+		   VC4_SET_FIELD(mode->hdisplay * pixel_rep,
+				 VC4_HDMI_HORZA_HAP));
+
+	HDMI_WRITE(HDMI_HORZB,
+		   VC4_SET_FIELD((mode->htotal -
+				  mode->hsync_end) * pixel_rep,
+				 VC4_HDMI_HORZB_HBP) |
+		   VC4_SET_FIELD((mode->hsync_end -
+				  mode->hsync_start) * pixel_rep,
+				 VC4_HDMI_HORZB_HSP) |
+		   VC4_SET_FIELD((mode->hsync_start -
+				  mode->hdisplay) * pixel_rep,
+				 VC4_HDMI_HORZB_HFP));
+
+	HDMI_WRITE(HDMI_VERTA0, verta);
+	HDMI_WRITE(HDMI_VERTA1, verta);
+
+	HDMI_WRITE(HDMI_VERTB0, vertb_even);
+	HDMI_WRITE(HDMI_VERTB1, vertb);
+
+	HDMI_WRITE(HDMI_VID_CTL,
+		 (vsync_pos ? 0 : VC4_HD_VID_CTL_VSYNC_LOW) |
+		 (hsync_pos ? 0 : VC4_HD_VID_CTL_HSYNC_LOW));
+}
+
+static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
+{
+	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
+	struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
+	bool debug_dump_regs = false;
 	int ret;
 
 	ret = pm_runtime_get_sync(&vc4_hdmi->pdev->dev);
@@ -437,32 +469,8 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 		   VC4_HDMI_SCHEDULER_CONTROL_MANUAL_FORMAT |
 		   VC4_HDMI_SCHEDULER_CONTROL_IGNORE_VSYNC_PREDICTS);
 
-	HDMI_WRITE(HDMI_HORZA,
-		   (vsync_pos ? VC4_HDMI_HORZA_VPOS : 0) |
-		   (hsync_pos ? VC4_HDMI_HORZA_HPOS : 0) |
-		   VC4_SET_FIELD(mode->hdisplay * pixel_rep,
-				 VC4_HDMI_HORZA_HAP));
-
-	HDMI_WRITE(HDMI_HORZB,
-		   VC4_SET_FIELD((mode->htotal -
-				  mode->hsync_end) * pixel_rep,
-				 VC4_HDMI_HORZB_HBP) |
-		   VC4_SET_FIELD((mode->hsync_end -
-				  mode->hsync_start) * pixel_rep,
-				 VC4_HDMI_HORZB_HSP) |
-		   VC4_SET_FIELD((mode->hsync_start -
-				  mode->hdisplay) * pixel_rep,
-				 VC4_HDMI_HORZB_HFP));
-
-	HDMI_WRITE(HDMI_VERTA0, verta);
-	HDMI_WRITE(HDMI_VERTA1, verta);
-
-	HDMI_WRITE(HDMI_VERTB0, vertb_even);
-	HDMI_WRITE(HDMI_VERTB1, vertb);
-
-	HDMI_WRITE(HDMI_VID_CTL,
-		 (vsync_pos ? 0 : VC4_HD_VID_CTL_VSYNC_LOW) |
-		 (hsync_pos ? 0 : VC4_HD_VID_CTL_HSYNC_LOW));
+	if (vc4_hdmi->variant->set_timings)
+		vc4_hdmi->variant->set_timings(vc4_hdmi, mode);
 
 	if (vc4_encoder->hdmi_monitor &&
 	    drm_default_rgb_quant_range(mode) == HDMI_QUANTIZATION_RANGE_LIMITED) {
@@ -1425,6 +1433,7 @@ struct vc4_hdmi_variant bcm2835_variant = {
 	.init_resources		= vc4_hdmi_init_resources,
 	.csc_setup		= vc4_hdmi_csc_setup,
 	.reset			= vc4_hdmi_reset,
+	.set_timings		= vc4_hdmi_set_timings,
 	.phy_init		= vc4_hdmi_phy_init,
 	.phy_disable		= vc4_hdmi_phy_disable,
 	.phy_rng_enable		= vc4_hdmi_phy_rng_enable,
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 22669e07b22e..4a67d62aef53 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -44,6 +44,10 @@ struct vc4_hdmi_variant {
 	/* Callback to enable / disable the CSC */
 	void (*csc_setup)(struct vc4_hdmi *vc4_hdmi, bool enable);
 
+	/* Callback to configure the video timings in the HDMI block */
+	void (*set_timings)(struct vc4_hdmi *vc4_hdmi,
+			    struct drm_display_mode *mode);
+
 	/* Callback to initialize the PHY according to the mode */
 	void (*phy_init)(struct vc4_hdmi *vc4_hdmi,
 			 struct drm_display_mode *mode);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
