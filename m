Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3AF16A268
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:35:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAANMjmxCB63RzFTcAW0wdbVgF5p1Tu/0/T0CuVJ2K0=; b=prR/qQwV0bZxBT
	nHyxeuw8DTW+NwPAUJhUI95tFZEcgdPhOamqhtgqkpZlQvE6SV2JwKk5VIEOTO8r0MYJvuqKBsALD
	qKhwtNrMSSGoVEB2M1kTPz3HxW730tdd57CJfCFEAcdN44mTsRv0UqhU2ByEgwS0OQ98lTSXfO4qM
	zrPPsFE7hyt0WbWZGy4Gbu5mpyswRm79uhnC1DKnOnvfbphl2aabqHXRFGgwaFU1PimCJv579d01o
	5f1J+YHfs/RASGicjbDFuEcXhX2JxW+lH+WhWpMiUDgcVAe75DYAiFMt8LcMQYCtAEuIR8K35gWDz
	nw3KiT73+WdYUNMIZqAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A9E-0004q0-VC; Mon, 24 Feb 2020 09:35:33 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69lC-0003m9-J2; Mon, 24 Feb 2020 09:10:47 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id D4882637;
 Mon, 24 Feb 2020 04:10:40 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=w6FfCXj5pf1st
 /ftBzPSP5POM9VrmGJqzyT/GSrYGyE=; b=Ul+dDC2ECLueg2dcweK/LNM97qa4j
 vEWS+Cpf34CYxf6BCVn0KKNg2qk3oRJsryrZ0NI3mp+6VoEkQzAOrmnrNGBKjU4a
 X9yCV6tuqKI9XPNyP5oEnixDVPHeQEcyW2+MQj4fkjGruhc80s9ige6eRQVKXgvB
 Am7DgxkGOPT3T5EB7DHKCC5Na5ZoLmV0p3i+GA7c9KL0bDD6NgypRLO3KfYkUisg
 5rEFBKqzv1WuYfeZ8j2v0EIzGCK9hkzn1UbgQGhNr3IGPjIF10Tfx927H9hTLUvL
 UA8o9mU7qm7HxP2dE2i/aoy5jvJhOmyithwenU4/bItlH8NguPxfbKUhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=w6FfCXj5pf1st/ftBzPSP5POM9VrmGJqzyT/GSrYGyE=; b=OedseH35
 FEK+475okH+A/8quGXyYVTjsLwNr/3CGrraslE7ION1XGRZ6jLQchOHu+ivMGEgG
 pJ74eP5wjygcxMBHyOuanBTUIF3fnhrpKG7jmmsxplHleYhCbhtroGbKNYxXEwbi
 rj7LQuOGOdgAt3JtTCcxZZ2FovoSPsiBhXb8NXdU8PWeN/jz/RPf3N/8HWLq9KDL
 /3JhUlFFboG3U/qNpCsk/X6Eq0erZ4WaajSEJamJICPYoV/1Cmwxpxp7k6YBIYeI
 nkdBxWvc21euXyTWycHWXMNDhfBtPXcHVE+d22Kh6zwsTqz0sAcTzL7bLdrAG52F
 /SCI/nPotfmF6A==
X-ME-Sender: <xms:EJNTXoQ4ACB1ygQ--HUvWgT9TGy2VPchOroVaSLUWaaIctqJiv6jHw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudegnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:EJNTXhd4MXFXT5Pf2mPG5kiezWQQfTT-XKY4JXZs-IOCPNJqNHLWFQ>
 <xmx:EJNTXgglcecs_r3MeR_3kvho8jZCef1RdIgJI7GeZg30_8kURUyanA>
 <xmx:EJNTXs87_BPhG9icEHFBYmIsYkf3tJbRtdwViNs3BWkijmCAHpuF5Q>
 <xmx:EJNTXjcb6KeH4rEj_4-s2j8rymCTl1TKV5TawA5ffYoYyE-lbR9HqEqARC8>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 21BBA3060FCB;
 Mon, 24 Feb 2020 04:10:40 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 77/89] drm/vc4: hdmi: Add a CSC setup callback
Date: Mon, 24 Feb 2020 10:07:19 +0100
Message-Id: <a73b3d00759a1a9a84ac485d111e2ddbe247d9ed.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011042_771552_EEB5A9F1 
X-CRM114-Status: GOOD (  13.59  )
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

Similarly to the previous patches, the CSC setup is slightly different in
the BCM2711 than in the previous generations. Let's add a callback for it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 71 ++++++++++++++++++++---------------
 drivers/gpu/drm/vc4/vc4_hdmi.h |  3 +-
 2 files changed, 45 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 50d69c74c5c4..405019118a20 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -336,6 +336,41 @@ static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
 		DRM_ERROR("Failed to release power domain: %d\n", ret);
 }
 
