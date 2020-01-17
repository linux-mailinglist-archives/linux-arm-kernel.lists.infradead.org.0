Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74D4140CE1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=353wmTjt/CP+3XcTz4mBaVcS5t2MY0/hb+eOr2ILsXY=; b=IekNGKGCm0zOoKIPQQaXJLfrQW
	lmunQcXDnn+Dmcj2cu2saj/ujjnBkVmnnrl6l57GrITzOfYAvC+tFDo5pindZr0elze4ISLl6gsRq
	COUuvtwyGykGtEA88MUWYx3CxkkS8OrXsV2XlKsVIqf1O9NGxcw49XzN6UwqVIa78Q/H/CFpuV1rJ
	0pkjQswwtOmab8cCL+OZQmLgLCcHDLVCNKOl90oQFrwN7vDniRwe+hHv60ykaQgSaeFetqTPxfS+0
	v2mR4FY1HPwB3bNUfYuJ3mSXrY40x9dfk/BIgaHQghlrHMdxSdW7t0lS5LmBq/dxPJVAoM6nekCKz
	PGSmj7vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSqA-0002wh-H0; Fri, 17 Jan 2020 14:43:14 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSmD-0006oP-OI
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6DB0EAD2B;
 Fri, 17 Jan 2020 14:39:08 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 13/15] coresight: Kconfig: make all configurations tristate
Date: Fri, 17 Jan 2020 15:40:08 +0100
Message-Id: <20200117144010.11149-14-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200117144010.11149-1-ykaukab@suse.de>
References: <20200117144010.11149-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063910_111677_0673AA82 
X-CRM114-Status: GOOD (  13.16  )
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

Allow coresight drivers to be built as modules.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 drivers/hwtracing/coresight/Kconfig | 47 ++++++++++++++++++++++++++++++-------
 1 file changed, 38 insertions(+), 9 deletions(-)

diff --git a/drivers/hwtracing/coresight/Kconfig b/drivers/hwtracing/coresight/Kconfig
index 6ff30e25af55..699d355abad4 100644
--- a/drivers/hwtracing/coresight/Kconfig
+++ b/drivers/hwtracing/coresight/Kconfig
@@ -3,7 +3,7 @@
 # Coresight configuration
 #
 menuconfig CORESIGHT
-	bool "CoreSight Tracing Support"
+	tristate "CoreSight Tracing Support"
 	depends on ARM || ARM64
 	depends on OF || ACPI
 	select ARM_AMBA
@@ -15,17 +15,23 @@ menuconfig CORESIGHT
 	  specification and configure the right series of components when a
 	  trace source gets enabled.
 
+	  To compile this driver as a module, choose M here: the
+	  module will be called coresight.
+
 if CORESIGHT
 config CORESIGHT_LINKS_AND_SINKS
-	bool "CoreSight Link and Sink drivers"
+	tristate "CoreSight Link and Sink drivers"
 	help
 	  This enables support for CoreSight link and sink drivers that are
 	  responsible for transporting and collecting the trace data
 	  respectively.  Link and sinks are dynamically aggregated with a trace
 	  entity at run time to form a complete trace path.
 
+	  To compile these drivers as a modules, choose M here: the
+	  modules will be called coresight-funnel and coresight-replicator.
+
 config CORESIGHT_LINK_AND_SINK_TMC
-	bool "Coresight generic TMC driver"
+	tristate "Coresight generic TMC driver"
 	depends on CORESIGHT_LINKS_AND_SINKS
 	help
 	  This enables support for the Trace Memory Controller driver.
@@ -34,8 +40,11 @@ config CORESIGHT_LINK_AND_SINK_TMC
 	  complies with the generic implementation of the component without
 	  special enhancement or added features.
 
+	  To compile this driver as a module, choose M here: the
+	  module will be called coresight-tmc-etx.
+
 config CORESIGHT_CATU
