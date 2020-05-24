Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AFE1E028E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xls/WOz+CagToLBfQ2lz1MLjUBWT6ULy6XK6z1fzP04=; b=ndxNNAfASUWNwrqJOoLkSy5UAT
	38bUvomo6xbyBIUrSFTRorf8vGjKjwuoLgpJ6RKmBS+fQtRhft51MSnfVxmnwKqDCQQ2T4gVkA/hb
	iN7bl+Otj34jHf/gIe13U1okHlGvgZIUgTzpg06/yTHbXx8H5QJBHy9zYT4s+hQMjwClP53snt/5W
	9As0V4nRh3hJa0Osd7MDqeKMAD8dM4I5cEmH9p+EzlcPk51XON4xW5GY7iFxs4FHa9WWqYVR7hrt6
	uPOMxxBHP0QjD9k0GIJ4pIK88v8Kpxs1BUUQnRvTJna040DrtLLnK3pNF1GS4n306w0zHASs3DueA
	MskAEJdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwKY-00045j-Lg; Sun, 24 May 2020 19:30:42 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwFo-0006Me-B2
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:25:51 +0000
Received: by mail-lj1-x243.google.com with SMTP id c11so16389894ljn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 12:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yVilPSB28wiJ3qo4ENpoTa0U9qIpxtxzCgolTCdGKWo=;
 b=O0iGA+nkmPxFQkUtW87EE7yoXxMEW/Ado6yrzVZAqtOQY6BVLyUFkDEmDdcu3qVbI+
 1I27ZyzQ6+cMuIQAPPeaHvj0P4jefWb64qeDvTmjo+G1oLcIsJNCMtxDUyOIe746mAWH
 yvRs21NMkAv0LdYSHRH8Cv54DNnGYGPP1+hBSkFOOMem77gEXH86HXPVZIvxSgfgzHCF
 a2dKMJPvLBuIMHipKUpQuS/0AI/qszvz6cSHzfYym9Lrq9yymUytNzwNBk05KY8oX9ky
 a13DSnz9LagIBECnsqBxA3zFWqe8hdvqNqPLC7U9VmFfQaHZ5K1SR9U6fHHR2U6kcykX
 ckJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yVilPSB28wiJ3qo4ENpoTa0U9qIpxtxzCgolTCdGKWo=;
 b=afOBw4g8J3/9nfLJojC+Cn95sBzGUyhkiydiDe9/5F2/BHl+/BQE6IKQ8gyimh6ZLH
 KOyBiFYL8zMcujJhxSMC4XKKpfkM3CwiltR8T+ljvuL0QGMZiqVHy6C586IDXZduecp4
 UY/cv+my0k/rhJRQQVfVGmbgmyXrFUKbLhprtLotSKShkzPl42HIgUck8qgYTQYZSfN7
 6c4KwRNbJPdYsBbL6rxdjCGXdPWnR93dCWp3DO+LoahvYgaBt8JT40BFUrecM6XGw2be
 GPsYHq220w2pvODYT69ebxVF6HJUdYB9taYRYZhbpTiPmeWRCHk/y/m2z7gwrO9be2y1
 Uzng==
X-Gm-Message-State: AOAM5327PBCiWbaj+FomMO5rybJKXgNJimNQwX0NiZIOw1nZfCZueIik
 AKlOknqTtNePOF+zyJv5TLJgbw==
X-Google-Smtp-Source: ABdhPJzsqo88xYujL0fmw6p8SF1ImgCVI5RtTHJMx+ue1BfevqSx6d5Ba3FHVFP4fmrTef95L2145g==
X-Received: by 2002:a2e:9787:: with SMTP id y7mr5167301lji.107.1590348346340; 
 Sun, 24 May 2020 12:25:46 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id v10sm3878137lja.23.2020.05.24.12.25.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 12:25:45 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v3 05/10] media: i2c: imx290: Add configurable link frequency
 and pixel rate
Date: Sun, 24 May 2020 22:25:00 +0300
Message-Id: <20200524192505.20682-6-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200524192505.20682-1-andrey.konovalov@linaro.org>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122548_414267_579F43F3 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Andrey Konovalov <andrey.konovalov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

IMX290 operates with multiple link frequency and pixel rate combinations.
The initial driver used a single setting for both but since we now have
the lane count support in place, let's add configurable link frequency
and pixel rate.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 drivers/media/i2c/imx290.c | 100 ++++++++++++++++++++++++-------------
 1 file changed, 66 insertions(+), 34 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index a361c9ac8bd5..e800557cf423 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -38,8 +38,6 @@
 #define IMX290_HMAX_2_720 0x19C8
 #define IMX290_HMAX_4_720 0x0CE4
 
