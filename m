Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A427F114DC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 09:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1nzceNtAxi9aUv6vtIqnix3gN2+xX0DNYhv6bOdTqxY=; b=Qc/s4NtFPoSWOk
	/gdGILm5ExWy9VJEJ8hzwdunUpD3wxOl5sXj8ec44izsctTvjmBjAKpM89mwg2MupsrSDkaWLAM+e
	Cca8K2JF+iHuD3QO6AgU1tHG714E6fXRiXH39R9zbpqWFdpP9hsUxvbF7ON37FLBMRxLk+IEqM512
	IyBNp9XOVWJZqYcfaqqWNQm1s8KeOxf/mHOTfpkxkogByBgV3GQ4yNjDbyuD6SkOHFcMb9dhyeuuM
	tE4eOMtxCPAwMmF/J/Fb+8CRHpiKZ/EDPFldEoPgbjF5VWAd7pMJj8rwVmADDDBEe4fDxv3L1Btcf
	kKMmxLR8SaGaPL9meI/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id9Ou-0004nf-55; Fri, 06 Dec 2019 08:55:48 +0000
Received: from faui03.informatik.uni-erlangen.de ([131.188.30.103])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id9Ol-0004mr-Bs; Fri, 06 Dec 2019 08:55:41 +0000
Received: from faui04l.informatik.uni-erlangen.de
 (faui04l.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:142])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 9B6AE241797;
 Fri,  6 Dec 2019 09:54:57 +0100 (CET)
Received: by faui04l.informatik.uni-erlangen.de (Postfix, from userid 66757)
 id 7997E620AD0; Fri,  6 Dec 2019 09:54:57 +0100 (CET)
From: Michael Kupfer <michael.kupfer@fau.de>
To: eric@anholt.net, wahrenst@gmx.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 mchehab+samsung@kernel.org, hverkuil-cisco@xs4all.nl,
 linux-media@vger.kernel.org
Subject: [PATCH] staging/vc04_services/bcm2835-camera: distinct numeration and
 names for devices
Date: Fri,  6 Dec 2019 09:54:32 +0100
Message-Id: <20191206085432.19962-1-michael.kupfer@fau.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_005539_555324_CE59629A 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [131.188.30.103 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 Michael Kupfer <michael.kupfer@fau.de>, sbranden@broadcom.com,
 linux-kernel@i4.cs.fau.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, daniela.mormocea@gmail.com,
 dave.stevenson@raspberrypi.org, rjui@broadcom.com,
 Kay Friedrich <kay.friedrich@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Create a static atomic counter for numerating cameras.
Use the Media Subsystem Kernel Internal API to create distinct
device-names, so that the camera-number (given by the counter)
matches the camera-name.

Co-developed-by: Kay Friedrich <kay.friedrich@fau.de>
Signed-off-by: Kay Friedrich <kay.friedrich@fau.de>
Signed-off-by: Michael Kupfer <michael.kupfer@fau.de>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c        | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index beb6a0063bb8..be5f90a8b49d 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -60,6 +60,9 @@ MODULE_PARM_DESC(max_video_width, "Threshold for video mode");
 module_param(max_video_height, int, 0644);
 MODULE_PARM_DESC(max_video_height, "Threshold for video mode");
 
+/* camera instance counter */
+static atomic_t camera_instance = ATOMIC_INIT(0);
+
 /* global device data array */
 static struct bm2835_mmal_dev *gdev[MAX_BCM2835_CAMERAS];
 
@@ -1870,7 +1873,6 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
 
 		/* v4l2 core mutex used to protect all fops and v4l2 ioctls. */
 		mutex_init(&dev->mutex);
-		dev->camera_num = camera;
 		dev->max_width = resolutions[camera][0];
 		dev->max_height = resolutions[camera][1];
 
@@ -1886,8 +1888,9 @@ static int bcm2835_mmal_probe(struct platform_device *pdev)
 		dev->capture.fmt = &formats[3]; /* JPEG */
 
 		/* v4l device registration */
-		snprintf(dev->v4l2_dev.name, sizeof(dev->v4l2_dev.name),
-			 "%s", BM2835_MMAL_MODULE_NAME);
+		dev->camera_num = v4l2_device_set_name(&dev->v4l2_dev,
+						       BM2835_MMAL_MODULE_NAME,
+						       &camera_instance);
 		ret = v4l2_device_register(NULL, &dev->v4l2_dev);
 		if (ret) {
 			dev_err(&pdev->dev, "%s: could not register V4L2 device: %d\n",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
