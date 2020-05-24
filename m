Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27311E0290
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NvJNRLoLKpSgK6l/oejh9qSzIfeiXk0At4Nnr43NXo0=; b=l4f7bnKf2oeiTighcLKyUZ2zFH
	+OUabnpEPWAkJ9sP9sM8yhhgl6GcxWqNGdOkvVF0GwdEzIJdPIeM8pVxsnXgZuchc4HQacHtWu63P
	rF4gAOMUWF82WD6aAJJevoZPvwPZ2WGGgSYbKnhp5uxkFzvKarFW+Dx3F98rrAU5gABDpb9K1QbEP
	4bAVhU7URY78i8hFI62IxKQcpGNgG7m4l6nDhuwXCgFGijz3sbQe7JyzXh/Wkn1ZFcOTWJAkKzkaO
	X4BtcfyN2U/RoAjtUfG8t0mOhDfeiW5AOf8ZHI0kgFZxaui0cNQMkXVbG3T75BuXMRAd/bsyV9kHr
	N9UQ2o9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwL5-0004X8-W9; Sun, 24 May 2020 19:31:16 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwFs-0006QE-VL
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:25:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id a25so6899549ljp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 12:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+PYK4q1Rnglh0VTibBDaR9VW5U2u0EzShHpfqOKsSuw=;
 b=lduPfREGdMEwQ29J2fNMxgsfPt8OwDvhs4Tmm4ET0BBw9U07IQXKhmxTFHKAtygKPZ
 4hD80UC22bLsHy4UeDeZBbHXmm2lApmU5Q55Hmc3b8rsnQJ8Wl97DtGYoc8x70gCPkM4
 ODm5hdYBdSuFTl556EIaq0tqj+fEMr7y1RZFr5khhq/LgKjeKEmawZLLawLu2Nv3H3EC
 vGdv9QVUKu2QYm87r1ESn7YaLxcFhSvCjKLoo9/j/n0WJ9rgmZb0xxkHmGLjEiiYvQeU
 /0BVSG+7MHB9sFyWbmaHz8Jh42w8hbQ8NPK5E9mV23rEMS9M4u8nrTsst4nZsgIuuuEh
 voYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+PYK4q1Rnglh0VTibBDaR9VW5U2u0EzShHpfqOKsSuw=;
 b=o4O+NBJqtE8YGDgGvtz9inHX+NpWUuZxigYTFbtQo/AMbXPMNxvBz0EY3ywgS/M4Um
 Rm6vMn9w04H4lWxCPw6r/QKvVx5n2X61YsEon9bOeRh2urILMaM4+1kRD546h29IOOTv
 vJ9RIs5JrqlkNEhAi6ieu7vvVGEHLR7YGIrjvZ7Yv2dq9GRJkxv6v/JBvdrXN4LsIbQ4
 tk3w//7EoHJulWd9NXpY0G8DZ+zXXZT7VbjW6zMN8x6oCossPOH+vWsNmsnW4Pkbblas
 nEw3adM7FM5ud7wG9ZvOqPbau4st4szwuNBrlrzaInvgEBM83xzhbR/AWKs4b/ZfX2sB
 mY+A==
X-Gm-Message-State: AOAM532Io9y15Mmm+0mAqaYfIPAY+0KKnxwShM41kzlhcznm0X3/+wx6
 mpIRBw0E7KrCD/rWC27FlmczKQ==
X-Google-Smtp-Source: ABdhPJyeSms0uRBcipVV8IG65uMlNn+w956HACq5xunnK6XSANeWUO1bKfvjSum1rehpqN2Y9+CcZg==
X-Received: by 2002:a2e:9410:: with SMTP id i16mr11144617ljh.406.1590348350804; 
 Sun, 24 May 2020 12:25:50 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id v10sm3878137lja.23.2020.05.24.12.25.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 12:25:50 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v3 07/10] media: i2c: imx290: Add RAW12 mode support
