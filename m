Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B355418BB65
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 16:44:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e/BJSrCIU6P9r7uEqTHNc7SdUMhw0z454fDj6tq7P9I=; b=X/hr19bgtO5Cm4JvVG8torJ0z7
	hqtFT/XGH3kzmYrYn2xMqt3qfVrlqUdwturnbV0WkfxffM7o3SCDRVZ7hD+qdLH20qlxuExrEm3S+
	jvkiwmQy6VBKE7fOaH5fA7HUZVE3yNX75x/qO8tE2DdLFBfa4AUQT8Dp+R/5dbLB258GgAvMurBHK
	tn01xxRKr+NIh76/+MDIY7jm5vCaZpT/Q+XvHzRUJtb0jB9HYW9Q0u/IJ6kcc75OfgBioRC5qqjTT
	Vy5psiY0Ef2EuM+vcG2adqncY2CSQPBmjvq22VuzeQHCDw+z1lvZWYq/HxC3ucVLsn8BFMOmO60/L
	oWwUKaLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExL3-0003E7-3Y; Thu, 19 Mar 2020 15:44:05 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExII-0000qw-F4
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 15:41:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EB0CF1A0113;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DEB5E1A010E;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 91415205C2;
 Thu, 19 Mar 2020 16:41:12 +0100 (CET)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org, laurentiu.tudor@nxp.com, stuyoder@gmail.com,
 leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
 bharatb.yadav@gmail.com
Subject: [PATCH 09/10] bus/fsl-mc: Add a container setup function
Date: Thu, 19 Mar 2020 17:40:50 +0200
Message-Id: <20200319154051.30609-10-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
References: <20200319154051.30609-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_084114_822080_6F1BE650 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Both DPRC driver and VFIO driver use a initialization code
for the DPRC. Introduced a new function which groups this
initialization code. The function is exported and may be
used by VFIO as well.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc-driver.c | 77 +++++++++++++++++++++-----------
 drivers/bus/fsl-mc/mc-io.c       |  7 ++-
 include/linux/fsl/mc.h           |  2 +
 3 files changed, 60 insertions(+), 26 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
index a655e3fee291..0fe45c301858 100644
--- a/drivers/bus/fsl-mc/dprc-driver.c
+++ b/drivers/bus/fsl-mc/dprc-driver.c
@@ -570,16 +570,15 @@ static int dprc_setup_irq(struct fsl_mc_device *mc_dev)
 }
 
 /**
- * dprc_probe - callback invoked when a DPRC is being bound to this driver
+ * dprc_setup - opens and creates a mc_io for DPRC
  *
  * @mc_dev: Pointer to fsl-mc device representing a DPRC
  *
  * It opens the physical DPRC in the MC.
- * It scans the DPRC to discover the MC objects contained in it.
- * It creates the interrupt pool for the MC bus associated with the DPRC.
- * It configures the interrupts for the DPRC device itself.
+ * It configures the DPRC portal used to communicate with MC
  */
-static int dprc_probe(struct fsl_mc_device *mc_dev)
+
+int dprc_setup(struct fsl_mc_device *mc_dev)
 {
 	int error;
 	size_t region_size;
@@ -589,12 +588,6 @@ static int dprc_probe(struct fsl_mc_device *mc_dev)
 	bool msi_domain_set = false;
 	u16 major_ver, minor_ver;
 
-	if (!is_fsl_mc_bus_dprc(mc_dev))
-		return -EINVAL;
-
-	if (dev_get_msi_domain(&mc_dev->dev))
-		return -EINVAL;
-
 	if (!mc_dev->mc_io) {
 		/*
 		 * This is a child DPRC:
@@ -678,35 +671,69 @@ static int dprc_probe(struct fsl_mc_device *mc_dev)
 		goto error_cleanup_open;
 	}
 
+	return 0;
+
+error_cleanup_open:
+	(void)dprc_close(mc_dev->mc_io, 0, mc_dev->mc_handle);
+
+error_cleanup_msi_domain:
+	if (msi_domain_set)
+		dev_set_msi_domain(&mc_dev->dev, NULL);
+
+	if (mc_io_created) {
+		fsl_destroy_mc_io(mc_dev->mc_io);
+		mc_dev->mc_io = NULL;
+	}
+
+	return error;
+}
+EXPORT_SYMBOL_GPL(dprc_setup);
+
+/**
+ * dprc_probe - callback invoked when a DPRC is being bound to this driver
+ *
+ * @mc_dev: Pointer to fsl-mc device representing a DPRC
+ *
+ * It opens the physical DPRC in the MC.
+ * It scans the DPRC to discover the MC objects contained in it.
+ * It creates the interrupt pool for the MC bus associated with the DPRC.
+ * It configures the interrupts for the DPRC device itself.
+ */
+static int dprc_probe(struct fsl_mc_device *mc_dev)
+{
+	int error;
+
+	if (!is_fsl_mc_bus_dprc(mc_dev))
+		return -EINVAL;
+
+	if (dev_get_msi_domain(&mc_dev->dev))
+		return -EINVAL;
+
+	error = dprc_setup(mc_dev);
+	if (error < 0)
+		return error;
+
 	/*
 	 * Discover MC objects in DPRC object:
 	 */
 	error = dprc_scan_container(mc_dev, NULL, true);
 	if (error < 0)
-		goto error_cleanup_open;
+		goto dprc_cleanup;
 
 	/*
 	 * Configure interrupt for the DPRC object associated with this MC bus:
 	 */
 	error = dprc_setup_irq(mc_dev);
 	if (error < 0)
-		goto error_cleanup_open;
+		goto scan_cleanup;
 
 	dev_info(&mc_dev->dev, "DPRC device bound to driver");
 	return 0;
 
-error_cleanup_open:
-	(void)dprc_close(mc_dev->mc_io, 0, mc_dev->mc_handle);
-
-error_cleanup_msi_domain:
-	if (msi_domain_set)
-		dev_set_msi_domain(&mc_dev->dev, NULL);
-
-	if (mc_io_created) {
-		fsl_destroy_mc_io(mc_dev->mc_io);
-		mc_dev->mc_io = NULL;
-	}
-
+scan_cleanup:
+	device_for_each_child(&mc_dev->dev, NULL, __fsl_mc_device_remove);
+dprc_cleanup:
+	dprc_cleanup(mc_dev);
 	return error;
 }
 
diff --git a/drivers/bus/fsl-mc/mc-io.c b/drivers/bus/fsl-mc/mc-io.c
index 6ae48ad80409..e1dfe4a76519 100644
--- a/drivers/bus/fsl-mc/mc-io.c
+++ b/drivers/bus/fsl-mc/mc-io.c
@@ -129,7 +129,12 @@ int __must_check fsl_create_mc_io(struct device *dev,
  */
 void fsl_destroy_mc_io(struct fsl_mc_io *mc_io)
 {
-	struct fsl_mc_device *dpmcp_dev = mc_io->dpmcp_dev;
+	struct fsl_mc_device *dpmcp_dev;
+
+	if (!mc_io)
+		return;
+
+	dpmcp_dev = mc_io->dpmcp_dev;
 
 	if (dpmcp_dev)
 		fsl_mc_io_unset_dpmcp(mc_io);
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index e3ba273a1122..59b39c635ec9 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -480,6 +480,8 @@ int dprc_scan_container(struct fsl_mc_device *mc_bus_dev,
 		   const char *driver_override,
 		   bool alloc_interrupts);
 
+int dprc_setup(struct fsl_mc_device *mc_dev);
+
 int dprc_cleanup(struct fsl_mc_device *mc_dev);
 
 /*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
