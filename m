Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C837E1B7B17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2iqIS/ctwsYgJg32hD41qGNE8QmyNFT7TcLlwE/b1s=; b=JjgUqq2BbudTdK
	bgVqTJ9pOG568LZiPFoYszTeSgWcIhb1ow/GmD+DUY0esAB+sg83gvgU298LX7Ke59obhQDFDbQvy
	/ZuDCSXXcbR3GdqIKylDpptmoylP7H0AN78XHkIEslviqwr3nZ4oKYrGOqNNkAtvrBoQfPZcpf0wJ
	SGnF5zbjhfMD4ApZ0OQ1BRQ6Y5jA5K96ZXZzFRTymw/cgYN+6VPFGV7+E3gxQjjSk34xIdM5gojbu
	rApW+pTUykCzxjmRMazJJvAifffjNAw+yKZaWAlCUX0K8CmNwFhk5lWvsw43spEGp1p7bToxwDFP6
	5BoCUpxNBGM3PNtnSBUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0qW-0006bG-VT; Fri, 24 Apr 2020 16:06:33 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0OO-0000Zc-Tv; Fri, 24 Apr 2020 15:37:37 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 2A8B91457;
 Fri, 24 Apr 2020 11:37:27 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:37:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=VzsJLtomS+Kre
 +PgP+8zNUnrguJthJDBOQci4Wre8NE=; b=LDvHA7+YeaNgFy6GvU0n4OyqIXzjG
 vMVBMHnwS/O8Q5GbQtUX3Q5BVqH6yJccVDD4xVLQZbOxXlnIO5xsep9RqV530u+S
 WSDD/h0qnp/fKxTZ8p4A4igHTc+Jr4zuWYCnTprk/52P8RmotrCRdPZcuPruTiYp
 M5qSpINw/EXdimKIMIhLgqVfCyRk5xHq7SIFoqc05IdGoaWHfzWcjVYOA+4SRmnq
 ekQPkmcVzBTw8e+7GHq87y2S2fvWVtwFLQXCaFvG10t8Y+1ZAhBIOx20lv8Hf5KY
 YSZWa7xFrQxP2KJZu69GO2Y/SyDh1JDatJJrZ/ZoqdQeyqYtyNZUTEgmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=VzsJLtomS+Kre+PgP+8zNUnrguJthJDBOQci4Wre8NE=; b=iAkx36rc
 OEMycklyB1MZhFNtNeo++ggDsoUfmOiZoiPlDbg6uO5f/R5X1dVL9oxTLXpj0GXb
 h04T0TJEiVl+HQAfcHHsK4V3yJEDuSW3xpY32Xzsn3Wtp72P2SP/3O59s8aw0WwO
 HhKY6sdmblyFGtP0GJ285ZmNF2TcI3BiuCtXo8UtpKj21nIrViwNVVCg1uU8Hrwp
 ZWAEVn4sKKtbCtg6+5YVJrKLjg/xDIr6bjQ5r8P/DZC7zXBkUXTv9vyFyl8PocLZ
 ZQKObSv3ACT9s26WI/v6YsPaG8JpOcSFEPd03rn47xAIbmVrn/m9987m0GWJLz4I
 xPixzq2R2oGlCg==
X-ME-Sender: <xms:tgejXkbzIZ0dzOeVzbbhBkk4ViwY2QE4QDjAZIkNdoZSMLHgtcwrMQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejkeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:tgejXqGFJ6F0kaU6mD4tFqQXfs4OtLxn2szgOjNpuYVVItCF2OYybA>
 <xmx:tgejXrbszlu1SZTjpjPThEkn4IeMCXZrN1NoomO92rIf0WpuitPJ9A>
 <xmx:tgejXkogX7UwbBA9jRfXKkMe0EnHYV-8gjrwfwBjGN0hTR3tBUxDzg>
 <xmx:tgejXpM9TMlx4lWcjbxkQK6gaOD9wW1K6SKLMAcf5Asn7xU3VkjrPFvebxU>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4429E3065D87;
 Fri, 24 Apr 2020 11:37:26 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 89/91] drm/vc4: hdmi: Support the BCM2711 HDMI controllers
Date: Fri, 24 Apr 2020 17:35:10 +0200
Message-Id: <92ccd154d49ea2bb319589404ddf6045f5372f70.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083729_168063_8EACBC11 
X-CRM114-Status: GOOD (  15.05  )
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

Now that the driver is ready for it, let's bring in the HDMI controllers
variants for the BCM2711.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c      | 276 +++++++++++++++++-
 drivers/gpu/drm/vc4/vc4_hdmi.h      |  35 ++-
 drivers/gpu/drm/vc4/vc4_hdmi_phy.c  | 468 +++++++++++++++++++++++++++++-
 drivers/gpu/drm/vc4/vc4_hdmi_regs.h | 201 ++++++++++++-
 4 files changed, 980 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 6baf4d460b80..29287ab0292f 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -42,6 +42,7 @@
 #include <linux/of_platform.h>
 #include <linux/pm_runtime.h>
 #include <linux/rational.h>
+#include <linux/reset.h>
 #include <sound/dmaengine_pcm.h>
 #include <sound/pcm_drm_eld.h>
 #include <sound/pcm_params.h>
@@ -52,6 +53,31 @@
 #include "vc4_hdmi_regs.h"
 #include "vc4_regs.h"
 
+#define VC5_HDMI_HORZA_HFP_SHIFT		16
+#define VC5_HDMI_HORZA_HFP_MASK			VC4_MASK(28, 16)
+#define VC5_HDMI_HORZA_VPOS			BIT(15)
+#define VC5_HDMI_HORZA_HPOS			BIT(14)
+#define VC5_HDMI_HORZA_HAP_SHIFT		0
+#define VC5_HDMI_HORZA_HAP_MASK			VC4_MASK(13, 0)
+
+#define VC5_HDMI_HORZB_HBP_SHIFT		16
+#define VC5_HDMI_HORZB_HBP_MASK			VC4_MASK(26, 16)
+#define VC5_HDMI_HORZB_HSP_SHIFT		0
+#define VC5_HDMI_HORZB_HSP_MASK			VC4_MASK(10, 0)
+
+#define VC5_HDMI_VERTA_VSP_SHIFT		24
+#define VC5_HDMI_VERTA_VSP_MASK			VC4_MASK(28, 24)
+#define VC5_HDMI_VERTA_VFP_SHIFT		16
+#define VC5_HDMI_VERTA_VFP_MASK			VC4_MASK(22, 16)
+#define VC5_HDMI_VERTA_VAL_SHIFT		0
+#define VC5_HDMI_VERTA_VAL_MASK			VC4_MASK(12, 0)
+
+#define VC5_HDMI_VERTB_VSPO_SHIFT		16
+#define VC5_HDMI_VERTB_VSPO_MASK		VC4_MASK(29, 16)
+
+# define VC4_HD_M_SW_RST			BIT(2)
+# define VC4_HD_M_ENABLE			BIT(0)
+
 #define CEC_CLOCK_FREQ 40000
 
 static int vc4_hdmi_debugfs_regs(struct seq_file *m, void *unused)
@@ -75,6 +101,13 @@ static void vc4_hdmi_reset(struct vc4_hdmi *vc4_hdmi)
 	HDMI_WRITE(HDMI_SW_RESET_CONTROL, 0);
 }
 
+static void vc5_hdmi_reset(struct vc4_hdmi *vc4_hdmi)
+{
+	reset_control_reset(vc4_hdmi->reset);
+
+	HDMI_WRITE(HDMI_DVP_CTL, 0);
+}
+
 static enum drm_connector_status
 vc4_hdmi_connector_detect(struct drm_connector *connector, bool force)
 {
@@ -378,6 +411,45 @@ static void vc4_hdmi_csc_setup(struct vc4_hdmi *vc4_hdmi, bool enable)
 	HDMI_WRITE(HDMI_CSC_CTL, csc_ctl);
 }
 
