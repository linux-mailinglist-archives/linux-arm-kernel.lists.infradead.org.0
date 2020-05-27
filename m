Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB501E41C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gciXbU/g/Y57cd/Np5ByDBrCYToVcEVrVoZykYgtrFI=; b=Vo5usl04dZwegi
	yFsv3bO7JRJTFAMG51o+KFXxTFcFbiyCgsbyIn/rmV4K+rB+0MzvodnnhJzpKHwber6tX98uF4DNb
	ucpqMBGvSrZHWkfDr0vqnfC8bRhOB4QSHPgA4ZDrkrQQt2RFa/hjcLev2TErb6RxcDtwZjA725Ppn
	1BxAAbxGWxQixtCpTVl3eHAgAsVf1QXtXPmrUxly0E2zZAI039MtJUYaT/9uoAW3+5/Sz9B5DihND
	GsuSVJtWc4Ork8EbJbmFvs6YracbaA8LoRMEvnHIcOR0PoWVO7AaDjKihlW3N+Yb028DAlQLAKoyv
	raSSqnNImmia9Kn68cyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduwx-0007bK-73; Wed, 27 May 2020 12:14:23 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdueI-0007Ze-Qa; Wed, 27 May 2020 11:55:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D415AAE2D;
 Wed, 27 May 2020 11:55:06 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [RFC 50/50] staging: vchiq: Move vchiq.h into include directory
Date: Wed, 27 May 2020 13:53:55 +0200
Message-Id: <20200527115400.31391-51-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045507_198276_A8670D56 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 laurent.pinchart@ideasonboard.com, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To make the separation clear between vchiq's header files and vchiq.h,
which is to be used by services and is the 'public' API, move it into a
dedicated includes directory.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/Makefile                         | 2 +-
 drivers/staging/vc04_services/bcm2835-audio/Makefile           | 2 +-
 drivers/staging/vc04_services/bcm2835-audio/bcm2835.h          | 2 +-
 .../{interface/vchiq_arm => include/linux/raspberrypi}/vchiq.h | 0
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h | 2 +-
 .../staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h    | 2 +-
 drivers/staging/vc04_services/vc-sm-cma/Makefile               | 1 -
 drivers/staging/vc04_services/vc-sm-cma/vc_sm.c                | 2 +-
 drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c       | 2 +-
 drivers/staging/vc04_services/vchiq-mmal/Makefile              | 1 +
 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c          | 3 +--
 11 files changed, 9 insertions(+), 10 deletions(-)
 rename drivers/staging/vc04_services/{interface/vchiq_arm => include/linux/raspberrypi}/vchiq.h (100%)

diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
index e32c0744e7fc..e1de39303ffe 100644
--- a/drivers/staging/vc04_services/Makefile
+++ b/drivers/staging/vc04_services/Makefile
@@ -14,5 +14,5 @@ obj-$(CONFIG_VIDEO_ISP_BCM2835)		+= bcm2835-isp/
 obj-$(CONFIG_BCM_VC_SM_CMA) 		+= vc-sm-cma/
 obj-$(CONFIG_BCM2835_VCHIQ_MMAL)	+= vchiq-mmal/
 
-ccflags-y += -D__VCCOREVER__=0x04000000
+ccflags-y += -I $(srctree)/$(src)/include  -D__VCCOREVER__=0x04000000
 
diff --git a/drivers/staging/vc04_services/bcm2835-audio/Makefile b/drivers/staging/vc04_services/bcm2835-audio/Makefile
index 13fa6d7d9745..d59fe4dde615 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/Makefile
+++ b/drivers/staging/vc04_services/bcm2835-audio/Makefile
@@ -2,4 +2,4 @@
 obj-$(CONFIG_SND_BCM2835)	+= snd-bcm2835.o
 snd-bcm2835-objs		:= bcm2835.o bcm2835-ctl.o bcm2835-pcm.o bcm2835-vchiq.o
 
