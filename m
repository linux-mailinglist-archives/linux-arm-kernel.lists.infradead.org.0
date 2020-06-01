Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439071EA2B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 13:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z0LqiGy9iWMmTuEuqb/abEk1bCr8waj9QpJioDIH5pI=; b=PX2q3Q2B+ExzOO
	CnKOwxswdknxacDFETV8HOmKSu+OYW7l4RyWbk9UTMz436XZ9NxoEXndlYAn33P5bZMWcbAuRm94C
	B52jKoKIcBY0R4/A5MmiN7vYZPX5R8yJWx2vfMf1ydK9s9s0va/vZb3xY4JLg86ZKh8CK0iLLy2Qa
	72e3EQsb2kqDaIhUy938GWF2HkuSWw3cqe5CFejHyu7RC2/NXOt+FEpnF94TYh/8eKWl5klYy8mSe
	VzPsulb+1Rx+mzflB+Lnh4rX2cBceHnMD16pkorGqJ8W1nos1vaSrVUj9dTS87E8cZZFDdW9zp1Be
	9AgWv9cX6zRM80RvTJnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfiha-0002wN-KG; Mon, 01 Jun 2020 11:33:58 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfihD-0002ij-PM
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 11:33:37 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C7A55737A7AB0965E261;
 Mon,  1 Jun 2020 19:33:24 +0800 (CST)
Received: from SWX921481.china.huawei.com (10.126.200.163) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.487.0; Mon, 1 Jun 2020 19:33:14 +0800
From: Barry Song <song.bao.hua@hisilicon.com>
To: <hch@lst.de>, <m.szyprowski@samsung.com>, <robin.murphy@arm.com>,
 <will@kernel.org>
Subject: [PATCH] iommu/arm-smmu-v3: allocate the memory of queues in local
 numa node
Date: Mon, 1 Jun 2020 23:31:41 +1200
Message-ID: <20200601113141.69488-1-song.bao.hua@hisilicon.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.126.200.163]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_043335_993050_4B9AAE6F 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: Barry Song <song.bao.hua@hisilicon.com>, iommu@lists.linux-foundation.org,
 linuxarm@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dmam_alloc_coherent() will usually allocate memory from the default CMA. For
a common arm64 defconfig without reserved memory in device tree, there is only
one CMA close to address 0.
dma_alloc_contiguous() will allocate memory without any idea of  NUMA and smmu
has no customized per-numa cma_area.
struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
{
        size_t count = size >> PAGE_SHIFT;
        struct page *page = NULL;
        struct cma *cma = NULL;

        if (dev && dev->cma_area)
                cma = dev->cma_area;
        else if (count > 1)
                cma = dma_contiguous_default_area;

	...
        return page;
}

