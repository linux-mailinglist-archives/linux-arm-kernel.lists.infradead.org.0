Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4B417D38A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 12:03:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4f53tVjkYrCdbPEBi/E8I3npzxz6v2emZVnEbiwoUU=; b=rTgeJD1WAA3s8t
	JDsnK96fx4hyGHalQf6pQ9LXPYH/K2wEYzV39QjTpPwCS9j3q2G2ke3VTdrG4ywVg/QILIpx5mLn6
	8FIobeTQXERfqP/ahspKMDYPrOvj5pB0wo7ZHnFJsZysYrXIF+MC1fUhOlnQuF03LOy+5TjhKC1wK
	LjgNoMSW1fkZsSYJljiXsIp6B6PlhCuu7ygyVFlcGIV4TgZGLmVAQqmXz3WwBAT+BLqFGTbyLbGGV
	vnIlwaWQAoL8L8LqYtqWksUcRyhqsx5iqXvKL4IJB5cdfctbadFSXgI4hjk2kNH+hEbeYc1VNUlAW
	H+7BXh5KtS0KLHnySN3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAtiE-0004ym-Vr; Sun, 08 Mar 2020 11:03:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAti6-0004wc-RM; Sun, 08 Mar 2020 11:03:08 +0000
X-UUID: de2ef16046154aee9a81e240175a873b-20200308
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=1JNePjB6YqDB7fVq03Mwu2OpxYlWObOTYcRp1X0n4oQ=; 
 b=V/tXy159lnDfYPyDJyPl3hAIQkyFHej1CxMw2U9xnhyL+l7b9ker1g2WQZt8YfLn4j0EoNvIaUXuKL68jEgv8WMeh9OYBPuk0bZSCgi9ojIkD8FepElWc2yncbTWX7eNpLjfvfVXTnGRz+zNSGV70m0NPAA2y8J8k2/kj89cAWE=;
X-UUID: de2ef16046154aee9a81e240175a873b-20200308
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 751442353; Sun, 08 Mar 2020 03:03:03 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Mar 2020 03:53:02 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Mar 2020 18:52:06 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 8 Mar 2020 18:52:59 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jassi Brar
 <jassisinghbrar@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, "David
 Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v5 11/13] soc: mediatek: cmdq: add jump function
Date: Sun, 8 Mar 2020 18:52:53 +0800
Message-ID: <1583664775-19382-12-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1583664775-19382-1-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_040306_894110_F6C9C042 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Add jump function so that client can jump to any address which
contains instruction.

Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c | 13 +++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  | 11 +++++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 59bc1164b411..bb5be20fc70a 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -13,6 +13,7 @@
 #define CMDQ_POLL_ENABLE_MASK	BIT(0)
 #define CMDQ_EOC_IRQ_EN		BIT(0)
 #define CMDQ_REG_TYPE		1
+#define CMDQ_JUMP_RELATIVE	1
 
 struct cmdq_instruction {
 	union {
@@ -372,6 +373,18 @@ int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value)
 }
 EXPORT_SYMBOL(cmdq_pkt_assign);
 
+int cmdq_pkt_jump(struct cmdq_pkt *pkt, dma_addr_t addr)
+{
+	struct cmdq_instruction inst = { {0} };
+
+	inst.op = CMDQ_CODE_JUMP;
+	inst.offset = CMDQ_JUMP_RELATIVE;
+	inst.value = addr >>
+		cmdq_mbox_shift(((struct cmdq_client *)pkt->cl)->chan);
+	return cmdq_pkt_append_command(pkt, inst);
+}
+EXPORT_SYMBOL(cmdq_pkt_jump);
+
 int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
 {
 	struct cmdq_instruction inst = { {0} };
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index 99e77155f967..1a6c56f3bec1 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -213,6 +213,17 @@ int cmdq_pkt_poll_mask(struct cmdq_pkt *pkt, u8 subsys,
  */
 int cmdq_pkt_assign(struct cmdq_pkt *pkt, u16 reg_idx, u32 value);
 
+/**
+ * cmdq_pkt_jump() - Append jump command to the CMDQ packet, ask GCE
+ *		     to execute an instruction that change current thread PC to
+ *		     a physical address which should contains more instruction.
+ * @pkt:        the CMDQ packet
+ * @addr:       physical address of target instruction buffer
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_pkt_jump(struct cmdq_pkt *pkt, dma_addr_t addr);
+
 /**
  * cmdq_pkt_finalize() - Append EOC and jump command to pkt.
  * @pkt:	the CMDQ packet
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
