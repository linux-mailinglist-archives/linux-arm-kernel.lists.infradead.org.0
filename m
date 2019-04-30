Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA210102BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 00:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KrBkbDgNOkI1pnBsM+G5agnPjG7bIVWNB1LpFuLzNb8=; b=JwPpY3Jewxkv+V8VWrc0fDQjlU
	WUNoxyNWDoCFIhMMK1dvzyqaleU7Pmu4yalDxIQ+jo00KV6Gk155XH23xjzhMu5qpSA7cidfMOd5h
	s23IoUjs2mX/GH6qC71N+/d8+nH5wFGov+WIjIPZCCkMWUcMbVrHQV5yQVoV0cMf4JPdEBS/a8w2k
	xQLtspMC9+opD++kprjtFG6E2TPKyWG4IEzwCW75b2nWu1V9R9dvGpn24VhvdNMYGiRjw4h9WQm0g
	8+VAbEVgG3ZmWTNdu/lGhjiwvUGFUmyzC4fB8rFPaf6k1+IOtDLEv6i8XSo1W/rvG+ej10aW6074f
	zlzo/Nuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLbb2-0002wQ-Tc; Tue, 30 Apr 2019 22:51:32 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLba9-00024W-27
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 22:50:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id d31so7518498pgl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 15:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5N9AhmSWy8xoosRgxDfoKfVo/9avMWjXfLQSHnkBHOc=;
 b=s2u/lCAMT8DBQQW+U5vU582YOK87UiS9ko95wnVXoRdN+oYfu1FJ1181T5fo7l9LWB
 Fgqiayl9ck2Ahi+oiFDSncj7AT4Jn3nnAK7nSLL1m0ysU2MRzwG3OeWGyfQJcC//BuaE
 7D2TvJjGecHyHyIXgrVfzFn1bSr0+lrhxjI+wtrDM+YKeigMrfW2CWkEADifX9IPZE4W
 q6oWwcAaG1HWDZFwEAx/NqLEskLpNUy3vtQRFNSwH6fYxd6DRZ/rFRnmVO/TD2ZgYqqc
 /y39G5n2gtIzOlhA6Xd8hEChl3sLfMUC56TqFibAlw7Eq7AvYihjn2tDwPVU4vEbqfNN
 0n6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5N9AhmSWy8xoosRgxDfoKfVo/9avMWjXfLQSHnkBHOc=;
 b=f1cALOP59UAjpgm4gUUqYKT1A36MlQOVeqjyjrqxZhJDQ+hp+WwPn1N+HQf5J/xhIc
 9nzI+eAA6T72RMQkQ7KCQsmi2nTPiCgW8CQ3PzKzNMihiZPMvy/mcTAYOie1Kw/BFxoD
 OPnQo8BOaWwa0XpS/k7wFX7jyvvCj2ThiOfMUkJJI3ldyBUCk/pSa/srUYRIKsVsMUiW
 XM+zviq6nZulgNGtb4q8b4ttVGcH3SsZ/E1GnAX4Y4MwQ6IyoO5lyWf0E8hQRriZjQ6F
 hZsa9kH2scbESRYrYFGJKABozeGmNsj/O1P/0CrxFRp9Ddj2rKGyOwK591eQI1zjzi1j
 alqg==
X-Gm-Message-State: APjAAAXNkTlO8PH9TfsRNKIQXuMajRqF68YdRRa0txZhp2W8Lt3qee9D
 iuA4jHk8lypmysvjAoDLZjo=
X-Google-Smtp-Source: APXvYqy7XV0p+VsJvgh2Da+Rmqdl0FmS4iWH8Ltu1e6SmtkZSben6WThBXGuOQ5e9vRlCWAre6JbXA==
X-Received: by 2002:a63:314a:: with SMTP id x71mr20978595pgx.385.1556664636202; 
 Tue, 30 Apr 2019 15:50:36 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id l23sm9804654pgj.36.2019.04.30.15.50.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 15:50:35 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 5/8] media: staging/imx: Remove capture_device_set_format
Date: Tue, 30 Apr 2019 15:50:15 -0700
Message-Id: <20190430225018.30252-6-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430225018.30252-1-slongerbeam@gmail.com>
References: <20190430225018.30252-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_155037_262280_A64C648D 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_RED              Contains an URL listed in the URIBL redlist
 [URIs: compose.top]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 open list <linux-kernel@vger.kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Don't propagate the source pad format to the connected capture device.
