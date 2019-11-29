Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A5F10D9FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 20:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eeuQYeuTlw4PS7i//mW1BMPclBvj6jn5VAVgl0WklzY=; b=saMYQvziX0HztyKp6U5znkTchM
	nEocOD37tThoXHaLgCXkq75U0G/1qcMxd9x6pTO01TIUrd6EnSVeo3HaIQ/LhGdKY9bqfMX9cLTMI
	Egwig7FophieF/NFTNY4abfjQD4Mb6Z+1PLspppXP6h7GXBvnXjTiPIPICsxNkeU5wVJSAYAWrDJ6
	rEcVJBWf5bcuQdWALjQvrQbvbavhGWMGlNDLVFROD3myftRYWiMgFHEtcouynx55KEPWY1FNVO1XC
	/CRlKz1LcS9/qyjQiJp/CmyfTEr3bkdlyGYOmOFfG7h3BVweUCSO8AAAHehVHBk17KtkR76f9y1em
	gCmKtnLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ialcE-0007QF-9u; Fri, 29 Nov 2019 19:07:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ialav-0006Vp-Rb
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 19:06:27 +0000
Received: by mail-pl1-x644.google.com with SMTP id j12so13199351plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 11:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fdZGEeUOCOwh+tX8/OT2YL+SDadPhoIQm08hQY5lXJA=;
 b=DLyoqFRu3dgnqsh/DNd7rk+3gNqmfCTN678B52BIcIHxdPk8dW0Ri8BJeIulTGzgo5
 Pt7qDTHCAtvjZ4+jheGnLPVjzdEzVD0S2tSzCTSayQoefdlg8VHZPHEiJ74dNttre7YH
 cxcaZapqq7rnMchfs13eqEX3k+IykwZk6Tgb1comLduiImT8ItmpiRpMpVX7vRf14ppR
 F4YpTSqZIdn7rIoqdp4zBeZJDTGa6FGXSLhQhGHr1fQNPSAjASF0AbZL/D0Og3bGEYai
 jvMIEfFfhnjirODlfsHBbS35p/6Dx00v7GNIBHoNVwUpOM0ieqMIXA3JB3oKTPwP7TE6
 5N4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fdZGEeUOCOwh+tX8/OT2YL+SDadPhoIQm08hQY5lXJA=;
 b=E6FeRs4+J7gILRPVbHQhw6N/9c4oECY9MUeJEmJlgC44/wGMojEx5FTGQs5J4u5ZWy
 bJpEU7EVFcIHD5+HZqocY25JdteeI448yhTnTg2y0HQxWNfMFrtidIW6bnLamydVjkMr
 ll/IdnFoCd/t2ktHGf50j3cFrGyHZZJ4pXiJNsFtcoidcJ6Tj3Y8dvE8N5CdbjFI7qTy
 6C6GLWG/pIqrvznMB6bu4CcSo8s819WKyQvvMxL4q3HAIkyiO1eo5bZlk52UA7FpJjYQ
 Xlrbar6SVTBQQGZSE5EJbq10QcImJ2M2HeTteAtcoDMO2OpxI/si3IWxhsIBjnuJiNZX
 pHrA==
X-Gm-Message-State: APjAAAVr6hPa+6fkmNqHOldQvkzSwLpPxeTQkZ6C6HHC2fH0sAlhI5pQ
 vlTSSOAF6LNX8CJnpcVrvIz+
X-Google-Smtp-Source: APXvYqwa2yD9PgxAesmGNDxQ4uHt51wtgQZHPOeScSZhP4oPWUUXfmBV8Y+mzTIvkQKxIEu5czflog==
X-Received: by 2002:a17:902:8a8a:: with SMTP id
 p10mr15855387plo.283.1575054380525; 
 Fri, 29 Nov 2019 11:06:20 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:638d:cc55:d006:f721:cde2:1059])
 by smtp.gmail.com with ESMTPSA id h9sm25159974pgk.84.2019.11.29.11.06.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 11:06:19 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH 5/5] media: i2c: imx290: Add configurable link frequency and
 pixel rate
Date: Sat, 30 Nov 2019 00:35:41 +0530
Message-Id: <20191129190541.30315-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_110621_984178_ABADD1D3 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IMX290 operates with multiple link frequency and pixel rate combinations.
The initial driver used a single setting for both but since we now have
the lane count support in place, let's add configurable link frequency
and pixel rate.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 155 +++++++++++++++++++++----------------
 1 file changed, 89 insertions(+), 66 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index f26c4a0ee0a0..d794ade26609 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -45,8 +45,6 @@
 #define IMX290_HMAX_2_720 0x19C8
 #define IMX290_HMAX_4_720 0x0CE4
 
