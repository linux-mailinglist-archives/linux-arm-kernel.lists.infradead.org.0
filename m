Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74E11C8392
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N5DtYmmavSsJQjKcDUWFq2obDaKK8huNV/OvA9tJvGo=; b=eidClggnT9lNGlkdlSjvA/X5JI
	VJI4dNDgC6bjmzr61bsRpdo793DWWKC00tCbiLGlY83XeLuKva1bf9WtJiQwR9EqWMbeR+yl67++a
	LY7hpcJEnfKp8PfIQy8Lya1GGGE/+cwjT50JJMc4RSWO3xbbGhI0kB6CEpsB7sBMj+XSiXC4XJM2t
	lsmz9Xf/73jsRBCmumd97WtqY1GwlEeiPPnJJONCvxOKye49ShqyPozGPYoN9sNJJw5fZxwpIOo06
	bjlRwpVmhVs9Pjar4vALzigddcuFv/AWfVEO2CkPglOLPuOj79FZuV5FM0LwKoWpBYaXsqIIMtpz0
	ui6DKthw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWb55-00023H-Hh; Thu, 07 May 2020 07:36:31 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWb4N-0001YB-8j
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:35:48 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1367D200F16;
 Thu,  7 May 2020 09:35:46 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 07152200F10;
 Thu,  7 May 2020 09:35:46 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id ACB52203C5;
 Thu,  7 May 2020 09:35:45 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/12] bus/fsl-mc: Export a dprc scan function to be used
 by multiple entities
Date: Thu,  7 May 2020 10:34:26 +0300
Message-Id: <20200507073431.2710-8-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
References: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_003547_588352_DD5BB595 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: stuyoder@gmail.com, gregkh@linuxfoundation.org, leoyang.li@nxp.com,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 linux-arm-kernel@lists.infradead.org, laurentiu.tudor@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the DPRC scan function is used only by the bus driver.
But the same functionality will be needed by the VFIO driver.
To support this, the dprc scan function was exported and a little
bit adjusted to fit both scenarios. Also the scan mutex initialization
is done when the bus object is created, not in dprc_probe in order
to be used by both VFIO and bus driver.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc-driver.c | 19 +++++++------------
 drivers/bus/fsl-mc/fsl-mc-bus.c  |  1 +
 include/linux/fsl/mc.h           |  3 +++
 3 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
index 7a8061224df8..4f7fa5127844 100644
--- a/drivers/bus/fsl-mc/dprc-driver.c
+++ b/drivers/bus/fsl-mc/dprc-driver.c
@@ -331,9 +331,10 @@ static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
  * bus driver with the actual state of the MC by adding and removing
  * devices as appropriate.
  */
-static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
+int dprc_scan_container(struct fsl_mc_device *mc_bus_dev,
+			bool alloc_interrupts)
 {
-	int error;
+	int error = 0;
 	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_bus_dev);
 
 	fsl_mc_init_all_resource_pools(mc_bus_dev);
@@ -342,16 +343,12 @@ static int dprc_scan_container(struct fsl_mc_device *mc_bus_dev)
 	 * Discover objects in the DPRC:
 	 */
 	mutex_lock(&mc_bus->scan_mutex);
-	error = dprc_scan_objects(mc_bus_dev, true);
+	error = dprc_scan_objects(mc_bus_dev, alloc_interrupts);
 	mutex_unlock(&mc_bus->scan_mutex);
-	if (error < 0) {
-		fsl_mc_cleanup_all_resource_pools(mc_bus_dev);
-		return error;
-	}
 
-	return 0;
+	return error;
 }
-
+EXPORT_SYMBOL_GPL(dprc_scan_container);
 /**
  * dprc_irq0_handler - Regular ISR for DPRC interrupt 0
  *
@@ -675,12 +672,10 @@ static int dprc_probe(struct fsl_mc_device *mc_dev)
 		goto error_cleanup_open;
 	}
 
-	mutex_init(&mc_bus->scan_mutex);
-
 	/*
 	 * Discover MC objects in DPRC object:
 	 */
-	error = dprc_scan_container(mc_dev);
+	error = dprc_scan_container(mc_dev, true);
 	if (error < 0)
 		goto error_cleanup_open;
 
diff --git a/drivers/bus/fsl-mc/fsl-mc-bus.c b/drivers/bus/fsl-mc/fsl-mc-bus.c
index df96f1602361..bf4f01ddf846 100644
--- a/drivers/bus/fsl-mc/fsl-mc-bus.c
+++ b/drivers/bus/fsl-mc/fsl-mc-bus.c
@@ -636,6 +636,7 @@ int fsl_mc_device_add(struct fsl_mc_obj_desc *obj_desc,
 		if (!mc_bus)
 			return -ENOMEM;
 
+		mutex_init(&mc_bus->scan_mutex);
 		mc_dev = &mc_bus->mc_dev;
 	} else {
 		/*
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index 805a19516338..4c95e2dcf350 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -493,6 +493,9 @@ int dprc_reset_container(struct fsl_mc_io *mc_io,
 			 int child_container_id,
 			 u32 options);
 
+int dprc_scan_container(struct fsl_mc_device *mc_bus_dev,
+			bool alloc_interrupts);
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
