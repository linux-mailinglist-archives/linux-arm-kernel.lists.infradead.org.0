Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135E81CA536
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 09:30:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kz5lFYKk76bH/6kQHGslYt/wdcYOZg+XpPU9hroP9Vw=; b=ME+WNmSsu9brFC
	KLufBw2WjcGJinCRxydSKBL2zxFhJuo71pkgPIfmLaqAaIvtR+hogC7YSowQDZMmiyHmFtlpysrBY
	/lMD/2Y7N9Lk/SPpwnXHLmhvncR8l/6Zh8DU13TEtviY0292Gx2AViSy08oK4WpuvhcG3D1wVWVgr
	YvTdskqPm03IHMr6R84yqBraApLAAMTLRPm6ibKxXOYIdNuYLlzGVCvAb8DkFc4eWfhHhcI9Xgfou
	IUnVdK5IKhjLq28pYfv4t35GpUiibzvsQLIkrXQWR7n78qdB1a+0DVhgOpM8J2gvKJFFVsyhXqjA7
	0eB/79IDikW7VW8sNexg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWxSy-0004cm-My; Fri, 08 May 2020 07:30:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWxSr-0004c7-C5; Fri, 08 May 2020 07:30:35 +0000
X-UUID: 7ded1b8c40844115a7eaf89c1ae12b2b-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=hMzkDjf4CwNkJ6jDAGDRDS68Rl17O69scTmHX/6AYo8=; 
 b=r/AXLo5sCvJ//SfpE+Gj1fMeE00e6lp9DYA/5WxuE8URNvlYBhnDYVdmKOB78OmSVOX+Sw0xTU08tKI9T19cmGzLPt6hp8PJZw4RB1Gz+SxUdtvTZNvwA8SZ3gB0sIxSunFfbNIpBpoWMQwiGdVCAokSJ6FTZnebnIdU1uh7gq4=;
X-UUID: 7ded1b8c40844115a7eaf89c1ae12b2b-20200507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <qiangming.xia@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2077144198; Thu, 07 May 2020 23:30:22 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 00:21:12 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 15:21:12 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 8 May 2020 15:21:11 +0800
From: Qiangming Xia <qiangming.xia@mediatek.com>
To: <wsa@the-dreams.de>
Subject: [PATCH] i2c: mediatek: Add i2c support for continuous mode
Date: Fri, 8 May 2020 15:18:09 +0800
Message-ID: <20200508071809.10187-1-qiangming.xia@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_003033_422485_AF78D6E8 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "qiangming.xia" <qiangming.xia@mediatek.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "qiangming.xia" <qiangming.xia@mediatek.com>

    Mediatek i2c controller support for continuous mode, it allow to
transfer multiple write messages once. It combined by
'S + addr(wr) + data + Sr + ... + Sr + S + addr(wr) + data + P'.
    Some slave devices need write many offset ranges, and the offset range
maybe not continuous. For example, need write 'offset_0', 'offset_3' and
'offset_5' 10 bytes, total 30 bytes. Slave device driver usually execute
three times i2c transfer API,i.e,i2c_transfer() to complete it, however,
it can use once transfer to finish it by continuous mode.

Signed-off-by: Qiangming Xia <qiangming.xia@mediatek.com>
Feature: I2C
---
 drivers/i2c/busses/i2c-mt65xx.c | 74 ++++++++++++++++++++++++++++++++-
 1 file changed, 72 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
index 2152ec5f535c..9bab8c44ad58 100644
--- a/drivers/i2c/busses/i2c-mt65xx.c
+++ b/drivers/i2c/busses/i2c-mt65xx.c
@@ -98,6 +98,7 @@ enum mtk_trans_op {
 	I2C_MASTER_WR = 1,
 	I2C_MASTER_RD,
 	I2C_MASTER_WRRD,
+	I2C_MASTER_CONTINUOUS_WR,
 };
 
 enum I2C_REGS_OFFSET {
@@ -619,6 +620,9 @@ static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
 					    OFFSET_TRANSFER_LEN);
 		}
 		mtk_i2c_writew(i2c, I2C_WRRD_TRANAC_VALUE, OFFSET_TRANSAC_LEN);
