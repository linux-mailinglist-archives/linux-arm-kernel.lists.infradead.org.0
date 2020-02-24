Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B970B16A22D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:26:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TgrIO6yxNsFIPeB8TUj/HcCsnTLKzghaC4Bce6PwrA=; b=KypWNvlFNW5xOv
	CbmDU1V8E87Be4+uXfDP2M65e1C5KbomF8Jctu8SW9UCWRXJvdmKNdbGe2vchoL38kge5jyuOgLg8
	BgKJ5DZ9fPDlGZpDy/+LkYG1oo2+VEqSUszxtAYW5KWzcBOJ7bwO4Xgjecw6np8SV0Z3UZOSrtFth
	7TS4X/cQRWW0ggej01taG8Cn9wfig3gNEZMRkWtRg0pBNa4pU2zwZa99U+Dvyzht+CjTJhw0WWJGQ
	xTklP9nhyH9+pZdF4Ztst18oVuRRytEPk7uHsr0haZIyL5gmVjXoHk+YXZaFz8+lZDmQlS/CavXJE
	4oTE9CaDLw7tfZzzMqww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A0f-0002Sf-Kx; Mon, 24 Feb 2020 09:26:41 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kp-0003AB-JJ; Mon, 24 Feb 2020 09:10:23 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 54D6064A;
 Mon, 24 Feb 2020 04:10:16 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=bhFt34+iCjdly
 GoD1lLG2OFFHfo9f7oDO5zfZpp28I0=; b=F1S9LFxvjDHcFvroaPQ7k6fqg37qR
 YMxpyPdcwNWXGdn2MR/TtYJSPSYh9h+g+qIQJruvFcGYqSfQfGK+l5vl0mVVmmHP
 nvCGxkKUWaW5PFslsGHaYPGUiGU3tpPMtL+/M6TJ3D8MaL8YdF/VmJJ7ozH0FXUN
 pJaGGLCBaRX7AIkEeCEIPPyzH4eRMbN4cQE9f0jForJSeQjImKHyI5iTldUOLjBc
 dnGEHsj4WI+OnH6sqhX7ZCeGQuHcarHS/+rl7kQ15iRr+4q4K6rUOgB1Rfe7X45W
 rdhkCj94EflJDb7GKZivJPa09AdPbp7KoKhnDqvX52NXOzXLJR0L1OQqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=bhFt34+iCjdlyGoD1lLG2OFFHfo9f7oDO5zfZpp28I0=; b=CLaSUUqd
 NdYk+SuOfiDeY3hO2IOJW5wBN7yl1ljGt9D61MS7I7UznDxFWie6dLupGmVcfXQv
 bdY6eJZ8sIrsr1f91GQ6ESu1bg4krVpMhm8AoZbjCdeB01NRWzjQKnlGP3Y/7CgT
 dvy4VTREYX9RSVTmMq/4J0o2sYX4bDw1VoKd+aOpf2DxtoiMKjqnGOG4ivVnVmlQ
 br0EqEHnQO5X/T9rovn8SmFQnkKHVct4BqIJP4IloKi3483MeMu+JFh0OFdtS4a1
 htebbcikJDVuNnLxi/lMQXZFVVapnvyk8Yd3jWQ4VqdK7ePwddULWOKtHO5jeAbA
 O0YUNC2Mzw+EaQ==
X-ME-Sender: <xms:95JTXkVgAVVEY7hQ-Gcg9-Ofc_w21FUIR35cwqMaE13SECbTr_f3kw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgephedvnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:95JTXkZm4cA4Lw2rtEMRSgS6jhCB1ATfMDPMgBaMtZdBDg_qRE2rlw>
 <xmx:95JTXjyptGbJHi5uZv16BGj7Hk3hY3tmBBlprKavhpJRQhyPEyjAig>
 <xmx:95JTXs0z9kjPwszdSqaf4oKcPSjCLPYuSxaG_VKNsBR2RL9nCeDk7g>
 <xmx:95JTXr7O_5YOVEWB9BDpyRTWdyC0k7S1z5BLpzkjMp3qOrmX2hw6X7BviWc>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 94088328005A;
 Mon, 24 Feb 2020 04:10:15 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 60/89] drm/vc4: crtc: Add BCM2711 pixelvalves
Date: Mon, 24 Feb 2020 10:07:02 +0100
Message-Id: <0369f1cccd28e89dd64869e73dab5bbcbaf5e793.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011020_179916_4ACFA528 
X-CRM114-Status: GOOD (  12.05  )
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

The BCM2711 has 5 pixelvalves, so now that our driver is ready, let's add
support for them.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 82 ++++++++++++++++++++++++++++++++++-
 drivers/gpu/drm/vc4/vc4_regs.h |  6 +++-
 2 files changed, 86 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index b10b267f56fe..82ae787fca58 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -273,6 +273,13 @@ static u32 vc4_get_fifo_full_level(struct vc4_crtc *vc4_crtc, u32 format)
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
@@ -281,8 +288,14 @@ static u32 vc4_crtc_get_fifo_full_level_bits(struct vc4_crtc *vc4_crtc,
 					     u32 format)
 {
 	u32 level = vc4_get_fifo_full_level(vc4_crtc, format);
-	return VC4_SET_FIELD(level & 0x3f,
-			     PV_CONTROL_FIFO_LEVEL);
+	u32 ret = 0;
+
+	if (level > 0x3f)
+		ret |= VC4_SET_FIELD((level >> 6) & 0x3,
+				     PV5_CONTROL_FIFO_LEVEL_HIGH);
+
+	return ret | VC4_SET_FIELD(level & 0x3f,
+				   PV_CONTROL_FIFO_LEVEL);
 }
 
 /*
@@ -328,6 +341,9 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 	CRTC_WRITE(PV_CONTROL, PV_CONTROL_FIFO_CLR | PV_CONTROL_EN);
 	CRTC_WRITE(PV_CONTROL, 0);
 
+	CRTC_WRITE(PV_MUX_CFG,
+		   VC4_SET_FIELD(8, PV_MUX_CFG_RGB_PIXEL_MUX_MODE));
+
 	CRTC_WRITE(PV_HORZA,
 		   VC4_SET_FIELD((mode->htotal - mode->hsync_end) * pixel_rep / ppc,
 				 PV_HORZA_HBP) |
@@ -1114,10 +1130,72 @@ static const struct vc4_crtc_data bcm2835_pv2_data = {
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
