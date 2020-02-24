Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AAF16A264
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:34:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBUvqA4GOriSlYUr9jwymYgjxQTWOVFtlhoW/df7g/0=; b=C93bgMCJNPpxDY
	pWYDxXmn4Y2IU/sQ/8/ffh+aKS4ulvjnzD8ERxMB8MWmH7E+10T+FIIXE6s+Et2Hzy1Pw8X68dwn/
	zbt3G+/2WceAqlPfPsMqbWBdRuX/gN0tRQLhLfZ0N0M1V3BCwkdSmsYpDnhVFwZyHCEPTpazGMJkv
	nQcIk090JwtLrk20WWeGDUQy26oJbEUXz5EhQOXBNOsVHsLv8nIkhxaGJTh1oQIWt+NxFwK9UBCo2
	hjlBmIe9i33tZ0c8w70FKTiY3LTyfFT+6KF7gTdRHh2wCM3Lw35y9b3+0PlxRRY+c/wAH2iV8UBBA
	5fAcgQz5r9U2EESHxfkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A87-0002Yn-7Z; Mon, 24 Feb 2020 09:34:23 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69l5-0003iG-PU; Mon, 24 Feb 2020 09:10:39 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 8DB0B616;
 Mon, 24 Feb 2020 04:10:33 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=0igvHqXzcE6o/
 eVNwAF28SUaKBAri4acQ03pcFymObo=; b=yT5CID+5JcnJNM5P0QpbugFhmir4d
 KGmiVIYmCDC4Fln0o1mhlaYkigtgvSt6f+d1pxr9wYU9QCHIllQrmf3IY8VMbgiq
 xclyQGYqiU1p64n5SeNCw87qOvCrApOfyAsMStlqLQwdly3WBf8wafmU0p2jS+Gs
 C14xc7BBVEgZ56BlYL7KpqnV+WowSxEEYQUsaiYlYzh/nz+TfHJw37Fy8fX/FHBz
 oLHNQWn+PYB3Ningw/bb3xiEriQMisu9zZFhwVaPV3rVBiJlNsw1mnWfAnTzcSUl
 ysbFSCmTOl/Fu+p4C6pT2O1V+ame4i+raUmcmqhyQ7Qn7FnI0AHVxajQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=0igvHqXzcE6o/eVNwAF28SUaKBAri4acQ03pcFymObo=; b=Xl1KgP+P
 +yNnPuvbJaRm9jO/EIJ7tE0CDFLpk13Rs1Y26dRuOvpxE6zw/JYjFXlRcCJjQrLI
 y6/E1G0RFF4ktKIlkV9KzlFI2vkJ9APfGoDUC2cVKCbCBlO5nJk1rfGAxiNpKVfd
 2KIvM7tiIJKAkS1DK5F4ey+1XhTKcSTKyTTnQJFjTdTr6WX2FVsZvjMG6ksw+Pxm
 2oJ7SGug7bTlAnYpJioe4J1Gap2zCWGwYF32nhgx1xmQnXWTAxgcU4ySE6p07zCQ
 4oJ36pagOXqSwemlc/+j/ffGhcbuzFytnkllA3wdTYRjrXEywNDKpiHH0t1RhVQc
 QHRSD+GLUbfznw==
X-ME-Sender: <xms:CZNTXpznkJM07sIsI9Cf_iWdupGo0wlyHPUdKgLHB3se6YMm3Y6hfA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepuddunecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:CZNTXjTjgUXAWPTRjcGQvHOIRwTtuevvTqYO0cB_w8cul2wYAFl1og>
 <xmx:CZNTXp8Dnf6E4mSlUQ3Sg5yBMp8Zb9tawt1TrqUZ6TLd5AjTKwFFCw>
 <xmx:CZNTXptiZ5PSFgpi99h_akFh75DJlQ_ExyeUCr12bc429YaAqFXRJw>
 <xmx:CZNTXltNi-4M6abUJcmJMJ-FOvp7IYxAf9znhMKY1FWHOqmkjsiDEw890YU>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D0902328005E;
 Mon, 24 Feb 2020 04:10:32 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 72/89] drm/vc4: hdmi: Introduce resource init and variant
Date: Mon, 24 Feb 2020 10:07:14 +0100
Message-Id: <f63515dab753317d7416ccc7acab9c8a7af1ac9e.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011036_014934_24B7A2F6 
X-CRM114-Status: GOOD (  12.89  )
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

The HDMI controllers found in the BCM2711 has a pretty different clock and
registers areas than found in the older BCM283x SoCs.

Let's create a variant structure to store the various adjustments we'll
need later on, and a function to get the resources needed for one
particular version.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 67 ++++++++++++++++++++++-------------
 drivers/gpu/drm/vc4/vc4_hdmi.h |  8 ++++-
 2 files changed, 52 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index bbe7b0b3e017..a982ce8b901d 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1174,38 +1174,23 @@ static const struct cec_adap_ops vc4_hdmi_cec_adap_ops = {
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
@@ -1215,12 +1200,44 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
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
@@ -1381,8 +1398,12 @@ static int vc4_hdmi_dev_remove(struct platform_device *pdev)
 	return 0;
 }
 
+struct vc4_hdmi_variant bcm2835_variant = {
+	.init_resources		= vc4_hdmi_init_resources,
+};
+
 static const struct of_device_id vc4_hdmi_dt_match[] = {
-	{ .compatible = "brcm,bcm2835-hdmi" },
+	{ .compatible = "brcm,bcm2835-hdmi", .data = &bcm2835_variant },
 	{}
 };
 
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 88794136d2e4..b00d9c806428 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -21,6 +21,13 @@ to_vc4_hdmi_encoder(struct drm_encoder *encoder)
 	return container_of(encoder, struct vc4_hdmi_encoder, base.base);
 }
 
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
@@ -37,6 +44,7 @@ struct vc4_hdmi_audio {
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
