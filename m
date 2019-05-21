Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7F424586
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVHWokq/E20e7R/8NEzzIgWNJZqa2tALAsN4xACaeuw=; b=brMFUCWeLY307F
	vpK6i0QZm1ehjMlmuDvEThJxam14DkXXIF0WHTiX+88xHBJ2MQrD04waU6Ndc/GMPK0wf9OJUJTob
	S9bT2IXO8mSbfRQTZFPWyY1KZmRkZEQb5u7fSZyRYGU1OmJgQe5p3zKO97qbGPnuV4TIJF/g9Y2Lk
	KE8Iq7Iu3i1y0SG2vLwLm4oL27zQpluWKCgZdfb1U9tyr9b1iLNq7h0VFViHSbw2i8OiiUY+o/uuM
	FWQ61kSkRWd9kKZBytaCV0IZovlCDOlZA+8MoIP5aWb2cLT/1MD2jT584322AGbBJRIkq4q+HbQOQ
	rxKsWCbMpDaLM6V2JMHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStLg-0006Il-Co; Tue, 21 May 2019 01:13:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStJl-00041L-W3; Tue, 21 May 2019 01:12:03 +0000
X-UUID: 0f2b2ecf5a8840149db05e46ca355457-20190520
X-UUID: 0f2b2ecf5a8840149db05e46ca355457-20190520
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1528710066; Mon, 20 May 2019 17:11:20 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 18:11:19 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 09:11:12 +0800
Received: from mtkslt302.mediatek.inc (10.21.14.115) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 21 May 2019 09:11:12 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v7 11/12] soc: mediatek: cmdq: add cmdq_dev_get_client_reg
 function
Date: Tue, 21 May 2019 09:11:07 +0800
Message-ID: <20190521011108.40428-12-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190521011108.40428-1-bibby.hsieh@mediatek.com>
References: <20190521011108.40428-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: EB31BCC285E1AB052BEA5788C4AF42BA4F51DFC824E3E5B86A20834AD3655F012000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_181150_454275_8B14D3C0 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GCE cannot know the register base address, this function
can help cmdq client to get the cmdq_client_reg structure.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c | 25 +++++++++++++++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  | 18 ++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 70ad4d806fac..815845bb5982 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -27,6 +27,31 @@ struct cmdq_instruction {
 	u8 op;
 };
 
+struct cmdq_client_reg  *cmdq_dev_get_client_reg(struct device *dev, int idx)
+{
+	struct cmdq_client_reg *client_reg;
+	struct of_phandle_args spec;
+
+	client_reg  = devm_kzalloc(dev, sizeof(*client_reg), GFP_KERNEL);
+	if (!client_reg)
+		return NULL;
+
+	if (of_parse_phandle_with_args(dev->of_node, "mediatek,gce-client-reg",
+				       "#subsys-cells", idx, &spec)) {
+		dev_err(dev, "can't parse gce-client-reg property (%d)", idx);
+
+		return NULL;
+	}
+
+	client_reg->subsys = spec.args[0];
+	client_reg->offset = spec.args[1];
+	client_reg->size = spec.args[2];
+	of_node_put(spec.np);
+
+	return client_reg;
+}
+EXPORT_SYMBOL(cmdq_dev_get_client_reg);
+
 static void cmdq_client_timeout(struct timer_list *t)
 {
 	struct cmdq_client *client = from_timer(client, t, timer);
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index a345870a6d10..d0dea3780f7a 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -15,6 +15,12 @@
 
 struct cmdq_pkt;
 
+struct cmdq_client_reg {
+	u8 subsys;
+	u16 offset;
+	u16 size;
+};
+
 struct cmdq_client {
 	spinlock_t lock;
 	u32 pkt_cnt;
@@ -142,4 +148,16 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
  */
 int cmdq_pkt_flush(struct cmdq_pkt *pkt);
 
+/**
+ * cmdq_dev_get_client_reg() - parse cmdq client reg from the device node of CMDQ client
+ * @dev:	device of CMDQ mailbox client
+ * @idx:	the index of desired reg
+ *
+ * Return: CMDQ client reg pointer
+ *
+ * Help CMDQ client pasing the cmdq client reg
+ * from the device node of CMDQ client.
+ */
+struct cmdq_client_reg  *cmdq_dev_get_client_reg(struct device *dev, int idx);
+
 #endif	/* __MTK_CMDQ_H__ */
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
