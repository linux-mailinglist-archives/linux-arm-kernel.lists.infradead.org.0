Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E815258A5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 20:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VwqiX3nzxZoq8rV+Ie3Ohc7BF3sNVvmGNpDgCL+KpKE=; b=reanXYdPrdkV+A+43pi3jxUDSX
	ATSPmgZw2J30bIhql8KWJmdJhpec3b6Qf8uiHMFtmBYPKd0vU6SyFrQ2WgsIDYmKi7yCulBWTIgf8
	g/xHbb+WGH22o18FwJy+EvE773tFA2u7ptcifBStzqP+h5bNTkV/J/rl45mz4m76YNJEuokDl8fg6
	UyBK6B7WEfy0B1pYI2PR4yyHi3RXE3WqzWlbDsS5rsVRDK2zR+A9eI+3VOj5JvQ67IyJOaTv3EOEN
	rGKzjOv0Laa3GQ7MnkNgm9eB5Eo2wQ44/EBeCq0WMkUzVTvS+Ux4pK0PteTTM25TeVs4/OwARh7Jh
	pMfBPd9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZaD-0002WU-PH; Thu, 27 Jun 2019 18:57:22 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZt-0002Rs-Sj; Thu, 27 Jun 2019 18:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661814;
 bh=6yyNYjNdpgKg7E/zAo5FWADNmpxPjFqRJ+mJmyC1l0c=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=AVVLZPUynjHOdQMO0u08fDH45K+4YFXl46L5ybKeoGNDTUiAdIy/So5k8twBARh34
 ms6wt0zD8Yp8qgqHQQMmITcOoYDe6MSI4wqy7jMm8fGYYmbovNKdTUQApkRnWnVRLb
 ZaUvPO7gOWikwCN64gYpCYN9jyBTCHaA1swixm98=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0LqzEB-1iBlen0KkV-00eZdg; Thu, 27 Jun 2019 20:56:54 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 14/31] staging: bcm2835-camera: Fix open parenthesis alignment
Date: Thu, 27 Jun 2019 20:56:11 +0200
Message-Id: <1561661788-22744-15-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:cm57Kybh944S3Ry/3EX1RIW/9ppOOAAKQoy8qsO8RVkwZwhIkkF
 +Mjq6hhoPRP/y3e23jyWDdin0AD09Uhu8jUULj9LcjwnfNWwBh4xRnLxkeDYMD3uMNCW7QY
 EkpgST8matgY2k9Fhn3HhSGHtqdzwxpuCRmLV++MV8jxeMIzv3xnwIboOFwPSvdGleJ/Kpa
 hcjI64zHRqYZHRWxu3GhA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:K4riwYgziVQ=:CGtiItQWia5m0pf0ULoT7a
 dQYL3VQX4Oct0noUkiHar7672l27g6R/AhsU2jfH8g/1hDllC5xpXzIT12Kbs11mjJzpMJpGT
 EpMU6fZxZbYSV1pqu6r+JV0tXSaLjLT4eGQjd0uUYqJgcii3Mo+VpljeUV6zDyDo9b6AoSrnN
 81qN5mVLvaHG8eqWrD8gVHuhAUbCETAFVR9ejySK6nJKMndcxf+xBmL5rJ596wXoBG4vX/4Pc
 jxKdbCcX9N9gmtouYt08nwhCh9DCRzBXoQP/BK6xplH4YiUTWWhc1UwkMhCy8hjxRrccY77TF
 YlKUBJGAjmfetWECLdTfirwBO22owT5uBA9iQguQbA+SMUvAGBnqUoWfTqrZO8PY44C4zC/e1
 1MN+MmihpVHf12u7aRYqCF78k4KQ5Ziru4R/4iL5El3+9QlmiLvj1fToI6xKNcbe2N0FN59U6
 NkH7ocQa0kVhsE3ImdbDv+PqvQ+umfFLm1fnR8UlZVPziuIV4L/qiR0+/MN4nOalJeRRRs8yj
 MXV1+PzVyAPcQbugPiGuGNPQ2hksJ4Ag7qdS/X9WdqQGgCeFYKVNQZADgrrBmbEzVAcJqiFA2
 IPKomRxZv9C02vRw7+3PSsKbk1v4mMrEIAARaFs26D2os8xooUe4pKjqg/e/wlvGHfmxCc3b1
 /Z1rL4XU9/fi9tnz9ybj9FIMrpToQgTXYYmQLgmncF/64BFOT0YY7USFknxm8RZGRtbxRX/dg
 02zwWAhup4zQ5g659n3yFv5XVEpWemX6KK9qkJz6qPDfNs7Bz9RGqQ1UOQKBFJ1WLx75lkHSP
 zA/tTn/42uEkLd0B3Y6TOxXDmWfFBADY2rJFNRoGp9QsAS+yZd2ISLEbofjL2ICJo/4tYvo+1
 7NozfQF+WGOrCKzAMCIOc4CWcgFoeLVTLdn0A8ji1zeQyF0rLjfSYR+yOI5YzSR4+RxHO5EKu
 MOKoC1ZpHZtrQ0ZSo58V8r8e5lHVHfMYfCEX/l2JLxgrLEnDCYs4eAjvG+A4K3gSX3NSKaOL5
 wJIeW1+DR8bjgZ9Z6wC3z3oOQGXzRNYUWeLoa5utcIVpyB2sbyTgVonZuyFBfiwGkRjZfmwS1
 AyGWVvZU3NJO+k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115702_267886_A9AF5F1D 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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

Fix checkpatch "Alignment should match open parenthesis"
errors.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  |  9 ++++----
 .../vc04_services/bcm2835-camera/controls.c        | 25 ++++++++++++++--------
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      |  2 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  6 +++---
 4 files changed, 24 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index c1f6141..4968782 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -568,8 +568,8 @@ static int start_streaming(struct vb2_queue *vq, unsigned int count)
 	    vchiq_mmal_port_enable(dev->instance, dev->capture.port, buffer_cb);
 	if (ret) {
 		v4l2_err(&dev->v4l2_dev,
-			"Failed to enable capture port - error %d. Disabling camera port again\n",
-			ret);
+			 "Failed to enable capture port - error %d. Disabling camera port again\n",
+			 ret);

 		vchiq_mmal_port_disable(dev->instance,
 					dev->capture.camera_port);
@@ -961,8 +961,7 @@ static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 		f->fmt.pix.bytesperline =
 			(f->fmt.pix.bytesperline + align_mask) & ~align_mask;
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-			 "Not removing padding, so bytes/line = %d, "
-			 "(align_mask %d)\n",
+			 "Not removing padding, so bytes/line = %d, (align_mask %d)\n",
 			 f->fmt.pix.bytesperline, align_mask);
 	}

@@ -1308,7 +1307,7 @@ static int vidioc_s_fmt_vid_cap(struct file *file, void *priv,
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
