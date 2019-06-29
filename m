Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA975AAD9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 14:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/C0U6pc+e3NWpwzG45JPT2XFcsEvihSXaV/FSeLyi+E=; b=SF1rSBZD4/74Yx6FLEvWR079Yr
	2yS1DjdbxHtk2AbdWdYXnkGwEYMtmAKtDJC5BosaZZuJM99NE5ri3yv838nymYg2zmIUTbiqUyCsH
	ForsrAZ8DIU1cZH+FPX/ZkPfPW6OFoLkSWA5IHhYm5MMnZnunfuW0jETqdwuSia0ArJH1B2NQBxKN
	q+85bbENS1MGUk7q+bIFBTcxn0dD1g1nEiu4RQNMhoIyA9pXgvnXYvF+okix3S7Xii6MsYcjodtrD
	NwI85XzeHRuOgihonpDUk8ZfN4KIJYpPUkCRwFMN2sSCN1iyUbq/BHuOpPeA3W4cG2HI1I3y0ZZrr
	m8wHLyYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCMB-0005ou-9V; Sat, 29 Jun 2019 12:21:27 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCKj-0003ev-Na
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 12:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561810796;
 bh=XsCSZFtMGn8TEqXeoQWK7pBSlK9ZoMDMSNSPhL3eAqg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=JnKHMdW6M0iifM1T8cJ1UTucHvs8gayz21WcuFQFMuaIMCyiasrwHT+iutpUjRaoB
 d6m4fBkptkndQyIUGc3dGf+iTU0jznl4fTTbvoeJGhJLKnJSRhcsOylGqP2n3kEbuh
 faaYqhOFlUhkcmv+R5HhqWeIfw6WHbCl8KSyWqz8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LyEUz-1ib6MN2SAf-015cXP; Sat, 29 Jun 2019 14:14:06 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH V2 05/29] staging: bcm2835-camera: Return early on errors
Date: Sat, 29 Jun 2019 14:13:20 +0200
Message-Id: <1561810410-8829-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
References: <1561810410-8829-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:uHemwYg13/jic9QLGpqUQIie5rCHxJoQET8DxwVg2MpLubY1wp2
 8ohoUL3hv8zWd5L+p9BBdA0+nGuEbRwGZaY7wtFTyV4VgxNhMeVkZRhCnnH730vEpZ1V3lF
 1tnOyMcVgY7rgMLtcyfoU2XAfNhsgSCGWVWXt5KKcnHmMRMx9oYNiNaDgVU3FBo6ILieaD7
 /xYqe/WOI+HFH6jhaj49A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0DMJO55hjcw=:LJXiAgDKxiXU+Rg51WG/YY
 i6hq3Lg4SaRHi3iqAqAKrCIVHicypMgATOKxeodqyhSmtia7/ZhGQh5dsldATD+prImsJsEUJ
 n6ZgmbzX92vsUxVYeO18iH8uxTDxk+m+mEdMUpiJ5sbf23IiktBW2Q9x/HxdmTralDixnj5oF
 LRqJf5vty+qx6dRqJ8cyGzgKLVkjT5du2L6Iqbow+hV6xIEskLYgoOEfDFVFcMlfoSr/t2Z7C
 b/GzsgVkfBDbpiSiYShMNWQ5Igm7gawLmZar3PVsSeSpDvxZmz1Y2mmlYrNc6HKw6fr4njisV
 y0sTgAjRXDw8hPkfatwTf0beyo1ujrs8ylJMpYzqtB+hfm4nNBh53vb8Cb2VEwxkqy2So/bxt
 5DCQQwMozuFEScg63WJ9QP+ex0uY4vUMe8ILZrCofmMU179w10lMH4oVSkmfbvKbD+yvkcaGc
 W0L3T/hSrzyi82o98HPYRCPklS8IT8E5tF8NQMBpVMWMNhvZN2sHDsXEEI6RD9uyHfGRjzBqE
 nNFoU/ALmrzoz0QH2VRqYTrfaXht15+0O0TPmNAYQ1Mjmn3+SN/CUxfx4sq5J8XC8hErEIvHu
 K6kLdajiTosb4UfubyllkEUO5L1Zn9WR372LkKFlxYiD/SX1v9aAg1HTGeAhRKOR4ht4fNn3H
 1qKyw5cPvBA2PF3UrZmOBNFuS7d/ernWbtJBZxK/oP0UH9JmQWD4sQlRsFhoG9QLUxK0gbG0Z
 oY8UpuLYki8ZC5cQTzurQLCObVIUrdegionpYr74c5ofPNfyDQ8vqKJIUc1sCS/iZUDbcXOKt
 cKi+HCjJGeoHNOiChv9gugzJHsSFiB5UtYD5P0EKUeKEJnHBf4X8XPvdwSsfwc2wlO6N8zQNq
 miv04wkkRH0OfHK/51tOHP1hOXgMw2MpOfhFiHaZSBX3SLynDXQd5ioDR6fa+sGbxl5u6MSma
 dHVXOe5JnF25Esvaw3rxnPiyz8ysFnHzaEkYvSsDCICCQHTJ6JC5O2HHUYEgdVr/8S5SctCBS
 GCgdhisjSomjVoDPJx06H+by2ZDSGq+z4hUlqudP/iSC4Tle/MVRut5tGHi+6ByR3j/AHymB+
 eXzkJ0zZKsKveo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_051958_223015_51BA6329 
