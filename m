Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B80F010A880
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 03:03:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXBvO6M3F6qMFYTbcJZOXaqmPN0R9APF9z3tO/M15zY=; b=HGC8dFfCfoXDmZ
	aHJoU72Z8knSNymQQjWkwNl8KvnGQdzlF2NzirlulFsiHftD9eAdPDNN8Ww1h/oxBqZK163rxPgSW
	JzrEoaELQY/Dm25eyqNRcScP9Wo/DbFXnzrrUXlo62yULp5R1FoQWmA7Tg4VjjV9awTXpTlfwUWUQ
	P/Hc6Oo74DzM1TVTqfBUij4zayzAJvBhQ6S0AmEPcwynTzrgpdu7CXXvyKVRmBRTJdXJvg0OSQyQK
	Jn3auR1LLYwf8gnxfnLhD6pfMTX0VadJR0c22rtfKpdx8+KIqrlN3YZwuAS/dSmP6w627vFjyE8A2
	okU+ACeYQIMTydSIU2rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZmfX-0000mn-3a; Wed, 27 Nov 2019 02:03:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZmbz-0004eE-U7; Wed, 27 Nov 2019 01:59:25 +0000
X-UUID: 76376beca2134b358c08c9e326e7efa9-20191126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=IWV6i4XvbNsjDusAu0aWVFucdSP8lwDUrIG+cdBLhtE=; 
 b=Om+3XAqmdPSSbgfaLsfARCc6J4XMXtgcSLyOO4Vr0srhVVnHawhZJZ5L1ziW5cE0MhRYIDUKIJoVE8oy2vjG74QgQxSxafiraJqIJ/lHRArr3chobR2GMKLykEQ5ZhUeen/g0Ruoz8paF6uuOQLml7hDrM7xelvP75339O6oZng=;
X-UUID: 76376beca2134b358c08c9e326e7efa9-20191126
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1502691810; Tue, 26 Nov 2019 17:59:20 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 17:59:52 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 09:58:45 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 27 Nov 2019 09:58:20 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Jassi Brar <jassisinghbrar@gmail.com>
Subject: [PATCH v2 14/14] soc: mediatek: cmdq: add set event function
Date: Wed, 27 Nov 2019 09:58:57 +0800
Message-ID: <1574819937-6246-16-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: C035F1AD24EF99F5DCAC69C08201CE2B3B8D6D4B7766512DE3B8DB859AFF436D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_175924_007012_73C70672 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add set event function in cmdq helper functions to set specific event.

Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c   | 15 +++++++++++++++
 include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
 include/linux/soc/mediatek/mtk-cmdq.h    |  9 +++++++++
 3 files changed, 25 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 6f270fadfb50..07c6ecc75bdd 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -360,6 +360,21 @@ int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
 }
 EXPORT_SYMBOL(cmdq_pkt_clear_event);
 
+int cmdq_pkt_set_event(struct cmdq_pkt *pkt, u16 event)
+{
+	struct cmdq_instruction inst = { {0} };
+
+	if (event >= CMDQ_MAX_EVENT)
+		return -EINVAL;
+
+	inst.op = CMDQ_CODE_WFE;
+	inst.value = CMDQ_WFE_UPDATE | CMDQ_WFE_UPDATE_VALUE;
+	inst.event = event;
+
+	return cmdq_pkt_append_command(pkt, inst);
+}
+EXPORT_SYMBOL(cmdq_pkt_set_event);
+
 int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
 		  u16 offset, u32 value)
 {
diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
index 3f6bc0dfd5da..dbedda6cfa91 100644
--- a/include/linux/mailbox/mtk-cmdq-mailbox.h
+++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
@@ -17,6 +17,7 @@
 #define CMDQ_JUMP_PASS			CMDQ_INST_SIZE
 
 #define CMDQ_WFE_UPDATE			BIT(31)
+#define CMDQ_WFE_UPDATE_VALUE		BIT(16)
 #define CMDQ_WFE_WAIT			BIT(15)
 #define CMDQ_WFE_WAIT_VALUE		0x1
 
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index 40bc61ad8d31..f1144faab582 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -168,6 +168,15 @@ int cmdq_pkt_wait_no_clear(struct cmdq_pkt *pkt, u16 event);
  */
 int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event);
 
+/**
+ * cmdq_pkt_set_event() - append set event command to the CMDQ packet
+ * @pkt:	the CMDQ packet
+ * @event:	the desired event to be set
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_pkt_set_event(struct cmdq_pkt *pkt, u16 event);
+
 /**
  * cmdq_pkt_poll() - Append polling command to the CMDQ packet, ask GCE to
  *		     execute an instruction that wait for a specified
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
