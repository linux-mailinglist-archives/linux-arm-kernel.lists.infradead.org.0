Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5F41E4A3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOOmjux5EqaYOJriTuU+lQlHvskCApMDCYLqG9PNtlE=; b=fi9ytLxEgvVKS/
	gRna9D83GwgDW/0qbX7J9SW/7Dx7E1GqxU9CFVg6cC6EVLyAuFOwP8VdBv2bAutcrce2dvF92pmsD
	VGg5XhFFtPsiBA4EnKiV7aJrrgx6cF54AMxeksgmvNCCdFc71PqYq3xusHZziUTvqnzjs+63z2EiH
	AYvOIObSvbX/iqX+NVVnGx+pwCVmU2o9kYwqzkjotaVnIozMqeaOYcFPvR7u8gOt59ZiInOBu3kZv
	IiSx/gQXI12GYZc5M3pTPBFpvXbTzWWdIJIK1UqofxXErCZhal1GYZyNllz3Q5VbWtffS1fEVqiIe
	ZUdWfL8ddprNmui7O8PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyyX-0000iD-8O; Wed, 27 May 2020 16:32:17 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLF-0001ml-Jt; Wed, 27 May 2020 15:51:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id A7C0458150C;
 Wed, 27 May 2020 11:51:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=m+rGw/iQN9zQL
 Get/ZT0IjOS75DCfRPmmKmhHFVcxuc=; b=BuqjdABcQyFjYj6I4KlcpjWgP7vhT
 FyziUUBriENgndiAUDMXduhGxK3L0rZuBlkTzUKfhyRJKu1c9HOckXj8j0E5sI0t
 cvftCzahPR2QnPYHS4n6bUqyEl51zJiNmh4SVn0jXV2a/RMYOj9022ilRDXCFVJr
 DmUldq56YyS90PFtUmnTUGYHKtp5rRhdrRyUZeCkNFa7p+BvMkhwQOwfcz/heiVb
 oh3I7yej31cOXp/8sfzCNJkmBBpCrUrs7pNbESPSJ1I13Sk0wLFTzPIRhcatiS6h
 Z1kcoLYnWGImnvge/VZFzi34F8T43cEKiksDwJQyeAyn/7lmJGpAWPfOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=m+rGw/iQN9zQLGet/ZT0IjOS75DCfRPmmKmhHFVcxuc=; b=oZkm6Biv
 qcwK11S3RBs5gdv18Qqs7oAwAGO24fgw4EPCi8XUbd1idwXs39+fmYJjmxrnAbhX
 CJ42IEK86MI6LQt+7hZgJ2Ig/I3hyb1Oz67QCMhacMW7pbMAqaQAtQI81Nbgsn7c
 mDjm5UEb3NY/DVxONn5vVaACewMefPSdea8BoBKq2nnhzYRbwPicNWIfyjduPsNn
 eANscWZVvawNs/GV9VnBgzcTHNwpJr3OXhUOXBCaLENDEyNqaqz+1T+pooqAINnm
 TcZhRP/QfMIa+fHK/k01z6fZFGQQGcXLKVqr+kcaEwr0EjMdoWf6lFUxYkfR+VHD
 g/DH7FdVKq19JQ==
X-ME-Sender: <xms:jIzOXvGiqb1cyG24Mkx227XiMSB7i7KT4nKtnp0y_ICQAgZ3a6tX0A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepieejne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:jIzOXsUCwaUkSnVqprTgRnJESPmK6Nx8mLTUgs-aOiML3R_k_2ol4g>
 <xmx:jIzOXhKEp1Z_mm7Hnck9lI77qr1RYaSinZ3WHwdQ-smVOfwYOwtG3w>
 <xmx:jIzOXtHTdgdPC8dt550_7-0RyhCANDCB1hY8ZlxOZ7JnXDrFtDRTfQ>
 <xmx:jIzOXkHItKtSR8raA2GLUcDwvyX927XRBToecgWNxgf-g9Fh01UoRA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 446663062545;
 Wed, 27 May 2020 11:51:40 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 091/105] drm/vc4: hdmi: Adjust HSM clock rate depending on
 pixel rate
