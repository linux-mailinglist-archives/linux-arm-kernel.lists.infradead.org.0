Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AFDB667
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 21:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TFdonzmlvCWIcfCg4Hb43Us/AP0IL2Ys0eD46Knt0Jw=; b=c5nEJdleczAOnTI2A1b6zSAwdo
	NwfOzDlMeWIhLWXQKYhp4G73VzNRWPD/Nnk4y/FPFRGhCM1qHLI/civk3CEuqhfpksxCXM6rZFAtd
	DhTu5tZAeVP41uOaaW3u18HIYFBJZxxyvSTfrM9nc73Z0dfvNTabBTiKexR/qCjo4ljAFrj2RPH/g
	xWnHuicONj3IgTNAXiVcWMA2ZjwH7R6Ai44ltz3R0RUaG67wDy9dY7BVK64T4tDtBvX7G1oix0NxP
	uzF+apM+sITcXfkQ3dcrhkH8UYvkmG7eqow32lQqImyCPejeOAlfoKcQRiSOj8s/avs1/01+7ZfAW
	5ZVyR0YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKpBu-00025p-Gm; Sun, 28 Apr 2019 19:10:22 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKpB8-0000Tv-0h
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 19:09:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id 10so4251152pfo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 12:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Bs9QmySNy6EI2QvZ7E+BvIo9VVaHRvBdmmCGKxCyH9s=;
 b=CXK3r2ZYtyYFjgRKCPNu7kzrO/kK2u0Pw82MH/sHSUM+VmeveZTq7mOQKkSHmJBBcm
 jwxPrKSVknf7p0E4mz+6/5idVUisCmGVxuXh6++zRGA8RQSDEWdkoaPC5iBVYiYv+rC6
 az3zhrzV/E+vA130dTFOL4WK1+SDzyiwA0XgvJYwebbRCQ5dOQBAXjDZiBgO8s/wY5Zh
 EeiiyX1/Ci89DdbvRN9VvwxFjzc+7+i7FfLhagATVBb7UiVPJdEXeZVA7FnDOk3bVXVK
 MWa/aiPLhzmmPW+5F2DM9L2PcT1RZ4QfYsAoyGdNtIDNzz6NBYlzY38hRDpbi3aJU+WB
 /4kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Bs9QmySNy6EI2QvZ7E+BvIo9VVaHRvBdmmCGKxCyH9s=;
 b=m4p7TH6CwYXZvrfLtIrVfS/dCamgCbb9H3ULSkw2V//OnvO4Oz3MkEJWAZq3qqGTaS
 8CoIFoxwXw7RLet5DP4NnTCQzORGP4lwP4Fm3QY7bOKWZ3Ka1PJ5k+Os/f2sxL4ffpVw
 nc3K1qbcG57TsGUq60G70uWEbYiYlNfswh1o8IvDzLL8kgShuKpP8S1zS4PiqCrMFlr9
 9TIwleWJey/5R/SW3oVZEO4pMF+YGkHI8GDIth8FxAmBvPFzxxAPpXkSeoJXd1/+bFoA
 ZJ+wdocaNLFTUpiSMoVLcqA129tre/jt+OYtz4vg6Dsi0EvUo9tggQ3uKqIqvMxRTUPw
 Y3vg==
X-Gm-Message-State: APjAAAW2KP/mvbVjfqdjDfxzcz3HeLgkxejG0agMmVTl9O7EHGJHmc3V
 6o12rIG5gIwszUu3BjIS//M=
X-Google-Smtp-Source: APXvYqwNvdlbfwCk+yeHjRdwca0hxd82YnMWdp+uJmcZH9ADBbPC9fyTD8hshAw5Q8iNWpGFo/bDBw==
X-Received: by 2002:a65:4342:: with SMTP id k2mr19088280pgq.178.1556478573319; 
 Sun, 28 Apr 2019 12:09:33 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id o14sm34204712pgn.4.2019.04.28.12.09.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 12:09:32 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 4/8] Revert "media: imx: Set capture compose rectangle in
 capture_device_set_format"
Date: Sun, 28 Apr 2019 12:09:12 -0700
Message-Id: <20190428190916.26567-5-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190428190916.26567-1-slongerbeam@gmail.com>
References: <20190428190916.26567-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_120934_136648_EE68E5F2 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rvert this commit, as imx_media_capture_device_set_format() will be
removed.

