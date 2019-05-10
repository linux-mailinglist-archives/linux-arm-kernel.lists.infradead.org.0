Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD54219696
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 04:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlV6z2F6NyoONUGhHPW5ayufd9p6hrlMoZh9EsPqktY=; b=cuztaHHihiXzeI
	3qLmthQkF+zcEOfX9Da4hEnzBD3/diNSYodXhG0o8Et7O/ImDUWUmJirGCUjy7cpWVz/Xj9jPFPcl
	+CZVioFg0t4YrEZDdL1On6LEuDggw2HKm6RyP9iq+xLW6rKdI0RwvNSxvlZ4Sux8Rn3pL2+1e6zOK
	hm58ZlgGvDFi2lDOkrC+6lAw+tJqNEgczGYHy7ThL8ltTxjqPYM0/Zw+ABiSL7cHoq29LBjKaoX0x
	0Sypc3cSwWQvmuH8dYXPc38Y9DGfHeUx4+hyVyLsdl799L9fkXhlBIKR2ep4i8W0XF0opRMKNEdMs
	qT5r03TaESnQQrUmnpFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOuun-0008Hf-OB; Fri, 10 May 2019 02:05:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOuuU-0008Gc-6g; Fri, 10 May 2019 02:05:31 +0000
X-UUID: cfc7156dd06e476784cddefbeb2f930d-20190509
X-UUID: cfc7156dd06e476784cddefbeb2f930d-20190509
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1261208210; Thu, 09 May 2019 18:03:38 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 19:03:36 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 10:03:35 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 10:03:35 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hans.verkuil@cisco.com>,
 <laurent.pinchart+renesas@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC, V2,
 11/11] media: platform: Add Mediatek ISP P1 shared memory device
Date: Fri, 10 May 2019 09:58:08 +0800
Message-ID: <20190510015755.51495-12-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <Jungo Lin <jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_190518_337838_A52A896D 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Reply-To: Jungo Lin <jungo.lin@mediatek.com>
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 suleiman@chromium.org, Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com,
 ryan.yu@mediatek.com, Jerry-ch.Chen@mediatek.com, frankie.chiu@mediatek.com,
 Jungo Lin <jungo.lin@mediatek.com>, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, seraph.huang@mediatek.com,
 zwisler@chromium.org, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The purpose of this child device is to provide shared
memory management for exchanging tuning data between co-processor
and the Pass 1 unit of the camera ISP system, including cache
buffer handling.

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
 .../mtk-isp/isp_50/cam/mtk_cam-smem-dev.c     | 297 ++++++++++++++++++
 .../mtk-isp/isp_50/cam/mtk_cam-smem.h         |  28 ++
 2 files changed, 325 insertions(+)
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem-dev.c
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.h

diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem-dev.c b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem-dev.c
new file mode 100644
index 000000000000..b7c8d3a00c2c
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem-dev.c
@@ -0,0 +1,297 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Frederic Chen <frederic.chen@mediatek.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+#include <asm/cacheflush.h>
+#include <media/videobuf2-dma-contig.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/iommu.h>
+#include <linux/of.h>
+#include <linux/of_fdt.h>
+#include <linux/of_reserved_mem.h>
+#include <linux/platform_device.h>
+
+#include "mtk_cam-smem.h"
+
+static struct reserved_mem *cam_reserved_smem;
+static struct dma_map_ops smem_dma_ops;
+
+struct mtk_cam_smem_dev {
+	struct device *dev;
+	struct sg_table sgt;
+	struct page **smem_pages;
+	dma_addr_t smem_base;
+	dma_addr_t smem_dma_base;
+	int smem_size;
+};
+
+struct dma_coherent_mem {
+	void		*virt_base;
+	dma_addr_t	device_base;
+	unsigned long	pfn_base;
+	int		size;
+	int		flags;
+	unsigned long	*bitmap;
+	spinlock_t	spinlock; /* dma_coherent_mem attributes protection */
+	bool		use_dev_dma_pfn_offset;
+};
+
+dma_addr_t mtk_cam_smem_iova_to_scp_addr(struct device *dev,
+					 dma_addr_t iova)
+{
+	struct iommu_domain *domain;
+	dma_addr_t addr, limit;
+	struct mtk_cam_smem_dev *smem_dev = dev_get_drvdata(dev);
+
+	domain = iommu_get_domain_for_dev(dev);
+	if (!domain) {
+		dev_warn(dev, "No iommu group domain\n");
+		return 0;
+	}
+
+	addr = iommu_iova_to_phys(domain, iova);
+	limit = smem_dev->smem_base + smem_dev->smem_size;
+	if (addr < smem_dev->smem_base || addr >= limit) {
+		dev_err(dev,
+			"Unexpected scp_addr:%pad must >= %pad and < %pad)\n",
+			&addr, &smem_dev->smem_base, &limit);
+		return 0;
+	}
+	return addr;
+}
+
+static int mtk_cam_smem_get_sgtable(struct device *dev,
+				    struct sg_table *sgt,
+	void *cpu_addr, dma_addr_t dma_addr,
+	size_t size, unsigned long attrs)
+{
+	struct mtk_cam_smem_dev *smem_dev = dev_get_drvdata(dev);
+	size_t pages_count = PAGE_ALIGN(size) >> PAGE_SHIFT;
+	dma_addr_t scp_addr = mtk_cam_smem_iova_to_scp_addr(dev, dma_addr);
+	u32 pages_start = (scp_addr - smem_dev->smem_base) >> PAGE_SHIFT;
+
+	dev_dbg(dev,
+		"%s:page:%u va:%pK scp addr:%pad, aligned size:%d pages:%u\n",
+		__func__, pages_start, cpu_addr, &scp_addr, size, pages_count);
+
+	return sg_alloc_table_from_pages(sgt,
+		smem_dev->smem_pages + pages_start,
+		pages_count, 0, size, GFP_KERNEL);
+}
+
+static void *mtk_cam_smem_get_cpu_addr(struct mtk_cam_smem_dev *smem_dev,
+				       dma_addr_t addr)
+{
+	struct device *dev = smem_dev->dev;
+	struct dma_coherent_mem *dma_mem = dev->dma_mem;
+
+	if (addr < smem_dev->smem_base ||
+	    addr > smem_dev->smem_base + smem_dev->smem_size) {
+		dev_err(dev, "Invalid scp_addr %pad from sg\n", &addr);
+		return NULL;
+	}
+	return dma_mem->virt_base + (addr - smem_dev->smem_base);
+}
+
+static void mtk_cam_smem_sync_sg_for_cpu(struct device *dev,
+					 struct scatterlist *sgl, int nelems,
+					 enum dma_data_direction dir)
+{
+	struct mtk_cam_smem_dev *smem_dev = dev_get_drvdata(dev);
+	dma_addr_t scp_addr = sg_phys(sgl);
+	void *cpu_addr = mtk_cam_smem_get_cpu_addr(smem_dev, scp_addr);
+
+	dev_dbg(dev,
+		"__dma_unmap_area:scp_addr:%pad,vaddr:%pK,size:%d,dir:%d\n",
+		&scp_addr, cpu_addr, sgl->length, dir);
+	__dma_unmap_area(cpu_addr, sgl->length, dir);
+}
+
+static void mtk_cam_smem_sync_sg_for_device(struct device *dev,
+					    struct scatterlist *sgl,
+					    int nelems,
+					    enum dma_data_direction dir)
+{
+	struct mtk_cam_smem_dev *smem_dev = dev_get_drvdata(dev);
+	dma_addr_t scp_addr = sg_phys(sgl);
+	void *cpu_addr = mtk_cam_smem_get_cpu_addr(smem_dev, scp_addr);
+
+	dev_dbg(dev,
+		"__dma_map_area:scp_addr:%pad,vaddr:%pK,size:%d,dir:%d\n",
+		&scp_addr, cpu_addr, sgl->length, dir);
+	__dma_map_area(cpu_addr, sgl->length, dir);
+}
+
+static int mtk_cam_smem_setup_dma_ops(struct device *dev,
+				      struct dma_map_ops *smem_ops)
+{
+	memcpy((void *)smem_ops, dev->dma_ops, sizeof(*smem_ops));
+	smem_ops->get_sgtable = mtk_cam_smem_get_sgtable;
+	smem_ops->sync_sg_for_device = mtk_cam_smem_sync_sg_for_device;
+	smem_ops->sync_sg_for_cpu = mtk_cam_smem_sync_sg_for_cpu;
+	set_dma_ops(dev, smem_ops);
+
+	return 0;
+}
+
+static int mtk_cam_reserved_drm_sg_init(struct mtk_cam_smem_dev *smem_dev)
+{
+	u32 size_align, n_pages;
+	struct device *dev = smem_dev->dev;
+	struct sg_table *sgt = &smem_dev->sgt;
+	struct page **pages;
+	dma_addr_t dma_addr;
+	unsigned int i;
+	int ret;
+
+	size_align = PAGE_ALIGN(smem_dev->smem_size);
+	n_pages = size_align >> PAGE_SHIFT;
+
+	pages = kmalloc_array(n_pages, sizeof(struct page *), GFP_KERNEL);
+	if (!pages)
+		return -ENOMEM;
+
+	for (i = 0; i < n_pages; i++)
+		pages[i] = phys_to_page(smem_dev->smem_base + i * PAGE_SIZE);
+
+	ret = sg_alloc_table_from_pages(sgt, pages, n_pages, 0,
+					size_align, GFP_KERNEL);
+	if (ret) {
+		dev_err(dev, "failed to alloca sg table:%d\n", ret);
+		goto fail_table_alloc;
+	}
+	sgt->nents = dma_map_sg_attrs(dev, sgt->sgl, sgt->orig_nents,
+				      DMA_BIDIRECTIONAL,
+				      DMA_ATTR_SKIP_CPU_SYNC);
+	if (!sgt->nents) {
+		dev_err(dev, "failed to dma sg map\n");
+		goto fail_map;
+	}
+
+	dma_addr = sg_dma_address(sgt->sgl);
+	ret = dma_declare_coherent_memory(dev, smem_dev->smem_base,
+					  dma_addr, size_align,
+					  DMA_MEMORY_EXCLUSIVE);
+
+	if (ret)
+		dev_err(dev, "Unable to declare smem  memory:\n", ret);
+	else
+		dev_info(dev, "Coherent mem pa:%pad/%pad, size:%d\n",
+			 &smem_dev->smem_base, &dma_addr, size_align);
+
+	smem_dev->smem_size = size_align;
+	smem_dev->smem_pages = pages;
+	smem_dev->smem_dma_base = dma_addr;
+
+	return 0;
+
+fail_map:
+	sg_free_table(sgt);
+fail_table_alloc:
+	while (n_pages--)
+		__free_page(pages[n_pages]);
+	kfree(pages);
+	return -ENOMEM;
+}
+
+/* DMA memory related helper functions */
+static void mtk_cam_memdev_release(struct device *dev)
+{
+	vb2_dma_contig_clear_max_seg_size(dev);
+	of_reserved_mem_device_release(dev);
+}
+
+static struct device *mtk_cam_alloc_smem_dev(struct device *dev,
+					     const char *name)
+{
+	struct device *child;
+	int rc = 0;
+
+	child = devm_kzalloc(dev, sizeof(*child), GFP_KERNEL);
+	if (!child)
+		return NULL;
+
+	child->parent = dev;
+	child->iommu_group = dev->iommu_group;
+	child->release = mtk_cam_memdev_release;
+	dev_set_name(child, name);
+	set_dma_ops(child, get_dma_ops(dev));
+	child->dma_mask = dev->dma_mask;
+	rc = dma_set_coherent_mask(child, DMA_BIT_MASK(32));
+	vb2_dma_contig_set_max_seg_size(child, DMA_BIT_MASK(32));
+
+	if (device_register(child)) {
+		device_del(child);
+		return NULL;
+	}
+
+	return child;
+}
+
+int mtk_cam_reserved_memory_init(struct isp_p1_device *p1_dev)
+{
+	struct device *dev = &p1_dev->pdev->dev;
+	struct mtk_cam_smem_dev *smem_dev;
+
+	/* Allocate context */
+	smem_dev = devm_kzalloc(dev, sizeof(*smem_dev), GFP_KERNEL);
+	if (!smem_dev)
+		return -ENOMEM;
+
+	smem_dev->dev = mtk_cam_alloc_smem_dev(dev, "cam-smem");
+	if (!smem_dev->dev) {
+		dev_err(dev, "failed to alloc smem device\n");
+		return -ENODEV;
+	}
+	dev_set_drvdata(smem_dev->dev, smem_dev);
+	p1_dev->cam_dev->smem_dev = smem_dev->dev;
+
+	if (cam_reserved_smem) {
+		smem_dev->smem_base = cam_reserved_smem->base;
+		smem_dev->smem_size = cam_reserved_smem->size;
+		dev_info(dev, "%s dev:0x%pK base:%pad size:%u MiB\n",
+			 __func__,
+			 smem_dev->dev,
+			 &smem_dev->smem_base,
+			 (smem_dev->smem_size / SZ_1M));
+		mtk_cam_reserved_drm_sg_init(smem_dev);
+		mtk_cam_smem_setup_dma_ops(smem_dev->dev, &smem_dma_ops);
+	}
+
+	return 0;
+}
+
+static int __init mtk_cam_smem_dma_setup(struct reserved_mem *rmem)
+{
+	unsigned long node = rmem->fdt_node;
+
+	if (of_get_flat_dt_prop(node, "reusable", NULL))
+		return -EINVAL;
+
+	if (!of_get_flat_dt_prop(node, "no-map", NULL)) {
+		pr_err("Reserved memory: no-map are not supported\n");
+		return -EINVAL;
+	}
+
+	cam_reserved_smem = rmem;
+
+	pr_info("%s:created DMA memory pool at %pa, size %u MiB\n",
+		__func__, &rmem->base, (rmem->size / SZ_1M));
+	return 0;
+}
+
+RESERVEDMEM_OF_DECLARE(mtk_cam_smem,
+		       "mediatek,reserve-memory-cam-smem",
+		       mtk_cam_smem_dma_setup);
diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.h b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.h
new file mode 100644
index 000000000000..44fb876c87d5
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Frederic Chen <frederic.chen@mediatek.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __MTK_CAM_ISP_SMEM_H
+#define __MTK_CAM_ISP_SMEM_H
+
+#include <linux/dma-mapping.h>
+
+#include "mtk_cam.h"
+
+int mtk_cam_reserved_memory_init(struct isp_p1_device *p1_dev);
+dma_addr_t mtk_cam_smem_iova_to_scp_addr(struct device *smem_dev,
+					 dma_addr_t iova);
+
+#endif
+
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
