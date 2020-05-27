Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 253111E49EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6moRq88kCOOhnVtF5UMqQkXrcDizN9F5LTAeNnndck=; b=hFccpzZR31dx/q
	tLxfixiIWghCsjDPKwSSfzJCQ+Y40aYplOnqYtMvL2vGIe3GPRJBl7cnhM3lly/04lvcxaBUCZN+7
	zvcch+EwZbrGtc1Q/u1bfwGCyGXE0DMp0Lref7LFSzzy0bxFrv4515dB5PLxNcOkZR7+24y4DB152
	ZHyzVxUBo81ja6ghoFNVZQ2t5EtvpZmDGp3pPo//kVBsNqTKwKrWo3mSjVRBMVixySPzA40407MlA
	SXbKLbsYoAQVR/XFLuYHgtFT014Nqw6P9sl7nFHTPviOnjNV38mkShR8l0bJc4rg2sokzVm2G6sel
	m5/TtXt8cacj9aTuBK1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyr8-0006Wj-LJ; Wed, 27 May 2020 16:24:38 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKS-000114-Hn; Wed, 27 May 2020 15:50:56 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 741E15820C8;
 Wed, 27 May 2020 11:50:51 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ksCkcoqtG+oCd
 Ubj+unmHTAeCdvETkjzHPBLqbjKV1g=; b=Pbvw0UoRqqDe9p7oC7exVLK4S2A70
 4HTSj+mlhe3bya/ONzIui/ij5tOYpwav4MYrHYSVd8cdt4ZTYcCJY31KJje3SCQk
 /Ptw+zvbnEUzZjStfFnAN9JET6uqqyx88CKjeIKtrIMUX2VzCDywgv/glikygaTd
 0iUk8ga1iAh2vhWEErIdjIKfBP9uh4orWWrgBJT9MkA2PlOppZx5MC66jTmaJ/IA
 cwuWvrG3ywwomxFNPEHrZYytMmJxmPZpNydjZF24li74ECOEwhUR30BZeZF9dqSV
 WbaYc6FG1/5DwWyCFAYA/mMrqXsVBHnw1VzhKTNVvibii70Lm4A2G3QaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ksCkcoqtG+oCdUbj+unmHTAeCdvETkjzHPBLqbjKV1g=; b=2VtiFOrr
 Ze+BfW1y76Tk3Ujwih88enytziNf6jPlf4pRaSexHUYsmzDHtvipb92OKXXNufGT
 TGMHOCIJPZ4ItBNXSwbkS0EaiAOkOQftu9CQvic1/I3hWl4cguW49BrUsM8hmJ+x
 AGquZcd8jR5xCUTwZT4EX+KWWosQeodJcrjctBll8zUDqtREZQHsx5KKe8l+RR+Y
 n9bly0VWL1XePy6HPVMTh5iBbP++vC0gHE91VIR+X83fkP4KfQ6O027aHaFaBl/h
 Oc/48sg8CGd6xh/5Sh8JUjJZdC8gfRCuW+nVay3+CwtvUW3Xwyyx6cZcq8tzGLdu
 XykG72KoEh6ivQ==
X-ME-Sender: <xms:W4zOXihrvOmzd5GxXxlZWfex4VTgJVdPAKkE_PSGhu-eQ93H6n9FOg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepgedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:W4zOXjCsVY6PKCr3qdDBYkvqiGagRMad0c1Vm2ARSPcBODqjpSWe-g>
 <xmx:W4zOXqHIzeZ-U-uXXvCYrNTbTpoGcXOIOoYugZL2k3xuvKG-Q9UnqA>
 <xmx:W4zOXrR-Lv_2Z8DDk0aK36ma2GvL2PrdwxK1sC_2_gwICN0YYivPrg>
 <xmx:W4zOXmyiQsfHG-1cfhOL4FaxiVlEzVPv7BFNO5BKRLMPAQhjkx7J7Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 12A4230614FA;
 Wed, 27 May 2020 11:50:50 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 059/105] drm/vc4: crtc: Add BCM2711 pixelvalves