+static void vc5_hdmi_csc_setup(struct vc4_hdmi *vc4_hdmi, bool enable)
+{
+	u32 csc_ctl;
+
+	csc_ctl = 0x07;	/* RGB_CONVERT_MODE = custom matrix, || USE_RGB_TO_YCBCR */
+
+	if (enable) {
+		/* CEA VICs other than #1 requre limited range RGB
+		 * output unless overridden by an AVI infoframe.
+		 * Apply a colorspace conversion to squash 0-255 down
+		 * to 16-235.  The matrix here is:
+		 *
+		 * [ 0.8594 0      0      16]
+		 * [ 0      0.8594 0      16]
+		 * [ 0      0      0.8594 16]
+		 * [ 0      0      0       1]
+		 * Matrix is signed 2p13 fixed point, with signed 9p6 offsets
+		 */
+		HDMI_WRITE(HDMI_CSC_12_11, (0x0000 << 16) | 0x1b80);
+		HDMI_WRITE(HDMI_CSC_14_13, (0x0400 << 16) | 0x0000);
+		HDMI_WRITE(HDMI_CSC_22_21, (0x1b80 << 16) | 0x0000);
+		HDMI_WRITE(HDMI_CSC_24_23, (0x0400 << 16) | 0x0000);
+		HDMI_WRITE(HDMI_CSC_32_31, (0x0000 << 16) | 0x0000);
+		HDMI_WRITE(HDMI_CSC_34_33, (0x0400 << 16) | 0x1b80);
+	} else {
+		/* Still use the matrix for full range, but make it unity.
+		 * Matrix is signed 2p13 fixed point, with signed 9p6 offsets
+		 */
+		HDMI_WRITE(HDMI_CSC_12_11, (0x0000 << 16) | 0x2000);
+		HDMI_WRITE(HDMI_CSC_14_13, (0x0000 << 16) | 0x0000);
+		HDMI_WRITE(HDMI_CSC_22_21, (0x2000 << 16) | 0x0000);
+		HDMI_WRITE(HDMI_CSC_24_23, (0x0000 << 16) | 0x0000);
+		HDMI_WRITE(HDMI_CSC_32_31, (0x0000 << 16) | 0x0000);
+		HDMI_WRITE(HDMI_CSC_34_33, (0x0000 << 16) | 0x2000);
+	}
+
+	HDMI_WRITE(HDMI_CSC_CTL, csc_ctl);
+}
+
 static void vc4_hdmi_set_timings(struct vc4_hdmi *vc4_hdmi,
 				 struct drm_display_mode *mode)
 {
@@ -427,6 +499,58 @@ static void vc4_hdmi_set_timings(struct vc4_hdmi *vc4_hdmi,
 		   (hsync_pos ? 0 : VC4_HD_VID_CTL_HSYNC_LOW));
 }
 
+static void vc5_hdmi_set_timings(struct vc4_hdmi *vc4_hdmi,
+				 struct drm_display_mode *mode)
+{
+	bool hsync_pos = mode->flags & DRM_MODE_FLAG_PHSYNC;
+	bool vsync_pos = mode->flags & DRM_MODE_FLAG_PVSYNC;
+	bool interlaced = mode->flags & DRM_MODE_FLAG_INTERLACE;
+	u32 pixel_rep = (mode->flags & DRM_MODE_FLAG_DBLCLK) ? 2 : 1;
+	u32 verta = (VC4_SET_FIELD(mode->crtc_vsync_end - mode->crtc_vsync_start,
+				   VC5_HDMI_VERTA_VSP) |
+		     VC4_SET_FIELD(mode->crtc_vsync_start - mode->crtc_vdisplay,
+				   VC5_HDMI_VERTA_VFP) |
+		     VC4_SET_FIELD(mode->crtc_vdisplay, VC5_HDMI_VERTA_VAL));
+	u32 vertb = (VC4_SET_FIELD(0, VC5_HDMI_VERTB_VSPO) |
+		     VC4_SET_FIELD(mode->crtc_vtotal - mode->crtc_vsync_end,
+				   VC4_HDMI_VERTB_VBP));
+	u32 vertb_even = (VC4_SET_FIELD(0, VC5_HDMI_VERTB_VSPO) |
+			  VC4_SET_FIELD(mode->crtc_vtotal -
+					mode->crtc_vsync_end -
+					interlaced,
+					VC4_HDMI_VERTB_VBP));
+
+	HDMI_WRITE(HDMI_VEC_INTERFACE_XBAR, 0x354021);
+	HDMI_WRITE(HDMI_HORZA,
+		   (vsync_pos ? VC5_HDMI_HORZA_VPOS : 0) |
+		   (hsync_pos ? VC5_HDMI_HORZA_HPOS : 0) |
+		   VC4_SET_FIELD(mode->hdisplay * pixel_rep,
+				 VC5_HDMI_HORZA_HAP) |
+		   VC4_SET_FIELD((mode->hsync_start -
+				  mode->hdisplay) * pixel_rep,
+				 VC5_HDMI_HORZA_HFP));
+
+	HDMI_WRITE(HDMI_HORZB,
+		   VC4_SET_FIELD((mode->htotal -
+				  mode->hsync_end) * pixel_rep,
+				 VC5_HDMI_HORZB_HBP) |
+		   VC4_SET_FIELD((mode->hsync_end -
+				  mode->hsync_start) * pixel_rep,
+				 VC5_HDMI_HORZB_HSP));
+
+	HDMI_WRITE(HDMI_VERTA0, verta);
+	HDMI_WRITE(HDMI_VERTA1, verta);
+
+	HDMI_WRITE(HDMI_VERTB0, vertb_even);
+	HDMI_WRITE(HDMI_VERTB1, vertb);
+
+	HDMI_WRITE(HDMI_VID_CTL,
+		   (vsync_pos ? 0 : VC4_HD_VID_CTL_VSYNC_LOW) |
+		   (hsync_pos ? 0 : VC4_HD_VID_CTL_HSYNC_LOW));
+
+	HDMI_WRITE(HDMI_CLOCK_STOP, 0);
+}
+
 static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 {
 	struct drm_display_mode *mode = &encoder->crtc->state->adjusted_mode;
@@ -625,6 +749,18 @@ static u32 vc4_hdmi_channel_map(struct vc4_hdmi *vc4_hdmi, u32 channel_mask)
 	return channel_map;
 }
 
+static u32 vc5_hdmi_channel_map(struct vc4_hdmi *vc4_hdmi, u32 channel_mask)
+{
+	int i;
+	u32 channel_map = 0;
+
+	for (i = 0; i < 8; i++) {
+		if (channel_mask & BIT(i))
+			channel_map |= i << (4 * i);
+	}
+	return channel_map;
+}
+
 /* HDMI audio codec callbacks */
 static void vc4_hdmi_audio_set_mai_clock(struct vc4_hdmi *vc4_hdmi)
 {
@@ -1354,6 +1490,98 @@ static int vc4_hdmi_init_resources(struct vc4_hdmi *vc4_hdmi)
 	return 0;
 }
 
