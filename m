Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1335D58AA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 21:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G/QPeGEtPCVp9eUQTnSnIMqe+Tbg94e3WAzSRSxMBas=; b=dPs9pIhdMV1miDxbuPvV6iYtJF
	4/Lkybuy/pPPik2nSWGbez3TnbciXyRpj4rVUCDf5raIKEmFEXZU+rowqXYvWKuUEcs9y2kucOh5Y
	9yRje/CwNmm4CTl+mNkSEdd3jJFFB97c43rysvhWscH6WHHmR6e9beDU3W0LzxocGBqv1VMBdIWYd
	T74ffNJv1w614JnNnBKjjLIXaQN7HMA+AHKH9/s8RVVOS2pKlcbPlba5nblmEcDsbf88O7kZw/M5S
	K5WBtEclmCDEJrFK6dLcACbiDWt785amCHqcDwqQ1YzdBw9yzXZ5XHedfNSiOlnsU54idGhwz0A77
	qGuEHXHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZhu-0001FB-MU; Thu, 27 Jun 2019 19:05:18 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZv-0002Rm-1d; Thu, 27 Jun 2019 18:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661812;
 bh=sHAArv7aTA1gYYdUzr/Wg7yqIZekpkzvu/aFSlylfxc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=MVTr5HzY3ZyeVMlLVrzCfYmTfRTpC2/ZBYJQwAKNN0M97JVJcKnvsHtfd0MNjj5+o
 mni3KkA2FfruiC/87hAIZonCBKbSAqVxfx+oTn/i4QSPisqD1LzdBQNgAw7YFWv3zX
 R+feeC6OT3OUS7OfI/ypTntVRXYyUXezax2nI4yk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0Lw285-1icpU924zt-017oWc; Thu, 27 Jun 2019 20:56:52 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 10/31] staging: bcm2835-camera: Reduce length of enum names
Date: Thu, 27 Jun 2019 20:56:07 +0200
Message-Id: <1561661788-22744-11-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:z1+7PMipwPHKd6Dz6+DCi0WAepEVkOa92+QAaQR8hRP1ApBrApP
 euTNiBoUvDKl/OE0oNc0GV7ohIUQGes01EzUeE7R/8IP06jrhOhkIZO+uw8fw5mklR/LMQ0
 7RRmuyVYME885X3FlPfzQePb3ym99I1GG9u5EWQNH/444GbvWfT9/bVEXCp55A3tnq79wep
 cVlZWqSrcR+iAoF+cwf5w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QiaTQv4Xfmc=:zb4MzAm1cAhImH706h9nVO
 J1WhAeON0W4pXV/BR1rfwLQaVSjuzx0pDZg79St7FYVYAHF0IliQ7PqpVGgdxDxYn6F7HtrnL
 CyXeVqOyeVAkR8pasCwTDSoK/AbQWtLEO7GzDl8hJ9Dn45vXvihfcGkJKN3gJ9pC65IWoCeV0
 MGIiiY7RZJaiTWIerqzOCnvDEodRljBacOD74/zh0pwA+kD4+4amm7U1XN0HMht9qljHBCQzj
 3w5o01KSvccjoZkQw2bzHaxIn9+pQIiYejd/wiG6/mlVEOethTETSgkVDgWKUnRwFQ7OvLcYj
 m94/ptzSFqfmdrkqFSiEnR+DjVdiqfJID418cqeJja8HdvOI+kvHEKgdrxMAatJWDR7wIRwk9
 A0ylaC+GmG6EdqeXtkPjPivvfkbWZh+JD+IOR4Hs6tK798dE1MQqaCGytx+Z+RCmyi08RCHUG
 BuMWN3AOtoXisl41HVOeUne6Ar+13KGV6ULVs6kBLHh8FWja8y39PvgPXX9xxqt4FN7s6FcBG
 VxWqGGhu1udjA08cB3loWxv/MqPUgxGGSj4X3yfdkPT6ePLDqLpzGcOqXUQ0gZg9sKmhUlGQ8
 +CuJkZgBsJCrltT0zRdoQs/o713n8qjhRvoFwu/1/6snJUDWGirpHaPhz+VWZKsox5WJ+OpXJ
 Fbv34jUxeIFDKeIhBzEx5eBdwpMGI0dk6C1ko5AoX8Dg9X2mhLUmkL40F8moTINkWRZTy5mOh
 RUmZHcWAWB0ecYSkTDd+xKq/WtbJee180U4KWaXVNmYpF+jD+GFQfpwTisHR0hheQYMcvVOaE
 H3kUUP8RfkyP3zNx5kAVIC4d4wsPIFPsoEJVTrMZCirBaXwG4mX74W2/jEvprBEs1/X8T79P7
 VUf7Xtndlt1Q4PfSKQcMTAwCeLPdcgLTgKfjWHXbvv5A8jFfjM6gYSOwxWgZE2Runzvb8VuIj
 l3IqADS5p8+hpxVQMNXo3mdJmK32hQm7Wf0D1nSE56iWzxi6sCeQwCMNvtC1+uoLa0RhgpGt3
 BBMXr3DvOuTN1XNZi2mc3hzjWVorD/2m2WNuBqbU0vUXNvhVvORrctMTW43Ewff12nVoi87tc
 C6/DTi6661i7IM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115703_535429_4CE9C916 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

