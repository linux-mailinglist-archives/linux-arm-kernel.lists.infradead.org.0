Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AED1E028D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WrfzMV12GeKfobfAEo8jF8Z/5Y/UW3CtwgaLcSdMTNg=; b=PCYRB1axerDh3MU0XaKdFTFCCD
	R+ZqCO4vSBagt+eDu7mE9oeX1C9qM11Ti0hvqg5OlmXsELuuabRAdAa7Q21DRV6dERufsoqSB1nx0
	KRi3VXjJdDQePkj9MP9knSE0pyE4VNUPxk+u8GBcGDZ2MMOsQ/vcuJlaj24fCVngWQibio3taLgcG
	DxenltQUIhS5R4hmnn3xEovyfCOLpBAck9q3M/chwZeMDaqLiRLHRbxjpf3R6wRmNp45JE9SeB9eE
	sP8b5BkqfieLRHpuWM0i2ik6PtLPHNuqZHx/jvc1WsOMbGkPbW7vNZFVeOBMVwK/3FQp0m+3NBWCv
	XuCCfUzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwKI-000213-15; Sun, 24 May 2020 19:30:26 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwFl-0006Kf-JT
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:25:48 +0000
Received: by mail-lj1-x242.google.com with SMTP id b6so18575104ljj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 12:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9Efxvd/EUR3wE4cCPNXWTny2PVFvAgo0xZMWtmn1fwY=;
 b=QgFjugucZTEXh2o9KI+dnZgZK/pHusn7YYupiKBti28gtZnwUguHx5BOm+wIyfDfkJ
 jOvXFrdmt7WHljBqxPZFdMjkEMhF9/rhtvbT3rOxnHHXfeqXZSxyuDyFJoCPTvqB3WtJ
 LDNJ4nxF85Q4CuD4sUd2dKY44iiE2/dAu65hYHev67UGxW7sULhLiDleKPCHMrSqg8LE
 4t5vYE4lbhBwMuyqOBqmYUYbi2gxNOKBPR8ov1waycVZrMxWb6Tnypl5+hroNFYyLp2C
 DvH1NIXJZnh5hbcDWT3EVZrq2v1/57C6bAz1yFtlNKsbkcJkp0ZzGjty7F6oSYPnv7ue
 9Lvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9Efxvd/EUR3wE4cCPNXWTny2PVFvAgo0xZMWtmn1fwY=;
 b=Qz+IBN982J287PvzJX2HRcd+HQrMEhiB4Z32/TQzgr/xL8TwqMM0ESVIOU5LeDknux
 Jy8R1JeYJJozJC1vEj6/wTXhfoQKRDWZqDaL2Lk3GNWXWYThaVBoeQXGUxKSO80XZLdp
 YlZ2cnAdBDE58eVhgz3OU8PmdU//bfr20VWOu2Cr3p6pYOjSwZ9VOX7kgHS+6ykL855Y
 djw24gH4gY7m5TorMRbXTpecFpeQeLoDOYLfWKJ0Vt7UOKghobRCYlf/mr4BvNYXG9lK
 XYLqK8/H8pNG0/CNVwkKiXJ48b/vSWRnsxl1BW+1TbL+xeG9B+MbR1iQmnHtElUL64rf
 3KdA==
X-Gm-Message-State: AOAM530wEmDqpp15Ucfy5u7fguLOGYPgKwWyrL8HGjyOgxNSpbTU+fKq
 uzLO4hm7Z8ihN3/xSNW7t19e4Q==
X-Google-Smtp-Source: ABdhPJxUZp1MLDUhhdInwZ3VzLZaFXqebJ2uXllkvyfjX7uOpMiHz0VshL9MYv9ETMgVAuCvf5+WzA==
X-Received: by 2002:a2e:7c02:: with SMTP id x2mr10503850ljc.316.1590348344028; 
 Sun, 24 May 2020 12:25:44 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id v10sm3878137lja.23.2020.05.24.12.25.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 12:25:43 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v3 04/10] media: i2c: imx290: Add support for 2 data lanes
Date: Sun, 24 May 2020 22:24:59 +0300
Message-Id: <20200524192505.20682-5-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200524192505.20682-1-andrey.konovalov@linaro.org>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122545_653767_FE5F0AC8 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

