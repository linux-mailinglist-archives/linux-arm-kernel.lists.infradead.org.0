Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA44D1E4A00
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgA8nQENLQh0dTZPIqNroogynSKG1WBu5sKR1/W1zOU=; b=tNLfhN35+xm3n2
	fZcaJpmDdar5CPPBaR0bWXllBIz/AYslYJ6lvqjqyEtopRfn49fLhKV7HWj6XnQiSpcz7WxID+2t4
	2IkyjeH0HfxexUPXP642MCdA0UoXDLLjAITZPLQyq/D+o56s94t7uyNdOSJBA6r3NCiMHMV+W8lRy
	TBf8nx5TuTOztpz8SQW0hlXreuUXl3oiWrqIJRzWJYxsnLG5sVKH3thZL685cNyAeUbka0rfOco2r
	3g8eUGst3c5AMtxbid4RsqXMIHQA7WTBxl+g5Oca4EwKG0aOmqisZprQPaLga7V0g2ZoZ9KRlIadN
	nQqm0rHixpQd0e8MKErw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdysi-00020q-HP; Wed, 27 May 2020 16:26:16 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKm-0001GE-7Q; Wed, 27 May 2020 15:51:15 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7425E5820FA;
 Wed, 27 May 2020 11:51:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=p1/Qi+ED7HTOh
 jQ7YQ5+5Xqb9bzR4CdyiYHhtuoJgLE=; b=Cb3pjYqaUsteUAJ0bEyz14dUcSm2e
 gxQTtV4OmhCq8wxU4I4w1Rr3mmoggx5PDYeMwlGNmF0WcPKguFJQZvFmMebsY98/
 cAnDUibPUKtZYATnPsKNo9vSSBcFNH+TF86t1vK50NhRUUXX5/hr8UpkfsSi4ysA
 PiX+OZn7r81AYDZLyDEKe6a52DFs8NTU26x5X5yQ0qTILmjAtVyasAxPslf8NZy1
 zkGFL8kOoWbMEF45RSKDoDZ8vbq4ynXJGLFe4YR+yWShLLmoXA/gqCBfwU/jjUhm
 H0RR6UfaA/KxRNzzZUFaj2IIf4gQOtdCNyCGLvLTRWppghiSTexcQhhZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=p1/Qi+ED7HTOhjQ7YQ5+5Xqb9bzR4CdyiYHhtuoJgLE=; b=X4oGTPt1
 9HvGkEL2vd68eRznE26JD1iO65tOauGFUhFpaEpwZNsJj7IUqhw6Xp87ZunHF1Ym
 HjoPVtC7L6Ie/fElsCvTbFLdldfNntVc53rJfmB6AZ5SAEN7qNy352lANuPLibp+
 BigcPjlE6W17flh8sQRcdCc8X9tmvNT15kwa8647BU8dbjgNvakYgRO3K65dQr3s
 uSzqEonuERgHWgglVRWFfN7pqcC0ffAYzRADCglK9EWD5O/GfrzQ+bd0UAVjdmMP
 68hTIklLfDfc7zw/mTlhdny748tbRLe0EhU40orIE6O9O7gVNBs1v91MUOuwWGP1
 oTLdKySIqvW8FA==
X-ME-Sender: <xms:b4zOXvGI4PHP93-avuU5EdBk1LVkTuqj6zwUgB8C9h2r4IBZtTTEwg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepieeugeefgfeiieelveekheehhedtueetueehkedtfffgvedtvdeijeduieff
 veevnecuffhomhgrihhnpegshihtvghsrdgurghtrgenucfkphepledtrdekledrieekrd
 ejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehm
 rgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:b4zOXsXwxDsHnQydTD1IC3PlYaPIV-4Mz7VrJLmv80S1kn-FsTTBTA>
 <xmx:b4zOXhLaJyai6-bJYSZ3Iv5o8F0kDFZUcGtQl83OZEG-f80aAdJWVg>
 <xmx:b4zOXtFxX_Ysu9ac9yQ7Fe4NYDcOsIZYT6GHDx14jb1OxjH6g1ADFQ>
 <xmx:b4zOXkE2kKLhhijlW5SVL4R_MNHcBZt3zyoJ4v0iEG2pK3hbg3lH5w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id EF75C3280064;
 Wed, 27 May 2020 11:51:10 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 072/105] drm/vc4: hdmi: Rename hdmi to vc4_hdmi
Date: Wed, 27 May 2020 17:48:42 +0200
Message-Id: <4ec728ff4260452867c4931b655d915afc6266e9.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085112_432593_3AE432A4 
X-CRM114-Status: GOOD (  14.42  )
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