This reverts commit 5964cbd8692252615370b77eb96764dd70c2f837.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-ic-prpencvf.c   |  5 ++--
 drivers/staging/media/imx/imx-media-capture.c | 24 +++++++++----------
 drivers/staging/media/imx/imx-media-csi.c     |  5 ++--
 drivers/staging/media/imx/imx-media-utils.c   | 20 ++++------------
 drivers/staging/media/imx/imx-media.h         |  6 ++---
 5 files changed, 23 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index 8242d88dfb82..afaa3a8b15e9 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -910,7 +910,6 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
 	const struct imx_media_pixfmt *cc;
 	struct v4l2_pix_format vdev_fmt;
 	struct v4l2_mbus_framefmt *fmt;
-	struct v4l2_rect vdev_compose;
 	int ret = 0;
 
 	if (sdformat->pad >= PRPENCVF_NUM_PADS)
@@ -952,11 +951,11 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
 	priv->cc[sdformat->pad] = cc;
 
 	/* propagate output pad format to capture device */
-	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt, &vdev_compose,
+	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
 				      &priv->format_mbus[PRPENCVF_SRC_PAD],
 				      priv->cc[PRPENCVF_SRC_PAD]);
 	mutex_unlock(&priv->lock);
-	imx_media_capture_device_set_format(vdev, &vdev_fmt, &vdev_compose);
+	imx_media_capture_device_set_format(vdev, &vdev_fmt);
 
 	return 0;
 out:
diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 335084a6b0cd..555f6204660b 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -205,8 +205,7 @@ static int capture_g_fmt_vid_cap(struct file *file, void *fh,
 
 static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
 				     struct v4l2_subdev_format *fmt_src,
-				     struct v4l2_format *f,
-				     struct v4l2_rect *compose)
+				     struct v4l2_format *f)
 {
 	const struct imx_media_pixfmt *cc, *cc_src;
 
@@ -246,8 +245,7 @@ static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
 		}
 	}
 
-	imx_media_mbus_fmt_to_pix_fmt(&f->fmt.pix, compose,
-				      &fmt_src->format, cc);
+	imx_media_mbus_fmt_to_pix_fmt(&f->fmt.pix, &fmt_src->format, cc);
 
 	return 0;
 }
@@ -265,7 +263,7 @@ static int capture_try_fmt_vid_cap(struct file *file, void *fh,
 	if (ret)
 		return ret;
 
-	return __capture_try_fmt_vid_cap(priv, &fmt_src, f, NULL);
+	return __capture_try_fmt_vid_cap(priv, &fmt_src, f);
 }
 
 static int capture_s_fmt_vid_cap(struct file *file, void *fh,
@@ -273,7 +271,6 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
 {
 	struct capture_priv *priv = video_drvdata(file);
 	struct v4l2_subdev_format fmt_src;
-	struct v4l2_rect compose;
 	int ret;
 
 	if (vb2_is_busy(&priv->q)) {
@@ -287,14 +284,17 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
 	if (ret)
 		return ret;
 
-	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f, &compose);
+	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f);
 	if (ret)
 		return ret;
 
 	priv->vdev.fmt.fmt.pix = f->fmt.pix;
 	priv->vdev.cc = imx_media_find_format(f->fmt.pix.pixelformat,
 					      CS_SEL_ANY, true);
-	priv->vdev.compose = compose;
+	priv->vdev.compose.left = 0;
+	priv->vdev.compose.top = 0;
+	priv->vdev.compose.width = fmt_src.format.width;
+	priv->vdev.compose.height = fmt_src.format.height;
 
 	return 0;
 }
@@ -655,8 +655,7 @@ static struct video_device capture_videodev = {
 };
 
 void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
-					 const struct v4l2_pix_format *pix,
-					 const struct v4l2_rect *compose)
+					 struct v4l2_pix_format *pix)
 {
 	struct capture_priv *priv = to_capture_priv(vdev);
 
@@ -664,7 +663,6 @@ void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
 	priv->vdev.fmt.fmt.pix = *pix;
 	priv->vdev.cc = imx_media_find_format(pix->pixelformat, CS_SEL_ANY,
 					      true);
-	priv->vdev.compose = *compose;
 	mutex_unlock(&priv->mutex);
 }
 EXPORT_SYMBOL_GPL(imx_media_capture_device_set_format);
@@ -770,8 +768,10 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
 	}
 
 	vdev->fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