The IMX290 sensor can output frames with 2/4 CSI2 data lanes. This commit
adds support for 2 lane mode in addition to the 4 lane and also
configuring the data lane settings in the driver based on system
configuration.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 drivers/media/i2c/imx290.c | 133 ++++++++++++++++++++++++++++++++++---
 1 file changed, 124 insertions(+), 9 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 7b1de1f0c8b7..a361c9ac8bd5 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -25,7 +25,18 @@
 #define IMX290_STANDBY 0x3000
 #define IMX290_REGHOLD 0x3001
 #define IMX290_XMSTA 0x3002
+#define IMX290_FR_FDG_SEL 0x3009
 #define IMX290_GAIN 0x3014
+#define IMX290_HMAX_LOW 0x301c
+#define IMX290_HMAX_HIGH 0x301d
+#define IMX290_PHY_LANE_NUM 0x3407
+#define IMX290_CSI_LANE_MODE 0x3443
+
+/* HMAX fields */
+#define IMX290_HMAX_2_1920 0x1130
+#define IMX290_HMAX_4_1920 0x0898
+#define IMX290_HMAX_2_720 0x19C8
+#define IMX290_HMAX_4_720 0x0CE4
 
 #define IMX290_DEFAULT_LINK_FREQ 445500000
 
@@ -56,6 +67,7 @@ struct imx290 {
 	struct device *dev;
 	struct clk *xclk;
 	struct regmap *regmap;
+	u8 nlanes;
 
 	struct v4l2_subdev sd;
 	struct v4l2_fwnode_endpoint ep;
@@ -89,14 +101,11 @@ static const struct regmap_config imx290_regmap_config = {
 
 static const struct imx290_regval imx290_global_init_settings[] = {
 	{ 0x3007, 0x00 },
-	{ 0x3009, 0x00 },
 	{ 0x3018, 0x65 },
 	{ 0x3019, 0x04 },
 	{ 0x301a, 0x00 },
-	{ 0x3443, 0x03 },
 	{ 0x3444, 0x20 },
 	{ 0x3445, 0x25 },
-	{ 0x3407, 0x03 },
 	{ 0x303a, 0x0c },
 	{ 0x3040, 0x00 },
 	{ 0x3041, 0x00 },
@@ -169,7 +178,6 @@ static const struct imx290_regval imx290_1080p_settings[] = {
 	{ 0x3164, 0x1a },
 	{ 0x3480, 0x49 },
 	/* data rate settings */
-	{ 0x3009, 0x01 },
 	{ 0x3405, 0x10 },
 	{ 0x3446, 0x57 },
 	{ 0x3447, 0x00 },
@@ -187,8 +195,6 @@ static const struct imx290_regval imx290_1080p_settings[] = {
 	{ 0x3453, 0x00 },
 	{ 0x3454, 0x17 },
 	{ 0x3455, 0x00 },
-	{ 0x301c, 0x98 },
-	{ 0x301d, 0x08 },
 };
 
 static const struct imx290_regval imx290_720p_settings[] = {
@@ -210,7 +216,6 @@ static const struct imx290_regval imx290_720p_settings[] = {
 	{ 0x3164, 0x1a },
 	{ 0x3480, 0x49 },
 	/* data rate settings */
-	{ 0x3009, 0x01 },
 	{ 0x3405, 0x10 },
 	{ 0x3446, 0x4f },
 	{ 0x3447, 0x00 },
@@ -228,8 +233,6 @@ static const struct imx290_regval imx290_720p_settings[] = {
 	{ 0x3453, 0x00 },
 	{ 0x3454, 0x17 },
 	{ 0x3455, 0x00 },
-	{ 0x301c, 0xe4 },
-	{ 0x301d, 0x0c },
 };
 
 static const struct imx290_regval imx290_10bit_settings[] = {
@@ -522,6 +525,25 @@ static int imx290_write_current_format(struct imx290 *imx290,
 	return 0;
 }
 
+static int imx290_set_hmax(struct imx290 *imx290, u32 val)
+{
+	int ret;
+
+	ret = imx290_write_reg(imx290, IMX290_HMAX_LOW, (val & 0xff));
+	if (ret) {
+		dev_err(imx290->dev, "Error setting HMAX register\n");
+		return ret;
+	}
+
+	ret = imx290_write_reg(imx290, IMX290_HMAX_HIGH, ((val >> 8) & 0xff));
+	if (ret) {
+		dev_err(imx290->dev, "Error setting HMAX register\n");
+		return ret;
+	}
+
+	return 0;
+}
+
 /* Start streaming */
 static int imx290_start_streaming(struct imx290 *imx290)
 {
@@ -551,6 +573,40 @@ static int imx290_start_streaming(struct imx290 *imx290)
 		return ret;
 	}
 
+	switch (imx290->nlanes) {
+	case 2:
+		if (imx290->current_mode->width == 1920) {
+			ret = imx290_set_hmax(imx290, IMX290_HMAX_2_1920);
+			if (ret < 0)
+				return ret;
+		} else {
+			ret = imx290_set_hmax(imx290, IMX290_HMAX_2_720);
+			if (ret < 0)
+				return ret;
+		}
+
+		break;
+	case 4:
+		if (imx290->current_mode->width == 1920) {
+			ret = imx290_set_hmax(imx290, IMX290_HMAX_4_1920);
+			if (ret < 0)
+				return ret;
+		} else {
+			ret = imx290_set_hmax(imx290, IMX290_HMAX_4_720);
+			if (ret < 0)
+				return ret;
+		}
+
+		break;
+	default:
+		/*
+		 * We should never hit this since the data lane count is
+		 * validated in probe itself
+		 */
+		dev_err(imx290->dev, "Lane configuration not supported\n");
+		return -EINVAL;
+	}
+
 	/* Apply customized values from user */
 	ret = v4l2_ctrl_handler_setup(imx290->sd.ctrl_handler);
 	if (ret) {
@@ -607,6 +663,49 @@ static int imx290_get_regulators(struct device *dev, struct imx290 *imx290)
 				       imx290->supplies);
 }
 
+static int imx290_set_data_lanes(struct imx290 *imx290)
+{
+	int ret = 0, laneval, frsel;
+
+	switch (imx290->nlanes) {
+	case 2:
+		laneval = 0x01;
+		frsel = 0x02;
+		break;
+	case 4:
+		laneval = 0x03;
+		frsel = 0x01;
+		break;
+	default:
+		/*
+		 * We should never hit this since the data lane count is
+		 * validated in probe itself
+		 */
+		dev_err(imx290->dev, "Lane configuration not supported\n");
+		ret = -EINVAL;
+		goto exit;
+	}
+
+	ret = imx290_write_reg(imx290, IMX290_PHY_LANE_NUM, laneval);
+	if (ret) {
+		dev_err(imx290->dev, "Error setting Physical Lane number register\n");
+		goto exit;
+	}
+
+	ret = imx290_write_reg(imx290, IMX290_CSI_LANE_MODE, laneval);
+	if (ret) {
+		dev_err(imx290->dev, "Error setting CSI Lane mode register\n");
+		goto exit;
+	}
+
+	ret = imx290_write_reg(imx290, IMX290_FR_FDG_SEL, frsel);
+	if (ret)
+		dev_err(imx290->dev, "Error setting FR/FDG SEL register\n");
+
+exit:
+	return ret;
+}
+
 static int imx290_power_on(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
@@ -631,6 +730,9 @@ static int imx290_power_on(struct device *dev)
 	gpiod_set_value_cansleep(imx290->rst_gpio, 0);
 	usleep_range(30000, 31000);
 
+	/* Set data lane count */
+	imx290_set_data_lanes(imx290);
+
 	return 0;
 }
 
@@ -703,6 +805,16 @@ static int imx290_probe(struct i2c_client *client)
 		goto free_err;
 	}
 
+	/* Get number of data lanes */
+	imx290->nlanes = imx290->ep.bus.mipi_csi2.num_data_lanes;
+	if (imx290->nlanes != 2 && imx290->nlanes != 4) {
+		dev_err(dev, "Invalid data lanes: %d\n", imx290->nlanes);
+		ret = -EINVAL;
+		goto free_err;
+	}
+
+	dev_dbg(dev, "Using %u data lanes\n", imx290->nlanes);
+
 	if (!imx290->ep.nr_of_link_frequencies) {
 		dev_err(dev, "link-frequency property not found in DT\n");
 		ret = -EINVAL;
@@ -823,6 +935,9 @@ static int imx290_probe(struct i2c_client *client)
 		goto free_entity;
 	}
 
+	/* Set data lane count */
+	imx290_set_data_lanes(imx290);
+
 	pm_runtime_set_active(dev);
 	pm_runtime_enable(dev);
 	pm_runtime_idle(dev);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
