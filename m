Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB5C1F0D23
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 18:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NWrl0dhl7dXU+Gr/V/t0+nscbwP5Q9HcZEeetVQHEmM=; b=QbFfaN9hH3HF5BYz/gyO84Kw25
	c+uICNLfUV/58OwUHsQCEJdlttyAD62xAPzD0nfsiM9wfzQIxwJ/0S+GbEVo7ldZCnEZMUbYGgbUT
	Nczfotv/VWqE5D9q4a7KGNcmnawDP8e8lBhiLZKHnDbbVwShEKWDBnIOuZ/3zMrh3kiWefKxqvQqr
	wx+KuaJGshAcZpSb7ChYKofm2VCTPSihzbCK31oRJtSZx/WB20z1/FRWd7YfRC25cldwLbriqMbMV
	Dw/KcCeQyXkXh8r9ZVwOlUYP5QLkPcWd+ZzkkpVTDwmU3jsWJizkhlPvmwQHLVaRBeWQvZgWCkSQn
	czgGek8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhyEC-0000EB-TT; Sun, 07 Jun 2020 16:32:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhyCN-00075s-KN
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 16:31:05 +0000
Received: by mail-lj1-x243.google.com with SMTP id a25so17503701ljp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 09:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VUUHzTYdCTkEy8qJLKBgOAUld/T0D8KqCFLo4EbK13A=;
 b=dv/XUq+WdfVan0lSFHWk+qgDn/wSsMi9bV9WLipNALihtYxVDlZ5TyFZOdJFDN3/7H
 cDRzz/M5jcdpPR0vOKqIQo3pOs0vxr1rXvXeelKgzgktgDvHHxQvMq7ghf+eDhjhO5mH
 Ip8cJ/kSPzI840wrR3SNLc/gSWwoO/KfEAH70YodQrITPITS12uNAiO+gBH9xshBz7H+
 BN2BhGK7Gp+AMqrmFiaK3VZlQ8NxPKjkdt1yScsfYogANa2qcXuCTUwyXxtEhPlGaaJS
 L5/bkNPRpdusnIzTCW8LOuGRDRkVroIRt5AWG5LJxmfx1F8fV5FfpuysqAjt6aQQb/N+
 jHag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VUUHzTYdCTkEy8qJLKBgOAUld/T0D8KqCFLo4EbK13A=;
 b=HPnieoySVjkSFaYsgc1tMjoyB+dfHY7sZZdYMGt5PG7/+ZW6OcTf9F471fiRteL9sD
 QiMrx/LCOkDoaJMZ+6UsgoV6c4ZaXjqFnMPA37EOWoEAwp6v1Z/uE+ubAW/ZdAafPTK8
 O0cJJTvJl69/kzenlYtlmOIKSPROod9p4D9idJT40LB8GmvllaoEgPP2vK5BhHqhHfS1
 njHaVTlQhsu1oi6pDKP+tnV37VTLwEy9jR9Hy3+wdb1OySS8McUbcCj9rpPofuqhEGZv
 BTglpt7m0RlXVDg7IQjI6QtveL7AhQLJwpWyi4bP6PyG3v5MMh4rIhRfkrOV+pHgRlLi
 cD7g==
X-Gm-Message-State: AOAM533gqnq53K7wosc1CuagGiKIX6VnH0xZB8G4fsI3LQzmxNN3J29E
 rGePMAgXyXrrIkjk5WtC/0nWBQ==
X-Google-Smtp-Source: ABdhPJwUO3GSSqzVk9B3bZCVYJUf3X9ZKgSM1/1T9D2s9BR1VOO8qfvlTsbykFp1BPj6WrWXZNVl0w==
X-Received: by 2002:a2e:2f0f:: with SMTP id v15mr8348721ljv.219.1591547461316; 
 Sun, 07 Jun 2020 09:31:01 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id l7sm1726511ljj.55.2020.06.07.09.31.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 09:31:00 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v4 07/10] media: i2c: imx290: Add RAW12 mode support
Date: Sun,  7 Jun 2020 19:30:22 +0300
Message-Id: <20200607163025.8409-8-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200607163025.8409-1-andrey.konovalov@linaro.org>
References: <20200607163025.8409-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_093103_796824_1B601D4C 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

IMX290 is capable of outputting frames in both Raw Bayer (packed) 10 and
12 bit formats. Since the driver already supports RAW10 mode, let's add
the missing RAW12 mode as well.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 drivers/media/i2c/imx290.c | 36 +++++++++++++++++++++++++++++++++---
 1 file changed, 33 insertions(+), 3 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 67725a5aabd3..c654a9a8fb08 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -67,6 +67,7 @@ struct imx290 {
 	struct clk *xclk;
 	struct regmap *regmap;
 	u8 nlanes;
+	u8 bpp;
 
 	struct v4l2_subdev sd;
 	struct v4l2_fwnode_endpoint ep;
@@ -86,10 +87,12 @@ struct imx290 {
 
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
@@ -257,6 +260,18 @@ static const struct imx290_regval imx290_10bit_settings[] = {
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
 #define FREQ_INDEX_1080P	0
 #define FREQ_INDEX_720P		1
@@ -478,7 +493,12 @@ static int imx290_set_ctrl(struct v4l2_ctrl *ctrl)
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
@@ -550,7 +570,7 @@ static u64 imx290_calc_pixel_rate(struct imx290 *imx290)
 
 	/* pixel rate = link_freq * 2 * nr_of_lanes / bits_per_sample */
 	pixel_rate = link_freq * 2 * nlanes;
-	do_div(pixel_rate, 10);
+	do_div(pixel_rate, imx290->bpp);
 	return pixel_rate;
 }
 
@@ -587,6 +607,7 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
 	} else {
 		format = &imx290->current_format;
 		imx290->current_mode = mode;
+		imx290->bpp = imx290_formats[i].bpp;
 
 		if (imx290->link_freq)
 			__v4l2_ctrl_s_ctrl(imx290->link_freq,
@@ -631,6 +652,15 @@ static int imx290_write_current_format(struct imx290 *imx290)
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
