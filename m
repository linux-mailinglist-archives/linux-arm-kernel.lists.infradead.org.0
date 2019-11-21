Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F403710484D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 02:54:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whgrbpTaEJxLBTtwj6L4u3xuvnLkE6RNLAY2iRO6iFU=; b=inVaS7FebQIwZp
	5MeGzee+7GvT2VoXDxnSFIn9/2Vtm/kXxSDDyyo8ajUpxPbHonxtWqcjpn1TggPCVX06tmIcTDHdM
	4i3CtFLWmAh9+hSpRg301KdktefV5mxastgfvIy+sb39lMSan7vYslWS+5+23Y6ZMfujPgwuezNbx
	GEDNFFWrCWRQI9xAuJY93/F8ozhh1oJfBsSCAAfRcEm9L1JludrcbZGVYxNlpGlKOetdGTQbIA028
	aeGXqHV5PFI9yp5VycsazJRq9mT57rNV3wsKPGAgAluEhZqGbLpxXkz2a4CbcbjJrOU5DHSr1T3rD
	AbGWOudLszp1+cb3OwMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXbgK-0007Bx-Go; Thu, 21 Nov 2019 01:54:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXbfq-00071z-4P; Thu, 21 Nov 2019 01:54:23 +0000
X-UUID: f0c492da44c44a72bc68ba99854010b7-20191120
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=WMvocRkPUNIcq86Bbk5K92lkihWDnPyFTYn6UTaIqJo=; 
 b=FYHNVgOLAXbXGYcdN/s5BQm29k5fyN2wHI4zMQsGWB3mRKkVp142AHUxeWGmcDg2d2kFpo+JXI/Sc+6uMagUj6wImD400oTuhDdhBjAhzX7UJuUQW52+U5ODbJBV5oA0igw83EqOnoOAPN+zsPd+g+PzebeWMIN2ZhD6gi6Ukh4=;
X-UUID: f0c492da44c44a72bc68ba99854010b7-20191120
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 785640081; Wed, 20 Nov 2019 17:54:15 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 20 Nov 2019 17:54:18 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 09:53:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 21 Nov 2019 09:54:17 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, CK HU <ck.hu@mediatek.com>
Subject: [PATCH v17 5/6] soc: mediatek: cmdq: add cmdq_dev_get_client_reg
 function
Date: Thu, 21 Nov 2019 09:54:09 +0800
Message-ID: <20191121015410.18852-6-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191121015410.18852-1-bibby.hsieh@mediatek.com>
References: <20191121015410.18852-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_175422_179432_0C980AC9 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 9094fda5a8fe..9add0fd5fa6c 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -28,6 +28,35 @@ struct cmdq_instruction {
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
