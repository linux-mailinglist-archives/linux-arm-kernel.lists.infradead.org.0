Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 011401B7AEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wpeofp6o0PyLg2RDWSNwowswGA/fJEsP3xQYYEtwQik=; b=ulQByI7Wyr+pDn
	xSeyStahC4R8iFQ3rT8k4z5VZ3bPDV2yV7gHWStWBQRnNPE1uCLxcLo5w0Z9+0rYzTxw1+2ES2Vy5
	WeOSPH+9TbquSRf9xovPDULsmbxOzcW1/DpLta/3QGUIMjTnBEmzIrRZcxmHcS2UHSwBH3WdL0b5e
	vtXGXwSGrIM47TnJqM1GJ39YtPyYPXChSC/jLO/jnZLbVcAg5whdTEeYZYpCm7arh3hP56RN9aEUW
	619GXhn/ZzP4KvB4qNTrBAxJhUdoyckzB/ov1pnR1IuckcyR0JbY9eSaqRxOaI+nxuK5/Zs6VjiNr
	m0ZDUjX/ZXK5i58G1Pfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0jT-0003mH-Cv; Fri, 24 Apr 2020 15:59:15 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Nr-00008a-PA; Fri, 24 Apr 2020 15:37:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id C60E3144D;
 Fri, 24 Apr 2020 11:36:53 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=jBNRzK7weNFKq
 f32XeIHorGh15xH8J+Tip0EcSVLq2E=; b=wCaSRrzaQqxe0Y1Fi7M2lCzxiKuE1
 RtDnWfRB22Bm8Qq5KvJT7qbjWL1K3gRJEcRPo6faQUC6elFdXj/2hQ8dzDNKODOm
 zH5/YG90Is6zxx61p3XQ/3Gy3VOE5wgBhzNCNYIBZxxtUXV5/oVnVdG4jx9Sx1Bu
 sRYS66f6sdnITyt/toeICAw/9cT11FcihUtM64UbPQr2winFxdPo7e6UstoDoEjt
 K9mh5ZMUshfZczEmGmR7qsI6CAVU36S0yotgIxKG/Clm2kyXFbI1hr17NoIRyLFB
 LPaGzYrVlGne1h54CinfRd0I4dpJ//ZyyPhMsPMdeJ4YEle1SxsU86lWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=jBNRzK7weNFKqf32XeIHorGh15xH8J+Tip0EcSVLq2E=; b=p+OFNFCA
 n7tlQ/B0MG9ozt8/slQSj4LJQcvylIdqOrG/iZESeNyZw82TLygwEF47LHUX4wwM
 FkcKZhS9fKf1sLlma95raoByfpxXzI/EHTPdTITQzuxURcKGnt5+9jUiPRi/pAEp
 kcydyHfq2YeeW5z7fEjOcT2aQYORnexRYT3LAPSvioMNGGgM80MqHKQz2E92b0YV
 pqzdpL767+OVnceAdU6qkXriu9s+1ofruw0UZl5BQd/RDtUZEGezVWE45F/GFv/N
 IPrK3z9GtLfo7jMdBm1vwIm4h8xMddILBZwUoBkFc42vToEGX1ApsrS9Ne/2c6jG
 iKDLWFsFLoI28w==
X-ME-Sender: <xms:lQejXt8KAhZ6MUDZGUhvMXaByBSqR-FBBDv70bemztf0zQQM09DxdQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epsgihthgvshdruggrthgrnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:lQejXjJNJk6D11ZtJgKhwJXaPh4b-ExE4AoaORzAoAu4LQu92lrKGA>
 <xmx:lQejXmYCeFobRifzjm-egKa9klpMvJK0pUQJaepq4AwEWvTCl9Lang>
 <xmx:lQejXuidpxvK5v_NxIn-inXIGQhN3fVLvoII5D5CbqpNOx6A11BI2w>
 <xmx:lQejXq4PLMTYkSDkKIM3of8s_6W678Sw5zb3Z-YNu-8-OoB88mBlLzcQAVk>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E521D3065D87;
 Fri, 24 Apr 2020 11:36:52 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 65/91] drm/vc4: hdmi: Rename hdmi to vc4_hdmi
Date: Fri, 24 Apr 2020 17:34:46 +0200
Message-Id: <028f4745569214839497c5323099a9e46ca1e412.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083656_694041_9A1F9971 
X-CRM114-Status: GOOD (  14.03  )
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

