Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9871268F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:24:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Io7tqSYn++hdQqmg373I4yxlPj7AHgf9witrY1IAOqA=; b=kBFuexqfrlYKxHa/Bs404lhhVp
	56LI1BKwtzYpzG/vsLfWlN4fMvxVk5Rf7Iia1lhItxQ1BeeKr5fuOIXsJgGUk86vvqGSigzvAPKG1
	GZQKHZFvoFJGDdJt/qSJ10EbNHgj2KG5gZvvxH6a/3NsFEWbyEn6GGxlzMyvzxqWMlcKeBWcqo5tW
	N4UNhgDmx/p95sHx0N/UIaOYU5XGVwXdSw7vtOpp4gYrQCE0SdrJSu/MeUNK7tsRxPJdG2lCV80JW
	HWKL/EOsKc6FltdDLEiCGUp/xMa4KwODEB8V5YByEDzElfi7BTZaKXEmelXuHtEm9CkSGwFPo0qoA
	VPiTCqGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0Sq-0001Z0-Tm; Thu, 19 Dec 2019 18:23:56 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0Rx-000127-UK
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 18:23:03 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ep17so2898902pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 10:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AFvgHo+YGqFoje0Tn82GYQJ1a/RGDe/xy+Kyh3iTfBI=;
 b=kmDLD54Wg3ujI/AZ5o82fQsFYrDiuccUSsctI4Y7S7mXX6MyEfNbDjjW9+s6zcVUKS
 nygmXBu+d+VM9XCAAmQ3nbV9d3I72uZUIsjZ2SF8TFVUHPw9QRjNM6Jw+1BRPLeBXvp1
 cBNCRZIY/A1kpYJfHUDMOI8ai1nkGnezL24ODwAzUUPH7TiHct5j6i/A08jdpjRE3R5J
 pQvdnIciCIRAL3pDWcp2YfwuPzLAraQHzAVxWEuuc2oUYwHjmUQ7vD7F4aLl++6gwKFt
 mqL2MxBLFXllu3VhBGuTZzEB+Xzt4jE5lsgOpSSCUES1bflOqdaIw4CudFV4w25Q/kpG
 sIbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AFvgHo+YGqFoje0Tn82GYQJ1a/RGDe/xy+Kyh3iTfBI=;
 b=T9uPiyhz+1j90oUAAv/B6ZD4frRVeGRS1qKTrp4qACpNpMhF7m4PF3g1desLbSpf/5
 voXZZiBbTs5AQBbElnF+TRwlM6rXU0kUkor+RkLD9yUCPstW4ikhNC2WSA8W0joB5R8P
 jSC9EXrLBlVA2DVEj18MtnQT1LlIj0dpk0RATnM65cKXwV6CIVTOGmua5QEM5qDvn39E
 p+y+9t4DNMh4GMtceojL2eKRNSFQeIKRqO54xDwwgnhgkq2Ib68rXQMsPNymDOKcPLFP
 Aly/aW0ftDhy2vq5K/vrKjM4RTdXeyAH05Tdh0SxFsCIPBfiYzGyPvDklGM7ahJjd19R
 hasw==
X-Gm-Message-State: APjAAAWLHHxjAE9lEi0IQwrX56NoXeXE89fT2L3xFlqeWEVkc51TSziH
 c+uJ7LRnjRpIWbuTXkmEcYdB
X-Google-Smtp-Source: APXvYqzXfMn0kZmuBjpUAbmkAgP2/fMJH486K6UgeYhEJzoLI3sQVo78zCN+SN0jVd3rtq83ZuxG7Q==
X-Received: by 2002:a17:902:bd93:: with SMTP id
 q19mr8338103pls.134.1576779780558; 
 Thu, 19 Dec 2019 10:23:00 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:6010:65a5:a416:e9bd:178a:9286])
 by smtp.gmail.com with ESMTPSA id i3sm9085735pfg.94.2019.12.19.10.22.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 10:23:00 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v2 3/6] media: i2c: imx290: Add RAW12 mode support
Date: Thu, 19 Dec 2019 23:52:19 +0530
Message-Id: <20191219182222.18961-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191219182222.18961-1-manivannan.sadhasivam@linaro.org>
References: <20191219182222.18961-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_102302_157498_C79E9917 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IMX290 is capable of outputting frames in both Raw Bayer (packed) 10 and
12 bit formats. Since the driver already supports RAW10 mode, let's add
the missing RAW12 mode as well.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 96eea0aafd3e..b6eeca56d3c9 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -75,6 +75,7 @@ struct imx290 {
 	struct clk *xclk;
 	struct regmap *regmap;
 	u8 nlanes;
+	u8 bpp;
 
 	struct v4l2_subdev sd;
 	struct v4l2_fwnode_endpoint ep;
@@ -98,6 +99,7 @@ struct imx290_pixfmt {
 
 static const struct imx290_pixfmt imx290_formats[] = {
 	{ MEDIA_BUS_FMT_SRGGB10_1X10 },
+	{ MEDIA_BUS_FMT_SRGGB12_1X12 },
 };
 
 static const struct regmap_config imx290_regmap_config = {
@@ -265,6 +267,18 @@ static const struct imx290_regval imx290_10bit_settings[] = {
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
 static const s64 imx290_link_freq[] = {
 	IMX290_DEFAULT_LINK_FREQ,
@@ -550,6 +564,21 @@ static int imx290_write_current_format(struct imx290 *imx290,
 			dev_err(imx290->dev, "Could not set format registers\n");
 			return ret;
 		}
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
 		break;
 	default:
 		dev_err(imx290->dev, "Unknown pixel format\n");
@@ -913,6 +942,9 @@ static int imx290_probe(struct i2c_client *client)
 		goto free_err;
 	}
 
+	/* Default bits per pixel value */
+	imx290->bpp = 10;
+
 	mutex_init(&imx290->lock);
 
 	v4l2_ctrl_handler_init(&imx290->ctrls, 4);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
