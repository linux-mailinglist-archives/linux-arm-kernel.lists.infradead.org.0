Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B6610A871
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 03:01:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5O9v0fw2HtqYgVFZyhfyYb90YKADCG0V+fYEWlrXv7s=; b=fL7OQHGiy4x9Dg
	dxq1xndzUlkLB2uyZXMw4Cbd3B7f5CoYWLsVzdUYU0q+1p+0IrNKUfx26xdi/ThzN+OHsC2gK0D3T
	ZErabg3Pmd1aO70wmFt3h5TR7YD0KuIlub63SFmcz3l5lx4myUhHbmDBRG2AIqAOebS8Bz3RENoKn
	jc+4t35O1HeDONAFOyWs1C/EhzFs24eys8M4a6zdFbewS++zEkl2tyYrUadv/wNeazGt0Gfdwnr/z
	7eak+8eFVSliPY1gYHxz2aktXpyBuY240KasmCv7KpiEounsmz0YaYrJcBxuveRjA9GCJnR8sbTLz
	8a9N4ZicSnvVapvPXLJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZmdy-0007Rm-7t; Wed, 27 Nov 2019 02:01:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZmbu-0004Xo-3Y; Wed, 27 Nov 2019 01:59:19 +0000
X-UUID: aac759112781436f9cec9cca66d9423c-20191126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=c04uTlKMAuDikNWMu5PVVMKDbJWfigV3WXc3DE/9nHE=; 
 b=u7xsiua9VVKXCnr2+etrJfxI/MN5Va2VRl6yZ+3gRhZQnmCAutsgQzwNfhrRHvIrcuBcnzwiriYGgVaZ+7DiJPD9LxmJCDj4UQIyIRCZk29z/LsvgscUmqPK3sMvC1wZZ2ilXHAWNA2IzMCw2vdGu9IDUhAVl4fuMEy5eXLy8hM=;
X-UUID: aac759112781436f9cec9cca66d9423c-20191126
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dennis-yc.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 698990963; Tue, 26 Nov 2019 17:59:13 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 17:59:45 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 09:59:02 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 27 Nov 2019 09:58:20 +0800
From: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Jassi Brar <jassisinghbrar@gmail.com>
Subject: [PATCH v2 13/14] soc: mediatek: cmdq: add wait no clear event function
Date: Wed, 27 Nov 2019 09:58:56 +0800
Message-ID: <1574819937-6246-15-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_175918_181580_8527F39C 
X-CRM114-Status: GOOD (  10.49  )
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

Add wait no clear event function in cmdq helper functions to wait specific
event without clear to 0 after receive it.

Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c | 15 +++++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  | 10 ++++++++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 10a9b4481e58..6f270fadfb50 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -330,6 +330,21 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event)
 }
 EXPORT_SYMBOL(cmdq_pkt_wfe);
 
+int cmdq_pkt_wait_no_clear(struct cmdq_pkt *pkt, u16 event)
+{
+	struct cmdq_instruction inst = { {0} };
+
+	if (event >= CMDQ_MAX_EVENT)
+		return -EINVAL;
+
+	inst.op = CMDQ_CODE_WFE;
+	inst.value = CMDQ_WFE_WAIT | CMDQ_WFE_WAIT_VALUE;
+	inst.event = event;
+
+	return cmdq_pkt_append_command(pkt, inst);
+}
+EXPORT_SYMBOL(cmdq_pkt_wait_no_clear);
+
 int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
 {
 	struct cmdq_instruction inst = { {0} };
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index d15d8c941992..40bc61ad8d31 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -149,6 +149,16 @@ int cmdq_pkt_write_s_value(struct cmdq_pkt *pkt, dma_addr_t addr,
  */
 int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
 
+/**
+ * cmdq_pkt_wait_no_clear() - Append wait for event command to the CMDQ packet,
+ *			      without update event to 0 after receive it.
+ * @pkt:	the CMDQ packet
+ * @event:	the desired event type to wait
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_pkt_wait_no_clear(struct cmdq_pkt *pkt, u16 event);
+
 /**
  * cmdq_pkt_clear_event() - append clear event command to the CMDQ packet
  * @pkt:	the CMDQ packet
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
