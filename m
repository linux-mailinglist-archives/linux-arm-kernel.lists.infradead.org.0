Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639B54202D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 10:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQ6K3SnnQ49Q2f6K3AuRIMcXnlygQySrPVCanzFyFEI=; b=EprXUe8oUd9toV
	Rycl5TQkehGQ04AGlx35b47ThVdr7Ma5hw/yhVnTRnKXNiTk95Cix5KXz4S6j3aJ2WXVqAkiyupcu
	36fqXO33zvm2iAtb30p+2H+7vNNuBh1qylARsTDMotFxYKwYQQuabJVRSUnFY1ITRfs7EICdqT5Jk
	r8Ow6pHwMPJEN5ZJdNPPmN+/DeW9iHWEzaChWrridi3WXXEtOLQUx4UbduC+1Ulby31MwYx0qj8AX
	WsB10RaEjImmLiD/uZR8iRujHc+dANugVGAr9tFXUV3bqEooVd0XrtCTu6RX6tvXbB18pKBi2rgoH
	t7oX7S9axm+8nLVsh7xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haz5Z-0002FP-G0; Wed, 12 Jun 2019 08:58:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haz2h-0008H6-RX; Wed, 12 Jun 2019 08:55:41 +0000
X-UUID: 21af70acb0e04b418a8573cbe9923441-20190612
X-UUID: 21af70acb0e04b418a8573cbe9923441-20190612
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2026465961; Wed, 12 Jun 2019 00:53:54 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 01:53:53 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 16:53:53 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 12 Jun 2019 16:53:53 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v8 11/12] soc: mediatek: cmdq: add cmdq_dev_get_client_reg
 function
Date: Wed, 12 Jun 2019 16:53:48 +0800
Message-ID: <20190612085349.21243-12-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190612085349.21243-1-bibby.hsieh@mediatek.com>
References: <20190612085349.21243-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_015539_921028_AA4CFB12 
X-CRM114-Status: GOOD (  10.96  )
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
 drivers/soc/mediatek/mtk-cmdq-helper.c | 24 ++++++++++++++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  | 20 ++++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 70ad4d806fac..fac4d33fd520 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -27,6 +27,30 @@ struct cmdq_instruction {
 	u8 op;
 };
 
+int cmdq_dev_get_client_reg(struct device *dev,
+			    struct cmdq_client_reg *client_reg, int idx)
+{
+	struct of_phandle_args spec;
+
+	if (!client_reg)
+		return -EINVAL;
+
+	if (of_parse_phandle_with_args(dev->of_node, "mediatek,gce-client-reg",
+				       "#subsys-cells", idx, &spec)) {
+		dev_err(dev, "can't parse gce-client-reg property (%d)", idx);
+
+		return -EINVAL;
+	}
+
+	client_reg->subsys = spec.args[0];
+	client_reg->offset = spec.args[1];
+	client_reg->size = spec.args[2];
+	of_node_put(spec.np);
+
+	return 0;
+}
+EXPORT_SYMBOL(cmdq_dev_get_client_reg);
+
 static void cmdq_client_timeout(struct timer_list *t)
 {
 	struct cmdq_client *client = from_timer(client, t, timer);
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index a345870a6d10..2e2a2274c231 100644
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
@@ -142,4 +148,18 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
  */
 int cmdq_pkt_flush(struct cmdq_pkt *pkt);
 
+/**
+ * cmdq_dev_get_client_reg() - parse cmdq client reg from the device node of CMDQ client
+ * @dev:	device of CMDQ mailbox clienti
+ * @client_reg: CMDQ client reg pointer
+ * @idx:	the index of desired reg
+ *
+ * Return: 0 for success; else the error code is returned
+ *
+ * Help CMDQ client pasing the cmdq client reg
+ * from the device node of CMDQ client.
+ */
+int cmdq_dev_get_client_reg(struct device *dev,
+			    struct cmdq_client_reg *client_reg, int idx);
+
 #endif	/* __MTK_CMDQ_H__ */
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