We have numerous lines over 80 chars, or oddly split. Many
of these are due to using long enum names such as
MMAL_COMPONENT_CAMERA.
Reduce the length of these enum names.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 156 +++++++++++----------
 .../vc04_services/bcm2835-camera/bcm2835-camera.h  |  20 +--
 .../vc04_services/bcm2835-camera/controls.c        |  47 +++----
 3 files changed, 111 insertions(+), 112 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 814deee..23f7754 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -80,7 +80,7 @@ static struct mmal_fmt formats[] = {
 		.flags = 0,
 		.mmal = MMAL_ENCODING_I420,
 		.depth = 12,
-		.mmal_component = MMAL_COMPONENT_CAMERA,
+		.mmal_component = COMP_CAMERA,
 		.ybbp = 1,
 		.remove_padding = 1,
 	}, {
@@ -89,7 +89,7 @@ static struct mmal_fmt formats[] = {
 		.flags = 0,
 		.mmal = MMAL_ENCODING_YUYV,
 		.depth = 16,
-		.mmal_component = MMAL_COMPONENT_CAMERA,
+		.mmal_component = COMP_CAMERA,
 		.ybbp = 2,
 		.remove_padding = 0,
 	}, {
@@ -98,7 +98,7 @@ static struct mmal_fmt formats[] = {
 		.flags = 0,
 		.mmal = MMAL_ENCODING_RGB24,
 		.depth = 24,
-		.mmal_component = MMAL_COMPONENT_CAMERA,
+		.mmal_component = COMP_CAMERA,
 		.ybbp = 3,
 		.remove_padding = 0,
 	}, {
@@ -107,7 +107,7 @@ static struct mmal_fmt formats[] = {
 		.flags = V4L2_FMT_FLAG_COMPRESSED,
 		.mmal = MMAL_ENCODING_JPEG,
 		.depth = 8,
-		.mmal_component = MMAL_COMPONENT_IMAGE_ENCODE,
+		.mmal_component = COMP_IMAGE_ENCODE,
 		.ybbp = 0,
 		.remove_padding = 0,
 	}, {
@@ -116,7 +116,7 @@ static struct mmal_fmt formats[] = {
 		.flags = V4L2_FMT_FLAG_COMPRESSED,
 		.mmal = MMAL_ENCODING_H264,
 		.depth = 8,
-		.mmal_component = MMAL_COMPONENT_VIDEO_ENCODE,
+		.mmal_component = COMP_VIDEO_ENCODE,
 		.ybbp = 0,
 		.remove_padding = 0,
 	}, {
@@ -125,7 +125,7 @@ static struct mmal_fmt formats[] = {
 		.flags = V4L2_FMT_FLAG_COMPRESSED,
 		.mmal = MMAL_ENCODING_MJPEG,
 		.depth = 8,
-		.mmal_component = MMAL_COMPONENT_VIDEO_ENCODE,
+		.mmal_component = COMP_VIDEO_ENCODE,
 		.ybbp = 0,
 		.remove_padding = 0,
 	}, {
@@ -134,7 +134,7 @@ static struct mmal_fmt formats[] = {
 		.flags = 0,
 		.mmal = MMAL_ENCODING_YVYU,
 		.depth = 16,
-		.mmal_component = MMAL_COMPONENT_CAMERA,
+		.mmal_component = COMP_CAMERA,
 		.ybbp = 2,
 		.remove_padding = 0,
 	}, {
@@ -143,7 +143,7 @@ static struct mmal_fmt formats[] = {
 		.flags = 0,
 		.mmal = MMAL_ENCODING_VYUY,
 		.depth = 16,
-		.mmal_component = MMAL_COMPONENT_CAMERA,
+		.mmal_component = COMP_CAMERA,
 		.ybbp = 2,
 		.remove_padding = 0,
 	}, {
@@ -152,7 +152,7 @@ static struct mmal_fmt formats[] = {
 		.flags = 0,
 		.mmal = MMAL_ENCODING_UYVY,
 		.depth = 16,
-		.mmal_component = MMAL_COMPONENT_CAMERA,
+		.mmal_component = COMP_CAMERA,
 		.ybbp = 2,
 		.remove_padding = 0,
 	}, {
@@ -161,7 +161,7 @@ static struct mmal_fmt formats[] = {
 		.flags = 0,
 		.mmal = MMAL_ENCODING_NV12,
 		.depth = 12,
-		.mmal_component = MMAL_COMPONENT_CAMERA,
+		.mmal_component = COMP_CAMERA,
 		.ybbp = 1,
 		.remove_padding = 1,
 	}, {
@@ -170,7 +170,7 @@ static struct mmal_fmt formats[] = {
 		.flags = 0,
 		.mmal = MMAL_ENCODING_BGR24,
 		.depth = 24,
-		.mmal_component = MMAL_COMPONENT_CAMERA,
+		.mmal_component = COMP_CAMERA,
 		.ybbp = 3,
 		.remove_padding = 0,
 	}, {
@@ -179,7 +179,7 @@ static struct mmal_fmt formats[] = {
 		.flags = 0,
 		.mmal = MMAL_ENCODING_YV12,
 		.depth = 12,
-		.mmal_component = MMAL_COMPONENT_CAMERA,
+		.mmal_component = COMP_CAMERA,
 		.ybbp = 1,
 		.remove_padding = 1,
 	}, {
@@ -188,7 +188,7 @@ static struct mmal_fmt formats[] = {
 		.flags = 0,
 		.mmal = MMAL_ENCODING_NV21,
 		.depth = 12,
-		.mmal_component = MMAL_COMPONENT_CAMERA,
+		.mmal_component = COMP_CAMERA,
 		.ybbp = 1,
 		.remove_padding = 1,
 	}, {
@@ -197,7 +197,7 @@ static struct mmal_fmt formats[] = {
 		.flags = 0,
 		.mmal = MMAL_ENCODING_BGRA,
 		.depth = 32,
-		.mmal_component = MMAL_COMPONENT_CAMERA,
+		.mmal_component = COMP_CAMERA,
 		.ybbp = 4,
 		.remove_padding = 0,
 	},
@@ -313,7 +313,7 @@ static void buffer_cleanup(struct vb2_buffer *vb)
 static inline bool is_capturing(struct bm2835_mmal_dev *dev)
 {
 	return dev->capture.camera_port ==
-	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
+	    &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE];
 }

 static void buffer_cb(struct vchiq_mmal_instance *instance,
@@ -422,7 +422,7 @@ static int enable_camera(struct bm2835_mmal_dev *dev)
 	if (!dev->camera_use_count) {
 		ret = vchiq_mmal_port_parameter_set(
 			dev->instance,
-			&dev->component[MMAL_COMPONENT_CAMERA]->control,
+			&dev->component[COMP_CAMERA]->control,
 			MMAL_PARAMETER_CAMERA_NUM, &dev->camera_num,
 			sizeof(dev->camera_num));
 		if (ret < 0) {
@@ -433,7 +433,7 @@ static int enable_camera(struct bm2835_mmal_dev *dev)

 		ret = vchiq_mmal_component_enable(
 				dev->instance,
-				dev->component[MMAL_COMPONENT_CAMERA]);
+				dev->component[COMP_CAMERA]);
 		if (ret < 0) {
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed enabling camera, ret %d\n", ret);
@@ -465,7 +465,7 @@ static int disable_camera(struct bm2835_mmal_dev *dev)
 		ret =
 		    vchiq_mmal_component_disable(
 				dev->instance,
-				dev->component[MMAL_COMPONENT_CAMERA]);
+				dev->component[COMP_CAMERA]);
 		if (ret < 0) {
 			v4l2_err(&dev->v4l2_dev,
 				 "Failed disabling camera, ret %d\n", ret);
@@ -473,7 +473,7 @@ static int disable_camera(struct bm2835_mmal_dev *dev)
 		}
 		vchiq_mmal_port_parameter_set(
 			dev->instance,
-			&dev->component[MMAL_COMPONENT_CAMERA]->control,
+			&dev->component[COMP_CAMERA]->control,
 			MMAL_PARAMETER_CAMERA_NUM, &i,
 			sizeof(i));
 	}
@@ -525,7 +525,7 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 	/* if the preview is not already running, wait for a few frames for AGC
 	 * to settle down.
 	 */
-	if (!dev->component[MMAL_COMPONENT_PREVIEW]->enabled)
+	if (!dev->component[COMP_PREVIEW]->enabled)
 		msleep(300);

 	/* enable the connection from camera to encoder (if applicable) */
@@ -748,9 +748,9 @@ static int vidioc_s_fmt_vid_overlay(struct file *file, void *priv,
 	vidioc_try_fmt_vid_overlay(file, priv, f);

 	dev->overlay = f->fmt.win;
-	if (dev->component[MMAL_COMPONENT_PREVIEW]->enabled) {
+	if (dev->component[COMP_PREVIEW]->enabled) {
 		set_overlay_params(dev,
-				   &dev->component[MMAL_COMPONENT_PREVIEW]->input[0]);
+				   &dev->component[COMP_PREVIEW]->input[0]);
 	}

 	return 0;
@@ -763,12 +763,12 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
 	struct vchiq_mmal_port *src;
 	struct vchiq_mmal_port *dst;

-	if ((on && dev->component[MMAL_COMPONENT_PREVIEW]->enabled) ||
-	    (!on && !dev->component[MMAL_COMPONENT_PREVIEW]->enabled))
+	if ((on && dev->component[COMP_PREVIEW]->enabled) ||
+	    (!on && !dev->component[COMP_PREVIEW]->enabled))
 		return 0;	/* already in requested state */

 	src =
-	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
+	    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];

 	if (!on) {
 		/* disconnect preview ports and disable component */
@@ -780,14 +780,14 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)
 		if (ret >= 0)
 			ret = vchiq_mmal_component_disable(
 					dev->instance,
-					dev->component[MMAL_COMPONENT_PREVIEW]);
+					dev->component[COMP_PREVIEW]);

 		disable_camera(dev);
 		return ret;
 	}

 	/* set preview port format and connect it to output */
-	dst = &dev->component[MMAL_COMPONENT_PREVIEW]->input[0];
+	dst = &dev->component[COMP_PREVIEW]->input[0];

 	ret = vchiq_mmal_port_set_format(dev->instance, src);
 	if (ret < 0)
@@ -804,7 +804,7 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)

 	ret = vchiq_mmal_component_enable(
 			dev->instance,
-			dev->component[MMAL_COMPONENT_PREVIEW]);
+			dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		return ret;

@@ -825,7 +825,7 @@ static int vidioc_g_fbuf(struct file *file, void *fh,
 	 */
 	struct bm2835_mmal_dev *dev = video_drvdata(file);
 	struct vchiq_mmal_port *preview_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
+		&dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];

 	a->capability = V4L2_FBUF_CAP_EXTERNOVERLAY |
 			V4L2_FBUF_CAP_GLOBAL_ALPHA;
@@ -1023,27 +1023,29 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 	}
 	/* format dependent port setup */
 	switch (mfmt->mmal_component) {
-	case MMAL_COMPONENT_CAMERA:
+	case COMP_CAMERA:
 		/* Make a further decision on port based on resolution */
 		if (f->fmt.pix.width <= max_video_width &&
 		    f->fmt.pix.height <= max_video_height)
 			camera_port = port =
-			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
+			    &dev->component[COMP_CAMERA]->
+			    output[CAM_PORT_VIDEO];
 		else
 			camera_port = port =
-			    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
+			    &dev->component[COMP_CAMERA]->
+			    output[CAM_PORT_CAPTURE];
 		break;
-	case MMAL_COMPONENT_IMAGE_ENCODE:
-		encode_component = dev->component[MMAL_COMPONENT_IMAGE_ENCODE];
-		port = &dev->component[MMAL_COMPONENT_IMAGE_ENCODE]->output[0];
+	case COMP_IMAGE_ENCODE:
+		encode_component = dev->component[COMP_IMAGE_ENCODE];
+		port = &dev->component[COMP_IMAGE_ENCODE]->output[0];
 		camera_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_CAPTURE];
+		    &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE];
 		break;
-	case MMAL_COMPONENT_VIDEO_ENCODE:
-		encode_component = dev->component[MMAL_COMPONENT_VIDEO_ENCODE];
-		port = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
+	case COMP_VIDEO_ENCODE:
+		encode_component = dev->component[COMP_VIDEO_ENCODE];
+		port = &dev->component[COMP_VIDEO_ENCODE]->output[0];
 		camera_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO];
+		    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO];
 		break;
 	default:
 		break;
@@ -1083,13 +1085,13 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,

 	ret = vchiq_mmal_port_set_format(dev->instance, camera_port);

-	if (!ret &&
-	    camera_port ==
-	    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_VIDEO]) {
+	if (!ret
+	    && camera_port ==
+	    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO]) {
 		bool overlay_enabled =
-		    !!dev->component[MMAL_COMPONENT_PREVIEW]->enabled;
+		    !!dev->component[COMP_PREVIEW]->enabled;
 		struct vchiq_mmal_port *preview_port =
-		    &dev->component[MMAL_COMPONENT_CAMERA]->output[MMAL_CAMERA_PORT_PREVIEW];
+		    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];
 		/* Preview and encode ports need to match on resolution */
 		if (overlay_enabled) {
 			/* Need to disable the overlay before we can update
@@ -1120,7 +1122,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 			ret = vchiq_mmal_port_connect_tunnel(
 				dev->instance,
 				preview_port,
-				&dev->component[MMAL_COMPONENT_PREVIEW]->input[0]);
+				&dev->component[COMP_PREVIEW]->input[0]);
 			if (!ret)
 				ret = vchiq_mmal_port_enable(dev->instance,
 							     preview_port,
@@ -1174,11 +1176,11 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 				port->format.encoding_variant = 0;
 				/* Set any encoding specific parameters */
 				switch (mfmt->mmal_component) {
-				case MMAL_COMPONENT_VIDEO_ENCODE:
+				case COMP_VIDEO_ENCODE:
 					port->format.bitrate =
 					    dev->capture.encode_bitrate;
 					break;
-				case MMAL_COMPONENT_IMAGE_ENCODE:
+				case COMP_IMAGE_ENCODE:
 					/* Could set EXIF parameters here */
 					break;
 				default:
@@ -1549,14 +1551,14 @@ static int mmal_init(struct bm2835_mmal_dev *dev)

 	/* get the camera component ready */
 	ret = vchiq_mmal_component_init(dev->instance, "ril.camera",
-					&dev->component[MMAL_COMPONENT_CAMERA]);
+					&dev->component[COMP_CAMERA]);
 	if (ret < 0)
 		goto unreg_mmal;

-	camera = dev->component[MMAL_COMPONENT_CAMERA];
-	if (camera->outputs < MMAL_CAMERA_PORT_COUNT) {
+	camera = dev->component[COMP_CAMERA];
+	if (camera->outputs < CAM_PORT_COUNT) {
 		v4l2_err(&dev->v4l2_dev, "%s: too few camera outputs %d needed %d\n",
-			 __func__, camera->outputs, MMAL_CAMERA_PORT_COUNT);
+			 __func__, camera->outputs, CAM_PORT_COUNT);
 		ret = -EINVAL;
 		goto unreg_camera;
 	}
@@ -1578,7 +1580,7 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	dev->rgb_bgr_swapped = true;
 	param_size = sizeof(supported_encodings);
 	ret = vchiq_mmal_port_parameter_get(dev->instance,
-					    &camera->output[MMAL_CAMERA_PORT_CAPTURE],
+					    &camera->output[CAM_PORT_CAPTURE],
 					    MMAL_PARAMETER_SUPPORTED_ENCODINGS,
 					    &supported_encodings,
 					    &param_size);
@@ -1599,7 +1601,7 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 			}
 		}
 	}
-	format = &camera->output[MMAL_CAMERA_PORT_PREVIEW].format;
+	format = &camera->output[CAM_PORT_PREVIEW].format;

 	format->encoding = MMAL_ENCODING_OPAQUE;
 	format->encoding_variant = MMAL_ENCODING_I420;
@@ -1613,7 +1615,7 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	format->es->video.frame_rate.num = 0; /* Rely on fps_range */
 	format->es->video.frame_rate.den = 1;

-	format = &camera->output[MMAL_CAMERA_PORT_VIDEO].format;
+	format = &camera->output[CAM_PORT_VIDEO].format;

 	format->encoding = MMAL_ENCODING_OPAQUE;
 	format->encoding_variant = MMAL_ENCODING_I420;
@@ -1627,7 +1629,7 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	format->es->video.frame_rate.num = 0; /* Rely on fps_range */
 	format->es->video.frame_rate.den = 1;

-	format = &camera->output[MMAL_CAMERA_PORT_CAPTURE].format;
+	format = &camera->output[CAM_PORT_CAPTURE].format;

 	format->encoding = MMAL_ENCODING_OPAQUE;

@@ -1651,49 +1653,49 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	/* get the preview component ready */
 	ret = vchiq_mmal_component_init(
 			dev->instance, "ril.video_render",
-			&dev->component[MMAL_COMPONENT_PREVIEW]);
+			&dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		goto unreg_camera;

-	if (dev->component[MMAL_COMPONENT_PREVIEW]->inputs < 1) {
+	if (dev->component[COMP_PREVIEW]->inputs < 1) {
 		ret = -EINVAL;
 		v4l2_err(&dev->v4l2_dev, "%s: too few input ports %d needed %d\n",
-			 __func__, dev->component[MMAL_COMPONENT_PREVIEW]->inputs, 1);
+			 __func__, dev->component[COMP_PREVIEW]->inputs, 1);
 		goto unreg_preview;
 	}

 	/* get the image encoder component ready */
 	ret = vchiq_mmal_component_init(
 		dev->instance, "ril.image_encode",
-		&dev->component[MMAL_COMPONENT_IMAGE_ENCODE]);
+		&dev->component[COMP_IMAGE_ENCODE]);
 	if (ret < 0)
 		goto unreg_preview;

-	if (dev->component[MMAL_COMPONENT_IMAGE_ENCODE]->inputs < 1) {
+	if (dev->component[COMP_IMAGE_ENCODE]->inputs < 1) {
 		ret = -EINVAL;
 		v4l2_err(&dev->v4l2_dev, "%s: too few input ports %d needed %d\n",
-			 __func__, dev->component[MMAL_COMPONENT_IMAGE_ENCODE]->inputs,
+			 __func__, dev->component[COMP_IMAGE_ENCODE]->inputs,
 			 1);
 		goto unreg_image_encoder;
 	}

 	/* get the video encoder component ready */
 	ret = vchiq_mmal_component_init(dev->instance, "ril.video_encode",
-					&dev->component[MMAL_COMPONENT_VIDEO_ENCODE]);
+					&dev->component[COMP_VIDEO_ENCODE]);
 	if (ret < 0)
 		goto unreg_image_encoder;

-	if (dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->inputs < 1) {
+	if (dev->component[COMP_VIDEO_ENCODE]->inputs < 1) {
 		ret = -EINVAL;
 		v4l2_err(&dev->v4l2_dev, "%s: too few input ports %d needed %d\n",
-			 __func__, dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->inputs,
+			 __func__, dev->component[COMP_VIDEO_ENCODE]->inputs,
 			 1);
 		goto unreg_vid_encoder;
 	}

 	{
 		struct vchiq_mmal_port *encoder_port =
-			&dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
+			&dev->component[COMP_VIDEO_ENCODE]->output[0];
 		encoder_port->format.encoding = MMAL_ENCODING_H264;
 		ret = vchiq_mmal_port_set_format(dev->instance,
 						 encoder_port);
@@ -1704,12 +1706,12 @@ static int mmal_init(struct bm2835_mmal_dev *dev)

 		vchiq_mmal_port_parameter_set(
 			dev->instance,
-			&dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->control,
+			&dev->component[COMP_VIDEO_ENCODE]->control,
 			MMAL_PARAMETER_VIDEO_IMMUTABLE_INPUT,
 			&enable, sizeof(enable));

 		vchiq_mmal_port_parameter_set(dev->instance,
-					      &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->control,
+					      &dev->component[COMP_VIDEO_ENCODE]->control,
 					      MMAL_PARAMETER_MINIMISE_FRAGMENTATION,
 					      &enable,
 					      sizeof(enable));
@@ -1727,23 +1729,23 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	pr_err("Cleanup: Destroy video encoder\n");
 	vchiq_mmal_component_finalise(
 		dev->instance,
-		dev->component[MMAL_COMPONENT_VIDEO_ENCODE]);
+		dev->component[COMP_VIDEO_ENCODE]);

 unreg_image_encoder:
 	pr_err("Cleanup: Destroy image encoder\n");
 	vchiq_mmal_component_finalise(
 		dev->instance,
-		dev->component[MMAL_COMPONENT_IMAGE_ENCODE]);
+		dev->component[COMP_IMAGE_ENCODE]);

 unreg_preview:
 	pr_err("Cleanup: Destroy video render\n");
 	vchiq_mmal_component_finalise(dev->instance,
-				      dev->component[MMAL_COMPONENT_PREVIEW]);
+				      dev->component[COMP_PREVIEW]);

 unreg_camera:
 	pr_err("Cleanup: Destroy camera\n");
 	vchiq_mmal_component_finalise(dev->instance,
-				      dev->component[MMAL_COMPONENT_CAMERA]);
+				      dev->component[COMP_CAMERA]);

 unreg_mmal:
 	vchiq_mmal_finalise(dev->instance);
