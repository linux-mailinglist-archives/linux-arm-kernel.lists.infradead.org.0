Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AD71C83A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:39:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ylfVwv/lK3kdfrFxdcx/quc46vYTMnFP3UwHKLHUYxY=; b=SDTxQVMiXAIrSQSwZrWw+AAQ0q
	bHV/BCaOH3YUmwF8fRyhJ0AycG0lEptU4GUVMksPA4GX5hXOFZZXkOPt/5CQIPZH5exIEpih3aMkG
	EFfs/6l8zTUfUxDKbhjy+y/GWr7QajoUMBGIr1wGW9xI6EVTXyPQ096+Mfky9B8PwF9FG3jE0DiYV
	JcdXcjdRF6ACuzspDXMpVUuwbTEaT9zII3ekqnaKsrf4s5ftN6YjOL2ERYsmnA2ID6k9Lo7g/FJLO
	XmT09KYtAgvDHmleygiYp/Ip2uDfhwPFFHCersjivzAWWZ1in4X5cr7E+0o+IcKtUVkf9XZGU3jYB
	GOTWpUIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWb7p-0004W9-T4; Thu, 07 May 2020 07:39:21 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWb4S-0001dE-8X
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:35:54 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9F1FC1A0FBD;
 Thu,  7 May 2020 09:35:47 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 923F91A0F14;
 Thu,  7 May 2020 09:35:47 +0200 (CEST)
Received: from fsr-ub1864-111.ea.freescale.net
 (fsr-ub1864-111.ea.freescale.net [10.171.82.141])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 43F69203C5;
 Thu,  7 May 2020 09:35:47 +0200 (CEST)
From: Diana Craciun <diana.craciun@oss.nxp.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/12] bus/fsl-mc: Export IRQ pool handling functions to be
 used by VFIO
Date: Thu,  7 May 2020 10:34:30 +0300
Message-Id: <20200507073431.2710-12-diana.craciun@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
References: <20200507073431.2710-1-diana.craciun@oss.nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_003552_591399_BD05AFC1 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: stuyoder@gmail.com, gregkh@linuxfoundation.org, leoyang.li@nxp.com,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 linux-arm-kernel@lists.infradead.org, laurentiu.tudor@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The IRQ pool handling functions can be used by both DPRC
driver and VFIO. Adapt and export those functions.

Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
---
 drivers/bus/fsl-mc/dprc-driver.c      |  7 +++----
 drivers/bus/fsl-mc/fsl-mc-allocator.c | 12 ++++++++----
 drivers/bus/fsl-mc/fsl-mc-private.h   | 10 ----------
 include/linux/fsl/mc.h                | 11 +++++++++++
 4 files changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/bus/fsl-mc/dprc-driver.c b/drivers/bus/fsl-mc/dprc-driver.c
