Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5FBD49DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 23:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tRG4lGogEfj6KSwMNamY5z+Mk5oSpnlMmO0jQEtDB30=; b=AqBcqzVTDBnF5s
	kWN7HSesvko0tlZiBaGVs05FmCQl9Q4bQ2zIHCOL+z8nfRelQCBU/lRY+4Y/sYEgHsF5VRyelh0+A
	/Dq4A62pN8Po5yYUw4f+koblWnH5AzsWBI/oJVVoEVn491mxAzzgYAfu+vIQJYvnSNNkv+bBw5Loy
	PThQLzG65kGAemt/7+Vf5qHNpMHFq6xbNytxsiz1sG6butH7Kis4tLzKvlXmDvXJEZet52ynS0uyz
	VhTnk+AWRNytlB/KwM7xGUHjvtYBQyKPGZSOU5BVE3+6LyAy1x4PjZE3f2Gz10h2I7OyD4IChjVGf
	UYoSvf5uH7hIJ7xJn+EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ2SF-0005rK-5S; Fri, 11 Oct 2019 21:28:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ2S7-0005qf-Ts; Fri, 11 Oct 2019 21:28:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id y19so13376562wrd.3;
 Fri, 11 Oct 2019 14:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bfKWmljBhhbz3pJBgekKZhzWDuOhbB2Ddk+2ciq5ka8=;
 b=ohL+8VJP0l1i/xy0IfSmPtrL86ip7fjeuW1/iu+Sq+coC15EESOFdIzzuM2SkrzcDp
 fWkdD/TWp29+ZqHi+8G/Hjx96kwjYoTWtIElaX1yqFaUQ+JKGvg4ABxezy94lJmB3Puk
 Rb+GgD4njHOCran2sa2lSWA2kW/vsf2H4/MazSua3/X7YQ3/1fjtmNLGm3+7JPjXU5ZO
 QT9qt6tFlpEXYYXhGQUhDhsx1Bg86f3vF3Oe15bCyn6QFVC7OQc/EkiIUdZBWADPinC1
 u4Zdg0h9GKwNGgVYSFooVhOPaJ+TOihFOA6BB4LBgOk7u4/Owc2aa0VOhy8povBPYnVV
 NbSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bfKWmljBhhbz3pJBgekKZhzWDuOhbB2Ddk+2ciq5ka8=;
 b=FVyoCWkpxlDG+TMbjivAHEHpO8qj2Gwg/TUAx85t2Vnu0aXuc51dWcQiDmtgz8mMAP
 oYCinifTdqWHaiVOw+9AY0DYWI0eq+ydq0RE+iE4dzyNlAoMN67ptDWR15XrQPvK77kP
 sdyPVO6r4DS+l653vYvJuIhlmoRvgorae7yNr9wa4F4VDfnkKn0V8uqJN4gIcFldtDfy
 gYFD+ht79AOg782jEMhB6NoFVGqM/bNcaCavwYYXWByBHoGGumxH4ebbayGoCm8qUBtK
 wdJw++WH77zByB1AzuN4K/pIJ2ENTPdI9ysKzlEZXhkMqJc2WMWGeT/Dq9fK6X1PTU/Q
 Yi4Q==
X-Gm-Message-State: APjAAAVMPfdZxkfA3NuqH/k0MO6v8FlLfrP2l/p/UgJJOvza9nDu7rQy
 S4N1G501diwI5D7aGF5k3w==
X-Google-Smtp-Source: APXvYqwmF1lNodIYp/c2WCNVIrwj7JDssewLAiUGEg6UdvMuE+ulWfi4WV5klajsEZVsvTcfVRTJZQ==
X-Received: by 2002:a5d:5542:: with SMTP id g2mr15196152wrw.115.1570829278309; 
 Fri, 11 Oct 2019 14:27:58 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id a13sm22797955wrf.73.2019.10.11.14.27.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 14:27:57 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: fix warning of Logical continuations
 should be on the previous line
