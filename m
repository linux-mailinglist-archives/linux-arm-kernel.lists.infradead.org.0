Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BCA15EFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1vJf0FYzyO4Bou7K9P4j0ZuGk1QFKNAbZJaDSTTRTgU=; b=IHx9v4iC4Lem6L
	D6Wm9rfFrYyDynkn69ngxIJyLDzBC0IyjlKLNJycqFaB10HYog+6/i7CTxDqfYPDPTZwq8TSM1U1U
	/3bH6E6mUz14iTZkb8Fj8zuGCTBX2+zCqajnO0bXE7w5ZzGZJJN5vQonZ7VwyDXRVwHXO+aNkXjKB
	tNL6m/TKgMuzd+155tr8PIoEOdY+Hl2hKDQrj+TCRno1C/nxTkmAQJPR58tQ0Kk5Wp+pvNKf34fnU
	FJC2El08ic/J3o2mOHkLDCAkymYGz8CvgzEqF7e5Eu5lDfeo+KDAoONqjkROV0BhaxurMyCHDmY0F
	CmCfiGgOeA9QCHdEwa3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvF5-0001HC-IA; Tue, 07 May 2019 08:14:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvEv-0001EC-2H; Tue, 07 May 2019 08:14:18 +0000
X-UUID: cfa49b2361b94768895972394d082c0e-20190507
X-UUID: cfa49b2361b94768895972394d082c0e-20190507
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1139777762; Tue, 07 May 2019 00:14:08 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 01:14:07 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 16:13:59 +0800
Received: from mtkslt302.mediatek.inc (10.21.14.115) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 7 May 2019 16:13:59 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v5 10/12] soc: mediatek: cmdq: add cmdq_dev_get_subsys function
Date: Tue, 7 May 2019 16:13:53 +0800
Message-ID: <20190507081355.52630-11-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190507081355.52630-1-bibby.hsieh@mediatek.com>
References: <20190507081355.52630-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5C382A61E4101271C98AFB16536E400739E979680D7ED1C6ED76EF41C3F1BA292000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_011417_111668_F68E1065 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>, kendrick.hsu@mediatek.com,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha
 Hauer <kernel@pengutronix.de>, Frederic Chen <Frederic.Chen@mediatek.com>,
 YT Shen <yt.shen@mediatek.com>, Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GCE cannot know the register base address, this function
can help cmdq client to get the relationship of subsys
and register base address.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c | 25 +++++++++++++++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  | 18 ++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 716f8c4f207b..00636ec995e8 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -27,6 +27,31 @@ struct cmdq_instruction {
 	u8 op;
 };
 
+struct cmdq_subsys *cmdq_dev_get_subsys(struct device *dev, int idx)
+{
+	struct cmdq_subsys *subsys;
+	struct of_phandle_args spec;
+
+	subsys = devm_kzalloc(dev, sizeof(*subsys), GFP_KERNEL);
+	if (!subsys)
+		return NULL;
+
+	if (of_parse_phandle_with_args(dev->of_node, "mediatek,gce-client-reg",
+				       "#subsys-cells", idx, &spec)) {
+		dev_err(dev, "can't parse gce-client-reg property");
+
+		return (struct cmdq_subsys *)-ENODEV;
+	}
+
+	subsys->id = spec.args[0];
+	subsys->offset = spec.args[1];
+	subsys->size = spec.args[2];
+	of_node_put(spec.np);
+
+	return subsys;
+}
+EXPORT_SYMBOL(cmdq_dev_get_subsys);
+
 static void cmdq_client_timeout(struct timer_list *t)
 {
 	struct cmdq_client *client = from_timer(client, t, timer);
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index 0651a0bffa54..574006c5cd76 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -15,6 +15,12 @@
 
 struct cmdq_pkt;
 
+struct cmdq_subsys {
+	u8 id;
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
+ * cmdq_dev_get_subsys() - parse sub system from the device node of CMDQ client
+ * @dev:	device of CMDQ mailbox client
+ * @idx:	the index of desired subsys
+ *
+ * Return: CMDQ subsys pointer
+ *
+ * Help CMDQ client pasing the sub system number
+ * from the device node of CMDQ client.
+ */
+struct cmdq_subsys *cmdq_dev_get_subsys(struct device *dev, int idx);
+
 #endif	/* __MTK_CMDQ_H__ */
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