-	bool "Coresight Address Translation Unit (CATU) driver"
+	tristate "Coresight Address Translation Unit (CATU) driver"
 	depends on CORESIGHT_LINK_AND_SINK_TMC
 	help
 	   Enable support for the Coresight Address Translation Unit (CATU).
@@ -45,8 +54,11 @@ config CORESIGHT_CATU
 	   by looking up the provided table. CATU can also be used in pass-through
 	   mode where the address is not translated.
 
+	   To compile this driver as a module, choose M here: the
+	   module will be called coresight-catu.
+
 config CORESIGHT_SINK_TPIU
-	bool "Coresight generic TPIU driver"
+	tristate "Coresight generic TPIU driver"
 	depends on CORESIGHT_LINKS_AND_SINKS
 	help
 	  This enables support for the Trace Port Interface Unit driver,
@@ -56,16 +68,22 @@ config CORESIGHT_SINK_TPIU
 	  connected to an external host for use case capturing more traces than
 	  the on-board coresight memory can handle.
 
+	  To compile this driver as a module, choose M here: the
+	  module will be called coresight-tpiu.
+
 config CORESIGHT_SINK_ETBV10
-	bool "Coresight ETBv1.0 driver"
+	tristate "Coresight ETBv1.0 driver"
 	depends on CORESIGHT_LINKS_AND_SINKS
 	help
 	  This enables support for the Embedded Trace Buffer version 1.0 driver
 	  that complies with the generic implementation of the component without
 	  special enhancement or added features.
 
+	  To compile this driver as a module, choose M here: the
+	  module will be called coresight-etb10.
+
 config CORESIGHT_SOURCE_ETM3X
-	bool "CoreSight Embedded Trace Macrocell 3.x driver"
+	tristate "CoreSight Embedded Trace Macrocell 3.x driver"
 	depends on !ARM64
 	select CORESIGHT_LINKS_AND_SINKS
 	help
@@ -74,8 +92,11 @@ config CORESIGHT_SOURCE_ETM3X
 	  This is primarily useful for instruction level tracing.  Depending
 	  the ETM version data tracing may also be available.
 
+	  To compile this driver as a module, choose M here: the
+	  module will be called coresight-etm3.
+
 config CORESIGHT_SOURCE_ETM4X
-	bool "CoreSight Embedded Trace Macrocell 4.x driver"
+	tristate "CoreSight Embedded Trace Macrocell 4.x driver"
 	depends on ARM64
 	select CORESIGHT_LINKS_AND_SINKS
 	select PID_IN_CONTEXTIDR
@@ -85,8 +106,11 @@ config CORESIGHT_SOURCE_ETM4X
 	  for instruction level tracing. Depending on the implemented version
 	  data tracing may also be available.
 
+	  To compile this driver as a module, choose M here: the
+	  module will be called coresight-etm4.
+
 config CORESIGHT_STM
-	bool "CoreSight System Trace Macrocell driver"
+	tristate "CoreSight System Trace Macrocell driver"
 	depends on (ARM && !(CPU_32v3 || CPU_32v4 || CPU_32v4T)) || ARM64
 	select CORESIGHT_LINKS_AND_SINKS
 	select STM
@@ -96,6 +120,9 @@ config CORESIGHT_STM
 	  logging useful software events or data coming from various entities
 	  in the system, possibly running different OSs
 
+	  To compile this driver as a module, choose M here: the
+	  module will be called coresight-stm.
+
 config CORESIGHT_CPU_DEBUG
 	tristate "CoreSight CPU Debug driver"
 	depends on ARM || ARM64
@@ -110,4 +137,6 @@ config CORESIGHT_CPU_DEBUG
 	  properly, please refer Documentation/trace/coresight-cpu-debug.rst
 	  for detailed description and the example for usage.
 
+	  To compile this driver as a module, choose M here: the
+	  module will be called coresight-cpu-debug.
 endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