It's now the responsibility of userspace to call VIDIOC_S_FMT on the
capture device to ensure the capture format and compose rectangle
are compatible with the connected source. To check this, validate
the capture format with the source before streaming starts.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-ic-prpencvf.c   | 16 +----
 drivers/staging/media/imx/imx-media-capture.c | 64 +++++++++++++------
 drivers/staging/media/imx/imx-media-csi.c     | 16 +----
 drivers/staging/media/imx/imx-media.h         |  2 -
 drivers/staging/media/imx/imx7-media-csi.c    | 17 +----
 5 files changed, 50 insertions(+), 65 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index afaa3a8b15e9..63334fd61492 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -906,9 +906,7 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
 		       struct v4l2_subdev_format *sdformat)
 {
 	struct prp_priv *priv = sd_to_priv(sd);
-	struct imx_media_video_dev *vdev = priv->vdev;
 	const struct imx_media_pixfmt *cc;
-	struct v4l2_pix_format vdev_fmt;
 	struct v4l2_mbus_framefmt *fmt;
 	int ret = 0;
 
@@ -945,19 +943,9 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
 			priv->cc[PRPENCVF_SRC_PAD] = outcc;
 	}
 
-	if (sdformat->which == V4L2_SUBDEV_FORMAT_TRY)
-		goto out;
-
-	priv->cc[sdformat->pad] = cc;
+	if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
+		priv->cc[sdformat->pad] = cc;
 
-	/* propagate output pad format to capture device */
-	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
-				      &priv->format_mbus[PRPENCVF_SRC_PAD],
-				      priv->cc[PRPENCVF_SRC_PAD]);
-	mutex_unlock(&priv->lock);
-	imx_media_capture_device_set_format(vdev, &vdev_fmt);
-
-	return 0;
 out:
 	mutex_unlock(&priv->lock);
 	return ret;
diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index 555f6204660b..b77a67bda47c 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -205,7 +205,8 @@ static int capture_g_fmt_vid_cap(struct file *file, void *fh,
 
 static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
 				     struct v4l2_subdev_format *fmt_src,
-				     struct v4l2_format *f)
+				     struct v4l2_format *f,
+				     struct v4l2_rect *compose)
 {
 	const struct imx_media_pixfmt *cc, *cc_src;
 
@@ -247,6 +248,13 @@ static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
 
 	imx_media_mbus_fmt_to_pix_fmt(&f->fmt.pix, &fmt_src->format, cc);
 
+	if (compose) {
+		compose->left = 0;
+		compose->top = 0;
+		compose->width = fmt_src->format.width;
+		compose->height = fmt_src->format.height;
+	}
+
 	return 0;
 }
 
@@ -263,7 +271,7 @@ static int capture_try_fmt_vid_cap(struct file *file, void *fh,
 	if (ret)
 		return ret;
 
-	return __capture_try_fmt_vid_cap(priv, &fmt_src, f);
+	return __capture_try_fmt_vid_cap(priv, &fmt_src, f, NULL);
 }
 
 static int capture_s_fmt_vid_cap(struct file *file, void *fh,
@@ -271,6 +279,7 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
 {
 	struct capture_priv *priv = video_drvdata(file);
 	struct v4l2_subdev_format fmt_src;
+	struct v4l2_rect compose;
 	int ret;
 
 	if (vb2_is_busy(&priv->q)) {
@@ -284,17 +293,14 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
 	if (ret)
 		return ret;
 
-	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f);
+	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f, &compose);
 	if (ret)
 		return ret;
 
 	priv->vdev.fmt.fmt.pix = f->fmt.pix;
 	priv->vdev.cc = imx_media_find_format(f->fmt.pix.pixelformat,
 					      CS_SEL_ANY, true);
-	priv->vdev.compose.left = 0;
-	priv->vdev.compose.top = 0;
-	priv->vdev.compose.width = fmt_src.format.width;
-	priv->vdev.compose.height = fmt_src.format.height;
+	priv->vdev.compose = compose;
 
 	return 0;
 }
@@ -524,6 +530,33 @@ static void capture_buf_queue(struct vb2_buffer *vb)
 	spin_unlock_irqrestore(&priv->q_lock, flags);
 }
 