-#define IMX290_DEFAULT_LINK_FREQ 445500000
-
 static const char * const imx290_supply_name[] = {
 	"vdda",
 	"vddd",
@@ -56,8 +54,6 @@ struct imx290_regval {
 struct imx290_mode {
 	u32 width;
 	u32 height;
-	u32 pixel_rate;
-	u32 link_freq_index;
 
 	const struct imx290_regval *data;
 	u32 data_size;
@@ -248,8 +244,13 @@ static const struct imx290_regval imx290_10bit_settings[] = {
 };
 
 /* supported link frequencies */
-static const s64 imx290_link_freq[] = {
-	IMX290_DEFAULT_LINK_FREQ,
+static const s64 imx290_link_freq_2lanes[] = {
+	891000000, /* 1920x1080 -  2 lane */
+	594000000, /* 1280x720  -  2 lane */
+};
+static const s64 imx290_link_freq_4lanes[] = {
+	445500000, /* 1920x1080 -  4 lane */
+	297000000, /* 1280x720  -  4 lane */
 };
 
 /* Mode configs */
@@ -259,16 +260,12 @@ static const struct imx290_mode imx290_modes[] = {
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
 
@@ -442,6 +439,32 @@ static int imx290_get_fmt(struct v4l2_subdev *sd,
 	return 0;
 }
 
+static u8 imx290_get_link_freq_index(struct imx290 *imx290)
+{
+	const struct imx290_mode *cur_mode = imx290->current_mode;
+
+	return (cur_mode->width == 1920) ? 0 : 1;
+}
+
+static s64 imx290_get_link_freq(struct imx290 *imx290)
+{
+	u8 index = imx290_get_link_freq_index(imx290);
+
+	if (imx290->nlanes == 4)
+		return imx290_link_freq_4lanes[index];
+	else
+		return imx290_link_freq_2lanes[index];
+}
+
+static u64 imx290_calc_pixel_rate(struct imx290 *imx290)
+{
+	s64 link_freq = imx290_get_link_freq(imx290);
+	u8 nlanes = imx290->nlanes;
+
+	/* pixel rate = link_freq * 2 * nr_of_lanes / bits_per_sample */
+	return (link_freq * 2 * nlanes / 10);
+}
+
 static int imx290_set_fmt(struct v4l2_subdev *sd,
 			  struct v4l2_subdev_pad_config *cfg,
 		      struct v4l2_subdev_format *fmt)
@@ -475,10 +498,14 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
 		format = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
 	} else {
 		format = &imx290->current_format;
-		__v4l2_ctrl_s_ctrl(imx290->link_freq, mode->link_freq_index);
-		__v4l2_ctrl_s_ctrl_int64(imx290->pixel_rate, mode->pixel_rate);
-
 		imx290->current_mode = mode;
+
+		if (imx290->link_freq)
+			__v4l2_ctrl_s_ctrl(imx290->link_freq,
+					   imx290_get_link_freq_index(imx290));
+		if (imx290->pixel_rate)
+			__v4l2_ctrl_s_ctrl_int64(imx290->pixel_rate,
+						 imx290_calc_pixel_rate(imx290));
 	}
 
 	*format = fmt->format;
@@ -502,12 +529,11 @@ static int imx290_entity_init_cfg(struct v4l2_subdev *subdev,
 	return 0;
 }
 
-static int imx290_write_current_format(struct imx290 *imx290,
-				       struct v4l2_mbus_framefmt *format)
+static int imx290_write_current_format(struct imx290 *imx290)
 {
 	int ret;
 
-	switch (format->code) {
+	switch (imx290->current_format.code) {
 	case MEDIA_BUS_FMT_SRGGB10_1X10:
 		ret = imx290_set_register_array(imx290, imx290_10bit_settings,
 						ARRAY_SIZE(
@@ -558,8 +584,8 @@ static int imx290_start_streaming(struct imx290 *imx290)
 		return ret;
 	}
 
-	/* Set current frame format */
-	ret = imx290_write_current_format(imx290, &imx290->current_format);
+	/* Apply the register values related to current frame format */
+	ret = imx290_write_current_format(imx290);
 	if (ret < 0) {
 		dev_err(imx290->dev, "Could not set frame format\n");
 		return ret;
@@ -821,12 +847,6 @@ static int imx290_probe(struct i2c_client *client)
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
@@ -879,23 +899,38 @@ static int imx290_probe(struct i2c_client *client)
 
 	mutex_init(&imx290->lock);
 
+	/*
+	 * Initialize the frame format. In particular, imx290->current_mode
+	 * and imx290->bpp are set to defaults: imx290_calc_pixel_rate() call
+	 * below relies on these fields.
+	 */
+	imx290_entity_init_cfg(&imx290->sd, NULL);
+
 	v4l2_ctrl_handler_init(&imx290->ctrls, 3);
 
 	v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
 			  V4L2_CID_GAIN, 0, 72, 1, 0);
-	imx290->link_freq =
-		v4l2_ctrl_new_int_menu(&imx290->ctrls,
-				       &imx290_ctrl_ops,
-				       V4L2_CID_LINK_FREQ,
-				       ARRAY_SIZE(imx290_link_freq) - 1,
-				       0, imx290_link_freq);
+	if (imx290->nlanes == 4)
+		imx290->link_freq =
+			v4l2_ctrl_new_int_menu(&imx290->ctrls,
+					       &imx290_ctrl_ops,
+					       V4L2_CID_LINK_FREQ,
+					       ARRAY_SIZE(imx290_link_freq_4lanes) - 1,
+					       0, imx290_link_freq_4lanes);
+	else
+		imx290->link_freq =
+			v4l2_ctrl_new_int_menu(&imx290->ctrls,
+					       &imx290_ctrl_ops,
+					       V4L2_CID_LINK_FREQ,
+					       ARRAY_SIZE(imx290_link_freq_2lanes) - 1,
+					       0, imx290_link_freq_2lanes);
 	if (imx290->link_freq)
 		imx290->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;
 
 	imx290->pixel_rate = v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
 					       V4L2_CID_PIXEL_RATE, 1,
 					       INT_MAX, 1,
-					       imx290_modes[0].pixel_rate);
+					       imx290_calc_pixel_rate(imx290));
 
 	imx290->sd.ctrl_handler = &imx290->ctrls;
 
@@ -919,9 +954,6 @@ static int imx290_probe(struct i2c_client *client)
 		goto free_ctrl;
 	}
 
-	/* Initialize the frame format (this also sets imx290->current_mode) */
-	imx290_entity_init_cfg(&imx290->sd, NULL);
-
 	ret = v4l2_async_register_subdev(&imx290->sd);
 	if (ret < 0) {
 		dev_err(dev, "Could not register v4l2 device\n");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
