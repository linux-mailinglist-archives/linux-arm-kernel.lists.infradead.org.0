Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E07F1E4A0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2uWQNMDFDLG4Kjw+JRw+UglPxZds2ZyDvKWNH3DqNoA=; b=inYj6gfFEZ3/ZK
	iLMrvE5b8A+kmt7pOvhy4wuxpAVWDrNjd3oH1IdWgM5XwjOkeI8s3icq35ziljiha6Zo1SmYuCjq6
	9CJSk8CyYKInYAfdEDQZ3vUBS6hAqLjjSKiCCyM/S4wP5tL01rFMi4HuN321Fw98Qr3dQNwWJN91a
	MdT3gxwOw7kM8iNy25CF3RVlGbifI2cZH6DbxUFOtrnO5GPcvDMQ8+xgfJ41SeHtsaTCg5GxXTcbZ
	V+YtTf8w0ZXLWIJTEvRwIkvg66Zdeqr15QQt1xirybD2ox8QNhanRvDmhudabau4vfN4GWqfzdYZY
	m6JYds/0+Sex1e8nWFWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdytL-0002UT-0i; Wed, 27 May 2020 16:26:55 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKn-0001Ht-Tk; Wed, 27 May 2020 15:51:16 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 00ABC5820FE;
 Wed, 27 May 2020 11:51:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=7Cq1oQhHRhAgi
 M83ldDB+zjM1BEh4iI0wZK4EB3rptk=; b=N5RrSCaT3E5NfkCzWYjKDjR2V2hN7
 qx4N5Z4G6exHLgKTQmOgPcBO6TSE9YGQHmzxIEryXvmeHQP21bUs61L6FzGmupxW
 3lDvfhfsYK3Zcs2q0HvEkwZLKagvO0VtMDD7v+fo/2RqUm/KsONlmE363/jIv8tQ
 KMdZidW29vcHgvTbMSqjX7p1p96/ViP3+JbqzNm77fw+DtJE9S35rxo3uAPYIFiJ
 rVXOyBPKbSQekmyNqgF/CKDKLr0gP2AhBnACtAZjvfHNT0BasksEN9zDxr2ygSPd
 g8XIb6LQZ6lBop+bMWP0v5Dbq/6ACgwPrtnkLgLb7lpp3eocukwqVcTjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=7Cq1oQhHRhAgiM83ldDB+zjM1BEh4iI0wZK4EB3rptk=; b=YassIUBg
 JOn6OjyFiyeJWEkldBFCVPwWz0K8/fyMHOBl/0y6ekxF8dENfErBAI1aJFCJEtmR
 CMruqpeVEvlDE9RgxwG4FZRBrMGZc9BZZZuIVsUYnsemEDF8XpyG2J1aX7WqUWvo
 oLBQ7x2kzYAL2XTtnaWnDPTGqxSvlYJ8bJYQfOXvIfHz3l0nIDn5oNiJ6i4o0Hhd
 7OhgAkvzf+9ohbfq2TUCcEmwFIHa9cgNPgwXJtEeifoP6qs8IbB+1K7CpaaI2jOO
 ntO5k2HrK0Y3Vx4bJz5aYPfkp+V2W/Ix1FkDQxZMMalh3sFbZwihWUDZGP7ODnL7
 20bfEZJj3ofMDQ==
X-ME-Sender: <xms:cIzOXn0LbTRuRsUyhNA4Ke2RqHgbrIE6nDsylckEWrf453NJLvhOmg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgephedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:cIzOXmFO8o_dMoM218BR4JlzqST-iEeZaOjieSfgc8yCwwR1ph3dRA>
 <xmx:cIzOXn7dYlP7CNOmAeq-Pk4xSO8b960VRw_4NOzCo2bQCIai0FZv7w>
 <xmx:cIzOXs3uIg2yq3s2ww1xveMyO2KFH8auxQpynIDBceuiwm1Ktz2EJA>
 <xmx:cIzOXt0ygEdJWVIdYaMfrB86c2u6hEcWKqvywnEj_xG1JVSSaEoysA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 91C2D30614FA;
 Wed, 27 May 2020 11:51:12 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 073/105] drm/vc4: hdmi: Move accessors to vc4_hdmi
