Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6121B7AE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSsv341TGtb+rDGk6soeFT819NOS2jb3XvdRbzXxSTE=; b=m3QXDnYdTL/aVF
	gpQ26YRPf27mngwjzB66sg1G/JND+mAGLklk/FcAhiwC9bH1Yw3ziM8vwXvpQqiHzgfAfyLbf2xHW
	tmL/7bz2Ej2ucfsp16vLc+g0xdwrPqk/NaVYMfaUyAxGBAV/IurtHtoZ7go3zo5M3y2w6gT8WGEbE
	MycFy45BtRPUDP4a8lQnBLh1kb8HNP5/3YjhdZDdHH4Qa6gTdfDkYAcfUYLsAcOBr2flk4cQat1Xf
	W/ivObXdIPgVBlhJU2Vp0TuwlOE8/8MdYAhLD40DqvEMrQX7wBRRPNH6NwHHW5IcbBS6R9T5pD7qw
	w8vRS7I4z8sApeXtIFWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0i9-0002Zl-Uc; Fri, 24 Apr 2020 15:57:53 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Nk-0008Tv-BV; Fri, 24 Apr 2020 15:36:51 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id A48AA1435;
 Fri, 24 Apr 2020 11:36:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=SIMuFGVg56lCs
 LzWn+VUgTWZ4DXI1HPB+cAZv29Mcoo=; b=DwEUBnX4VKk0DXbfzvyEXbwcT6GLl
 06xu8d1KxvaYwZxcbvkHWY+1RP3EMoAa4APaVz7kUzxO+iQKrbNWzTjS6yINSlVC
 bvaEuHUTUteJbBLlDBhZx+kK6PZKyMrzYDL3C2M9itRUsWDyPjEuRXXc9OF5hMsQ
 FbOy4zhwZQ3h4PR0jVYff8X5fZVGqm979aAfkS1Dk+QHrwZtCWdF9OiEPQUo8zcn
 T9xT1BLJ72opYZS90ZykWu94fYPhmxOOjt9kJ66Pf+RqAUSpxKj77C7G3nK6z3OQ
 +qpwEPZSpFaByp4w40v+60fIz1XSKp2+Oyw6kEOc8JKmHvJf6oEKHlRDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=SIMuFGVg56lCsLzWn+VUgTWZ4DXI1HPB+cAZv29Mcoo=; b=AC3vF+HX
 6P149qCvrT24CLLDUJYQAdtfNXKll0NY5nqdISay9GbmoVtfXuFb7fGcF4SVr3rB
 wHlo87BvIrN/ga+jeeTDdFc9PWJBfIjZuixLNFZCVLDSvLGRZgddTH2MMpA6p8My
 VZ3czPSu5SYtH1p+OEcdR2djKYyAWQA0CTrjy4Tyn432WNZ2nakypK8pY7R9Rba9
 GN1e4HE/MSe01KzDW3r+BWiIOG0Y/Hv8SRc5VD8u+q6ZUqIPkgRDO+oWw2lYFHmJ
 V+efcrI5DlHrWr020U2WeP1Cly+zt7oxa1jCz50UuPISiWSDUcVjqVtDsAoMW06z
 It3MIAM99F3ivA==
X-ME-Sender: <xms:jgejXj0fgx0EEBJirUfNIEZSuZgT4rRLK3DNoU1WHau8OqpFmeYhbw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeehheenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:jgejXriB7cBTT2gwj0Cr-xR3jU2gkirlj7VrNGMuk8RCqno4yK9WrA>
 <xmx:jgejXqjh-GWD2PnghScUPqK4dXTrZVXJd0Ap9fe5OU5oQzZpqhN5sg>
 <xmx:jgejXrNhn7TaB6UYA-19bBbwyl7IzxmKoBEHy7upfLfrt-jJMC4BNA>
 <xmx:jgejXqK1HHoG21uxx4eVbnxnegLfUQnaUiQtnVdqMfByROgqzFQO36LzQJo>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E18403280068;
 Fri, 24 Apr 2020 11:36:45 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 60/91] drm/vc4: crtc: Add BCM2711 pixelvalves
Date: Fri, 24 Apr 2020 17:34:41 +0200
Message-Id: <99a3fa9330b3c5d2482078de035c27d5f5d60d95.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083648_772201_2C855F8D 
X-CRM114-Status: GOOD (  10.95  )
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

The BCM2711 has 5 pixelvalves, so now that our driver is ready, let's add
support for them.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 81 ++++++++++++++++++++++++++++++++++-
 drivers/gpu/drm/vc4/vc4_regs.h |  6 +++-
 2 files changed, 85 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 47e411cbf5dc..20c038519751 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -274,6 +274,13 @@ static u32 vc4_get_fifo_full_level(struct vc4_crtc *vc4_crtc, u32 format)
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
@@ -282,9 +289,14 @@ static u32 vc4_crtc_get_fifo_full_level_bits(struct vc4_crtc *vc4_crtc,
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
@@ -330,6 +342,9 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 	CRTC_WRITE(PV_CONTROL, PV_CONTROL_FIFO_CLR | PV_CONTROL_EN);
 	CRTC_WRITE(PV_CONTROL, 0);
 
+	CRTC_WRITE(PV_MUX_CFG,
+		   VC4_SET_FIELD(8, PV_MUX_CFG_RGB_PIXEL_MUX_MODE));
+
 	CRTC_WRITE(PV_HORZA,
 		   VC4_SET_FIELD((mode->htotal - mode->hsync_end) * pixel_rep / ppc,
 				 PV_HORZA_HBP) |
@@ -1118,10 +1133,72 @@ static const struct vc4_crtc_data bcm2835_pv2_data = {
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
