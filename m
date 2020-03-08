Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1418717D391
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 12:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGdToKWI6Np0ksd22+rKeEtABfwL2JCEackcAxL6YvM=; b=jmCKjh4wjV8vev
	Z/2FBnhJW54Z0zJGNZerDBVGORwuzjl0m/WmMLo8+Mzg4v3R5TUZeDijI4t172B6TMH/Xyyt+iRTG
	wXNmfXtgLsVpnUe9S6gb3udZTx4mRuIkGhBdtVKWv4viylEWikzY7DjavtUQyyNPduQAxlB/cAsXX
	7WHDnCvMMFXOON1mkGtKsCS6xxgonmdkAT1uHK89qXrClo8uM4qxORusqnhv/gHWdQtVymT4GyG8i
	EbfugCALz9P0twQ0pqGyWW2gCcaG6I9nyg8RXA/p1AGFk7O6hpAP9alwxGTX6XRRJqiUlCSFcbsdx
	Lm2WpgzMKf1ZrskkOEyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAtjC-0005t6-MS; Sun, 08 Mar 2020 11:04:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAtiH-000554-0r; Sun, 08 Mar 2020 11:03:19 +0000
X-UUID: 70fd1f6f8d68409bb8151eb5e108ed87-20200308
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=BCXL5tDvzkDDYvZAF6tXplZXEZt+EddIzFxmBA+lZ14=; 
 b=gDzej5CX4kAUYuUuHUN9qM1FT4D3MWYcgl6quuCeA2ewt1kKZ+vqTimEctfsAefRvZAafTD0cVQ+naPJf/YoyAwLuuaavh+eyATxT76b1HaIa6gFNZkW3DkyiEMjdw3VBTECfIHDQKHPYxGotclkDiN5JcPdIZqQZRRpFuLSolE=;
X-UUID: 70fd1f6f8d68409bb8151eb5e108ed87-20200308
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 431213984; Sun, 08 Mar 2020 03:03:04 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Mar 2020 03:53:37 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Mar 2020 18:54:07 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 8 Mar 2020 18:52:58 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jassi Brar
 <jassisinghbrar@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, "David
 Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v5 02/13] mailbox: cmdq: variablize address shift in platform
Date: Sun, 8 Mar 2020 18:52:44 +0800
Message-ID: <1583664775-19382-3-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_040317_131357_894E4E1D 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 HS Liao <hs.liao@mediatek.com>, Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some gce hardware shift pc and end address in register to support
large dram addressing.
Implement gce address shift when write or read pc and end register.
And add shift bit in platform definition.

Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/mailbox/mtk-cmdq-mailbox.c       | 61 ++++++++++++++++++------
 drivers/soc/mediatek/mtk-cmdq-helper.c   |  3 +-
 include/linux/mailbox/mtk-cmdq-mailbox.h |  2 +
 3 files changed, 50 insertions(+), 16 deletions(-)

diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
index 9a6ce9f5a7db..4dbee9258127 100644
--- a/drivers/mailbox/mtk-cmdq-mailbox.c
+++ b/drivers/mailbox/mtk-cmdq-mailbox.c
@@ -76,8 +76,22 @@ struct cmdq {
 	struct cmdq_thread	*thread;
 	struct clk		*clock;
 	bool			suspended;
+	u8			shift_pa;
 };
 
+struct gce_plat {
+	u32 thread_nr;
+	u8 shift;
+};
+
+u8 cmdq_mbox_shift(struct mbox_chan *chan)
+{
+	struct cmdq *cmdq = container_of(chan->mbox, struct cmdq, mbox);
+
+	return cmdq->shift_pa;
+}
+EXPORT_SYMBOL(cmdq_mbox_shift);
+
 static int cmdq_thread_suspend(struct cmdq *cmdq, struct cmdq_thread *thread)
 {
 	u32 status;
@@ -183,7 +197,7 @@ static void cmdq_task_remove_wfe(struct cmdq_task *task)
 	for (i = 0; i < CMDQ_NUM_CMD(task->pkt); i++)
 		if (cmdq_command_is_wfe(base[i]))
 			base[i] = (u64)CMDQ_JUMP_BY_OFFSET << 32 |
-				  CMDQ_JUMP_PASS;
+				  CMDQ_JUMP_PASS >> task->cmdq->shift_pa;
 	dma_sync_single_for_device(dev, task->pa_base, task->pkt->cmd_buf_size,
 				   DMA_TO_DEVICE);
 }
@@ -221,13 +235,15 @@ static void cmdq_task_handle_error(struct cmdq_task *task)
 {
 	struct cmdq_thread *thread = task->thread;
 	struct cmdq_task *next_task;
+	struct cmdq *cmdq = task->cmdq;
 
-	dev_err(task->cmdq->mbox.dev, "task 0x%p error\n", task);
-	WARN_ON(cmdq_thread_suspend(task->cmdq, thread) < 0);
+	dev_err(cmdq->mbox.dev, "task 0x%p error\n", task);
+	WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
 	next_task = list_first_entry_or_null(&thread->task_busy_list,
 			struct cmdq_task, list_entry);
 	if (next_task)
-		writel(next_task->pa_base, thread->base + CMDQ_THR_CURR_ADDR);
+		writel(next_task->pa_base >> cmdq->shift_pa,
+		       thread->base + CMDQ_THR_CURR_ADDR);
 	cmdq_thread_resume(thread);
 }
 
