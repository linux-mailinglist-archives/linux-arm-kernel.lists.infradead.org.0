Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A40785AACB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wBO9TWui+NzbgUE3HUQdgkQ1y5XHYsZ/KGGTTmNnzS8=; b=jMNrXCNKFsvkul+hCNVIpTSbxu
	41Wp3KEgPYt0eviHOHb2aTKc2S6hA7f3lfMVAkySl05YZNz8249Il1IdW39voBszEb5czsVGHcnR4
	wtaXZcG7L4dmLD5lVT5d2MySJ0KOkPglA/SVA3lX53g8cTaqq8SwRg7dVS+57gWCz+VaXtK2JeYQN
	4Y87H/UfwkTbJkxjw/QvEJY5LjQYm2zh34dY6zibII6UTB+IL1UyexApwGlnKsiKc/gfUx0bFBV2g
	dGz0IobhWDrxjTt9XDFlV5p+85lH+rOeiC93cextgduwd9jFVEewKcd3dii1BVvQHGagUHFyj3XE5
	TSLEMx9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCGx-00027r-0P; Sat, 29 Jun 2019 12:16:03 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCFL-0008AK-0u; Sat, 29 Jun 2019 12:14:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810450;
 bh=+MNg9Ng71wZ+upNb9jMR88EfmSYMRi5mPcFt4Zwi63A=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LE8tkjEcaptJ8W4ccljYqlcsvyIIoI2UsKbIe9UeqRmcwLq3BG7qVQWDOeSCcFwcC
 Hbbbt3KkBI0beq5+0ePSw1xUgiQoqCtbM9yVnTsDeGPf0Sui8msUgEO3nvXCwBI1TL
 HYJH/jXVvKwcm0ZSjem3ABi9jiTjroghPsh/sVRQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MOwY7-1haqiT0bEV-006Kt3; Sat, 29 Jun 2019 14:14:10 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 13/29] staging: bcm2835-camera: Fix open parenthesis
 alignment
Date: Sat, 29 Jun 2019 14:13:28 +0200
Message-Id: <1561810410-8829-14-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:qnVbBMjKF9tsH/xeRV2gaNlIm6MhdhWQQPBaOhwQZWzfj7J7KDb
 A5PQICqF1gSkKG2lrCFARwgxCBhxgZmbTh04U+HklFrWzwXIZRSHgDn7gqoivAeajHr34rv
 Bg8YIoO92N5brREftQmfvRoEBSwFbRSpLHrtQCHsBSloGG2W27nWAa0uG+JweCNqRSsfw26
 1Vt6W2kg2pimi90SWFgeA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GH6PcsME5uw=:YSpif96mUcCw/0tifg9tJ4
 XX00hZegr2q4OQubQBsQMO1gg7tGNJcFaVw1PL0RC9p6eXTxHoyfq5BcJHA/7V5G0xxjog+2c
 QSsLO+T2gQzYOuUythYdneZKLh+8rNzBzzRaifUcVDwmC0HXoHVWwSCg/6SBOzmfOor5+Q1Fw
 Iba013Z909/rE25Uzs+FQFkJ8saXKM7rlhy9ozRd07gAfKUlEaRxQSrFwjbOcAjx6SEsjBSOq
 o8B94O8nOGywrTmkjohaxh9s2G6vzBKJlHYm+OYKFJ4ONLKS3LlvDoZDwFCg/PJcrFCrqC8MO
 AdXbj6vCo2Ed6zb77pFRyjHNyPVpVzHKMBKiBzVP2yYwrKH75ko9NWVZkOC/Uic2X6cZVpLZ0
 PmLLfbp/RdwwOs+gp//BrnI9sTv+dzWXe78wSKMLbCCnQU1viRd0AUqCpk2N61OIq1S4KN0b/
 On51KLuL+0q7UztL+IyTPWTj+DfWtVJnMQDfGUX//sOQsrxzbbNtMovOSTBJzjfZSUWn5JsDs
 A7w7IlSQYYkt2RYPoI/XlS/1quT0oq7UZssCWLQvGIoZBaQmkIgqfJwpbtsPzTjF6qMB0lCHm
 EXCaFihuZI0/2191+3uOQ03w3L2YDFx7uED9NJFXkOeOgPl3h7rHcg7WyjrGh9XsdnelBqWld
 3Tq9YQQrQ6O9T35NQj789sqtne1kuR9ycDhmDdun4HujlpgbBe1Gjot+ScWAPvHwm8pFYMKE5
 qJlS+IDS9XlJIoVA0XVMLPcdYdgwg6vxs3dnQkptjnLudoUvQVW9EqUlJum5lNxZi/lPuWX5g
 ekNCVMevwx2hf9LBD1GC+M86WkBa/KNLDF5RIs6u07YmvKDFu9RBkDsezF0qHgYEHKafULUkn
 hQUHjHB0nRUyXRenwQbeTdgQeO8ng2U6Aw6txfGrlsoagQRdCIfl+RFUznYPAcJcISr8lFjKa
 hxSWzULlL3pL+m5FpRNuIg4FtBXmhetl/8Kr1qJu68X4jR1nrI7e6xv/ny8yHInuTYwdI2k8d
 Y2jl6ADsAVaEBKMztJ2QFFcJsAjB7I9aa8eLAKVzksuOucbQWrLH0yt8U8zsylTUtKuzDhMry
 6Z8jl3uCiT75sk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_051423_412582_59F351C2 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Fix checkpatch "Alignment should match open parenthesis"
