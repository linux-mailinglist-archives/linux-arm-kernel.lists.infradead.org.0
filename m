Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937241F0D24
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 18:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D6OXQr4guWqEKweedeEQvsk5iKOKw7LQZCY9+6sMT/I=; b=sCHP5tuKq/dlHXq0MU0NRu/7ue
	jCHl5zahEr7kSI3h3kMNA0H8fJXj1i8n/0FmgxS/pMqkYZWY1s2pGwxYaoCir70NRDOalRTB2KqoK
	VD2ZuXDrW0kJnFCE/hxac3zYcBq+zO46OAjcJnVL+iJyis4geQ3+YJgMET/RiqBJR3G0H17sgAFjH
	Jxh3x8sabB0V+b56nmx+O1aDRS74Mfgmc1KH2Rzw2+6n9b38vECzFz5kt5YZfPM9rlnP8YXIOMUHM
	/e+3z0qprDRVLmbBgtBJpG+swmxs3B4dR8zfmH/51BrzMN73Mo9flkX8P0x1hnfkk11v/Nvs0VZPY
	00ygATuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhyEY-0000Y1-GS; Sun, 07 Jun 2020 16:33:18 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhyCQ-00079L-Bx
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 16:31:08 +0000
Received: by mail-lj1-x243.google.com with SMTP id y11so15842030ljm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 09:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZN8pb1DxbDLuAa3GwJ440N0/6Zk96TU9nPo+rlxSNXs=;
 b=hgMmXQrmQr4gLMphT0IR3nsiRZgO+DUmJ3Jk8kWCmvJJkWdlGe8cAbh9VOYwOIqVjD
 V4oz0SXiDfTtEt7QnN+7tS0C5/r5ys9CSB/0SevtYjrYtp+38gyPGwdqDNJ7ZOeIRtVs
 rXO/zgcXzFu4ryb6uENXqD1Zw5RNVpBLPtqtsQkhq7uApRlntzg+xFh27ORacmkgvkn9
 RD0QTa6dONTYPTxsL/gB44FSKAZ2oGXG+7Hj7o/Bl3/Dx+IWIMZqNbWs4hfnyUDNKXuV
 TFjRWiJfOjfyo0jFcRelceUsoPmgmZrKsuZUzx0znCkiFpDlDW7F+25HnPgiLYjAaRrk
 VQWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZN8pb1DxbDLuAa3GwJ440N0/6Zk96TU9nPo+rlxSNXs=;
 b=b5pazlnZ7p9KDhiTkWVATBePzkHwi+H88YvKCqSNndvtyHAPnCTGp59WiHvm8eCYBX
 6W4VxuBlNc/TwmUN/UpcLrp5Z5EqY2IBN9+g3J1uFSu4JEjLf30POkS01d270dTellkY
 uy91ZL1gLeYwZsCOS1MonFpKCkDTcWsBl285rpSqZj2PFapNWpNBKZH95f9MSesrJt6Z
 Jb3s3MEPFD9MkjdeYWd/JaNfXRQox8YTHYsi7IB2N+5qGTag/oYD4HhNytYZM7MraZ4w
 WNtYewBk0iwrSG1s0ur102d+XIjOJJj6LiAYV65YfiTKKs5t1hrLiY3HnRhDTUR2sZUg
 XzPw==
X-Gm-Message-State: AOAM532qruCXoqCcwRxWFu3l3TYmOZmj/bUReN9MYy7AJ4Xxyw7IRVW/
 S0YdiD6jVG1dFLSiO/sJH8P5iw==
X-Google-Smtp-Source: ABdhPJwKvDoJhrs1A3GxUZPAsk4YJqgk84ISg9RDQ8bOuu1WO9sTe68xjvI+5fEFyJEEzp396jhkgg==
X-Received: by 2002:a2e:87da:: with SMTP id v26mr8806511ljj.14.1591547464950; 
 Sun, 07 Jun 2020 09:31:04 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id l7sm1726511ljj.55.2020.06.07.09.31.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 09:31:04 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v4 08/10] media: i2c: imx290: Add support to enumerate all
 frame sizes
Date: Sun,  7 Jun 2020 19:30:23 +0300
Message-Id: <20200607163025.8409-9-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200607163025.8409-1-andrey.konovalov@linaro.org>
References: <20200607163025.8409-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_093106_475846_A564AE20 
X-CRM114-Status: GOOD (  11.02  )
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

Add support to enumerate all frame sizes supported by IMX290. This is
required for using with userspace tools such as libcamera.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 drivers/media/i2c/imx290.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index c654a9a8fb08..fd147fac5ef2 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -528,6 +528,28 @@ static int imx290_enum_mbus_code(struct v4l2_subdev *sd,
 	return 0;
 }
 
+static int imx290_enum_frame_size(struct v4l2_subdev *sd,
+				  struct v4l2_subdev_pad_config *cfg,
+				  struct v4l2_subdev_frame_size_enum *fse)
+{
+	const struct imx290 *imx290 = to_imx290(sd);
+	const struct imx290_mode *imx290_modes = imx290_modes_ptr(imx290);
+
+	if ((fse->code != imx290_formats[0].code) &&
+	    (fse->code != imx290_formats[1].code))
+		return -EINVAL;
+
+	if (fse->index >= imx290_modes_num(imx290))
+		return -EINVAL;
+
+	fse->min_width = imx290_modes[fse->index].width;
+	fse->max_width = imx290_modes[fse->index].width;
+	fse->min_height = imx290_modes[fse->index].height;
+	fse->max_height = imx290_modes[fse->index].height;
+
+	return 0;
+}
+
 static int imx290_get_fmt(struct v4l2_subdev *sd,
 			  struct v4l2_subdev_pad_config *cfg,
 			  struct v4l2_subdev_format *fmt)
@@ -873,6 +895,7 @@ static const struct v4l2_subdev_video_ops imx290_video_ops = {
 static const struct v4l2_subdev_pad_ops imx290_pad_ops = {
 	.init_cfg = imx290_entity_init_cfg,
 	.enum_mbus_code = imx290_enum_mbus_code,
+	.enum_frame_size = imx290_enum_frame_size,
 	.get_fmt = imx290_get_fmt,
 	.set_fmt = imx290_set_fmt,
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
