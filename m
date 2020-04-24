Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7491B7AF3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYqSzha42P1bxzFCMiOkDeGxfjpH/65ASvmpxqEnPA0=; b=qjS1n/JFBlZXB6
	c6OF5IMigQmAlYZnYo0ntcYO0xxXQQHlDZOsQIlvsA/2g6RT1jUtNcHdbrm0Ti1JsaHWU9DONS3nG
	qwbqyQHnOADbUulIsSOVIr9UK4s6qnFYa3NaIQSo7M0KSP1dqjFmYDACvdpTxJNBs93lFdXHcgP5i
	K9nJ7pV7FP7zMaLN7nxFJRSM9BMUZLrUVEkQZPha4L1MvA8ih/b2xF1527DcP9ZVSGsRZCGTCTIe6
	NMgM+MOmXgiP6/UbCkp0e0RrtaRoa/UI1glEpgmzQ0AJn8FScOjvJuynbTx+ZVbL2JNA+MdDS1v8/
	SErw7GYBy0K2ElA4G3fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0ki-00051l-Aj; Fri, 24 Apr 2020 16:00:32 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0O0-0000GE-Ub; Fri, 24 Apr 2020 15:37:08 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 6D15B1460;
 Fri, 24 Apr 2020 11:37:03 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:37:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=0A405gXKVgaf3
 BLikn67Cf/OnbeVxUrYx0+mydHWI7U=; b=XZ/nGd3CDi1sH6R1kp6Z8h9MZTUxP
 xvc0Bwwci49JbQrHCF1k4N+T9dLJH36xHwRxI/HWn57VfOZAq5PHKvyzh3DxR8e4
 euh7RNpP8PhSJMPjNpjMmbuXsMZfNgNiuAAvc8knS1vqbYZ6Og2gE/HA8Rc5A2Rz
 HxrbP0RwbTU+Fe0Kc/NecYBZctJYk7vyprxcehZY0wF9okQ4zsg8G/zNJaNMrusq
 3WgITjJtT7/rKq5HvDbU3aBMe6x8LgPs3PhIdFH+00OvoAvEG2HgL/+mLXhVPjDm
 7klv/pd0SCq0iqMd4wzBuNQgSfGYcywNMSLpmc3TojD9EClazDuMnBM+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=0A405gXKVgaf3BLikn67Cf/OnbeVxUrYx0+mydHWI7U=; b=zbmSm1wy
 y0BMTShjT/ZkBYXmBPDn2ihyhvMYRjojeUf6XTbbvaLl5PI43d/KtkmE1WJTykor
 n3mXl65GoNL2SQCZnGrSYdWGCuUbgJrHeMeo3qRlM9SVm+8hgttkXhZquwYC10MS
 me+4au/p/TZbq27cUMHc0JGahHuqOHumi2RDE2cTij4B8x3QjfvN9CS1U1zIYiL3
 t/b5veJZNgyDyejLz4NiWMYO7hndgDrjRFIUQYikE8pI0DCuSPr1xC4yqA4KoOb8
 Deu6mRNewvPLfJ7ixgC9yfwp/RmgihGnYMi+gIoAJm/6yyw3m9B9yrMPRo9Ckg82
 M9bjQ25+OUM2mg==
X-ME-Sender: <xms:ngejXggBCAWURaqLhhTxJaaZ9HgLV5y1C94nefikDPR9zuXIryBmUA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeeivdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ngejXlGp-mPD-xNQJ5TIe6_eSFYoVg-bzLOS8VN6UyuBxqlmYkWYkA>
 <xmx:ngejXuCXI7FtFz3ym8hqtHlqNJ0TlelR-zfJhZm1teOy2tN0dS6oQw>
 <xmx:ngejXiP4bJ8J9CoTmbGtWAP0X6eyvwu4SsB-XeuLVrzQMl8rAqMetQ>
 <xmx:nwejXsY5VdHjL5AVEsyxlTZFxIF93bMM1ov5KozEFIGTHH54j89u2lI1jjI>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A5EB4328006D;
 Fri, 24 Apr 2020 11:37:02 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 72/91] drm/vc4: hdmi: Introduce resource init and variant
Date: Fri, 24 Apr 2020 17:34:53 +0200
Message-Id: <bd51e33da59982e041b1e800d006cd7514b17bb8.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083705_072589_0FB977AF 
X-CRM114-Status: GOOD (  12.11  )
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

The HDMI controllers found in the BCM2711 has a pretty different clock and
registers areas than found in the older BCM283x SoCs.

Let's create a variant structure to store the various adjustments we'll
need later on, and a function to get the resources needed for one
particular version.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 67 ++++++++++++++++++++++-------------
 drivers/gpu/drm/vc4/vc4_hdmi.h | 10 +++++-
 2 files changed, 54 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index eeaea2ad46fa..5f5943370982 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1186,38 +1186,23 @@ static const struct cec_adap_ops vc4_hdmi_cec_adap_ops = {
 };
 #endif
 