@@ -1799,19 +1801,19 @@ static void bcm2835_cleanup_instance(struct bm2835_mmal_dev *dev)
 					     dev->capture.encode_component);
 	}
 	vchiq_mmal_component_disable(dev->instance,
-				     dev->component[MMAL_COMPONENT_CAMERA]);
+				     dev->component[COMP_CAMERA]);

 	vchiq_mmal_component_finalise(dev->instance,
-				      dev->component[MMAL_COMPONENT_VIDEO_ENCODE]);
+				      dev->component[COMP_VIDEO_ENCODE]);

 	vchiq_mmal_component_finalise(dev->instance,
-				      dev->component[MMAL_COMPONENT_IMAGE_ENCODE]);
+				      dev->component[COMP_IMAGE_ENCODE]);

 	vchiq_mmal_component_finalise(dev->instance,
-				      dev->component[MMAL_COMPONENT_PREVIEW]);
+				      dev->component[COMP_PREVIEW]);

 	vchiq_mmal_component_finalise(dev->instance,
-				      dev->component[MMAL_COMPONENT_CAMERA]);
+				      dev->component[COMP_CAMERA]);

 	v4l2_ctrl_handler_free(&dev->ctrl_handler);

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index 9833828..b8a466e 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -16,18 +16,18 @@
 #define V4L2_CTRL_COUNT 29 /* number of v4l controls */

 enum {
-	MMAL_COMPONENT_CAMERA = 0,
-	MMAL_COMPONENT_PREVIEW,
-	MMAL_COMPONENT_IMAGE_ENCODE,
-	MMAL_COMPONENT_VIDEO_ENCODE,
-	MMAL_COMPONENT_COUNT
+	COMP_CAMERA = 0,
+	COMP_PREVIEW,
+	COMP_IMAGE_ENCODE,
+	COMP_VIDEO_ENCODE,
+	COMP_COUNT
 };

 enum {
-	MMAL_CAMERA_PORT_PREVIEW = 0,
-	MMAL_CAMERA_PORT_VIDEO,
-	MMAL_CAMERA_PORT_CAPTURE,
-	MMAL_CAMERA_PORT_COUNT
+	CAM_PORT_PREVIEW = 0,
+	CAM_PORT_VIDEO,
+	CAM_PORT_CAPTURE,
+	CAM_PORT_COUNT
 };

 #define PREVIEW_LAYER      2
