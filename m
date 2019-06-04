Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F4734417
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExBLxfiCigX2sW+AGqOt57HRT4Q05uo1B7DJSd564tc=; b=m41XILXA4Dp4ab
	q9yMEuzMajdZx8R2KVM7SMCitlQr09S6W4QAqvL/MRdjH0M2u8Hou/xJuS2PKXoGryY/TROLSrBta
	l6ZOv2PtQ0L5VxHPDc+KXAbWah0JOOJAm91CPYIrY33a168kDr9H19U3dZfY4KsygjfMhtssw87b7
	RLiRtbl6i9CQjPdyKkHISUtp+2mVO9hZ2MQ1ked4tGKIXwQpBuVTg7Bw3xXU2eVK2BmkOgS9kvY8n
	DcfZpmIMTQt0u74Ea5cXDRVvGc0C6D1Uw4XwMn39zlH6hfqA2/72+eXdF8JqXNcHPh+qH46PjnZWi
	SYDVb6Q3JRkzebiVrTFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6TZ-0003FW-Q5; Tue, 04 Jun 2019 10:15:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6Sg-0000W9-7D
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:15:10 +0000
X-UUID: 242bbf55b7b44806813dbfdefb8f6fe8-20190604
X-UUID: 242bbf55b7b44806813dbfdefb8f6fe8-20190604
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 604291619; Tue, 04 Jun 2019 02:12:05 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:04 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:12:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:12:01 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 09/14] [media] mtk-mipicsi: add ISR for writing the data to
 buffer
Date: Tue, 4 Jun 2019 18:11:50 +0800
Message-ID: <1559643115-15124-10-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_031434_729677_334D3850 
X-CRM114-Status: GOOD (  20.14  )
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

This patch add ISR for writing the data to buffer

When mipicsi HW complete to write the data in buffer,
the interrupt woulb be trigger.
So, the ISR need to clear interrupt status for next interrupt.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 122 +++++++++++++++++-
 1 file changed, 120 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index 8bb40656bcb1..dc5c5c888914 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -34,6 +34,7 @@
 #include <linux/iommu.h>
 #include <linux/of_graph.h>
 #include <linux/of.h>
+#include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <media/v4l2-common.h>
 #include <media/v4l2-ctrls.h>
@@ -88,6 +89,8 @@
 #define CAMSV_MODULE_EN					0x10
 #define CAMSV_FMT_SEL					0x14
 #define CAMSV_INT_EN					0x18
+#define CAMSV_INT_STATUS				0x1C
+#define PASS1_DONE_STATUS				10
 #define CAMSV_SW_CTL					0x20
 #define CAMSV_CLK_EN					0x30
 
