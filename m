Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB18C0481
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 13:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1VQjCsDJoS+lWfclLs+IoKSvymmoU2IAOtgqCCGack=; b=AIyh8GrNpJz8dR
	dlTJTlF9sv37QGgMNqA1yP+J4YyW+/m6yBSUmlvsIS0e1hHe7F0r6q5TwiDH62zZ6W+ehLj3CBuMW
	HUMT50vSPI7fUxBQ/IB49+4R+dTYDyP8fTBk9L1drRMOdn3eYwCauREj4cqtt1UW/QhcvZcJs+gM2
	c0V8MeA+JueIKBmla9sZZQrp2wf58NGBsy5n0pgbOq/Pv6gfZ30ESL4HiOl7s0xT7+zpao2cQ5/DN
	KuUhqyrdJeM4Fot9Mi9bzAdLsETBoj7p9EyIZnsjV/6lkgdEslxvX1U11VSWzT9QFplgWUspLswQX
	a3ktEvOp9MQzepCO9S5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDoee-0002BG-0n; Fri, 27 Sep 2019 11:43:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDoeS-00028z-PF; Fri, 27 Sep 2019 11:43:10 +0000
X-UUID: 5afc5c37315b4b3489ea9e9b95fd2d0d-20190927
X-UUID: 5afc5c37315b4b3489ea9e9b95fd2d0d-20190927
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 402244489; Fri, 27 Sep 2019 03:42:56 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 04:42:55 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 19:42:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 27 Sep 2019 19:42:54 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, CK HU <ck.hu@mediatek.com>
Subject: [PATCH v15 1/4] soc: mediatek: cmdq: define the instruction struct
Date: Fri, 27 Sep 2019 19:42:51 +0800
Message-ID: <20190927114254.6258-2-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190927114254.6258-1-bibby.hsieh@mediatek.com>
References: <20190927114254.6258-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_044308_829714_D829C39D 
X-CRM114-Status: GOOD (  12.65  )
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
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Define an instruction structure for gce driver to append command.
This structure can make the client's code more readability.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Reviewed-by: Houlong Wei <houlong.wei@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c   | 106 +++++++++++++++++------
 include/linux/mailbox/mtk-cmdq-mailbox.h |  10 +++
 2 files changed, 90 insertions(+), 26 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 7aa0517ff2f3..7af327b98d25 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -9,12 +9,24 @@
 #include <linux/mailbox_controller.h>
 #include <linux/soc/mediatek/mtk-cmdq.h>
 
-#define CMDQ_ARG_A_WRITE_MASK	0xffff
 #define CMDQ_WRITE_ENABLE_MASK	BIT(0)
 #define CMDQ_EOC_IRQ_EN		BIT(0)
 #define CMDQ_EOC_CMD		((u64)((CMDQ_CODE_EOC << CMDQ_OP_CODE_SHIFT)) \
 				<< 32 | CMDQ_EOC_IRQ_EN)
 
+struct cmdq_instruction {
+	union {
+		u32 value;
+		u32 mask;
+	};
+	union {
+		u16 offset;
+		u16 event;
+	};
+	u8 subsys;
+	u8 op;
+};
+
 static void cmdq_client_timeout(struct timer_list *t)
 {
 	struct cmdq_client *client = from_timer(client, t, timer);
@@ -110,10 +122,10 @@ void cmdq_pkt_destroy(struct cmdq_pkt *pkt)
 }
 EXPORT_SYMBOL(cmdq_pkt_destroy);
 
