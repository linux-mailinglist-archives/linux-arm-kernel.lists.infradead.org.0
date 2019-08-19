Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB4791B56
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 04:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6fl8+eUQeccMFr0lflnaGUtWVlgUbEyiDmaC72zKMY=; b=XLeVlIxz4tgD5N
	6KfhUz7AfAMvlZkl3bkKxo6jgB17MAz79wkyBwTSOXx7wHCRVKwvgNPR4BCwzzk2Ax+BIWKXA7PCI
	nyC71hpCkrJtX65RAR9qAd1GcPl/daq5Wufgv3YBqLXXJa0oxxWcpJeQGMpK+obR89fiyA1wHGcQz
	HRozDt3PPNy6tXTFuCUXWaWw7dfMlgStklFlelaBcp7Jfa9vYBLGblkReYvMjFuBJ0IjE+l33YK6U
	dJTn8hPlrjEmZowo5rJKKXfOO7SuRTezoEO8WqjvJUkP1nRlr+X4Yi6Q7jusuGOAmpsaTm0Fvk8vt
	v3zGu/GGh5MSNCl2ntrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzXrt-0004tD-Ty; Mon, 19 Aug 2019 02:58:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzXox-00012f-3O; Mon, 19 Aug 2019 02:55:01 +0000
X-UUID: 0a672e73509540a18e0ae958dea959d6-20190818
X-UUID: 0a672e73509540a18e0ae958dea959d6-20190818
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1154094957; Sun, 18 Aug 2019 18:54:38 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 18 Aug 2019 19:54:36 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 10:54:02 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 19 Aug 2019 10:54:02 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v12 06/12] soc: mediatek: cmdq: clear the event in cmdq
 initial flow
Date: Mon, 19 Aug 2019 10:53:53 +0800
Message-ID: <20190819025359.11381-7-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190819025359.11381-1-bibby.hsieh@mediatek.com>
References: <20190819025359.11381-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_195459_318990_BDDBC525 
X-CRM114-Status: GOOD (  10.28  )
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GCE hardware stored event information in own internal sysram,
if the initial value in those sysram is not zero value
it will cause a situation that gce can wait the event immediately
after client ask gce to wait event but not really trigger the
corresponding hardware.

In order to make sure that the wait event function is
exactly correct, we need to clear the sysram value in
cmdq initial flow.

Fixes: 623a6143a845 ("mailbox: mediatek: Add Mediatek CMDQ driver")

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/mailbox/mtk-cmdq-mailbox.c       | 5 +++++
 include/linux/mailbox/mtk-cmdq-mailbox.h | 2 ++
 include/linux/soc/mediatek/mtk-cmdq.h    | 3 ---
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
index 69daaadc3a5f..9a6ce9f5a7db 100644
--- a/drivers/mailbox/mtk-cmdq-mailbox.c
+++ b/drivers/mailbox/mtk-cmdq-mailbox.c
@@ -21,6 +21,7 @@
 #define CMDQ_NUM_CMD(t)			(t->cmd_buf_size / CMDQ_INST_SIZE)
 
 #define CMDQ_CURR_IRQ_STATUS		0x10
+#define CMDQ_SYNC_TOKEN_UPDATE		0x68
 #define CMDQ_THR_SLOT_CYCLES		0x30
 #define CMDQ_THR_BASE			0x100
 #define CMDQ_THR_SIZE			0x80
@@ -104,8 +105,12 @@ static void cmdq_thread_resume(struct cmdq_thread *thread)
 
 static void cmdq_init(struct cmdq *cmdq)
 {
+	int i;
+
 	WARN_ON(clk_enable(cmdq->clock) < 0);
 	writel(CMDQ_THR_ACTIVE_SLOT_CYCLES, cmdq->base + CMDQ_THR_SLOT_CYCLES);
+	for (i = 0; i <= CMDQ_MAX_EVENT; i++)
+		writel(i, cmdq->base + CMDQ_SYNC_TOKEN_UPDATE);
 	clk_disable(cmdq->clock);
 }
 
diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
index ccb73422c2fa..911475da7a53 100644
--- a/include/linux/mailbox/mtk-cmdq-mailbox.h
+++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
@@ -19,6 +19,8 @@
 #define CMDQ_WFE_UPDATE			BIT(31)
 #define CMDQ_WFE_WAIT			BIT(15)
 #define CMDQ_WFE_WAIT_VALUE		0x1
+/** cmdq event maximum */
+#define CMDQ_MAX_EVENT			0x3ff
 
 /*
  * CMDQ_CODE_MASK:
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index 54ade13a9b15..4e8899972db4 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -13,9 +13,6 @@
 
 #define CMDQ_NO_TIMEOUT		0xffffffffu
 
-/** cmdq event maximum */
-#define CMDQ_MAX_EVENT				0x3ff
-
 struct cmdq_pkt;
 
 struct cmdq_client {
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