+static int vc5_hdmi_init_resources(struct vc4_hdmi *vc4_hdmi)
+{
+	struct platform_device *pdev = vc4_hdmi->pdev;
+	struct device *dev = &pdev->dev;
+	struct resource *res;
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "hdmi");
+	if (!res)
+		return -ENODEV;
+
+	vc4_hdmi->hdmicore_regs = devm_ioremap(dev, res->start,
+					       resource_size(res));
+	if (IS_ERR(vc4_hdmi->hdmicore_regs))
+		return PTR_ERR(vc4_hdmi->hdmicore_regs);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "hd");
+	if (!res)
+		return -ENODEV;
+
+	vc4_hdmi->hd_regs = devm_ioremap(dev, res->start, resource_size(res));
+	if (IS_ERR(vc4_hdmi->hd_regs))
+		return PTR_ERR(vc4_hdmi->hd_regs);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "cec");
+	if (!res)
+		return -ENODEV;
+
+	vc4_hdmi->cec_regs = devm_ioremap(dev, res->start, resource_size(res));
+	if (IS_ERR(vc4_hdmi->cec_regs))
+		return PTR_ERR(vc4_hdmi->cec_regs);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "csc");
+	if (!res)
+		return -ENODEV;
+
+	vc4_hdmi->csc_regs = devm_ioremap(dev, res->start, resource_size(res));
+	if (IS_ERR(vc4_hdmi->csc_regs))
+		return PTR_ERR(vc4_hdmi->csc_regs);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dvp");
+	if (!res)
+		return -ENODEV;
+
+	vc4_hdmi->dvp_regs = devm_ioremap(dev, res->start, resource_size(res));
+	if (IS_ERR(vc4_hdmi->dvp_regs))
+		return PTR_ERR(vc4_hdmi->dvp_regs);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
+	if (!res)
+		return -ENODEV;
+
+	vc4_hdmi->phy_regs = devm_ioremap(dev, res->start, resource_size(res));
+	if (IS_ERR(vc4_hdmi->phy_regs))
+		return PTR_ERR(vc4_hdmi->phy_regs);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "packet");
+	if (!res)
+		return -ENODEV;
+
+	vc4_hdmi->ram_regs = devm_ioremap(dev, res->start, resource_size(res));
+	if (IS_ERR(vc4_hdmi->ram_regs))
+		return PTR_ERR(vc4_hdmi->ram_regs);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "rm");
+	if (!res)
+		return -ENODEV;
+
+	vc4_hdmi->rm_regs = devm_ioremap(dev, res->start, resource_size(res));
+	if (IS_ERR(vc4_hdmi->rm_regs))
+		return PTR_ERR(vc4_hdmi->rm_regs);
+
+	vc4_hdmi->hsm_clock = devm_clk_get(dev, "hdmi");
+	if (IS_ERR(vc4_hdmi->hsm_clock)) {
+		DRM_ERROR("Failed to get HDMI state machine clock\n");
+		return PTR_ERR(vc4_hdmi->hsm_clock);
+	}
+
+	vc4_hdmi->audio_clock = devm_clk_get(dev, "clk-108M");
+	if (IS_ERR(vc4_hdmi->audio_clock)) {
+		DRM_ERROR("Failed to get 108MHz clock\n");
+		return PTR_ERR(vc4_hdmi->audio_clock);
+	}
+
+	vc4_hdmi->reset = devm_reset_control_get(dev, NULL);
+	if (IS_ERR(vc4_hdmi->reset)) {
+		DRM_ERROR("Failed to get HDMI reset line\n");
+		return PTR_ERR(vc4_hdmi->reset);
+	}
+
+	return 0;
+}
+
 static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
@@ -1510,8 +1738,56 @@ static const struct vc4_hdmi_variant bcm2835_variant = {
 	.channel_map		= vc4_hdmi_channel_map,
 };
 
+static const struct vc4_hdmi_variant bcm2711_hdmi0_variant = {
+	.encoder_type		= VC4_ENCODER_TYPE_HDMI0,
+	.debugfs_name		= "hdmi0_regs",
+	.max_pixel_clock	= 297000000,
+	.registers		= vc5_hdmi_hdmi0_fields,
+	.num_registers		= ARRAY_SIZE(vc5_hdmi_hdmi0_fields),
+	.phy_lane_mapping	= {
+		PHY_LANE_0,
+		PHY_LANE_1,
+		PHY_LANE_2,
+		PHY_LANE_CK,
+	},
+
+	.init_resources		= vc5_hdmi_init_resources,
+	.csc_setup		= vc5_hdmi_csc_setup,
+	.reset			= vc5_hdmi_reset,
+	.set_timings		= vc5_hdmi_set_timings,
+	.phy_init		= vc5_hdmi_phy_init,
+	.phy_rng_enable		= vc5_hdmi_phy_rng_enable,
+	.phy_rng_disable	= vc5_hdmi_phy_rng_disable,
+	.channel_map		= vc5_hdmi_channel_map,
+};
+
+static const struct vc4_hdmi_variant bcm2711_hdmi1_variant = {
+	.encoder_type		= VC4_ENCODER_TYPE_HDMI1,
+	.debugfs_name		= "hdmi1_regs",
+	.max_pixel_clock	= 297000000,
+	.registers		= vc5_hdmi_hdmi1_fields,
+	.num_registers		= ARRAY_SIZE(vc5_hdmi_hdmi1_fields),
+	.phy_lane_mapping	= {
+		PHY_LANE_1,
+		PHY_LANE_0,
+		PHY_LANE_CK,
+		PHY_LANE_2,
+	},
+
+	.init_resources		= vc5_hdmi_init_resources,
+	.csc_setup		= vc5_hdmi_csc_setup,
+	.reset			= vc5_hdmi_reset,
+	.set_timings		= vc5_hdmi_set_timings,
+	.phy_init		= vc5_hdmi_phy_init,
+	.phy_rng_enable		= vc5_hdmi_phy_rng_enable,
+	.phy_rng_disable	= vc5_hdmi_phy_rng_disable,
+	.channel_map		= vc5_hdmi_channel_map,
+};
+
 static const struct of_device_id vc4_hdmi_dt_match[] = {
 	{ .compatible = "brcm,bcm2835-hdmi", .data = &bcm2835_variant },
+	{ .compatible = "brcm,bcm2711-hdmi0", .data = &bcm2711_hdmi0_variant },
+	{ .compatible = "brcm,bcm2711-hdmi1", .data = &bcm2711_hdmi1_variant },
 	{}
 };
 
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 30eac891dc74..1649a366e062 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -26,6 +26,13 @@ struct drm_display_mode;
 struct vc4_hdmi;
 struct vc4_hdmi_register;
 
