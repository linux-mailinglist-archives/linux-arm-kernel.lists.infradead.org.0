Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445FD261E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rDkzGmdMXeicOBPdJoENMfXTlTzpos83Ws0QCgGcN6M=; b=eaSJ49m1BbgeJ3iXETEM0hOoss
	7lz573VtXN44oWQYSqskJ4m6T4kv869M1qbrW3fGHjlu7+ccvgdRW17BPRFoT7K8qm3uGJYeZlZrb
	rEeBaX7T/nE/ZZDknqg8S87qEuvD0mbvYDY6IdLJmsCZg/bBuYIMCuqDymO1yhRBTHhxLO4mRSk49
	UF4z9ULx/uGm0rg3wCPHnDpNcMaZuh5YLioPbi1n0T5w/YVsBV4cUIgkmNNTbbXAGaisLHpWWSCuU
	IGBd0tb1EU1plRoAY3V2pdl3bg022Rzs6N0NGEifpXRveNF4C6ZHnlTVbgZY05ES8TwB2DhNXkvrD
	iW7U/taw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTObe-0005mh-Ck; Wed, 22 May 2019 10:36:22 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOag-0004fi-3H
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:35:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E73E9341;
 Wed, 22 May 2019 03:35:21 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 B1D953F575; Wed, 22 May 2019 03:35:20 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 03/30] coresight: tmc: Clean up device specific data
Date: Wed, 22 May 2019 11:34:36 +0100
Message-Id: <1558521304-27469-4-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_033522_445798_EB29B5D4 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation to use a consistent device naming scheme,
clean up the device link tracking in replicator driver.
Use the "coresight" device instead of the "real" parent device
for all internal purposes. All other requests (e.g, power management,
DMA operations) must use the "real" device which is the parent device.

Since the CATU driver also uses the TMC-SG infrastructure, update
the callers to ensure they pass the appropriate device argument
for the tables.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-catu.c    |  5 ++--
 drivers/hwtracing/coresight/coresight-tmc-etf.c |  9 +++---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 40 ++++++++++++++-----------
 drivers/hwtracing/coresight/coresight-tmc.c     | 38 +++++++++++------------
 drivers/hwtracing/coresight/coresight-tmc.h     |  2 --
 5 files changed, 47 insertions(+), 47 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