X-CRM114-Status: GOOD (  14.80  )
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

Fix several instances where it is easier to return
early on error conditions than handle it as an else
clause. As requested by Mauro.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 94 +++++++++++-----------
 1 file changed, 49 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index e81d4df..1e2b51b 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -334,7 +334,9 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 		}
 		return;
-	} else if (length == 0) {
+	}
+
+	if (length == 0) {
 		/* stream ended */
 		if (buf) {
 			/* this should only ever happen if the port is
@@ -357,46 +359,48 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			/* signal frame completion */
 			complete(&dev->capture.frame_cmplt);
 		}
+		return;
+	}
+
+	if (!dev->capture.frame_count) {
+		/* signal frame completion */
+		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
+		complete(&dev->capture.frame_cmplt);
+		return;
+	}
+
+	if (dev->capture.vc_start_timestamp != -1 && pts) {
+		ktime_t timestamp;
+		s64 runtime_us = pts -
+		    dev->capture.vc_start_timestamp;
+		timestamp = ktime_add_us(dev->capture.kernel_start_ts,
+					 runtime_us);
+		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+			 "Convert start time %llu and %llu with offset %llu to %llu\n",
+			 ktime_to_ns(dev->capture.kernel_start_ts),
+			 dev->capture.vc_start_timestamp, pts,
+			 ktime_to_ns(timestamp));
+		buf->vb.vb2_buf.timestamp = ktime_to_ns(timestamp);
 	} else {
-		if (dev->capture.frame_count) {
-			if (dev->capture.vc_start_timestamp != -1 && pts) {
-				ktime_t timestamp;
-				s64 runtime_us = pts -
-				    dev->capture.vc_start_timestamp;
-				timestamp = ktime_add_us(dev->capture.kernel_start_ts,
-							 runtime_us);
-				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-					 "Convert start time %llu and %llu with offset %llu to %llu\n",
-					 ktime_to_ns(dev->capture.kernel_start_ts),
-					 dev->capture.vc_start_timestamp, pts,
-					 ktime_to_ns(timestamp));
-				buf->vb.vb2_buf.timestamp = ktime_to_ns(timestamp);
-			} else {
-				buf->vb.vb2_buf.timestamp = ktime_get_ns();
-			}
+		buf->vb.vb2_buf.timestamp = ktime_get_ns();
+	}

-			vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
-			if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
-				buf->vb.flags |= V4L2_BUF_FLAG_KEYFRAME;
+	vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
+	if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
+		buf->vb.flags |= V4L2_BUF_FLAG_KEYFRAME;

-			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
+	vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);

-			if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_EOS &&
-			    is_capturing(dev)) {
-				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
-					 "Grab another frame as buffer has EOS");
-				vchiq_mmal_port_parameter_set(
-					instance,
-					dev->capture.camera_port,
-					MMAL_PARAMETER_CAPTURE,
-					&dev->capture.frame_count,
-					sizeof(dev->capture.frame_count));
-			}
-		} else {
-			/* signal frame completion */
-			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
-			complete(&dev->capture.frame_cmplt);
-		}
+	if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_EOS &&
+	    is_capturing(dev)) {
+		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+			 "Grab another frame as buffer has EOS");
+		vchiq_mmal_port_parameter_set(
+			instance,
+			dev->capture.camera_port,
+			MMAL_PARAMETER_CAPTURE,
+			&dev->capture.frame_count,
+			sizeof(dev->capture.frame_count));
 	}
 }

@@ -775,28 +779,28 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)

 	ret = vchiq_mmal_port_set_format(dev->instance, src);
 	if (ret < 0)
-		goto error;
+		return ret;

 	ret = set_overlay_params(dev, dst);
 	if (ret < 0)
-		goto error;
+		return ret;

 	if (enable_camera(dev) < 0)
-		goto error;
+		return -EINVAL;

 	ret = vchiq_mmal_component_enable(
 			dev->instance,
 			dev->component[MMAL_COMPONENT_PREVIEW]);
 	if (ret < 0)
-		goto error;
+		return ret;

 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "connecting %p to %p\n",
 		 src, dst);
 	ret = vchiq_mmal_port_connect_tunnel(dev->instance, src, dst);
-	if (!ret)
-		ret = vchiq_mmal_port_enable(dev->instance, src, NULL);
-error:
-	return ret;
+	if (ret)
+		return ret;
+
+	return vchiq_mmal_port_enable(dev->instance, src, NULL);
 }

 static int vidioc_g_fbuf(struct file *file, void *fh,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