index ec44d025f623..75a53c38bcd8 100644
--- a/drivers/bus/fsl-mc/dprc-driver.c
+++ b/drivers/bus/fsl-mc/dprc-driver.c
@@ -303,8 +303,8 @@ static int dprc_scan_objects(struct fsl_mc_device *mc_bus_dev,
 		}
 
 		if (alloc_interrupts && !mc_bus->irq_resources) {
-			error = fsl_mc_populate_irq_pool(mc_bus,
-				FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
+			error = fsl_mc_populate_irq_pool(mc_bus_dev,
+					 FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS);
 			if (error < 0)
 				return error;
 		}
@@ -758,7 +758,6 @@ static void dprc_teardown_irq(struct fsl_mc_device *mc_dev)
 int dprc_cleanup(struct fsl_mc_device *mc_dev)
 {
 	int error;
-	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_dev);
 
 	if (!is_fsl_mc_bus_dprc(mc_dev))
 		return -EINVAL;
@@ -767,7 +766,7 @@ int dprc_cleanup(struct fsl_mc_device *mc_dev)
 		return -EINVAL;
 
 	if (dev_get_msi_domain(&mc_dev->dev)) {
-		fsl_mc_cleanup_irq_pool(mc_bus);
+		fsl_mc_cleanup_irq_pool(mc_dev);
 		dev_set_msi_domain(&mc_dev->dev, NULL);
 	}
 
diff --git a/drivers/bus/fsl-mc/fsl-mc-allocator.c b/drivers/bus/fsl-mc/fsl-mc-allocator.c
index cc7bb900f524..e71a6f52ea0c 100644
--- a/drivers/bus/fsl-mc/fsl-mc-allocator.c
+++ b/drivers/bus/fsl-mc/fsl-mc-allocator.c
@@ -344,7 +344,7 @@ EXPORT_SYMBOL_GPL(fsl_mc_object_free);
  * Initialize the interrupt pool associated with an fsl-mc bus.
  * It allocates a block of IRQs from the GIC-ITS.
  */
-int fsl_mc_populate_irq_pool(struct fsl_mc_bus *mc_bus,
+int fsl_mc_populate_irq_pool(struct fsl_mc_device *mc_bus_dev,
 			     unsigned int irq_count)
 {
 	unsigned int i;
@@ -352,10 +352,14 @@ int fsl_mc_populate_irq_pool(struct fsl_mc_bus *mc_bus,
 	struct fsl_mc_device_irq *irq_resources;
 	struct fsl_mc_device_irq *mc_dev_irq;
 	int error;
-	struct fsl_mc_device *mc_bus_dev = &mc_bus->mc_dev;
+	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_bus_dev);
 	struct fsl_mc_resource_pool *res_pool =
 			&mc_bus->resource_pools[FSL_MC_POOL_IRQ];
 
+	/* do nothing if the IRQ pool is already populated */
+	if (mc_bus->irq_resources)
+		return 0;
+
 	if (irq_count == 0 ||
 	    irq_count > FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS)
 		return -EINVAL;
@@ -407,9 +411,9 @@ EXPORT_SYMBOL_GPL(fsl_mc_populate_irq_pool);
  * Teardown the interrupt pool associated with an fsl-mc bus.
  * It frees the IRQs that were allocated to the pool, back to the GIC-ITS.
  */
-void fsl_mc_cleanup_irq_pool(struct fsl_mc_bus *mc_bus)
+void fsl_mc_cleanup_irq_pool(struct fsl_mc_device *mc_bus_dev)
 {
-	struct fsl_mc_device *mc_bus_dev = &mc_bus->mc_dev;
+	struct fsl_mc_bus *mc_bus = to_fsl_mc_bus(mc_bus_dev);
 	struct fsl_mc_resource_pool *res_pool =
 			&mc_bus->resource_pools[FSL_MC_POOL_IRQ];
 
diff --git a/drivers/bus/fsl-mc/fsl-mc-private.h b/drivers/bus/fsl-mc/fsl-mc-private.h
index fdd9e9aa6701..48255e8944bd 100644
--- a/drivers/bus/fsl-mc/fsl-mc-private.h
+++ b/drivers/bus/fsl-mc/fsl-mc-private.h
@@ -519,11 +519,6 @@ struct dpcon_cmd_set_notification {
 	__le64 user_ctx;
 };
 
-/**
- * Maximum number of total IRQs that can be pre-allocated for an MC bus'
- * IRQ pool
- */
-#define FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS	256
 
 /**
  * struct fsl_mc_resource_pool - Pool of MC resources of a given
@@ -599,11 +594,6 @@ void fsl_mc_msi_domain_free_irqs(struct device *dev);
 int fsl_mc_find_msi_domain(struct device *mc_platform_dev,
 			   struct irq_domain **mc_msi_domain);
 
-int fsl_mc_populate_irq_pool(struct fsl_mc_bus *mc_bus,
-			     unsigned int irq_count);
-
-void fsl_mc_cleanup_irq_pool(struct fsl_mc_bus *mc_bus);
-
 int __must_check fsl_create_mc_io(struct device *dev,
 				  phys_addr_t mc_portal_phys_addr,
 				  u32 mc_portal_size,
diff --git a/include/linux/fsl/mc.h b/include/linux/fsl/mc.h
index df4a9bbae0f0..648ad06f58eb 100644
--- a/include/linux/fsl/mc.h
+++ b/include/linux/fsl/mc.h
@@ -500,6 +500,17 @@ int dprc_cleanup(struct fsl_mc_device *mc_dev);
 
 int dprc_setup(struct fsl_mc_device *mc_dev);
 
+/**
+ * Maximum number of total IRQs that can be pre-allocated for an MC bus'
+ * IRQ pool
+ */
+#define FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS	256
+
+int fsl_mc_populate_irq_pool(struct fsl_mc_device *mc_bus_dev,
+			     unsigned int irq_count);
+
+void fsl_mc_cleanup_irq_pool(struct fsl_mc_device *mc_bus_dev);
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