The driver isn't consistent with the name given to the vc4_hdmi
structure pointer in its functions. Make sure to use a consistent name.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 281 +++++++++++++++++-----------------
 1 file changed, 141 insertions(+), 140 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index a2f848632e8d..38a14acf73e7 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -109,11 +109,11 @@ static const struct debugfs_reg32 hd_regs[] = {
 static int vc4_hdmi_debugfs_regs(struct seq_file *m, void *unused)
 {
 	struct drm_info_node *node = (struct drm_info_node *)m->private;
-	struct vc4_hdmi *hdmi = node->info_ent->data;
+	struct vc4_hdmi *vc4_hdmi = node->info_ent->data;
 	struct drm_printer p = drm_seq_file_printer(m);
 
-	drm_print_regset32(&p, &hdmi->hdmi_regset);
-	drm_print_regset32(&p, &hdmi->hd_regset);
+	drm_print_regset32(&p, &vc4_hdmi->hdmi_regset);
+	drm_print_regset32(&p, &vc4_hdmi->hd_regset);
 
 	return 0;
 }
@@ -291,8 +291,8 @@ static void vc4_hdmi_set_avi_infoframe(struct drm_encoder *encoder)
 {
 	struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
 	struct vc4_dev *vc4 = encoder->dev->dev_private;
-	struct vc4_hdmi *hdmi = vc4->hdmi;
-	struct drm_connector *connector = &hdmi->connector.base;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct drm_connector *connector = &vc4_hdmi->connector.base;
 	struct drm_connector_state *cstate = connector->state;
 	struct drm_crtc *crtc = encoder->crtc;
 	const struct drm_display_mode *mode = &crtc->state->adjusted_mode;
@@ -337,7 +337,7 @@ static void vc4_hdmi_set_audio_infoframe(struct drm_encoder *encoder)
 {
 	struct drm_device *drm = encoder->dev;
 	struct vc4_dev *vc4 = drm->dev_private;
-	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	union hdmi_infoframe frame;
 	int ret;
 
@@ -346,7 +346,7 @@ static void vc4_hdmi_set_audio_infoframe(struct drm_encoder *encoder)
 	frame.audio.coding_type = HDMI_AUDIO_CODING_TYPE_STREAM;
 	frame.audio.sample_frequency = HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM;
 	frame.audio.sample_size = HDMI_AUDIO_SAMPLE_SIZE_STREAM;
-	frame.audio.channels = hdmi->audio.channels;
+	frame.audio.channels = vc4_hdmi->audio.channels;
 
 	vc4_hdmi_write_infoframe(encoder, &frame);
 }
@@ -361,7 +361,7 @@ static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
 {
 	struct drm_device *dev = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	int ret;
 
 	HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG, 0);
@@ -370,9 +370,9 @@ static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
 	HD_WRITE(VC4_HD_VID_CTL,
 		 HD_READ(VC4_HD_VID_CTL) & ~VC4_HD_VID_CTL_ENABLE);
 
-	clk_disable_unprepare(hdmi->pixel_clock);
+	clk_disable_unprepare(vc4_hdmi->pixel_clock);
 
-	ret = pm_runtime_put(&hdmi->pdev->dev);
+	ret = pm_runtime_put(&vc4_hdmi->pdev->dev);
 	if (ret < 0)
 		DRM_ERROR("Failed to release power domain: %d\n", ret);
 }
@@ -383,7 +383,7 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 	struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
 	struct drm_device *dev = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	bool debug_dump_regs = false;
 	bool hsync_pos = mode->flags & DRM_MODE_FLAG_PHSYNC;
 	bool vsync_pos = mode->flags & DRM_MODE_FLAG_PVSYNC;
@@ -405,13 +405,13 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 	u32 csc_ctl;
 	int ret;
 
-	ret = pm_runtime_get_sync(&hdmi->pdev->dev);
+	ret = pm_runtime_get_sync(&vc4_hdmi->pdev->dev);
 	if (ret < 0) {
 		DRM_ERROR("Failed to retain power domain: %d\n", ret);
 		return;
 	}
 
-	ret = clk_set_rate(hdmi->pixel_clock,
+	ret = clk_set_rate(vc4_hdmi->pixel_clock,
 			   mode->clock * 1000 *
 			   ((mode->flags & DRM_MODE_FLAG_DBLCLK) ? 2 : 1));
 	if (ret) {
@@ -419,7 +419,7 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 		return;
 	}
 
-	ret = clk_prepare_enable(hdmi->pixel_clock);
+	ret = clk_prepare_enable(vc4_hdmi->pixel_clock);
 	if (ret) {
 		DRM_ERROR("Failed to turn on pixel clock: %d\n", ret);
 		return;
@@ -439,11 +439,11 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 	HDMI_WRITE(VC4_HDMI_TX_PHY_RESET_CTL, 0);
 
 	if (debug_dump_regs) {
-		struct drm_printer p = drm_info_printer(&hdmi->pdev->dev);
+		struct drm_printer p = drm_info_printer(&vc4_hdmi->pdev->dev);
 
-		dev_info(&hdmi->pdev->dev, "HDMI regs before:\n");
-		drm_print_regset32(&p, &hdmi->hdmi_regset);
-		drm_print_regset32(&p, &hdmi->hd_regset);
+		dev_info(&vc4_hdmi->pdev->dev, "HDMI regs before:\n");
+		drm_print_regset32(&p, &vc4_hdmi->hdmi_regset);
+		drm_print_regset32(&p, &vc4_hdmi->hd_regset);
 	}
 
 	HD_WRITE(VC4_HD_VID_CTL, 0);
@@ -518,11 +518,11 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 	HDMI_WRITE(VC4_HDMI_FIFO_CTL, VC4_HDMI_FIFO_CTL_MASTER_SLAVE_N);
 
 	if (debug_dump_regs) {
-		struct drm_printer p = drm_info_printer(&hdmi->pdev->dev);
+		struct drm_printer p = drm_info_printer(&vc4_hdmi->pdev->dev);
 
-		dev_info(&hdmi->pdev->dev, "HDMI regs after:\n");
-		drm_print_regset32(&p, &hdmi->hdmi_regset);
-		drm_print_regset32(&p, &hdmi->hd_regset);
+		dev_info(&vc4_hdmi->pdev->dev, "HDMI regs after:\n");
+		drm_print_regset32(&p, &vc4_hdmi->hdmi_regset);
+		drm_print_regset32(&p, &vc4_hdmi->hd_regset);
 	}
 
 	HD_WRITE(VC4_HD_VID_CTL,
@@ -621,15 +621,15 @@ static const struct drm_encoder_helper_funcs vc4_hdmi_encoder_helper_funcs = {
 };
 
 /* HDMI audio codec callbacks */
-static void vc4_hdmi_audio_set_mai_clock(struct vc4_hdmi *hdmi)
+static void vc4_hdmi_audio_set_mai_clock(struct vc4_hdmi *vc4_hdmi)
 {
-	struct drm_encoder *encoder = &hdmi->encoder.base.base;
+	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
 	struct drm_device *drm = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(drm);
-	u32 hsm_clock = clk_get_rate(hdmi->hsm_clock);
+	u32 hsm_clock = clk_get_rate(vc4_hdmi->hsm_clock);
 	unsigned long n, m;
 
-	rational_best_approximation(hsm_clock, hdmi->audio.samplerate,
+	rational_best_approximation(hsm_clock, vc4_hdmi->audio.samplerate,
 				    VC4_HD_MAI_SMP_N_MASK >>
 				    VC4_HD_MAI_SMP_N_SHIFT,
 				    (VC4_HD_MAI_SMP_M_MASK >>
@@ -641,14 +641,14 @@ static void vc4_hdmi_audio_set_mai_clock(struct vc4_hdmi *hdmi)
 		 VC4_SET_FIELD(m - 1, VC4_HD_MAI_SMP_M));
 }
 
-static void vc4_hdmi_set_n_cts(struct vc4_hdmi *hdmi)
+static void vc4_hdmi_set_n_cts(struct vc4_hdmi *vc4_hdmi)
 {
-	struct drm_encoder *encoder = &hdmi->encoder.base.base;
+	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
 	struct drm_crtc *crtc = encoder->crtc;
 	struct drm_device *drm = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	const struct drm_display_mode *mode = &crtc->state->adjusted_mode;
-	u32 samplerate = hdmi->audio.samplerate;
+	u32 samplerate = vc4_hdmi->audio.samplerate;
 	u32 n, cts;
 	u64 tmp;
 
@@ -680,16 +680,16 @@ static inline struct vc4_hdmi *dai_to_hdmi(struct snd_soc_dai *dai)
 static int vc4_hdmi_audio_startup(struct snd_pcm_substream *substream,
 				  struct snd_soc_dai *dai)
 {
-	struct vc4_hdmi *hdmi = dai_to_hdmi(dai);
-	struct drm_encoder *encoder = &hdmi->encoder.base.base;
-	struct drm_connector *connector = &hdmi->connector.base;
+	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
+	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
+	struct drm_connector *connector = &vc4_hdmi->connector.base;
 	struct vc4_dev *vc4 = to_vc4_dev(encoder->dev);
 	int ret;
 
-	if (hdmi->audio.substream && hdmi->audio.substream != substream)
+	if (vc4_hdmi->audio.substream && vc4_hdmi->audio.substream != substream)
 		return -EINVAL;
 
-	hdmi->audio.substream = substream;
+	vc4_hdmi->audio.substream = substream;
 
 	/*
 	 * If the HDMI encoder hasn't probed, or the encoder is
@@ -711,11 +711,11 @@ static int vc4_hdmi_audio_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	return 0;
 }
 
-static void vc4_hdmi_audio_reset(struct vc4_hdmi *hdmi)
+static void vc4_hdmi_audio_reset(struct vc4_hdmi *vc4_hdmi)
 {
-	struct drm_encoder *encoder = &hdmi->encoder.base.base;
+	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
 	struct drm_device *drm = encoder->dev;
-	struct device *dev = &hdmi->pdev->dev;
+	struct device *dev = &vc4_hdmi->pdev->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	int ret;
 
@@ -731,14 +731,14 @@ static void vc4_hdmi_audio_reset(struct vc4_hdmi *hdmi)
 static void vc4_hdmi_audio_shutdown(struct snd_pcm_substream *substream,
 				    struct snd_soc_dai *dai)
 {
-	struct vc4_hdmi *hdmi = dai_to_hdmi(dai);
+	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
 
-	if (substream != hdmi->audio.substream)
+	if (substream != vc4_hdmi->audio.substream)
 		return;
 
-	vc4_hdmi_audio_reset(hdmi);
+	vc4_hdmi_audio_reset(vc4_hdmi);
 
-	hdmi->audio.substream = NULL;
+	vc4_hdmi->audio.substream = NULL;
 }
 
 /* HDMI audio codec callbacks */
@@ -746,23 +746,23 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 				    struct snd_pcm_hw_params *params,
 				    struct snd_soc_dai *dai)
 {
-	struct vc4_hdmi *hdmi = dai_to_hdmi(dai);
-	struct drm_encoder *encoder = &hdmi->encoder.base.base;
+	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
+	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
 	struct drm_device *drm = encoder->dev;
-	struct device *dev = &hdmi->pdev->dev;
+	struct device *dev = &vc4_hdmi->pdev->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	u32 audio_packet_config, channel_mask;
 	u32 channel_map, i;
 
-	if (substream != hdmi->audio.substream)
+	if (substream != vc4_hdmi->audio.substream)
 		return -EINVAL;
 
 	dev_dbg(dev, "%s: %u Hz, %d bit, %d channels\n", __func__,
 		params_rate(params), params_width(params),
 		params_channels(params));
 
-	hdmi->audio.channels = params_channels(params);
-	hdmi->audio.samplerate = params_rate(params);
+	vc4_hdmi->audio.channels = params_channels(params);
+	vc4_hdmi->audio.samplerate = params_rate(params);
 
 	HD_WRITE(VC4_HD_MAI_CTL,
 		 VC4_HD_MAI_CTL_RESET |
@@ -771,23 +771,23 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 		 VC4_HD_MAI_CTL_ERRORE |
 		 VC4_HD_MAI_CTL_ERRORF);
 
-	vc4_hdmi_audio_set_mai_clock(hdmi);
+	vc4_hdmi_audio_set_mai_clock(vc4_hdmi);
 
 	audio_packet_config =
 		VC4_HDMI_AUDIO_PACKET_ZERO_DATA_ON_SAMPLE_FLAT |
 		VC4_HDMI_AUDIO_PACKET_ZERO_DATA_ON_INACTIVE_CHANNELS |
 		VC4_SET_FIELD(0xf, VC4_HDMI_AUDIO_PACKET_B_FRAME_IDENTIFIER);
 
-	channel_mask = GENMASK(hdmi->audio.channels - 1, 0);
+	channel_mask = GENMASK(vc4_hdmi->audio.channels - 1, 0);
 	audio_packet_config |= VC4_SET_FIELD(channel_mask,
 					     VC4_HDMI_AUDIO_PACKET_CEA_MASK);
 
 	/* Set the MAI threshold.  This logic mimics the firmware's. */
-	if (hdmi->audio.samplerate > 96000) {
+	if (vc4_hdmi->audio.samplerate > 96000) {
 		HD_WRITE(VC4_HD_MAI_THR,
 			 VC4_SET_FIELD(0x12, VC4_HD_MAI_THR_DREQHIGH) |
 			 VC4_SET_FIELD(0x12, VC4_HD_MAI_THR_DREQLOW));
-	} else if (hdmi->audio.samplerate > 48000) {
+	} else if (vc4_hdmi->audio.samplerate > 48000) {
 		HD_WRITE(VC4_HD_MAI_THR,
 			 VC4_SET_FIELD(0x14, VC4_HD_MAI_THR_DREQHIGH) |
 			 VC4_SET_FIELD(0x12, VC4_HD_MAI_THR_DREQLOW));
@@ -811,7 +811,7 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 
 	HDMI_WRITE(VC4_HDMI_MAI_CHANNEL_MAP, channel_map);
 	HDMI_WRITE(VC4_HDMI_AUDIO_PACKET_CONFIG, audio_packet_config);
-	vc4_hdmi_set_n_cts(hdmi);
+	vc4_hdmi_set_n_cts(vc4_hdmi);
 
 	return 0;
 }
@@ -819,8 +819,8 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 static int vc4_hdmi_audio_trigger(struct snd_pcm_substream *substream, int cmd,
 				  struct snd_soc_dai *dai)
 {
-	struct vc4_hdmi *hdmi = dai_to_hdmi(dai);
-	struct drm_encoder *encoder = &hdmi->encoder.base.base;
+	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
+	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
 	struct drm_device *drm = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(drm);
 
@@ -831,7 +831,7 @@ static int vc4_hdmi_audio_trigger(struct snd_pcm_substream *substream, int cmd,
 			   HDMI_READ(VC4_HDMI_TX_PHY_CTL0) &
 			   ~VC4_HDMI_TX_PHY_RNG_PWRDN);
 		HD_WRITE(VC4_HD_MAI_CTL,
-			 VC4_SET_FIELD(hdmi->audio.channels,
+			 VC4_SET_FIELD(vc4_hdmi->audio.channels,
 				       VC4_HD_MAI_CTL_CHNUM) |
 			 VC4_HD_MAI_CTL_ENABLE);
 		break;
@@ -863,8 +863,8 @@ static int vc4_hdmi_audio_eld_ctl_info(struct snd_kcontrol *kcontrol,
 				       struct snd_ctl_elem_info *uinfo)
 {
 	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
-	struct vc4_hdmi *hdmi = snd_component_to_hdmi(component);
-	struct drm_connector *connector = &hdmi->connector.base;
+	struct vc4_hdmi *vc4_hdmi = snd_component_to_hdmi(component);
+	struct drm_connector *connector = &vc4_hdmi->connector.base;
 
 	uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 	uinfo->count = sizeof(connector->eld);
@@ -876,8 +876,8 @@ static int vc4_hdmi_audio_eld_ctl_get(struct snd_kcontrol *kcontrol,
 				      struct snd_ctl_elem_value *ucontrol)
 {
 	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
-	struct vc4_hdmi *hdmi = snd_component_to_hdmi(component);
-	struct drm_connector *connector = &hdmi->connector.base;
+	struct vc4_hdmi *vc4_hdmi = snd_component_to_hdmi(component);
+	struct drm_connector *connector = &vc4_hdmi->connector.base;
 
 	memcpy(ucontrol->value.bytes.data, connector->eld,
 	       sizeof(connector->eld));
@@ -945,9 +945,9 @@ static const struct snd_soc_component_driver vc4_hdmi_audio_cpu_dai_comp = {
 
 static int vc4_hdmi_audio_cpu_dai_probe(struct snd_soc_dai *dai)
 {
-	struct vc4_hdmi *hdmi = dai_to_hdmi(dai);
+	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
 
-	snd_soc_dai_init_dma_data(dai, &hdmi->audio.dma_data, NULL);
+	snd_soc_dai_init_dma_data(dai, &vc4_hdmi->audio.dma_data, NULL);
 
 	return 0;
 }
@@ -973,11 +973,11 @@ static const struct snd_dmaengine_pcm_config pcm_conf = {
 	.prepare_slave_config = snd_dmaengine_pcm_prepare_slave_config,
 };
 
-static int vc4_hdmi_audio_init(struct vc4_hdmi *hdmi)
+static int vc4_hdmi_audio_init(struct vc4_hdmi *vc4_hdmi)
 {
-	struct snd_soc_dai_link *dai_link = &hdmi->audio.link;
-	struct snd_soc_card *card = &hdmi->audio.card;
-	struct device *dev = &hdmi->pdev->dev;
+	struct snd_soc_dai_link *dai_link = &vc4_hdmi->audio.link;
+	struct snd_soc_card *card = &vc4_hdmi->audio.card;
+	struct device *dev = &vc4_hdmi->pdev->dev;
 	const __be32 *addr;
 	int ret;
 
@@ -995,9 +995,9 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *hdmi)
 	 * This VC/MMU should probably be exposed to avoid this kind of hacks.
 	 */
 	addr = of_get_address(dev->of_node, 1, NULL, NULL);
-	hdmi->audio.dma_data.addr = be32_to_cpup(addr) + VC4_HD_MAI_DATA;
-	hdmi->audio.dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
-	hdmi->audio.dma_data.maxburst = 2;
+	vc4_hdmi->audio.dma_data.addr = be32_to_cpup(addr) + VC4_HD_MAI_DATA;
+	vc4_hdmi->audio.dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
+	vc4_hdmi->audio.dma_data.maxburst = 2;
 
 	ret = devm_snd_dmaengine_pcm_register(dev, &pcm_conf, 0);
 	if (ret) {
@@ -1020,9 +1020,9 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *hdmi)
 		return ret;
 	}
 
-	dai_link->cpus		= &hdmi->audio.cpu;
-	dai_link->codecs	= &hdmi->audio.codec;
-	dai_link->platforms	= &hdmi->audio.platform;
+	dai_link->cpus		= &vc4_hdmi->audio.cpu;
+	dai_link->codecs	= &vc4_hdmi->audio.codec;
+	dai_link->platforms	= &vc4_hdmi->audio.platform;
 
 	dai_link->num_cpus	= 1;
 	dai_link->num_codecs	= 1;
@@ -1047,7 +1047,7 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *hdmi)
 	 * now stored in card->drvdata and should be retrieved with
 	 * snd_soc_card_get_drvdata() if needed.
 	 */
-	snd_soc_card_set_drvdata(card, hdmi);
+	snd_soc_card_set_drvdata(card, vc4_hdmi);
 	ret = devm_snd_soc_register_card(dev, card);
 	if (ret)
 		dev_err(dev, "Could not register sound card: %d\n", ret);
@@ -1060,20 +1060,21 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *hdmi)
 static irqreturn_t vc4_cec_irq_handler_thread(int irq, void *priv)
 {
 	struct vc4_dev *vc4 = priv;
-	struct vc4_hdmi *hdmi = vc4->hdmi;
-
-	if (hdmi->cec_irq_was_rx) {
-		if (hdmi->cec_rx_msg.len)
-			cec_received_msg(hdmi->cec_adap, &hdmi->cec_rx_msg);
-	} else if (hdmi->cec_tx_ok) {
-		cec_transmit_done(hdmi->cec_adap, CEC_TX_STATUS_OK,
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+
+	if (vc4_hdmi->cec_irq_was_rx) {
+		if (vc4_hdmi->cec_rx_msg.len)
+			cec_received_msg(vc4_hdmi->cec_adap,
+					 &vc4_hdmi->cec_rx_msg);
+	} else if (vc4_hdmi->cec_tx_ok) {
+		cec_transmit_done(vc4_hdmi->cec_adap, CEC_TX_STATUS_OK,
 				  0, 0, 0, 0);
 	} else {
 		/*
 		 * This CEC implementation makes 1 retry, so if we
 		 * get a NACK, then that means it made 2 attempts.
 		 */
-		cec_transmit_done(hdmi->cec_adap, CEC_TX_STATUS_NACK,
+		cec_transmit_done(vc4_hdmi->cec_adap, CEC_TX_STATUS_NACK,
 				  0, 2, 0, 0);
 	}
 	return IRQ_HANDLED;
@@ -1099,23 +1100,23 @@ static void vc4_cec_read_msg(struct vc4_dev *vc4, u32 cntrl1)
 static irqreturn_t vc4_cec_irq_handler(int irq, void *priv)
 {
 	struct vc4_dev *vc4 = priv;
-	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	u32 stat = HDMI_READ(VC4_HDMI_CPU_STATUS);
 	u32 cntrl1, cntrl5;
 
 	if (!(stat & VC4_HDMI_CPU_CEC))
 		return IRQ_NONE;
-	hdmi->cec_rx_msg.len = 0;
+	vc4_hdmi->cec_rx_msg.len = 0;
 	cntrl1 = HDMI_READ(VC4_HDMI_CEC_CNTRL_1);
 	cntrl5 = HDMI_READ(VC4_HDMI_CEC_CNTRL_5);
-	hdmi->cec_irq_was_rx = cntrl5 & VC4_HDMI_CEC_RX_CEC_INT;
-	if (hdmi->cec_irq_was_rx) {
+	vc4_hdmi->cec_irq_was_rx = cntrl5 & VC4_HDMI_CEC_RX_CEC_INT;
+	if (vc4_hdmi->cec_irq_was_rx) {
 		vc4_cec_read_msg(vc4, cntrl1);
 		cntrl1 |= VC4_HDMI_CEC_CLEAR_RECEIVE_OFF;
 		HDMI_WRITE(VC4_HDMI_CEC_CNTRL_1, cntrl1);
 		cntrl1 &= ~VC4_HDMI_CEC_CLEAR_RECEIVE_OFF;
 	} else {
-		hdmi->cec_tx_ok = cntrl1 & VC4_HDMI_CEC_TX_STATUS_GOOD;
+		vc4_hdmi->cec_tx_ok = cntrl1 & VC4_HDMI_CEC_TX_STATUS_GOOD;
 		cntrl1 &= ~VC4_HDMI_CEC_START_XMIT_BEGIN;
 	}
 	HDMI_WRITE(VC4_HDMI_CEC_CNTRL_1, cntrl1);
@@ -1217,44 +1218,44 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = dev_get_drvdata(master);
 	struct vc4_dev *vc4 = drm->dev_private;
-	struct vc4_hdmi *hdmi;
+	struct vc4_hdmi *vc4_hdmi;
 	struct drm_encoder *encoder;
 	struct device_node *ddc_node;
 	u32 value;
 	int ret;
 
-	hdmi = devm_kzalloc(dev, sizeof(*hdmi), GFP_KERNEL);
-	if (!hdmi)
+	vc4_hdmi = devm_kzalloc(dev, sizeof(*vc4_hdmi), GFP_KERNEL);
+	if (!vc4_hdmi)
 		return -ENOMEM;
 
-	hdmi->pdev = pdev;
-	encoder = &hdmi->encoder.base.base;
+	vc4_hdmi->pdev = pdev;
+	encoder = &vc4_hdmi->encoder.base.base;
 	encoder->base.type = VC4_ENCODER_TYPE_HDMI0;
 
-	hdmi->hdmicore_regs = vc4_ioremap_regs(pdev, 0);
-	if (IS_ERR(hdmi->hdmicore_regs))
-		return PTR_ERR(hdmi->hdmicore_regs);
+	vc4_hdmi->hdmicore_regs = vc4_ioremap_regs(pdev, 0);
+	if (IS_ERR(vc4_hdmi->hdmicore_regs))
+		return PTR_ERR(vc4_hdmi->hdmicore_regs);
 
-	hdmi->hd_regs = vc4_ioremap_regs(pdev, 1);
-	if (IS_ERR(hdmi->hd_regs))
-		return PTR_ERR(hdmi->hd_regs);
+	vc4_hdmi->hd_regs = vc4_ioremap_regs(pdev, 1);
+	if (IS_ERR(vc4_hdmi->hd_regs))
+		return PTR_ERR(vc4_hdmi->hd_regs);
 
-	hdmi->hdmi_regset.base = hdmi->hdmicore_regs;
-	hdmi->hdmi_regset.regs = hdmi_regs;
-	hdmi->hdmi_regset.nregs = ARRAY_SIZE(hdmi_regs);
-	hdmi->hd_regset.base = hdmi->hd_regs;
-	hdmi->hd_regset.regs = hd_regs;
-	hdmi->hd_regset.nregs = ARRAY_SIZE(hd_regs);
+	vc4_hdmi->hdmi_regset.base = vc4_hdmi->hdmicore_regs;
+	vc4_hdmi->hdmi_regset.regs = hdmi_regs;
+	vc4_hdmi->hdmi_regset.nregs = ARRAY_SIZE(hdmi_regs);
+	vc4_hdmi->hd_regset.base = vc4_hdmi->hd_regs;
+	vc4_hdmi->hd_regset.regs = hd_regs;
+	vc4_hdmi->hd_regset.nregs = ARRAY_SIZE(hd_regs);
 
-	hdmi->pixel_clock = devm_clk_get(dev, "pixel");
-	if (IS_ERR(hdmi->pixel_clock)) {
+	vc4_hdmi->pixel_clock = devm_clk_get(dev, "pixel");
+	if (IS_ERR(vc4_hdmi->pixel_clock)) {
 		DRM_ERROR("Failed to get pixel clock\n");
-		return PTR_ERR(hdmi->pixel_clock);
+		return PTR_ERR(vc4_hdmi->pixel_clock);
 	}
-	hdmi->hsm_clock = devm_clk_get(dev, "hdmi");
-	if (IS_ERR(hdmi->hsm_clock)) {
+	vc4_hdmi->hsm_clock = devm_clk_get(dev, "hdmi");
+	if (IS_ERR(vc4_hdmi->hsm_clock)) {
 		DRM_ERROR("Failed to get HDMI state machine clock\n");
-		return PTR_ERR(hdmi->hsm_clock);
+		return PTR_ERR(vc4_hdmi->hsm_clock);
 	}
 
 	ddc_node = of_parse_phandle(dev->of_node, "ddc", 0);
@@ -1263,9 +1264,9 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 		return -ENODEV;
 	}
 
-	hdmi->ddc = of_find_i2c_adapter_by_node(ddc_node);
+	vc4_hdmi->ddc = of_find_i2c_adapter_by_node(ddc_node);
 	of_node_put(ddc_node);
-	if (!hdmi->ddc) {
+	if (!vc4_hdmi->ddc) {
 		DRM_DEBUG("Failed to get ddc i2c adapter by node\n");
 		return -EPROBE_DEFER;
 	}
@@ -1274,13 +1275,13 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	 * needs to be a bit higher than the pixel clock rate
 	 * (generally 148.5Mhz).
 	 */
-	ret = clk_set_rate(hdmi->hsm_clock, HSM_CLOCK_FREQ);
+	ret = clk_set_rate(vc4_hdmi->hsm_clock, HSM_CLOCK_FREQ);
 	if (ret) {
 		DRM_ERROR("Failed to set HSM clock rate: %d\n", ret);
 		goto err_put_i2c;
 	}
 
-	ret = clk_prepare_enable(hdmi->hsm_clock);
+	ret = clk_prepare_enable(vc4_hdmi->hsm_clock);
 	if (ret) {
 		DRM_ERROR("Failed to turn on HDMI state machine clock: %d\n",
 			  ret);
@@ -1293,18 +1294,18 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	if (of_find_property(dev->of_node, "hpd-gpios", &value)) {
 		enum of_gpio_flags hpd_gpio_flags;
 
-		hdmi->hpd_gpio = of_get_named_gpio_flags(dev->of_node,
-							 "hpd-gpios", 0,
-							 &hpd_gpio_flags);
-		if (hdmi->hpd_gpio < 0) {
-			ret = hdmi->hpd_gpio;
+		vc4_hdmi->hpd_gpio = of_get_named_gpio_flags(dev->of_node,
+							     "hpd-gpios", 0,
+							     &hpd_gpio_flags);
+		if (vc4_hdmi->hpd_gpio < 0) {
+			ret = vc4_hdmi->hpd_gpio;
 			goto err_unprepare_hsm;
 		}
 
-		hdmi->hpd_active_low = hpd_gpio_flags & OF_GPIO_ACTIVE_LOW;
+		vc4_hdmi->hpd_active_low = hpd_gpio_flags & OF_GPIO_ACTIVE_LOW;
 	}
 
-	vc4->hdmi = hdmi;
+	vc4->hdmi = vc4_hdmi;
 
 	/* HDMI core must be enabled. */
 	if (!(HD_READ(VC4_HD_M_CTL) & VC4_HD_M_ENABLE)) {
@@ -1319,21 +1320,21 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
 	drm_encoder_helper_add(encoder, &vc4_hdmi_encoder_helper_funcs);
 
-	ret = vc4_hdmi_connector_init(drm, hdmi);
+	ret = vc4_hdmi_connector_init(drm, vc4_hdmi);
 	if (ret)
 		goto err_destroy_encoder;
 
 #ifdef CONFIG_DRM_VC4_HDMI_CEC
-	hdmi->cec_adap = cec_allocate_adapter(&vc4_hdmi_cec_adap_ops,
-					      vc4, "vc4",
-					      CEC_CAP_DEFAULTS |
-					      CEC_CAP_CONNECTOR_INFO, 1);
-	ret = PTR_ERR_OR_ZERO(hdmi->cec_adap);
+	vc4_hdmi->cec_adap = cec_allocate_adapter(&vc4_hdmi_cec_adap_ops,
+						  vc4, "vc4",
+						  CEC_CAP_DEFAULTS |
+						  CEC_CAP_CONNECTOR_INFO, 1);
+	ret = PTR_ERR_OR_ZERO(vc4_hdmi->cec_adap);
 	if (ret < 0)
 		goto err_destroy_conn;
 
-	cec_fill_conn_info_from_drm(&conn_info, &hdmi->connector.base);
-	cec_s_conn_info(hdmi->cec_adap, &conn_info);
+	cec_fill_conn_info_from_drm(&conn_info, &vc4_hdmi->connector.base);
+	cec_s_conn_info(vc4_hdmi->cec_adap, &conn_info);
 
 	HDMI_WRITE(VC4_HDMI_CPU_MASK_SET, 0xffffffff);
 	value = HDMI_READ(VC4_HDMI_CEC_CNTRL_1);
@@ -1352,32 +1353,32 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 					"vc4 hdmi cec", vc4);
 	if (ret)
 		goto err_delete_cec_adap;
-	ret = cec_register_adapter(hdmi->cec_adap, dev);
+	ret = cec_register_adapter(vc4_hdmi->cec_adap, dev);
 	if (ret < 0)
 		goto err_delete_cec_adap;
 #endif
 
-	ret = vc4_hdmi_audio_init(hdmi);
+	ret = vc4_hdmi_audio_init(vc4_hdmi);
 	if (ret)
 		goto err_destroy_encoder;
 
-	vc4_debugfs_add_file(drm, "hdmi_regs", vc4_hdmi_debugfs_regs, hdmi);
+	vc4_debugfs_add_file(drm, "hdmi_regs", vc4_hdmi_debugfs_regs, vc4_hdmi);
 
 	return 0;
 
 #ifdef CONFIG_DRM_VC4_HDMI_CEC
 err_delete_cec_adap:
-	cec_delete_adapter(hdmi->cec_adap);
+	cec_delete_adapter(vc4_hdmi->cec_adap);
 err_destroy_conn:
-	vc4_hdmi_connector_destroy(&hdmi->connector.base);
+	vc4_hdmi_connector_destroy(&vc4_hdmi->connector.base);
 #endif
 err_destroy_encoder:
 	drm_encoder_cleanup(encoder);
 err_unprepare_hsm:
-	clk_disable_unprepare(hdmi->hsm_clock);
+	clk_disable_unprepare(vc4_hdmi->hsm_clock);
 	pm_runtime_disable(dev);
 err_put_i2c:
-	put_device(&hdmi->ddc->dev);
+	put_device(&vc4_hdmi->ddc->dev);
 
 	return ret;
 }
@@ -1387,16 +1388,16 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 {
 	struct drm_device *drm = dev_get_drvdata(master);
 	struct vc4_dev *vc4 = drm->dev_private;
-	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 
-	cec_unregister_adapter(hdmi->cec_adap);
-	vc4_hdmi_connector_destroy(&hdmi->connector.base);
-	drm_encoder_cleanup(&hdmi->encoder.base.base);
+	cec_unregister_adapter(vc4_hdmi->cec_adap);
+	vc4_hdmi_connector_destroy(&vc4_hdmi->connector.base);
+	vc4_hdmi_encoder_destroy(&vc4_hdmi->encoder.base.base);
 
-	clk_disable_unprepare(hdmi->hsm_clock);
+	clk_disable_unprepare(vc4_hdmi->hsm_clock);
 	pm_runtime_disable(dev);
 
-	put_device(&hdmi->ddc->dev);
+	put_device(&vc4_hdmi->ddc->dev);
 
 	vc4->hdmi = NULL;
 }
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
