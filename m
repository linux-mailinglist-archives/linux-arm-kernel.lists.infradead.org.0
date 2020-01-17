Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85861140CC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:39:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=99AlWEvsTRdhAsT1rfpeTeGLb3IbAoXDVRuV/ZBhTj4=; b=ozKW6nuvftOWwrEbDGu+Jb9HaN
	jU6I6cXcU9BKhJb90lTah9JS21Bs4id6QOT+LoKcARqxYYG3syWTie0EJm+p3SgVhUkzrha63qow/
	pwFMnCjPlZOu/1YxjZd7qQAc2i17ANfzcE634uRquoeHem00xauvsc2yM4ZcGTBnt5AWIBPvcDUTT
	u29g9x6FZvhd8fGkbN1r76SxNtqUa3ObyyrrihZRgQNum2NjCcxJiftL3GMFmFQjwRfZs2mSvRivf
	UG3l4O//07k6BFWFjfrzGa29UXfUP2NDhiywACsw3iMXp9l/a313Wvc94wGmxKr6uNhBTrIcYPVYb
	aC/wZDIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSmi-0006yF-QN; Fri, 17 Jan 2020 14:39:40 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSm7-0006jW-I2
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:05 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 865EFABB1;
 Fri, 17 Jan 2020 14:39:00 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 01/15] Revert "drivers/hwtracing: make coresight-*
 explicitly non-modular"
Date: Fri, 17 Jan 2020 15:39:56 +0100
Message-Id: <20200117144010.11149-2-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200117144010.11149-1-ykaukab@suse.de>
References: <20200117144010.11149-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063903_881963_2E15364A 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexander.shishkin@linux.intel.com, paul.gortmaker@windriver.com,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 941943cf519f7cacbbcecee5c4ef4b77b466bd5c.

Keep the descriptions in the driver headers. Also extend the same
changes to the drivers added after the reverted commit.

Prepare to make Coresight infrastructure modular.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 drivers/hwtracing/coresight/coresight-catu.c       |  5 ++++-
 drivers/hwtracing/coresight/coresight-etb10.c      |  7 ++++++-
 drivers/hwtracing/coresight/coresight-etm3x.c      | 12 ++++++------
 drivers/hwtracing/coresight/coresight-etm4x.c      |  7 +++++--
 drivers/hwtracing/coresight/coresight-funnel.c     |  6 +++++-
 drivers/hwtracing/coresight/coresight-replicator.c |  6 +++++-
 drivers/hwtracing/coresight/coresight-stm.c        |  4 +++-
 drivers/hwtracing/coresight/coresight-tmc.c        |  6 +++++-
 drivers/hwtracing/coresight/coresight-tpiu.c       |  6 +++++-
 include/linux/amba/bus.h                           |  9 ---------
 10 files changed, 44 insertions(+), 24 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
index 16ebf38a9f66..6fc76b776744 100644
--- a/drivers/hwtracing/coresight/coresight-catu.c
+++ b/drivers/hwtracing/coresight/coresight-catu.c
@@ -9,6 +9,7 @@
 
 #include <linux/amba/bus.h>
 #include <linux/device.h>
+#include <linux/module.h>
 #include <linux/dma-mapping.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
@@ -584,5 +585,7 @@ static struct amba_driver catu_driver = {
 	.probe				= catu_probe,
 	.id_table			= catu_ids,
 };
+module_amba_driver(catu_driver);
 
-builtin_amba_driver(catu_driver);
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("Coresight Address Translation Unit driver");
diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
index 3810290e6d07..2d5a542e5464 100644
--- a/drivers/hwtracing/coresight/coresight-etb10.c
+++ b/drivers/hwtracing/coresight/coresight-etb10.c
@@ -7,6 +7,7 @@
 
 #include <linux/atomic.h>
 #include <linux/kernel.h>
+#include <linux/module.h>
 #include <linux/init.h>
 #include <linux/types.h>
 #include <linux/device.h>
@@ -846,4 +847,8 @@ static struct amba_driver etb_driver = {
 	.probe		= etb_probe,
 	.id_table	= etb_ids,
 };
