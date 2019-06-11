Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093363C1CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 05:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qroD86cgHf+Uy5TLyGlJBGiIVFIuYF4587qU+vtdAc8=; b=N3whEXRlCh+hO1
	TEX0fbRXzkKtD/TyGS+XBjel230TOdZ7Vx3C0dXiE7GS99N1HcX5bvX4bRYB7W+0QQ5mt/BW4b2gQ
	Yit/iDolyYotty6eVS6jj7o2c0RyHZRMmU4FnBi00Um7A2dSaI//P0d7Vbi/pbMO7OGLj8Zxwu8MA
	I1da07No3fL4jIo0UL0hoFliP2Gb1lzcQuQ7TwfZhjnRLFE3gsA+A0c7PTwUxc4hw4XndibNfLfrO
	oOlSSUpBSx0m+58TOwJkUIaETMU5EulqGTcyOGVI/C/x46cQYJBYgx4lsIPHt0cDiqyzAyhCXBYCM
	kCBM7T08Y+HXTFkTiAIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haXv3-0002lm-VZ; Tue, 11 Jun 2019 03:57:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haXrT-0007JQ-Hu; Tue, 11 Jun 2019 03:54:18 +0000
X-UUID: 6d71adea25104562bd4f071927f3406c-20190610
X-UUID: 6d71adea25104562bd4f071927f3406c-20190610
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1643697015; Mon, 10 Jun 2019 19:54:03 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:54:02 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 11:54:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 11 Jun 2019 11:54:00 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hverkuil@xs4all.nl>,
 <laurent.pinchart@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC,
 v3 9/9] media: platform: Add Mediatek ISP P1 shared memory device
Date: Tue, 11 Jun 2019 11:53:44 +0800
Message-ID: <20190611035344.29814-10-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190611035344.29814-1-jungo.lin@mediatek.com>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: F12E07B93EAFA609DC7C0D7FC742FE10CD2D4D1AB945F72210C6651DCF160D492000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_205415_996171_7E16CC94 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Reply-To: jungo.lin@mediatek.com
Cc: devicetree@vger.kernel.org, sean.cheng@mediatek.com, rynn.wu@mediatek.com,
 srv_heupstream@mediatek.com, robh@kernel.org, ryan.yu@mediatek.com,
 frankie.chiu@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, ddavenport@chromium.org,
 frederic.chen@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
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
This patch depends on "Add support for mt8183 SCP"[1].

[1] https://patchwork.kernel.org/cover/10972143/
---
 .../platform/mtk-isp/isp_50/cam/Makefile      |   1 +
 .../mtk-isp/isp_50/cam/mtk_cam-smem.c         | 304 ++++++++++++++++++
 .../mtk-isp/isp_50/cam/mtk_cam-smem.h         |  18 ++
 3 files changed, 323 insertions(+)
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.c
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.h

diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/Makefile b/drivers/media/platform/mtk-isp/isp_50/cam/Makefile
index 95f0b1c8fa1c..d545ca6f09c5 100644
--- a/drivers/media/platform/mtk-isp/isp_50/cam/Makefile
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/Makefile
@@ -4,5 +4,6 @@ mtk-cam-isp-objs += mtk_cam-ctrl.o
 mtk-cam-isp-objs += mtk_cam-v4l2-util.o
 mtk-cam-isp-objs += mtk_cam.o
 mtk-cam-isp-objs += mtk_cam-scp.o
+mtk-cam-isp-objs += mtk_cam-smem.o
 
 obj-$(CONFIG_VIDEO_MEDIATEK_ISP_PASS1) += mtk-cam-isp.o