errors.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  |  9 ++++----
 .../vc04_services/bcm2835-camera/controls.c        | 25 ++++++++++++++--------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      |  2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  6 +++---
 4 files changed, 24 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 8813ffc..5ca644c 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -557,8 +557,8 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 	    vchiq_mmal_port_enable(dev->instance, dev->capture.port, buffer_cb);
 	if (ret) {
 		v4l2_err(&dev->v4l2_dev,
-			"Failed to enable capture port - error %d. Disabling camera port again\n",
-			ret);
+			 "Failed to enable capture port - error %d. Disabling camera port again\n",
+			 ret);

 		vchiq_mmal_port_disable(dev->instance,
 					dev->capture.camera_port);
@@ -948,8 +948,7 @@ static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 		f->fmt.pix.bytesperline =
 			(f->fmt.pix.bytesperline + align_mask) & ~align_mask;
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-			 "Not removing padding, so bytes/line = %d, "
-			 "(align_mask %d)\n",
+			 "Not removing padding, so bytes/line = %d, (align_mask %d)\n",
 			 f->fmt.pix.bytesperline, align_mask);
 	}

@@ -1295,7 +1294,7 @@ static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
 }

 static int vidioc_enum_framesizes(struct file *file, void *fh,
-			   struct v4l2_frmsizeenum *fsize)
+				  struct v4l2_frmsizeenum *fsize)
 {
 	struct bm2835_mmal_dev *dev = video_drvdata(file);
 	static const struct v4l2_frmsize_stepwise sizes = {
diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 1a7588d..bc2f3f4 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -1260,9 +1260,12 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,

 		switch (ctrl->type) {
 		case MMAL_CONTROL_TYPE_STD:
-			dev->ctrls[c] = v4l2_ctrl_new_std(hdl,
-				&bm2835_mmal_ctrl_ops, ctrl->id,
-				ctrl->min, ctrl->max, ctrl->step, ctrl->def);
+			dev->ctrls[c] =
+				v4l2_ctrl_new_std(hdl,
+						  &bm2835_mmal_ctrl_ops,
+						  ctrl->id, ctrl->min,
+						  ctrl->max, ctrl->step,
+						  ctrl->def);
 			break;

 		case MMAL_CONTROL_TYPE_STD_MENU:
@@ -1286,16 +1289,20 @@ int bm2835_mmal_init_controls(struct bm2835_mmal_dev *dev,
 				mask = ~mask;
 			}

-			dev->ctrls[c] = v4l2_ctrl_new_std_menu(hdl,
-			&bm2835_mmal_ctrl_ops, ctrl->id,
-			ctrl->max, mask, ctrl->def);
+			dev->ctrls[c] =
+				v4l2_ctrl_new_std_menu(hdl,
+						       &bm2835_mmal_ctrl_ops,
+						       ctrl->id, ctrl->max,
+						       mask, ctrl->def);
 			break;
 		}

 		case MMAL_CONTROL_TYPE_INT_MENU:
-			dev->ctrls[c] = v4l2_ctrl_new_int_menu(hdl,
-				&bm2835_mmal_ctrl_ops, ctrl->id,
-				ctrl->max, ctrl->def, ctrl->imenu);
+			dev->ctrls[c] =
+				v4l2_ctrl_new_int_menu(hdl,
+						       &bm2835_mmal_ctrl_ops,
+						       ctrl->id, ctrl->max,
+						       ctrl->def, ctrl->imenu);
 			break;

 		case MMAL_CONTROL_TYPE_CLUSTER:
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 73cb295..0b95723 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -645,7 +645,7 @@ static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
 	if (payload_len >
 	    (MMAL_MSG_MAX_SIZE - sizeof(struct mmal_msg_header))) {
 		pr_err("payload length %d exceeds max:%d\n", payload_len,
-		      (int)(MMAL_MSG_MAX_SIZE -
+		       (int)(MMAL_MSG_MAX_SIZE -
 			    sizeof(struct mmal_msg_header)));
 		return -EINVAL;
 	}
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
index 0e5a81b..3498555 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.h
@@ -128,7 +128,7 @@ int vchiq_mmal_port_enable(
  * disable a port will dequeue any pending buffers
  */
 int vchiq_mmal_port_disable(struct vchiq_mmal_instance *instance,
-			   struct vchiq_mmal_port *port);
+			    struct vchiq_mmal_port *port);

 int vchiq_mmal_port_parameter_set(struct vchiq_mmal_instance *instance,
 				  struct vchiq_mmal_port *port,
@@ -146,8 +146,8 @@ int vchiq_mmal_port_set_format(struct vchiq_mmal_instance *instance,
 			       struct vchiq_mmal_port *port);

 int vchiq_mmal_port_connect_tunnel(struct vchiq_mmal_instance *instance,
-			    struct vchiq_mmal_port *src,
-			    struct vchiq_mmal_port *dst);
+				   struct vchiq_mmal_port *src,
+				   struct vchiq_mmal_port *dst);

 int vchiq_mmal_version(struct vchiq_mmal_instance *instance,
 		       u32 *major_out,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
