Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A60E18BB4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aBCHjr/pvRRMxu7garYcbCz3RkGXquFnc+5rFD0oxcc=; b=F6WhBWkLG6de96fZjUO8mKEq1j
	0rxVRIfoAhRmAI1Lva4hsQLT8/294hgnEM7EatDN7CDQfpGHerbew3hpCyc0wPWE0LEN0ZQHXUE9D
	f41WlqBGkVzIG17zRuweUE7znn/7d8dGS42GbMhNPjF2QGMIV34/olNiRYjZ/kSJjLfcxuIWCrsz3
	Nl1JolQR7rSgyg6Xej3VfhVTQFDozBZ/yljFPwaZ9wnmvwjt7vEi6ECDRY5cdSzF4hclUo9LmLUNS
	YDBiHXwlsZZl08cYApFSEHFOSREPfvuERf1KHGSS/hYfdjACwX1Q43a+w/lIwWUTcjLQ+n86YLYuU
	Qgn0bUJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExIk-0000zE-A9; Thu, 19 Mar 2020 15:41:42 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExIF-0000nJ-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:41:13 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E0D692000E8;
 Thu, 19 Mar 2020 16:41:09 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D1A922000E7;
 Thu, 19 Mar 2020 16:41:09 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 846DE205C2;
 Thu, 19 Mar 2020 16:41:09 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org, laurentiu.tudor@nxp.com, stuyoder@gmail.com,
 leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
 bharatb.yadav@gmail.com
Subject: [PATCH 02/10] bus/fsl-mc: Add a new parameter to dprc_scan_objects
 function
Date: Thu, 19 Mar 2020 17:40:43 +0200
Message-Id: <20200319154051.30609-3-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_084111_506433_8D69BF3A 
X-CRM114-Status: GOOD (  14.00  )
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

Prepare the dprc_scan_objects function to be used by
the VFIO mc driver code. The function is used to scan the mc
objects by the bus driver. The same functionality is
needed by the VFIO mc driver, but in this case the
interrupt configuration is delayed until the userspace
configures the interrupts. In order to use the same function
in both drivers add a new parameter.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc-driver.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
index 035b220779d0..d373b28abe2d 100644
--- a/drivers/bus/fsl-mc/dprc-driver.c
+++ b/drivers/bus/fsl-mc/dprc-driver.c
@@ -198,7 +198,9 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
  * dprc_scan_objects - Discover objects in a DPRC
  *
  * @mc_bus_dev: pointer to the fsl-mc device that represents a DPRC object
- *
+ * @alloc_interrupts: if true the function allocates the interrupt pool,
+ * otherwise the interrupt allocation is delayed
+
  * Detects objects added and removed from a DPRC and synchronizes the
  * state of the Linux bus driver, MC by adding and removing
  * devices accordingly.
@@ -211,7 +213,8 @@ static void dprc_add_new_devices(struct fsl_mc_device *mc_bus_dev,
  * populated before they can get allocation requests from probe callbacks
  * of the device drivers for the non-allocatable devices.
  */
-static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev)
+static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
+			    bool alloc_interrupts)
 {
 	int num_child_objects;
 	int dprc_get_obj_failures;
@@ -299,7 +302,7 @@ static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev)
 				 irq_count, FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
 		}
 
-		if (!mc_bus->irq_resources) {
+		if (alloc_interrupts && !mc_bus->irq_resources) {
 			error = fsl_mc_populate_irq_pool(mc_bus,
 				FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
 			if (error < 0)
@@ -339,7 +342,7 @@ static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
 	 * Discover objects in the DPRC:
 	 */
 	mutex_lock(&mc_bus->scan_mutex);
-	error = dprc_scan_objects(mc_bus_dev);
+	error = dprc_scan_objects(mc_bus_dev, true);
 	mutex_unlock(&mc_bus->scan_mutex);
 	if (error < 0) {
 		fsl_mc_cleanup_all_resource_pools(mc_bus_dev);
@@ -409,7 +412,7 @@ static irqreturn_t dprc_irq0_handler_thread(int irq_num, void *arg)
 		      DPRC_IRQ_EVENT_OBJ_DESTROYED |
 		      DPRC_IRQ_EVENT_OBJ_CREATED)) {
 
-		error = dprc_scan_objects(mc_dev);
+		error = dprc_scan_objects(mc_dev, true);
 		if (error < 0) {
 			/*
 			 * If the error is -ENXIO, we ignore it, as it indicates
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