\ No newline at end of file
diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.c b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.c
new file mode 100644
index 000000000000..a9845668ce10
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.c
@@ -0,0 +1,304 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2018 MediaTek Inc.
+
+#include <asm/cacheflush.h>
+#include <linux/device.h>
+#include <linux/io.h>
+#include <linux/iommu.h>
+#include <linux/of.h>
+#include <linux/of_fdt.h>
+#include <linux/of_reserved_mem.h>
+#include <linux/platform_device.h>
+#include <linux/platform_data/mtk_scp.h>
+#include <media/videobuf2-dma-contig.h>
+
+#include "mtk_cam-smem.h"
+
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
+				    void *cpu_addr, dma_addr_t dma_addr,
+				    size_t size, unsigned long attrs)
+{
+	struct mtk_cam_smem_dev *smem_dev = dev_get_drvdata(dev);
+	size_t pages_count = PAGE_ALIGN(size) >> PAGE_SHIFT;
+	dma_addr_t scp_addr = mtk_cam_smem_iova_to_scp_addr(dev, dma_addr);
+	u32 pages_start = (scp_addr - smem_dev->smem_base) >> PAGE_SHIFT;
+
+	dev_dbg(dev,
+		"%s:page:%u va:%pK scp addr:%pad, aligned size:%zu pages:%zu\n",
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
+static void mtk_cam_smem_setup_dma_ops(struct device *dev,
+				       struct dma_map_ops *smem_ops)
+{
+	memcpy((void *)smem_ops, dev->dma_ops, sizeof(*smem_ops));
+	smem_ops->get_sgtable = mtk_cam_smem_get_sgtable;
+	smem_ops->sync_sg_for_device = mtk_cam_smem_sync_sg_for_device;
+	smem_ops->sync_sg_for_cpu = mtk_cam_smem_sync_sg_for_cpu;
+	set_dma_ops(dev, smem_ops);
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
+	smem_dev->smem_base = scp_get_reserve_mem_phys(SCP_ISP_MEM2_ID);
+	smem_dev->smem_size = scp_get_reserve_mem_size(SCP_ISP_MEM2_ID);
+	if (!smem_dev->smem_base || !smem_dev->smem_size)
+		return -EPROBE_DEFER;
+
+	dev_info(dev, "%s dev:0x%pK base:%pad size:%u MiB\n",
+		 __func__,
+		 smem_dev->dev,
+		 &smem_dev->smem_base,
+		 (smem_dev->smem_size / SZ_1M));
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
+	if (ret) {
+		dev_err(dev, "Unable to declare smem  memory:%d\n", ret);
+		goto fail_map;
+	}
+
+	dev_info(dev, "Coherent mem pa:%pad/%pad, size:%d\n",
+		 &smem_dev->smem_base, &dma_addr, size_align);
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
+
+	return -ENOMEM;
+}
+
+/* DMA memory related helper functions */
+static void mtk_cam_memdev_release(struct device *dev)
+{
+	vb2_dma_contig_clear_max_seg_size(dev);
+}
+
+static struct device *mtk_cam_alloc_smem_dev(struct device *dev,
+					     const char *name)
+{
+	struct device *child;
+	int ret;
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
+	ret = dma_set_coherent_mask(child, DMA_BIT_MASK(32));
+	if (ret)
+		return NULL;
+
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
+static int mtk_cam_composer_dma_init(struct mtk_isp_p1_ctx *isp_ctx)
+{
+	struct isp_p1_device *p1_dev = p1_ctx_to_dev(isp_ctx);
+	struct device *dev = &p1_dev->pdev->dev;
+	u32 size;
+	dma_addr_t addr;
+
+	isp_ctx->scp_mem_pa = scp_get_reserve_mem_phys(SCP_ISP_MEM_ID);
+	size = PAGE_ALIGN(scp_get_reserve_mem_size(SCP_ISP_MEM_ID));
+	if (!isp_ctx->scp_mem_pa || !size)
+		return -EPROBE_DEFER;
+
+	dev_info(dev, "scp addr:%pad size:0x%x\n", &isp_ctx->scp_mem_pa, size);
+
+	/* get iova address */
+	addr = dma_map_page_attrs(dev, phys_to_page(isp_ctx->scp_mem_pa), 0,
+				  size, DMA_BIDIRECTIONAL,
+				  DMA_ATTR_SKIP_CPU_SYNC);
+	if (dma_mapping_error(dev, addr)) {
+		isp_ctx->scp_mem_pa = 0;
+		dev_err(dev, "Failed to map scp iova\n");
+		return -ENOMEM;
+	}
+
+	isp_ctx->scp_mem_iova = addr;
+
+	return 0;
+}
+
+int mtk_cam_reserved_memory_init(struct isp_p1_device *p1_dev)
+{
+	struct device *dev = &p1_dev->pdev->dev;
+	struct mtk_cam_smem_dev *smem_dev;
+	int ret;
+
+	ret = mtk_cam_composer_dma_init(&p1_dev->isp_ctx);
+	if (ret)
+		return ret;
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
+	p1_dev->cam_dev.smem_dev = smem_dev->dev;
+
+	ret = mtk_cam_reserved_drm_sg_init(smem_dev);
+	if (ret)
+		return ret;
+
+	mtk_cam_smem_setup_dma_ops(smem_dev->dev, &smem_dma_ops);
+
+	return 0;
+}
diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.h b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.h
new file mode 100644
index 000000000000..981d47178e99
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-smem.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2018 MediaTek Inc.
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