@@ -257,7 +273,7 @@ static void cmdq_thread_irq_handler(struct cmdq *cmdq,
 	else
 		return;
 
-	curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR);
+	curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR) << cmdq->shift_pa;
 
 	list_for_each_entry_safe(task, tmp, &thread->task_busy_list,
 				 list_entry) {
@@ -373,16 +389,20 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
 		WARN_ON(clk_enable(cmdq->clock) < 0);
 		WARN_ON(cmdq_thread_reset(cmdq, thread) < 0);
 
-		writel(task->pa_base, thread->base + CMDQ_THR_CURR_ADDR);
-		writel(task->pa_base + pkt->cmd_buf_size,
+		writel(task->pa_base >> cmdq->shift_pa,
+		       thread->base + CMDQ_THR_CURR_ADDR);
+		writel((task->pa_base + pkt->cmd_buf_size) >> cmdq->shift_pa,
 		       thread->base + CMDQ_THR_END_ADDR);
+
 		writel(thread->priority, thread->base + CMDQ_THR_PRIORITY);
 		writel(CMDQ_THR_IRQ_EN, thread->base + CMDQ_THR_IRQ_ENABLE);
 		writel(CMDQ_THR_ENABLED, thread->base + CMDQ_THR_ENABLE_TASK);
 	} else {
 		WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
-		curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR);
-		end_pa = readl(thread->base + CMDQ_THR_END_ADDR);
+		curr_pa = readl(thread->base + CMDQ_THR_CURR_ADDR) <<
+			cmdq->shift_pa;
+		end_pa = readl(thread->base + CMDQ_THR_END_ADDR) <<
+			cmdq->shift_pa;
 
 		/*
 		 * Atomic execution should remove the following wfe, i.e. only
@@ -395,7 +415,7 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
 				cmdq_thread_wait_end(thread, end_pa);
 				WARN_ON(cmdq_thread_suspend(cmdq, thread) < 0);
 				/* set to this task directly */
-				writel(task->pa_base,
+				writel(task->pa_base >> cmdq->shift_pa,
 				       thread->base + CMDQ_THR_CURR_ADDR);
 			} else {
 				cmdq_task_insert_into_thread(task);
@@ -407,14 +427,14 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
 			if (curr_pa == end_pa - CMDQ_INST_SIZE ||
 			    curr_pa == end_pa) {
 				/* set to this task directly */
-				writel(task->pa_base,
+				writel(task->pa_base >> cmdq->shift_pa,
 				       thread->base + CMDQ_THR_CURR_ADDR);
 			} else {
 				cmdq_task_insert_into_thread(task);
 				smp_mb(); /* modify jump before enable thread */
 			}
 		}
-		writel(task->pa_base + pkt->cmd_buf_size,
+		writel((task->pa_base + pkt->cmd_buf_size) >> cmdq->shift_pa,
 		       thread->base + CMDQ_THR_END_ADDR);
 		cmdq_thread_resume(thread);
 	}
@@ -461,6 +481,7 @@ static int cmdq_probe(struct platform_device *pdev)
 	struct resource *res;
 	struct cmdq *cmdq;
 	int err, i;
+	struct gce_plat *plat_data;
 
 	cmdq = devm_kzalloc(dev, sizeof(*cmdq), GFP_KERNEL);
 	if (!cmdq)
@@ -479,7 +500,14 @@ static int cmdq_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	cmdq->thread_nr = (u32)(unsigned long)of_device_get_match_data(dev);
+	plat_data = (struct gce_plat *)of_device_get_match_data(dev);
+	if (!plat_data) {
+		dev_err(dev, "failed to get match data\n");
+		return -EINVAL;
+	}
+
+	cmdq->thread_nr = plat_data->thread_nr;
+	cmdq->shift_pa = plat_data->shift;
 	cmdq->irq_mask = GENMASK(cmdq->thread_nr - 1, 0);
 	err = devm_request_irq(dev, cmdq->irq, cmdq_irq_handler, IRQF_SHARED,
 			       "mtk_cmdq", cmdq);
@@ -542,9 +570,12 @@ static const struct dev_pm_ops cmdq_pm_ops = {
 	.resume = cmdq_resume,
 };
 
+static const struct gce_plat gce_plat_v2 = {.thread_nr = 16};
+static const struct gce_plat gce_plat_v3 = {.thread_nr = 24};
+
 static const struct of_device_id cmdq_of_ids[] = {
-	{.compatible = "mediatek,mt8173-gce", .data = (void *)16},
-	{.compatible = "mediatek,mt8183-gce", .data = (void *)24},
+	{.compatible = "mediatek,mt8173-gce", .data = (void *)&gce_plat_v2},
+	{.compatible = "mediatek,mt8183-gce", .data = (void *)&gce_plat_v3},
 	{}
 };
 
diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index de20e6cba83b..2e1bc513569b 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -291,7 +291,8 @@ static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
 
 	/* JUMP to end */
 	inst.op = CMDQ_CODE_JUMP;
-	inst.value = CMDQ_JUMP_PASS;
+	inst.value = CMDQ_JUMP_PASS >>
+		cmdq_mbox_shift(((struct cmdq_client *)pkt->cl)->chan);
 	err = cmdq_pkt_append_command(pkt, inst);
 
 	return err;
diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
index a4dc45fbec0a..dfe5b2eb85cc 100644
--- a/include/linux/mailbox/mtk-cmdq-mailbox.h
+++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
@@ -88,4 +88,6 @@ struct cmdq_pkt {
 	void			*cl;
 };
 
+u8 cmdq_mbox_shift(struct mbox_chan *chan);
+
 #endif /* __MTK_CMDQ_MAILBOX_H__ */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
