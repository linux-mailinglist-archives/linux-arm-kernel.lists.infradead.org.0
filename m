Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F8D9FEDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 11:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBYcAVJjTCq5SxYV/QOOdJpt4z04dlS0egorPncIqMI=; b=tMjHCrjfsqWCmi
	d9XgLTBIxCw199WdJSjpJej19ZCGcR4uEO3FNnpz3PZYviuOhdopZ+n6Vp61F0BtxXEQh+sJ742za
	Fv/yZlTFWMtK/8EY1+eNuVmxMZmB7kjhofirAjexsLIyEis+YaT8FoJtB0fJcsDJmYWj6lW7GmCkw
	pt4LK82/5x1893EU5dhWZd7s5tdJDLaHGIYoRxJbJfG+ur7FO0ltxFToUDtOtmA4RdWz7EVgn6jVD
	8jV2PDjtS5sHYQgFoq+7DyCFaPzE5DbN5mz3GwC9XE3l1NqLe/cBtZPYcaPQaG9fajrRDawPNh2jY
	AOnxnnbek9mFcRTy5IMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2uWw-00046V-3D; Wed, 28 Aug 2019 09:46:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2uWQ-0003tq-0w; Wed, 28 Aug 2019 09:45:47 +0000
X-UUID: 099b37c618cd4b25a4bbd07d49783f54-20190828
X-UUID: 099b37c618cd4b25a4bbd07d49783f54-20190828
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yong.mao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1944176612; Wed, 28 Aug 2019 01:45:43 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 02:45:42 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 17:45:41 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 28 Aug 2019 17:45:40 +0800
From: Yong Mao <yong.mao@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH v2] mmc: mediatek: enable SDIO IRQ low level trigger function
Date: Wed, 28 Aug 2019 17:45:24 +0800
Message-ID: <1566985524-22749-2-git-send-email-yong.mao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566985524-22749-1-git-send-email-yong.mao@mediatek.com>
References: <1566985524-22749-1-git-send-email-yong.mao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_024546_067838_7810634A 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, yong mao <yong.mao@mediatek.com>,
 linux-mediatek@lists.infradead.org, Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: yong mao <yong.mao@mediatek.com>

SDIO IRQ is not defaultly triggered by low level,
but by falling edge. It needs to set related register
to enable SDIO IRQ low level trigger function.
Otherwise the SDIO IRQ may be lost in some specail condition.

Signed-off-by: Yong Mao <yong.mao@mediatek.com>
Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
---
 drivers/mmc/host/mtk-sd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
index 33f4b63..585f0c7 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -192,6 +192,7 @@
 #define SDC_STS_CMDBUSY         (0x1 << 1)	/* RW */
 #define SDC_STS_SWR_COMPL       (0x1 << 31)	/* RW */
 
+#define SDC_DAT1_IRQ_TRIGGER	(0x1 << 19)	/* RW */
 /* SDC_ADV_CFG0 mask */
 #define SDC_RX_ENHANCE_EN	(0x1 << 20)	/* RW */
 
@@ -1568,6 +1569,7 @@ static void msdc_init_hw(struct msdc_host *host)
 
 	/* Config SDIO device detect interrupt function */
 	sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
+	sdr_set_bits(host->base + SDC_ADV_CFG0, SDC_DAT1_IRQ_TRIGGER);
 
 	/* Configure to default data timeout */
 	sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC, 3);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