The driver isn't consistent with the name given to the vc4_hdmi
structure pointer in its functions. Make sure to use a consistent name.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 281 +++++++++++++++++-----------------
 1 file changed, 141 insertions(+), 140 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 32de99d48a2a..c5fdac191404 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -108,11 +108,11 @@ static const struct debugfs_reg32 hd_regs[] = {
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
@@ -299,8 +299,8 @@ static void vc4_hdmi_set_avi_infoframe(struct drm_encoder *encoder)
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
@@ -345,7 +345,7 @@ static void vc4_hdmi_set_audio_infoframe(struct drm_encoder *encoder)
 {
 	struct drm_device *drm = encoder->dev;
 	struct vc4_dev *vc4 = drm->dev_private;
-	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	union hdmi_infoframe frame;
 	int ret;
 
@@ -354,7 +354,7 @@ static void vc4_hdmi_set_audio_infoframe(struct drm_encoder *encoder)
 	frame.audio.coding_type = HDMI_AUDIO_CODING_TYPE_STREAM;
 	frame.audio.sample_frequency = HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM;
 	frame.audio.sample_size = HDMI_AUDIO_SAMPLE_SIZE_STREAM;
-	frame.audio.channels = hdmi->audio.channels;
+	frame.audio.channels = vc4_hdmi->audio.channels;
 
 	vc4_hdmi_write_infoframe(encoder, &frame);
 }
@@ -369,7 +369,7 @@ static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
 {
 	struct drm_device *dev = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	int ret;
 
 	HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG, 0);
@@ -378,9 +378,9 @@ static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
 	HD_WRITE(VC4_HD_VID_CTL,
 		 HD_READ(VC4_HD_VID_CTL) & ~VC4_HD_VID_CTL_ENABLE);
 
-	clk_disable_unprepare(hdmi->pixel_clock);
+	clk_disable_unprepare(vc4_hdmi->pixel_clock);
 
-	ret = pm_runtime_put(&hdmi->pdev->dev);
+	ret = pm_runtime_put(&vc4_hdmi->pdev->dev);
 	if (ret < 0)
 		DRM_ERROR("Failed to release power domain: %d\n", ret);
 }
@@ -391,7 +391,7 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 	struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
 	struct drm_device *dev = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	bool debug_dump_regs = false;
 	bool hsync_pos = mode->flags & DRM_MODE_FLAG_PHSYNC;
 	bool vsync_pos = mode->flags & DRM_MODE_FLAG_PVSYNC;
@@ -413,13 +413,13 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
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
@@ -427,7 +427,7 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 		return;
 	}
 
