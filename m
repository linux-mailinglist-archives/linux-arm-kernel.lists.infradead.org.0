Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8B41C321
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 08:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tuu6gXqFQjvHIXdAO+DtfL29U3/o086GVtF8BOSXufw=; b=BmTU5FoZxyaEOa
	bDMUZtbEyLxHLAmGgriBhfc6THEl/z1p6MpLg5zheQc5WcaN0kdm63M2aJtyC4nIUaEcx7/h1/UiZ
	8wzJH33B/JKNcmtTfUu7LGJa2aeNa100cteXHLpuNspQhRcWwe67jikD+S6AidQO3JaEwnZ6/oRjQ
	ySxJLnK4VGkFNw0+1Pby/Ma38oAueXKjBCFPTcuzHoZcHfw6ZElf7oLHfEFznSPr8mK+kKwxYna2x
	cTC7VS4An6UTZNVNOjfwU9YApEJq19YoAxArBT5OxeZ9EedzgGQ3an7ZTz9YuqETtispvNc/+XXQt
	M1FVCQO2Q9XWeUDRewdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQk9-0003XR-Fr; Tue, 14 May 2019 06:16:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQhe-0007ZG-I2; Tue, 14 May 2019 06:14:26 +0000
X-UUID: e27bda046f1346c1a05406c1049520c8-20190513
X-UUID: e27bda046f1346c1a05406c1049520c8-20190513
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1597950214; Mon, 13 May 2019 22:14:07 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 23:14:05 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 14:13:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 14 May 2019 14:13:55 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v3 10/13] [media] mtk-mipicsi: set the output address in HW reg
Date: Tue, 14 May 2019 14:13:47 +0800
Message-ID: <1557814430-9675-11-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
References: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_231419_147090_7FBD8D33 
X-CRM114-Status: GOOD (  14.05  )
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

This patch set the output address in HW reg when buffer queue and ISR.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index af5655345754..cf46fcd01a19 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -105,6 +105,7 @@
 #define CAMSV_TG_SEN_GRAB_LIN				0x50C
 #define CAMSV_TG_PATH_CFG				0x510
 
+#define IMGO_BASE_ADDR					0x220
 #define IMGO_XSIZE					0x230
 #define IMGO_YSIZE					0x234
 #define IMGO_STRIDE					0x238
@@ -503,12 +504,22 @@ static int mtk_mipicsi_vb2_prepare(struct vb2_buffer *vb)
 	return 0;
 }
 
+static void mtk_mipicsi_fill_buffer(void __iomem *base, dma_addr_t dma_handle)
+{
+	writel(dma_handle, base + IMGO_BASE_ADDR);
+}
+
 static void mtk_mipicsi_vb2_queue(struct vb2_buffer *vb)
 {
 	struct soc_camera_device *icd = soc_camera_from_vb2q(vb->vb2_queue);
 	struct soc_camera_host *ici = to_soc_camera_host(icd->parent);
 	struct mtk_mipicsi_dev *mipicsi = ici->priv;
+	unsigned int i = 0;
+	u64 offset = 0;
+	u8 link_index = 0U;
 	char *va = NULL;
+	u32 bytesperline = mipicsi->bytesperline;
+	u32 height = mipicsi->height;
 
 	spin_lock(&mipicsi->queue_lock);
 	list_add_tail(&(mipicsi->cam_buf[vb->index].queue),
@@ -517,6 +528,20 @@ static void mtk_mipicsi_vb2_queue(struct vb2_buffer *vb)
 
 	va = vb2_plane_vaddr(vb, 0);
 
+	for (i = 0U; (mipicsi->enqueue_cnt == 0UL) && (i < MTK_CAMDMA_MAX_NUM);
+		++i)
+		if (((mipicsi->link_reg_val >> i) & 0x01U) == 0x01U) {
+			offset = (u64)link_index * bytesperline * height;
+
+			spin_lock(&mipicsi->lock);
+			mtk_mipicsi_fill_buffer(mipicsi->camsv[i],
+				mipicsi->cam_buf[vb->index].vb_dma_addr_phy
+					+ offset);
+			spin_unlock(&mipicsi->lock);
+
+			link_index++;
+		}
+
 	++(mipicsi->enqueue_cnt);
 }
 
@@ -938,6 +963,10 @@ static void mtk_mipicsi_irq_buf_process(struct mtk_mipicsi_dev *mipicsi)
 	struct mtk_mipicsi_buf *tmp = NULL;
 	unsigned int index = 0U;
 	unsigned int next = 0U;
+	u64 offset = 0ULL;
+	u8 link_index = 0U;
+	void __iomem *base = NULL;
+	dma_addr_t pa;
 
 	for (i = 0U; i < MTK_CAMDMA_MAX_NUM; ++i)
 		mipicsi->irq_status[i] = false;
@@ -960,6 +989,16 @@ static void mtk_mipicsi_irq_buf_process(struct mtk_mipicsi_dev *mipicsi)
 		++i;
 	}
 
+	for (i = 0U; i < MTK_CAMDMA_MAX_NUM; ++i) {
+		if (((mipicsi->link_reg_val >> i) & 0x01U) == 0x01U) {
+			offset = (u64)link_index *
+				mipicsi->bytesperline * mipicsi->height;
+			base = mipicsi->camsv[i];
+			pa = mipicsi->cam_buf[next].vb_dma_addr_phy;
+			mtk_mipicsi_fill_buffer(base, pa + offset);
+			link_index++;
+		}
+	}
 	/*
 	 * fb_list has one more buffer. Free the first buffer to user
 	 * and fill the second buffer to HW.
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
