Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE252264A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 09:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXRNN7hXwAP7lbU8AWZW/h3eXJhXY2cHDsYbLDi5KKw=; b=BQ8q7/Ka56MyYT
	Sd13nPz69w0FXS4UkG/YJcjd1IFHI4bjhGLyFhW3H2gjD17PrwrYCIcVphVZpYMPIcsx6PM4468Th
	u+I3koCk2/4WcHbogGmtLYrIw6vd4DXXmzGNvaedJSZBARV1JTUY2xbBYI6i2+x4g1Se/cBNgMwZJ
	Ss3MnzrS7OCsp8dy+iN5T5u8Ta+Jb7Yw3RcFhABEqCIUIe5xuEjZhCfXq20ca4IVVafRfJWgttA1r
	69H7zhg7PJz/LVsI5f5wzPaC/sFvebLaq48HAqJyrIEBRRAeRqw1H8GT1JdnSRUORg5jhHwU4dTCF
	gDYA9FuidwEUT5dnJpVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSGhr-0005Gr-OC; Sun, 19 May 2019 07:58:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSGhN-0004qU-Jz; Sun, 19 May 2019 07:57:38 +0000
X-UUID: 8bc365b610b749af8a3176ce92463e78-20190518
X-UUID: 8bc365b610b749af8a3176ce92463e78-20190518
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chaotian.jing@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 441210588; Sat, 18 May 2019 23:57:30 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 00:57:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 15:57:27 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 19 May 2019 15:57:27 +0800
From: Chaotian Jing <chaotian.jing@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 2/2] mmc: mediatek: support 24bits segment size
Date: Sun, 19 May 2019 15:57:17 +0800
Message-ID: <1558252637-10556-3-git-send-email-chaotian.jing@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1558252637-10556-1-git-send-email-chaotian.jing@mediatek.com>
References: <1558252637-10556-1-git-send-email-chaotian.jing@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2E91B52073018D154ED368F480FF70C73E3518419F3DBA61916625645C3301422000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_005737_664843_6A07C255 
X-CRM114-Status: GOOD (  10.83  )
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
Cc: srv_heupstream@mediatek.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MSDC IP which support 64G DRAM will support 24bits BDMA buffer length,
so add support it.

Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
---
 drivers/mmc/host/mtk-sd.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
index 7d8502a..682e483 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -336,6 +336,7 @@ struct mt_bdma_desc {
 	u32 ptr;
 	u32 bd_data_len;
 #define BDMA_DESC_BUFLEN	(0xffff) /* bit0 ~ bit15 */
+#define BDMA_DESC_BUFLEN_EXT	(0xffffff) /* bit0 ~ bit23 */
 };
 
 struct msdc_dma {
@@ -649,8 +650,14 @@ static inline void msdc_dma_setup(struct msdc_host *host, struct msdc_dma *dma,
 			bd[j].bd_info |= (upper_32_bits(dma_address) & 0xf)
 					 << 28;
 		}
-		bd[j].bd_data_len &= ~BDMA_DESC_BUFLEN;
-		bd[j].bd_data_len |= (dma_len & BDMA_DESC_BUFLEN);
+
+		if (host->dev_comp->support_64g) {
+			bd[j].bd_data_len &= ~BDMA_DESC_BUFLEN_EXT;
+			bd[j].bd_data_len |= (dma_len & BDMA_DESC_BUFLEN_EXT);
+		} else {
+			bd[j].bd_data_len &= ~BDMA_DESC_BUFLEN;
+			bd[j].bd_data_len |= (dma_len & BDMA_DESC_BUFLEN);
+		}
 
 		if (j == data->sg_count - 1) /* the last bd */
 			bd[j].bd_info |= BDMA_DESC_EOL;
@@ -2280,7 +2287,10 @@ static int msdc_drv_probe(struct platform_device *pdev)
 	mmc->caps |= MMC_CAP_ERASE | MMC_CAP_CMD23;
 	/* MMC core transfer sizes tunable parameters */
 	mmc->max_segs = MAX_BD_NUM;
-	mmc->max_seg_size = BDMA_DESC_BUFLEN;
+	if (host->dev_comp->support_64g)
+		mmc->max_seg_size = BDMA_DESC_BUFLEN_EXT;
+	else
+		mmc->max_seg_size = BDMA_DESC_BUFLEN;
 	mmc->max_blk_size = 2048;
 	mmc->max_req_size = 512 * 1024;
 	mmc->max_blk_count = mmc->max_req_size / 512;
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
