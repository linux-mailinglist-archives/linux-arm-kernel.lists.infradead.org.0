Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E8B67A14
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 14:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYbNECS8RwLKv8BTma456tsG5o97skVNRo9DrEq1Zws=; b=P0uMFx9YkvxXv/
	OKUJssDEmf0gR7La5ttnHuk/egXtV4F20UvHYidccZXkqf8m0czV9gFpLMqFkJiMsFtbIfPMfKHsZ
	VnYQMsuB0TxkqjIMIHzZqXQmyMkaLmvSGybHLctw1U1sw0t+Bn9G3kJ7hUyef4NAkTw9LAQ0oSK4d
	biW1khjoavzFkz43w6pH4IsMyKCfgiUpVwO067xGFcVhxEoGgwD1GYNYXsCa+5vYdO76tZmjzxBeV
	51Z5ZblTXlZmDZzA+O5d2SdQ/7vQs0kbTppYeOMNbn+uAD1IiaJuQHBhss29bRow4NBCCiBBlboC1
	wnp4rfx7srPP82j3vHbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmGls-0008Qo-PK; Sat, 13 Jul 2019 12:04:56 +0000
Received: from mailoutvs35.siol.net ([185.57.226.226] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmGl6-0007lk-4f
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 12:04:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 7B3A95214F8;
 Sat, 13 Jul 2019 14:04:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 7ZW_RsVKlxwH; Sat, 13 Jul 2019 14:04:03 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id D2660521512;
 Sat, 13 Jul 2019 14:04:03 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 8286A521504;
 Sat, 13 Jul 2019 14:04:01 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: maxime.ripard@bootlin.com,
	wens@csie.org
Subject: [PATCH 3/3] drm/sun4i: sun8i-csc: Add support for color encoding and
 range
Date: Sat, 13 Jul 2019 14:03:46 +0200
Message-Id: <20190713120346.30349-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190713120346.30349-1-jernej.skrabec@siol.net>
References: <20190713120346.30349-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_050408_492792_282690C2 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.226 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Conversion from YUV to RGB depends on range (limited or full) and
encoding (BT.601 or BT.709). Current code doesn't consider this and
always uses BT.601 encoding and limited range.

Fix this by introducing new CSC matrices, which are selected based on
range and encoding parameters.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/gpu/drm/sun4i/sun8i_csc.c      | 144 ++++++++++++++++++++-----
 drivers/gpu/drm/sun4i/sun8i_csc.h      |   6 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c |   4 +-
 3 files changed, 126 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.c b/drivers/gpu/drm/sun4i/sun8i_csc.c
index e07b7876d89b..70c792d052fe 100644
--- a/drivers/gpu/drm/sun4i/sun8i_csc.c
+++ b/drivers/gpu/drm/sun4i/sun8i_csc.c
@@ -18,16 +18,59 @@ static const u32 ccsc_base[2][2] = {
  * First tree values in each line are multiplication factor and last
  * value is constant, which is added at the end.
  */
-static const u32 yuv2rgb[] = {
-	0x000004A8, 0x00000000, 0x00000662, 0xFFFC845A,
-	0x000004A8, 0xFFFFFE6F, 0xFFFFFCBF, 0x00021DF4,
-	0x000004A8, 0x00000813, 0x00000000, 0xFFFBAC4A,
+
+static const u32 yuv2rgb[2][2][12] = {
+	[DRM_COLOR_YCBCR_LIMITED_RANGE] = {
+		[DRM_COLOR_YCBCR_BT601] = {
+			0x000004A8, 0x00000000, 0x00000662, 0xFFFC8451,
+			0x000004A8, 0xFFFFFE6F, 0xFFFFFCC0, 0x00021E4D,
+			0x000004A8, 0x00000811, 0x00000000, 0xFFFBACA9,
+		},
+		[DRM_COLOR_YCBCR_BT709] = {
+			0x000004A8, 0x00000000, 0x0000072B, 0xFFFC1F99,
+			0x000004A8, 0xFFFFFF26, 0xFFFFFDDF, 0x00013383,
+			0x000004A8, 0x00000873, 0x00000000, 0xFFFB7BEF,
+		}
+	},
+	[DRM_COLOR_YCBCR_FULL_RANGE] = {
+		[DRM_COLOR_YCBCR_BT601] = {
+			0x00000400, 0x00000000, 0x0000059B, 0xFFFD322E,
+			0x00000400, 0xFFFFFEA0, 0xFFFFFD25, 0x00021DD5,
+			0x00000400, 0x00000716, 0x00000000, 0xFFFC74BD,
+		},
+		[DRM_COLOR_YCBCR_BT709] = {
+			0x00000400, 0x00000000, 0x0000064C, 0xFFFCD9B4,
+			0x00000400, 0xFFFFFF41, 0xFFFFFE21, 0x00014F96,
+			0x00000400, 0x0000076C, 0x00000000, 0xFFFC49EF,
+		}
+	},
 };
 
-static const u32 yvu2rgb[] = {
-	0x000004A8, 0x00000662, 0x00000000, 0xFFFC845A,
-	0x000004A8, 0xFFFFFCBF, 0xFFFFFE6F, 0x00021DF4,
-	0x000004A8, 0x00000000, 0x00000813, 0xFFFBAC4A,
+static const u32 yvu2rgb[2][2][12] = {
+	[DRM_COLOR_YCBCR_LIMITED_RANGE] = {
+		[DRM_COLOR_YCBCR_BT601] = {
+			0x000004A8, 0x00000662, 0x00000000, 0xFFFC8451,
+			0x000004A8, 0xFFFFFCC0, 0xFFFFFE6F, 0x00021E4D,
+			0x000004A8, 0x00000000, 0x00000811, 0xFFFBACA9,
+		},
+		[DRM_COLOR_YCBCR_BT709] = {
+			0x000004A8, 0x0000072B, 0x00000000, 0xFFFC1F99,
+			0x000004A8, 0xFFFFFDDF, 0xFFFFFF26, 0x00013383,
+			0x000004A8, 0x00000000, 0x00000873, 0xFFFB7BEF,
+		}
+	},
+	[DRM_COLOR_YCBCR_FULL_RANGE] = {
+		[DRM_COLOR_YCBCR_BT601] = {
+			0x00000400, 0x0000059B, 0x00000000, 0xFFFD322E,
+			0x00000400, 0xFFFFFD25, 0xFFFFFEA0, 0x00021DD5,
+			0x00000400, 0x00000000, 0x00000716, 0xFFFC74BD,
+		},
+		[DRM_COLOR_YCBCR_BT709] = {
+			0x00000400, 0x0000064C, 0x00000000, 0xFFFCD9B4,
+			0x00000400, 0xFFFFFE21, 0xFFFFFF41, 0x00014F96,
+			0x00000400, 0x00000000, 0x0000076C, 0xFFFC49EF,
+		}
+	},
 };
 
 /*
@@ -53,30 +96,74 @@ static const u32 yvu2rgb[] = {
  * c20 c21 c22 [d2 const2]
  */
 
-static const u32 yuv2rgb_de3[] = {
-	0x0002542a, 0x00000000, 0x0003312a, 0xffc00000,
-	0x0002542a, 0xffff376b, 0xfffe5fc3, 0xfe000000,
-	0x0002542a, 0x000408d3, 0x00000000, 0xfe000000,
+static const u32 yuv2rgb_de3[2][2][12] = {
+	[DRM_COLOR_YCBCR_LIMITED_RANGE] = {
+		[DRM_COLOR_YCBCR_BT601] = {
+			0x0002542A, 0x00000000, 0x0003312A, 0xFFC00000,
+			0x0002542A, 0xFFFF376B, 0xFFFE5FC3, 0xFE000000,
+			0x0002542A, 0x000408D2, 0x00000000, 0xFE000000,
+		},
+		[DRM_COLOR_YCBCR_BT709] = {
+			0x0002542A, 0x00000000, 0x000395E2, 0xFFC00000,
+			0x0002542A, 0xFFFF92D2, 0xFFFEEF27, 0xFE000000,
+			0x0002542A, 0x0004398C, 0x00000000, 0xFE000000,
+		}
+	},
+	[DRM_COLOR_YCBCR_FULL_RANGE] = {
+		[DRM_COLOR_YCBCR_BT601] = {
+			0x00020000, 0x00000000, 0x0002CDD2, 0x00000000,
+			0x00020000, 0xFFFF4FCE, 0xFFFE925D, 0xFE000000,
+			0x00020000, 0x00038B43, 0x00000000, 0xFE000000,
+		},
+		[DRM_COLOR_YCBCR_BT709] = {
+			0x00020000, 0x00000000, 0x0003264C, 0x00000000,
+			0x00020000, 0xFFFFA018, 0xFFFF1053, 0xFE000000,
+			0x00020000, 0x0003B611, 0x00000000, 0xFE000000,
+		}
+	},
 };
 
-static const u32 yvu2rgb_de3[] = {
-	0x0002542a, 0x0003312a, 0x00000000, 0xffc00000,
-	0x0002542a, 0xfffe5fc3, 0xffff376b, 0xfe000000,
-	0x0002542a, 0x00000000, 0x000408d3, 0xfe000000,
+static const u32 yvu2rgb_de3[2][2][12] = {
+	[DRM_COLOR_YCBCR_LIMITED_RANGE] = {
+		[DRM_COLOR_YCBCR_BT601] = {
+			0x0002542A, 0x0003312A, 0x00000000, 0xFFC00000,
+			0x0002542A, 0xFFFE5FC3, 0xFFFF376B, 0xFE000000,
+			0x0002542A, 0x00000000, 0x000408D2, 0xFE000000,
+		},
+		[DRM_COLOR_YCBCR_BT709] = {
+			0x0002542A, 0x000395E2, 0x00000000, 0xFFC00000,
+			0x0002542A, 0xFFFEEF27, 0xFFFF92D2, 0xFE000000,
+			0x0002542A, 0x00000000, 0x0004398C, 0xFE000000,
+		}
+	},
+	[DRM_COLOR_YCBCR_FULL_RANGE] = {
+		[DRM_COLOR_YCBCR_BT601] = {
+			0x00020000, 0x0002CDD2, 0x00000000, 0x00000000,
+			0x00020000, 0xFFFE925D, 0xFFFF4FCE, 0xFE000000,
+			0x00020000, 0x00000000, 0x00038B43, 0xFE000000,
+		},
+		[DRM_COLOR_YCBCR_BT709] = {
+			0x00020000, 0x0003264C, 0x00000000, 0x00000000,
+			0x00020000, 0xFFFF1053, 0xFFFFA018, 0xFE000000,
+			0x00020000, 0x00000000, 0x0003B611, 0xFE000000,
+		}
+	},
 };
 
 static void sun8i_csc_set_coefficients(struct regmap *map, u32 base,
-				       enum sun8i_csc_mode mode)
+				       enum sun8i_csc_mode mode,
+				       enum drm_color_encoding encoding,
+				       enum drm_color_range range)
 {
 	const u32 *table;
 	u32 base_reg;
 
 	switch (mode) {
 	case SUN8I_CSC_MODE_YUV2RGB:
-		table = yuv2rgb;
+		table = yuv2rgb[range][encoding];
 		break;
 	case SUN8I_CSC_MODE_YVU2RGB:
-		table = yvu2rgb;
+		table = yvu2rgb[range][encoding];
 		break;
 	default:
 		DRM_WARN("Wrong CSC mode specified.\n");
@@ -88,17 +175,19 @@ static void sun8i_csc_set_coefficients(struct regmap *map, u32 base,
 }
 
 static void sun8i_de3_ccsc_set_coefficients(struct regmap *map, int layer,
-					    enum sun8i_csc_mode mode)
+					    enum sun8i_csc_mode mode,
+					    enum drm_color_encoding encoding,
+					    enum drm_color_range range)
 {
 	const u32 *table;
 	u32 base_reg;
 
 	switch (mode) {
 	case SUN8I_CSC_MODE_YUV2RGB:
-		table = yuv2rgb_de3;
+		table = yuv2rgb_de3[range][encoding];
 		break;
 	case SUN8I_CSC_MODE_YVU2RGB:
-		table = yvu2rgb_de3;
+		table = yvu2rgb_de3[range][encoding];
 		break;
 	default:
 		DRM_WARN("Wrong CSC mode specified.\n");
@@ -137,19 +226,22 @@ static void sun8i_de3_ccsc_enable(struct regmap *map, int layer, bool enable)
 }
 
 void sun8i_csc_set_ccsc_coefficients(struct sun8i_mixer *mixer, int layer,
-				     enum sun8i_csc_mode mode)
+				     enum sun8i_csc_mode mode,
+				     enum drm_color_encoding encoding,
+				     enum drm_color_range range)
 {
 	u32 base;
 
 	if (mixer->cfg->is_de3) {
-		sun8i_de3_ccsc_set_coefficients(mixer->engine.regs,
-						layer, mode);
+		sun8i_de3_ccsc_set_coefficients(mixer->engine.regs, layer,
+						mode, encoding, range);
 		return;
 	}
 
 	base = ccsc_base[mixer->cfg->ccsc][layer];
 
-	sun8i_csc_set_coefficients(mixer->engine.regs, base, mode);
+	sun8i_csc_set_coefficients(mixer->engine.regs, base,
+				   mode, encoding, range);
 }
 
 void sun8i_csc_enable_ccsc(struct sun8i_mixer *mixer, int layer, bool enable)
diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.h b/drivers/gpu/drm/sun4i/sun8i_csc.h
index dce4c444bcd6..f42441b1b14d 100644
--- a/drivers/gpu/drm/sun4i/sun8i_csc.h
+++ b/drivers/gpu/drm/sun4i/sun8i_csc.h
@@ -6,6 +6,8 @@
 #ifndef _SUN8I_CSC_H_
 #define _SUN8I_CSC_H_
 
+#include <drm/drm_color_mgmt.h>
+
 struct sun8i_mixer;
 
 /* VI channel CSC units offsets */
@@ -26,7 +28,9 @@ enum sun8i_csc_mode {
 };
 
 void sun8i_csc_set_ccsc_coefficients(struct sun8i_mixer *mixer, int layer,
-				     enum sun8i_csc_mode mode);
+				     enum sun8i_csc_mode mode,
+				     enum drm_color_encoding encoding,
+				     enum drm_color_range range);
 void sun8i_csc_enable_ccsc(struct sun8i_mixer *mixer, int layer, bool enable);
 
 #endif
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index 240a800217df..011924a75263 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -232,7 +232,9 @@ static int sun8i_vi_layer_update_formats(struct sun8i_mixer *mixer, int channel,
 			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK, val);
 
 	if (fmt_info->csc != SUN8I_CSC_MODE_OFF) {
-		sun8i_csc_set_ccsc_coefficients(mixer, channel, fmt_info->csc);
+		sun8i_csc_set_ccsc_coefficients(mixer, channel, fmt_info->csc,
+						state->color_encoding,
+						state->color_range);
 		sun8i_csc_enable_ccsc(mixer, channel, true);
 	} else {
 		sun8i_csc_enable_ccsc(mixer, channel, false);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