+enum vc4_hdmi_phy_channel {
+	PHY_LANE_0 = 0,
+	PHY_LANE_1,
+	PHY_LANE_2,
+	PHY_LANE_CK,
+};
+
 struct vc4_hdmi_variant {
 	/* Encoder Type for that controller */
 	enum vc4_encoder_type encoder_type;
@@ -45,6 +52,13 @@ struct vc4_hdmi_variant {
 	/* Number of registers on that variant */
 	unsigned int num_registers;
 
+	/* BCM2711 Only.
+	 * The variants don't map the lane in the same order in the
+	 * PHY, so this is an array mapping the HDMI channel (index)
+	 * to the PHY lane (value).
+	 */
+	enum vc4_hdmi_phy_channel phy_lane_mapping[4];
+
 	/* Callback to get the resources (memory region, interrupts,
 	 * clocks, etc) for that variant.
 	 */
@@ -105,6 +119,20 @@ struct vc4_hdmi {
 	struct i2c_adapter *ddc;
 	void __iomem *hdmicore_regs;
 	void __iomem *hd_regs;
+
+	/* VC5 Only */
+	void __iomem *cec_regs;
+	/* VC5 Only */
+	void __iomem *csc_regs;
+	/* VC5 Only */
+	void __iomem *dvp_regs;
+	/* VC5 Only */
+	void __iomem *phy_regs;
+	/* VC5 Only */
+	void __iomem *ram_regs;
+	/* VC5 Only */
+	void __iomem *rm_regs;
+
 	int hpd_gpio;
 	bool hpd_active_low;
 
@@ -117,6 +145,8 @@ struct vc4_hdmi {
 	struct clk *hsm_clock;
 	struct clk *audio_clock;
 
+	struct reset_control *reset;
+
 	struct debugfs_regset32 hdmi_regset;
 	struct debugfs_regset32 hd_regset;
 };
@@ -141,4 +171,9 @@ void vc4_hdmi_phy_disable(struct vc4_hdmi *vc4_hdmi);
 void vc4_hdmi_phy_rng_enable(struct vc4_hdmi *vc4_hdmi);
 void vc4_hdmi_phy_rng_disable(struct vc4_hdmi *vc4_hdmi);
 
+void vc5_hdmi_phy_init(struct vc4_hdmi *vc4_hdmi,
+		       struct drm_display_mode *mode);
+void vc5_hdmi_phy_rng_enable(struct vc4_hdmi *vc4_hdmi);
+void vc5_hdmi_phy_rng_disable(struct vc4_hdmi *vc4_hdmi);
+
 #endif /* _VC4_HDMI_H_ */
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi_phy.c b/drivers/gpu/drm/vc4/vc4_hdmi_phy.c
index 93287e24d7d1..90decf39de53 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi_phy.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi_phy.c
@@ -10,6 +10,123 @@
 #include "vc4_regs.h"
 #include "vc4_hdmi_regs.h"
 
+#define VC4_HDMI_TX_PHY_RESET_CTL_PLL_RESETB	BIT(5)
+#define VC4_HDMI_TX_PHY_RESET_CTL_PLLDIV_RESETB	BIT(4)
+#define VC4_HDMI_TX_PHY_RESET_CTL_TX_CK_RESET	BIT(3)
+#define VC4_HDMI_TX_PHY_RESET_CTL_TX_2_RESET	BIT(2)
+#define VC4_HDMI_TX_PHY_RESET_CTL_TX_1_RESET	BIT(1)
+#define VC4_HDMI_TX_PHY_RESET_CTL_TX_0_RESET	BIT(0)
+
+#define VC4_HDMI_TX_PHY_POWERDOWN_CTL_RNDGEN_PWRDN	BIT(4)
+
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_2_PREEMP_SHIFT	29
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_2_PREEMP_MASK	VC4_MASK(31, 29)
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_2_MAINDRV_SHIFT	24
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_2_MAINDRV_MASK	VC4_MASK(28, 24)
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_1_PREEMP_SHIFT	21
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_1_PREEMP_MASK	VC4_MASK(23, 21)
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_1_MAINDRV_SHIFT	16
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_1_MAINDRV_MASK	VC4_MASK(20, 16)
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_0_PREEMP_SHIFT	13
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_0_PREEMP_MASK	VC4_MASK(15, 13)
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_0_MAINDRV_SHIFT	8
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_0_MAINDRV_MASK	VC4_MASK(12, 8)
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_CK_PREEMP_SHIFT	5
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_CK_PREEMP_MASK	VC4_MASK(7, 5)
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_CK_MAINDRV_SHIFT	0
+#define VC4_HDMI_TX_PHY_CTL_0_PREEMP_CK_MAINDRV_MASK	VC4_MASK(4, 0)
+
+#define VC4_HDMI_TX_PHY_CTL_1_RES_SEL_DATA2_SHIFT	15
+#define VC4_HDMI_TX_PHY_CTL_1_RES_SEL_DATA2_MASK	VC4_MASK(19, 15)
+#define VC4_HDMI_TX_PHY_CTL_1_RES_SEL_DATA1_SHIFT	10
+#define VC4_HDMI_TX_PHY_CTL_1_RES_SEL_DATA1_MASK	VC4_MASK(14, 10)
+#define VC4_HDMI_TX_PHY_CTL_1_RES_SEL_DATA0_SHIFT	5
+#define VC4_HDMI_TX_PHY_CTL_1_RES_SEL_DATA0_MASK	VC4_MASK(9, 5)
+#define VC4_HDMI_TX_PHY_CTL_1_RES_SEL_CK_SHIFT		0
+#define VC4_HDMI_TX_PHY_CTL_1_RES_SEL_CK_MASK		VC4_MASK(4, 0)
+
+#define VC4_HDMI_TX_PHY_CTL_2_VCO_GAIN_SHIFT		16
+#define VC4_HDMI_TX_PHY_CTL_2_VCO_GAIN_MASK		VC4_MASK(19, 16)
+#define VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELDATA2_SHIFT	12
+#define VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELDATA2_MASK	VC4_MASK(15, 12)
+#define VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELDATA1_SHIFT	8
+#define VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELDATA1_MASK	VC4_MASK(11, 8)
+#define VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELDATA0_SHIFT	4
+#define VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELDATA0_MASK	VC4_MASK(7, 4)
+#define VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELCK_SHIFT	0
+#define VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELCK_MASK	VC4_MASK(3, 0)
+
+#define VC4_HDMI_TX_PHY_CTL_3_RP_SHIFT			17
+#define VC4_HDMI_TX_PHY_CTL_3_RP_MASK			VC4_MASK(19, 17)
+#define VC4_HDMI_TX_PHY_CTL_3_RZ_SHIFT			12
+#define VC4_HDMI_TX_PHY_CTL_3_RZ_MASK			VC4_MASK(16, 12)
+#define VC4_HDMI_TX_PHY_CTL_3_CP1_SHIFT			10
+#define VC4_HDMI_TX_PHY_CTL_3_CP1_MASK			VC4_MASK(11, 10)
+#define VC4_HDMI_TX_PHY_CTL_3_CP_SHIFT			8
+#define VC4_HDMI_TX_PHY_CTL_3_CP_MASK			VC4_MASK(9, 8)
+#define VC4_HDMI_TX_PHY_CTL_3_CZ_SHIFT			6
+#define VC4_HDMI_TX_PHY_CTL_3_CZ_MASK			VC4_MASK(7, 6)
+#define VC4_HDMI_TX_PHY_CTL_3_ICP_SHIFT			0
+#define VC4_HDMI_TX_PHY_CTL_3_ICP_MASK			VC4_MASK(5, 0)
+
+#define VC4_HDMI_TX_PHY_PLL_CTL_0_MASH11_MODE		BIT(13)
+#define VC4_HDMI_TX_PHY_PLL_CTL_0_VC_RANGE_EN		BIT(12)
+#define VC4_HDMI_TX_PHY_PLL_CTL_0_EMULATE_VC_LOW	BIT(11)
+#define VC4_HDMI_TX_PHY_PLL_CTL_0_EMULATE_VC_HIGH	BIT(10)
+#define VC4_HDMI_TX_PHY_PLL_CTL_0_VCO_SEL_SHIFT		9
+#define VC4_HDMI_TX_PHY_PLL_CTL_0_VCO_SEL_MASK		VC4_MASK(9, 9)
+#define VC4_HDMI_TX_PHY_PLL_CTL_0_VCO_FB_DIV2		BIT(8)
+#define VC4_HDMI_TX_PHY_PLL_CTL_0_VCO_POST_DIV2		BIT(7)
+#define VC4_HDMI_TX_PHY_PLL_CTL_0_VCO_CONT_EN		BIT(6)
+#define VC4_HDMI_TX_PHY_PLL_CTL_0_ENA_VCO_CLK		BIT(5)
+
+#define VC4_HDMI_TX_PHY_PLL_CTL_1_CPP_SHIFT			16
+#define VC4_HDMI_TX_PHY_PLL_CTL_1_CPP_MASK			VC4_MASK(27, 16)
+#define VC4_HDMI_TX_PHY_PLL_CTL_1_FREQ_DOUBLER_DELAY_SHIFT	14
+#define VC4_HDMI_TX_PHY_PLL_CTL_1_FREQ_DOUBLER_DELAY_MASK	VC4_MASK(15, 14)
+#define VC4_HDMI_TX_PHY_PLL_CTL_1_FREQ_DOUBLER_ENABLE		BIT(13)
+#define VC4_HDMI_TX_PHY_PLL_CTL_1_POST_RST_SEL_SHIFT		11
+#define VC4_HDMI_TX_PHY_PLL_CTL_1_POST_RST_SEL_MASK		VC4_MASK(12, 11)
+
+#define VC4_HDMI_TX_PHY_CLK_DIV_VCO_SHIFT		8
+#define VC4_HDMI_TX_PHY_CLK_DIV_VCO_MASK		VC4_MASK(15, 8)
+
+#define VC4_HDMI_TX_PHY_PLL_CFG_PDIV_SHIFT		0
+#define VC4_HDMI_TX_PHY_PLL_CFG_PDIV_MASK		VC4_MASK(3, 0)
+
+#define VC4_HDMI_TX_PHY_CHANNEL_SWAP_TXCK_OUT_SEL_MASK	VC4_MASK(13, 12)
+#define VC4_HDMI_TX_PHY_CHANNEL_SWAP_TXCK_OUT_SEL_SHIFT	12
+#define VC4_HDMI_TX_PHY_CHANNEL_SWAP_TX2_OUT_SEL_MASK	VC4_MASK(9, 8)
+#define VC4_HDMI_TX_PHY_CHANNEL_SWAP_TX2_OUT_SEL_SHIFT	8
+#define VC4_HDMI_TX_PHY_CHANNEL_SWAP_TX1_OUT_SEL_MASK	VC4_MASK(5, 4)
+#define VC4_HDMI_TX_PHY_CHANNEL_SWAP_TX1_OUT_SEL_SHIFT	4
+#define VC4_HDMI_TX_PHY_CHANNEL_SWAP_TX0_OUT_SEL_MASK	VC4_MASK(1, 0)
+#define VC4_HDMI_TX_PHY_CHANNEL_SWAP_TX0_OUT_SEL_SHIFT	0
+
+#define VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1_MIN_LIMIT_MASK		VC4_MASK(27, 0)
+#define VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1_MIN_LIMIT_SHIFT	0
+
+#define VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2_MAX_LIMIT_MASK		VC4_MASK(27, 0)
+#define VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2_MAX_LIMIT_SHIFT	0
+
+#define VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4_STABLE_THRESHOLD_MASK	VC4_MASK(31, 16)
+#define VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4_STABLE_THRESHOLD_SHIFT	16
+#define VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4_HOLD_THRESHOLD_MASK	VC4_MASK(15, 0)
+#define VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4_HOLD_THRESHOLD_SHIFT	0
+
+#define VC4_HDMI_RM_CONTROL_EN_FREEZE_COUNTERS		BIT(19)
+#define VC4_HDMI_RM_CONTROL_EN_LOAD_INTEGRATOR		BIT(17)
+#define VC4_HDMI_RM_CONTROL_FREE_RUN			BIT(4)
+
+#define VC4_HDMI_RM_OFFSET_ONLY				BIT(31)
+#define VC4_HDMI_RM_OFFSET_OFFSET_SHIFT			0
+#define VC4_HDMI_RM_OFFSET_OFFSET_MASK			VC4_MASK(30, 0)
+
+#define VC4_HDMI_RM_FORMAT_SHIFT_SHIFT			24
+#define VC4_HDMI_RM_FORMAT_SHIFT_MASK			VC4_MASK(25, 24)
+
+#define OSCILLATOR_FREQUENCY	54000000
+
 void vc4_hdmi_phy_init(struct vc4_hdmi *vc4_hdmi, struct drm_display_mode *mode)
 {
 	/* PHY should be in reset, like
@@ -38,3 +155,354 @@ void vc4_hdmi_phy_rng_disable(struct vc4_hdmi *vc4_hdmi)
 		   HDMI_READ(HDMI_TX_PHY_CTL_0) |
 		   VC4_HDMI_TX_PHY_RNG_PWRDN);
 }
+
+static unsigned long long
+phy_get_vco_freq(unsigned long long clock, u8 *vco_sel, u8 *vco_div)
+{
+	unsigned long long vco_freq = clock;
+	unsigned int _vco_div = 0;
+	unsigned int _vco_sel = 0;
+
+	while (vco_freq < 3000000000ULL) {
+		_vco_div++;
+		vco_freq = clock * _vco_div * 10;
+	}
+
+	if (vco_freq > 4500000000ULL)
+		_vco_sel = 1;
+
+	*vco_sel = _vco_sel;
+	*vco_div = _vco_div;
+
+	return vco_freq;
+}
+
+static u8 phy_get_cp_current(unsigned long vco_freq)
+{
+	if (vco_freq < 3700000000ULL)
+		return 0x1c;
+
+	return 0xc8;
+}
+
+static u32 phy_get_rm_offset(unsigned long long vco_freq)
+{
+	unsigned long long fref = OSCILLATOR_FREQUENCY;
+	u64 offset = 0;
+
+	/* RM offset is stored as 9.22 format */
+	offset = vco_freq * 2;
+	offset = offset << 22;
+	do_div(offset, fref);
+	offset >>= 2;
+
+	return offset;
+}
+
+static u8 phy_get_vco_gain(unsigned long long vco_freq)
+{
+	if (vco_freq < 3350000000ULL)
+		return 0xf;
+
+	if (vco_freq < 3700000000ULL)
+		return 0xc;
+
+	if (vco_freq < 4050000000ULL)
+		return 0x6;
+
+	if (vco_freq < 4800000000ULL)
+		return 0x5;
+
+	if (vco_freq < 5200000000ULL)
+		return 0x7;
+
+	return 0x2;
+}
+
+struct phy_lane_settings {
+	struct {
+		u8 preemphasis;
+		u8 main_driver;
+	} amplitude;
+
+	u8 res_sel_data;
+	u8 term_res_sel_data;
+};
+
+struct phy_settings {
+	unsigned long long min_rate;
+	unsigned long long max_rate;
+	struct phy_lane_settings channel[3];
+	struct phy_lane_settings clock;
+};
+
+static const struct phy_settings vc5_hdmi_phy_settings[] = {
+	{
+		0, 50000000,
+		{
+			{{0x0, 0x0A}, 0x12, 0x0},
+			{{0x0, 0x0A}, 0x12, 0x0},
+			{{0x0, 0x0A}, 0x12, 0x0}
+		},
+		{{0x0, 0x0A}, 0x18, 0x0},
+	},
+	{
+		50000001, 75000000,
+		{
+			{{0x0, 0x09}, 0x12, 0x0},
+			{{0x0, 0x09}, 0x12, 0x0},
+			{{0x0, 0x09}, 0x12, 0x0}
+		},
+		{{0x0, 0x0C}, 0x18, 0x3},
+	},
+	{
+		75000001,   165000000,
+		{
+			{{0x0, 0x09}, 0x12, 0x0},
+			{{0x0, 0x09}, 0x12, 0x0},
+			{{0x0, 0x09}, 0x12, 0x0}
+		},
+		{{0x0, 0x0C}, 0x18, 0x3},
+	},
+	{
+		165000001,  250000000,
+		{
+			{{0x0, 0x0F}, 0x12, 0x1},
+			{{0x0, 0x0F}, 0x12, 0x1},
+			{{0x0, 0x0F}, 0x12, 0x1}
+		},
+		{{0x0, 0x0C}, 0x18, 0x3},
+	},
+	{
+		250000001,  340000000,
+		{
+			{{0x2, 0x0D}, 0x12, 0x1},
+			{{0x2, 0x0D}, 0x12, 0x1},
+			{{0x2, 0x0D}, 0x12, 0x1}
+		},
+		{{0x0, 0x0C}, 0x18, 0xF},
+	},
+	{
+		340000001,  450000000,
+		{
+			{{0x0, 0x1B}, 0x12, 0xF},
+			{{0x0, 0x1B}, 0x12, 0xF},
+			{{0x0, 0x1B}, 0x12, 0xF}
+		},
+		{{0x0, 0x0A}, 0x12, 0xF},
+	},
+	{
+		450000001,  600000000,
+		{
+			{{0x0, 0x1C}, 0x12, 0xF},
+			{{0x0, 0x1C}, 0x12, 0xF},
+			{{0x0, 0x1C}, 0x12, 0xF}
+		},
+		{{0x0, 0x0B}, 0x13, 0xF},
+	},
+};
+
+static const struct phy_settings *phy_get_settings(unsigned long long tmds_rate)
+{
+	unsigned int count = ARRAY_SIZE(vc5_hdmi_phy_settings);
+	unsigned int i;
+
+	for (i = 0; i < count; i++) {
+		const struct phy_settings *s = &vc5_hdmi_phy_settings[i];
+
+		if (tmds_rate >= s->min_rate && tmds_rate <= s->max_rate)
+			return s;
+	}
+
+	/*
+	 * If the pixel clock exceeds our max setting, try the max
+	 * setting anyway.
+	 */
+	return &vc5_hdmi_phy_settings[count - 1];
+}
+
+static const struct phy_lane_settings *
+phy_get_channel_settings(enum vc4_hdmi_phy_channel chan,
+			 unsigned long long tmds_rate)
+{
+	const struct phy_settings *settings = phy_get_settings(tmds_rate);
+
+	if (chan == PHY_LANE_CK)
+		return &settings->clock;
+
+	return &settings->channel[chan];
+}
+
+void vc5_hdmi_phy_init(struct vc4_hdmi *vc4_hdmi, struct drm_display_mode *mode)
+{
+	const struct phy_lane_settings *chan0_settings, *chan1_settings, *chan2_settings, *clock_settings;
+	const struct vc4_hdmi_variant *variant = vc4_hdmi->variant;
+	unsigned long long pixel_freq = mode->clock * 1000;
+	unsigned long long vco_freq;
+	unsigned char word_sel;
+	u8 vco_sel, vco_div;
+
+	vco_freq = phy_get_vco_freq(pixel_freq, &vco_sel, &vco_div);
+
+	HDMI_WRITE(HDMI_TX_PHY_POWERDOWN_CTL,
+		   VC4_HDMI_TX_PHY_POWERDOWN_CTL_RNDGEN_PWRDN);
+
+	HDMI_WRITE(HDMI_TX_PHY_RESET_CTL,
+		   HDMI_READ(HDMI_TX_PHY_RESET_CTL) &
+		   ~VC4_HDMI_TX_PHY_RESET_CTL_TX_0_RESET &
+		   ~VC4_HDMI_TX_PHY_RESET_CTL_TX_1_RESET &
+		   ~VC4_HDMI_TX_PHY_RESET_CTL_TX_2_RESET &
+		   ~VC4_HDMI_TX_PHY_RESET_CTL_TX_CK_RESET);
+
+	HDMI_WRITE(HDMI_RM_CONTROL,
+		   HDMI_READ(HDMI_RM_CONTROL) |
+		   VC4_HDMI_RM_CONTROL_EN_FREEZE_COUNTERS |
+		   VC4_HDMI_RM_CONTROL_EN_LOAD_INTEGRATOR |
+		   VC4_HDMI_RM_CONTROL_FREE_RUN);
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1,
+		   (HDMI_READ(HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1) &
+		    ~VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1_MIN_LIMIT_MASK) |
+		   VC4_SET_FIELD(0, VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1_MIN_LIMIT));
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2,
+		   (HDMI_READ(HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2) &
+		    ~VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2_MAX_LIMIT_MASK) |
+		   VC4_SET_FIELD(0, VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2_MAX_LIMIT));
+
+	HDMI_WRITE(HDMI_RM_OFFSET,
+		   VC4_SET_FIELD(phy_get_rm_offset(vco_freq),
+				 VC4_HDMI_RM_OFFSET_OFFSET) |
+		   VC4_HDMI_RM_OFFSET_ONLY);
+
+	HDMI_WRITE(HDMI_TX_PHY_CLK_DIV,
+		   VC4_SET_FIELD(vco_div, VC4_HDMI_TX_PHY_CLK_DIV_VCO));
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4,
+		   VC4_SET_FIELD(0xe147, VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4_HOLD_THRESHOLD) |
+		   VC4_SET_FIELD(0xe14, VC4_HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4_STABLE_THRESHOLD));
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_CTL_0,
+		   VC4_HDMI_TX_PHY_PLL_CTL_0_ENA_VCO_CLK |
+		   VC4_HDMI_TX_PHY_PLL_CTL_0_VCO_CONT_EN |
+		   VC4_HDMI_TX_PHY_PLL_CTL_0_MASH11_MODE |
+		   VC4_SET_FIELD(vco_sel, VC4_HDMI_TX_PHY_PLL_CTL_0_VCO_SEL));
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_CTL_1,
+		   HDMI_READ(HDMI_TX_PHY_PLL_CTL_1) |
+		   VC4_HDMI_TX_PHY_PLL_CTL_1_FREQ_DOUBLER_ENABLE |
+		   VC4_SET_FIELD(3, VC4_HDMI_TX_PHY_PLL_CTL_1_POST_RST_SEL) |
+		   VC4_SET_FIELD(1, VC4_HDMI_TX_PHY_PLL_CTL_1_FREQ_DOUBLER_DELAY) |
+		   VC4_SET_FIELD(0x8a, VC4_HDMI_TX_PHY_PLL_CTL_1_CPP));
+
+	HDMI_WRITE(HDMI_RM_FORMAT,
+		   HDMI_READ(HDMI_RM_FORMAT) |
+		   VC4_SET_FIELD(2, VC4_HDMI_RM_FORMAT_SHIFT));
+
+	HDMI_WRITE(HDMI_TX_PHY_PLL_CFG,
+		   HDMI_READ(HDMI_TX_PHY_PLL_CFG) |
+		   VC4_SET_FIELD(1, VC4_HDMI_TX_PHY_PLL_CFG_PDIV));
+
+	if (pixel_freq >= 340000000)
+		word_sel = 3;
+	else
+		word_sel = 0;
+	HDMI_WRITE(HDMI_TX_PHY_TMDS_CLK_WORD_SEL, word_sel);
+
+	HDMI_WRITE(HDMI_TX_PHY_CTL_3,
+		   VC4_SET_FIELD(phy_get_cp_current(vco_freq),
+				 VC4_HDMI_TX_PHY_CTL_3_ICP) |
+		   VC4_SET_FIELD(1, VC4_HDMI_TX_PHY_CTL_3_CP) |
+		   VC4_SET_FIELD(1, VC4_HDMI_TX_PHY_CTL_3_CP1) |
+		   VC4_SET_FIELD(3, VC4_HDMI_TX_PHY_CTL_3_CZ) |
+		   VC4_SET_FIELD(4, VC4_HDMI_TX_PHY_CTL_3_RP) |
+		   VC4_SET_FIELD(6, VC4_HDMI_TX_PHY_CTL_3_RZ));
+
+	chan0_settings =
+		phy_get_channel_settings(variant->phy_lane_mapping[PHY_LANE_0],
+					 pixel_freq);
+	chan1_settings =
+		phy_get_channel_settings(variant->phy_lane_mapping[PHY_LANE_1],
+					 pixel_freq);
+	chan2_settings =
+		phy_get_channel_settings(variant->phy_lane_mapping[PHY_LANE_2],
+					 pixel_freq);
+	clock_settings =
+		phy_get_channel_settings(variant->phy_lane_mapping[PHY_LANE_CK],
+					 pixel_freq);
+
+	HDMI_WRITE(HDMI_TX_PHY_CTL_0,
+		   VC4_SET_FIELD(chan0_settings->amplitude.preemphasis,
+				 VC4_HDMI_TX_PHY_CTL_0_PREEMP_0_PREEMP) |
+		   VC4_SET_FIELD(chan0_settings->amplitude.main_driver,
+				 VC4_HDMI_TX_PHY_CTL_0_PREEMP_0_MAINDRV) |
+		   VC4_SET_FIELD(chan1_settings->amplitude.preemphasis,
+				 VC4_HDMI_TX_PHY_CTL_0_PREEMP_1_PREEMP) |
+		   VC4_SET_FIELD(chan1_settings->amplitude.main_driver,
+				 VC4_HDMI_TX_PHY_CTL_0_PREEMP_1_MAINDRV) |
+		   VC4_SET_FIELD(chan2_settings->amplitude.preemphasis,
+				 VC4_HDMI_TX_PHY_CTL_0_PREEMP_2_PREEMP) |
+		   VC4_SET_FIELD(chan2_settings->amplitude.main_driver,
+				 VC4_HDMI_TX_PHY_CTL_0_PREEMP_2_MAINDRV) |
+		   VC4_SET_FIELD(clock_settings->amplitude.preemphasis,
+				 VC4_HDMI_TX_PHY_CTL_0_PREEMP_CK_PREEMP) |
+		   VC4_SET_FIELD(clock_settings->amplitude.main_driver,
+				 VC4_HDMI_TX_PHY_CTL_0_PREEMP_CK_MAINDRV));
+
+	HDMI_WRITE(HDMI_TX_PHY_CTL_1,
+		   HDMI_READ(HDMI_TX_PHY_CTL_1) |
+		   VC4_SET_FIELD(chan0_settings->res_sel_data,
+				 VC4_HDMI_TX_PHY_CTL_1_RES_SEL_DATA0) |
+		   VC4_SET_FIELD(chan1_settings->res_sel_data,
+				 VC4_HDMI_TX_PHY_CTL_1_RES_SEL_DATA1) |
+		   VC4_SET_FIELD(chan2_settings->res_sel_data,
+				 VC4_HDMI_TX_PHY_CTL_1_RES_SEL_DATA2) |
+		   VC4_SET_FIELD(clock_settings->res_sel_data,
+				 VC4_HDMI_TX_PHY_CTL_1_RES_SEL_CK));
+
+	HDMI_WRITE(HDMI_TX_PHY_CTL_2,
+		   VC4_SET_FIELD(chan0_settings->term_res_sel_data,
+				 VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELDATA0) |
+		   VC4_SET_FIELD(chan1_settings->term_res_sel_data,
+				 VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELDATA1) |
+		   VC4_SET_FIELD(chan2_settings->term_res_sel_data,
+				 VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELDATA2) |
+		   VC4_SET_FIELD(clock_settings->term_res_sel_data,
+				 VC4_HDMI_TX_PHY_CTL_2_TERM_RES_SELCK) |
+		   VC4_SET_FIELD(phy_get_vco_gain(vco_freq),
+				 VC4_HDMI_TX_PHY_CTL_2_VCO_GAIN));
+
+	HDMI_WRITE(HDMI_TX_PHY_CHANNEL_SWAP,
+		   VC4_SET_FIELD(variant->phy_lane_mapping[PHY_LANE_0],
+				 VC4_HDMI_TX_PHY_CHANNEL_SWAP_TX0_OUT_SEL) |
+		   VC4_SET_FIELD(variant->phy_lane_mapping[PHY_LANE_1],
+				 VC4_HDMI_TX_PHY_CHANNEL_SWAP_TX1_OUT_SEL) |
+		   VC4_SET_FIELD(variant->phy_lane_mapping[PHY_LANE_2],
+				 VC4_HDMI_TX_PHY_CHANNEL_SWAP_TX2_OUT_SEL) |
+		   VC4_SET_FIELD(variant->phy_lane_mapping[PHY_LANE_CK],
+				 VC4_HDMI_TX_PHY_CHANNEL_SWAP_TXCK_OUT_SEL));
+
+	HDMI_WRITE(HDMI_TX_PHY_RESET_CTL,
+		   HDMI_READ(HDMI_TX_PHY_RESET_CTL) &
+		   ~(VC4_HDMI_TX_PHY_RESET_CTL_PLL_RESETB |
+		     VC4_HDMI_TX_PHY_RESET_CTL_PLLDIV_RESETB));
+
+	HDMI_WRITE(HDMI_TX_PHY_RESET_CTL,
+		   HDMI_READ(HDMI_TX_PHY_RESET_CTL) |
+		   VC4_HDMI_TX_PHY_RESET_CTL_PLL_RESETB |
+		   VC4_HDMI_TX_PHY_RESET_CTL_PLLDIV_RESETB);
+}
+
+void vc5_hdmi_phy_rng_enable(struct vc4_hdmi *vc4_hdmi)
+{
+	HDMI_WRITE(HDMI_TX_PHY_POWERDOWN_CTL,
+		   HDMI_READ(HDMI_TX_PHY_POWERDOWN_CTL) &
+		   ~VC4_HDMI_TX_PHY_POWERDOWN_CTL_RNDGEN_PWRDN);
+}
+
+void vc5_hdmi_phy_rng_disable(struct vc4_hdmi *vc4_hdmi)
+{
+	HDMI_WRITE(HDMI_TX_PHY_POWERDOWN_CTL,
+		   HDMI_READ(HDMI_TX_PHY_POWERDOWN_CTL) |
+		   VC4_HDMI_TX_PHY_POWERDOWN_CTL_RNDGEN_PWRDN);
+}
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi_regs.h b/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
index 5f78da6e25c7..ea948ffaa69b 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
@@ -18,6 +18,12 @@ enum vc4_hdmi_regs {
 	VC4_INVALID = 0,
 	VC4_HDMI,
 	VC4_HD,
+	VC5_CEC,
+	VC5_CSC,
+	VC5_DVP,
+	VC5_PHY,
+	VC5_RAM,
+	VC5_RM,
 };
 
 enum vc4_hdmi_field {
@@ -45,6 +51,7 @@ enum vc4_hdmi_field {
 	HDMI_CEC_TX_DATA_2,
 	HDMI_CEC_TX_DATA_3,
 	HDMI_CEC_TX_DATA_4,
+	HDMI_CLOCK_STOP,
 	HDMI_CORE_REV,
 	HDMI_CRP_CFG,
 	HDMI_CSC_12_11,
@@ -61,6 +68,7 @@ enum vc4_hdmi_field {
 	 */
 	HDMI_CTS_0,
 	HDMI_CTS_1,
+	HDMI_DVP_CTL,
 	HDMI_FIFO_CTL,
 	HDMI_FRAME_COUNT,
 	HDMI_HORZA,
@@ -93,10 +101,27 @@ enum vc4_hdmi_field {
 	HDMI_RAM_PACKET_CONFIG,
 	HDMI_RAM_PACKET_START,
 	HDMI_RAM_PACKET_STATUS,
+	HDMI_RM_CONTROL,
+	HDMI_RM_FORMAT,
+	HDMI_RM_OFFSET,
 	HDMI_SCHEDULER_CONTROL,
 	HDMI_SW_RESET_CONTROL,
+	HDMI_TX_PHY_CHANNEL_SWAP,
+	HDMI_TX_PHY_CLK_DIV,
 	HDMI_TX_PHY_CTL_0,
+	HDMI_TX_PHY_CTL_1,
+	HDMI_TX_PHY_CTL_2,
+	HDMI_TX_PHY_CTL_3,
+	HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1,
+	HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2,
+	HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4,
+	HDMI_TX_PHY_PLL_CFG,
+	HDMI_TX_PHY_PLL_CTL_0,
+	HDMI_TX_PHY_PLL_CTL_1,
+	HDMI_TX_PHY_POWERDOWN_CTL,
 	HDMI_TX_PHY_RESET_CTL,
+	HDMI_TX_PHY_TMDS_CLK_WORD_SEL,
+	HDMI_VEC_INTERFACE_XBAR,
 	HDMI_VERTA0,
 	HDMI_VERTA1,
 	HDMI_VERTB0,
@@ -119,6 +144,12 @@ struct vc4_hdmi_register {
 
 #define VC4_HD_REG(reg, offset)		_VC4_REG(VC4_HD, reg, offset)
 #define VC4_HDMI_REG(reg, offset)	_VC4_REG(VC4_HDMI, reg, offset)
+#define VC5_CEC_REG(reg, offset)	_VC4_REG(VC5_CEC, reg, offset)
+#define VC5_CSC_REG(reg, offset)	_VC4_REG(VC5_CSC, reg, offset)
+#define VC5_DVP_REG(reg, offset)	_VC4_REG(VC5_DVP, reg, offset)
+#define VC5_PHY_REG(reg, offset)	_VC4_REG(VC5_PHY, reg, offset)
+#define VC5_RAM_REG(reg, offset)	_VC4_REG(VC5_RAM, reg, offset)
+#define VC5_RM_REG(reg, offset)		_VC4_REG(VC5_RM, reg, offset)
 
 static const struct vc4_hdmi_register vc4_hdmi_fields[] = {
 	VC4_HD_REG(HDMI_M_CTL, 0x000c),
@@ -181,6 +212,158 @@ static const struct vc4_hdmi_register vc4_hdmi_fields[] = {
 	VC4_HDMI_REG(HDMI_RAM_PACKET_START, 0x0400),
 };
 
+static const struct vc4_hdmi_register vc5_hdmi_hdmi0_fields[] = {
+	VC4_HD_REG(HDMI_DVP_CTL, 0x0000),
+	VC4_HD_REG(HDMI_MAI_CTL, 0x0010),
+	VC4_HD_REG(HDMI_MAI_THR, 0x0014),
+	VC4_HD_REG(HDMI_MAI_FMT, 0x0018),
+	VC4_HD_REG(HDMI_MAI_DATA, 0x001c),
+	VC4_HD_REG(HDMI_MAI_SMP, 0x0020),
+	VC4_HD_REG(HDMI_VID_CTL, 0x0044),
+	VC4_HD_REG(HDMI_FRAME_COUNT, 0x0060),
+
+	VC4_HDMI_REG(HDMI_FIFO_CTL, 0x074),
+	VC4_HDMI_REG(HDMI_AUDIO_PACKET_CONFIG, 0x0b8),
+	VC4_HDMI_REG(HDMI_RAM_PACKET_CONFIG, 0x0bc),
+	VC4_HDMI_REG(HDMI_RAM_PACKET_STATUS, 0x0c4),
+	VC4_HDMI_REG(HDMI_CRP_CFG, 0x0c8),
+	VC4_HDMI_REG(HDMI_CTS_0, 0x0cc),
+	VC4_HDMI_REG(HDMI_CTS_1, 0x0d0),
+	VC4_HDMI_REG(HDMI_SCHEDULER_CONTROL, 0x0e0),
+	VC4_HDMI_REG(HDMI_HORZA, 0x0e4),
+	VC4_HDMI_REG(HDMI_HORZB, 0x0e8),
+	VC4_HDMI_REG(HDMI_VERTA0, 0x0ec),
+	VC4_HDMI_REG(HDMI_VERTB0, 0x0f0),
+	VC4_HDMI_REG(HDMI_VERTA1, 0x0f4),
+	VC4_HDMI_REG(HDMI_VERTB1, 0x0f8),
+	VC4_HDMI_REG(HDMI_MAI_CHANNEL_MAP, 0x09c),
+	VC4_HDMI_REG(HDMI_MAI_CONFIG, 0x0a0),
+	VC4_HDMI_REG(HDMI_HOTPLUG, 0x1a8),
+
+	VC5_DVP_REG(HDMI_CLOCK_STOP, 0x0bc),
+	VC5_DVP_REG(HDMI_VEC_INTERFACE_XBAR, 0x0f0),
+
+	VC5_PHY_REG(HDMI_TX_PHY_RESET_CTL, 0x000),
+	VC5_PHY_REG(HDMI_TX_PHY_POWERDOWN_CTL, 0x004),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_0, 0x008),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_1, 0x00c),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_2, 0x010),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_3, 0x014),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CTL_0, 0x01c),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CTL_1, 0x020),
+	VC5_PHY_REG(HDMI_TX_PHY_CLK_DIV, 0x028),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CFG, 0x034),
+	VC5_PHY_REG(HDMI_TX_PHY_TMDS_CLK_WORD_SEL, 0x044),
+	VC5_PHY_REG(HDMI_TX_PHY_CHANNEL_SWAP, 0x04c),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1, 0x050),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2, 0x054),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4, 0x05c),
+
+	VC5_RM_REG(HDMI_RM_CONTROL, 0x000),
+	VC5_RM_REG(HDMI_RM_OFFSET, 0x018),
+	VC5_RM_REG(HDMI_RM_FORMAT, 0x01c),
+
+	VC5_RAM_REG(HDMI_RAM_PACKET_START, 0x000),
+
+	VC5_CEC_REG(HDMI_CEC_CNTRL_1, 0x010),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_2, 0x014),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_3, 0x018),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_4, 0x01c),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_5, 0x020),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_1, 0x028),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_2, 0x02c),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_3, 0x030),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_4, 0x034),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_1, 0x038),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_2, 0x03c),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_3, 0x040),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_4, 0x044),
+
+	VC5_CSC_REG(HDMI_CSC_CTL, 0x000),
+	VC5_CSC_REG(HDMI_CSC_12_11, 0x004),
+	VC5_CSC_REG(HDMI_CSC_14_13, 0x008),
+	VC5_CSC_REG(HDMI_CSC_22_21, 0x00c),
+	VC5_CSC_REG(HDMI_CSC_24_23, 0x010),
+	VC5_CSC_REG(HDMI_CSC_32_31, 0x014),
+	VC5_CSC_REG(HDMI_CSC_34_33, 0x018),
+};
+
+static const struct vc4_hdmi_register vc5_hdmi_hdmi1_fields[] = {
+	VC4_HD_REG(HDMI_DVP_CTL, 0x0000),
+	VC4_HD_REG(HDMI_MAI_CTL, 0x0030),
+	VC4_HD_REG(HDMI_MAI_THR, 0x0034),
+	VC4_HD_REG(HDMI_MAI_FMT, 0x0038),
+	VC4_HD_REG(HDMI_MAI_DATA, 0x003c),
+	VC4_HD_REG(HDMI_MAI_SMP, 0x0040),
+	VC4_HD_REG(HDMI_VID_CTL, 0x0048),
+	VC4_HD_REG(HDMI_FRAME_COUNT, 0x0064),
+
+	VC4_HDMI_REG(HDMI_FIFO_CTL, 0x074),
+	VC4_HDMI_REG(HDMI_AUDIO_PACKET_CONFIG, 0x0b8),
+	VC4_HDMI_REG(HDMI_RAM_PACKET_CONFIG, 0x0bc),
+	VC4_HDMI_REG(HDMI_RAM_PACKET_STATUS, 0x0c4),
+	VC4_HDMI_REG(HDMI_CRP_CFG, 0x0c8),
+	VC4_HDMI_REG(HDMI_CTS_0, 0x0cc),
+	VC4_HDMI_REG(HDMI_CTS_1, 0x0d0),
+	VC4_HDMI_REG(HDMI_SCHEDULER_CONTROL, 0x0e0),
+	VC4_HDMI_REG(HDMI_HORZA, 0x0e4),
+	VC4_HDMI_REG(HDMI_HORZB, 0x0e8),
+	VC4_HDMI_REG(HDMI_VERTA0, 0x0ec),
+	VC4_HDMI_REG(HDMI_VERTB0, 0x0f0),
+	VC4_HDMI_REG(HDMI_VERTA1, 0x0f4),
+	VC4_HDMI_REG(HDMI_VERTB1, 0x0f8),
+	VC4_HDMI_REG(HDMI_MAI_CHANNEL_MAP, 0x09c),
+	VC4_HDMI_REG(HDMI_MAI_CONFIG, 0x0a0),
+	VC4_HDMI_REG(HDMI_HOTPLUG, 0x1a8),
+
+	VC5_DVP_REG(HDMI_CLOCK_STOP, 0x0bc),
+	VC5_DVP_REG(HDMI_VEC_INTERFACE_XBAR, 0x0f0),
+
+	VC5_PHY_REG(HDMI_TX_PHY_RESET_CTL, 0x000),
+	VC5_PHY_REG(HDMI_TX_PHY_POWERDOWN_CTL, 0x004),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_0, 0x008),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_1, 0x00c),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_2, 0x010),
+	VC5_PHY_REG(HDMI_TX_PHY_CTL_3, 0x014),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CTL_0, 0x01c),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CTL_1, 0x020),
+	VC5_PHY_REG(HDMI_TX_PHY_CLK_DIV, 0x028),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CFG, 0x034),
+	VC5_PHY_REG(HDMI_TX_PHY_CHANNEL_SWAP, 0x04c),
+	VC5_PHY_REG(HDMI_TX_PHY_TMDS_CLK_WORD_SEL, 0x044),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1, 0x050),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2, 0x054),
+	VC5_PHY_REG(HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4, 0x05c),
+
+	VC5_RM_REG(HDMI_RM_CONTROL, 0x000),
+	VC5_RM_REG(HDMI_RM_OFFSET, 0x018),
+	VC5_RM_REG(HDMI_RM_FORMAT, 0x01c),
+
+	VC5_RAM_REG(HDMI_RAM_PACKET_START, 0x000),
+
+	VC5_CEC_REG(HDMI_CEC_CNTRL_1, 0x010),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_2, 0x014),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_3, 0x018),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_4, 0x01c),
+	VC5_CEC_REG(HDMI_CEC_CNTRL_5, 0x020),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_1, 0x028),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_2, 0x02c),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_3, 0x030),
+	VC5_CEC_REG(HDMI_CEC_TX_DATA_4, 0x034),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_1, 0x038),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_2, 0x03c),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_3, 0x040),
+	VC5_CEC_REG(HDMI_CEC_RX_DATA_4, 0x044),
+
+	VC5_CSC_REG(HDMI_CSC_CTL, 0x000),
+	VC5_CSC_REG(HDMI_CSC_12_11, 0x004),
+	VC5_CSC_REG(HDMI_CSC_14_13, 0x008),
+	VC5_CSC_REG(HDMI_CSC_22_21, 0x00c),
+	VC5_CSC_REG(HDMI_CSC_24_23, 0x010),
+	VC5_CSC_REG(HDMI_CSC_32_31, 0x014),
+	VC5_CSC_REG(HDMI_CSC_34_33, 0x018),
+};
+
 static inline
 void __iomem *__vc4_hdmi_get_field_base(struct vc4_hdmi *hdmi,
 					enum vc4_hdmi_regs reg)
@@ -192,6 +375,24 @@ void __iomem *__vc4_hdmi_get_field_base(struct vc4_hdmi *hdmi,
 	case VC4_HDMI:
 		return hdmi->hdmicore_regs;
 
+	case VC5_CSC:
+		return hdmi->csc_regs;
+
+	case VC5_CEC:
+		return hdmi->cec_regs;
+
+	case VC5_DVP:
+		return hdmi->dvp_regs;
+
+	case VC5_PHY:
+		return hdmi->phy_regs;
+
+	case VC5_RAM:
+		return hdmi->ram_regs;
+
+	case VC5_RM:
+		return hdmi->rm_regs;
+
 	default:
 		return NULL;
 	}
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
