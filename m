Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791951B7AEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCYIsi+i7biA+AT+miMni5kqpdpMHOPlY+4Y2JPYB1s=; b=bOac6oqfxvvDDq
	cFykNmELwLd+fzmOmDh65q0Mm7DiqbhCz+xmBq3JE/QyTt2Dl/VGIp7RaokH+ulq76Sv438V1mQZG
	fOM4Ek5RYrp9IrCl6FfGs3ZCrhZeXf7Mkm7yEZuxMIqFws8EfHCFJMKBfrHGdtfeWuqfFPzgJvtWw
	GlqIXkD+JS6+rzIYy91t61FpTmbR0d1wgVGzUVEHokCGOCejZea7toxJHm3Fjdo4aW3Nj9nzEEapk
	BgNNn2o49FjoVr7siurIKQ0LirZvkZhIQaVMxTzb2t2rhK9ikE2NytZLHq9Bu9QCxYogYXyGtCoHw
	sqpT8zF9UUudSD5IPWIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0k1-0004ES-HT; Fri, 24 Apr 2020 15:59:49 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Nv-0000CA-PH; Fri, 24 Apr 2020 15:37:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id D01C38D8;
 Fri, 24 Apr 2020 11:36:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=nXOSTObHFs6Cp
 TaqMB0TEH1R855f/VS52L07yf1dEjw=; b=MhDElq2qJ8idpa+t+iF+zDDOKafPL
 t2j8WYscMOqnjhehksB5BsY3fQNkuRu6u3Q6VcJdj6RAgU3s11AztzvGUYxd5SYW
 E8a2ds/UyzjEa9ouvwWl91p8fgXWPXfkXtZDamkMXVDhOqwSRioM/ZthKlJQOsQ0
 P9UoGRuYH/9VliXYpsdTvidCGPPmltgGVgtsCWs9Wq2zhj4PsLhmsm0ng4OO1QJv
 WPoSIHDFF5D6Q2KZv+pnJ5nSOzMj7ycXWcVAE6stfLLkmbN24P9fegWv4L8+LA+U
 8eqjFc98XFdgY34rANo1WgZ/WQAZRAc1aE3sohTtMMP7JJuISP79NyIRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=nXOSTObHFs6CpTaqMB0TEH1R855f/VS52L07yf1dEjw=; b=aTKFREPn
 gGmwgQLTM4rUus15iYRy6hxHffmXhXyB+WznAAAR9xSE9q6a1aVW0AY98PHxgTk2
 Ygc8+sXa+5PusWzsvMNIX1eB96GcIklLiyky/l1r+DauGBKLrqK5bs4on2bjDIew
 sbku8ymenYvUVEP/cAro1GYKAJFUfkmEsDjBpKHhC6FZ9r1UzG+DRNvORv31aYdg
 rq88rzqzGQ9elATAt8CYKVv4oTZBbRsOL5ODTR5D6tjNhaBUeKbcBnorBOJhT9ju
 W+wL3UgLMWhLyOjVf/5UNnUaAXVZBb7LNSD9awALkK48oFX9WC0BCTQrt3Eea7vv
 LV4jmQTsHnOecA==
X-ME-Sender: <xms:mQejXrGorgU81KhMdd7ylpJmdQ6fJQgAJLaMoGxJ5bqUobXl6KgYpQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeehleenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:mQejXtolYOk9TVXe9sBPcYYGnAGnD5ThpFTnxnCchrVOdqJocgUHZQ>
 <xmx:mQejXk6bQ1dAMlrM-b0vXrwts8NJf6MjrOLpCbfS1sLL3sIZbJ3ypQ>
 <xmx:mQejXnxvIFyyBlmeQXC3osOSr1qk-MZgm7Q2jl-xTGQCEzQbNquuoQ>
 <xmx:mQejXqomzZ1_kB2Lq57VY8TFFrjoIP0UytnWdA4EED2h3RnVSiDdZgAAXTI>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 212503280064;
 Fri, 24 Apr 2020 11:36:57 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 68/91] drm/vc4: hdmi: Add container_of macros for encoders
 and connectors
Date: Fri, 24 Apr 2020 17:34:49 +0200
Message-Id: <3cafe8f9e19de4d9404e87eb42ebd99fa85e34ac.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083700_253544_C8584A9D 
X-CRM114-Status: GOOD (  10.36  )
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

Whenever the code needs to access the vc4_hdmi structure from a DRM
connector or encoder, it first accesses the drm_device associated to the
connector, then retrieve the drm_dev private data which gives it a
pointer to our vc4_dev, and will finally follow the vc4_hdmi pointer in
that structure.

