Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4E3E29DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 07:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/EEAKCgK/ixL8Y7g1xSWKebxQ+9YN1Bv5a/N3pFj7Y=; b=ucN6HlzsrG041O
	9mjUqoI2fCePViYgSRXYQWMuZ+x5MIcdXlcnndD/Hbn0Di+jswiBVmDV84CPwbSDoi1AUWGCAEYZX
	Yn2QLqXXlwENuaWq+lwYb/44F8gCPtdEQbf9j4mOTxU7sCU+y88/gYsSZ0xSno2YCWuX6eJI9vQ+Y
	bX5ouQXp2zDnzBkjookmvhrHbidmJqGhykRt2thLy4R86L800X7bmHO+YKc/36mpJEsLjm9O9G57d
	hDB//K1a2nrNDggaFZNtkvii20q3tGefGZCIzZOxbjScCBsslpCZpUM037xshmpwiOhCyK0Ec+NSE
	D9VKNlzhc5sFer1ImAZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNVfA-0000PW-D0; Thu, 24 Oct 2019 05:27:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNVey-0000OV-8z; Thu, 24 Oct 2019 05:27:47 +0000
X-UUID: 383193d5043d45388abaea7d5a59dcc0-20191023
X-UUID: 383193d5043d45388abaea7d5a59dcc0-20191023
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 828209840; Wed, 23 Oct 2019 21:27:31 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 23 Oct 2019 22:27:33 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 24 Oct 2019 13:27:32 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 24 Oct 2019 13:27:33 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v16 4/5] soc: mediatek: cmdq: add cmdq_dev_get_client_reg
 function
Date: Thu, 24 Oct 2019 13:27:31 +0800
Message-ID: <20191024052732.7767-5-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191024052732.7767-1-bibby.hsieh@mediatek.com>
References: <20191024052732.7767-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_222744_314625_9172F392 
X-CRM114-Status: GOOD (  11.38  )
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
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

GCE cannot know the register base address, this function
can help cmdq client to get the cmdq_client_reg structure.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Reviewed-by: Houlong Wei <houlong.wei@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c | 29 ++++++++++++++++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  | 21 +++++++++++++++++++
 2 files changed, 50 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 8743c6ae7ac5..abfc76ee9cb6 100644
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
+	client_reg->subsys = (u8)spec.args[0];
+	client_reg->offset = (u16)spec.args[1];
+	client_reg->size = (u16)spec.args[2];
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
index 92bd5b5c6341..a74c1d5acdf3 100644
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
@@ -24,6 +30,21 @@ struct cmdq_client {
 	u32 timeout_ms; /* in unit of microsecond */
 };
 
+/**
+ * cmdq_dev_get_client_reg() - parse cmdq client reg from the device
+ *			       node of CMDQ client
+ * @dev:	device of CMDQ mailbox client
+ * @client_reg: CMDQ client reg pointer
+ * @idx:	the index of desired reg
+ *
+ * Return: 0 for success; else the error code is returned
+ *
+ * Help CMDQ client parsing the cmdq client reg
+ * from the device node of CMDQ client.
+ */
+int cmdq_dev_get_client_reg(struct device *dev,
+			    struct cmdq_client_reg *client_reg, int idx);
+
 /**
  * cmdq_mbox_create() - create CMDQ mailbox client and channel
  * @dev:	device of CMDQ mailbox client
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
