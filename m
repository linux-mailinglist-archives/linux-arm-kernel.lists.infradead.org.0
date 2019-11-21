Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BBB104F08
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 10:17:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQZD4IJ7nooa3s0LzSMegXyApPAleEXmhUKcfImck+M=; b=kOKhn0MhLqC8fI
	7yXcMcMjyKlvB/kqhtxP2cKAOOMBRoKxy5yNHg5nqskLgkm+dJj7MXLY7GJdvw3voMBlZfkKnw/LJ
	KjmQoMTq6+j0sIBvzDL2znHr1n6AMMbonYhN8Hk/N8LO0XbXbrt60X2evrv9RCNhFuAFKoTNV/vHF
	Lt3Ntb2KFEFMXVzVCPTqNPhdRqYFbaLKsRAntRLN2QEZXFB5TRbFPgSbo9dGUIp7/YUruxCWwr3vJ
	SZOa6uGANGsf9htjxaeBtVQSdbsIbvkzADV2Pv87+8acWf4e+K9ZdZIuY5JUL3MVpAeiOOkfOXw68
	v9g4tSOzn/R2PqHZQFDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXiaH-00065D-UL; Thu, 21 Nov 2019 09:17:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXiX1-0001nl-Jo; Thu, 21 Nov 2019 09:13:45 +0000
X-UUID: 5f64757ebefa413a88e1fecb7de96c72-20191121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=z1evitQJPyeiEI/V0SBkkReklkkebIVSw5JGTAaBmCI=; 
 b=KkM142mgYXcBnX2eXoUE+cxMidEiYAQ9xFscxE63O77yVJvIyZG9kcuCD3mZoQLIkUUB2ivnVZcfNRiD5s1N6rB7pMvGXs4dF84rRkV2OxpCgN1ny+wGgzfgsKb3SGA8jNNTNl/Tlvrn+EIeyNd6l4N79Qm1L3gFyTjMuLvAjMo=;
X-UUID: 5f64757ebefa413a88e1fecb7de96c72-20191121
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2042890020; Thu, 21 Nov 2019 01:13:39 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 01:13:44 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 17:13:06 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 21 Nov 2019 17:13:30 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Jassi Brar <jassisinghbrar@gmail.com>
Subject: [PATCH v1 09/12] soc: mediatek: cmdq: add mem move function
Date: Thu, 21 Nov 2019 17:12:29 +0800
Message-ID: <1574327552-11806-10-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574327552-11806-1-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_011343_831971_65CF9F84 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

Add memory move function in cmdq helper functions which helps copy value
between physical address.

Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c |   26 ++++++++++++++++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  |   13 +++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 4c90fed..4235cf8 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -282,6 +282,32 @@ int cmdq_pkt_write_s(struct cmdq_pkt *pkt, dma_addr_t addr,
 }
 EXPORT_SYMBOL(cmdq_pkt_write_s);
 
+int cmdq_pkt_mem_move(struct cmdq_pkt *pkt, phys_addr_t src_addr,
+		      phys_addr_t dst_addr)
+{
+	struct cmdq_instruction inst = { {0} };
+	const u16 dst_reg_idx = CMDQ_SPR_TEMP;
+	const u16 swap_reg_idx = CMDQ_SPR1;
+	int err;
+
+	err = cmdq_pkt_read_s(pkt, src_addr, swap_reg_idx);
+	if (err < 0)
+		return err;
+
+	err = cmdq_pkt_assign(pkt, dst_reg_idx, CMDQ_ADDR_HIGH(dst_addr));
+	if (err < 0)
+		return err;
+
+	inst.op = CMDQ_CODE_WRITE_S;
+	inst.arg_b_t = CMDQ_REG_TYPE;
+	inst.sop = dst_reg_idx;
+	inst.offset = CMDQ_ADDR_LOW(dst_addr);
+	inst.arg_b = swap_reg_idx;
+
+	return cmdq_pkt_append_command(pkt, inst);
+}
+EXPORT_SYMBOL(cmdq_pkt_mem_move);
+
 int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
 {
 	struct cmdq_instruction inst = { {0} };
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index fb48d3c..b3474f2 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -13,6 +13,7 @@
 
 #define CMDQ_NO_TIMEOUT		0xffffffffu
 #define CMDQ_SPR_TEMP		0
+#define CMDQ_SPR1		1
 
 struct cmdq_pkt;
 
@@ -126,6 +127,18 @@ int cmdq_pkt_write_s(struct cmdq_pkt *pkt, dma_addr_t addr,
 		     u32 value, u32 mask);
 
 /**
+ * cmdq_pkt_mem_move() - append read and write commands to copy data from
+ *			 source address to destination address.
+ * @pkt:	the CMDQ packet
+ * @src_addr:	the source physical address
+ * @dst_addr:	the destination physical address
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_pkt_mem_move(struct cmdq_pkt *pkt, phys_addr_t src_addr,
+		      phys_addr_t dst_addr);
+
+/**
  * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet
  * @pkt:	the CMDQ packet
  * @event:	the desired event type to "wait and CLEAR"
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
