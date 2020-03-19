Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBBD18BB57
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:42:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y+I4DraNz3hycy/QiVGcEmJeBGR1Heqrkk4S7IJVzbs=; b=CBH4fNZ0vGK/ZlMgdXlW2du8ct
	dhbiqXJFiJ74v6ZnzDXtFWDoxKSqaCnxjtvFlewSKhWt1bhOc1Iw8BZN1sT6k64rHWqaME1bSqpC+
	inFFe3MWwQ+eDBE0WiRZLo+cRESyU/mJJ5HJZS4xh16lRGCcxiSs+bx00dZXjPZARcqM/Y43IYVSA
	A8V2eG48gHaMM7AN/X3HXLeVr2TFbaySL1M8e8tE3owrTn2+zjd20XARU8MVWNse4ob7tPkWWSHMF
	NsODE/HINaqCJCZXLTvEcXyrDG8Hphg1DA/HyShY3bepqH2depa+46CmQCS+UZO3K4Dcq2dYD/h5w
	hgo0kkUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExJC-0001N2-Ha; Thu, 19 Mar 2020 15:42:10 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExIF-0000n2-9R
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:41:13 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 790FE2000E9;
 Thu, 19 Mar 2020 16:41:09 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 75C752000E6;
 Thu, 19 Mar 2020 16:41:09 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 27F41205C2;
 Thu, 19 Mar 2020 16:41:09 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org, laurentiu.tudor@nxp.com, stuyoder@gmail.com,
 leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
 bharatb.yadav@gmail.com
Subject: [PATCH 01/10] bus/fsl-mc: Do no longer export the total number of
 irqs outside dprc_scan_objects
Date: Thu, 19 Mar 2020 17:40:42 +0200
Message-Id: <20200319154051.30609-2-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_084111_701873_F3591C54 
X-CRM114-Status: GOOD (  14.26  )
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

The total number of interrupts is only used for some checks
outside the dprc_scan_objects function. Furthermore, in some
situations the check is made twice. Move the bounds check inside
the function for all situations.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc-driver.c | 30 ++++++++++--------------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
index c8b1c3842c1a..035b220779d0 100644
--- a/drivers/bus/fsl-mc/dprc-driver.c
+++ b/drivers/bus/fsl-mc/dprc-driver.c
@@ -3,6 +3,7 @@
  * Freescale data path resource container (DPRC) driver
  *
  * Copyright (C) 2014-2016 Freescale Semiconductor, Inc.
+ * Copyright 2019-2020 NXP
  * Author: German Rivera <German.Rivera@freescale.com>
  *
  */
@@ -197,8 +198,6 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
  * dprc_scan_objects - Discover objects in a DPRC
  *
  * @mc_bus_dev: pointer to the fsl-mc device that represents a DPRC object
- * @total_irq_count: If argument is provided the function populates the
- * total number of IRQs created by objects in the DPRC.
  *
  * Detects objects added and removed from a DPRC and synchronizes the
  * state of the Linux bus driver, MC by adding and removing
@@ -212,8 +211,7 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
  * populated before they can get allocation requests from probe callbacks
  * of the device drivers for the non-allocatable devices.
  */
-static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
-			     unsigned int *total_irq_count)
+static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev)
 {
 	int num_child_objects;
 	int dprc_get_obj_failures;
@@ -294,22 +292,21 @@ static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
 	 * Allocate IRQ's before binding the scanned devices with their
 	 * respective drivers.
 	 */
-	if (dev_get_msi_domain(&mc_bus_dev->dev) && !mc_bus->irq_resources) {
+	if (dev_get_msi_domain(&mc_bus_dev->dev)) {
 		if (irq_count > FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS) {
 			dev_warn(&mc_bus_dev->dev,
 				 "IRQs needed (%u) exceed IRQs preallocated (%u)\n",
 				 irq_count, FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
 		}
 
-		error = fsl_mc_populate_irq_pool(mc_bus,
+		if (!mc_bus->irq_resources) {
+			error = fsl_mc_populate_irq_pool(mc_bus,
 				FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
-		if (error < 0)
-			return error;
+			if (error < 0)
+				return error;
+		}
 	}
 
-	if (total_irq_count)
-		*total_irq_count = irq_count;
-
 	dprc_remove_devices(mc_bus_dev, child_obj_desc_array,
 			    num_child_objects);
 
@@ -342,7 +339,7 @@ static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
 	 * Discover objects in the DPRC:
 	 */
 	mutex_lock(&mc_bus->scan_mutex);
-	error = dprc_scan_objects(mc_bus_dev, NULL);
+	error = dprc_scan_objects(mc_bus_dev);
 	mutex_unlock(&mc_bus->scan_mutex);
 	if (error < 0) {
 		fsl_mc_cleanup_all_resource_pools(mc_bus_dev);
@@ -411,9 +408,8 @@ static irqreturn_t dprc_irq0_handler_thread(int irq_num, void *arg)
 		      DPRC_IRQ_EVENT_CONTAINER_DESTROYED |
 		      DPRC_IRQ_EVENT_OBJ_DESTROYED |
 		      DPRC_IRQ_EVENT_OBJ_CREATED)) {
-		unsigned int irq_count;
 
-		error = dprc_scan_objects(mc_dev, &irq_count);
+		error = dprc_scan_objects(mc_dev);
 		if (error < 0) {
 			/*
 			 * If the error is -ENXIO, we ignore it, as it indicates
@@ -428,12 +424,6 @@ static irqreturn_t dprc_irq0_handler_thread(int irq_num, void *arg)
 
 			goto out;
 		}
-
-		if (irq_count > FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS) {
-			dev_warn(dev,
-				 "IRQs needed (%u) exceed IRQs preallocated (%u)\n",
-				 irq_count, FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
-		}
 	}
 
 out:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
