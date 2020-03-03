Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E40177514
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 12:09:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnPVVIo0PTMceqgzzgIATFZFANCG0x/eUEgLbROSxrg=; b=hXrPkQYH10A7mm
	LAZQ2lkfP5mY0CGgw8z8MxiUKIGoAKCzxoPsfvUY/d14LtBxu1xM0IdahxhoOyRe2J9QQfLNfzGoA
	m5xriiU0ZMZs9aX6+pepgAFmvIvae6pFMlxIMKx2KY/Kmh1aLDFLGyQW0hknA7k9XUBn+cv5bV+SE
	sGB338gyZmx/PimjDahMIUFSehvCOb82897rEyggFYRGzf/IMBmP/CFIK6CqapTcR/4WH932DZTYp
	Z+ZPaLAz8GKFNfyFeczGjCO9m7tBz34OKO7UtfjcFuwlYlnDzAtC3jfdWa47iUieAclsnUmQVqJCw
	vWpi1KAu0VFNT7jPLgMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j95Qf-000254-8k; Tue, 03 Mar 2020 11:09:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j95Py-0001Wu-HH; Tue, 03 Mar 2020 11:08:56 +0000
X-UUID: 575773372d5b47539df787034d8b3956-20200303
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=8AiHAdYJBCibSgwBrJh33Kf+JbDiJkLpjqc838PjuJM=; 
 b=PsDHRE7qdpkdn7lkqbMosGkIRO33bOjRzLTRRsY9CWTTLPKCgt9K8FXtRY45N+YXM9FKVkGy6I+6GTFV9hXxH9KXRsKkmsT+1NPPwSeIs7mUBOZzCFhM5IclXieHbMLyZT+uj3TC//rO0Gs57j/uyOk48ZY91TsbZWp0iBPkCBY=;
X-UUID: 575773372d5b47539df787034d8b3956-20200303
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1984903975; Tue, 03 Mar 2020 03:08:51 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 02:58:49 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 18:57:48 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 3 Mar 2020 18:58:11 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jassi Brar
 <jassisinghbrar@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, "David
 Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v4 06/13] soc: mediatek: cmdq: add assign function
Date: Tue, 3 Mar 2020 18:58:38 +0800
Message-ID: <1583233125-7827-7-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1583233125-7827-1-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1583233125-7827-1-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_030854_588600_77453275 
X-CRM114-Status: GOOD (  12.88  )
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
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 HS Liao <hs.liao@mediatek.com>, Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add assign function in cmdq helper which assign constant value into
internal register by index.

Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c   | 24 +++++++++++++++++++++++-
 include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
 include/linux/soc/mediatek/mtk-cmdq.h    | 14 ++++++++++++++
 3 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 98f23ba3ba47..33153d17c9d9 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -12,6 +12,7 @@
 #define CMDQ_WRITE_ENABLE_MASK	BIT(0)
 #define CMDQ_POLL_ENABLE_MASK	BIT(0)
 #define CMDQ_EOC_IRQ_EN		BIT(0)
+#define CMDQ_REG_TYPE		1
 
 struct cmdq_instruction {
 	union {
@@ -21,8 +22,17 @@ struct cmdq_instruction {
 	union {
 		u16 offset;
 		u16 event;
+		u16 reg_dst;
+	};
+	union {
+		u8 subsys;
+		struct {
+			u8 sop:5;
+			u8 arg_c_t:1;
+			u8 arg_b_t:1;
+			u8 dst_t:1;
+		};
 	};
-	u8 subsys;
 	u8 op;
 };
 
@@ -277,6 +287,18 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
 }
 EXPORT_SYMBOL(cmdq_pkt_poll_mask);
 
+int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
+{
+	struct cmdq_instruction inst = { {0} };
+
+	inst.op = CMDQ_CODE_LOGIC;
+	inst.dst_t = CMDQ_REG_TYPE;
+	inst.reg_dst = reg_idx;
+	inst.value = value;
+	return cmdq_pkt_append_command(pkt, inst);
+}
+EXPORT_SYMBOL(cmdq_pkt_assign);
+
 static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
 {
 	struct cmdq_instruction inst = { {0} };
diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
index dfe5b2eb85cc..121c3bb6d3de 100644
--- a/include/linux/mailbox/mtk-cmdq-mailbox.h
+++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
@@ -59,6 +59,7 @@ enum cmdq_code {
 	CMDQ_CODE_JUMP = 0x10,
 	CMDQ_CODE_WFE = 0x20,
 	CMDQ_CODE_EOC = 0x40,
+	CMDQ_CODE_LOGIC = 0xa0,
 };
 
 enum cmdq_cb_status {
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index a74c1d5acdf3..83340211e1d3 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -152,6 +152,20 @@ int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
  */
 int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
 		       u16 offset, u32 value, u32 mask);
+
+/**
+ * cmdq_pkt_assign() - Append logic assign command to the CMDQ packet, ask GCE
+ *		       to execute an instruction that set a constant value into
+ *		       internal register and use as value, mask or address in
+ *		       read/write instruction.
+ * @pkt:	the CMDQ packet
+ * @reg_idx:	the CMDQ internal register ID
+ * @value:	the specified value
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value);
+
 /**
  * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
  *                          packet and call back at the end of done packet
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
