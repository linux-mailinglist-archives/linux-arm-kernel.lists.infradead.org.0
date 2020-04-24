Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 112471B7AEC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgww/MXM+gMfe9daNk5pV03lMEiyXN5sl96kNoW9Nzw=; b=E4o/1EPmLkO2JG
	TlRhgUJC1wRIes9L45GBXYJIzcDRIsBsyVdgnYETajxyrYIfq/fmyNuJGEOwKP4KcZeqyy1Hwpvux
	7W7VcUAoTEbP0ooH5uqV/c94bHi/l2smE0Ls7vfVQ7fGLdAUoNIvcOWna5zo61AQE8vz0d4HXW+g9
	mTkhtBQeKkjpruGu0D/UMggzy3bC4keCXhrUcUO85vWdAhhq8iO56SI5YMpb8xQ9oo581Ce+P6ClG
	zkDybTJDF184GDhUd2YGoXTeMsflLMJ20P0z87/eU52+oHEdkvH6abkEvyhZFBzt+ZeG027vow9Gs
	CJDTKMdvNhtaxLhWXGuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0jf-00040g-Gw; Fri, 24 Apr 2020 15:59:27 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Nt-00009f-Ah; Fri, 24 Apr 2020 15:37:04 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 2496C334;
 Fri, 24 Apr 2020 11:36:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=H4mlqX4eagwO4
 IgAkqAh+QZs763zel1FbyaNrbMxOTQ=; b=JntGwCpNKVrA9jnY4vs3fCaZ96wMf
 bs3qkn/S09vEuP8sFZDdNMk/5Vhp8RCbqfuTFH+7oy6xPPGkA4EGAmRwePmTUQmJ
 w9gwQloKMS2UDogAB5WqfRWKnAWq3KSR0fVVEHbm1WRi4lovpHfvSrWqz6OQqkj6
 NYfn5BKAIMEPaW12Kq1LvrUmcKjiU1RMA7sE7xP1lSJ4P+tQrseT1J8MhCccUImq
 XXFp1VrS81jO4i7NJ7IuIc9xM+Bsx6a8QJ3r/Y/GGMJORRd4BntUQ6g6IT3MNCPJ
 /aqQHkE4mMNcHZ6YFyuH+iMSwYEeC8E/ZCNEIjRPcDl9bGK1M5bD0rqvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=H4mlqX4eagwO4IgAkqAh+QZs763zel1FbyaNrbMxOTQ=; b=koRdT2if
 vx2fPeTzeLz2x73Kbbn1O0zPgPBStqB1iCbHHK+FbsE0nXJMd/rattbtzOgHa5g+
 DnzVjCjHyC22GkxSuVEAUUB/BUrU4pacWegyofZ+/cwFf2kBspWd4hqr3pjdj0Ih
 QyAW1wDdRRGhPRWjcOvF7BHPuNGebsuNEqs7G0zCY5EDpCPpowmlZHsdkbvnvxtG
 u2mhv5UtywrdAzsSbCmPutWOWswzmx3G7b4BanKlpK7stXr55FuGDXKD+Tsrz+ss
 gt8XfnMdOchTZ0qxKqkX71tyR0yeNwka3/foLVm8DtlkWp2DHRMSazQy011+3uJV
 oF9K9KZe3HvzjQ==
X-ME-Sender: <xms:lgejXoaGwZewLkUaeKUwFhjkYjI2GYGhwe2zaLNzwJTKbkgqE7oolQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeehleenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:lgejXjkwdHwLMeQfgHk3ISzNikpbsw77vlwnr9IsC6dbhzWsOa8Baw>
 <xmx:lgejXscn929AWLpRaN4TkjhSzARgXhrX6kikPqRavz-SkV6eAVC7wg>
 <xmx:lgejXhtvRC3Aut7LnECXFfYK3ndxMAptjgP_TRKL_gYLEvU57f8gmw>
 <xmx:lgejXmqhvKZATjpU2nFLPuGx1mqPMR7QPXwCDBFSOlGT1r2gBnVRGAvir0c>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5C1EC3280069;
 Fri, 24 Apr 2020 11:36:54 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 66/91] drm/vc4: hdmi: Move accessors to vc4_hdmi
Date: Fri, 24 Apr 2020 17:34:47 +0200
Message-Id: <8f10682da8c4928a350091249e7f3f8ed94d98d5.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083657_690859_7328D7F1 
X-CRM114-Status: GOOD (  10.54  )
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

The current driver only supports a single HDMI controller, and part of
the issue is that the main vc4_dev structure holds a pointer to its
(only) HDMI controller, and the HDMI registers accessors will use it to
retrieve the mapped addresses.