Date: Wed, 27 May 2020 17:48:29 +0200
Message-Id: <eb489952ba212a84dbe3d369371c0ee75b9a2d3e.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085052_800727_72164D17 
X-CRM114-Status: GOOD (  11.72  )
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

The BCM2711 has 5 pixelvalves, so now that our driver is ready, let's add
support for them.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 84 ++++++++++++++++++++++++++++++++++-
 drivers/gpu/drm/vc4/vc4_regs.h |  6 +++-
 2 files changed, 88 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 9efd7cb25590..a577ed8f929f 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -229,6 +229,13 @@ static u32 vc4_get_fifo_full_level(struct vc4_crtc *vc4_crtc, u32 format)
 	case PV_CONTROL_FORMAT_24:
 	case PV_CONTROL_FORMAT_DSIV_24:
 	default:
+		/*
+		 * For some reason, the pixelvalve4 doesn't work with
+		 * the usual formula and will only work with 32.
+		 */
+		if (vc4_crtc->data->hvs_output == 5)
+			return 32;
+
 		return fifo_len_bytes - 3 * HVS_FIFO_LATENCY_PIX;
 	}
 }
@@ -237,9 +244,14 @@ static u32 vc4_crtc_get_fifo_full_level_bits(struct vc4_crtc *vc4_crtc,
 					     u32 format)
 {
 	u32 level = vc4_get_fifo_full_level(vc4_crtc, format);
+	u32 ret = 0;
 
-	return VC4_SET_FIELD(level & 0x3f,
-			     PV_CONTROL_FIFO_LEVEL);
+	if (level > 0x3f)
+		ret |= VC4_SET_FIELD((level >> 6) & 0x3,
+				     PV5_CONTROL_FIFO_LEVEL_HIGH);
+
+	return ret | VC4_SET_FIELD(level & 0x3f,
+				   PV_CONTROL_FIFO_LEVEL);
 }
 
 /*
@@ -277,6 +289,8 @@ static void vc4_crtc_pixelvalve_reset(struct drm_crtc *crtc)
 
 static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 {
+	struct drm_device *dev = crtc->dev;
+	struct vc4_dev *vc4 = to_vc4_dev(dev);
 	struct drm_encoder *encoder = vc4_get_crtc_encoder(crtc);
 	struct vc4_encoder *vc4_encoder = to_vc4_encoder(encoder);
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
@@ -356,6 +370,10 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 	if (is_dsi)
 		CRTC_WRITE(PV_HACT_ACT, mode->hdisplay * pixel_rep);
 
+	if (vc4->hvs->hvs5)
+		CRTC_WRITE(PV_MUX_CFG,
+			   VC4_SET_FIELD(8, PV_MUX_CFG_RGB_PIXEL_MUX_MODE));
+
 	CRTC_WRITE(PV_CONTROL, PV_CONTROL_FIFO_CLR |
 		   vc4_crtc_get_fifo_full_level_bits(vc4_crtc, format) |
 		   VC4_SET_FIELD(format, PV_CONTROL_FORMAT) |
@@ -904,10 +922,72 @@ static const struct vc4_crtc_data bcm2835_pv2_data = {
 	},
 };
 
+static const struct vc4_crtc_data bcm2711_pv0_data = {
+	.debugfs_name = "crtc0_regs",
+	.hvs_available_channels = BIT(0),
+	.hvs_output = 0,
+	.fifo_depth = 64,
+	.pixels_per_clock = 1,
+	.encoder_types = {
+		[0] = VC4_ENCODER_TYPE_DSI0,
+		[1] = VC4_ENCODER_TYPE_DPI,
+	},
+};
+
+static const struct vc4_crtc_data bcm2711_pv1_data = {
+	.debugfs_name = "crtc1_regs",
+	.hvs_available_channels = BIT(0) | BIT(1) | BIT(2),
+	.hvs_output = 3,
+	.fifo_depth = 64,
+	.pixels_per_clock = 1,
+	.encoder_types = {
+		[0] = VC4_ENCODER_TYPE_DSI1,
+		[1] = VC4_ENCODER_TYPE_SMI,
+	},
+};
+
+static const struct vc4_crtc_data bcm2711_pv2_data = {
+	.debugfs_name = "crtc2_regs",
+	.hvs_available_channels = BIT(0) | BIT(1) | BIT(2),
+	.hvs_output = 4,
+	.fifo_depth = 256,
+	.pixels_per_clock = 2,
+	.encoder_types = {
+		[0] = VC4_ENCODER_TYPE_HDMI0,
+	},
+};
+
+static const struct vc4_crtc_data bcm2711_pv3_data = {
+	.debugfs_name = "crtc3_regs",
+	.hvs_available_channels = BIT(1),
+	.hvs_output = 1,
+	.fifo_depth = 64,
+	.pixels_per_clock = 1,
+	.encoder_types = {
+		[0] = VC4_ENCODER_TYPE_VEC,
+	},
+};
+
+static const struct vc4_crtc_data bcm2711_pv4_data = {
+	.debugfs_name = "crtc4_regs",
+	.hvs_available_channels = BIT(0) | BIT(1) | BIT(2),
+	.hvs_output = 5,
+	.fifo_depth = 64,
+	.pixels_per_clock = 2,
+	.encoder_types = {
+		[0] = VC4_ENCODER_TYPE_HDMI1,
+	},
+};
+
 static const struct of_device_id vc4_crtc_dt_match[] = {
 	{ .compatible = "brcm,bcm2835-pixelvalve0", .data = &bcm2835_pv0_data },
 	{ .compatible = "brcm,bcm2835-pixelvalve1", .data = &bcm2835_pv1_data },
 	{ .compatible = "brcm,bcm2835-pixelvalve2", .data = &bcm2835_pv2_data },
+	{ .compatible = "brcm,bcm2711-pixelvalve0", .data = &bcm2711_pv0_data },
+	{ .compatible = "brcm,bcm2711-pixelvalve1", .data = &bcm2711_pv1_data },
+	{ .compatible = "brcm,bcm2711-pixelvalve2", .data = &bcm2711_pv2_data },
+	{ .compatible = "brcm,bcm2711-pixelvalve3", .data = &bcm2711_pv3_data },
+	{ .compatible = "brcm,bcm2711-pixelvalve4", .data = &bcm2711_pv4_data },
 	{}
 };
 
diff --git a/drivers/gpu/drm/vc4/vc4_regs.h b/drivers/gpu/drm/vc4/vc4_regs.h
index b96ebbb1354b..35279b118d41 100644
--- a/drivers/gpu/drm/vc4/vc4_regs.h
+++ b/drivers/gpu/drm/vc4/vc4_regs.h
@@ -130,6 +130,8 @@
 #define V3D_ERRSTAT  0x00f20
 
 #define PV_CONTROL				0x00
+# define PV5_CONTROL_FIFO_LEVEL_HIGH_MASK	VC4_MASK(26, 25)
+# define PV5_CONTROL_FIFO_LEVEL_HIGH_SHIFT	25
 # define PV_CONTROL_FORMAT_MASK			VC4_MASK(23, 21)
 # define PV_CONTROL_FORMAT_SHIFT		21
 # define PV_CONTROL_FORMAT_24			0
@@ -209,6 +211,10 @@
 
 #define PV_HACT_ACT				0x30
 
+#define PV_MUX_CFG				0x34
+# define PV_MUX_CFG_RGB_PIXEL_MUX_MODE_MASK	VC4_MASK(5, 2)
+# define PV_MUX_CFG_RGB_PIXEL_MUX_MODE_SHIFT	2
+
 #define SCALER_CHANNELS_COUNT			3
 
 #define SCALER_DISPCTRL                         0x00000000
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
