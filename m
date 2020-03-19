Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7597B18BB5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:42:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yGKMDM56IRWxDHKvHvEBg0jZOd9sdyYsXkHiv1Mn634=; b=b3W+AGfW+svB305LnBsxzpMigj
	lUe2heYzNP4Xjth3nVQ/NEtxUfWnThRDlkA68WgZf/VIgVvYAFZZ0TnONWQsyCUph7urqaPWkTp+Y
	Q8eolJRr89kkk4DUq0DCV71D5Vs6Rd7Kh9HTR8pRzJguLegm+CLqShdVcKk5q163u118HlIuFouQw
	hTA31GchRwsIbJiHKhqFPVXzbQi41joVB7eHU1D1uHK2vB85/ykwePc6Ns8dgZKgqIb3XxoHTdxcb
	zBvIJf0+tjyU+dT4Uzs+dvDIzTj7dnhnK5wLVIW3z9t6FOM+BUyEnxlo5aWGXYoDsK80Yf7JhVTZF
	sNJuMcuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExJr-000213-I4; Thu, 19 Mar 2020 15:42:51 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExIH-0000px-GP
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:41:17 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 336842000DB;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2666D2000C2;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id CCF60205C2;
 Thu, 19 Mar 2020 16:41:11 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org, laurentiu.tudor@nxp.com, stuyoder@gmail.com,
 leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
 bharatb.yadav@gmail.com
Subject: [PATCH 07/10] bus/fsl-mc: Export a dprc scan function to be used by
 multiple entities
Date: Thu, 19 Mar 2020 17:40:48 +0200
Message-Id: <20200319154051.30609-8-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_084113_860655_B065A4E7 
X-CRM114-Status: GOOD (  11.85  )
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

Currently the DPRC scan function is used only by the bus driver.
But the same functionality will be needed by the VFIO driver.
To support this, the dprc scan function was exported and a little
bit adjusted to fit both scenarios.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc-driver.c | 15 ++++++---------
 drivers/bus/fsl-mc/fsl-mc-bus.c  |  2 ++
 include/linux/fsl/mc.h           |  4 ++++
 3 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
index 7eaf78900dfc..789220f0372a 100644
--- a/drivers/bus/fsl-mc/dprc-driver.c
+++ b/drivers/bus/fsl-mc/dprc-driver.c
@@ -335,7 +335,9 @@ static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
  * bus driver with the actual state of the MC by adding and removing
  * devices as appropriate.
  */
-static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
+int dprc_scan_container(struct fsl_mc_device *mc_bus_dev,
+		   const char *driver_override,
+		   bool alloc_interrupts)
 {
 	int error;
 	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_bus_dev);
@@ -346,15 +348,12 @@ static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
 	 * Discover objects in the DPRC:
 	 */
 	mutex_lock(&mc_bus->scan_mutex);
-	error = dprc_scan_objects(mc_bus_dev, NULL, true);
+	error = dprc_scan_objects(mc_bus_dev, driver_override, alloc_interrupts);
 	mutex_unlock(&mc_bus->scan_mutex);
-	if (error < 0) {
-		fsl_mc_cleanup_all_resource_pools(mc_bus_dev);
-		return error;
-	}
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(dprc_scan_container);
 
 /**
  * dprc_irq0_handler - Regular ISR for DPRC interrupt 0
@@ -679,12 +678,10 @@ static int dprc_probe(struct fsl_mc_device *mc_dev)
 		goto error_cleanup_open;
 	}
 
-	mutex_init(&mc_bus->scan_mutex);
-
 	/*
 	 * Discover MC objects in DPRC object:
 	 */
-	error = dprc_scan_container(mc_dev);
+	error = dprc_scan_container(mc_dev, NULL, true);
 	if (error < 0)
 		goto error_cleanup_open;
 
diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index a99a0edef252..1865221bb12d 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -635,7 +635,9 @@ int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
 		if (!mc_bus)
 			return -ENOMEM;
 
+		mutex_init(&mc_bus->scan_mutex);
 		mc_dev = &mc_bus->mc_dev;
+
 	} else {
 		/*
 		 * Allocate a regular fsl_mc_device object:
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index b9d5e5955adb..2bdd96a482fb 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -476,6 +476,10 @@ int dprc_reset_container(struct fsl_mc_io *mc_io,
 			 u16 token,
 			 int child_container_id);
 
+int dprc_scan_container(struct fsl_mc_device *mc_bus_dev,
+		   const char *driver_override,
+		   bool alloc_interrupts);
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
