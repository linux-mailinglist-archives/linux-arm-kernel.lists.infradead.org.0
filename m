Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DEA1C2FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 08:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtQdYpRWBIapm47CBEQPke45vE3SfdXaMFpxPSW6Wls=; b=f4Nl5bOj38NfcH
	ze4jIrn2asrQcQGHePgWUn5xo9XCM8DXDduB4JcjfEqd8RyIetWQukC3y1RA5EYOPUMAC66w5TaRO
	AT2boQCS8b3mTWrS27CYWP9M5yL/aE8ol79QMuk3dZFL9UCOl0sjHpGDU6PAGl2vQsq9Oh/lVnIzL
	e43Zf0U5xlUzlXuHsAvHlUFisktqznHOZ8zO8uBRjVKinNESMgYKQbAokLs9GCdp4lL/7Im0wKy0P
	oFJUBvqTjy7vwQXiu7VzUD2dlUq77PcBsvRWnUb0oOTOtPPL9tuzxuUT/KiOkJ9bfP8sXuneIWyEK
	AHWHpoo/DDxAIfFwq+EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQjQ-0002b5-Qs; Tue, 14 May 2019 06:16:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQhZ-0007am-GU; Tue, 14 May 2019 06:14:23 +0000
X-UUID: 073082d59c7743b18b4de0bc1ed788d3-20190513
X-UUID: 073082d59c7743b18b4de0bc1ed788d3-20190513
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1827052881; Mon, 13 May 2019 22:14:07 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 23:14:06 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 14:13:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 14 May 2019 14:13:55 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v3 12/13] [media] mtk-mipicsi: add debug message for mipicsi
 driver