+static int capture_validate_fmt(struct capture_priv *priv)
+{
+	struct v4l2_subdev_format fmt_src;
+	struct v4l2_rect compose;
+	struct v4l2_format f;
+	int ret;
+
+	fmt_src.pad = priv->src_sd_pad;
+	fmt_src.which = V4L2_SUBDEV_FORMAT_ACTIVE;
+	ret = v4l2_subdev_call(priv->src_sd, pad, get_fmt, NULL, &fmt_src);
+	if (ret)
+		return ret;
+
+	v4l2_fill_pix_format(&f.fmt.pix, &fmt_src.format);
+
+	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, &f, &compose);
+	if (ret)
+		return ret;
+
+	return (priv->vdev.fmt.fmt.pix.width != f.fmt.pix.width ||
+		priv->vdev.fmt.fmt.pix.height != f.fmt.pix.height ||
+		priv->vdev.cc->cs !=
+		ipu_pixelformat_to_colorspace(f.fmt.pix.pixelformat) ||
+		priv->vdev.compose.width != compose.width ||
+		priv->vdev.compose.height != compose.height) ? -EINVAL : 0;
+}
+
 static int capture_start_streaming(struct vb2_queue *vq, unsigned int count)
 {
 	struct capture_priv *priv = vb2_get_drv_priv(vq);
@@ -531,6 +564,10 @@ static int capture_start_streaming(struct vb2_queue *vq, unsigned int count)
 	unsigned long flags;
 	int ret;
 
+	ret = capture_validate_fmt(priv);
+	if (ret)
+		goto return_bufs;
+
 	ret = imx_media_pipeline_set_stream(priv->md, &priv->src_sd->entity,
 					    true);
 	if (ret) {
@@ -654,19 +691,6 @@ static struct video_device capture_videodev = {
 	.device_caps	= V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING,
 };
 
-void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
-					 struct v4l2_pix_format *pix)
-{
-	struct capture_priv *priv = to_capture_priv(vdev);
-
-	mutex_lock(&priv->mutex);
-	priv->vdev.fmt.fmt.pix = *pix;
-	priv->vdev.cc = imx_media_find_format(pix->pixelformat, CS_SEL_ANY,
-					      true);
-	mutex_unlock(&priv->mutex);
-}
-EXPORT_SYMBOL_GPL(imx_media_capture_device_set_format);
-
 struct imx_media_buffer *
 imx_media_capture_device_next_buf(struct imx_media_video_dev *vdev)
 {
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 09b89a72eaa2..68c2b1a3066a 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1506,10 +1506,8 @@ static int csi_set_fmt(struct v4l2_subdev *sd,
 		       struct v4l2_subdev_format *sdformat)
 {
 	struct csi_priv *priv = v4l2_get_subdevdata(sd);
-	struct imx_media_video_dev *vdev = priv->vdev;
 	struct v4l2_fwnode_endpoint upstream_ep = { .bus_type = 0 };
 	const struct imx_media_pixfmt *cc;
-	struct v4l2_pix_format vdev_fmt;
 	struct v4l2_mbus_framefmt *fmt;
 	struct v4l2_rect *crop, *compose;
 	int ret;
@@ -1561,19 +1559,9 @@ static int csi_set_fmt(struct v4l2_subdev *sd,
 		}
 	}
 
-	if (sdformat->which == V4L2_SUBDEV_FORMAT_TRY)
-		goto out;
-
-	priv->cc[sdformat->pad] = cc;
+	if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
+		priv->cc[sdformat->pad] = cc;
 
-	/* propagate IDMAC output pad format to capture device */
-	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
-				      &priv->format_mbus[CSI_SRC_PAD_IDMAC],
-				      priv->cc[CSI_SRC_PAD_IDMAC]);
-	mutex_unlock(&priv->lock);
-	imx_media_capture_device_set_format(vdev, &vdev_fmt);
-
-	return 0;
 out:
 	mutex_unlock(&priv->lock);
 	return ret;
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index ddea972b7bc4..f928697b0491 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -278,8 +278,6 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev);
 void imx_media_capture_device_unregister(struct imx_media_video_dev *vdev);
 struct imx_media_buffer *
 imx_media_capture_device_next_buf(struct imx_media_video_dev *vdev);
-void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
-					 struct v4l2_pix_format *pix);
 void imx_media_capture_device_error(struct imx_media_video_dev *vdev);
 
 /* subdev group ids */
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index e2622c05a793..0ec4c57259f9 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1031,10 +1031,8 @@ static int imx7_csi_set_fmt(struct v4l2_subdev *sd,
 			    struct v4l2_subdev_format *sdformat)
 {
 	struct imx7_csi *csi = v4l2_get_subdevdata(sd);
-	struct imx_media_video_dev *vdev = csi->vdev;
 	const struct imx_media_pixfmt *outcc;
 	struct v4l2_mbus_framefmt *outfmt;
-	struct v4l2_pix_format vdev_fmt;
 	const struct imx_media_pixfmt *cc;
 	struct v4l2_mbus_framefmt *fmt;
 	struct v4l2_subdev_format format;
@@ -1079,19 +1077,8 @@ static int imx7_csi_set_fmt(struct v4l2_subdev *sd,
 			csi->cc[IMX7_CSI_PAD_SRC] = outcc;
 	}
 
-	if (sdformat->which == V4L2_SUBDEV_FORMAT_TRY)
-		goto out_unlock;
-
-	csi->cc[sdformat->pad] = cc;
-
-	/* propagate output pad format to capture device */
-	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
-				      &csi->format_mbus[IMX7_CSI_PAD_SRC],
-				      csi->cc[IMX7_CSI_PAD_SRC]);
-	mutex_unlock(&csi->lock);
-	imx_media_capture_device_set_format(vdev, &vdev_fmt);
-
-	return 0;
+	if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
+		csi->cc[sdformat->pad] = cc;
 
 out_unlock:
 	mutex_unlock(&csi->lock);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