@@ -61,7 +61,7 @@ struct bm2835_mmal_dev {

 	/* allocated mmal instance and components */
 	struct vchiq_mmal_instance   *instance;
-	struct vchiq_mmal_component  *component[MMAL_COMPONENT_COUNT];
+	struct vchiq_mmal_component  *component[COMP_COUNT];
 	int camera_use_count;

 	struct v4l2_window overlay;
diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index e79e7cd..b3d7029 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -177,7 +177,7 @@ static int ctrl_set_rational(struct bm2835_mmal_dev *dev,
 	struct mmal_parameter_rational rational_value;
 	struct vchiq_mmal_port *control;

-	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+	control = &dev->component[COMP_CAMERA]->control;

 	rational_value.num = ctrl->val;
 	rational_value.den = 100;
@@ -195,7 +195,7 @@ static int ctrl_set_value(struct bm2835_mmal_dev *dev,
 	u32 u32_value;
 	struct vchiq_mmal_port *control;

-	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+	control = &dev->component[COMP_CAMERA]->control;

 	u32_value = ctrl->val;

@@ -220,7 +220,7 @@ static int ctrl_set_iso(struct bm2835_mmal_dev *dev,
 		dev->manual_iso_enabled =
 				(ctrl->val == V4L2_ISO_SENSITIVITY_MANUAL);

-	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+	control = &dev->component[COMP_CAMERA]->control;

 	if (dev->manual_iso_enabled)
 		u32_value = dev->iso;
@@ -239,7 +239,7 @@ static int ctrl_set_value_ev(struct bm2835_mmal_dev *dev,
 	s32 s32_value;
 	struct vchiq_mmal_port *control;

-	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+	control = &dev->component[COMP_CAMERA]->control;

 	s32_value = (ctrl->val - 12) * 2;	/* Convert from index to 1/6ths */

@@ -256,7 +256,7 @@ static int ctrl_set_rotate(struct bm2835_mmal_dev *dev,
 	u32 u32_value;
 	struct vchiq_mmal_component *camera;

-	camera = dev->component[MMAL_COMPONENT_CAMERA];
+	camera = dev->component[COMP_CAMERA];

 	u32_value = ((ctrl->val % 360) / 90) * 90;

@@ -290,7 +290,7 @@ static int ctrl_set_flip(struct bm2835_mmal_dev *dev,
 	else
 		dev->vflip = ctrl->val;

-	camera = dev->component[MMAL_COMPONENT_CAMERA];
+	camera = dev->component[COMP_CAMERA];

 	if (dev->hflip && dev->vflip)
 		u32_value = MMAL_PARAM_MIRROR_BOTH;
@@ -327,7 +327,7 @@ static int ctrl_set_exposure(struct bm2835_mmal_dev *dev,
 	struct vchiq_mmal_port *control;
 	int ret = 0;

-	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+	control = &dev->component[COMP_CAMERA]->control;

 	if (mmal_ctrl->mmal_id == MMAL_PARAMETER_SHUTTER_SPEED)	{
 		/* V4L2 is in 100usec increments.
@@ -402,7 +402,7 @@ static int ctrl_set_metering_mode(struct bm2835_mmal_dev *dev,
 		struct vchiq_mmal_port *control;
 		u32 u32_value = dev->metering_mode;

-		control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+		control = &dev->component[COMP_CAMERA]->control;

 		return vchiq_mmal_port_parameter_set(dev->instance, control,
 					     mmal_ctrl->mmal_id,
@@ -418,7 +418,7 @@ static int ctrl_set_flicker_avoidance(struct bm2835_mmal_dev *dev,
 	u32 u32_value;
 	struct vchiq_mmal_port *control;

-	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+	control = &dev->component[COMP_CAMERA]->control;

 	switch (ctrl->val) {
 	case V4L2_CID_POWER_LINE_FREQUENCY_DISABLED:
@@ -447,7 +447,7 @@ static int ctrl_set_awb_mode(struct bm2835_mmal_dev *dev,
 	u32 u32_value;
 	struct vchiq_mmal_port *control;

-	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+	control = &dev->component[COMP_CAMERA]->control;

 	switch (ctrl->val) {
 	case V4L2_WHITE_BALANCE_MANUAL:
@@ -503,7 +503,7 @@ static int ctrl_set_awb_gains(struct bm2835_mmal_dev *dev,
 	struct vchiq_mmal_port *control;
 	struct mmal_parameter_awbgains gains;

-	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+	control = &dev->component[COMP_CAMERA]->control;

 	if (ctrl->id == V4L2_CID_RED_BALANCE)
 		dev->red_gain = ctrl->val;
@@ -551,7 +551,7 @@ static int ctrl_set_image_effect(struct bm2835_mmal_dev *dev,
 					v4l2_to_mmal_effects_values[i].v;
 			}

-			control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+			control = &dev->component[COMP_CAMERA]->control;

 			ret = vchiq_mmal_port_parameter_set(
 					dev->instance, control,
@@ -584,7 +584,7 @@ static int ctrl_set_colfx(struct bm2835_mmal_dev *dev,
 	int ret;
 	struct vchiq_mmal_port *control;

-	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+	control = &dev->component[COMP_CAMERA]->control;

 	dev->colourfx.enable = (ctrl->val & 0xff00) >> 8;
 	dev->colourfx.enable = ctrl->val & 0xff;
@@ -610,7 +610,7 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,

 	dev->capture.encode_bitrate = ctrl->val;

-	encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
+	encoder_out = &dev->component[COMP_VIDEO_ENCODE]->output[0];

 	ret = vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
 					    mmal_ctrl->mmal_id, &ctrl->val,
@@ -636,7 +636,7 @@ static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
 	u32 bitrate_mode;
 	struct vchiq_mmal_port *encoder_out;

-	encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
+	encoder_out = &dev->component[COMP_VIDEO_ENCODE]->output[0];

 	dev->capture.encode_bitrate_mode = ctrl->val;
 	switch (ctrl->val) {
@@ -663,7 +663,7 @@ static int ctrl_set_image_encode_output(struct bm2835_mmal_dev *dev,
 	u32 u32_value;
 	struct vchiq_mmal_port *jpeg_out;

-	jpeg_out = &dev->component[MMAL_COMPONENT_IMAGE_ENCODE]->output[0];
+	jpeg_out = &dev->component[COMP_IMAGE_ENCODE]->output[0];

 	u32_value = ctrl->val;

@@ -679,7 +679,7 @@ static int ctrl_set_video_encode_param_output(struct bm2835_mmal_dev *dev,
 	u32 u32_value;
 	struct vchiq_mmal_port *vid_enc_ctl;

-	vid_enc_ctl = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];
+	vid_enc_ctl = &dev->component[COMP_VIDEO_ENCODE]->output[0];

 	u32_value = ctrl->val;

@@ -792,7 +792,7 @@ static int ctrl_set_video_encode_profile_level(struct bm2835_mmal_dev *dev,
 		}

 		ret = vchiq_mmal_port_parameter_set(dev->instance,
-						    &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0],
+						    &dev->component[COMP_VIDEO_ENCODE]->output[0],
 			mmal_ctrl->mmal_id,
 			&param, sizeof(param));
 	}
@@ -810,7 +810,7 @@ static int ctrl_set_scene_mode(struct bm2835_mmal_dev *dev,
 	v4l2_dbg(0, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "scene mode selected %d, was %d\n", ctrl->val,
 		 dev->scene_mode);
-	control = &dev->component[MMAL_COMPONENT_CAMERA]->control;
+	control = &dev->component[COMP_CAMERA]->control;

 	if (ctrl->val == dev->scene_mode)
 		return 0;
@@ -1228,18 +1228,15 @@ int set_framerate_params(struct bm2835_mmal_dev *dev)
 		 fps_range.fps_high.den);

 	ret = vchiq_mmal_port_parameter_set(dev->instance,
-					    &dev->component[MMAL_COMPONENT_CAMERA]->
-					    output[MMAL_CAMERA_PORT_PREVIEW],
+					    &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW],
 					    MMAL_PARAMETER_FPS_RANGE,
 					    &fps_range, sizeof(fps_range));
 	ret += vchiq_mmal_port_parameter_set(dev->instance,
-					     &dev->component[MMAL_COMPONENT_CAMERA]->
-					     output[MMAL_CAMERA_PORT_VIDEO],
+					     &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO],
 					     MMAL_PARAMETER_FPS_RANGE,
 					     &fps_range, sizeof(fps_range));
 	ret += vchiq_mmal_port_parameter_set(dev->instance,
-					     &dev->component[MMAL_COMPONENT_CAMERA]->
-					     output[MMAL_CAMERA_PORT_CAPTURE],
+					     &dev->component[COMP_CAMERA]->output[CAM_PORT_CAPTURE],
 					     MMAL_PARAMETER_FPS_RANGE,
 					     &fps_range, sizeof(fps_range));
 	if (ret)
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
