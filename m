Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A134BFAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZCrgglx9vP9pbvXGTEPXhxMK7NdDNeGXuNgUqVfTUlM=; b=N0XNOMSSUmCdL6GzIOcuLrA34D
	KDWhpHZRY/xYcDYtyNtuQR24kyJ4rfeELct7fuoqZET4Dx84vsrEWtVYbKhFKMHjRnwXZugndaz8p
	3QtnwyFbfqLz90uscQPWnd3RbhuwaVm1Z1bGy2XSivExLw7coVZA6rJn1bBXFDO12YLNoQ+GhEhOc
	i/azO7bJNg9/OyleUDDbGLAE5hNTQFKKGz0wvU6In5moFcY0pK/rXIJQGufUoOf/oy2rkLTpLwTlZ
	3tuUjlp669Lcvt3Y4XpwxflTMMHDJi3opUfV8PPDyWkxukKAW0qaMGlvpGEjHkJJi84tf5ZdfI3WD
	L0mMWWJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeSl-0002F5-0G; Wed, 19 Jun 2019 17:33:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePI-000779-1V
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:03 +0000
Received: by mail-pf1-x444.google.com with SMTP id a186so5597pfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=F7Cq2lI0n7+SPPwtsXL0SImUek6kVLEGw5hWBqCNIpc=;
 b=TMLYhRolfuzAa2mZ2nuQ5MFFsnveRreMcd/KUfHqzPw8i7V02RbFsu5XA5asSiMm83
 hkEiPaAh2xVVq0wgkRD+yUUlGj05nm2ZZ6Ahwl3jS/sQtIJK69J0tTeoV8iGib2+cJFg
 C5pQ+CgWUeTh2TqDCl6Pe+356g2kXCBPliGy/tjF6BLGOietmec2FlPm8kig/9ltDLHC
 CG5A4cit61jCTyjzQuA8yhTJo/lNYnNQPfhawaPADnBwBAsobztddPQdSkmQuCsBJ2s3
 Xs7Uw3d6Cd8NIiVSs/04KEcYnIYo7J5adghr24wkqTVMvqsEotp0lJ5g8hQakpH1WQVV
 uoWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=F7Cq2lI0n7+SPPwtsXL0SImUek6kVLEGw5hWBqCNIpc=;
 b=DWu84K2toJ+/XeF7Qt9uIJky7urXcA5MNIp8aOTNMbIjiyMXqq23Ip+5fo3ewQlHv9
 keWJ9zxlsXIVTGc5LV5n68LCN34HBJq3Qa3M2Bf8pzzpq3BFbQO+KFRST4A2KstUZ6uu
 9JfszRQ/198Q+jukPgh9YawrQEmxE4sXFPPUzPm36AuceyuEN+ACZr+B2EiVjcdOWto4
 WcGKmgtpavUwxUFakuenacT2XlP/P3SS3U0wk/zW7qcYWSs4bWzMlbI0KZj65d264FpF
 WYi+NUFWy4oSOGPhzUNgm2CMoSlNq7dP42gDrm7GxWjrCXQB/dbhX/nfz99XSCz6t3+g
 UZrw==
X-Gm-Message-State: APjAAAX0rSwJcukPap6v0YlM2ufeQVwORZ9dEhM6+cuA5wS+Ob4GBFw8
 k6GIkp28kb14YVAoVJOKTzedHA==
X-Google-Smtp-Source: APXvYqwdceg7kVIeW8CwuHllImxj7SsPFybiHAxvhXCx0l7e3c+DF8PZDjATw1KOoux2g3PsoV3EnQ==
X-Received: by 2002:a63:6241:: with SMTP id w62mr3413760pgb.401.1560965399015; 
 Wed, 19 Jun 2019 10:29:59 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.29.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:29:58 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/45] coresight: tmc: Clean up device specific data
Date: Wed, 19 Jun 2019 11:29:12 -0600
Message-Id: <20190619172949.4522-9-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103000_276635_45A29C0C 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

In preparation to use a consistent device naming scheme,
clean up the device link tracking in replicator driver.
Use the "coresight" device instead of the "real" parent device
for all internal purposes. All other requests (e.g, power management,
DMA operations) must use the "real" device which is the parent device.

Since the CATU driver also uses the TMC-SG infrastructure, update
the callers to ensure they pass the appropriate device argument
for the tables.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-catu.c  |  5 +--
 .../hwtracing/coresight/coresight-tmc-etf.c   |  9 ++---
 .../hwtracing/coresight/coresight-tmc-etr.c   | 40 +++++++++++--------
 drivers/hwtracing/coresight/coresight-tmc.c   | 38 +++++++++---------
 drivers/hwtracing/coresight/coresight-tmc.h   |  2 -
 5 files changed, 47 insertions(+), 47 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-catu.c b/drivers/hwtracing/coresight/coresight-catu.c
index 4ea68a3522e9..d948a72aa6a3 100644
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
index bd5f3b57eebd..b89e29c5b39d 100644
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
index 1fc3db8045e1..709448cf2dff 100644
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
 
@@ -1617,7 +1623,7 @@ static int tmc_disable_etr_sink(struct coresight_device *csdev)
 
 	spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	dev_dbg(drvdata->dev, "TMC-ETR disabled\n");
+	dev_dbg(&csdev->dev, "TMC-ETR disabled\n");
 	return 0;
 }
 
diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 3f718729d741..3b39f43c583d 100644
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
index 503f1b3a3741..1ed50411cc3c 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