+static void vc4_hdmi_csc_setup(struct vc4_hdmi *vc4_hdmi, bool enable)
+{
+	u32 csc_ctl;
+
+	csc_ctl = VC4_SET_FIELD(VC4_HD_CSC_CTL_ORDER_BGR,
+				VC4_HD_CSC_CTL_ORDER);
+
+	if (enable) {
+		/* CEA VICs other than #1 requre limited range RGB
+		 * output unless overridden by an AVI infoframe.
+		 * Apply a colorspace conversion to squash 0-255 down
+		 * to 16-235.  The matrix here is:
+		 *
+		 * [ 0      0      0.8594 16]
+		 * [ 0      0.8594 0      16]
+		 * [ 0.8594 0      0      16]
+		 * [ 0      0      0       1]
+		 */
+		csc_ctl |= VC4_HD_CSC_CTL_ENABLE;
+		csc_ctl |= VC4_HD_CSC_CTL_RGB2YCC;
+		csc_ctl |= VC4_SET_FIELD(VC4_HD_CSC_CTL_MODE_CUSTOM,
+					 VC4_HD_CSC_CTL_MODE);
+
+		HDMI_WRITE(HDMI_CSC_12_11, (0x000 << 16) | 0x000);
+		HDMI_WRITE(HDMI_CSC_14_13, (0x100 << 16) | 0x6e0);
+		HDMI_WRITE(HDMI_CSC_22_21, (0x6e0 << 16) | 0x000);
+		HDMI_WRITE(HDMI_CSC_24_23, (0x100 << 16) | 0x000);
+		HDMI_WRITE(HDMI_CSC_32_31, (0x000 << 16) | 0x6e0);
+		HDMI_WRITE(HDMI_CSC_34_33, (0x100 << 16) | 0x000);
+	}
+
+	/* The RGB order applies even when CSC is disabled. */
+	HDMI_WRITE(HDMI_CSC_CTL, csc_ctl);
+}
+
 static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 {
 	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
@@ -359,7 +394,6 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 					mode->crtc_vsync_end -
 					interlaced,
 					VC4_HDMI_VERTB_VBP));
-	u32 csc_ctl;
 	int ret;
 
 	ret = pm_runtime_get_sync(&vc4_hdmi->pdev->dev);
@@ -430,41 +464,19 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 		 (vsync_pos ? 0 : VC4_HD_VID_CTL_VSYNC_LOW) |
 		 (hsync_pos ? 0 : VC4_HD_VID_CTL_HSYNC_LOW));
 
-	csc_ctl = VC4_SET_FIELD(VC4_HD_CSC_CTL_ORDER_BGR,
-				VC4_HD_CSC_CTL_ORDER);
-
 	if (vc4_encoder->hdmi_monitor &&
-	    drm_default_rgb_quant_range(mode) ==
-	    HDMI_QUANTIZATION_RANGE_LIMITED) {
-		/* CEA VICs other than #1 requre limited range RGB
-		 * output unless overridden by an AVI infoframe.
-		 * Apply a colorspace conversion to squash 0-255 down
-		 * to 16-235.  The matrix here is:
-		 *
-		 * [ 0      0      0.8594 16]
-		 * [ 0      0.8594 0      16]
-		 * [ 0.8594 0      0      16]
-		 * [ 0      0      0       1]
-		 */
-		csc_ctl |= VC4_HD_CSC_CTL_ENABLE;
-		csc_ctl |= VC4_HD_CSC_CTL_RGB2YCC;
-		csc_ctl |= VC4_SET_FIELD(VC4_HD_CSC_CTL_MODE_CUSTOM,
-					 VC4_HD_CSC_CTL_MODE);
+	    drm_default_rgb_quant_range(mode) == HDMI_QUANTIZATION_RANGE_LIMITED) {
+		if (vc4_hdmi->variant->csc_setup)
+			vc4_hdmi->variant->csc_setup(vc4_hdmi, true);
 
-		HDMI_WRITE(HDMI_CSC_12_11, (0x000 << 16) | 0x000);
-		HDMI_WRITE(HDMI_CSC_14_13, (0x100 << 16) | 0x6e0);
-		HDMI_WRITE(HDMI_CSC_22_21, (0x6e0 << 16) | 0x000);
-		HDMI_WRITE(HDMI_CSC_24_23, (0x100 << 16) | 0x000);
-		HDMI_WRITE(HDMI_CSC_32_31, (0x000 << 16) | 0x6e0);
-		HDMI_WRITE(HDMI_CSC_34_33, (0x100 << 16) | 0x000);
 		vc4_encoder->limited_rgb_range = true;
 	} else {
+		if (vc4_hdmi->variant->csc_setup)
+			vc4_hdmi->variant->csc_setup(vc4_hdmi, false);
+
 		vc4_encoder->limited_rgb_range = false;
 	}
 
-	/* The RGB order applies even when CSC is disabled. */
-	HDMI_WRITE(HDMI_CSC_CTL, csc_ctl);
-
 	HDMI_WRITE(HDMI_FIFO_CTL, VC4_HDMI_FIFO_CTL_MASTER_SLAVE_N);
 
 	if (debug_dump_regs) {
@@ -1411,6 +1423,7 @@ struct vc4_hdmi_variant bcm2835_variant = {
 	.num_registers		= ARRAY_SIZE(vc4_hdmi_fields),
 
 	.init_resources		= vc4_hdmi_init_resources,
+	.csc_setup		= vc4_hdmi_csc_setup,
 	.reset			= vc4_hdmi_reset,
 	.phy_init		= vc4_hdmi_phy_init,
 	.phy_disable		= vc4_hdmi_phy_disable,
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 9ae4d2c5a4f0..22669e07b22e 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -41,6 +41,9 @@ struct vc4_hdmi_variant {
 	/* Callback to reset the HDMI block */
 	void (*reset)(struct vc4_hdmi *vc4_hdmi);
 
+	/* Callback to enable / disable the CSC */
+	void (*csc_setup)(struct vc4_hdmi *vc4_hdmi, bool enable);
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