Date: Sun, 24 May 2020 22:25:02 +0300
Message-Id: <20200524192505.20682-8-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200524192505.20682-1-andrey.konovalov@linaro.org>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122553_085870_53493561 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

IMX290 is capable of outputting frames in both Raw Bayer (packed) 10 and
12 bit formats. Since the driver already supports RAW10 mode, let's add
the missing RAW12 mode as well.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 drivers/media/i2c/imx290.c | 36 +++++++++++++++++++++++++++++++++---
 1 file changed, 33 insertions(+), 3 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 162c345fffac..6e70ff22bc5f 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -71,6 +71,7 @@ struct imx290 {
 	struct clk *xclk;
 	struct regmap *regmap;
 	u8 nlanes;
+	u8 bpp;
 
 	struct v4l2_subdev sd;
 	struct v4l2_fwnode_endpoint ep;
@@ -90,10 +91,12 @@ struct imx290 {
 
 struct imx290_pixfmt {
 	u32 code;
+	u8 bpp;
 };
 
 static const struct imx290_pixfmt imx290_formats[] = {
-	{ MEDIA_BUS_FMT_SRGGB10_1X10 },
+	{ MEDIA_BUS_FMT_SRGGB10_1X10, 10 },
+	{ MEDIA_BUS_FMT_SRGGB12_1X12, 12 },
 };
 
 static const struct regmap_config imx290_regmap_config = {
@@ -261,6 +264,18 @@ static const struct imx290_regval imx290_10bit_settings[] = {
 	{ 0x300b, 0x00},
 };
 
+static const struct imx290_regval imx290_12bit_settings[] = {
+	{ 0x3005, 0x01 },
+	{ 0x3046, 0x01 },
+	{ 0x3129, 0x00 },
+	{ 0x317c, 0x00 },
+	{ 0x31ec, 0x0e },
+	{ 0x3441, 0x0c },
+	{ 0x3442, 0x0c },
+	{ 0x300a, 0xf0 },
+	{ 0x300b, 0x00 },
+};
+
 /* supported link frequencies */
 static const s64 imx290_link_freq_2lanes[] = {
 	891000000, /* 1920x1080 -  2 lane */
@@ -421,7 +436,12 @@ static int imx290_set_ctrl(struct v4l2_ctrl *ctrl)
 		} else {
 			imx290_write_reg(imx290, IMX290_PGCTRL, 0x00);
 			msleep(10);
-			imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW, 0x3c);
+			if (imx290->bpp == 10)
+				imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW,
+						 0x3c);
+			else /* 12 bits per pixel */
+				imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW,
+						 0xf0);
 			imx290_write_reg(imx290, IMX290_BLKLEVEL_HIGH, 0x00);
 		}
 		break;
@@ -496,7 +516,7 @@ static u64 imx290_calc_pixel_rate(struct imx290 *imx290)
 	u8 nlanes = imx290->nlanes;
 
 	/* pixel rate = link_freq * 2 * nr_of_lanes / bits_per_sample */
-	return (link_freq * 2 * nlanes / 10);
+	return (link_freq * 2 * nlanes / imx290->bpp);
 }
 
 static int imx290_set_fmt(struct v4l2_subdev *sd,
@@ -533,6 +553,7 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
 	} else {
 		format = &imx290->current_format;
 		imx290->current_mode = mode;
+		imx290->bpp = imx290_formats[i].bpp;
 
 		if (imx290->link_freq)
 			__v4l2_ctrl_s_ctrl(imx290->link_freq,
@@ -577,6 +598,15 @@ static int imx290_write_current_format(struct imx290 *imx290)
 			return ret;
 		}
 		break;
+	case MEDIA_BUS_FMT_SRGGB12_1X12:
+		ret = imx290_set_register_array(imx290, imx290_12bit_settings,
+						ARRAY_SIZE(
+							imx290_12bit_settings));
+		if (ret < 0) {
+			dev_err(imx290->dev, "Could not set format registers\n");
+			return ret;
+		}
+		break;
 	default:
 		dev_err(imx290->dev, "Unknown pixel format\n");
 		return -EINVAL;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
