Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10609160E14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:10:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjpgxzSpRIk/5DXg8I7vvePkBC+9YYK1TtHe0W4g/FM=; b=YcIwsP2nvEZsxz
	xqZxazKA1aHLOcEH0OqCjgnBwfAi09YOnJOfjQLTU+Et2fdUUhb/pVv3PABdy8IgDm/vbRE4tVhdt
	j7GJmc2TASagj1r6GPIx8mJmcnj3WvrvaareNJLM90iGMYDfrZw0I73nKMgDr5lwuRpj89PVJCT6q
	RumTHuUm981BysjKx40BfUex8JJKAmQoRmKndu9nciZa/DGiSu6zwkxsec5TztRXzSWaBk7Uj9cEk
	eL6MTF5Qn2cAvL0VUPGQi6B+yxmxuVLNnEq6dY/UUl4ks2Zu0vkR3CGscVhxV9AiYjmXyvafR6Mke
	58+HXCg5XF+2HwDqYzdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cPX-0004oH-4I; Mon, 17 Feb 2020 09:09:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cPP-0004ne-FB; Mon, 17 Feb 2020 09:09:44 +0000
X-UUID: a664acd45a3c460293d1ac853917cd48-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=035FQ1Fw3xURfPM55/UUoa6QVfGND190Ak9FtnTFJ0g=; 
 b=KU7uNzSuul8qgKRsTbzaDNP5WB0tPR8kiGqP+Q7NbcpsuuPrgR1kCuL+ysbvjyQgCdqi99oQPI2akmkcT0Vhe6SUlCZXPUT2422hUUOVhoH/HpSE6EXCn5R1zqN3wnjN6MlJP10VUd+z+4mlv08ucLZpDm2S8CQB2+2ugtGWjaI=;
X-UUID: a664acd45a3c460293d1ac853917cd48-20200217
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2027552165; Mon, 17 Feb 2020 01:09:38 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 01:05:34 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 17:04:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 17 Feb 2020 17:03:36 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v1 3/3] mailbox: mediatek: remove implementation related to
 atomic_exec
Date: Mon, 17 Feb 2020 17:05:32 +0800
Message-ID: <20200217090532.16019-4-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200217090532.16019-1-bibby.hsieh@mediatek.com>
References: <20200217090532.16019-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_010943_517976_CE96A73B 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

After implement flush, client can flush the executing
command buffer or abort the still waiting for event
command buffer, so controller do not need to implement
atomic_exe feature. remove it.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/mailbox/mtk-cmdq-mailbox.c | 76 ++++--------------------------
 1 file changed, 8 insertions(+), 68 deletions(-)

diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
index 0da5e2dc2c0e..b24822ad8409 100644
--- a/drivers/mailbox/mtk-cmdq-mailbox.c
+++ b/drivers/mailbox/mtk-cmdq-mailbox.c
@@ -56,7 +56,6 @@ struct cmdq_thread {
 	void __iomem		*base;
 	struct list_head	task_busy_list;
 	u32			priority;
-	bool			atomic_exec;
 };
 
 struct cmdq_task {
@@ -162,48 +161,11 @@ static void cmdq_task_insert_into_thread(struct cmdq_task *task)
 	cmdq_thread_invalidate_fetched_data(thread);
 }
 
-static bool cmdq_command_is_wfe(u64 cmd)
-{
-	u64 wfe_option = CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE;
-	u64 wfe_op = (u64)(CMDQ_CODE_WFE << CMDQ_OP_CODE_SHIFT) << 32;
-	u64 wfe_mask = (u64)CMDQ_OP_CODE_MASK << 32 | 0xffffffff;
-
-	return ((cmd & wfe_mask) == (wfe_op | wfe_option));
-}
-
-/* we assume tasks in the same display GCE thread are waiting the same event. */
-static void cmdq_task_remove_wfe(struct cmdq_task *task)
-{
-	struct device *dev = task->cmdq->mbox.dev;
-	u64 *base = task->pkt->va_base;
-	int i;
-
-	dma_sync_single_for_cpu(dev, task->pa_base, task->pkt->cmd_buf_size,
-				DMA_TO_DEVICE);
-	for (i = 0; i < CMDQ_NUM_CMD(task->pkt); i++)
-		if (cmdq_command_is_wfe(base[i]))
-			base[i] = (u64)CMDQ_JUMP_BY_OFFSET << 32 |
-				  CMDQ_JUMP_PASS;
-	dma_sync_single_for_device(dev, task->pa_base, task->pkt->cmd_buf_size,
-				   DMA_TO_DEVICE);
-}
-
 static bool cmdq_thread_is_in_wfe(struct cmdq_thread *thread)
 {
 	return readl(thread->base + CMDQ_THR_WAIT_TOKEN) & CMDQ_THR_IS_WAITING;
 }
 
-static void cmdq_thread_wait_end(struct cmdq_thread *thread,
-				 unsigned long end_pa)
-{
-	struct device *dev = thread->chan->mbox->dev;
-	unsigned long curr_pa;
-
-	if (readl_poll_timeout_atomic(thread->base + CMDQ_THR_CURR_ADDR,
-			curr_pa, curr_pa == end_pa, 1, 20))
-		dev_err(dev, "GCE thread cannot run to end.\n");
-}
-
 static void cmdq_task_exec_done(struct cmdq_task *task, enum cmdq_cb_status sta)
 {
 	struct cmdq_task_cb *cb = &task->pkt->async_cb;
@@ -383,36 +345,15 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
 		WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
 		curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR);
 		end_pa = readl(thread->base + CMDQ_THR_END_ADDR);
-
-		/*
-		 * Atomic execution should remove the following wfe, i.e. only
-		 * wait event at first task, and prevent to pause when running.
-		 */
-		if (thread->atomic_exec) {
-			/* GCE is executing if command is not WFE */
-			if (!cmdq_thread_is_in_wfe(thread)) {
-				cmdq_thread_resume(thread);
-				cmdq_thread_wait_end(thread, end_pa);
-				WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
-				/* set to this task directly */
-				writel(task->pa_base,
-				       thread->base + CMDQ_THR_CURR_ADDR);
-			} else {
-				cmdq_task_insert_into_thread(task);
-				cmdq_task_remove_wfe(task);
-				smp_mb(); /* modify jump before enable thread */
-			}
+		/* check boundary */
+		if (curr_pa == end_pa - CMDQ_INST_SIZE ||
+		    curr_pa == end_pa) {
+			/* set to this task directly */
+			writel(task->pa_base,
+			       thread->base + CMDQ_THR_CURR_ADDR);
 		} else {
-			/* check boundary */
-			if (curr_pa == end_pa - CMDQ_INST_SIZE ||
-			    curr_pa == end_pa) {
-				/* set to this task directly */
-				writel(task->pa_base,
-				       thread->base + CMDQ_THR_CURR_ADDR);
-			} else {
-				cmdq_task_insert_into_thread(task);
-				smp_mb(); /* modify jump before enable thread */
-			}
+			cmdq_task_insert_into_thread(task);
+			smp_mb(); /* modify jump before enable thread */
 		}
 		writel(task->pa_base + pkt->cmd_buf_size,
 		       thread->base + CMDQ_THR_END_ADDR);
@@ -501,7 +442,6 @@ static struct mbox_chan *cmdq_xlate(struct mbox_controller *mbox,
 
 	thread = (struct cmdq_thread *)mbox->chans[ind].con_priv;
 	thread->priority = sp->args[1];
-	thread->atomic_exec = (sp->args[2] != 0);
 	thread->chan = &mbox->chans[ind];
 
 	return &mbox->chans[ind];
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