+	} else if (i2c->op == I2C_MASTER_CONTINUOUS_WR) {
+		mtk_i2c_writew(i2c, msgs->len / num, OFFSET_TRANSFER_LEN);
+		mtk_i2c_writew(i2c, num, OFFSET_TRANSAC_LEN);
 	} else {
 		mtk_i2c_writew(i2c, msgs->len, OFFSET_TRANSFER_LEN);
 		mtk_i2c_writew(i2c, num, OFFSET_TRANSAC_LEN);
@@ -671,7 +675,7 @@ static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
 
 		writel((u32)wpaddr, i2c->pdmabase + OFFSET_TX_MEM_ADDR);
 		writel(msgs->len, i2c->pdmabase + OFFSET_TX_LEN);
-	} else {
+	} else if (i2c->op == I2C_MASTER_WRRD) {
 		writel(I2C_DMA_CLR_FLAG, i2c->pdmabase + OFFSET_INT_FLAG);
 		writel(I2C_DMA_CLR_FLAG, i2c->pdmabase + OFFSET_CON);
 
@@ -722,6 +726,24 @@ static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
 		writel((u32)rpaddr, i2c->pdmabase + OFFSET_RX_MEM_ADDR);
 		writel(msgs->len, i2c->pdmabase + OFFSET_TX_LEN);
 		writel((msgs + 1)->len, i2c->pdmabase + OFFSET_RX_LEN);
+	} else if (i2c->op == I2C_MASTER_CONTINUOUS_WR) {
+		writel(I2C_DMA_INT_FLAG_NONE, i2c->pdmabase + OFFSET_INT_FLAG);
+		writel(I2C_DMA_CON_TX, i2c->pdmabase + OFFSET_CON);
+
+		wpaddr = dma_map_single(i2c->dev, msgs->buf,
+					msgs->len, DMA_TO_DEVICE);
+		if (dma_mapping_error(i2c->dev, wpaddr)) {
+			kfree(msgs->buf);
+			return -ENOMEM;
+		}
+
+		if (i2c->dev_comp->support_33bits) {
+			reg_4g_mode = mtk_i2c_set_4g_mode(wpaddr);
+			writel(reg_4g_mode, i2c->pdmabase + OFFSET_TX_4G_MODE);
+		}
+
+		writel((u32)wpaddr, i2c->pdmabase + OFFSET_TX_MEM_ADDR);
+		writel(msgs->len, i2c->pdmabase + OFFSET_TX_LEN);
 	}
 
 	writel(I2C_DMA_START_EN, i2c->pdmabase + OFFSET_EN);
@@ -752,7 +774,7 @@ static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
 				 msgs->len, DMA_FROM_DEVICE);
 
 		i2c_put_dma_safe_msg_buf(dma_rd_buf, msgs, true);
-	} else {
+	} else if (i2c->op == I2C_MASTER_WRRD) {
 		dma_unmap_single(i2c->dev, wpaddr, msgs->len,
 				 DMA_TO_DEVICE);
 		dma_unmap_single(i2c->dev, rpaddr, (msgs + 1)->len,
@@ -760,6 +782,11 @@ static int mtk_i2c_do_transfer(struct mtk_i2c *i2c, struct i2c_msg *msgs,
 
 		i2c_put_dma_safe_msg_buf(dma_wr_buf, msgs, true);
 		i2c_put_dma_safe_msg_buf(dma_rd_buf, (msgs + 1), true);
+	} else if (i2c->op == I2C_MASTER_CONTINUOUS_WR) {
+		dma_unmap_single(i2c->dev, wpaddr,
+				 msgs->len, DMA_TO_DEVICE);
+
+		kfree(msgs->buf);
 	}
 
 	if (ret == 0) {
@@ -783,6 +810,9 @@ static int mtk_i2c_transfer(struct i2c_adapter *adap,
 	int ret;
 	int left_num = num;
 	struct mtk_i2c *i2c = i2c_get_adapdata(adap);
+	struct i2c_msg multi_msg[1];
+	u8 *dma_multi_wr_buf;
+	int j;
 
 	ret = mtk_i2c_clock_enable(i2c);
 	if (ret)
@@ -798,6 +828,46 @@ static int mtk_i2c_transfer(struct i2c_adapter *adap,
 		}
 	}
 
+	if (num > 1) {
+		for (int i = 0; i < num - 1; i++) {
+			if (!(msgs[i].flags & I2C_M_RD) &&
+				!(msgs[i+1].flags & I2C_M_RD) &&
+					(msgs[i].addr == msgs[i+1].addr) &&
+						(msgs[i].len ==
+							msgs[i+1].len)) {
+				continue;
+			} else
+				break;
+		}
+		if (i >= num - 1) {
+			i2c->op = I2C_MASTER_CONTINUOUS_WR;
+			j = 0;
+			dma_multi_wr_buf = kzalloc(msgs->len * num, GFP_KERNEL);
+			if (!dma_multi_wr_buf) {
+				ret =  -ENOMEM;
+				goto err_exit;
+			}
+			multi_msg->addr  = msgs->addr;
+			multi_msg->len   = msgs->len * num;
+			multi_msg->buf   = dma_multi_wr_buf;
+			multi_msg->flags  = 0;
+			while (j < num) {
+				memcpy(dma_multi_wr_buf + msgs->len * j,
+							msgs->buf, msgs->len);
+				j++;
+				msgs++;
+			}
+
+			i2c->ignore_restart_irq = false;
+			ret = mtk_i2c_do_transfer(i2c, multi_msg, num, 0);
+			if (ret < 0)
+				goto err_exit;
+			ret = num;
+				goto err_exit;
+
+		}
+	}
+
 	if (i2c->auto_restart && num >= 2 && i2c->speed_hz > MAX_FS_MODE_SPEED)
 		/* ignore the first restart irq after the master code,
 		 * otherwise the first transfer will be discarded.
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