Date: Wed, 27 May 2020 17:49:01 +0200
Message-Id: <1de7d96fef04ff99271284d170de08cd1460c164.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085141_820527_6477388E 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

The HSM clock needs to be setup at around 101% of the pixel rate. This
was done previously by setting the clock rate to 163.7MHz at probe time and
only check in mode_valid whether the mode pixel clock was under the pixel
clock +1% or not.

However, with 4k we need to change that frequency to a higher frequency
than 163.7MHz, and yet want to have the lowest clock as possible to have a
decent power saving.

Let's change that logic a bit by setting the clock rate of the HSM clock
to the pixel rate at encoder_enable time. This would work for the
BCM2711 that support 4k resolutions and has a clock that can provide it,
but we still have to take care of a 4k panel plugged on a BCM283x SoCs
that wouldn't be able to use those modes, so let's define the limit in
the variant.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 79 ++++++++++++++++-------------------
 drivers/gpu/drm/vc4/vc4_hdmi.h |  3 +-
 2 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index e816e5ab9a51..eda48f58dc01 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -53,7 +53,6 @@
 #include "vc4_hdmi_regs.h"
 #include "vc4_regs.h"
 
-#define HSM_CLOCK_FREQ 163682864
 #define CEC_CLOCK_FREQ 40000
 
 static int vc4_hdmi_debugfs_regs(struct seq_file *m, void *unused)
@@ -326,6 +325,7 @@ static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
 	HDMI_WRITE(HDMI_VID_CTL,
 		   HDMI_READ(HDMI_VID_CTL) & ~VC4_HD_VID_CTL_ENABLE);
 
+	clk_disable_unprepare(vc4_hdmi->hsm_clock);
 	clk_disable_unprepare(vc4_hdmi->pixel_clock);
 
 	ret = pm_runtime_put(&vc4_hdmi->pdev->dev);
@@ -423,6 +423,7 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
 	bool debug_dump_regs = false;
+	unsigned long pixel_rate, hsm_rate;
 	int ret;
 
 	ret = pm_runtime_get_sync(&vc4_hdmi->pdev->dev);
@@ -431,9 +432,8 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 		return;
 	}
 
-	ret = clk_set_rate(vc4_hdmi->pixel_clock,
-			   mode->clock * 1000 *
-			   ((mode->flags & DRM_MODE_FLAG_DBLCLK) ? 2 : 1));
+	pixel_rate = mode->clock * 1000 * ((mode->flags & DRM_MODE_FLAG_DBLCLK) ? 2 : 1);
+	ret = clk_set_rate(vc4_hdmi->pixel_clock, pixel_rate);
 	if (ret) {
 		DRM_ERROR("Failed to set pixel clock rate: %d\n", ret);
 		return;
@@ -445,6 +445,36 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 		return;
 	}
 
+	/*
+	 * As stated in RPi's vc4 firmware "HDMI state machine (HSM) clock must
+	 * be faster than pixel clock, infinitesimally faster, tested in
+	 * simulation. Otherwise, exact value is unimportant for HDMI
+	 * operation." This conflicts with bcm2835's vc4 documentation, which
+	 * states HSM's clock has to be at least 108% of the pixel clock.
+	 *
+	 * Real life tests reveal that vc4's firmware statement holds up, and
+	 * users are able to use pixel clocks closer to HSM's, namely for
+	 * 1920x1200@60Hz. So it was decided to have leave a 1% margin between
+	 * both clocks. Which, for RPi0-3 implies a maximum pixel clock of
+	 * 162MHz.
+	 *
+	 * Additionally, the AXI clock needs to be at least 25% of
+	 * pixel clock, but HSM ends up being the limiting factor.
+	 */
+	hsm_rate = max_t(unsigned long, 120000000, (pixel_rate / 100) * 101);
+	ret = clk_set_rate(vc4_hdmi->hsm_clock, hsm_rate);
+	if (ret) {
+		DRM_ERROR("Failed to set HSM clock rate: %d\n", ret);
+		return;
+	}
+
+	ret = clk_prepare_enable(vc4_hdmi->hsm_clock);
+	if (ret) {
+		DRM_ERROR("Failed to turn on HSM clock: %d\n", ret);
+		clk_disable_unprepare(vc4_hdmi->pixel_clock);
+		return;
+	}
+
 	if (vc4_hdmi->variant->reset)
 		vc4_hdmi->variant->reset(vc4_hdmi);
 