Date: Tue, 14 May 2019 14:13:49 +0800
Message-ID: <1557814430-9675-13-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
References: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_231414_162891_2B68F4E7 
X-CRM114-Status: GOOD (  19.39  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Stu Hsieh <stu.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add debug message for mipicsi driver.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 58 ++++++++++++++++++-
 1 file changed, 56 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index 1b885de6d990..c1cbeb3c60e1 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -28,6 +28,7 @@
 #include <linux/kernel.h>
 #include <linux/mm.h>
 #include <linux/moduleparam.h>
+#include <linux/time64.h>
 #include <linux/device.h>
 #include <linux/platform_device.h>
 #include <linux/clk.h>
@@ -114,6 +115,15 @@
 
 #define SerDes_support 1
 
+static int mtk_mipicsi_dbg_level;
+#define mtk_mipicsi_dbg(level, fmt, args...)				 \
+	do {								 \
+		if (mtk_mipicsi_dbg_level >= level)			\
+			pr_info("[MTK_MIPICSI%d] L%d %s %d: " fmt "\n", \
+				mipicsi->id, level,  __func__, __LINE__, \
+				##args);	\
+	} while (0)
+
 /* buffer for one video frame */
 struct mtk_mipicsi_buf {
 	struct list_head queue;
@@ -145,6 +155,9 @@ struct mtk_mipicsi_dev {
 	unsigned int link;
 	u8 link_reg_val;
 	unsigned long enqueue_cnt;
+	unsigned long dequeue_cnt;
+	struct timespec64 fps_time_cur;
+	struct timespec64 fps_time_pre;
 	char drv_name[16];
 	u32 id;
 	int clk_num;
@@ -390,6 +403,8 @@ static int mtk_mipicsi_add_device(struct soc_camera_device *icd)
 
 	mipicsi->width = width;
 	mipicsi->height = height;
+	mtk_mipicsi_dbg(1, "sub device width/height/bytesperline %d/%d/%d",
+		width, height, mipicsi->bytesperline);
 
 	/*
 	 * If power domain was closed before, it will be open.
@@ -527,6 +542,9 @@ static int mtk_mipicsi_set_fmt(struct soc_camera_device *icd,
 	if (pix->pixelformat == V4L2_PIX_FMT_YUYV)
 		pix->sizeimage = pix->width * pix->height * 2U;
 
+	mtk_mipicsi_dbg(0, "width/height/sizeimage %u/%u/%u",
+		pix->width, pix->height, pix->sizeimage);
+
 	if (mf->code != xlate->code)
 		return -EINVAL;
 
@@ -647,6 +665,9 @@ static int mtk_mipicsi_vb2_prepare(struct vb2_buffer *vb)
 		buf->vb_dma_addr_phy =
 			vb2_dma_contig_plane_dma_addr(vb, 0);
 		va = vb2_plane_vaddr(vb, 0);
+		mtk_mipicsi_dbg(1, "va=%p vb_dma_addr_phy=%lx size=%d",
+			va, (unsigned long)buf->vb_dma_addr_phy,
+			vb->planes[0].bytesused);
 		buf->vb = vb;
 	}
 
@@ -692,6 +713,8 @@ static void mtk_mipicsi_vb2_queue(struct vb2_buffer *vb)
 		}
 
 	++(mipicsi->enqueue_cnt);
+	mtk_mipicsi_dbg(2, "enqueue NO.%d buffer(%p). Total %lu buffer",
+		vb->index, vb, mipicsi->enqueue_cnt);
 }
 
 static int mtk_mipicsi_vb2_start_streaming(struct vb2_queue *vq,
@@ -770,6 +793,7 @@ static void mtk_mipicsi_vb2_stop_streaming(struct vb2_queue *vq)
 	INIT_LIST_HEAD(&(mipicsi->fb_list));
 
 	mipicsi->enqueue_cnt = 0UL;
+	mipicsi->dequeue_cnt = 0UL;
 }
 
 static struct vb2_ops mtk_vb2_ops = {
@@ -1064,8 +1088,10 @@ static int mtk_mipicsi_pm_resume(struct device *dev)
 
 	if (mipicsi->larb_pdev != NULL) {
 		ret = mtk_smi_larb_get(mipicsi->larb_pdev);
-		if (ret != 0)
+		if (ret != 0) {
+			mtk_mipicsi_dbg(0, "failed to get larb, err %d", ret);
 			return ret;
+		}
 	}
 
 	mtk_mipicsi_ana_clk_enable(mipicsi->ana, true);
@@ -1115,6 +1141,7 @@ static void mtk_mipicsi_irq_buf_process(struct mtk_mipicsi_dev *mipicsi)
 	unsigned int next = 0U;
 	u64 offset = 0ULL;
 	u8 link_index = 0U;
+	long time_interval;
 	void __iomem *base = NULL;
 	dma_addr_t pa;
 
@@ -1124,8 +1151,10 @@ static void mtk_mipicsi_irq_buf_process(struct mtk_mipicsi_dev *mipicsi)
 	i = 0;
 
 	/* only one buffer left */
-	if ((&(mipicsi->fb_list))->next->next == &(mipicsi->fb_list))
+	if ((&(mipicsi->fb_list))->next->next == &(mipicsi->fb_list)) {
+		mtk_mipicsi_dbg(1, "only 1 buffer left, drop frame");
 		return;
+	}
 
 	/*for each fb_lst 2 times to get the top 2 buffer.*/
 	list_for_each_entry_safe(new_cam_buf, tmp,
@@ -1155,8 +1184,30 @@ static void mtk_mipicsi_irq_buf_process(struct mtk_mipicsi_dev *mipicsi)
 	 */
 	vb2_buffer_done(mipicsi->cam_buf[index].vb,
 		VB2_BUF_STATE_DONE);
+	++(mipicsi->dequeue_cnt);
 
 	list_del_init(&(mipicsi->cam_buf[index].queue));
+
+	if (mtk_mipicsi_dbg_level >= 2) {
+		ktime_get_real_ts64(&(mipicsi->fps_time_cur));
+		if (mipicsi->dequeue_cnt == 1) {
+			mipicsi->fps_time_pre.tv_sec =
+				mipicsi->fps_time_cur.tv_sec;
+			mipicsi->fps_time_pre.tv_nsec =
+				mipicsi->fps_time_cur.tv_nsec;
+		} else {
+			time_interval = (mipicsi->fps_time_cur.tv_sec
+				- mipicsi->fps_time_pre.tv_sec) * 1000000000
+				+ (mipicsi->fps_time_cur.tv_nsec
+				- mipicsi->fps_time_pre.tv_nsec);
+			mtk_mipicsi_dbg(0, "time interval is %ld\n",
+				time_interval);
+			mipicsi->fps_time_pre.tv_sec =
+				mipicsi->fps_time_cur.tv_sec;
+			mipicsi->fps_time_pre.tv_nsec =
+				mipicsi->fps_time_cur.tv_nsec;
+		}
+	}
 }
 
 static irqreturn_t mtk_mipicsi_isr(int irq, void *data)
@@ -1171,6 +1222,7 @@ static irqreturn_t mtk_mipicsi_isr(int irq, void *data)
 
 	isr_ch = get_irq_channel(mipicsi);
 	if (isr_ch < 0) {
+		mtk_mipicsi_dbg(0, "no interrupt occur");
 		spin_unlock_irqrestore(&mipicsi->lock, flags);
 		return IRQ_HANDLED;
 	}
@@ -1461,6 +1513,7 @@ static int mtk_mipicsi_probe(struct platform_device *pdev)
 	spin_lock_init(&mipicsi->queue_lock);
 	spin_lock_init(&mipicsi->lock);
 	mipicsi->enqueue_cnt = 0UL;
+	mipicsi->dequeue_cnt = 0UL;
 
 	ret = vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32U));
 	if (ret != 0) {
@@ -1504,5 +1557,6 @@ static struct platform_driver mtk_mipicsi_driver = {
 };
 
 module_platform_driver(mtk_mipicsi_driver);
+module_param(mtk_mipicsi_dbg_level, int, 0644);
 MODULE_DESCRIPTION("MediaTek SoC Camera Host driver");
 MODULE_LICENSE("GPL v2");
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
