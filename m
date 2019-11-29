Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9174F10D9F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 20:07:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FbZZg6gqxLvgeKTlDSH5tKPadlksAiyOPwbWoJv15yw=; b=Ee85SMbY4cWczis3asBxEGkgfW
	Bm6Rv9G20ksz/P8LQ1SZtzM5KmkEPWobLtb+52gqZNEqoe/cD71tcI1+jty67TcWvpUxXdmcpXyo1
	3Pv2XuK9p4VUsC7OrpyCN+Jde3PIxyXxNBJMxkItWCmJp4k0b93a/+k2XO29pG1gRGMAErdS2+t52
	mwitO6Ge6KOX7xJFBo2NsA9Vly53ogZxciGUnRdq+N43WzT/dR9Lu/aLywhvtzKYBKh9y/OggGapA
	ZwJxxgX5BbEFKKbhtSUKdSrdIHxV0d+ENLMTMSAr7BynF4N6Q4nuVT3Ue/yFaqVMzBkU4qFaXrye9
	3QMHzmaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ialbo-0006ww-DN; Fri, 29 Nov 2019 19:07:16 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ialam-0006Ox-3w
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 19:06:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id x185so2305824pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 11:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DmYsGklBxODi9ZXzG+eZphEo00SJ3Wr36G+fPUJuOQI=;
 b=zT92KeHeKw8smYn0Wg/ZkYYS3HUIgVo/BEAonyLQotvdGPO9EoJrWytsnE7ricRaJE
 4dmmdhb4xHRJX+WKgQfGSe87j8EJk7d7XspMM+7qbebFTHlJavhgkTy6RXPJIaYDb3yq
 tVRGekzSoLjKN/4vMCyMr7qynj7lOQCKfGYNmezHByEt4fVM9QbjTQBUo7G0A08urYjl
 XoQ071BJ4RlUh7bgcrpKik6D9P4l8BWS+I0XZ394b7OO5cadlj2iKTCWi/c1DMJkZIcX
 JpxqJ/nOA8jViQj6VyS4RXGUJUOm+kheO8cyp1mOWT4beaJ0EXk16are4Eoazv7Vf1SR
 Ufbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DmYsGklBxODi9ZXzG+eZphEo00SJ3Wr36G+fPUJuOQI=;
 b=XqPYYcRHswhgK0WLNdUBeA8/OqzQLjHkeKYgQwsam2LJV1B+k8AOtJohP2S7tKYXfq
 QQICbDNz9Ujyn7AslpxKBKAh/fiere9EZnAm/1NrwctBwZd/J4jt8mhR+YrJsQEaTiqZ
 i6Fb7F6i2rUprXOWw7ydySYruo48cTtfc/TGSGj5WOY5ksDrCv3Y2UorRV8LE0oWXkQY
 ZpUwp/KFmg9GH2kzhbcTQsBse6W/wUpxlIIDMFV/zBb11/n2h2nNweoFDzxcBZdp9PxY
 p1XWRd/ii3PVlSq+rtaXOJ8Smj2CNuDhILQnmw+Aj8uWyW9lfC0/ViGTJi/KBUKgN397
 WwgA==
X-Gm-Message-State: APjAAAVylaKa2l84XF0qZY7SA+Iq587VW+F717VWYvNQceOgJ1YvK7DN
 ywDLZ06VVLFjJ2SfJZLxXkdc
X-Google-Smtp-Source: APXvYqzgig8XcKY6Z1Z5e1HRzFl4a4lC8ZhYAuK/3i+SnVPkIq/8PDUl4lpssyMcnNT2yb5tWXM7Mg==
X-Received: by 2002:a65:5307:: with SMTP id m7mr18546705pgq.113.1575054370197; 
 Fri, 29 Nov 2019 11:06:10 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:638d:cc55:d006:f721:cde2:1059])
 by smtp.gmail.com with ESMTPSA id h9sm25159974pgk.84.2019.11.29.11.06.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 11:06:09 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH 3/5] media: i2c: imx290: Add RAW12 mode support
Date: Sat, 30 Nov 2019 00:35:39 +0530
Message-Id: <20191129190541.30315-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_110612_185574_C3E21DF9 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

IMX290 is capable of outputting frames in both Raw Bayer (packed) 10 and
12 bit formats. Since the driver already supports RAW10 mode, let's add
the missing RAW12 mode as well.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index e218c959a729..d5bb3a59ac46 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -75,6 +75,7 @@ struct imx290 {
 	struct clk *xclk;
 	struct regmap *regmap;
 	int nlanes;
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
@@ -910,6 +939,9 @@ static int imx290_probe(struct i2c_client *client)
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