-	ret = clk_prepare_enable(hdmi->pixel_clock);
+	ret = clk_prepare_enable(vc4_hdmi->pixel_clock);
 	if (ret) {
 		DRM_ERROR("Failed to turn on pixel clock: %d\n", ret);
 		return;
@@ -447,11 +447,11 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
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
@@ -526,11 +526,11 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
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
@@ -629,15 +629,15 @@ static const struct drm_encoder_helper_funcs vc4_hdmi_encoder_helper_funcs = {
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
@@ -649,14 +649,14 @@ static void vc4_hdmi_audio_set_mai_clock(struct vc4_hdmi *hdmi)
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
 
@@ -688,16 +688,16 @@ static inline struct vc4_hdmi *dai_to_hdmi(struct snd_soc_dai *dai)
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
@@ -719,11 +719,11 @@ static int vc4_hdmi_audio_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
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
 
@@ -739,14 +739,14 @@ static void vc4_hdmi_audio_reset(struct vc4_hdmi *hdmi)
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
@@ -754,23 +754,23 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
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
@@ -779,23 +779,23 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
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
@@ -819,7 +819,7 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 
 	HDMI_WRITE(VC4_HDMI_MAI_CHANNEL_MAP, channel_map);
 	HDMI_WRITE(VC4_HDMI_AUDIO_PACKET_CONFIG, audio_packet_config);
-	vc4_hdmi_set_n_cts(hdmi);
+	vc4_hdmi_set_n_cts(vc4_hdmi);
 
 	return 0;
 }
@@ -827,8 +827,8 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 static int vc4_hdmi_audio_trigger(struct snd_pcm_substream *substream, int cmd,
 				  struct snd_soc_dai *dai)
 {
-	struct vc4_hdmi *hdmi = dai_to_hdmi(dai);
-	struct drm_encoder *encoder = &hdmi->encoder.base.base;
+	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
+	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
 	struct drm_device *drm = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(drm);
 
@@ -839,7 +839,7 @@ static int vc4_hdmi_audio_trigger(struct snd_pcm_substream *substream, int cmd,
 			   HDMI_READ(VC4_HDMI_TX_PHY_CTL0) &
 			   ~VC4_HDMI_TX_PHY_RNG_PWRDN);
 		HD_WRITE(VC4_HD_MAI_CTL,
-			 VC4_SET_FIELD(hdmi->audio.channels,
+			 VC4_SET_FIELD(vc4_hdmi->audio.channels,
 				       VC4_HD_MAI_CTL_CHNUM) |
 			 VC4_HD_MAI_CTL_ENABLE);
 		break;
@@ -871,8 +871,8 @@ static int vc4_hdmi_audio_eld_ctl_info(struct snd_kcontrol *kcontrol,
 				       struct snd_ctl_elem_info *uinfo)
 {
 	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
-	struct vc4_hdmi *hdmi = snd_component_to_hdmi(component);
-	struct drm_connector *connector = &hdmi->connector.base;
+	struct vc4_hdmi *vc4_hdmi = snd_component_to_hdmi(component);
+	struct drm_connector *connector = &vc4_hdmi->connector.base;
 
 	uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 	uinfo->count = sizeof(connector->eld);
@@ -884,8 +884,8 @@ static int vc4_hdmi_audio_eld_ctl_get(struct snd_kcontrol *kcontrol,
 				      struct snd_ctl_elem_value *ucontrol)
 {
 	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
-	struct vc4_hdmi *hdmi = snd_component_to_hdmi(component);
-	struct drm_connector *connector = &hdmi->connector.base;
+	struct vc4_hdmi *vc4_hdmi = snd_component_to_hdmi(component);
+	struct drm_connector *connector = &vc4_hdmi->connector.base;
 
 	memcpy(ucontrol->value.bytes.data, connector->eld,
 	       sizeof(connector->eld));
@@ -953,9 +953,9 @@ static const struct snd_soc_component_driver vc4_hdmi_audio_cpu_dai_comp = {
 
 static int vc4_hdmi_audio_cpu_dai_probe(struct snd_soc_dai *dai)
 {
-	struct vc4_hdmi *hdmi = dai_to_hdmi(dai);
+	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
 
-	snd_soc_dai_init_dma_data(dai, &hdmi->audio.dma_data, NULL);
+	snd_soc_dai_init_dma_data(dai, &vc4_hdmi->audio.dma_data, NULL);
 
 	return 0;
 }
@@ -981,11 +981,11 @@ static const struct snd_dmaengine_pcm_config pcm_conf = {
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
 
@@ -1003,9 +1003,9 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *hdmi)
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
@@ -1028,9 +1028,9 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *hdmi)
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
@@ -1055,7 +1055,7 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *hdmi)
 	 * now stored in card->drvdata and should be retrieved with
 	 * snd_soc_card_get_drvdata() if needed.
 	 */
-	snd_soc_card_set_drvdata(card, hdmi);
+	snd_soc_card_set_drvdata(card, vc4_hdmi);
 	ret = devm_snd_soc_register_card(dev, card);
 	if (ret)
 		dev_err(dev, "Could not register sound card: %d\n", ret);
@@ -1068,20 +1068,21 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *hdmi)
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
@@ -1107,23 +1108,23 @@ static void vc4_cec_read_msg(struct vc4_dev *vc4, u32 cntrl1)
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
@@ -1225,44 +1226,44 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
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
@@ -1271,9 +1272,9 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
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
@@ -1282,13 +1283,13 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
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
@@ -1301,18 +1302,18 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
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
@@ -1328,21 +1329,21 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 			 DRM_MODE_ENCODER_TMDS, NULL);
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
@@ -1361,32 +1362,32 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
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
 	vc4_hdmi_encoder_destroy(encoder);
 err_unprepare_hsm:
-	clk_disable_unprepare(hdmi->hsm_clock);
+	clk_disable_unprepare(vc4_hdmi->hsm_clock);
 	pm_runtime_disable(dev);
 err_put_i2c:
-	put_device(&hdmi->ddc->dev);
+	put_device(&vc4_hdmi->ddc->dev);
 
 	return ret;
 }
@@ -1396,16 +1397,16 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 {
 	struct drm_device *drm = dev_get_drvdata(master);
 	struct vc4_dev *vc4 = drm->dev_private;
-	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 
-	cec_unregister_adapter(hdmi->cec_adap);
-	vc4_hdmi_connector_destroy(&hdmi->connector.base);
-	vc4_hdmi_encoder_destroy(&hdmi->encoder.base.base);
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