-#define IMX290_DEFAULT_LINK_FREQ 445500000
-
 static const char * const imx290_supply_name[] = {
 	"vdda",
 	"vddd",
@@ -63,8 +61,6 @@ struct imx290_regval {
 struct imx290_mode {
 	u32 width;
 	u32 height;
-	u32 pixel_rate;
-	u32 link_freq_index;
 
 	const struct imx290_regval *data;
 	u32 data_size;
@@ -281,7 +277,10 @@ static const struct imx290_regval imx290_12bit_settings[] = {
 
 /* supported link frequencies */
 static const s64 imx290_link_freq[] = {
-	IMX290_DEFAULT_LINK_FREQ,
+	891000000, /* 1920x1080 -  2 lane */
+	445500000, /* 1920x1080 -  4 lane */
+	594000000, /* 1280x720  -  2 lane */
+	297000000, /* 1280x720  -  4 lane */
 };
 
 /* Mode configs */
@@ -291,16 +290,12 @@ static const struct imx290_mode imx290_modes[] = {
 		.height = 1080,
 		.data = imx290_1080p_settings,
 		.data_size = ARRAY_SIZE(imx290_1080p_settings),
-		.pixel_rate = 178200000,
-		.link_freq_index = 0,
 	},
 	{
 		.width = 1280,
 		.height = 720,
 		.data = imx290_720p_settings,
 		.data_size = ARRAY_SIZE(imx290_720p_settings),
-		.pixel_rate = 178200000,
-		.link_freq_index = 0,
 	},
 };
 
@@ -509,6 +504,73 @@ static int imx290_get_fmt(struct v4l2_subdev *sd,
 	return 0;
 }
 
+static s64 imx290_get_link_freq_index(struct imx290 *imx290)
+{
+	const struct imx290_mode *cur_mode = imx290->current_mode;
+	u8 index;
+
+	if (cur_mode->width == 1920)
+		index = imx290->nlanes / 4;
+	else
+		index = (imx290->nlanes / 4) + 2;
+
+	return index;
+}
+
+static s64 imx290_get_link_freq(struct imx290 *imx290)
+{
+	u8 index = imx290_get_link_freq_index(imx290);
+
+	return imx290_link_freq[index];
+}
+
+static u64 imx290_calc_pixel_rate(struct imx290 *imx290)
+{
+	s64 link_freq = imx290_get_link_freq(imx290);
+	u8 nlanes = imx290->nlanes;
+
+	/* pixel rate = link_freq * 2 * nr_of_lanes / bits_per_sample */
+	return (link_freq * 2 * nlanes / imx290->bpp);
+}
+
+static int imx290_write_current_format(struct imx290 *imx290,
+				       struct v4l2_mbus_framefmt *format)
+{
+	int ret;
+
+	switch (format->code) {
+	case MEDIA_BUS_FMT_SRGGB10_1X10:
+		ret = imx290_set_register_array(imx290, imx290_10bit_settings,
+						ARRAY_SIZE(
+							imx290_10bit_settings));
+		if (ret < 0) {
+			dev_err(imx290->dev, "Could not set format registers\n");
+			return ret;
+		}
+
+		imx290->bpp = 10;
+
+		break;
+	case MEDIA_BUS_FMT_SRGGB12_1X12:
+		ret = imx290_set_register_array(imx290, imx290_12bit_settings,
+						ARRAY_SIZE(
+							imx290_12bit_settings));
+		if (ret < 0) {
+			dev_err(imx290->dev, "Could not set format registers\n");
+			return ret;
+		}
+
+		imx290->bpp = 12;
+
+		break;
+	default:
+		dev_err(imx290->dev, "Unknown pixel format\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int imx290_set_fmt(struct v4l2_subdev *sd,
 			  struct v4l2_subdev_pad_config *cfg,
 		      struct v4l2_subdev_format *fmt)
@@ -517,6 +579,7 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
 	const struct imx290_mode *mode;
 	struct v4l2_mbus_framefmt *format;
 	unsigned int i;
+	int ret = 0;
 
 	mutex_lock(&imx290->lock);
 
@@ -542,17 +605,27 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
 		format = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
 	} else {
 		format = &imx290->current_format;
-		__v4l2_ctrl_s_ctrl(imx290->link_freq, mode->link_freq_index);
-		__v4l2_ctrl_s_ctrl_int64(imx290->pixel_rate, mode->pixel_rate);
-
 		imx290->current_mode = mode;
+
+		/* Set current frame format */
+		ret = imx290_write_current_format(imx290, &fmt->format);
+		if (ret < 0) {
+			dev_err(imx290->dev, "Could not set frame format\n");
+			goto err_out;
+		}
+
+		__v4l2_ctrl_s_ctrl(imx290->link_freq,
+				   imx290_get_link_freq_index(imx290));
+		__v4l2_ctrl_s_ctrl_int64(imx290->pixel_rate,
+					 imx290_calc_pixel_rate(imx290));
 	}
 
 	*format = fmt->format;
 
+err_out:
 	mutex_unlock(&imx290->lock);
 
-	return 0;
+	return ret;
 }
 
 static int imx290_entity_init_cfg(struct v4l2_subdev *subdev,
@@ -569,44 +642,6 @@ static int imx290_entity_init_cfg(struct v4l2_subdev *subdev,
 	return 0;
 }
 
-static int imx290_write_current_format(struct imx290 *imx290,
-				       struct v4l2_mbus_framefmt *format)
-{
-	int ret;
-
-	switch (format->code) {
-	case MEDIA_BUS_FMT_SRGGB10_1X10:
-		ret = imx290_set_register_array(imx290, imx290_10bit_settings,
-						ARRAY_SIZE(
-							imx290_10bit_settings));
-		if (ret < 0) {
-			dev_err(imx290->dev, "Could not set format registers\n");
-			return ret;
-		}
-
-		imx290->bpp = 10;
-
-		break;
-	case MEDIA_BUS_FMT_SRGGB12_1X12:
-		ret = imx290_set_register_array(imx290, imx290_12bit_settings,
-						ARRAY_SIZE(
-							imx290_12bit_settings));
-		if (ret < 0) {
-			dev_err(imx290->dev, "Could not set format registers\n");
-			return ret;
-		}
-
-		imx290->bpp = 12;
-
-		break;
-	default:
-		dev_err(imx290->dev, "Unknown pixel format\n");
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
 static int imx290_set_hmax(struct imx290 *imx290, u32 val)
 {
 	int ret;
@@ -640,13 +675,6 @@ static int imx290_start_streaming(struct imx290 *imx290)
 		return ret;
 	}
 
-	/* Set current frame format */
-	ret = imx290_write_current_format(imx290, &imx290->current_format);
-	if (ret < 0) {
-		dev_err(imx290->dev, "Could not set frame format\n");
-		return ret;
-	}
-
 	/* Apply default values of current mode */
 	ret = imx290_set_register_array(imx290, imx290->current_mode->data,
 					imx290->current_mode->data_size);
@@ -901,12 +929,6 @@ static int imx290_probe(struct i2c_client *client)
 		goto free_err;
 	}
 
-	if (imx290->ep.link_frequencies[0] != IMX290_DEFAULT_LINK_FREQ) {
-		dev_err(dev, "Unsupported link frequency\n");
-		ret = -EINVAL;
-		goto free_err;
-	}
-
 	/* Only CSI2 is supported for now */
 	if (imx290->ep.bus_type != V4L2_MBUS_CSI2_DPHY) {
 		dev_err(dev, "Unsupported bus type, should be CSI2\n");
@@ -973,14 +995,15 @@ static int imx290_probe(struct i2c_client *client)
 				       &imx290_ctrl_ops,
 				       V4L2_CID_LINK_FREQ,
 				       ARRAY_SIZE(imx290_link_freq) - 1,
-				       0, imx290_link_freq);
+				       (imx290->nlanes / 4),
+				       imx290_link_freq);
 	if (imx290->link_freq)
 		imx290->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;
 
 	imx290->pixel_rate = v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
 					       V4L2_CID_PIXEL_RATE, 1,
 					       INT_MAX, 1,
-					       imx290_modes[0].pixel_rate);
+					       imx290_calc_pixel_rate(imx290));
 
 	v4l2_ctrl_new_std_menu_items(&imx290->ctrls, &imx290_ctrl_ops,
 				     V4L2_CID_TEST_PATTERN,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
