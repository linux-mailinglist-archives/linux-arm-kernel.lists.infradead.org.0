Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6681B7B0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMaQ7Ua6nwR9wVnoJaeW3cy3+61X/GqFDwd3+yXFuBo=; b=iS//1GLtcuIYXT
	b0XPFMGmxpR7Qka5WcSlE0XIZCCiPwyRd++dO5iqy/pKQyhK6qEk2piMa6Z7D+70AaLazGvAnkufq
	0/1DsijWoshyzY98Cpk682gTXircB67jHj98WtE31uo6jmR5Qqw9MTWl1WZ7eiNdX1PN6ax4ak8DR
	DrL007P2QYbu+rnRFTzGYh4mVBfnjAyMPZrpPYWCU0hyfO9+Xnfc4DhSgd1SbeRdb38Ln/UvJAk9t
	tkS6q+rqeQR3YSUFdwTQiYmnHVgOA5PaA8++nuxZ6B56U165G0ekv2TakuwBGQ7kzSULQ0GJVf4Ww
	uLc33NtLed526Q0FmJQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0oT-0002ek-15; Fri, 24 Apr 2020 16:04:25 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0OI-0000UQ-AU; Fri, 24 Apr 2020 15:37:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 1AEAA144E;
 Fri, 24 Apr 2020 11:37:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:37:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Xt1MDSph8wIIA
 ftBrE+JYuJC2zNDaIZXQtW5wvsE+fg=; b=q+NaaN9CWkMWla284piJ1BsU/Diad
 9SFzE1HX3Nhysz7a7LLBo0Bqmt7eB14H+YX9u1kruKucJJtCHSPFEzg5KX47nyj8
 suysf0qrBt1RgGn7JOXlrctRAwFFKnQGxAjKu9wIfSsckpiEOTTmA3M5amp45fTx
 P3cGEu5TCTXrfzz3+kI4KFQpt3JisgIMq8dUTYVj/5HtJ2r5vvPMPh9N9jRpUxcg
 Dy64Pg1rthxy0UdA+4pF0EL5KC0E2OoYlLAS6+asJjife2skd1w/dmXJqmcoQVjT
 qGluQh6Cv/LLdBfXMDtYXkre8LdZwdhTz2Kifa80PcABnjj/RMglnIaLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Xt1MDSph8wIIAftBrE+JYuJC2zNDaIZXQtW5wvsE+fg=; b=d1XUgjoe
 RegJpShXCWV7keUEYImcFMKcN+JXX/B3Ss5uuLMShotoDOT0MUZr/SNDggseXEgc
 axqCC6KP3OSz9E2kXGscsGpt5jGjERvz5rr2oVvULW5mS6bdSXTydjZxvhohAIne
 tKse3PUKHJ9i9QSzapigo7QfdviOLsQyii5SrTPaL1Xkr9GsvsWutMvt9QvczWxR
 pFc2cws6WPydMolUGwp8gJ82u4BNN9frDl3O5OdXcHSU0ZbEgcOws4YDOToRuzcu
 rKOqiT82G5xfJPAC9nYxI+292WQrUxbJROu288+Lm5f8C3ME9eom+PShL4dnwqlF
 2a04yKjoOTs+CA==
X-ME-Sender: <xms:rwejXrYbLFyTSN-gKsoAtmujdJtti8LNQE2o3qUvrSh09CtxINLjgA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejgeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:rwejXtmgUj2CPM2oYvVy6xzYs-NdueyNatCBJ-9zb7MS6sLpqFB5xw>
 <xmx:rwejXqGOF0rre_qoex_Yl-KHDak-DNMlRJlhs-IuzK8MhMu0WAvn7w>
 <xmx:rwejXsFkYFNREHrVifzEsScDamFlzyTeao_rGQSrEQ0JIOHkjCqXpw>
 <xmx:rwejXh4LVC2V-UFBvNOX3TVRVAkQHIxI884fe_YbVSqiPyZixcTCOI9lW80>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 560C73280063;
 Fri, 24 Apr 2020 11:37:19 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 84/91] drm/vc4: hdmi: Adjust HSM clock rate depending on
 pixel rate
Date: Fri, 24 Apr 2020 17:35:05 +0200
Message-Id: <3a3af29a36bec4161f40f3edcd5cacdfbfc7a9d8.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083722_555624_8377770B 
X-CRM114-Status: GOOD (  18.52  )
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
index 356334eeaf66..df3973acbe88 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -52,7 +52,6 @@
 #include "vc4_hdmi_regs.h"
 #include "vc4_regs.h"
 
-#define HSM_CLOCK_FREQ 163682864
 #define CEC_CLOCK_FREQ 40000
 
 static int vc4_hdmi_debugfs_regs(struct seq_file *m, void *unused)
@@ -328,6 +327,7 @@ static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
 	HDMI_WRITE(HDMI_VID_CTL,
 		   HDMI_READ(HDMI_VID_CTL) & ~VC4_HD_VID_CTL_ENABLE);
 
+	clk_disable_unprepare(vc4_hdmi->hsm_clock);
 	clk_disable_unprepare(vc4_hdmi->pixel_clock);
 
 	ret = pm_runtime_put(&vc4_hdmi->pdev->dev);
@@ -425,6 +425,7 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
 	bool debug_dump_regs = false;
+	unsigned long pixel_rate, hsm_rate;
 	int ret;
 
 	ret = pm_runtime_get_sync(&vc4_hdmi->pdev->dev);
@@ -433,9 +434,8 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
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
@@ -447,6 +447,36 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
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
 
@@ -561,23 +591,9 @@ static enum drm_mode_status
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
@@ -1347,23 +1363,6 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
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
@@ -1420,9 +1419,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 err_destroy_encoder:
 	vc4_hdmi_encoder_destroy(encoder);
 err_unprepare_hsm:
-	clk_disable_unprepare(vc4_hdmi->hsm_clock);
 	pm_runtime_disable(dev);
-err_put_i2c:
 	put_device(&vc4_hdmi->ddc->dev);
 
 	return ret;
@@ -1445,7 +1442,6 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 	vc4_hdmi_connector_destroy(&vc4_hdmi->connector);
 	vc4_hdmi_encoder_destroy(&vc4_hdmi->encoder.base.base);
 
-	clk_disable_unprepare(vc4_hdmi->hsm_clock);
 	pm_runtime_disable(dev);
 
 	put_device(&vc4_hdmi->ddc->dev);
@@ -1470,6 +1466,7 @@ static int vc4_hdmi_dev_remove(struct platform_device *pdev)
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
