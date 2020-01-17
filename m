Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 589C1140CDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ByqlsfmvRfw/5IO0bC2aNkfUqVy36S0z1fxiBZw4fFA=; b=TeYiSQt2xyBIpHKCqpFQ0Ep7q1
	bUPw2XbLi+/erz4iKMibeGirxlLkW0BYM+s0MpyEUEIiFYme0Z2vmxpYR6G9IveBrp9LT+2pIsMFq
	SFAgi4708SwImBSx8vuryQw53QuRm1QK3tjjDf35pUqm76Bp/0Kfc3WqejnYnoiX5r+kGab5rfsx3
	KCrLEX5jT/cn4ZeQlEm4jPpkGnTrmvA5/JxSd0fvcvvOVTC5/L95kOGItVhLl1SHcKYJFlKsBtZbx
	zSL5DyvduU6opdIwrPoWHu+E4aUmR+IAKItgd+W35QoXTbZl7E2VtqbGpR+eXrQBWFazSVPgSppMA
	dSMFnaxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSpT-0002EM-Gs; Fri, 17 Jan 2020 14:42:31 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSmB-0006mD-RB
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3F424AAC2;
 Fri, 17 Jan 2020 14:39:06 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 10/15] coresight: export global symbols
Date: Fri, 17 Jan 2020 15:40:05 +0100
Message-Id: <20200117144010.11149-11-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200117144010.11149-1-ykaukab@suse.de>
References: <20200117144010.11149-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063908_192391_76CE2832 
X-CRM114-Status: GOOD (  12.23  )
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

Export symbols used among coresight modules.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 drivers/hwtracing/coresight/coresight-bus.c      | 8 ++++++++
 drivers/hwtracing/coresight/coresight-etm-perf.c | 1 +
 drivers/hwtracing/coresight/coresight-tmc-etr.c  | 6 ++++++
 3 files changed, 15 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-bus.c b/drivers/hwtracing/coresight/coresight-bus.c
index c2eaeeea98cd..aef99c3f7362 100644
--- a/drivers/hwtracing/coresight/coresight-bus.c
+++ b/drivers/hwtracing/coresight/coresight-bus.c
@@ -54,6 +54,7 @@ static struct list_head *stm_path;
  * it needs to look for another sync sequence.
  */
 const u32 barrier_pkt[4] = {0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff};
+EXPORT_SYMBOL_GPL(barrier_pkt);
 
 static int coresight_id_match(struct device *dev, void *data)
 {
@@ -179,6 +180,7 @@ int coresight_claim_device_unlocked(void __iomem *base)
 	coresight_clear_claim_tags(base);
 	return -EBUSY;
 }
+EXPORT_SYMBOL_GPL(coresight_claim_device_unlocked);
 
 int coresight_claim_device(void __iomem *base)
 {
@@ -190,6 +192,7 @@ int coresight_claim_device(void __iomem *base)
 
 	return rc;
 }
+EXPORT_SYMBOL_GPL(coresight_claim_device);
 
 /*
  * coresight_disclaim_device_unlocked : Clear the claim tags for the device.
@@ -208,6 +211,7 @@ void coresight_disclaim_device_unlocked(void __iomem *base)
 		 */
 		WARN_ON_ONCE(1);
 }
+EXPORT_SYMBOL_GPL(coresight_disclaim_device_unlocked);
 
 void coresight_disclaim_device(void __iomem *base)
 {
@@ -215,6 +219,7 @@ void coresight_disclaim_device(void __iomem *base)
 	coresight_disclaim_device_unlocked(base);
 	CS_LOCK(base);
 }
+EXPORT_SYMBOL_GPL(coresight_disclaim_device);
 
 static int coresight_enable_sink(struct coresight_device *csdev,
 				 u32 mode, void *data)
@@ -408,6 +413,7 @@ void coresight_disable_path(struct list_head *path)
 {
 	coresight_disable_path_from(path, NULL);
 }
+EXPORT_SYMBOL_GPL(coresight_disable_path);
 
 int coresight_enable_path(struct list_head *path, u32 mode, void *sink_data)
 {
@@ -1141,6 +1147,7 @@ int coresight_timeout(void __iomem *addr, u32 offset, int position, int value)
 
 	return -EAGAIN;
 }
+EXPORT_SYMBOL_GPL(coresight_timeout);
 
 /*
  * coresight_release_platform_data: Release references to the devices connected
@@ -1286,6 +1293,7 @@ bool coresight_loses_context_with_cpu(struct device *dev)
 	return fwnode_property_present(dev_fwnode(dev),
 				       "arm,coresight-loses-context-with-cpu");
 }
+EXPORT_SYMBOL_GPL(coresight_loses_context_with_cpu);
 
 /*
  * coresight_alloc_device_name - Get an index for a given device in the
diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
index 1bd71c2f6802..3df09166a17a 100644
--- a/drivers/hwtracing/coresight/coresight-etm-perf.c
+++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
@@ -506,6 +506,7 @@ int etm_perf_symlink(struct coresight_device *csdev, bool link)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(etm_perf_symlink);
 
 static ssize_t etm_perf_sink_name_show(struct device *dev,
 				       struct device_attribute *dattr,
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 5b2a515af1ae..abd18430dcd7 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -255,6 +255,7 @@ void tmc_free_sg_table(struct tmc_sg_table *sg_table)
 	tmc_free_table_pages(sg_table);
 	tmc_free_data_pages(sg_table);
 }
+EXPORT_SYMBOL_GPL(tmc_free_sg_table);
 
 /*
  * Alloc pages for the table. Since this will be used by the device,
@@ -340,6 +341,7 @@ struct tmc_sg_table *tmc_alloc_sg_table(struct device *dev,
 
 	return sg_table;
 }
+EXPORT_SYMBOL_GPL(tmc_alloc_sg_table);
 
 /*
  * tmc_sg_table_sync_data_range: Sync the data buffer written
@@ -360,6 +362,7 @@ void tmc_sg_table_sync_data_range(struct tmc_sg_table *table,
 					PAGE_SIZE, DMA_FROM_DEVICE);
 	}
 }
+EXPORT_SYMBOL_GPL(tmc_sg_table_sync_data_range);
 
 /* tmc_sg_sync_table: Sync the page table */
 void tmc_sg_table_sync_table(struct tmc_sg_table *sg_table)
@@ -372,6 +375,7 @@ void tmc_sg_table_sync_table(struct tmc_sg_table *sg_table)
 		dma_sync_single_for_device(real_dev, table_pages->daddrs[i],
 					   PAGE_SIZE, DMA_TO_DEVICE);
 }
+EXPORT_SYMBOL_GPL(tmc_sg_table_sync_table);
 
 /*
  * tmc_sg_table_get_data: Get the buffer pointer for data @offset
@@ -401,6 +405,7 @@ ssize_t tmc_sg_table_get_data(struct tmc_sg_table *sg_table,
 		*bufpp = page_address(data_pages->pages[pg_idx]) + pg_offset;
 	return len;
 }
+EXPORT_SYMBOL_GPL(tmc_sg_table_get_data);
 
 #ifdef ETR_SG_DEBUG
 /* Map a dma address to virtual address */
@@ -766,6 +771,7 @@ tmc_etr_get_catu_device(struct tmc_drvdata *drvdata)
 
 	return NULL;
 }
+EXPORT_SYMBOL_GPL(tmc_etr_get_catu_device);
 
 static inline int tmc_etr_enable_catu(struct tmc_drvdata *drvdata,
 				      struct etr_buf *etr_buf)
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