That will also give us some trouble when having multiple controllers,
but now that we have our encoder and connector structures that are part
of vc4_hdmi, we can simply call container_of on the DRM connector or
encoder and retrieve the vc4_hdmi structure directly.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 41 ++++++++++-------------------------
 drivers/gpu/drm/vc4/vc4_hdmi.h | 16 ++++++++++++++-
 2 files changed, 28 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 9a89541f7d64..81752eaf38b9 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -120,9 +120,7 @@ static int vc4_hdmi_debugfs_regs(struct seq_file *m, void *unused)
 static enum drm_connector_status
 vc4_hdmi_connector_detect(struct drm_connector *connector, bool force)
 {
-	struct drm_device *dev = connector->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = connector_to_vc4_hdmi(connector);
 
 	if (vc4_hdmi->hpd_gpio) {
 		if (gpio_get_value_cansleep(vc4_hdmi->hpd_gpio) ^
@@ -149,17 +147,13 @@ static void vc4_hdmi_connector_destroy(struct drm_connector *connector)
 
 static int vc4_hdmi_connector_get_modes(struct drm_connector *connector)
 {
-	struct vc4_hdmi_connector *vc4_connector =
-		to_vc4_hdmi_connector(connector);
-	struct drm_encoder *encoder = vc4_connector->encoder;
-	struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
-	struct drm_device *dev = connector->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
+	struct vc4_hdmi *vc4_hdmi = connector_to_vc4_hdmi(connector);
+	struct vc4_hdmi_encoder *vc4_encoder = &vc4_hdmi->encoder;
 	int ret = 0;
 	struct edid *edid;
 
-	edid = drm_get_edid(connector, vc4->hdmi->ddc);
-	cec_s_phys_addr_from_edid(vc4->hdmi->cec_adap, edid);
+	edid = drm_get_edid(connector, vc4_hdmi->ddc);
+	cec_s_phys_addr_from_edid(vc4_hdmi->cec_adap, edid);
 	if (!edid)
 		return -ENODEV;
 
@@ -237,9 +231,7 @@ static const struct drm_encoder_funcs vc4_hdmi_encoder_funcs = {
 static int vc4_hdmi_stop_packet(struct drm_encoder *encoder,
 				enum hdmi_infoframe_type type)
 {
-	struct drm_device *dev = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	u32 packet_id = type - 0x80;
 
 	HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG,
@@ -252,9 +244,7 @@ static int vc4_hdmi_stop_packet(struct drm_encoder *encoder,
 static void vc4_hdmi_write_infoframe(struct drm_encoder *encoder,
 				     union hdmi_infoframe *frame)
 {
-	struct drm_device *dev = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	u32 packet_id = frame->any.type - 0x80;
 	u32 packet_reg = VC4_HDMI_RAM_PACKET(packet_id);
 	uint8_t buffer[VC4_HDMI_PACKET_STRIDE];
@@ -300,9 +290,8 @@ static void vc4_hdmi_write_infoframe(struct drm_encoder *encoder,
 
 static void vc4_hdmi_set_avi_infoframe(struct drm_encoder *encoder)
 {
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
-	struct vc4_dev *vc4 = encoder->dev->dev_private;
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	struct drm_connector *connector = &vc4_hdmi->connector.base;
 	struct drm_connector_state *cstate = connector->state;
 	struct drm_crtc *crtc = encoder->crtc;
@@ -346,9 +335,7 @@ static void vc4_hdmi_set_spd_infoframe(struct drm_encoder *encoder)
 
 static void vc4_hdmi_set_audio_infoframe(struct drm_encoder *encoder)
 {
-	struct drm_device *drm = encoder->dev;
-	struct vc4_dev *vc4 = drm->dev_private;
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	union hdmi_infoframe frame;
 	int ret;
 
@@ -370,9 +357,7 @@ static void vc4_hdmi_set_infoframes(struct drm_encoder *encoder)
 
 static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
 {
-	struct drm_device *dev = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	int ret;
 
 	HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG, 0);
@@ -391,10 +376,8 @@ static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
 static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 {
 	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
-	struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
-	struct drm_device *dev = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
+	struct vc4_hdmi_encoder *vc4_encoder = &vc4_hdmi->encoder;
 	bool debug_dump_regs = false;
 	bool hsync_pos = mode->flags & DRM_MODE_FLAG_PHSYNC;
 	bool vsync_pos = mode->flags & DRM_MODE_FLAG_PVSYNC;
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index cdc9d90f62ac..749a807cd1f3 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -78,6 +78,22 @@ struct vc4_hdmi {
 	struct debugfs_regset32 hd_regset;
 };
 
+static inline struct vc4_hdmi *
+connector_to_vc4_hdmi(struct drm_connector *connector)
+{
+	struct vc4_hdmi_connector *_connector = to_vc4_hdmi_connector(connector);
+
+	return container_of(_connector, struct vc4_hdmi, connector);
+}
+
+static inline struct vc4_hdmi *
+encoder_to_vc4_hdmi(struct drm_encoder *encoder)
+{
+	struct vc4_hdmi_encoder *_encoder = to_vc4_hdmi_encoder(encoder);
+
+	return container_of(_encoder, struct vc4_hdmi, encoder);
+}
+
 #define HDMI_READ(offset) readl(vc4_hdmi->hdmicore_regs + offset)
 #define HDMI_WRITE(offset, val) writel(val, vc4_hdmi->hdmicore_regs + offset)
 #define HD_READ(offset) readl(vc4_hdmi->hd_regs + offset)
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