if there are N numa nodes, N-1 nodes will put command/evt queues etc in a
remote node the default CMA belongs to,probably node 0. Tests show, after
sending CMD_SYNC in an empty command queue,
on Node2, without this patch, it takes 550ns to wait for the completion
of CMD_SYNC; with this patch, it takes 250ns to wait for the completion
of CMD_SYNC.

Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
---
 drivers/iommu/arm-smmu-v3.c | 63 ++++++++++++++++++++++++++++---------
 1 file changed, 48 insertions(+), 15 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 82508730feb7..58295423e1d7 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -3157,21 +3157,23 @@ static int arm_smmu_init_one_queue(struct arm_smmu_device *smmu,
 				   size_t dwords, const char *name)
 {
 	size_t qsz;
+	struct page *page;
 
-	do {
-		qsz = ((1 << q->llq.max_n_shift) * dwords) << 3;
-		q->base = dmam_alloc_coherent(smmu->dev, qsz, &q->base_dma,
-					      GFP_KERNEL);
-		if (q->base || qsz < PAGE_SIZE)
-			break;
-
-		q->llq.max_n_shift--;
-	} while (1);
+	qsz = ((1 << q->llq.max_n_shift) * dwords) << 3;
+	page = alloc_pages_node(dev_to_node(smmu->dev), GFP_KERNEL,
+				get_order(qsz));
+	if (!page) {
+		dev_err(smmu->dev,
+				"failed to allocate queue (0x%zx bytes) for %s\n",
+				qsz, name);
+		return -ENOMEM;
+	}
 
-	if (!q->base) {
+	q->base = page_address(page);
+	q->base_dma = dma_map_single(smmu->dev, q->base, qsz, DMA_BIDIRECTIONAL);
+	if (dma_mapping_error(smmu->dev, q->base_dma)) {
 		dev_err(smmu->dev,
-			"failed to allocate queue (0x%zx bytes) for %s\n",
-			qsz, name);
+				"failed to dma map for %s\n", name);
 		return -ENOMEM;
 	}
 
@@ -3192,6 +3194,18 @@ static int arm_smmu_init_one_queue(struct arm_smmu_device *smmu,
 	return 0;
 }
 
+static int arm_smmu_deinit_one_queue(struct arm_smmu_device *smmu,
+				   struct arm_smmu_queue *q,
+				   size_t dwords)
+{
+	size_t qsz = ((1 << q->llq.max_n_shift) * dwords) << 3;
+
+	dma_unmap_single(smmu->dev, q->base_dma, qsz, DMA_BIDIRECTIONAL);
+	free_page((unsigned long)q->base);
+
+	return 0;
+}
+
 static void arm_smmu_cmdq_free_bitmap(void *data)
 {
 	unsigned long *bitmap = data;
@@ -3233,22 +3247,40 @@ static int arm_smmu_init_queues(struct arm_smmu_device *smmu)
 
 	ret = arm_smmu_cmdq_init(smmu);
 	if (ret)
-		return ret;
+		goto deinit_cmdq;
 
 	/* evtq */
 	ret = arm_smmu_init_one_queue(smmu, &smmu->evtq.q, ARM_SMMU_EVTQ_PROD,
 				      ARM_SMMU_EVTQ_CONS, EVTQ_ENT_DWORDS,
 				      "evtq");
 	if (ret)
-		return ret;
+		goto deinit_cmdq;
 
 	/* priq */
 	if (!(smmu->features & ARM_SMMU_FEAT_PRI))
 		return 0;
 
-	return arm_smmu_init_one_queue(smmu, &smmu->priq.q, ARM_SMMU_PRIQ_PROD,
+	ret = arm_smmu_init_one_queue(smmu, &smmu->priq.q, ARM_SMMU_PRIQ_PROD,
 				       ARM_SMMU_PRIQ_CONS, PRIQ_ENT_DWORDS,
 				       "priq");
+	if (ret)
+		goto deinit_evtq;
+
+	return 0;
+
+deinit_evtq:
+	arm_smmu_deinit_one_queue(smmu, &smmu->evtq.q, EVTQ_ENT_DWORDS);
+deinit_cmdq:
+	arm_smmu_deinit_one_queue(smmu, &smmu->cmdq.q, CMDQ_ENT_DWORDS);
+	return ret;
+}
+
+static void arm_smmu_deinit_queues(struct arm_smmu_device *smmu)
+{
+	arm_smmu_deinit_one_queue(smmu, &smmu->cmdq.q, CMDQ_ENT_DWORDS);
+	arm_smmu_deinit_one_queue(smmu, &smmu->evtq.q, EVTQ_ENT_DWORDS);
+	if (smmu->features & ARM_SMMU_FEAT_PRI)
+		arm_smmu_deinit_one_queue(smmu, &smmu->priq.q, PRIQ_ENT_DWORDS);
 }
 
 static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
@@ -4121,6 +4153,7 @@ static int arm_smmu_device_remove(struct platform_device *pdev)
 	arm_smmu_set_bus_ops(NULL);
 	iommu_device_unregister(&smmu->iommu);
 	iommu_device_sysfs_remove(&smmu->iommu);
+	arm_smmu_deinit_queues(smmu);
 	arm_smmu_device_disable(smmu);
 
 	return 0;
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