Date: Wed, 27 May 2020 17:48:43 +0200
Message-Id: <1705c3cb40906863ec0d24ee5ea5092f5ee2e994.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085114_173742_937A9D44 
X-CRM114-Status: GOOD (  11.44  )
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

The current driver only supports a single HDMI controller, and part of
the issue is that the main vc4_dev structure holds a pointer to its
(only) HDMI controller, and the HDMI registers accessors will use it to
retrieve the mapped addresses.

Let's modify those accessors to use directly the vc4_hdmi structure so
that we can eventually get rid of that single global pointer.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 24 +++++++++---------------
 drivers/gpu/drm/vc4/vc4_hdmi.h |  8 ++++----
 2 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 38a14acf73e7..755b3e99a7af 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -123,6 +123,7 @@ vc4_hdmi_connector_detect(struct drm_connector *connector, bool force)
 {
 	struct drm_device *dev = connector->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 
 	if (vc4->hdmi->hpd_gpio) {
 		if (gpio_get_value_cansleep(vc4->hdmi->hpd_gpio) ^
@@ -230,6 +231,7 @@ static int vc4_hdmi_stop_packet(struct drm_encoder *encoder,
 {
 	struct drm_device *dev = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	u32 packet_id = type - 0x80;
 
 	HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG,
@@ -244,6 +246,7 @@ static void vc4_hdmi_write_infoframe(struct drm_encoder *encoder,
 {
 	struct drm_device *dev = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	u32 packet_id = frame->any.type - 0x80;
 	u32 packet_reg = VC4_HDMI_RAM_PACKET(packet_id);
 	uint8_t buffer[VC4_HDMI_PACKET_STRIDE];
@@ -623,9 +626,6 @@ static const struct drm_encoder_helper_funcs vc4_hdmi_encoder_helper_funcs = {
 /* HDMI audio codec callbacks */
 static void vc4_hdmi_audio_set_mai_clock(struct vc4_hdmi *vc4_hdmi)
 {
-	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
-	struct drm_device *drm = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	u32 hsm_clock = clk_get_rate(vc4_hdmi->hsm_clock);
 	unsigned long n, m;
 
@@ -645,8 +645,6 @@ static void vc4_hdmi_set_n_cts(struct vc4_hdmi *vc4_hdmi)
 {
 	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
 	struct drm_crtc *crtc = encoder->crtc;
-	struct drm_device *drm = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	const struct drm_display_mode *mode = &crtc->state->adjusted_mode;
 	u32 samplerate = vc4_hdmi->audio.samplerate;
 	u32 n, cts;
@@ -683,7 +681,6 @@ static int vc4_hdmi_audio_startup(struct snd_pcm_substream *substream,
 	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
 	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
 	struct drm_connector *connector = &vc4_hdmi->connector.base;
-	struct vc4_dev *vc4 = to_vc4_dev(encoder->dev);
 	int ret;
 
 	if (vc4_hdmi->audio.substream && vc4_hdmi->audio.substream != substream)
@@ -714,9 +711,7 @@ static int vc4_hdmi_audio_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 static void vc4_hdmi_audio_reset(struct vc4_hdmi *vc4_hdmi)
 {
 	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
-	struct drm_device *drm = encoder->dev;
 	struct device *dev = &vc4_hdmi->pdev->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	int ret;
 
 	ret = vc4_hdmi_stop_packet(encoder, HDMI_INFOFRAME_TYPE_AUDIO);
@@ -747,10 +742,7 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 				    struct snd_soc_dai *dai)
 {
 	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
-	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
-	struct drm_device *drm = encoder->dev;
 	struct device *dev = &vc4_hdmi->pdev->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	u32 audio_packet_config, channel_mask;
 	u32 channel_map, i;
 
@@ -821,8 +813,6 @@ static int vc4_hdmi_audio_trigger(struct snd_pcm_substream *substream, int cmd,
 {
 	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
 	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
-	struct drm_device *drm = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
 
 	switch (cmd) {
 	case SNDRV_PCM_TRIGGER_START:
@@ -1082,7 +1072,8 @@ static irqreturn_t vc4_cec_irq_handler_thread(int irq, void *priv)
 
 static void vc4_cec_read_msg(struct vc4_dev *vc4, u32 cntrl1)
 {
-	struct cec_msg *msg = &vc4->hdmi->cec_rx_msg;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct cec_msg *msg = &vc4_hdmi->cec_rx_msg;
 	unsigned int i;
 
 	msg->len = 1 + ((cntrl1 & VC4_HDMI_CEC_REC_WRD_CNT_MASK) >>
@@ -1128,6 +1119,7 @@ static irqreturn_t vc4_cec_irq_handler(int irq, void *priv)
 static int vc4_hdmi_cec_adap_enable(struct cec_adapter *adap, bool enable)
 {
 	struct vc4_dev *vc4 = cec_get_drvdata(adap);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	/* clock period in microseconds */
 	const u32 usecs = 1000000 / CEC_CLOCK_FREQ;
 	u32 val = HDMI_READ(VC4_HDMI_CEC_CNTRL_5);
@@ -1171,6 +1163,7 @@ static int vc4_hdmi_cec_adap_enable(struct cec_adapter *adap, bool enable)
 static int vc4_hdmi_cec_adap_log_addr(struct cec_adapter *adap, u8 log_addr)
 {
 	struct vc4_dev *vc4 = cec_get_drvdata(adap);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 
 	HDMI_WRITE(VC4_HDMI_CEC_CNTRL_1,
 		   (HDMI_READ(VC4_HDMI_CEC_CNTRL_1) & ~VC4_HDMI_CEC_ADDR_MASK) |
@@ -1182,6 +1175,7 @@ static int vc4_hdmi_cec_adap_transmit(struct cec_adapter *adap, u8 attempts,
 				      u32 signal_free_time, struct cec_msg *msg)
 {
 	struct vc4_dev *vc4 = cec_get_drvdata(adap);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	u32 val;
 	unsigned int i;
 
@@ -1392,7 +1386,7 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 
 	cec_unregister_adapter(vc4_hdmi->cec_adap);
 	vc4_hdmi_connector_destroy(&vc4_hdmi->connector.base);
-	vc4_hdmi_encoder_destroy(&vc4_hdmi->encoder.base.base);
+	drm_encoder_cleanup(&vc4_hdmi->encoder.base.base);
 
 	clk_disable_unprepare(vc4_hdmi->hsm_clock);
 	pm_runtime_disable(dev);
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 17079a39f1b1..cdc9d90f62ac 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -78,9 +78,9 @@ struct vc4_hdmi {
 	struct debugfs_regset32 hd_regset;
 };
 
-#define HDMI_READ(offset) readl(vc4->hdmi->hdmicore_regs + offset)
-#define HDMI_WRITE(offset, val) writel(val, vc4->hdmi->hdmicore_regs + offset)
-#define HD_READ(offset) readl(vc4->hdmi->hd_regs + offset)
-#define HD_WRITE(offset, val) writel(val, vc4->hdmi->hd_regs + offset)
+#define HDMI_READ(offset) readl(vc4_hdmi->hdmicore_regs + offset)
+#define HDMI_WRITE(offset, val) writel(val, vc4_hdmi->hdmicore_regs + offset)
+#define HD_READ(offset) readl(vc4_hdmi->hd_regs + offset)
+#define HD_WRITE(offset, val) writel(val, vc4_hdmi->hd_regs + offset)
 
 #endif /* _VC4_HDMI_H_ */
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