@@ -129,6 +132,8 @@ struct mtk_mipicsi_channel {
 	void __iomem            *seninf_mux;
 	void __iomem            *camsv;
 	struct clk		*clk;
+	unsigned int		irq;
+	bool			irq_status;
 };
 
 struct mtk_mipicsi_dev {
@@ -547,26 +552,31 @@ static void mtk_mipicsi_cmos_vf_enable(struct mtk_mipicsi_dev *mipicsi,
 				       unsigned int max_camsv_num,
 				       bool enable)
 {
+	struct mtk_mipicsi_channel *ch = mipicsi->channel;
 	void __iomem *base = NULL;
 	u32 mask = enable ? (u32)1 : ~(u32)1;
 	int i;
 
 	for (i = 0; i < max_camsv_num; i++)
 		if (((mipicsi->link_reg_val >> i) & 0x01U) == 0x01U) {
+			base = ch[i].camsv;
 			if (enable) {
+				enable_irq(ch[i].irq);
+
 				/*enable cmos_en and vf_en*/
-				base = mipicsi->camsv[i];
 				writel(readl(base + CAMSV_TG_SEN_MODE) | mask,
 				       base + CAMSV_TG_SEN_MODE);
 				writel(readl(base + CAMSV_TG_VF_CON) | mask,
 				       base + CAMSV_TG_VF_CON);
 			} else {
 				/*disable cmos_en and vf_en*/
-				base = mipicsi->camsv[i];
 				writel(readl(base + CAMSV_TG_SEN_MODE) & mask,
 					base + CAMSV_TG_SEN_MODE);
 				writel(readl(base + CAMSV_TG_VF_CON) & mask,
 					base + CAMSV_TG_VF_CON);
+
+				disable_irq(ch[i].irq);
+				ch[i].irq_status = false;
 			}
 		}
 }
@@ -820,9 +830,100 @@ static const struct v4l2_ioctl_ops mtk_mipicsi_ioctl_ops = {
 	.vidioc_unsubscribe_event       = v4l2_event_unsubscribe,
 };
 
+static int get_irq_channel(struct mtk_mipicsi_dev *mipicsi)
+{
+	struct mtk_mipicsi_channel *ch = mipicsi->channel;
+	int i;
+	u32 int_reg_val;
+
+	for (i = 0; i < mipicsi->camsv_num; i++) {
+		int_reg_val = readl(ch[i].camsv + CAMSV_INT_STATUS);
+		if ((int_reg_val & (1 << PASS1_DONE_STATUS)) != 0)
+			return i;
+	}
+
+	return -1;
+}
+
+static void mtk_mipicsi_irq_buf_process(struct mtk_mipicsi_dev *mipicsi)
+{
+	struct mtk_mipicsi_channel *ch = mipicsi->channel;
+	unsigned int i = 0;
+	struct mtk_mipicsi_buf *new_cam_buf = NULL;
+	struct mtk_mipicsi_buf *tmp = NULL;
+	unsigned int index = 0;
+	unsigned int next = 0;
+
+	for (i = 0; i < mipicsi->camsv_num; ++i)
+		ch[i].irq_status = false;
+
+	i = 0;
+
+	/* only one buffer left */
+	if ((&(mipicsi->fb_list))->next->next == &(mipicsi->fb_list))
+		return;
+
+	/*for each fb_lst 2 times to get the top 2 buffer.*/
+	list_for_each_entry_safe(new_cam_buf, tmp,
+		&(mipicsi->fb_list), queue) {
+		if (i == 0) {
+			index = new_cam_buf->vb->index;
+		} else {
+			next = new_cam_buf->vb->index;
+			break;
+		}
+		++i;
+	}
+
+	/*
+	 * fb_list has one more buffer. Free the first buffer to user
+	 * and fill the second buffer to HW.
+	 */
+	vb2_buffer_done(mipicsi->cam_buf[index].vb,
+		VB2_BUF_STATE_DONE);
+
+	list_del_init(&(mipicsi->cam_buf[index].queue));
+}
+
+static irqreturn_t mtk_mipicsi_isr(int irq, void *data)
+{
+	struct mtk_mipicsi_dev *mipicsi = data;
+	struct device *dev = &mipicsi->pdev->dev;
+	struct mtk_mipicsi_channel *ch = mipicsi->channel;
+	unsigned long flags = 0;
+	int isr_ch;
+	u8 irq_cnt = 0, i = 0;
+
+	spin_lock_irqsave(&mipicsi->irqlock, flags);
+
+	isr_ch = get_irq_channel(mipicsi);
+	if (isr_ch < 0) {
+		dev_info(dev, "no interrupt occur");
+		spin_unlock_irqrestore(&mipicsi->irqlock, flags);
+		return IRQ_HANDLED;
+	}
+
+	/* clear interrupt */
+	writel(1UL << PASS1_DONE_STATUS,
+		ch[isr_ch].camsv + CAMSV_INT_STATUS);
+	ch[isr_ch].irq_status = true;
+	for (i = 0U; i < mipicsi->camsv_num; ++i) {
+		if (ch[i].irq_status)
+			++irq_cnt;
+	}
+
+	if (irq_cnt == mipicsi->link)
+		mtk_mipicsi_irq_buf_process(mipicsi);
+	spin_unlock_irqrestore(&mipicsi->irqlock, flags);
+
+	return IRQ_HANDLED;
+}
+
 static int seninf_mux_camsv_node_parse(struct mtk_mipicsi_dev *mipicsi,
 		int index)
 {
+	int ret;
+	int irq;
 	struct clk *clk = NULL;
 	struct device *dev = NULL;
 	struct resource *res = NULL;
@@ -854,6 +955,23 @@ static int seninf_mux_camsv_node_parse(struct mtk_mipicsi_dev *mipicsi,
 	}
 	ch[index].clk = clk;
 
+	irq = of_irq_get(np, 0);
+	if (irq <= 0) {
+		dev_err(dev, "get irq fail in %s node\n", np->full_name);
+		return -ENODEV;
+	}
+	ch[index].irq = irq;
+
+	ret = devm_request_irq(dev, irq,
+			mtk_mipicsi_isr, 0,
+			mipicsi->drv_name, mipicsi);
+	if (ret != 0) {
+		dev_err(dev, "%s irq register failed\n", np->full_name);
+		return -ENODEV;
+	}
+	disable_irq(ch[index].irq);
+	ch[index].irq_status = false;
+
 	res = platform_get_resource(camdma_pdev, IORESOURCE_MEM, 0);
 	if (res == NULL) {
 		dev_err(dev, "get seninf_mux memory failed in %s node\n",
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