-	imx_media_mbus_fmt_to_pix_fmt(&vdev->fmt.fmt.pix, &vdev->compose,
+	imx_media_mbus_fmt_to_pix_fmt(&vdev->fmt.fmt.pix,
 				      &fmt_src.format, NULL);
+	vdev->compose.width = fmt_src.format.width;
+	vdev->compose.height = fmt_src.format.height;
 	vdev->cc = imx_media_find_format(vdev->fmt.fmt.pix.pixelformat,
 					 CS_SEL_ANY, false);
 
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index c70fa6b509ae..09b89a72eaa2 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1512,7 +1512,6 @@ static int csi_set_fmt(struct v4l2_subdev *sd,
 	struct v4l2_pix_format vdev_fmt;
 	struct v4l2_mbus_framefmt *fmt;
 	struct v4l2_rect *crop, *compose;
-	struct v4l2_rect vdev_compose;
 	int ret;
 
 	if (sdformat->pad >= CSI_NUM_PADS)
@@ -1568,11 +1567,11 @@ static int csi_set_fmt(struct v4l2_subdev *sd,
 	priv->cc[sdformat->pad] = cc;
 
 	/* propagate IDMAC output pad format to capture device */
-	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt, &vdev_compose,
+	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
 				      &priv->format_mbus[CSI_SRC_PAD_IDMAC],
 				      priv->cc[CSI_SRC_PAD_IDMAC]);
 	mutex_unlock(&priv->lock);
-	imx_media_capture_device_set_format(vdev, &vdev_fmt, &vdev_compose);
+	imx_media_capture_device_set_format(vdev, &vdev_fmt);
 
 	return 0;
 out:
diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index 8a6e57652402..a80ef0b087ad 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -577,8 +577,7 @@ void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
 EXPORT_SYMBOL_GPL(imx_media_fill_default_mbus_fields);
 
 int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
-				  struct v4l2_rect *compose,
-				  const struct v4l2_mbus_framefmt *mbus,
+				  struct v4l2_mbus_framefmt *mbus,
 				  const struct imx_media_pixfmt *cc)
 {
 	u32 width;
@@ -625,17 +624,6 @@ int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
 	pix->sizeimage = cc->planar ? ((stride * pix->height * cc->bpp) >> 3) :
 			 stride * pix->height;
 
-	/*
-	 * set capture compose rectangle, which is fixed to the
-	 * source subdevice mbus format.
-	 */
-	if (compose) {
-		compose->left = 0;
-		compose->top = 0;
-		compose->width = mbus->width;
-		compose->height = mbus->height;
-	}
-
 	return 0;
 }
 EXPORT_SYMBOL_GPL(imx_media_mbus_fmt_to_pix_fmt);
@@ -647,11 +635,13 @@ int imx_media_mbus_fmt_to_ipu_image(struct ipu_image *image,
 
 	memset(image, 0, sizeof(*image));
 
-	ret = imx_media_mbus_fmt_to_pix_fmt(&image->pix, &image->rect,
-					    mbus, NULL);
+	ret = imx_media_mbus_fmt_to_pix_fmt(&image->pix, mbus, NULL);
 	if (ret)
 		return ret;
 
+	image->rect.width = mbus->width;
+	image->rect.height = mbus->height;
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(imx_media_mbus_fmt_to_ipu_image);
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index 71e20f53ed7b..ddea972b7bc4 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -174,8 +174,7 @@ void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
 					struct v4l2_mbus_framefmt *fmt,
 					bool ic_route);
 int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
-				  struct v4l2_rect *compose,
-				  const struct v4l2_mbus_framefmt *mbus,
+				  struct v4l2_mbus_framefmt *mbus,
 				  const struct imx_media_pixfmt *cc);
 int imx_media_mbus_fmt_to_ipu_image(struct ipu_image *image,
 				    struct v4l2_mbus_framefmt *mbus);
@@ -280,8 +279,7 @@ void imx_media_capture_device_unregister(struct imx_media_video_dev *vdev);
 struct imx_media_buffer *
 imx_media_capture_device_next_buf(struct imx_media_video_dev *vdev);
 void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
-					 const struct v4l2_pix_format *pix,
-					 const struct v4l2_rect *compose);
+					 struct v4l2_pix_format *pix);
 void imx_media_capture_device_error(struct imx_media_video_dev *vdev);
 
 /* subdev group ids */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
