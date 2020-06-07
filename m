Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC2C1F0D21
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 18:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rySg3wvNvg/uwBQRCqqtiMicyVFRSv5apkoatxeJlWI=; b=AtJj7basMHIdyjev+Xh7AG7jWd
	BEA12NRvd3VE/2y9Oa4s9dlgxo2BBazUtPZq8kJgdXh97a9PgDKYWaKfy1d5NQLkyQWA1VhHjJvFG
	3bUSf7sJMKOBWJXeYhdE+XU8IOdUYEVl2RCmANcN1nPD6lZ3ZWolRfhluSf5XLTwsFSH9dBMkUbnm
	Qs0i45wPSQeHFivLE8Ma+iWZXzJC3TfQqgQzCdkc77KvhNBtmiwgYLDKq5aOhsIZIWIswbEIP6rZh
	ePq/kswOfcoW8z8Ez4Nv0Hc9Go8KUFin62/lDr5jR9k2DUT7ul7E3c6nY7qTY0zBX3oaDOy0Ycj+V
	JqK9r78g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhyDh-0008As-1s; Sun, 07 Jun 2020 16:32:25 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhyCI-000715-8c
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 16:31:00 +0000
Received: by mail-lj1-x244.google.com with SMTP id z9so17470689ljh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 09:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gKPskW6+VadYDY7Xc9bQAKR0XT5AIKa1wPS7cKR7Irw=;
 b=GbTJWU8IGz9DZFllLhpVRWrR2x8gF3BigpYI2CTgrV73PUG72m/OuYbHPG10PK6fcx
 1TlJMhT72jrxckUd5Ra8+EYgO3vw34ZIDOoGgxp32ARsw0qJi3+FH5c4jJl/meg9jy4m
 6RFQRs8bA14hi+yxjG9A3oQuULiIkWqiR9UX8GV0Ikrfi7ApcwK4jCcXRoPvYBETJP/z
 I3BF9MEnq+Ak4voQl8S4E9uchsBBdhX2R+1xHuKKN3H+Os/fIHn1UPomaPn9GgX5Kije
 ax0QXhVOG93MmIuyhHV7yMO1jYYLvSvNXGQuzwPC5/SFMDZu0iBZcoIxvtIO014ezn0K
 SxPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gKPskW6+VadYDY7Xc9bQAKR0XT5AIKa1wPS7cKR7Irw=;
 b=Dy9m+/xnMZdJrBrGXFPQ8mosXE7rAQUwUYWDxppzwps5OvRqX6+Vq4/dxYqlNhN0Dw
 MMqo/9J0Nbys2RWEO9CyklJ9imny1tJVHNsa/QH83CCE4oBYEgmgRJiiSoPZWZNrzofR
 I2dV2uEkxZIX10Un55raLDcZnBjcHl99rQkpa9YTwrNIKypEXeflDoK8CSe7NwocE4gp
 0u81vXToivkSBVvWgrOz8aQK8GBSXyv5jk9FEFvWjJTxoxRYAb3zkclBSIXJBFWR90rW
 cxL2Y/bxd3BMdPjGQVir/tv/RTt0YsXaYVUF2aJqWCmvQjL9rvo0qDuAzbp1hQIZlXDL
 9PMw==
X-Gm-Message-State: AOAM530n1W2y0tJRXO+3slfoo0iaUZhToS81Xb0ETDARSxVVUBqjHHvY
 DARIxcRCvl8QF0MNS21GgYB2zg==
X-Google-Smtp-Source: ABdhPJw82cUQk2imfSWe3BjkRz6vPuBVuxABoZH1Q0U3yFqr4TbQrURz0Em1N2ZhzBFHNZRH74q2lA==
X-Received: by 2002:a2e:8490:: with SMTP id b16mr9771867ljh.325.1591547456098; 
 Sun, 07 Jun 2020 09:30:56 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id l7sm1726511ljj.55.2020.06.07.09.30.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 09:30:55 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v4 05/10] media: i2c: imx290: Add configurable link frequency
 and pixel rate
Date: Sun,  7 Jun 2020 19:30:20 +0300
Message-Id: <20200607163025.8409-6-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200607163025.8409-1-andrey.konovalov@linaro.org>
References: <20200607163025.8409-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_093058_551441_DB95FBFA 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/media/i2c/imx290.c | 148 +++++++++++++++++++++++++++----------
 1 file changed, 109 insertions(+), 39 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index ffb393962ffc..152b65cb7cbc 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -32,8 +32,6 @@
 #define IMX290_PHY_LANE_NUM 0x3407
 #define IMX290_CSI_LANE_MODE 0x3443
 
