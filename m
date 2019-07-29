Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C091785BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5iHXZjgzn7Gt8UjpU++ccDl4UJCGIGI9Ihb3Q4iHIQ=; b=IbqLwu3z2CGe81
	kwbsMtUIdevlcgwsaTMUqNjnFeW/4mZdGufTRhnACAPIY7P7vqIz4jpYCSXzC2IpI42Y0XnJ5K+jw
	Q0kAa58lzsDEwk/JYrOlaD3naEaNq6jyzaCFt04/BU2moDl1ainPpemUySyR139jUzUu76SI8jAp9
	0nCNAtn95H+tpcf+GSAlr3KLJPiENVjNzSW1wsVBSCq86hagxWU8yp08pnXVnl9xkDMO/Ihb/2J1l
	yWNXf0zrw7Oovr8JaimurjLZvjKNMtd/qQ2e01OTFS5Z5VOI9DaAbwlS8w8V9lj10NnIHdY9AKeq9
	w4zqy5gRiHj0ApcwM9rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzgP-0005dU-DS; Mon, 29 Jul 2019 07:02:57 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzez-0005EQ-Sz; Mon, 29 Jul 2019 07:01:31 +0000
X-UUID: 0699e42ef2bf4dceb7ddc1aa3544dc15-20190728
X-UUID: 0699e42ef2bf4dceb7ddc1aa3544dc15-20190728
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1150757374; Sun, 28 Jul 2019 23:01:12 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Jul 2019 00:01:11 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Jul 2019 15:01:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 29 Jul 2019 15:01:10 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v11 11/12] soc: mediatek: cmdq: add cmdq_dev_get_client_reg
 function
Date: Mon, 29 Jul 2019 15:01:05 +0800
Message-ID: <20190729070106.9332-12-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190729070106.9332-1-bibby.hsieh@mediatek.com>
References: <20190729070106.9332-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: CB56927D4CC28A63525F028F4DC4F07DFE94C5F00B93375D6BEF3C19DE4AB2A22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_000129_944046_58C69F90 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 drivers/soc/mediatek/mtk-cmdq-helper.c | 29 ++++++++++++++++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  | 21 +++++++++++++++++++
 2 files changed, 50 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 70ad4d806fac..9695b75cfc89 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -27,6 +27,35 @@ struct cmdq_instruction {
 	u8 op;
 };
 
+int cmdq_dev_get_client_reg(struct device *dev,
+			    struct cmdq_client_reg *client_reg, int idx)
+{
+	struct of_phandle_args spec;
+	int err;
+
+	if (!client_reg)
+		return -ENOENT;
+
+	err = of_parse_phandle_with_fixed_args(dev->of_node,
+					       "mediatek,gce-client-reg",
+					       3, idx, &spec);
+	if (err < 0) {
+		dev_err(dev,
+			"error %d can't parse gce-client-reg property (%d)",
+			err, idx);
+
+		return err;
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
index a345870a6d10..be402c4c740e 100644
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
@@ -142,4 +148,19 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
  */
 int cmdq_pkt_flush(struct cmdq_pkt *pkt);
 
+/**
+ * cmdq_dev_get_client_reg() - parse cmdq client reg from the device
+ *			       node of CMDQ client
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