-static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
-				   u32 arg_a, u32 arg_b)
+static int cmdq_pkt_append_command(struct cmdq_pkt *pkt,
+				   struct cmdq_instruction *inst)
 {
-	u64 *cmd_ptr;
+	struct cmdq_instruction *cmd_ptr;
 
 	if (unlikely(pkt->cmd_buf_size + CMDQ_INST_SIZE > pkt->buf_size)) {
 		/*
@@ -129,8 +141,9 @@ static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
 			__func__, (u32)pkt->buf_size);
 		return -ENOMEM;
 	}
+
 	cmd_ptr = pkt->va_base + pkt->cmd_buf_size;
-	(*cmd_ptr) = (u64)((code << CMDQ_OP_CODE_SHIFT) | arg_a) << 32 | arg_b;
+	*cmd_ptr = *inst;
 	pkt->cmd_buf_size += CMDQ_INST_SIZE;
 
 	return 0;
@@ -138,24 +151,42 @@ static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
 
 int cmdq_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset, u32 value)
 {
-	u32 arg_a = (offset & CMDQ_ARG_A_WRITE_MASK) |
-		    (subsys << CMDQ_SUBSYS_SHIFT);
+	struct cmdq_instruction *inst = kzalloc(sizeof(*inst), GFP_KERNEL);
+	int err = 0;
+
+	if (!inst)
+		return -ENOMEM;
+
+	inst->op = CMDQ_CODE_WRITE;
+	inst->value = value;
+	inst->offset = offset;
+	inst->subsys = subsys;
 
-	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WRITE, arg_a, value);
+	err = cmdq_pkt_append_command(pkt, inst);
+	kfree(inst);
+
+	return err;
 }
 EXPORT_SYMBOL(cmdq_pkt_write);
 
 int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
 			u16 offset, u32 value, u32 mask)
 {
-	u32 offset_mask = offset;
+	struct cmdq_instruction *inst = kzalloc(sizeof(*inst), GFP_KERNEL);
+	u16 offset_mask = offset;
 	int err = 0;
 
+	if (!inst)
+		return -ENOMEM;
+
 	if (mask != 0xffffffff) {
-		err = cmdq_pkt_append_command(pkt, CMDQ_CODE_MASK, 0, ~mask);
+		inst->op = CMDQ_CODE_MASK;
+		inst->mask = ~mask;
+		err = cmdq_pkt_append_command(pkt, inst);
 		offset_mask |= CMDQ_WRITE_ENABLE_MASK;
 	}
-	err |= cmdq_pkt_write(pkt, value, subsys, offset_mask);
+	err |= cmdq_pkt_write(pkt, subsys, offset_mask, value);
+	kfree(inst);
 
 	return err;
 }
@@ -163,43 +194,66 @@ EXPORT_SYMBOL(cmdq_pkt_write_mask);
 
 int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
 {
-	u32 arg_b;
+	struct cmdq_instruction *inst = kzalloc(sizeof(*inst), GFP_KERNEL);
+	int err = 0;
+
+	if (!inst)
+		return -ENOMEM;
 
 	if (event >= CMDQ_MAX_EVENT)
 		return -EINVAL;
 
-	/*
-	 * WFE arg_b
-	 * bit 0-11: wait value
-	 * bit 15: 1 - wait, 0 - no wait
-	 * bit 16-27: update value
-	 * bit 31: 1 - update, 0 - no update
-	 */
-	arg_b = CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE;
+	inst->op = CMDQ_CODE_WFE;
+	inst->value = CMDQ_WFE_OPTION;
+	inst->event = event;
 
-	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WFE, event, arg_b);
+	err = cmdq_pkt_append_command(pkt, inst);
+	kfree(inst);
+
+	return err;
 }
 EXPORT_SYMBOL(cmdq_pkt_wfe);
 
 int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
 {
+	struct cmdq_instruction *inst = kzalloc(sizeof(*inst), GFP_KERNEL);
+	int err = 0;
+
+	if (!inst)
+		return -ENOMEM;
+
 	if (event >= CMDQ_MAX_EVENT)
 		return -EINVAL;
 
-	return cmdq_pkt_append_command(pkt, CMDQ_CODE_WFE, event,
-				       CMDQ_WFE_UPDATE);
+	inst->op = CMDQ_CODE_WFE;
+	inst->value = CMDQ_WFE_UPDATE;
+	inst->event = event;
+
+	err = cmdq_pkt_append_command(pkt, inst);
+	kfree(inst);
+
+	return err;
 }
 EXPORT_SYMBOL(cmdq_pkt_clear_event);
 
 static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
 {
-	int err;
+	struct cmdq_instruction *inst = kzalloc(sizeof(*inst), GFP_KERNEL);
+	int err = 0;
+
+	if (!inst)
+		return -ENOMEM;
 
 	/* insert EOC and generate IRQ for each command iteration */
-	err = cmdq_pkt_append_command(pkt, CMDQ_CODE_EOC, 0, CMDQ_EOC_IRQ_EN);
+	inst->op = CMDQ_CODE_EOC;
+	inst->value = CMDQ_EOC_IRQ_EN;
+	err = cmdq_pkt_append_command(pkt, inst);
 
 	/* JUMP to end */
-	err |= cmdq_pkt_append_command(pkt, CMDQ_CODE_JUMP, 0, CMDQ_JUMP_PASS);
+	inst->op = CMDQ_CODE_JUMP;
+	inst->value = CMDQ_JUMP_PASS;
+	err |= cmdq_pkt_append_command(pkt, inst);
+	kfree(inst);
 
 	return err;
 }
diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
index e6f54ef6698b..678760548791 100644
--- a/include/linux/mailbox/mtk-cmdq-mailbox.h
+++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
@@ -20,6 +20,16 @@
 #define CMDQ_WFE_WAIT			BIT(15)
 #define CMDQ_WFE_WAIT_VALUE		0x1
 
+/*
+ * WFE arg_b
+ * bit 0-11: wait value
+ * bit 15: 1 - wait, 0 - no wait
+ * bit 16-27: update value
+ * bit 31: 1 - update, 0 - no update
+ */
+#define CMDQ_WFE_OPTION			(CMDQ_WFE_UPDATE | CMDQ_WFE_WAIT | \
+					CMDQ_WFE_WAIT_VALUE)
+
 /** cmdq event maximum */
 #define CMDQ_MAX_EVENT			0x3ff
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