-builtin_amba_driver(etb_driver);
+
+module_amba_driver(etb_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("CoreSight Embedded Trace Buffer driver");
diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index e2cb6873c3f2..8ee004ecaaa9 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -6,7 +6,7 @@
  */
 
 #include <linux/kernel.h>
-#include <linux/moduleparam.h>
+#include <linux/module.h>
 #include <linux/init.h>
 #include <linux/types.h>
 #include <linux/device.h>
@@ -33,10 +33,6 @@
 #include "coresight-etm.h"
 #include "coresight-etm-perf.h"
 
-/*
- * Not really modular but using module_param is the easiest way to
- * remain consistent with existing use cases for now.
- */
 static int boot_enable;
 module_param_named(boot_enable, boot_enable, int, S_IRUGO);
 
@@ -947,4 +943,8 @@ static struct amba_driver etm_driver = {
 	.probe		= etm_probe,
 	.id_table	= etm_ids,
 };
-builtin_amba_driver(etm_driver);
+
+module_amba_driver(etm_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("CoreSight Program Flow Trace driver");
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index a90d757f7043..c83fb4492282 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -4,7 +4,7 @@
  */
 
 #include <linux/kernel.h>
-#include <linux/moduleparam.h>
+#include <linux/module.h>
 #include <linux/init.h>
 #include <linux/types.h>
 #include <linux/device.h>
@@ -1568,4 +1568,7 @@ static struct amba_driver etm4x_driver = {
 	.probe		= etm4_probe,
 	.id_table	= etm4_ids,
 };
-builtin_amba_driver(etm4x_driver);
+module_amba_driver(etm4x_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("CoreSight Program Flow Trace v4 driver");
diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 900690a9f7f0..08d8f2b3565f 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -7,6 +7,7 @@
 
 #include <linux/acpi.h>
 #include <linux/kernel.h>
+#include <linux/module.h>
 #include <linux/init.h>
 #include <linux/types.h>
 #include <linux/device.h>
@@ -372,4 +373,7 @@ static struct amba_driver dynamic_funnel_driver = {
 	.probe		= dynamic_funnel_probe,
 	.id_table	= dynamic_funnel_ids,
 };
-builtin_amba_driver(dynamic_funnel_driver);
+module_amba_driver(dynamic_funnel_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("CoreSight Funnel driver");
diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index e7dc1c31d20d..cc14c3696be0 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -8,6 +8,7 @@
 #include <linux/acpi.h>
 #include <linux/amba/bus.h>
 #include <linux/kernel.h>
+#include <linux/module.h>
 #include <linux/device.h>
 #include <linux/platform_device.h>
 #include <linux/io.h>
@@ -369,4 +370,7 @@ static struct amba_driver dynamic_replicator_driver = {
 	.probe		= dynamic_replicator_probe,
 	.id_table	= dynamic_replicator_ids,
 };
-builtin_amba_driver(dynamic_replicator_driver);
+module_amba_driver(dynamic_replicator_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("CoreSight Replicator driver");
diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
index b908ca104645..1a641c803445 100644
--- a/drivers/hwtracing/coresight/coresight-stm.c
+++ b/drivers/hwtracing/coresight/coresight-stm.c
@@ -992,5 +992,7 @@ static struct amba_driver stm_driver = {
 	.probe          = stm_probe,
 	.id_table	= stm_ids,
 };
+module_amba_driver(stm_driver);
 
-builtin_amba_driver(stm_driver);
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("CoreSight System Trace Macrocell driver");
diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 1cf82fa58289..5831c150034b 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/kernel.h>
+#include <linux/module.h>
 #include <linux/init.h>
 #include <linux/types.h>
 #include <linux/device.h>
@@ -558,4 +559,7 @@ static struct amba_driver tmc_driver = {
 	.probe		= tmc_probe,
 	.id_table	= tmc_ids,
 };
-builtin_amba_driver(tmc_driver);
+module_amba_driver(tmc_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("CoreSight Trace Memory Controller driver");
diff --git a/drivers/hwtracing/coresight/coresight-tpiu.c b/drivers/hwtracing/coresight/coresight-tpiu.c
index f8583e4032a6..1f3c512fde2b 100644
--- a/drivers/hwtracing/coresight/coresight-tpiu.c
+++ b/drivers/hwtracing/coresight/coresight-tpiu.c
@@ -7,6 +7,7 @@
 
 #include <linux/atomic.h>
 #include <linux/kernel.h>
+#include <linux/module.h>
 #include <linux/init.h>
 #include <linux/device.h>
 #include <linux/io.h>
@@ -226,4 +227,7 @@ static struct amba_driver tpiu_driver = {
 	.probe		= tpiu_probe,
 	.id_table	= tpiu_ids,
 };
-builtin_amba_driver(tpiu_driver);
+module_amba_driver(tpiu_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("CoreSight Trace Port Interface Unit driver");
diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
index 26f0ecf401ea..5d53776ba4e0 100644
--- a/include/linux/amba/bus.h
+++ b/include/linux/amba/bus.h
@@ -205,13 +205,4 @@ struct amba_device name##_device = {				\
 #define module_amba_driver(__amba_drv) \
 	module_driver(__amba_drv, amba_driver_register, amba_driver_unregister)
 
-/*
- * builtin_amba_driver() - Helper macro for drivers that don't do anything
- * special in driver initcall.  This eliminates a lot of boilerplate.  Each
- * driver may only use this macro once, and calling it replaces the instance
- * device_initcall().
- */
-#define builtin_amba_driver(__amba_drv) \
-	builtin_driver(__amba_drv, amba_driver_register)
-
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