index 4ea68a3..d948a72 100644
--- a/drivers/hwtracing/coresight/coresight-catu.c
+++ b/drivers/hwtracing/coresight/coresight-catu.c
@@ -328,19 +328,18 @@ static int catu_alloc_etr_buf(struct tmc_drvdata *tmc_drvdata,
 			      struct etr_buf *etr_buf, int node, void **pages)
 {
 	struct coresight_device *csdev;
-	struct device *catu_dev;
 	struct tmc_sg_table *catu_table;
 	struct catu_etr_buf *catu_buf;
 
 	csdev = tmc_etr_get_catu_device(tmc_drvdata);
 	if (!csdev)
 		return -ENODEV;
-	catu_dev = csdev->dev.parent;
 	catu_buf = kzalloc(sizeof(*catu_buf), GFP_KERNEL);
 	if (!catu_buf)
 		return -ENOMEM;
 
-	catu_table = catu_init_sg_table(catu_dev, node, etr_buf->size, pages);
+	catu_table = catu_init_sg_table(&csdev->dev, node,
+					etr_buf->size, pages);
 	if (IS_ERR(catu_table)) {
 		kfree(catu_buf);
 		return PTR_ERR(catu_table);
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 2527b5d..31093de 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -280,7 +280,6 @@ static int tmc_enable_etf_sink(struct coresight_device *csdev,
 			       u32 mode, void *data)
 {
 	int ret;
-	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
 
 	switch (mode) {
 	case CS_MODE_SYSFS:
@@ -298,7 +297,7 @@ static int tmc_enable_etf_sink(struct coresight_device *csdev,
 	if (ret)
 		return ret;
 
-	dev_dbg(drvdata->dev, "TMC-ETB/ETF enabled\n");
+	dev_dbg(&csdev->dev, "TMC-ETB/ETF enabled\n");
 	return 0;
 }
 
@@ -328,7 +327,7 @@ static int tmc_disable_etf_sink(struct coresight_device *csdev)
 
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	dev_dbg(drvdata->dev, "TMC-ETB/ETF disabled\n");
+	dev_dbg(&csdev->dev, "TMC-ETB/ETF disabled\n");
 	return 0;
 }
 
@@ -351,7 +350,7 @@ static int tmc_enable_etf_link(struct coresight_device *csdev,
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
 	if (!ret)
-		dev_dbg(drvdata->dev, "TMC-ETF enabled\n");
+		dev_dbg(&csdev->dev, "TMC-ETF enabled\n");
 	return ret;
 }
 
@@ -371,7 +370,7 @@ static void tmc_disable_etf_link(struct coresight_device *csdev,
 	drvdata->mode = CS_MODE_DISABLED;
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	dev_dbg(drvdata->dev, "TMC-ETF disabled\n");
+	dev_dbg(&csdev->dev, "TMC-ETF disabled\n");
 }
 
 static void *tmc_alloc_etf_buffer(struct coresight_device *csdev,
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index df6e4b0..01718cb 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -162,10 +162,11 @@ static void tmc_pages_free(struct tmc_pages *tmc_pages,
 			   struct device *dev, enum dma_data_direction dir)
 {
 	int i;
+	struct device *real_dev = dev->parent;
 
 	for (i = 0; i < tmc_pages->nr_pages; i++) {
 		if (tmc_pages->daddrs && tmc_pages->daddrs[i])
-			dma_unmap_page(dev, tmc_pages->daddrs[i],
+			dma_unmap_page(real_dev, tmc_pages->daddrs[i],
 					 PAGE_SIZE, dir);
 		if (tmc_pages->pages && tmc_pages->pages[i])
 			__free_page(tmc_pages->pages[i]);
@@ -193,6 +194,7 @@ static int tmc_pages_alloc(struct tmc_pages *tmc_pages,
 	int i, nr_pages;
 	dma_addr_t paddr;
 	struct page *page;
+	struct device *real_dev = dev->parent;
 
 	nr_pages = tmc_pages->nr_pages;
 	tmc_pages->daddrs = kcalloc(nr_pages, sizeof(*tmc_pages->daddrs),
@@ -216,8 +218,8 @@ static int tmc_pages_alloc(struct tmc_pages *tmc_pages,
 			page = alloc_pages_node(node,
 						GFP_KERNEL | __GFP_ZERO, 0);
 		}
-		paddr = dma_map_page(dev, page, 0, PAGE_SIZE, dir);
-		if (dma_mapping_error(dev, paddr))
+		paddr = dma_map_page(real_dev, page, 0, PAGE_SIZE, dir);
+		if (dma_mapping_error(real_dev, paddr))
 			goto err;
 		tmc_pages->daddrs[i] = paddr;
 		tmc_pages->pages[i] = page;
@@ -304,7 +306,7 @@ static int tmc_alloc_data_pages(struct tmc_sg_table *sg_table, void **pages)
  * and data buffers. TMC writes to the data buffers and reads from the SG
  * Table pages.
  *
- * @dev		- Device to which page should be DMA mapped.
+ * @dev		- Coresight device to which page should be DMA mapped.
  * @node	- Numa node for mem allocations
  * @nr_tpages	- Number of pages for the table entries.
  * @nr_dpages	- Number of pages for Data buffer.
@@ -348,13 +350,13 @@ void tmc_sg_table_sync_data_range(struct tmc_sg_table *table,
 {
 	int i, index, start;
 	int npages = DIV_ROUND_UP(size, PAGE_SIZE);
-	struct device *dev = table->dev;
+	struct device *real_dev = table->dev->parent;
 	struct tmc_pages *data = &table->data_pages;
 
 	start = offset >> PAGE_SHIFT;
 	for (i = start; i < (start + npages); i++) {
 		index = i % data->nr_pages;
-		dma_sync_single_for_cpu(dev, data->daddrs[index],
+		dma_sync_single_for_cpu(real_dev, data->daddrs[index],
 					PAGE_SIZE, DMA_FROM_DEVICE);
 	}
 }
@@ -363,11 +365,11 @@ void tmc_sg_table_sync_data_range(struct tmc_sg_table *table,
 void tmc_sg_table_sync_table(struct tmc_sg_table *sg_table)
 {
 	int i;
-	struct device *dev = sg_table->dev;
+	struct device *real_dev = sg_table->dev->parent;
 	struct tmc_pages *table_pages = &sg_table->table_pages;
 
 	for (i = 0; i < table_pages->nr_pages; i++)
-		dma_sync_single_for_device(dev, table_pages->daddrs[i],
+		dma_sync_single_for_device(real_dev, table_pages->daddrs[i],
 					   PAGE_SIZE, DMA_TO_DEVICE);
 }
 
@@ -590,6 +592,7 @@ static int tmc_etr_alloc_flat_buf(struct tmc_drvdata *drvdata,
 				  void **pages)
 {
 	struct etr_flat_buf *flat_buf;
+	struct device *real_dev = drvdata->csdev->dev.parent;
 
 	/* We cannot reuse existing pages for flat buf */
 	if (pages)
@@ -599,7 +602,7 @@ static int tmc_etr_alloc_flat_buf(struct tmc_drvdata *drvdata,
 	if (!flat_buf)
 		return -ENOMEM;
 
-	flat_buf->vaddr = dma_alloc_coherent(drvdata->dev, etr_buf->size,
+	flat_buf->vaddr = dma_alloc_coherent(real_dev, etr_buf->size,
 					     &flat_buf->daddr, GFP_KERNEL);
 	if (!flat_buf->vaddr) {
 		kfree(flat_buf);
@@ -607,7 +610,7 @@ static int tmc_etr_alloc_flat_buf(struct tmc_drvdata *drvdata,
 	}
 
 	flat_buf->size = etr_buf->size;
-	flat_buf->dev = drvdata->dev;
+	flat_buf->dev = &drvdata->csdev->dev;
 	etr_buf->hwaddr = flat_buf->daddr;
 	etr_buf->mode = ETR_MODE_FLAT;
 	etr_buf->private = flat_buf;
@@ -617,9 +620,10 @@ static int tmc_etr_alloc_flat_buf(struct tmc_drvdata *drvdata,
 static void tmc_etr_free_flat_buf(struct etr_buf *etr_buf)
 {
 	struct etr_flat_buf *flat_buf = etr_buf->private;
+	struct device *real_dev = flat_buf->dev->parent;
 
 	if (flat_buf && flat_buf->daddr)
-		dma_free_coherent(flat_buf->dev, flat_buf->size,
+		dma_free_coherent(real_dev, flat_buf->size,
 				  flat_buf->vaddr, flat_buf->daddr);
 	kfree(flat_buf);
 }
@@ -666,8 +670,9 @@ static int tmc_etr_alloc_sg_buf(struct tmc_drvdata *drvdata,
 				void **pages)
 {
 	struct etr_sg_table *etr_table;
+	struct device *dev = &drvdata->csdev->dev;
 
-	etr_table = tmc_init_etr_sg_table(drvdata->dev, node,
+	etr_table = tmc_init_etr_sg_table(dev, node,
 					  etr_buf->size, pages);
 	if (IS_ERR(etr_table))
 		return -ENOMEM;
@@ -823,9 +828,10 @@ static struct etr_buf *tmc_alloc_etr_buf(struct tmc_drvdata *drvdata,
 	bool has_etr_sg, has_iommu;
 	bool has_sg, has_catu;
 	struct etr_buf *etr_buf;
+	struct device *dev = &drvdata->csdev->dev;
 
 	has_etr_sg = tmc_etr_has_cap(drvdata, TMC_ETR_SG);
-	has_iommu = iommu_get_domain_for_dev(drvdata->dev);
+	has_iommu = iommu_get_domain_for_dev(dev->parent);
 	has_catu = !!tmc_etr_get_catu_device(drvdata);
 
 	has_sg = has_catu || has_etr_sg;
@@ -863,7 +869,7 @@ static struct etr_buf *tmc_alloc_etr_buf(struct tmc_drvdata *drvdata,
 		return ERR_PTR(rc);
 	}
 
-	dev_dbg(drvdata->dev, "allocated buffer of size %ldKB in mode %d\n",
+	dev_dbg(dev, "allocated buffer of size %ldKB in mode %d\n",
 		(unsigned long)size >> 10, etr_buf->mode);
 	return etr_buf;
 }
@@ -1162,7 +1168,7 @@ static int tmc_enable_etr_sink_sysfs(struct coresight_device *csdev)
 		tmc_etr_free_sysfs_buf(free_buf);
 
 	if (!ret)
-		dev_dbg(drvdata->dev, "TMC-ETR enabled\n");
+		dev_dbg(&csdev->dev, "TMC-ETR enabled\n");
 
 	return ret;
 }
@@ -1358,7 +1364,7 @@ static void *tmc_alloc_etr_buffer(struct coresight_device *csdev,
 	etr_perf = tmc_etr_setup_perf_buf(drvdata, event,
 					  nr_pages, pages, snapshot);
 	if (IS_ERR(etr_perf)) {
-		dev_dbg(drvdata->dev, "Unable to allocate ETR buffer\n");
+		dev_dbg(&csdev->dev, "Unable to allocate ETR buffer\n");
 		return NULL;
 	}
 
@@ -1612,7 +1618,7 @@ static int tmc_disable_etr_sink(struct coresight_device *csdev)
 
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	dev_dbg(drvdata->dev, "TMC-ETR disabled\n");
+	dev_dbg(&csdev->dev, "TMC-ETR disabled\n");
 	return 0;
 }
 
diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 3f71872..3b39f43 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -32,7 +32,7 @@ void tmc_wait_for_tmcready(struct tmc_drvdata *drvdata)
 	/* Ensure formatter, unformatter and hardware fifo are empty */
 	if (coresight_timeout(drvdata->base,
 			      TMC_STS, TMC_STS_TMCREADY_BIT, 1)) {
-		dev_err(drvdata->dev,
+		dev_err(&drvdata->csdev->dev,
 			"timeout while waiting for TMC to be Ready\n");
 	}
 }
@@ -49,7 +49,7 @@ void tmc_flush_and_stop(struct tmc_drvdata *drvdata)
 	/* Ensure flush completes */
 	if (coresight_timeout(drvdata->base,
 			      TMC_FFCR, TMC_FFCR_FLUSHMAN_BIT, 0)) {
-		dev_err(drvdata->dev,
+		dev_err(&drvdata->csdev->dev,
 		"timeout while waiting for completion of Manual Flush\n");
 	}
 
@@ -83,7 +83,7 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
 	}
 
 	if (!ret)
-		dev_dbg(drvdata->dev, "TMC read start\n");
+		dev_dbg(&drvdata->csdev->dev, "TMC read start\n");
 
 	return ret;
 }
@@ -105,7 +105,7 @@ static int tmc_read_unprepare(struct tmc_drvdata *drvdata)
 	}
 
 	if (!ret)
-		dev_dbg(drvdata->dev, "TMC read end\n");
+		dev_dbg(&drvdata->csdev->dev, "TMC read end\n");
 
 	return ret;
 }
@@ -122,7 +122,7 @@ static int tmc_open(struct inode *inode, struct file *file)
 
 	nonseekable_open(inode, file);
 
-	dev_dbg(drvdata->dev, "%s: successfully opened\n", __func__);
+	dev_dbg(&drvdata->csdev->dev, "%s: successfully opened\n", __func__);
 	return 0;
 }
 
@@ -152,12 +152,13 @@ static ssize_t tmc_read(struct file *file, char __user *data, size_t len,
 		return 0;
 
 	if (copy_to_user(data, bufp, actual)) {
-		dev_dbg(drvdata->dev, "%s: copy_to_user failed\n", __func__);
+		dev_dbg(&drvdata->csdev->dev,
+			"%s: copy_to_user failed\n", __func__);
 		return -EFAULT;
 	}
 
 	*ppos += actual;
-	dev_dbg(drvdata->dev, "%zu bytes copied\n", actual);
+	dev_dbg(&drvdata->csdev->dev, "%zu bytes copied\n", actual);
 
 	return actual;
 }
@@ -172,7 +173,7 @@ static int tmc_release(struct inode *inode, struct file *file)
 	if (ret)
 		return ret;
 
-	dev_dbg(drvdata->dev, "%s: released\n", __func__);
+	dev_dbg(&drvdata->csdev->dev, "%s: released\n", __func__);
 	return 0;
 }
 
@@ -332,24 +333,22 @@ const struct attribute_group *coresight_tmc_groups[] = {
 	NULL,
 };
 
-static inline bool tmc_etr_can_use_sg(struct tmc_drvdata *drvdata)
+static inline bool tmc_etr_can_use_sg(struct device *dev)
 {
-	return fwnode_property_present(drvdata->dev->fwnode,
-				       "arm,scatter-gather");
+	return fwnode_property_present(dev->fwnode, "arm,scatter-gather");
 }
 
 /* Detect and initialise the capabilities of a TMC ETR */
-static int tmc_etr_setup_caps(struct tmc_drvdata *drvdata,
-			     u32 devid, void *dev_caps)
+static int tmc_etr_setup_caps(struct device *parent, u32 devid, void *dev_caps)
 {
 	int rc;
-
 	u32 dma_mask = 0;
+	struct tmc_drvdata *drvdata = dev_get_drvdata(parent);
 
 	/* Set the unadvertised capabilities */
 	tmc_etr_init_caps(drvdata, (u32)(unsigned long)dev_caps);
 
-	if (!(devid & TMC_DEVID_NOSCAT) && tmc_etr_can_use_sg(drvdata))
+	if (!(devid & TMC_DEVID_NOSCAT) && tmc_etr_can_use_sg(parent))
 		tmc_etr_set_cap(drvdata, TMC_ETR_SG);
 
 	/* Check if the AXI address width is available */
@@ -367,15 +366,15 @@ static int tmc_etr_setup_caps(struct tmc_drvdata *drvdata,
 	case 44:
 	case 48:
 	case 52:
-		dev_info(drvdata->dev, "Detected dma mask %dbits\n", dma_mask);
+		dev_info(parent, "Detected dma mask %dbits\n", dma_mask);
 		break;
 	default:
 		dma_mask = 40;
 	}
 
-	rc = dma_set_mask_and_coherent(drvdata->dev, DMA_BIT_MASK(dma_mask));
+	rc = dma_set_mask_and_coherent(parent, DMA_BIT_MASK(dma_mask));
 	if (rc)
-		dev_err(drvdata->dev, "Failed to setup DMA mask: %d\n", rc);
+		dev_err(parent, "Failed to setup DMA mask: %d\n", rc);
 	return rc;
 }
 
@@ -405,7 +404,6 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata)
 		goto out;
 
-	drvdata->dev = &adev->dev;
 	dev_set_drvdata(dev, drvdata);
 
 	/* Validity for the resource is already checked by the AMBA core */
@@ -450,7 +448,7 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 		desc.type = CORESIGHT_DEV_TYPE_SINK;
 		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
 		desc.ops = &tmc_etr_cs_ops;
-		ret = tmc_etr_setup_caps(drvdata, devid,
+		ret = tmc_etr_setup_caps(dev, devid,
 					 coresight_get_uci_data(id));
 		if (ret)
 			goto out;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 503f1b3..1ed5041 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -161,7 +161,6 @@ struct etr_buf {
 /**
  * struct tmc_drvdata - specifics associated to an TMC component
  * @base:	memory mapped base address for this component.
- * @dev:	the device entity associated to this component.
  * @csdev:	component vitals needed by the framework.
  * @miscdev:	specifics to handle "/dev/xyz.tmc" entry.
  * @spinlock:	only one at a time pls.
@@ -184,7 +183,6 @@ struct etr_buf {
  */
 struct tmc_drvdata {
 	void __iomem		*base;
-	struct device		*dev;
 	struct coresight_device	*csdev;
 	struct miscdevice	miscdev;
 	spinlock_t		spinlock;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
