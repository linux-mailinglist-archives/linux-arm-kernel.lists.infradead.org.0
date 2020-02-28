Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 151CA1738AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 14:47:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6ydDASIP5YTzkKajDP+gyiqPXCg/GLQI/vrXkVlDIc=; b=lDg7Q6l5IFqch+
	nYVrO6Uve25+Stwab28xJcv9tT/73Kuf54a9RyEhoUWCS3Iv543QMD0hvuwR9ojFAaGCh0Y0aC31h
	8T7Hq9JKVp20656EKYUAPlR0yZHHJy8nmcrz99eQq4ipNqnmF5xuV2dnBWNnafbaR6UeDxYNSQeVy
	UJZYXZQy94WgtqU6O2GV9TU5Pk5unbSR0q2jqwKhRlcFkzAONZlgKOvUJBbDEcXMkp2eONuDAKqd/
	ENcYr6jKQxJK2Gfg1IA/GfUcRBuIj9Sz/gzQMXvRk19T0cn0DAHvgIr7qkZk5Ok/tznyRgelvu89a
	WcclPcjY/0TNkFaHJJyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7fyd-00012O-6I; Fri, 28 Feb 2020 13:46:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7fx7-00071a-Gh; Fri, 28 Feb 2020 13:45:20 +0000
X-UUID: f41b41714b0e44b3a891d0a359992cc2-20200228
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=6UQiazPp6mEi0e2sLZd+ePjNTwzK31Dm31hGd7uJBTw=; 
 b=QYfI9vPXycwyT1vNFOOikXtwVnSeIGLvcdSktIt5Mc87py9viuXSZ9nz304YA3v+wqFN8mVlgrKZ8D2CqHwAJ5T05tPc/n1mT6joZWCzEslpqsgWXwbSaRMvw/W8mFfiMk4IZIftYZ2OIrQy1gbASTNiXjEVlTo1Bf3d8iW6bh0=;
X-UUID: f41b41714b0e44b3a891d0a359992cc2-20200228
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1052238108; Fri, 28 Feb 2020 05:45:08 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 05:45:50 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 21:44:01 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 28 Feb 2020 21:45:04 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Jassi Brar <jassisinghbrar@gmail.com>
Subject: [PATCH v3 07/13] soc: mediatek: cmdq: add write_s function
Date: Fri, 28 Feb 2020 21:44:15 +0800
Message-ID: <1582897461-15105-9-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1582897461-15105-1-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1582897461-15105-1-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_054517_692306_10F9E405 
X-CRM114-Status: GOOD (  13.06  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>,
 Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Ming-Fan Chen <ming-fan.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add write_s function in cmdq helper functions which
writes value contains in internal register to address
with large dma access support.

Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c   | 34 +++++++++++++++++++++++-
 include/linux/mailbox/mtk-cmdq-mailbox.h |  2 ++
 include/linux/soc/mediatek/mtk-cmdq.h    | 20 ++++++++++++++
 3 files changed, 55 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 8342a5c94bc7..68b42c935fe6 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -18,6 +18,10 @@ struct cmdq_instruction {
 	union {
 		u32 value;
 		u32 mask;
+		struct {
+			u16 arg_c;
+			u16 src_reg;
+		};
 	};
 	union {
 		u16 offset;
@@ -29,7 +33,7 @@ struct cmdq_instruction {
 		struct {
 			u8 sop:5;
 			u8 arg_c_t:1;
-			u8 arg_b_t:1;
+			u8 src_t:1;
 			u8 dst_t:1;
 		};
 	};
@@ -222,6 +226,34 @@ int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
 }
 EXPORT_SYMBOL(cmdq_pkt_write_mask);
 
+int cmdq_pkt_write_s(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
+		     u16 addr_low, u16 src_reg_idx, u32 mask)
+{
+	struct cmdq_instruction inst = { {0} };
+	int err;
+
+	if (mask != U32_MAX) {
+		inst.op = CMDQ_CODE_MASK;
+		inst.mask = ~mask;
+		err = cmdq_pkt_append_command(pkt, inst);
+		if (err < 0)
+			return err;
+
+		inst.mask = 0;
+		inst.op = CMDQ_CODE_WRITE_S_MASK;
+	} else {
+		inst.op = CMDQ_CODE_WRITE_S;
+	}
+
+	inst.src_t = CMDQ_REG_TYPE;
+	inst.sop = high_addr_reg_idx;
+	inst.offset = addr_low;
+	inst.src_reg = src_reg_idx;
+
+	return cmdq_pkt_append_command(pkt, inst);
+}
+EXPORT_SYMBOL(cmdq_pkt_write_s);
+
 int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
 {
 	struct cmdq_instruction inst = { {0} };
diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
index 121c3bb6d3de..8ef87e1bd03b 100644
--- a/include/linux/mailbox/mtk-cmdq-mailbox.h
+++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
@@ -59,6 +59,8 @@ enum cmdq_code {
 	CMDQ_CODE_JUMP = 0x10,
 	CMDQ_CODE_WFE = 0x20,
 	CMDQ_CODE_EOC = 0x40,
+	CMDQ_CODE_WRITE_S = 0x90,
+	CMDQ_CODE_WRITE_S_MASK = 0x91,
 	CMDQ_CODE_LOGIC = 0xa0,
 };
 
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index 83340211e1d3..c72d826d8934 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -12,6 +12,8 @@
 #include <linux/timer.h>
 
 #define CMDQ_NO_TIMEOUT		0xffffffffu
+#define CMDQ_ADDR_HIGH(addr)	((u32)(((addr) >> 16) & GENMASK(31, 0)))
+#define CMDQ_ADDR_LOW(addr)	((u16)(addr) | BIT(1))
 
 struct cmdq_pkt;
 
@@ -102,6 +104,24 @@ int cmdq_pkt_write(struct cmdq_pkt *pkt, u8 subsys, u16 offset, u32 value);
 int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u8 subsys,
 			u16 offset, u32 value, u32 mask);
 
+/**
+ * cmdq_pkt_write_s() - append write_s command to the CMDQ packet
+ * @pkt:	the CMDQ packet
+ * @high_addr_reg_idx:	internal regisger ID which contains high address of pa
+ * @addr_low:	low address of pa
+ * @src_reg_idx:	the CMDQ internal register ID which cache source value
+ * @mask:	the specified target address mask, use U32_MAX if no need
+ *
+ * Return: 0 for success; else the error code is returned
+ *
+ * Support write value to physical address without subsys. Use CMDQ_ADDR_HIGH()
+ * to get high addrees and call cmdq_pkt_assign() to assign value into internal
+ * reg. Also use CMDQ_ADDR_LOW() to get low address for addr_low parameterwhen
+ * call to this function.
+ */
+int cmdq_pkt_write_s(struct cmdq_pkt *pkt, u16 high_addr_reg_idx,
+		     u16 addr_low, u16 src_reg_idx, u32 mask);
+
 /**
  * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet
  * @pkt:	the CMDQ packet
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
