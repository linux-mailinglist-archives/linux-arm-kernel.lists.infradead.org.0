Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE16115D116
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 05:34:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBjBZrpHRLjSFnM+G2OXXuODpEqXKDt431vPm4CcaP4=; b=P+1v/K2zgql8wC
	GA84VmLT7XhAvuYvDA7oZXlou7u77d+vbQ2XeaGgYqNYZCvmL/cuYu7/YrpO5md4rkNSDVTLITcB6
	GRzmwCv7Yki+1Bz38kC80ouJr/0CMdl90ZbO7SV95n8Mvqh1WpMVvx/1B09q+phvq7TF36xN8sE43
	6qOt2AfG5dXAiCKeOqpBGnXz+3i+4GJTMa5VwVfaOktNMElWtr+ji/nfmsYKYi3QAHSLC4k2BZqxT
	uTXpb8Wgw2xN3ERv1rEQu6Xapn8iI0yRSIUzbhzwA/hAO5rRlVtntwKwUl3wT9HmT0wLD1DSsSF8q
	Gj7d1KIom7IMHlC7lyIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Sfz-0003th-NK; Fri, 14 Feb 2020 04:34:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Sfc-0003jO-Ql; Fri, 14 Feb 2020 04:33:42 +0000
X-UUID: 2edddf15b67946758340c20de4c553bc-20200213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=pXdRTGlO/UWEDb7GkCFHAFd4vtjwvmu6YVdID32AlX0=; 
 b=tl+bmU9u6C0nN/qAd9VtIJhb4WJiRKPCX1UiJDxSLzrGwzuVWqyvX9ph/cpaBTQjMqJmx/fIn6VLDc9Sj1h4LJUYrOdxD2d/FOLkXPGScQV6uyW2qBOjvGr+k5H6RFi6n3U8GwpvKyYqKLtvPXSfOf4mk8UXzUvAqVeitqlpZEI=;
X-UUID: 2edddf15b67946758340c20de4c553bc-20200213
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1545345822; Thu, 13 Feb 2020 20:33:29 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 20:33:41 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Feb 2020 12:32:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 14 Feb 2020 12:33:18 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH 1/3] mailbox: mediatek: implement flush function
Date: Fri, 14 Feb 2020 12:33:23 +0800
Message-ID: <20200214043325.16618-2-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200214043325.16618-1-bibby.hsieh@mediatek.com>
References: <20200214043325.16618-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_203340_870362_AF0DD782 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For client driver which need to reorganize the command buffer, it could
use this function to flush the send command buffer.
If the channel doesn't be started (usually in waiting for event), this
function will abort it directly.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 drivers/mailbox/mtk-cmdq-mailbox.c | 50 ++++++++++++++++++++++++++++--
 1 file changed, 48 insertions(+), 2 deletions(-)

diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
index 9a6ce9f5a7db..03e58ff62007 100644
--- a/drivers/mailbox/mtk-cmdq-mailbox.c
+++ b/drivers/mailbox/mtk-cmdq-mailbox.c
@@ -5,6 +5,7 @@
 #include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
+#include <linux/completion.h>
 #include <linux/dma-mapping.h>
 #include <linux/errno.h>
 #include <linux/interrupt.h>
@@ -428,14 +429,59 @@ static int cmdq_mbox_startup(struct mbox_chan *chan)
 	return 0;
 }
 
-static void cmdq_mbox_shutdown(struct mbox_chan *chan)
+static int cmdq_mbox_flush(struct mbox_chan *chan, unsigned long timeout)
 {
+	struct cmdq_thread *thread = (struct cmdq_thread *)chan->con_priv;
+	struct cmdq_task_cb *cb;
+	struct cmdq_cb_data data;
+	struct cmdq *cmdq = dev_get_drvdata(chan->mbox->dev);
+	struct cmdq_task *task, *tmp;
+	unsigned long flags;
+	u32 enable;
+
+	spin_lock_irqsave(&thread->chan->lock, flags);
+	if (list_empty(&thread->task_busy_list))
+		goto out;
+
+	WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
+	if (!cmdq_thread_is_in_wfe(thread))
+		goto wait;
+
+	list_for_each_entry_safe(task, tmp, &thread->task_busy_list,
+				 list_entry) {
+		cb = &task->pkt->async_cb;
+		list_del(&task->list_entry);
+		kfree(task);
+	}
+
+	if (cb->cb) {
+		data.sta = -ENOBUFS;
+		data.data = cb->data;
+		cb->cb(data);
+	}
+
+	cmdq_thread_resume(thread);
+	cmdq_thread_disable(cmdq, thread);
+	clk_disable(cmdq->clock);
+
+out:
+	spin_unlock_irqrestore(&thread->chan->lock, flags);
+	return 0;
+
+wait:
+	cmdq_thread_resume(thread);
+	spin_unlock_irqrestore(&thread->chan->lock, flags);
+	if (readl_poll_timeout_atomic(thread->base + CMDQ_THR_ENABLE_TASK,
+				      enable, enable == 0, 1, timeout))
+		dev_err(cmdq->mbox.dev, "Fail to wait GCE thread 0x%x done\n",
+			(u32)(thread->base - cmdq->base));
+	return 0;
 }
 
 static const struct mbox_chan_ops cmdq_mbox_chan_ops = {
 	.send_data = cmdq_mbox_send_data,
 	.startup = cmdq_mbox_startup,
-	.shutdown = cmdq_mbox_shutdown,
+	.flush = cmdq_mbox_flush,
 };
 
 static struct mbox_chan *cmdq_xlate(struct mbox_controller *mbox,
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
