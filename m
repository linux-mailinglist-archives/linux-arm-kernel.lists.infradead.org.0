Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2946104F02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 10:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iff4Yt0O/91udDI8XlWQNwUztBNNEIhi+s87bgg1G3w=; b=M3n4PghlbQuPWZ
	y6z4CUm/CdM7Dfo1vqL90Dd+5jLdvZ6eldi8zu2GCGO3FjDwZHO7ON/14CBHjCSm92lucK3VUpC4k
	7ibSIT36yWNdnWOmA1C2eJzwz4TswZ6B4LzGt6oAOTgGF5pVnjC1EzJ5CJZVo/CZMaBVgVhRqKWEd
	geJ8n+1zb6iJ6IZ2ehyHsO3/U2di/Rqu1iPxNAUP6EdEk6VfpOJ7XXlSIOEamhP6GXZ3AeNHcJ6L7
	K3VzWAqp1uL3M7Xj6BfWhK9XVvmxSsokAKk8bHaVjGUDVfCqPf0kg1V9A07+bsoUz/LTSphVqENy7
	Pd9KEIkNSOO4HRax2+qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXiZb-0005OV-0a; Thu, 21 Nov 2019 09:16:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXiWx-0001c6-Lu; Thu, 21 Nov 2019 09:13:42 +0000
X-UUID: fa03384213314b3c80b6455febd04410-20191121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=sl45dCqyFBghX7iI92Q7u2tkimKd2NiTQVbQ2SfVmoo=; 
 b=DmginNfCD/7ZrWqMsXN8l371CPx60pRYymb5I75klgB0LDgXwsqNnIu231p9+JTj8Hu0lgYY0sa6VbrXkLjcwPrfGALnoNGI/Jvgt7y9yJsdiQksKURWuAdqo/MB0xd43w5uahnuuByT19fAaoGqbNohjZtXcmuMFZ2YHsgz1Ko=;
X-UUID: fa03384213314b3c80b6455febd04410-20191121
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1043932171; Thu, 21 Nov 2019 01:13:34 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 01:13:39 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 17:13:10 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 21 Nov 2019 17:13:30 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Jassi Brar <jassisinghbrar@gmail.com>
Subject: [PATCH v1 10/12] soc: mediatek: cmdq: add loop function
Date: Thu, 21 Nov 2019 17:12:30 +0800
Message-ID: <1574327552-11806-11-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2C673BA1539CA06C501A936EC27C5308E05B7F846F01518540D3F38435ED2A452000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_011339_994355_AB897654 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>, Dennis
 YC Hsieh <dennis-yc.hsieh@mediatek.com>, linux-mediatek@lists.infradead.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add finalize loop function in cmdq helper functions which loop whole pkt
in gce hardware thread without cpu operation.

Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c |   41 ++++++++++++++++++++++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  |    8 +++++++
 2 files changed, 49 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 4235cf8..3b10241 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -385,12 +385,27 @@ int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
 }
 EXPORT_SYMBOL(cmdq_pkt_assign);
 
+static bool cmdq_pkt_finalized(struct cmdq_pkt *pkt)
+{
+	struct cmdq_instruction *inst;
+
+	if (pkt->cmd_buf_size < 2 * CMDQ_INST_SIZE)
+		return false;
+
+	inst = pkt->va_base + pkt->cmd_buf_size - 2 * CMDQ_INST_SIZE;
+	return inst->op == CMDQ_CODE_EOC;
+}
+
 static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
 {
 	struct cmdq_client *cl = pkt->cl;
 	struct cmdq_instruction inst = { {0} };
 	int err;
 
+	/* do not finalize twice */
+	if (cmdq_pkt_finalized(pkt))
+		return 0;
+
 	/* insert EOC and generate IRQ for each command iteration */
 	inst.op = CMDQ_CODE_EOC;
 	inst.value = CMDQ_EOC_IRQ_EN;
@@ -406,6 +421,32 @@ static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
 	return err;
 }
 
+int cmdq_pkt_finalize_loop(struct cmdq_pkt *pkt)
+{
+	struct cmdq_client *cl = pkt->cl;
+	struct cmdq_instruction inst = { {0} };
+	int err;
+
+	/* do not finalize twice */
+	if (cmdq_pkt_finalized(pkt))
+		return 0;
+
+	/* insert EOC and generate IRQ for each command iteration */
+	inst.op = CMDQ_CODE_EOC;
+	err = cmdq_pkt_append_command(pkt, inst);
+	if (err < 0)
+		return err;
+
+	/* JUMP abaolute to begin */
+	inst.op = CMDQ_CODE_JUMP;
+	inst.offset = 1;
+	inst.value = pkt->pa_base >> cmdq_mbox_shift(cl->chan);
+	err = cmdq_pkt_append_command(pkt, inst);
+
+	return err;
+}
+EXPORT_SYMBOL(cmdq_pkt_finalize_loop);
+
 static void cmdq_pkt_flush_async_cb(struct cmdq_cb_data data)
 {
 	struct cmdq_pkt *pkt = (struct cmdq_pkt *)data.data;
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index b3474f2..77e8944 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -203,6 +203,14 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
 int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value);
 
 /**
+ * cmdq_pkt_finalize_loop() - Append EOC and jump command to loop pkt.
+ * @pkt:	the CMDQ packet
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_pkt_finalize_loop(struct cmdq_pkt *pkt);
+
+/**
  * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
  *                          packet and call back at the end of done packet
  * @pkt:	the CMDQ packet
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
