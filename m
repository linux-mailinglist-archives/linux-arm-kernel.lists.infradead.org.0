Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E3A58A79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 20:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H9u+QEGWOfHXZLJ56YeTzA1TGwso8Z1HFoZBFIcLAZM=; b=ahQh6MpKKM25JrkxOd/SYI5BCi
	5S7fFIC4g51OWBLNomWJcgGTVnV3xACj7UMgS96TfPS19JRYF6p5TdrH5WmtQ2UquF3DlA9UxNDdS
	+2G3F9D5BSSJNxKeZfNCJ/qR59F175SIO0sSkF7YZTR80n9mHOTkxBgVEGQaf44tDq51aprFImRzI
	4jV1LdEeavq3eYIZK34nOu16JMVAGi1HF7nwqC2gC7p0E5hrIv94HPIA/r6Li/HQynGpZK3wbEIKw
	0XV0B1xHtUhKPokvWklTezQ1HToXpFoL8TpGbCy9y4NovOS2T5n9GNHVGv4n3YGcxY7OnQIExHY/c
	aMoS45iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZbj-0003Wl-94; Thu, 27 Jun 2019 18:58:55 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZZu-0002Rc-BX; Thu, 27 Jun 2019 18:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561661811;
 bh=lUdBNb/xOMYCllKOZYy4V0wd1rtgfpcEo0fxiR8IyK4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=jNLvd5ox/RcG4p+gqkIHiXg45K9W3Dj4ZxkIKsXVGSazZYmRY9A2Xi2h2M8rRyyIl
 wkhOCVSRxNlg91gN3X8uDpNIvJHrYFrVomK2iNQp9KAUVFQGVDSGKC8YaWeJBj9Jz6
 MmzfhUSxNBvgTnhE1EpPxAsxmSIn4DB5zvFCecm0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx002 [212.227.17.190]) with ESMTPSA (Nemesis) id
 0MDyil-1hmNWX3UOF-00HMIO; Thu, 27 Jun 2019 20:56:50 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 06/31] staging: bcm2835-camera: Return early on errors
Date: Thu, 27 Jun 2019 20:56:03 +0200
Message-Id: <1561661788-22744-7-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:2Pe+ZeRMyfwAHl+ea1MX8XyHvhuOqcTh6ymq0RjberPmkWCDDFm
 heYR+ticlyINVHqyRz4DaE+LasE22v7lQ/7wTHQBbsxxR17DCbqjwSEhxGy1x1zUYP8mP85
 K7juUAPczpzPfi0XqaojFoTY/G9h1jT5EF/3MWu0I+wEaj8YQ/QuRi2bS1t+aPlKOxhiwNt
 hFJj/tKeyE8OnzSqEKTVg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sV+a52IHZ7M=:tj7Urv2CcxzNYOLBRwLoEZ
 AqMoY4TgtX9aM0dPopTzfqk6Y6STnQuC5nNHHrBhsYI5fa1QbFOJh2Yn9dr74oteca8m85N//
 4R005ew2EhxMsCiRjFtbPiCyFhfmYkEKbOxp7rQYfZ1Mhu/5lJl1SKaGZ7c1k5qzFvzNX9xp7
 YVUFdsrBOBjh1a1vhjm/jvMRgE66KeL+gCwvKJMWipAmvN+5Y3+vsBKg0ed8Xan9qbOX1tDsS
 mIkeuwA79Od5xzk8xcd6qPfhXIRCHpRjdQrClvAi0jTZ8l9z1f9eWTLsptgo19JSg4xVueMfy
 I98zY74dvzgnlf0DECSbPWA3/QxjEFBxwjHApwj4bO31oJdQ9h/x7mUskAlXM9kKQfQNf1Coo
 ocPE/1d6GHjWoKXtykBN0JTfdH3OwFC07Uv/c3xa9THsbhzxrccrzARkvd/mJG6zLXg3VrOs7
 2Ybp9fADHbBMzdJPDzufgPEAUxY26Ix8lWnJL68ku3bDXP9s/qZsWVvotqR77RwgDpctTP3en
 VZOZJefmg1x4dFHJmbMIcvbmUGuTdQxWFv2GOXANV6BacVvVbXLMU5SuD/F5IwSDyuW3EJh7O
 mLmA3rUR+dXRZYGOfCNw3jN/cLSJegMIbs2OLKXeinwZcmMZvbS51K7GwbFm60EWeFAx22plC
 GaZUPs+/6MzzWiyKl2yrKyAzH9QmN95zvkiQCHBtnuoN1ElS6aJA9q6uw/kQr7O4TR8wsx82c
 yH49XMhBVg+QJA4WiUZo/Ygo5WrCf04ClzC7U3qPMksjqyx6ljwwTqosHrspcCKRUOUEB08HD
 4nAZ1FB5xtVBHNfwnO1/PQcDjG4rtVlf/AB79vhuzNrFoP6YLLjwecD2axF36SGsBGdljdJhH
 bCLvG7kHFrMdKFER19nWGrY7v70y3W2hcoVV1k2DACnN81co21zkcvhSIeP10/zEVgb5bLYta
 xdiVHVCw8Lca0ad6dW84jbsUEZ/rp4maisyLyuNkY+If4L4OzQhkDeXPQSSuMPjhzLm8Wtazv
 NZhmK/Wnq/4i8JAkJFviviQnH97Vi8oXaYaQDiIFJvCOGqHNr2RA5418+OzhVEzvcCdTayOLL
 O145FrnK8b6AkI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_115702_685894_4B367089 