Let's modify those accessors to use directly the vc4_hdmi structure so
that we can eventually get rid of that single global pointer.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 22 ++++++++--------------
 drivers/gpu/drm/vc4/vc4_hdmi.h |  8 ++++----
 2 files changed, 12 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index c5fdac191404..7a98520665e3 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -122,6 +122,7 @@ vc4_hdmi_connector_detect(struct drm_connector *connector, bool force)
 {
 	struct drm_device *dev = connector->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 
 	if (vc4->hdmi->hpd_gpio) {
 		if (gpio_get_value_cansleep(vc4->hdmi->hpd_gpio) ^
@@ -238,6 +239,7 @@ static int vc4_hdmi_stop_packet(struct drm_encoder *encoder,
 {
 	struct drm_device *dev = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	u32 packet_id = type - 0x80;
 
 	HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG,
@@ -252,6 +254,7 @@ static void vc4_hdmi_write_infoframe(struct drm_encoder *encoder,
 {
 	struct drm_device *dev = encoder->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	u32 packet_id = frame->any.type - 0x80;
 	u32 packet_reg = VC4_HDMI_RAM_PACKET(packet_id);
 	uint8_t buffer[VC4_HDMI_PACKET_STRIDE];
@@ -631,9 +634,6 @@ static const struct drm_encoder_helper_funcs vc4_hdmi_encoder_helper_funcs = {
 /* HDMI audio codec callbacks */
 static void vc4_hdmi_audio_set_mai_clock(struct vc4_hdmi *vc4_hdmi)
 {
-	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
-	struct drm_device *drm = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	u32 hsm_clock = clk_get_rate(vc4_hdmi->hsm_clock);
 	unsigned long n, m;
 
@@ -653,8 +653,6 @@ static void vc4_hdmi_set_n_cts(struct vc4_hdmi *vc4_hdmi)
 {
 	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
 	struct drm_crtc *crtc = encoder->crtc;
-	struct drm_device *drm = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	const struct drm_display_mode *mode = &crtc->state->adjusted_mode;
 	u32 samplerate = vc4_hdmi->audio.samplerate;
 	u32 n, cts;
@@ -691,7 +689,6 @@ static int vc4_hdmi_audio_startup(struct snd_pcm_substream *substream,
 	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
 	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
 	struct drm_connector *connector = &vc4_hdmi->connector.base;
-	struct vc4_dev *vc4 = to_vc4_dev(encoder->dev);
 	int ret;
 
 	if (vc4_hdmi->audio.substream && vc4_hdmi->audio.substream != substream)
@@ -722,9 +719,7 @@ static int vc4_hdmi_audio_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 static void vc4_hdmi_audio_reset(struct vc4_hdmi *vc4_hdmi)
 {
 	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
-	struct drm_device *drm = encoder->dev;
 	struct device *dev = &vc4_hdmi->pdev->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	int ret;
 
 	ret = vc4_hdmi_stop_packet(encoder, HDMI_INFOFRAME_TYPE_AUDIO);
@@ -755,10 +750,7 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 				    struct snd_soc_dai *dai)
 {
 	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
-	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
-	struct drm_device *drm = encoder->dev;
 	struct device *dev = &vc4_hdmi->pdev->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	u32 audio_packet_config, channel_mask;
 	u32 channel_map, i;
 
@@ -829,8 +821,6 @@ static int vc4_hdmi_audio_trigger(struct snd_pcm_substream *substream, int cmd,
 {
 	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
 	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
-	struct drm_device *drm = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
 
 	switch (cmd) {
 	case SNDRV_PCM_TRIGGER_START:
@@ -1090,7 +1080,8 @@ static irqreturn_t vc4_cec_irq_handler_thread(int irq, void *priv)
 
 static void vc4_cec_read_msg(struct vc4_dev *vc4, u32 cntrl1)
 {
-	struct cec_msg *msg = &vc4->hdmi->cec_rx_msg;
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct cec_msg *msg = &vc4_hdmi->cec_rx_msg;
 	unsigned int i;
 
 	msg->len = 1 + ((cntrl1 & VC4_HDMI_CEC_REC_WRD_CNT_MASK) >>
@@ -1136,6 +1127,7 @@ static irqreturn_t vc4_cec_irq_handler(int irq, void *priv)
 static int vc4_hdmi_cec_adap_enable(struct cec_adapter *adap, bool enable)
 {
 	struct vc4_dev *vc4 = cec_get_drvdata(adap);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	/* clock period in microseconds */
 	const u32 usecs = 1000000 / CEC_CLOCK_FREQ;
 	u32 val = HDMI_READ(VC4_HDMI_CEC_CNTRL_5);
@@ -1179,6 +1171,7 @@ static int vc4_hdmi_cec_adap_enable(struct cec_adapter *adap, bool enable)
 static int vc4_hdmi_cec_adap_log_addr(struct cec_adapter *adap, u8 log_addr)
 {
 	struct vc4_dev *vc4 = cec_get_drvdata(adap);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 
 	HDMI_WRITE(VC4_HDMI_CEC_CNTRL_1,
 		   (HDMI_READ(VC4_HDMI_CEC_CNTRL_1) & ~VC4_HDMI_CEC_ADDR_MASK) |
@@ -1190,6 +1183,7 @@ static int vc4_hdmi_cec_adap_transmit(struct cec_adapter *adap, u8 attempts,
 				      u32 signal_free_time, struct cec_msg *msg)
 {
 	struct vc4_dev *vc4 = cec_get_drvdata(adap);
+	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	u32 val;
 	unsigned int i;
 
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
