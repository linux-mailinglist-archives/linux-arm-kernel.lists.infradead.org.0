Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2381E4142
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:06:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNfF+Mf8X9kNZIDFwaHn83KDp6P6i3LKBn3C4hphqB0=; b=Sem4FxhAF7c7tS
	ONYKY//lhdqIOMMK1ivaYLhmmzL1diFCo/dla1tbFnpOY8XZxD99LB72w/oOmbDYJA3lFNI+NTyeP
	QCbAhV140EJ1HG1bqn49uqIBsoFbpo7Uetwrwo6evEmYi8J65/EWjI7lJL+9aFVNN6WBfL0ppVQM8
	3thZcbuHcqoJnm2KrZUczE1GYB9bg1e5QakTa5ApEPepDI3hCm3X80fbAoyIpidhYCC3ynjEA6y4u
	jdIe69PsGFl6iuKWZahScn51/IfkKxruwS9dEDGavsRcQnUx9SH5PMPmZzp8N6PQ4s908USoQn85r
	ytTlrEJ/JD7Xhl4YGb0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdupK-0006E2-ES; Wed, 27 May 2020 12:06:30 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudr-0006yA-LJ; Wed, 27 May 2020 11:54:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9B992AB7D;
 Wed, 27 May 2020 11:54:40 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 27/50] staging: vchiq: Get rid of vchiq_util.h
Date: Wed, 27 May 2020 13:53:32 +0200
Message-Id: <20200527115400.31391-28-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045440_012002_FC2194E3 
X-CRM114-Status: GOOD (  13.11  )
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
 laurent.pinchart@ideasonboard.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The header file only provides other includes. Move the relevant includes
to their respective C files and delete it for good.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq.h |  1 -
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  1 +
 .../interface/vchiq_arm/vchiq_arm.c           |  1 +
 .../interface/vchiq_arm/vchiq_core.c          |  9 +++++++
 .../interface/vchiq_arm/vchiq_shim.c          |  4 +--
 .../interface/vchiq_arm/vchiq_util.h          | 27 -------------------
 6 files changed, 13 insertions(+), 30 deletions(-)
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
index 25af99a0f394..211b20705e36 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
@@ -5,7 +5,6 @@
 #define VCHIQ_VCHIQ_H
 
 #include "vchiq_if.h"
-#include "vchiq_util.h"
 
 /* Do this so that we can test-build the code on non-rpi systems */
 #if IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index ecec84ad4345..d80c5f9b5cd8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -13,6 +13,7 @@
 #include <linux/uaccess.h>
 #include <linux/mm.h>
 #include <linux/of.h>
+#include <linux/slab.h>
 #include <soc/bcm2835/raspberrypi-firmware.h>
 
 #define TOTAL_SLOTS (VCHIQ_SLOT_ZERO_SLOTS + 2 * 32)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index abc30e593b67..4230f33ac38a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -23,6 +23,7 @@
 #include <linux/compat.h>
 #include <linux/dma-mapping.h>
 #include <linux/rcupdate.h>
+#include <linux/delay.h>
 #include <soc/bcm2835/raspberrypi-firmware.h>
 
 #include "vchiq_core.h"
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 0e9680904e68..5b55d32e62a0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1,8 +1,17 @@
 // SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
 /* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
 
+#include <linux/types.h>
+#include <linux/completion.h>
+#include <linux/mutex.h>
+#include <linux/bitops.h>
+#include <linux/kthread.h>
+#include <linux/wait.h>
+#include <linux/delay.h>
+#include <linux/slab.h>
 #include <linux/kref.h>
 #include <linux/rcupdate.h>
+#include <linux/sched/signal.h>
 
 #include "vchiq_core.h"
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 85d79d0033bf..9728667adbd9 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -2,14 +2,14 @@
 /* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
 #include <linux/module.h>
 #include <linux/types.h>
+#include <linux/slab.h>
+#include <linux/delay.h>
 
 #include "vchiq_if.h"
 #include "../vchi/vchi.h"
 #include "vchiq.h"
 #include "vchiq_core.h"
 
-#include "vchiq_util.h"
-
 struct vchi_service {
 	unsigned int handle;
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
deleted file mode 100644
index dcf081079c39..000000000000
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
-/* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
-
-#ifndef VCHIQ_UTIL_H
-#define VCHIQ_UTIL_H
-
-#include <linux/types.h>
-#include <linux/completion.h>
-#include <linux/mutex.h>
-#include <linux/bitops.h>
-#include <linux/kthread.h>
-#include <linux/wait.h>
-#include <linux/vmalloc.h>
-#include <linux/jiffies.h>
-#include <linux/delay.h>
-#include <linux/string.h>
-#include <linux/interrupt.h>
-#include <linux/random.h>
-#include <linux/sched/signal.h>
-#include <linux/ctype.h>
-#include <linux/uaccess.h>
-#include <linux/time.h>  /* for time_t */
-#include <linux/slab.h>
-
-#include "vchiq_if.h"
-
-#endif
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
