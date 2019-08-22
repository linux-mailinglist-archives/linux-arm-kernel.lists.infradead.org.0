Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F76D98B92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 08:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFwIQnZ2+sk+ZjhPsfOb02r+pBT5dUgYSjK1Qz0zp30=; b=N1U6DLn8jqRzdS
	GSRlpkc0PY0sy4RrbSCk+koX58vAkDXmaCMHNxO07kufbZpjFREM8wYd8LOPyO+ZfsTWPntHDYhqB
	/EXp6Wvb26ZcpnB/w2DQkbbVqIZ4ShArWvowpMQoZQpZ41jF0VcVlAg7qkeIxtZCQ5CDlwDUBef22
	vbLCgXqBmru96N69bnn6IpYF9VwnywKX3j1+h6cDDQ2ZG2c4g9KUp1Pk0GcTNO4AJfSljs6tk6sUI
	PpfXTIVxNlFw7OGSVr6wiS+0nO4EJxq3Jt4VnJDBhXHQ2onCVDV/21OJRwdkfDZCVlb1Gw8qOjCw7
	j86ioRyGNDzA3DsZQGfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0gtq-0001ws-KZ; Thu, 22 Aug 2019 06:48:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gt1-0001sU-Tp; Thu, 22 Aug 2019 06:47:59 +0000
X-UUID: 2202330e5e1a44a59d7fc3a8ad2bda6b-20190821
X-UUID: 2202330e5e1a44a59d7fc3a8ad2bda6b-20190821
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chaotian.jing@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 442027429; Wed, 21 Aug 2019 22:47:47 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 23:47:46 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 14:47:45 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 14:47:44 +0800
From: Chaotian Jing <chaotian.jing@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 2/2] mmc: mediatek: support 24bits segment size
Date: Thu, 22 Aug 2019 14:47:41 +0800
Message-ID: <20190822064741.11196-3-chaotian.jing@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190822064741.11196-1-chaotian.jing@mediatek.com>
References: <20190822064741.11196-1-chaotian.jing@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_234756_790176_F9F48F7D 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
index 5cc422e5db69..4c72c5b73e87 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -328,6 +328,7 @@ struct mt_bdma_desc {
 	u32 ptr;
 	u32 bd_data_len;
 #define BDMA_DESC_BUFLEN	(0xffff) /* bit0 ~ bit15 */
+#define BDMA_DESC_BUFLEN_EXT	(0xffffff) /* bit0 ~ bit23 */
 };
 
 struct msdc_dma {
@@ -641,8 +642,14 @@ static inline void msdc_dma_setup(struct msdc_host *host, struct msdc_dma *dma,
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
@@ -2277,7 +2284,10 @@ static int msdc_drv_probe(struct platform_device *pdev)
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
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