@@ -559,23 +589,9 @@ static enum drm_mode_status
 vc4_hdmi_encoder_mode_valid(struct drm_encoder *encoder,
 			    const struct drm_display_mode *mode)
 {
-	/*
-	 * As stated in RPi's vc4 firmware "HDMI state machine (HSM) clock must
-	 * be faster than pixel clock, infinitesimally faster, tested in
-	 * simulation. Otherwise, exact value is unimportant for HDMI
-	 * operation." This conflicts with bcm2835's vc4 documentation, which
-	 * states HSM's clock has to be at least 108% of the pixel clock.
-	 *
-	 * Real life tests reveal that vc4's firmware statement holds up, and
-	 * users are able to use pixel clocks closer to HSM's, namely for
-	 * 1920x1200@60Hz. So it was decided to have leave a 1% margin between
-	 * both clocks. Which, for RPi0-3 implies a maximum pixel clock of
-	 * 162MHz.
-	 *
-	 * Additionally, the AXI clock needs to be at least 25% of
-	 * pixel clock, but HSM ends up being the limiting factor.
-	 */
-	if (mode->clock > HSM_CLOCK_FREQ / (1000 * 101 / 100))
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
+
+	if ((mode->clock * 1000) > vc4_hdmi->variant->max_pixel_clock)
 		return MODE_CLOCK_HIGH;
 
 	return MODE_OK;
@@ -1345,23 +1361,6 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 		return -EPROBE_DEFER;
 	}
 
-	/* This is the rate that is set by the firmware.  The number
-	 * needs to be a bit higher than the pixel clock rate
-	 * (generally 148.5Mhz).
-	 */
-	ret = clk_set_rate(vc4_hdmi->hsm_clock, HSM_CLOCK_FREQ);
-	if (ret) {
-		DRM_ERROR("Failed to set HSM clock rate: %d\n", ret);
-		goto err_put_i2c;
-	}
-
-	ret = clk_prepare_enable(vc4_hdmi->hsm_clock);
-	if (ret) {
-		DRM_ERROR("Failed to turn on HDMI state machine clock: %d\n",
-			  ret);
-		goto err_put_i2c;
-	}
-
 	/* Only use the GPIO HPD pin if present in the DT, otherwise
 	 * we'll use the HDMI core's register.
 	 */
@@ -1409,9 +1408,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 err_destroy_encoder:
 	drm_encoder_cleanup(encoder);
 err_unprepare_hsm:
-	clk_disable_unprepare(vc4_hdmi->hsm_clock);
 	pm_runtime_disable(dev);
-err_put_i2c:
 	put_device(&vc4_hdmi->ddc->dev);
 
 	return ret;
@@ -1434,7 +1431,6 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 	vc4_hdmi_connector_destroy(&vc4_hdmi->connector);
 	drm_encoder_cleanup(&vc4_hdmi->encoder.base.base);
 
-	clk_disable_unprepare(vc4_hdmi->hsm_clock);
 	pm_runtime_disable(dev);
 
 	put_device(&vc4_hdmi->ddc->dev);
@@ -1459,6 +1455,7 @@ static int vc4_hdmi_dev_remove(struct platform_device *pdev)
 static const struct vc4_hdmi_variant bcm2835_variant = {
 	.encoder_type		= VC4_ENCODER_TYPE_HDMI0,
 	.debugfs_name		= "hdmi_regs",
+	.max_pixel_clock	= 162000000,
 	.cec_available		= true,
 	.registers		= vc4_hdmi_fields,
 	.num_registers		= ARRAY_SIZE(vc4_hdmi_fields),
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 20e0f5498f1e..9a6831b941d9 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -36,6 +36,9 @@ struct vc4_hdmi_variant {
 	/* Set to true when the CEC support is available */
 	bool cec_available;
 
+	/* Maximum pixel clock supported by the controller (in Hz) */
+	unsigned long long max_pixel_clock;
+
 	/* List of the registers available on that variant */
 	const struct vc4_hdmi_register *registers;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