-ccflags-y += -I $(srctree)/$(src)/.. -D__VCCOREVER__=0x04000000
+ccflags-y += -I $(srctree)/$(src)/../include -D__VCCOREVER__=0x04000000
diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
index ca220f5230ec..1b36475872d6 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
@@ -6,10 +6,10 @@
 
 #include <linux/device.h>
 #include <linux/wait.h>
+#include <linux/raspberrypi/vchiq.h>
 #include <sound/core.h>
 #include <sound/pcm.h>
 #include <sound/pcm-indirect.h>
-#include "interface/vchiq_arm/vchiq.h"
 
 #define MAX_SUBSTREAMS   (8)
 #define AVAIL_SUBSTREAMS_MASK  (0xff)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h b/drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h
similarity index 100%
rename from drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
rename to drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 8a27f3d7217e..e67692879249 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -10,10 +10,10 @@
 #include <linux/kref.h>
 #include <linux/rcupdate.h>
 #include <linux/wait.h>
+#include <linux/raspberrypi/vchiq.h>
 
 #include "vchiq_cfg.h"
 
-#include "vchiq.h"
 
 /* Do this so that we can test-build the code on non-rpi systems */
 #if IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index f285d754ad28..3653fd99d8a1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -5,7 +5,7 @@
 #define VCHIQ_IOCTLS_H
 
 #include <linux/ioctl.h>
-#include "vchiq.h"
+#include <linux/raspberrypi/vchiq.h>
 
 #define VCHIQ_IOC_MAGIC 0xc4
 #define VCHIQ_INVALID_HANDLE (~0)
diff --git a/drivers/staging/vc04_services/vc-sm-cma/Makefile b/drivers/staging/vc04_services/vc-sm-cma/Makefile
index 77d173694fbf..c92a5775c62e 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/Makefile
+++ b/drivers/staging/vc04_services/vc-sm-cma/Makefile
@@ -1,6 +1,5 @@
 ccflags-y += \
 	-I$(srctree)/$(src)/../ \
-	-I$(srctree)/$(src)/../interface/vchi \
 	-I$(srctree)/$(src)/../interface/vchiq_arm\
 	-I$(srctree)/$(src)/../include
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
index e4f7bdeef66d..cc69ce932317 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
@@ -46,9 +46,9 @@
 #include <linux/seq_file.h>
 #include <linux/syscalls.h>
 #include <linux/types.h>
+#include <linux/raspberrypi/vchiq.h>
 #include <asm/cacheflush.h>
 
-#include "vchiq.h"
 #include "vchiq_connected.h"
 #include "vc_sm_cma_vchi.h"
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index 2c65416cd331..8d8eda1a8142 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -18,8 +18,8 @@
 #include <linux/semaphore.h>
 #include <linux/slab.h>
 #include <linux/types.h>
+#include <linux/raspberrypi/vchiq.h>
 
-#include "vchiq.h"
 #include "vc_sm_cma_vchi.h"
 
 #define VC_SM_VER  1
diff --git a/drivers/staging/vc04_services/vchiq-mmal/Makefile b/drivers/staging/vc04_services/vchiq-mmal/Makefile
index f8164c33aec3..b2a830f48acc 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/Makefile
+++ b/drivers/staging/vc04_services/vchiq-mmal/Makefile
@@ -5,4 +5,5 @@ obj-$(CONFIG_BCM2835_VCHIQ_MMAL) += bcm2835-mmal-vchiq.o
 
 ccflags-y += \
 	-I$(srctree)/$(src)/.. \
+	-I$(srctree)/$(src)/../include \
 	-D__VCCOREVER__=0x04000000
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 2101b79780eb..e057e21961d5 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -23,6 +23,7 @@
 #include <linux/slab.h>
 #include <linux/completion.h>
 #include <linux/vmalloc.h>
+#include <linux/raspberrypi/vchiq.h>
 #include <media/videobuf2-vmalloc.h>
 
 #include "mmal-common.h"
@@ -32,8 +33,6 @@
 
 #include "vc-sm-cma/vc_sm_knl.h"
 
-#include "interface/vchiq_arm/vchiq.h"
-
 /*
  * maximum number of components supported.
  * This matches the maximum permitted by default on the VPU
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
