Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BAA1969A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 04:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Khc1qQYWrmXMJgMkhtJlhEErmrTfMMIrWcVKG8Bc4J0=; b=tC96Q+kaPaCIyw
	BTKAsWX1gWA818bIU4mFhCkSswxhvOqm6i8y03hfSSDKvTemUp2pBNLnDW9hVMX22BY7DBmdL0XTo
	M71CeGu/vq4ksxwYBnUaH0UkZ513tiD+Y2Q4CFJHOGjkID9iRTlqzgO1n32z9/ODDL54xpMyfoyPI
	M3vjl+VrRoA7kffA5mRws4vhITq3ay1vKRactSejPYsQYDlhg2HTjHcEam6NJ7n4AqYIbDi0wwiIz
	GeUUlpEzKxJW4qEcZndSq5bQo3cZcoKGU9YeS1F58tQtJIlL/w9iy/Ck6IbfX5SXntGGXHAupHRWJ
	1ftiUCT0/FRD2D3mrsTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOuv3-00004z-2o; Fri, 10 May 2019 02:05:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOuuo-0008O6-Gz; Fri, 10 May 2019 02:05:43 +0000
X-UUID: 8d9cf49f80e84029ba27c626659bedac-20190509
X-UUID: 8d9cf49f80e84029ba27c626659bedac-20190509
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1932839961; Thu, 09 May 2019 18:03:31 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 19:03:30 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 10:03:28 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 10:03:28 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hans.verkuil@cisco.com>,
 <laurent.pinchart+renesas@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC, V2,
 10/11] media: platform: Add Mediatek ISP P1 SCP communication
Date: Fri, 10 May 2019 09:58:06 +0800
Message-ID: <20190510015755.51495-11-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <Jungo Lin <jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_190539_070918_D9059E81 
X-CRM114-Status: GOOD (  18.19  )
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

This patch adds communication with the co-processor on the SoC
through the SCP driver. It supports bi-directional commands
to exchange data and perform command flow control function.

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
This patch dependents on "Add support for mt8183 SCP"[1].

[1] https://patchwork.kernel.org/cover/10872547/
---
 .../platform/mtk-isp/isp_50/cam/mtk_cam-scp.c | 481 ++++++++++++++++++
 .../platform/mtk-isp/isp_50/cam/mtk_cam-scp.h | 207 ++++++++
 2 files changed, 688 insertions(+)
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-scp.c
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-scp.h

diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-scp.c b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-scp.c
new file mode 100644
index 000000000000..cd10a1c43e0b
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-scp.c
@@ -0,0 +1,481 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Seraph Huang <seraph.huang@mediatek.com>
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
+#include <linux/atomic.h>
+#include <linux/kthread.h>
+#include <linux/platform_data/mtk_scp.h>
+#include <linux/remoteproc.h>
+#include <linux/sched.h>
+#include <linux/spinlock.h>
+#include <linux/types.h>
+#include <linux/vmalloc.h>
+
+#include "mtk_cam.h"
+
+static int isp_composer_dma_sg_init(struct mtk_isp_p1_ctx *isp_ctx)
+{
+	struct isp_p1_device *p1_dev = p1_ctx_to_dev(isp_ctx);
+	struct device *dev = &p1_dev->pdev->dev;
+	u32 size, size_align;
+	struct sg_table *sgt;
+	struct page **pages;
+	unsigned int n_pages, i;
+	int ret;
+
+	isp_ctx->scp_mem_pa = scp_get_reserve_mem_phys(SCP_ISP_MEM_ID);
+	size = scp_get_reserve_mem_size(SCP_ISP_MEM_ID);
+
+	dev_dbg(dev, "scp mem addr:%pad size:%u MiB\n", &isp_ctx->scp_mem_pa,
+		(size / SZ_1M));
+
+	/* get iova address */
+	sgt = &isp_ctx->sgtable;
+	sg_alloc_table(sgt, 1, GFP_KERNEL);
+
+	size_align = PAGE_ALIGN(size);
+	n_pages = size_align >> PAGE_SHIFT;
+
+	pages = kmalloc_array(n_pages, sizeof(struct page *), GFP_KERNEL);
+	if (!pages)
+		goto fail_pages_alloc;
+
+	for (i = 0; i < n_pages; i++)
+		pages[i] = phys_to_page(isp_ctx->scp_mem_pa + i * PAGE_SIZE);
+
+	ret = sg_alloc_table_from_pages(sgt, pages, n_pages,
+					0, size_align, GFP_KERNEL);
+	if (ret) {
+		dev_err(dev, "failed to allocate sg table:%d\n", ret);
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
+	isp_ctx->scp_mem_iova = sg_dma_address(sgt->sgl);
+
+	return 0;
+
+fail_map:
+	sg_free_table(sgt);
+fail_table_alloc:
+	while (n_pages--)
+		__free_page(pages[n_pages]);
+	kfree(pages);
+fail_pages_alloc:
+	return -ENOMEM;
+}
+
+static void isp_composer_deinit(struct mtk_isp_p1_ctx *isp_ctx)
+{
+	struct isp_p1_device *p1_dev = p1_ctx_to_dev(isp_ctx);
+	struct mtk_isp_queue_work *ipi_job, *tmp_ipi_job;
+
+	list_for_each_entry_safe(ipi_job, tmp_ipi_job,
+				 &isp_ctx->composer_txlist.queue,
+				 list_entry) {
+		list_del(&ipi_job->list_entry);
+		kfree(ipi_job);
+		atomic_dec(&isp_ctx->composer_txlist.queue_cnt);
+	}
+
+	atomic_set(&isp_ctx->ipi_occupied, 0);
+	atomic_set(&isp_ctx->composing_frame, 0);
+	mutex_destroy(&isp_ctx->composer_tx_lock);
+
+	dma_unmap_sg_attrs(&p1_dev->pdev->dev, isp_ctx->sgtable.sgl,
+			   isp_ctx->sgtable.orig_nents,
+			   DMA_BIDIRECTIONAL, DMA_ATTR_SKIP_CPU_SYNC);
+	sg_free_table(&isp_ctx->sgtable);
+
+	if (!IS_ERR(isp_ctx->composer_tx_thread.thread)) {
+		kthread_stop(isp_ctx->composer_tx_thread.thread);
+		wake_up_interruptible(&isp_ctx->composer_tx_thread.wq);
+		isp_ctx->composer_tx_thread.thread = NULL;
+	}
+
+	isp_ctx->composer_deinit_donecb(isp_ctx);
+}
+
+/*
+ * Two kinds of flow control in isp_composer_tx_work.
+ *
+ * Case 1: IPI commands flow control. The maximum number of command queues is 3.
+ * There are two types of IPI commands (SCP_ISP_CMD/SCP_ISP_FRAME) in P1 driver.
+ * It is controlled by ipi_occupied.
+ * The priority of SCP_ISP_CMD is higher than SCP_ISP_FRAME.
+ *
+ * Case 2: Frame buffers flow control. The maximum number of frame buffers is 3.
+ * It is controlled by composing_frame.
+ * Frame buffer is sent by SCP_ISP_FRAME command.
+ */
+static int isp_composer_tx_work(void *data)
+{
+	struct mtk_isp_p1_ctx *isp_ctx = (struct mtk_isp_p1_ctx *)data;
+	struct isp_p1_device *p1_dev = p1_ctx_to_dev(isp_ctx);
+	struct device *dev = &p1_dev->pdev->dev;
+	struct mtk_isp_queue_work *isp_composer_work, *tmp_ipi_job;
+	struct isp_queue *composer_txlist = &isp_ctx->composer_txlist;
+	int ret;
+
+	while (1) {
+		ret = wait_event_interruptible
+			(isp_ctx->composer_tx_thread.wq,
+			 (atomic_read(&composer_txlist->queue_cnt) > 0 &&
+			 atomic_read(&isp_ctx->ipi_occupied)
+				< ISP_COMPOSING_MAX_NUM &&
+			 atomic_read(&isp_ctx->composing_frame)
+				< ISP_FRAME_COMPOSING_MAX_NUM) ||
+			 atomic_read(&isp_ctx->cmd_queued) > 0 &&
+			 atomic_read(&isp_ctx->ipi_occupied)
+				< ISP_COMPOSING_MAX_NUM ||
+			 kthread_should_stop());
+
+		if (kthread_should_stop())
+			break;
+
+		if (ret == ERESTARTSYS) {
+			dev_err(dev, "interrupted by a signal!\n");
+			continue;
+		}
+
+		spin_lock(&composer_txlist->lock);
+		if (atomic_read(&isp_ctx->cmd_queued) > 0) {
+			list_for_each_entry_safe(isp_composer_work, tmp_ipi_job,
+						 &composer_txlist->queue,
+						 list_entry) {
+				if (isp_composer_work->type == SCP_ISP_CMD) {
+					dev_dbg(dev, "Found a cmd\n");
+					break;
+				}
+			}
+		} else {
+			if (atomic_read(&isp_ctx->composing_frame) >=
+				ISP_FRAME_COMPOSING_MAX_NUM) {
+				spin_unlock(&composer_txlist->lock);
+				continue;
+			}
+			isp_composer_work =
+			    list_first_entry_or_null
+				(&composer_txlist->queue,
+				 struct mtk_isp_queue_work,
+				 list_entry);
+		}
+
+		list_del(&isp_composer_work->list_entry);
+		atomic_dec(&composer_txlist->queue_cnt);
+		spin_unlock(&composer_txlist->lock);
+
+		if (isp_composer_work->type == SCP_ISP_CMD) {
+			mutex_lock(&isp_ctx->composer_tx_lock);
+			scp_ipi_send
+				(p1_dev->scp_pdev,
+				 SCP_IPI_ISP_CMD,
+				 &isp_composer_work->cmd,
+				 sizeof(isp_composer_work->cmd),
+				 0);
+			mutex_unlock(&isp_ctx->composer_tx_lock);
+			atomic_dec(&isp_ctx->cmd_queued);
+			atomic_inc(&isp_ctx->ipi_occupied);
+			dev_dbg(dev,
+				"%s cmd id %d sent, %d ipi buf occupied",
+				__func__,
+				isp_composer_work->cmd.cmd_id,
+				atomic_read(&isp_ctx->ipi_occupied));
+		} else if (isp_composer_work->type == SCP_ISP_FRAME) {
+			mutex_lock(&isp_ctx->composer_tx_lock);
+			scp_ipi_send
+				(p1_dev->scp_pdev,
+				 SCP_IPI_ISP_FRAME,
+				 &isp_composer_work->frameparams,
+				 sizeof(isp_composer_work->frameparams),
+				 0);
+			mutex_unlock(&isp_ctx->composer_tx_lock);
+			atomic_inc(&isp_ctx->ipi_occupied);
+			atomic_inc(&isp_ctx->composing_frame);
+			dev_dbg(dev,
+				"%s frame %d sent, %d ipi, %d CQ bufs occupied",
+				__func__,
+				isp_composer_work->frameparams.frame_seq_no,
+				atomic_read(&isp_ctx->ipi_occupied),
+				atomic_read(&isp_ctx->composing_frame));
+		} else {
+			dev_err(dev,
+				"ignore IPI type: %d!\n",
+				isp_composer_work->type);
+			kfree(isp_composer_work);
+			continue;
+		}
+		kfree(isp_composer_work);
+	}
+	return ret;
+}
+
+static int isp_composer_rx_work(void *data)
+{
+	struct mtk_isp_p1_ctx *isp_ctx = (struct mtk_isp_p1_ctx *)data;
+	struct isp_p1_device *p1_dev = p1_ctx_to_dev(data);
+	struct device *dev = &p1_dev->pdev->dev;
+	struct mtk_isp_scp_p1_cmd ipi_msg;
+	int ret;
+	unsigned int ipi_queue_occupied, i;
+	unsigned long flags;
+	atomic_t *evts_end = &isp_ctx->composer_evts_end;
+	atomic_t *evts_start = &isp_ctx->composer_evts_start;
+	u8 ack_cmd_id;
+
+	while (1) {
+		ret = wait_event_interruptible(isp_ctx->composer_rx_thread.wq,
+					       (atomic_read(evts_end) !=
+					       atomic_read(evts_start)) ||
+					       kthread_should_stop());
+
+		if (kthread_should_stop())
+			break;
+
+		if (ret == ERESTARTSYS) {
+			dev_err(dev, "interrupted by a signal!\n");
+			continue;
+		}
+
+		spin_lock_irqsave(&isp_ctx->composer_evts_lock, flags);
+		i = atomic_read(evts_start);
+		memcpy(&ipi_msg, &isp_ctx->composer_evts[i],
+		       sizeof(struct mtk_isp_scp_p1_cmd));
+		atomic_set(evts_start, ++i & 0x3);
+		spin_unlock_irqrestore(&isp_ctx->composer_evts_lock, flags);
+
+		switch (ipi_msg.cmd_id) {
+		case ISP_CMD_ACK:
+			ipi_queue_occupied =
+				atomic_dec_return(&isp_ctx->ipi_occupied);
+			if (ipi_queue_occupied < ISP_COMPOSING_MAX_NUM)
+				wake_up_interruptible
+					(&isp_ctx->composer_tx_thread.wq);
+
+			ack_cmd_id = ipi_msg.ack_info.cmd_id;
+			if (ack_cmd_id == ISP_CMD_FRAME_ACK) {
+				dev_dbg(dev,
+					"%s frame %d ack\n",
+					__func__,
+					ipi_msg.ack_info.frame_seq_no);
+				atomic_set(&isp_ctx->composed_frame_id,
+					   ipi_msg.ack_info.frame_seq_no);
+			} else {
+				dev_dbg(dev, "%s cmd id: %d",
+					__func__,
+					ack_cmd_id);
+				if (ack_cmd_id == ISP_CMD_DEINIT) {
+					isp_composer_deinit(isp_ctx);
+					isp_ctx->composer_rx_thread.thread =
+						NULL;
+					return -1;
+				}
+			}
+			break;
+		default:
+			break;
+		};
+	}
+	return ret;
+}
+
+static void isp_composer_handler(void *data, unsigned int len, void *priv)
+{
+	struct mtk_isp_p1_ctx *isp_ctx;
+	struct mtk_isp_scp_p1_cmd *ipi_msg_ptr;
+	unsigned long flags;
+	unsigned int i;
+
+	ipi_msg_ptr = (struct mtk_isp_scp_p1_cmd *)data;
+	isp_ctx = (struct mtk_isp_p1_ctx *)priv;
+
+	spin_lock_irqsave(&isp_ctx->composer_evts_lock, flags);
+	i = atomic_read(&isp_ctx->composer_evts_end);
+	memcpy(&isp_ctx->composer_evts[i], data,
+	       sizeof(struct mtk_isp_scp_p1_cmd));
+	atomic_set(&isp_ctx->composer_evts_end, ++i & 0x3);
+	spin_unlock_irqrestore(&isp_ctx->composer_evts_lock, flags);
+
+	wake_up_interruptible(&isp_ctx->composer_rx_thread.wq);
+}
+
+int isp_composer_init(struct mtk_isp_p1_ctx *isp_ctx)
+{
+	struct isp_p1_device *p1_dev = p1_ctx_to_dev(isp_ctx);
+	struct device *dev = &p1_dev->pdev->dev;
+	int ret;
+
+	ret = scp_ipi_register(p1_dev->scp_pdev,
+			       SCP_IPI_ISP_CMD,
+			       isp_composer_handler,
+			       isp_ctx);
+	if (ret)
+		return ret;
+
+	if (!isp_ctx->composer_tx_thread.thread) {
+		mutex_init(&isp_ctx->composer_tx_lock);
+		init_waitqueue_head(&isp_ctx->composer_tx_thread.wq);
+		INIT_LIST_HEAD(&isp_ctx->composer_txlist.queue);
+		spin_lock_init(&isp_ctx->composer_txlist.lock);
+		isp_ctx->composer_tx_thread.thread =
+			kthread_run(isp_composer_tx_work, (void *)isp_ctx,
+				    "isp_composer_tx");
+		if (IS_ERR(isp_ctx->composer_tx_thread.thread)) {
+			dev_err(dev, "unable to start kthread\n");
+			isp_ctx->composer_tx_thread.thread = NULL;
+			return -ENOMEM;
+		}
+	}
+	atomic_set(&isp_ctx->composer_txlist.queue_cnt, 0);
+
+	if (!isp_ctx->composer_rx_thread.thread) {
+		init_waitqueue_head(&isp_ctx->composer_rx_thread.wq);
+		isp_ctx->composer_rx_thread.thread =
+			kthread_run(isp_composer_rx_work, (void *)isp_ctx,
+				    "isp_composer_rx");
+		if (IS_ERR(isp_ctx->composer_rx_thread.thread)) {
+			dev_err(dev, "unable to start kthread\n");
+			isp_ctx->composer_rx_thread.thread = NULL;
+			return -ENOMEM;
+		}
+	}
+
+	atomic_set(&isp_ctx->composer_evts_start, 0);
+	atomic_set(&isp_ctx->composer_evts_end, 0);
+	spin_lock_init(&isp_ctx->composer_evts_lock);
+
+	atomic_set(&isp_ctx->ipi_occupied, 0);
+	atomic_set(&isp_ctx->composing_frame, 0);
+	atomic_set(&isp_ctx->cmd_queued, 0);
+
+	return 0;
+}
+
+void isp_composer_enqueue(struct mtk_isp_p1_ctx *isp_ctx,
+			  void *data,
+			  enum mtk_isp_scp_ipi_type type)
+{
+	struct mtk_isp_queue_work *isp_composer_work;
+	struct isp_p1_device *p1_dev = p1_ctx_to_dev(isp_ctx);
+	struct device *dev = &p1_dev->pdev->dev;
+
+	isp_composer_work = kzalloc(sizeof(*isp_composer_work), GFP_KERNEL);
+	isp_composer_work->type = type;
+	switch (type) {
+	case SCP_ISP_CMD:
+		memcpy(&isp_composer_work->cmd, data,
+		       sizeof(isp_composer_work->cmd));
+
+		spin_lock(&isp_ctx->composer_txlist.lock);
+		list_add_tail(&isp_composer_work->list_entry,
+			      &isp_ctx->composer_txlist.queue);
+		atomic_inc(&isp_ctx->composer_txlist.queue_cnt);
+		spin_unlock(&isp_ctx->composer_txlist.lock);
+
+		dev_dbg(dev, "Enq ipi cmd id:%d\n",
+			isp_composer_work->cmd.cmd_id);
+		atomic_inc(&isp_ctx->cmd_queued);
+		wake_up_interruptible(&isp_ctx->composer_tx_thread.wq);
+		break;
+	case SCP_ISP_FRAME:
+		memcpy(&isp_composer_work->frameparams, data,
+		       sizeof(isp_composer_work->frameparams));
+
+		spin_lock(&isp_ctx->composer_txlist.lock);
+		list_add_tail(&isp_composer_work->list_entry,
+			      &isp_ctx->composer_txlist.queue);
+		atomic_inc(&isp_ctx->composer_txlist.queue_cnt);
+		spin_unlock(&isp_ctx->composer_txlist.lock);
+
+		dev_dbg(dev, "Enq ipi frame_num:%d\n",
+			isp_composer_work->frameparams.frame_seq_no);
+		wake_up_interruptible(&isp_ctx->composer_tx_thread.wq);
+		break;
+	default:
+		break;
+	}
+}
+
+int isp_composer_hw_init(struct mtk_isp_p1_ctx *isp_ctx)
+{
+	struct img_buffer frameparam;
+	struct mtk_isp_scp_p1_cmd composer_tx_cmd;
+	int ret;
+
+	ret = isp_composer_dma_sg_init(isp_ctx);
+	if (ret)
+		return ret;
+
+	frameparam.scp_addr = isp_ctx->scp_mem_pa;
+	frameparam.iova = isp_ctx->scp_mem_iova;
+
+	composer_tx_cmd.cmd_id = ISP_CMD_INIT;
+	composer_tx_cmd.frameparam.hw_module = isp_ctx->isp_hw_module;
+	memcpy(&composer_tx_cmd.frameparam.cq_addr, &frameparam,
+	       sizeof(struct img_buffer));
+	isp_composer_enqueue(isp_ctx, &composer_tx_cmd, SCP_ISP_CMD);
+
+	return 0;
+}
+
+void isp_composer_meta_config(struct mtk_isp_p1_ctx *isp_ctx,
+			      unsigned int dma)
+{
+	struct mtk_isp_scp_p1_cmd composer_tx_cmd;
+
+	memset(&composer_tx_cmd, 0, sizeof(composer_tx_cmd));
+	composer_tx_cmd.cmd_id = ISP_CMD_CONFIG_META;
+	memcpy(&composer_tx_cmd.cfg_meta_out_param, &dma, sizeof(dma));
+	isp_composer_enqueue(isp_ctx, &composer_tx_cmd, SCP_ISP_CMD);
+}
+
+void isp_composer_hw_config(struct mtk_isp_p1_ctx *isp_ctx,
+			    struct p1_config_param *config_param)
+{
+	struct mtk_isp_scp_p1_cmd composer_tx_cmd;
+
+	memset(&composer_tx_cmd, 0, sizeof(composer_tx_cmd));
+	composer_tx_cmd.cmd_id = ISP_CMD_CONFIG;
+	memcpy(&composer_tx_cmd.frameparam,
+	       config_param,
+	       sizeof(*config_param));
+	isp_composer_enqueue(isp_ctx, &composer_tx_cmd, SCP_ISP_CMD);
+}
+
+void isp_composer_stream(struct mtk_isp_p1_ctx *isp_ctx, int on)
+{
+	struct mtk_isp_scp_p1_cmd composer_tx_cmd;
+
+	memset(&composer_tx_cmd, 0, sizeof(composer_tx_cmd));
+	composer_tx_cmd.cmd_id = ISP_CMD_STREAM;
+	memcpy(&composer_tx_cmd.is_stream_on, &on, sizeof(on));
+	isp_composer_enqueue(isp_ctx, &composer_tx_cmd, SCP_ISP_CMD);
+}
+
+void isp_composer_hw_deinit(struct mtk_isp_p1_ctx *isp_ctx,
+			    void (*donecb)(void *data))
+{
+	struct mtk_isp_scp_p1_cmd composer_tx_cmd;
+
+	memset(&composer_tx_cmd, 0, sizeof(composer_tx_cmd));
+	composer_tx_cmd.cmd_id = ISP_CMD_DEINIT;
+	isp_ctx->composer_deinit_donecb = donecb;
+	isp_composer_enqueue(isp_ctx, &composer_tx_cmd, SCP_ISP_CMD);
+}
diff --git a/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-scp.h b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-scp.h
new file mode 100644
index 000000000000..54025dfdb4e2
--- /dev/null
+++ b/drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-scp.h
@@ -0,0 +1,207 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Seraph Huang <seraph.huang@mediatek.com>
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
+#ifndef _MTK_ISP_SCP_H
+#define _MTK_ISP_SCP_H
+
+#include <linux/platform_data/mtk_scp.h>
+#include <linux/remoteproc.h>
+#include <linux/types.h>
+
+#define MAX_IMG_DMA_PORT	2
+#define MAX_META_DMA_NODES	4
+
+/*
+ * struct img_size - image size information.
+ *
+ * @w: image width, the unit is pixel
+ * @h: image height, the unit is pixel
+ * @xsize: bytes per line based on width.
+ * @stride: bytes per line when changing line.
+ *          Normally, calculate new STRIDE based on
+ *          xsize + HW constrain(page or align).
+ *
+ */
+struct img_size {
+	__u32 w;
+	__u32 h;
+	__u32 xsize;
+	__u32 stride;
+} __packed;
+
+/*
+ * struct img_buffer - buffer address information.
+ *
+ * @iova: DMA address for external devices.
+ * @scp_addr: SCP address for external co-process unit.
+ *
+ */
+struct img_buffer {
+	__u32 iova;
+	__u32 scp_addr;
+} __packed;
+
+struct p1_img_crop {
+	__u32 left;
+	__u32 top;
+	__u32 width;
+	__u32 height;
+} __packed;
+
+struct p1_img_output {
+	struct img_buffer buffer;
+	struct img_size size;
+	struct p1_img_crop crop;
+	__u8 pixel_byte;
+	__u32 img_fmt;
+} __packed;
+
+/*
+ * struct cfg_in_param - image input parameters structure.
+ *                       Normally, it comes from sensor information.
+ *
+ * @continuous: indicate the sensor mode.
+ *              1: continuous
+ *              0: single
+ * @subsample: indicate to enables SOF subsample or not.
+ * @pixel_mode: describe 1/2/4 pixels per clock cycle.
+ * @data_pattern: describe input data pattern.
+ * @raw_pixel_id: bayer sequence.
+ * @tg_fps: the fps rate of TG (time generator).
+ * @img_fmt: the image format of input source.
+ * @p1_img_crop: the crop configuration of input source.
+ *
+ */
+struct cfg_in_param {
+	__u8 continuous;
+	__u8 subsample;
+	__u8 pixel_mode;
+	__u8 data_pattern;
+	__u8 raw_pixel_id;
+	__u16 tg_fps;
+	__u32 img_fmt;
+	struct p1_img_crop crop;
+} __packed;
+
+/*
+ * struct cfg_main_out_param - the image output parameters of main stream.
+ *
+ * @bypass: indicate this device is enabled or disabled or not .
+ * @pure_raw: indicate the image path control.
+ *            1: pure raw
+ *            0: processing raw
+ * @pure_raw_pack: indicate the image is packed or not.
+ *                 1: packed mode
+ *                 0: unpacked mode
+ * @p1_img_output: the output image information.
+ *
+ */
+struct cfg_main_out_param {
+	/* Bypass main out parameters */
+	__u8 bypass;
+	/* Control HW image raw path */
+	__u8 pure_raw;
+	/* Control HW image pack function */
+	__u8 pure_raw_pack;
+	struct p1_img_output output;
+} __packed;
+
+/*
+ * struct cfg_resize_out_param - the image output parameters of
+ *                               packed out stream.
+ *
+ * @bypass: indicate this device is enabled or disabled or not .
+ * @p1_img_output: the output image information.
+ *
+ */
+struct cfg_resize_out_param {
+	/* Bypass resize parameters */
+	__u8 bypass;
+	struct p1_img_output output;
+} __packed;
+
+/*
+ * struct cfg_meta_out_param - output meta information.
+ *
+ * @enabled_meta_dmas: indicate which meta DMAs are enabled.
+ *
+ */
+struct cfg_meta_out_param {
+	__u32 enabled_meta_dmas;
+} __packed;
+
+struct p1_config_param {
+	/* Sensor/TG info */
+	struct cfg_in_param cfg_in_param;
+	/* IMGO DMA */
+	struct cfg_main_out_param cfg_main_param;
+	/* RRZO DMA */
+	struct cfg_resize_out_param cfg_resize_param;
+	/* 3A DMAs and other. */
+	struct cfg_meta_out_param cfg_meta_param;
+} __packed;
+
+struct p1_frame_param {
+	/* frame sequence number */
+	__u32 frame_seq_no;
+	/* SOF index */
+	__u32 sof_idx;
+	/* The memory address of tuning buffer from user space */
+	struct img_buffer tuning_addr;
+	struct p1_img_output img_dma_buffers[MAX_IMG_DMA_PORT];
+	struct img_buffer meta_addrs[MAX_META_DMA_NODES];
+} __packed;
+
+struct P1_meta_frame {
+	__u32 enabled_dma;
+	__u32 vb_index;
+	struct img_buffer meta_addr;
+} __packed;
+
+struct isp_init_info {
+	__u8 hw_module;
+	struct img_buffer cq_addr;
+} __packed;
+
+struct isp_ack_info {
+	__u8 cmd_id;
+	__u32 frame_seq_no;
+} __packed;
+
+enum mtk_isp_scp_CMD {
+	ISP_CMD_INIT,
+	ISP_CMD_CONFIG,
+	ISP_CMD_STREAM,
+	ISP_CMD_DEINIT,
+	ISP_CMD_ACK,
+	ISP_CMD_FRAME_ACK,
+	ISP_CMD_CONFIG_META,
+	ISP_CMD_ENQUEUE_META,
+	ISP_CMD_RESERVED,
+};
+
+struct mtk_isp_scp_p1_cmd {
+	__u8 cmd_id;
+	union {
+		struct isp_init_info frameparam;
+		struct p1_config_param config_param;
+		struct cfg_meta_out_param cfg_meta_out_param;
+		struct P1_meta_frame meta_frame;
+		__u8 is_stream_on;
+		struct isp_ack_info ack_info;
+	};
+} __packed;
+
+#endif /* _MTK_ISP_SCP_H */
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
