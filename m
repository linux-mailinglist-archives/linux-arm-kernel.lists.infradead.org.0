Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB9E18BB63
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:43:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TYMu4QtnvWVtSmQTaPglETu5TjZciVLYXeo9RnwXa5I=; b=az6/l+nqWEvbixqQvwpAVMiXID
	gu1EKUEAwt+YY1P06aOtO9is7FTTBOGFSEzmeEMpxyFIQV8M95jDjUS2hRUaa0/HtIdHx/WDHxBzK
	AEFzZCg1orccFTLsQuTkHkgoIc32o2sWXXKBBDBpBgNnVW87UTu7gqVN22giU+nerj2rT0WfcZuGK
	dHPCueNG5neclLkhDZvQ6bTmrSMIYj0HeZIWg8pZDZNAvpX1bH2tNv3nokYW5m6wnSMEk0hXZ+oZi
	GhubTRTYyYnZlFyQ8tu6pmmiJBKOFbnVd1tXDJ7BSjdHK4pNdCXHUljvEpAjG0h253+jEQqvpvgl6
	JftLeppw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExKm-0002zL-VB; Thu, 19 Mar 2020 15:43:48 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExII-0000r1-HL
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:41:18 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8F8F02000E0;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8278D2000C2;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 3503A205C2;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org, laurentiu.tudor@nxp.com, stuyoder@gmail.com,
 leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
 bharatb.yadav@gmail.com
Subject: [PATCH 08/10] bus/fsl-mc: Export a cleanup function for DPRC
Date: Thu, 19 Mar 2020 17:40:49 +0200
Message-Id: <20200319154051.30609-9-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_084114_871101_2221CCD1 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Diana Craciun <diana.craciun@oss.nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Create and export a cleanup function for DPRC. The function
is used by the DPRC driver, but it will be used by the VFIO
driver as well.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc-driver.c | 52 ++++++++++++++++++++++++--------
 include/linux/fsl/mc.h           |  2 ++
 2 files changed, 41 insertions(+), 13 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
index 789220f0372a..a655e3fee291 100644
--- a/drivers/bus/fsl-mc/dprc-driver.c
+++ b/drivers/bus/fsl-mc/dprc-driver.c
@@ -725,33 +725,25 @@ static void dprc_teardown_irq(struct fsl_mc_device *mc_dev)
 }
 
 /**
- * dprc_remove - callback invoked when a DPRC is being unbound from this driver
+ * dprc_cleanup - function that cleanups a DPRC
  *
  * @mc_dev: Pointer to fsl-mc device representing the DPRC
  *
- * It removes the DPRC's child objects from Linux (not from the MC) and
- * closes the DPRC device in the MC.
- * It tears down the interrupts that were configured for the DPRC device.
+ * It closes the DPRC device in the MC.
  * It destroys the interrupt pool associated with this MC bus.
  */
-static int dprc_remove(struct fsl_mc_device *mc_dev)
+
+int dprc_cleanup(struct fsl_mc_device *mc_dev)
 {
 	int error;
 	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_dev);
 
 	if (!is_fsl_mc_bus_dprc(mc_dev))
 		return -EINVAL;
-	if (!mc_dev->mc_io)
-		return -EINVAL;
 
-	if (!mc_bus->irq_resources)
+	if (!mc_dev->mc_io)
 		return -EINVAL;
 
-	if (dev_get_msi_domain(&mc_dev->dev))
-		dprc_teardown_irq(mc_dev);
-
-	device_for_each_child(&mc_dev->dev, NULL, __fsl_mc_device_remove);
-
 	if (dev_get_msi_domain(&mc_dev->dev)) {
 		fsl_mc_cleanup_irq_pool(mc_bus);
 		dev_set_msi_domain(&mc_dev->dev, NULL);
@@ -768,6 +760,40 @@ static int dprc_remove(struct fsl_mc_device *mc_dev)
 		mc_dev->mc_io = NULL;
 	}
 
+	return 0;
+}
+EXPORT_SYMBOL_GPL(dprc_cleanup);
+
+/**
+ * dprc_remove - callback invoked when a DPRC is being unbound from this driver
+ *
+ * @mc_dev: Pointer to fsl-mc device representing the DPRC
+ *
+ * It removes the DPRC's child objects from Linux (not from the MC) and
+ * closes the DPRC device in the MC.
+ * It tears down the interrupts that were configured for the DPRC device.
+ * It destroys the interrupt pool associated with this MC bus.
+ */
+static int dprc_remove(struct fsl_mc_device *mc_dev)
+{
+	int error;
+	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_dev);
+
+	if (!is_fsl_mc_bus_dprc(mc_dev))
+		return -EINVAL;
+
+	if (!mc_bus->irq_resources)
+		return -EINVAL;
+
+	if (dev_get_msi_domain(&mc_dev->dev))
+		dprc_teardown_irq(mc_dev);
+
+	device_for_each_child(&mc_dev->dev, NULL, __fsl_mc_device_remove);
+
+	error = dprc_cleanup(mc_dev);
+	if (error < 0)
+		dev_err(&mc_dev->dev, "dprc_close() failed: %d\n", error);
+
 	dev_info(&mc_dev->dev, "DPRC device unbound from driver");
 	return 0;
 }
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index 2bdd96a482fb..e3ba273a1122 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -480,6 +480,8 @@ int dprc_scan_container(struct fsl_mc_device *mc_bus_dev,
 		   const char *driver_override,
 		   bool alloc_interrupts);
 
+int dprc_cleanup(struct fsl_mc_device *mc_dev);
+
 /*
  * Data Path Buffer Pool (DPBP) API
  * Contains initialization APIs and runtime control APIs for DPBP
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