-#define IMX290_DEFAULT_LINK_FREQ 445500000
-
 static const char * const imx290_supply_name[] = {
 	"vdda",
 	"vddd",
@@ -51,8 +49,7 @@ struct imx290_mode {
 	u32 width;
 	u32 height;
 	u32 hmax;
-	u32 pixel_rate;
-	u32 link_freq_index;
+	u8 link_freq_index;
 
 	const struct imx290_regval *data;
 	u32 data_size;
@@ -243,29 +240,54 @@ static const struct imx290_regval imx290_10bit_settings[] = {
 };
 
 /* supported link frequencies */
-static const s64 imx290_link_freq[] = {
-	IMX290_DEFAULT_LINK_FREQ,
+#define FREQ_INDEX_1080P	0
+#define FREQ_INDEX_720P		1
+static const s64 imx290_link_freq_2lanes[] = {
+	[FREQ_INDEX_1080P] = 445500000,
+	[FREQ_INDEX_720P] = 297000000,
+};
+static const s64 imx290_link_freq_4lanes[] = {
+	[FREQ_INDEX_1080P] = 222750000,
+	[FREQ_INDEX_720P] = 148500000,
 };
 
+/*
+ * In this function and in the similar ones below We rely on imx290_probe()
+ * to ensure that nlanes is either 2 or 4.
+ */
+static inline const s64 *imx290_link_freqs_ptr(const struct imx290 *imx290)
+{
+	if (imx290->nlanes == 2)
+		return imx290_link_freq_2lanes;
+	else
+		return imx290_link_freq_4lanes;
+}
+
+static inline int imx290_link_freqs_num(const struct imx290 *imx290)
+{
+	if (imx290->nlanes == 2)
+		return ARRAY_SIZE(imx290_link_freq_2lanes);
+	else
+		return ARRAY_SIZE(imx290_link_freq_4lanes);
+}
+
 /* Mode configs */
 static const struct imx290_mode imx290_modes_2lanes[] = {
 	{
 		.width = 1920,
 		.height = 1080,
 		.hmax = 0x1130,
+		.link_freq_index = FREQ_INDEX_1080P,
 		.data = imx290_1080p_settings,
 		.data_size = ARRAY_SIZE(imx290_1080p_settings),
-		.pixel_rate = 178200000,
-		.link_freq_index = 0,
 	},
 	{
 		.width = 1280,
 		.height = 720,
 		.hmax = 0x19c8,
+		.link_freq_index = FREQ_INDEX_720P,
 		.data = imx290_720p_settings,
 		.data_size = ARRAY_SIZE(imx290_720p_settings),
-		.pixel_rate = 178200000,
-		.link_freq_index = 0,
 	},
 };
 
@@ -274,25 +296,22 @@ static const struct imx290_mode imx290_modes_4lanes[] = {
 		.width = 1920,
 		.height = 1080,
 		.hmax = 0x0898,
+		.link_freq_index = FREQ_INDEX_1080P,
 		.data = imx290_1080p_settings,
 		.data_size = ARRAY_SIZE(imx290_1080p_settings),
-		.pixel_rate = 178200000,
-		.link_freq_index = 0,
 	},
 	{
 		.width = 1280,
 		.height = 720,
 		.hmax = 0x0ce4,
+		.link_freq_index = FREQ_INDEX_720P,
 		.data = imx290_720p_settings,
 		.data_size = ARRAY_SIZE(imx290_720p_settings),
-		.pixel_rate = 178200000,
-		.link_freq_index = 0,
 	},
 };
 
 static inline const struct imx290_mode *imx290_modes_ptr(const struct imx290 *imx290)
 {
-	/* We rely on imx290_probe() to ensure that nlanes is either 2 or 4 */
 	if (imx290->nlanes == 2)
 		return imx290_modes_2lanes;
 	else
@@ -477,6 +496,30 @@ static int imx290_get_fmt(struct v4l2_subdev *sd,
 	return 0;
 }
 
+static inline u8 imx290_get_link_freq_index(struct imx290 *imx290)
+{
+	return imx290->current_mode->link_freq_index;
+}
+
+static s64 imx290_get_link_freq(struct imx290 *imx290)
+{
+	u8 index = imx290_get_link_freq_index(imx290);
+
+	return *(imx290_link_freqs_ptr(imx290) + index);
+}
+
+static u64 imx290_calc_pixel_rate(struct imx290 *imx290)
+{
+	s64 link_freq = imx290_get_link_freq(imx290);
+	u8 nlanes = imx290->nlanes;
+	u64 pixel_rate;
+
+	/* pixel rate = link_freq * 2 * nr_of_lanes / bits_per_sample */
+	pixel_rate = link_freq * 2 * nlanes;
+	do_div(pixel_rate, 10);
+	return pixel_rate;
+}
+
 static int imx290_set_fmt(struct v4l2_subdev *sd,
 			  struct v4l2_subdev_pad_config *cfg,
 		      struct v4l2_subdev_format *fmt)
@@ -509,10 +552,14 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
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
@@ -536,12 +583,11 @@ static int imx290_entity_init_cfg(struct v4l2_subdev *subdev,
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
@@ -592,8 +638,8 @@ static int imx290_start_streaming(struct imx290 *imx290)
 		return ret;
 	}
 
-	/* Set current frame format */
-	ret = imx290_write_current_format(imx290, &imx290->current_format);
+	/* Apply the register values related to current frame format */
+	ret = imx290_write_current_format(imx290);
 	if (ret < 0) {
 		dev_err(imx290->dev, "Could not set frame format\n");
 		return ret;
@@ -776,13 +822,34 @@ static const struct media_entity_operations imx290_subdev_entity_ops = {
 	.link_validate = v4l2_subdev_link_validate,
 };
 
+/*
+ * Returns 0 if all link frequencies used by the driver for the given number
+ * of MIPI data lanes are mentioned in the device tree, or the value of the
+ * first missing frequency otherwise.
+ */
+static s64 imx290_check_link_freqs(const struct imx290 *imx290)
+{
+	int i, j;
+	const s64 *freqs = imx290_link_freqs_ptr(imx290);
+	int freqs_count = imx290_link_freqs_num(imx290);
+
+	for (i = 0; i < freqs_count; i++) {
+		for (j = 0; j < imx290->ep.nr_of_link_frequencies; j++)
+			if (freqs[i] == imx290->ep.link_frequencies[j])
+				break;
+		if (j == imx290->ep.nr_of_link_frequencies)
+			return freqs[i];
+	}
+	return 0;
+}
+
 static int imx290_probe(struct i2c_client *client)
 {
 	struct device *dev = &client->dev;
 	struct fwnode_handle *endpoint;
 	struct imx290 *imx290;
 	u32 xclk_freq;
-	u32 default_pixel_rate;
+	s64 fq;
 	int ret;
 
 	imx290 = devm_kzalloc(dev, sizeof(*imx290), GFP_KERNEL);
@@ -825,8 +892,10 @@ static int imx290_probe(struct i2c_client *client)
 		goto free_err;
 	}
 
-	if (imx290->ep.link_frequencies[0] != IMX290_DEFAULT_LINK_FREQ) {
-		dev_err(dev, "Unsupported link frequency\n");
+	/* Check that link frequences for all the modes are in device tree */
+	fq = imx290_check_link_freqs(imx290);
+	if (fq) {
+		dev_err(dev, "Link frequency of %lld is not supported\n", fq);
 		ret = -EINVAL;
 		goto free_err;
 	}
@@ -883,26 +952,30 @@ static int imx290_probe(struct i2c_client *client)
 
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
+
 	imx290->link_freq =
-		v4l2_ctrl_new_int_menu(&imx290->ctrls,
-				       &imx290_ctrl_ops,
+		v4l2_ctrl_new_int_menu(&imx290->ctrls, &imx290_ctrl_ops,
 				       V4L2_CID_LINK_FREQ,
-				       ARRAY_SIZE(imx290_link_freq) - 1,
-				       0, imx290_link_freq);
+				       imx290_link_freqs_num(imx290) - 1, 0,
+				       imx290_link_freqs_ptr(imx290));
 	if (imx290->link_freq)
 		imx290->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;
 
-	default_pixel_rate = imx290->nlanes == 2 ?
-			     imx290_modes_2lanes[0].pixel_rate :
-			     imx290_modes_4lanes[0].pixel_rate;
 	imx290->pixel_rate = v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
-					       V4L2_CID_PIXEL_RATE, 1,
-					       INT_MAX, 1,
-					       default_pixel_rate);
+					       V4L2_CID_PIXEL_RATE,
+					       1, INT_MAX, 1,
+					       imx290_calc_pixel_rate(imx290));
 
 	imx290->sd.ctrl_handler = &imx290->ctrls;
 
@@ -926,9 +999,6 @@ static int imx290_probe(struct i2c_client *client)
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