X-CRM114-Status: GOOD (  14.08  )
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

Fix several instances where it is easier to return
early on error conditions than handle it as an else
clause. As requested by Mauro.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 109 +++++++++++----------
 1 file changed, 58 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 456b686..b597475 100644
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
@@ -357,56 +359,59 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			/* signal frame completion */
 			complete(&dev->capture.frame_cmplt);
 		}
-	} else {
-		if (dev->capture.frame_count) {
-			if (dev->capture.vc_start_timestamp != -1) {
-				buf->vb.vb2_buf.timestamp = ktime_get_ns();
-			} else if (pts) {
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
-				if (dev->capture.last_timestamp) {
-					buf->vb.vb2_buf.timestamp =
-						dev->capture.last_timestamp;
-				} else {
-					buf->vb.vb2_buf.timestamp =
-						ktime_to_ns(dev->capture.kernel_start_ts);
-				}
-			}
-			dev->capture.last_timestamp = buf->vb.vb2_buf.timestamp;
+		return;
+	}

-			vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
-			if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
-				buf->vb.flags |= V4L2_BUF_FLAG_KEYFRAME;
+	if (!dev->capture.frame_count) {
+		/* signal frame completion */
+		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
+		complete(&dev->capture.frame_cmplt);
+		return;
+	}

-			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);

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
+	if (dev->capture.vc_start_timestamp != -1) {
+		buf->vb.vb2_buf.timestamp = ktime_get_ns();
+	} else if (pts) {
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
+	} else {
+		if (dev->capture.last_timestamp) {
+			buf->vb.vb2_buf.timestamp =
+				dev->capture.last_timestamp;
 		} else {
-			/* signal frame completion */
-			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
-			complete(&dev->capture.frame_cmplt);
+			buf->vb.vb2_buf.timestamp =
+				ktime_to_ns(dev->capture.kernel_start_ts);
 		}
 	}
+	dev->capture.last_timestamp = buf->vb.vb2_buf.timestamp;
+
+	vb2_set_plane_payload(&buf->vb.vb2_buf, 0, length);
+	if (mmal_flags & MMAL_BUFFER_HEADER_FLAG_KEYFRAME)
+		buf->vb.flags |= V4L2_BUF_FLAG_KEYFRAME;
+
+	vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
+
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
+	}
 }

 static int enable_camera(struct bm2835_mmal_dev *dev)
@@ -785,27 +790,29 @@ static int vidioc_overlay(struct file *file, void *f, unsigned int on)

 	ret = vchiq_mmal_port_set_format(dev->instance, src);
 	if (ret < 0)
-		goto error;
+		return ret;

 	ret = set_overlay_params(dev, dst);
 	if (ret < 0)
-		goto error;
+		return ret;

-	if (enable_camera(dev) < 0)
-		goto error;
+	if (enable_camera(dev) < 0) {
+		ret = -EINVAL;
+		return ret;
+	}

 	ret = vchiq_mmal_component_enable(
 			dev->instance,
 			dev->component[MMAL_COMPONENT_PREVIEW]);
 	if (ret < 0)
-		goto error;
+		return ret;

 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "connecting %p to %p\n",
 		 src, dst);
 	ret = vchiq_mmal_port_connect_tunnel(dev->instance, src, dst);
 	if (!ret)
 		ret = vchiq_mmal_port_enable(dev->instance, src, NULL);
-error:
+
 	return ret;
 }

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
