Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC03343DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqfXAKkGO28qzFN8Q+z2V8EDhmV+iqisaafyMq7DJ48=; b=aDr7D4QWZ6GLvE
	I//JofQlcNdxKaXYjiE+YP3o0MDvVfyXQhi1I1ctx3ZAz8angv77bQigqw4uWUPrr9eKwqs0qjNe2
	fxEvOb6GYzcZY5qCBMuJ3iCOI2bK0jRsRjRZ8dBjfVqwpEo3UlvBOwLI6s1muXXCOlRQdISZ3LFfU
	TYSVr43zUH1oegZpKd9+QQNofpRpmTJIYxdcWj9lPY2Zr7ZENeSMBBekAWqAimldY2qSr/7S4xYlV
	LU0xlwtCIXdYKBe1N1zV/3JCP67r+Rig/MWCVTEUY7M0BcJhQqiLOsmRU888lEbmulXdDKIpaTuYr
	8Ea0DW54/Gkyd0woOJPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6RA-0007RE-G4; Tue, 04 Jun 2019 10:13:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6QK-0006I2-Ll; Tue, 04 Jun 2019 10:12:14 +0000
X-UUID: 17fdb43d944a467db8e5ac87c6442da9-20190604
X-UUID: 17fdb43d944a467db8e5ac87c6442da9-20190604
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1799936232; Tue, 04 Jun 2019 02:12:04 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:03 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:12:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:12:01 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 10/14] [media] mtk-mipicsi: set the output address in HW reg
Date: Tue, 4 Jun 2019 18:11:51 +0800
Message-ID: <1559643115-15124-11-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_031209_027172_F5DCFE33 
X-CRM114-Status: GOOD (  12.87  )
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

This patch set the output address in HW reg when buffer queue and ISR.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index dc5c5c888914..9e45786a0282 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -100,6 +100,7 @@
 #define CAMSV_TG_SEN_GRAB_LIN				0x50C
 #define CAMSV_TG_PATH_CFG				0x510
 
+#define IMGO_BASE_ADDR					0x220
 #define IMGO_XSIZE					0x230
 #define IMGO_YSIZE					0x234
 #define IMGO_STRIDE					0x238
@@ -538,6 +539,32 @@ static int mtk_mipicsi_vb2_prepare(struct vb2_buffer *vb)
 	return 0;
 }
 
+static void mtk_mipicsi_fill_buffer(void __iomem *base, dma_addr_t dma_handle)
+{
+	writel(dma_handle, base + IMGO_BASE_ADDR);
+}
+
+static void mtk_mipicsi_write_camsv(struct mtk_mipicsi_dev *mipicsi,
+				    unsigned int index,
+				    unsigned int max_camsv_num)
+{
+	struct mtk_mipicsi_channel *ch = mipicsi->channel;
+	unsigned int i = 0;
+	u8 link_index = 0;
+	u32 bytesperline = mipicsi->fmt.fmt.pix.bytesperline;
+	u32 height = mipicsi->fmt.fmt.pix.height;
+	u64 offset = 0;
+
+	for (i = 0; i < max_camsv_num; i++)
+		if (((mipicsi->link_reg_val >> i) & 0x01) == 0x01) {
+			offset = (u64)link_index * bytesperline * height;
+			mtk_mipicsi_fill_buffer(ch[i].camsv,
+				mipicsi->cam_buf[index].vb_dma_addr_phy
+					+ offset);
+			link_index++;
+		}
+}
+
 static void mtk_mipicsi_vb2_queue(struct vb2_buffer *vb)
 {
 	struct mtk_mipicsi_dev *mipicsi = vb2_get_drv_priv(vb->vb2_queue);
@@ -546,6 +573,12 @@ static void mtk_mipicsi_vb2_queue(struct vb2_buffer *vb)
 	list_add_tail(&(mipicsi->cam_buf[vb->index].queue),
 		&(mipicsi->fb_list));
 	spin_unlock(&mipicsi->queue_lock);
+
+	spin_lock(&mipicsi->irqlock);
+	if (!mipicsi->streamon)
+		mtk_mipicsi_write_camsv(mipicsi, vb->index, mipicsi->camsv_num);
+
+	spin_unlock(&mipicsi->irqlock);
 }
 
 static void mtk_mipicsi_cmos_vf_enable(struct mtk_mipicsi_dev *mipicsi,
@@ -875,6 +908,8 @@ static void mtk_mipicsi_irq_buf_process(struct mtk_mipicsi_dev *mipicsi)
 		++i;
 	}
 
+	mtk_mipicsi_write_camsv(mipicsi, next, mipicsi->camsv_num);
+
 	/*
 	 * fb_list has one more buffer. Free the first buffer to user
 	 * and fill the second buffer to HW.
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
