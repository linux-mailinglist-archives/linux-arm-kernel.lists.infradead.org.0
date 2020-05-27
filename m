Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED2B1E4A16
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZFc7ayG0iEg3ZC9KL6FdUyyySC7Os7Ww0Gl0EHOGnc=; b=dki3SFndc9+QhK
	qm1abXL8CbEti0B73kd9j18gA54IcsiUl0PZ6OL409bQaxlBI18id3kDYgznJvKBX0xGuH8r3FIgK
	rN7dyJeYZZd7bW6J1EDEp3yPyPLCIuCLPvZ2FVYgE0EnftvzJstqSWy/Oi2T2ka4Zb8Z6LGOiyy8X
	w5ofI0piH+Ir6VqLv4yXam9etayE2g7CLDpGeyP+6+TQCEvZjXj6vnd0X9K5hiMzG3Iqgl/v3jxtF
	dZofVNXPUl0uIXgluQZzrVWaWOlVxC1dcWVq0/GOF1Jma3lDqAALn/XHknSn/QnH9JYHOpo2iXdu6
	4bxX9HBuyJO5Q9J1QKOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdytx-0002zB-Lo; Wed, 27 May 2020 16:27:33 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKr-0001K7-DV; Wed, 27 May 2020 15:51:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 068495801B2;
 Wed, 27 May 2020 11:51:16 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=YlfaQQFIbVFPL
 gp+Wylmd4RFKyipmTjj6tpheBg9HcQ=; b=Y2AhUEKotTsLtyQ22Mz2LaVaiHYxe
 wlQ22K+izgsKJEmZFXM9x97mRbgrWDlay2aN2LXEg2Bh6/ZkJ4T9zR9jS3TSTXy4
 aLNRyAVPSvSV34xY9vjZR2Lj3yXxLvpzGMAoUcN/zHl8qV3T95MVWcX+Dyn453Jd
 I0XrdjgFd50wyb7uIU0rY0g0e2yvoRn+bNp0G4g0ldIon1bwenqkb31ysNANDi3S
 rd/MvAN5/P3EOGq9nmS9wbZV2sSvpftpSEhEytDGnaFovg/QYfIFTypmfh+bN0lr
 Ly7Z9LE7nUxYWfzh4f/hny5dqy6gZVb1Tie2gq+0Ohh1zeOz27575LoMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=YlfaQQFIbVFPLgp+Wylmd4RFKyipmTjj6tpheBg9HcQ=; b=aeU9anFO
 LnU+L0CzXYckkuqVhhewVzCNzBEqkUnhS7wztOLs6AnVWWyorLIG2NmdNlJGx8lB
 D5R+900772aqVDZmJFWiU3ye6yYZIRHWjG04jgyYiGKidRtlMlacRYbkAkyfBqq5
 Y3x1zxJTfw7A2GnuM4wBUqbr2aj7lkRnvk2pE7F+5hLxZjNAMz+jtIP3yu0J5KBF
 Yg8z+z272uIUnjrQeScvwRu2x4dYsSKeRwzZLN2HBK/8scOTf4hV6czQMqxLvTAH
 R4T5yjrJQu/Vl9Qmd7vdIA74fP4E4htSISr3vtMJ9Ozilct80Ix79iF8AhoevSoc
 YA500xzDWi4Rog==
X-ME-Sender: <xms:c4zOXs0eTTF4ZtLFphUaukouSgOloe9cpR5ixEmpmVVt1ilhzXSmXA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepheefne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:c4zOXnFndLrwxBDHLUA2gwVcg5Zmqy4gnY-aicW44qx0S6dh-jv7mA>
 <xmx:c4zOXk7pC0qHNt-F0KFXunCoyD3JQyMUcQdB9zwCyuj6N41qegt6ww>
 <xmx:c4zOXl3WeTczrfZAojtmiTXecKKY88FF-LTPks9tK7e67T9WYYL0hw>
 <xmx:dIzOXu2v-nHXiL0R3o13AGGqty-VkChlpWRCLLhWYPTUOZJ77vCTMA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A359F30614FA;
 Wed, 27 May 2020 11:51:15 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 075/105] drm/vc4: hdmi: Add container_of macros for
 encoders and connectors
Date: Wed, 27 May 2020 17:48:45 +0200
Message-Id: <343f2ebfaf29858cee93de344e1abcd0f4c3555d.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085117_741516_31AE8C83 
X-CRM114-Status: GOOD (  10.43  )
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
index 50c67d674331..4a28e0c0c814 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -121,9 +121,7 @@ static int vc4_hdmi_debugfs_regs(struct seq_file *m, void *unused)
 static enum drm_connector_status
 vc4_hdmi_connector_detect(struct drm_connector *connector, bool force)
 {
-	struct drm_device *dev = connector->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = connector_to_vc4_hdmi(connector);
 
 	if (vc4_hdmi->hpd_gpio) {
 		if (gpio_get_value_cansleep(vc4_hdmi->hpd_gpio) ^
@@ -150,17 +148,13 @@ static void vc4_hdmi_connector_destroy(struct drm_connector *connector)
 
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
 
@@ -229,9 +223,7 @@ static int vc4_hdmi_connector_init(struct drm_device *dev,
 static int vc4_hdmi_stop_packet(struct drm_encoder *encoder,
 				enum hdmi_infoframe_type type)
 {
-	struct drm_device *dev = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	u32 packet_id = type - 0x80;
 
 	HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG,
@@ -244,9 +236,7 @@ static int vc4_hdmi_stop_packet(struct drm_encoder *encoder,
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
@@ -292,9 +282,8 @@ static void vc4_hdmi_write_infoframe(struct drm_encoder *encoder,
 
 static void vc4_hdmi_set_avi_infoframe(struct drm_encoder *encoder)
 {
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
-	struct vc4_dev *vc4 = encoder->dev->dev_private;
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
 	struct drm_connector *connector = &vc4_hdmi->connector.base;
 	struct drm_connector_state *cstate = connector->state;
 	struct drm_crtc *crtc = encoder->crtc;
@@ -338,9 +327,7 @@ static void vc4_hdmi_set_spd_infoframe(struct drm_encoder *encoder)
 
 static void vc4_hdmi_set_audio_infoframe(struct drm_encoder *encoder)
 {
-	struct drm_device *drm = encoder->dev;
-	struct vc4_dev *vc4 = drm->dev_private;
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	union hdmi_infoframe frame;
 	int ret;
 
@@ -362,9 +349,7 @@ static void vc4_hdmi_set_infoframes(struct drm_encoder *encoder)
 
 static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
 {
-	struct drm_device *dev = encoder->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	int ret;
 
 	HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG, 0);
@@ -383,10 +368,8 @@ static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
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
