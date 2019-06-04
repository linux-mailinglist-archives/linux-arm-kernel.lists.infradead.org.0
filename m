Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7141343DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEREOfGACsRhCNOUBTI78xJ/7dLot8qZta0pdQsU43k=; b=Dmoho29I/FRaZE
	NmwWUTs3mKAaHB6Nl5rmgEtnLnwLOGZPmIX3MSWuUDSPj3crEQ6O687PrvncWg13FfuKLjO1WC+VE
	s0vLBPUwDVGYjXVhIU4LtclHtgUdpub2iYuq0t3udZs8/f/euaD7Vhc/vgXhPC5SpHtxY3c0WKhg0
	EvhNQrhvh8gDUIMKtfzVi7q5dn3Oe1TMFxeBilm95ya3uRQGk3q6N9PumnDgGyFUPsex/iAvhDf93
	VbAnOgBKnDgcwGR0+jonISAEeLPhWaC9zfxusc2nXgkfCWpQ8DnRR5mwUVOA4gog0X4+w/Nvlssv/
	qDsfHqyuTkc07rIkIWfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6R4-00079t-Ev; Tue, 04 Jun 2019 10:12:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6QK-0006FW-CD; Tue, 04 Jun 2019 10:12:13 +0000
X-UUID: 0cc44a3cc3c441af8bd548319fd9d72d-20190604
X-UUID: 0cc44a3cc3c441af8bd548319fd9d72d-20190604
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 291116945; Tue, 04 Jun 2019 02:12:04 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:03 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:12:02 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:12:01 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 12/14] [media] mtk-mipicsi: add debug message for mipicsi
 driver
Date: Tue, 4 Jun 2019 18:11:53 +0800
Message-ID: <1559643115-15124-13-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_031208_666233_C66B44C8 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 40 ++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index aaaea5c6f280..b291c95bbf0e 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -25,6 +25,7 @@
 #include <linux/kernel.h>
 #include <linux/mm.h>
 #include <linux/moduleparam.h>
+#include <linux/time64.h>
 #include <linux/device.h>
 #include <linux/platform_device.h>
 #include <linux/clk.h>
@@ -109,6 +110,15 @@
 
 #define notifier_to_mipicsi(n) container_of(n, struct mtk_mipicsi_dev, \
 					    notifier)
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
@@ -168,6 +178,8 @@ struct mtk_mipicsi_dev {
 	u8 link_reg_val;
 	char drv_name[16];
 	u32 id;
+	struct timespec64 fps_time_cur;
+	struct timespec64 fps_time_pre;
 
 	spinlock_t		irqlock;
 	spinlock_t		queue_lock;
@@ -535,6 +547,11 @@ static int mtk_mipicsi_vb2_prepare(struct vb2_buffer *vb)
 		buf->prepare_flag = 1;
 		buf->vb_dma_addr_phy =
 			vb2_dma_contig_plane_dma_addr(vb, 0);
+
+		mtk_mipicsi_dbg(1, "vb_dma_addr_phy=%lx size=%d",
+			(unsigned long)buf->vb_dma_addr_phy,
+			vb->planes[0].bytesused);
+
 		buf->vb = vb;
 	}
 
@@ -581,6 +598,8 @@ static void mtk_mipicsi_vb2_queue(struct vb2_buffer *vb)
 		mtk_mipicsi_write_camsv(mipicsi, vb->index, mipicsi->camsv_num);
 
 	spin_unlock(&mipicsi->irqlock);
+
+	mtk_mipicsi_dbg(2, "enqueue NO.%d buffer(%p).", vb->index, vb);
 }
 
 static void mtk_mipicsi_cmos_vf_enable(struct mtk_mipicsi_dev *mipicsi,
@@ -888,6 +907,7 @@ static void mtk_mipicsi_irq_buf_process(struct mtk_mipicsi_dev *mipicsi)
 	struct mtk_mipicsi_buf *tmp = NULL;
 	unsigned int index = 0;
 	unsigned int next = 0;
+	long time_interval;
 
 	for (i = 0; i < mipicsi->camsv_num; ++i)
 		ch[i].irq_status = false;
@@ -895,8 +915,10 @@ static void mtk_mipicsi_irq_buf_process(struct mtk_mipicsi_dev *mipicsi)
 	i = 0;
 
 	/* only one buffer left */
-	if ((&(mipicsi->fb_list))->next->next == &(mipicsi->fb_list))
+	if ((&(mipicsi->fb_list))->next->next == &(mipicsi->fb_list)) {
+		mtk_mipicsi_dbg(1, "only 1 buffer left, drop frame");
 		return;
+	}
 
 	/*for each fb_lst 2 times to get the top 2 buffer.*/
 	list_for_each_entry_safe(new_cam_buf, tmp,
@@ -920,6 +942,21 @@ static void mtk_mipicsi_irq_buf_process(struct mtk_mipicsi_dev *mipicsi)
 		VB2_BUF_STATE_DONE);
 
 	list_del_init(&(mipicsi->cam_buf[index].queue));
+
+	if (mtk_mipicsi_dbg_level >= 2) {
+		ktime_get_real_ts64(&(mipicsi->fps_time_cur));
+
+		time_interval = (mipicsi->fps_time_cur.tv_sec
+			- mipicsi->fps_time_pre.tv_sec) * 1000000000
+			+ (mipicsi->fps_time_cur.tv_nsec
+			- mipicsi->fps_time_pre.tv_nsec);
+		mtk_mipicsi_dbg(0, "time interval is %ld\n",
+			time_interval);
+		mipicsi->fps_time_pre.tv_sec =
+			mipicsi->fps_time_cur.tv_sec;
+		mipicsi->fps_time_pre.tv_nsec =
+			mipicsi->fps_time_cur.tv_nsec;
+	}
 }
 
 static irqreturn_t mtk_mipicsi_isr(int irq, void *data)
@@ -1575,5 +1612,6 @@ static struct platform_driver mtk_mipicsi_driver = {
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