-static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
+static int vc4_hdmi_init_resources(struct vc4_hdmi *vc4_hdmi)
 {
-#ifdef CONFIG_DRM_VC4_HDMI_CEC
-	struct cec_connector_info conn_info;
-#endif
-	struct platform_device *pdev = to_platform_device(dev);
-	struct drm_device *drm = dev_get_drvdata(master);
-	struct vc4_hdmi *vc4_hdmi;
-	struct drm_encoder *encoder;
-	struct device_node *ddc_node;
-	u32 value;
-	int ret;
-
-	vc4_hdmi = devm_kzalloc(dev, sizeof(*vc4_hdmi), GFP_KERNEL);
-	if (!vc4_hdmi)
-		return -ENOMEM;
-
-	vc4_hdmi->pdev = pdev;
-	encoder = &vc4_hdmi->encoder.base.base;
-	encoder->base.type = VC4_ENCODER_TYPE_HDMI0;
+	struct platform_device *pdev = vc4_hdmi->pdev;
+	struct device *dev = &pdev->dev;
 
 	vc4_hdmi->hdmicore_regs = vc4_ioremap_regs(pdev, 0);
 	if (IS_ERR(vc4_hdmi->hdmicore_regs))
 		return PTR_ERR(vc4_hdmi->hdmicore_regs);
 
+	vc4_hdmi->hdmi_regset.base = vc4_hdmi->hdmicore_regs;
+	vc4_hdmi->hdmi_regset.regs = hdmi_regs;
+	vc4_hdmi->hdmi_regset.nregs = ARRAY_SIZE(hdmi_regs);
+
 	vc4_hdmi->hd_regs = vc4_ioremap_regs(pdev, 1);
 	if (IS_ERR(vc4_hdmi->hd_regs))
 		return PTR_ERR(vc4_hdmi->hd_regs);
 
-	vc4_hdmi->hdmi_regset.base = vc4_hdmi->hdmicore_regs;
-	vc4_hdmi->hdmi_regset.regs = hdmi_regs;
-	vc4_hdmi->hdmi_regset.nregs = ARRAY_SIZE(hdmi_regs);
 	vc4_hdmi->hd_regset.base = vc4_hdmi->hd_regs;
 	vc4_hdmi->hd_regset.regs = hd_regs;
 	vc4_hdmi->hd_regset.nregs = ARRAY_SIZE(hd_regs);
@@ -1227,12 +1212,44 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 		DRM_ERROR("Failed to get pixel clock\n");
 		return PTR_ERR(vc4_hdmi->pixel_clock);
 	}
+
 	vc4_hdmi->hsm_clock = devm_clk_get(dev, "hdmi");
 	if (IS_ERR(vc4_hdmi->hsm_clock)) {
 		DRM_ERROR("Failed to get HDMI state machine clock\n");
 		return PTR_ERR(vc4_hdmi->hsm_clock);
 	}
 
+	return 0;
+}
+
+static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
+{
+#ifdef CONFIG_DRM_VC4_HDMI_CEC
+	struct cec_connector_info conn_info;
+#endif
+	struct platform_device *pdev = to_platform_device(dev);
+	struct drm_device *drm = dev_get_drvdata(master);
+	const struct vc4_hdmi_variant *variant;
+	struct vc4_hdmi *vc4_hdmi;
+	struct drm_encoder *encoder;
+	struct device_node *ddc_node;
+	u32 value;
+	int ret;
+
+	vc4_hdmi = devm_kzalloc(dev, sizeof(*vc4_hdmi), GFP_KERNEL);
+	if (!vc4_hdmi)
+		return -ENOMEM;
+
+	vc4_hdmi->pdev = pdev;
+	variant = of_device_get_match_data(dev);
+	vc4_hdmi->variant = variant;
+	vc4_hdmi->encoder.base.type = VC4_ENCODER_TYPE_HDMI0;
+	encoder = &vc4_hdmi->encoder.base.base;
+
+	ret = variant->init_resources(vc4_hdmi);
+	if (ret)
+		return ret;
+
 	ddc_node = of_parse_phandle(dev->of_node, "ddc", 0);
 	if (!ddc_node) {
 		DRM_ERROR("Failed to find ddc node in device tree\n");
@@ -1393,8 +1410,12 @@ static int vc4_hdmi_dev_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct vc4_hdmi_variant bcm2835_variant = {
+	.init_resources		= vc4_hdmi_init_resources,
+};
+
 static const struct of_device_id vc4_hdmi_dt_match[] = {
-	{ .compatible = "brcm,bcm2835-hdmi" },
+	{ .compatible = "brcm,bcm2835-hdmi", .data = &bcm2835_variant },
 	{}
 };
 
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 88794136d2e4..4cd712779ad3 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -21,6 +21,15 @@ to_vc4_hdmi_encoder(struct drm_encoder *encoder)
 	return container_of(encoder, struct vc4_hdmi_encoder, base.base);
 }
 
+struct vc4_hdmi;
+
+struct vc4_hdmi_variant {
+	/* Callback to get the resources (memory region, interrupts,
+	 * clocks, etc) for that variant.
+	 */
+	int (*init_resources)(struct vc4_hdmi *vc4_hdmi);
+};
+
 /* HDMI audio information */
 struct vc4_hdmi_audio {
 	struct snd_soc_card card;
@@ -37,6 +46,7 @@ struct vc4_hdmi_audio {
 /* General HDMI hardware state. */
 struct vc4_hdmi {
 	struct platform_device *pdev;
+	const struct vc4_hdmi_variant *variant;
 
 	struct vc4_hdmi_encoder encoder;
 	struct drm_connector connector;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
