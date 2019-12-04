Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AE3112AB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:49:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1nzceNtAxi9aUv6vtIqnix3gN2+xX0DNYhv6bOdTqxY=; b=Me1W8uQFd9I/+V
	zKkH5nFndbw84PQhNcNxmFh276/W1mj9jGK8hCFnbydLxRbXs2t1ytVvqLOfYyLRDvBhx0t/WJzpN
	kxEfxjzT9La7lk/4kGsjQiB2bc2+3R4upDnTqARTHVIxJpPRouUkEYMxzGa+T7B0hPgbKvtS6a1JJ
	PmjjUQNhDsctZJ7lLzssB+rsXG0oZ8yX1cZfym6G/pe9pDF/5nn7MBucS8Lsr/0xHQdQpfwmsp2nu
	Ts6fJG1joLHwoWF/VF43GafJmGPrrrQqIRv+92oIOhKaChc+jFNAwywQZvZjuSj06ig+V1I9X1SwN
	+QCw3uGoPoPACn7aw9jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icTAD-00065r-QT; Wed, 04 Dec 2019 11:49:49 +0000
Received: from faui03.informatik.uni-erlangen.de ([131.188.30.103])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icTA2-0005px-Px; Wed, 04 Dec 2019 11:49:40 +0000
Received: from faui04l.informatik.uni-erlangen.de
 (faui04l.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:142])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 1C11924184D;
 Wed,  4 Dec 2019 12:49:03 +0100 (CET)
Received: by faui04l.informatik.uni-erlangen.de (Postfix, from userid 66757)
 id 041E8620946; Wed,  4 Dec 2019 12:49:02 +0100 (CET)
From: Michael Kupfer <michael.kupfer@fau.de>
To: eric@anholt.net, wahrenst@gmx.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] staging/vc04_services/bcm2835-camera: distinct numeration and
 names for devices
Date: Wed,  4 Dec 2019 12:48:14 +0100
Message-Id: <20191204114814.26252-1-michael.kupfer@fau.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_034938_999891_5F4068AA 
X-CRM114-Status: UNSURE (   8.86  )
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
Cc: Kay Friedrich <kay.friedrich@fau.de>,
 Michael Kupfer <michael.kupfer@fau.de>, linux-kernel@i4.cs.fau.de
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