Date: Fri, 11 Oct 2019 22:27:45 +0100
Message-Id: <20191011212745.20262-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_142759_963656_488FFC90 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbi.octave[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 f.fainelli@gmail.com, sbranden@broadcom.com, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, dave.stevenson@raspberrypi.org, rjui@broadcom.com,
 hverkuil-cisco@xs4all.nl, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix warning of logical continuations should be on the previous line.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../bcm2835-camera/bcm2835-camera.c           | 41 ++++++++-----------
 1 file changed, 17 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index d4d1e44b16b2..365bcd97e19d 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -337,9 +337,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 			if (is_capturing(dev)) {
 				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 					 "Grab another frame");
-				vchiq_mmal_port_parameter_set(
-					instance,
-					dev->capture.camera_port,
+			vchiq_mmal_port_parameter_set(instance,
+						      dev->capture.camera_port,
 					MMAL_PARAMETER_CAPTURE,
 					&dev->capture.frame_count,
 					sizeof(dev->capture.frame_count));
@@ -392,9 +391,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
 	    is_capturing(dev)) {
 		v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 			 "Grab another frame as buffer has EOS");
-		vchiq_mmal_port_parameter_set(
-			instance,
-			dev->capture.camera_port,
+		vchiq_mmal_port_parameter_set(instance,
+					      dev->capture.camera_port,
 			MMAL_PARAMETER_CAPTURE,
 			&dev->capture.frame_count,
 			sizeof(dev->capture.frame_count));
@@ -1090,8 +1088,7 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 
 	ret = vchiq_mmal_port_set_format(dev->instance, camera_port);
 
-	if (!ret
-	    && camera_port ==
+	if (!ret && camera_port ==
 	    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO]) {
 		bool overlay_enabled =
 		    !!dev->component[COMP_PREVIEW]->enabled;
@@ -1124,9 +1121,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 					  dev->capture.timeperframe.numerator;
 		ret = vchiq_mmal_port_set_format(dev->instance, preview_port);
 		if (overlay_enabled) {
-			ret = vchiq_mmal_port_connect_tunnel(
-				dev->instance,
-				preview_port,
+			ret = vchiq_mmal_port_connect_tunnel(dev->instance,
+							     preview_port,
 				&dev->component[COMP_PREVIEW]->input[0]);
 			if (!ret)
 				ret = vchiq_mmal_port_enable(dev->instance,
@@ -1154,9 +1150,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 			    camera_port->recommended_buffer.num;
 
 			ret =
-			    vchiq_mmal_port_connect_tunnel(
-					dev->instance,
-					camera_port,
+			    vchiq_mmal_port_connect_tunnel(dev->instance,
+							   camera_port,
 					&encode_component->input[0]);
 			if (ret) {
 				v4l2_dbg(1, bcm2835_v4l2_debug,
@@ -1655,8 +1650,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	dev->capture.enc_level = V4L2_MPEG_VIDEO_H264_LEVEL_4_0;
 
 	/* get the preview component ready */
-	ret = vchiq_mmal_component_init(
-			dev->instance, "ril.video_render",
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.video_render",
 			&dev->component[COMP_PREVIEW]);
 	if (ret < 0)
 		goto unreg_camera;
@@ -1669,8 +1664,8 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 	}
 
 	/* get the image encoder component ready */
-	ret = vchiq_mmal_component_init(
-		dev->instance, "ril.image_encode",
+	ret = vchiq_mmal_component_init(dev->instance,
+					"ril.image_encode",
 		&dev->component[COMP_IMAGE_ENCODE]);
 	if (ret < 0)
 		goto unreg_preview;
@@ -1731,15 +1726,13 @@ static int mmal_init(struct bm2835_mmal_dev *dev)
 
 unreg_vid_encoder:
 	pr_err("Cleanup: Destroy video encoder\n");
-	vchiq_mmal_component_finalise(
-		dev->instance,
-		dev->component[COMP_VIDEO_ENCODE]);
+	vchiq_mmal_component_finalise(dev->instance,
+				      dev->component[COMP_VIDEO_ENCODE]);
 
 unreg_image_encoder:
 	pr_err("Cleanup: Destroy image encoder\n");
-	vchiq_mmal_component_finalise(
-		dev->instance,
-		dev->component[COMP_IMAGE_ENCODE]);
+	vchiq_mmal_component_finalise(dev->instance,
+				      dev->component[COMP_IMAGE_ENCODE]);
 
 unreg_preview:
 	pr_err("Cleanup: Destroy video render\n");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
