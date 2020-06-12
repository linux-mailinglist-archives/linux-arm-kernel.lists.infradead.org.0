Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A821F7926
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NWrl0dhl7dXU+Gr/V/t0+nscbwP5Q9HcZEeetVQHEmM=; b=PQ8WahmuVBiEIYUIms7JEtcx/B
	VhhtxcSUa9lni1eodtRnOcvSzrsQZReVluJnfas2RZIQbUkD/ObbXabMhq6B0nV7NH75exzgbVUa5
	MKDDyGDRWWQaithyebeLldmr+LRI3RESZpkLzkteF1he5vUXdnwf5FYOS5dAhpGSZRXZc7cZOLDA4
	TmFAH0EfPP6A/YjbyYaZbxTzI7kq7/33dfYK5dMk/W6149W0uIoFNfGSnz9kG+fn3pPCYD9KnxkCD
	1p7+tgSgd9PTusomF3DVqDQ2wfl9xW+2kuj4xImUuWaZjlp2dztRhjr1N3uS3zXTmMOstuERHHYTd
	x3a1fI+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkB5-0006rr-Ti; Fri, 12 Jun 2020 13:57:03 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjk8o-0002oB-3m
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:54:44 +0000
Received: by mail-lj1-x241.google.com with SMTP id 9so11186701ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VUUHzTYdCTkEy8qJLKBgOAUld/T0D8KqCFLo4EbK13A=;
 b=FWhMXcsOEds3+BBPQIYyMZMkkDNYqr8Hvf0Pzpg8tbt+5q0Pae7x3KYplDTTYLnDZf
 QvTkqvmHw6i/6iRnZ6dnkfHHxnwYw+FzQ1XgGJorSL9W5s03JdN63NTaH2Xu715b8AAO
 GBaDMKfA/GrwV0MpFVy36NKbRAccos6wcPg+0znIPFcVs2fOJgfF9X97Uc4UsVMbZAPC
 C0l70vTdL9ANIP0BUF6i6V8lgp4kdQEaigslsXFA2rOwOugGsuVgK8qUVKFO8hawrUWA
 Hk3RGdrY3ILJaiZ8KSi3IYeU7Zz86SNOZcT+Bb0Cx4hswB9ri17H147UnULxxgNo2oPU
 W9Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VUUHzTYdCTkEy8qJLKBgOAUld/T0D8KqCFLo4EbK13A=;
 b=CTgRxSZkLijkWWdOlyhgaTciEBlne9ratkmxm0JE0cRTVx+ohc5/KF4LtXHrlBpOn5
 bfqOEHmRowZYc/QuISHJfb4ghsLkRSHaR+xCJ7pMB5KlCXn2EaxsBYuwNNmsHkx7F/5R
 cl0TkYJjPUsK8y+IrnVZeADGZN1l36j6qbiPsIZ34+doF25YLXew9Cu2pdqsXw2VUmpQ
 W5iRwPm4RhwiDvrBEziDAaI8M5PHHx8vvVgWVEwGk+BEufTJg4LGEgymx4wkXfaf8etM
 k8OdmDftc+uF0BGpsVeYsL3ghstvaFZgWykq+guFA7BSefaWNMmr3Az+qxcjxjKepk06
 Fxkg==
X-Gm-Message-State: AOAM530V3WkM1VgKEOUW6ylSNl5hnHI2JBxlKuEEQ3NAlal1X1MiCekY
 iXaNlQUVBMh1/rjAnYAwXUgrtQ==
X-Google-Smtp-Source: ABdhPJxk6HkegMMq+UhE9X/AYUPY8zX34/yL/MBNoC6KMOLW3w9i0pDCF9KBxHYexkhZH/3Tt6kGjw==
X-Received: by 2002:a2e:9ac6:: with SMTP id p6mr7249076ljj.417.1591970080042; 
 Fri, 12 Jun 2020 06:54:40 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id a1sm2414415lfi.36.2020.06.12.06.54.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:54:39 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v5 07/10] media: i2c: imx290: Add RAW12 mode support
Date: Fri, 12 Jun 2020 16:53:52 +0300
Message-Id: <20200612135355.30286-8-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612135355.30286-1-andrey.konovalov@linaro.org>
References: <20200612135355.30286-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_065442_203063_23B4B7A6 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
