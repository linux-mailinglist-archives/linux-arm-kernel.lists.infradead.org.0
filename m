Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79414F6EB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:52:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4JUx7o7qVtjVgAhw9rjj2ceU94W0KX7YWrNgf/nul0=; b=ooXe0PhJoo7Fay
	A0t/+bB1JWPiABD5Oc3TQhoqLPMhemK2hhwHcktn8MvGVthmrFfIQj6NoM4qC1apz9Pdc2CtJYYAV
	T9yRT30E4VrFz/CtPS6MR0meqBSkkicTT+4j8cwOn3Nxf9/wRVttIfu1pP4XVlLz3EQTpJgRESFAi
	3ljkPi9u4nHBLPq0PRVQUqJIEg01bvVDC8zaPE3tEowqG/21Ewm7leJh+hK1Y1Qp1NidD+hbFjLM8
	c3Tj6LKQy+Ta9gCuNzAnSGNshvd6T/c91KnOfVwE5BciQQyBjZYhiHTyLUhVGJx7YH50FoidWEh2L
	XUN1qlpQwAfxPOFsH8rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3YQ-00009u-Em; Mon, 11 Nov 2019 06:52:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3Y3-0008Ov-RW; Mon, 11 Nov 2019 06:51:41 +0000
X-UUID: 849852297a0f43c49f3cd7a85105dbc2-20191110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=qynSAl3x/VKKJ0ZHs5xhmevf9UQ9FCm09E5Yqh7E/2A=; 
 b=lcSBSZ8sDEl/en6EXHmRXDhqKN8UIdGXWWI9Nr/uvsuJF5awNFuqxiel/Uz0irD4KKZ1Cmp8SqcKtTQP50Hlm6PRZ+3QGJYECUz27DZkz/VgIe5RBPdnm5x1dy1oKDfbUQErhmRDX2Ew2o1CtpXrGv4mZMWvXtk+q9I5wR1rDn8=;
X-UUID: 849852297a0f43c49f3cd7a85105dbc2-20191110
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 23765847; Sun, 10 Nov 2019 22:51:41 -0800
Received: from mtkmbs05dr.mediatek.inc (172.21.101.97) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 10 Nov 2019 22:51:29 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05dr.mediatek.inc (172.21.101.97) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 11 Nov 2019 14:51:28 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 11 Nov 2019 14:51:28 +0800
From: MarkLee <Mark-MC.Lee@mediatek.com>
To: "David S. Miller" <davem@davemloft.net>, Sean Wang
 <sean.wang@mediatek.com>, John Crispin <john@phrozen.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH net,
 v2 1/3] net: ethernet: mediatek: Integrate GDM/PSE setup operations
Date: Mon, 11 Nov 2019 14:51:27 +0800
Message-ID: <20191111065129.30078-2-Mark-MC.Lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191111065129.30078-1-Mark-MC.Lee@mediatek.com>
References: <20191111065129.30078-1-Mark-MC.Lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_225139_900153_32653852 
X-CRM114-Status: GOOD (  11.53  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Jakub
 Kicinski <jakub.kicinski@netronome.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rene van Dorst <opensource@vdorst.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 MarkLee <Mark-MC.Lee@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Integrate GDM/PSE setup operations into single function "mtk_gdm_config"

Signed-off-by: MarkLee <Mark-MC.Lee@mediatek.com>
--
v1->v2:
* Use the macro "MTK_MAC_COUNT" instead of a magic constant

---
 drivers/net/ethernet/mediatek/mtk_eth_soc.c | 37 +++++++++++++--------
 drivers/net/ethernet/mediatek/mtk_eth_soc.h |  1 +
 2 files changed, 24 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index 703adb96429e..6e7a7fea2f52 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -2180,6 +2180,28 @@ static int mtk_start_dma(struct mtk_eth *eth)
 	return 0;
 }
 
+static void mtk_gdm_config(struct mtk_eth *eth, u32 config)
+{
+	int i;
+
+	for (i = 0; i < MTK_MAC_COUNT; i++) {
+		u32 val = mtk_r32(eth, MTK_GDMA_FWD_CFG(i));
+
+		/* default setup the forward port to send frame to PDMA */
+		val &= ~0xffff;
+
+		/* Enable RX checksum */
+		val |= MTK_GDMA_ICS_EN | MTK_GDMA_TCS_EN | MTK_GDMA_UCS_EN;
+
+		val |= config;
+
+		mtk_w32(eth, val, MTK_GDMA_FWD_CFG(i));
+	}
+	/*Reset and enable PSE*/
+	mtk_w32(eth, RST_GL_PSE, MTK_RST_GL);
+	mtk_w32(eth, 0, MTK_RST_GL);
+}
+
 static int mtk_open(struct net_device *dev)
 {
 	struct mtk_mac *mac = netdev_priv(dev);
@@ -2375,8 +2397,6 @@ static int mtk_hw_init(struct mtk_eth *eth)
 	mtk_w32(eth, 0, MTK_QDMA_DELAY_INT);
 	mtk_tx_irq_disable(eth, ~0);
 	mtk_rx_irq_disable(eth, ~0);
-	mtk_w32(eth, RST_GL_PSE, MTK_RST_GL);
-	mtk_w32(eth, 0, MTK_RST_GL);
 
 	/* FE int grouping */
 	mtk_w32(eth, MTK_TX_DONE_INT, MTK_PDMA_INT_GRP1);
@@ -2385,18 +2405,7 @@ static int mtk_hw_init(struct mtk_eth *eth)
 	mtk_w32(eth, MTK_RX_DONE_INT, MTK_QDMA_INT_GRP2);
 	mtk_w32(eth, 0x21021000, MTK_FE_INT_GRP);
 
-	for (i = 0; i < MTK_MAC_COUNT; i++) {
-		u32 val = mtk_r32(eth, MTK_GDMA_FWD_CFG(i));
-
-		/* setup the forward port to send frame to PDMA */
-		val &= ~0xffff;
-
-		/* Enable RX checksum */
-		val |= MTK_GDMA_ICS_EN | MTK_GDMA_TCS_EN | MTK_GDMA_UCS_EN;
-
-		/* setup the mac dma */
-		mtk_w32(eth, val, MTK_GDMA_FWD_CFG(i));
-	}
+	mtk_gdm_config(eth, MTK_GDMA_TO_PDMA);
 
 	return 0;
 
diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.h b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
index 76bd12cb8150..b16d8d9b196a 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.h
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
@@ -84,6 +84,7 @@
 #define MTK_GDMA_ICS_EN		BIT(22)
 #define MTK_GDMA_TCS_EN		BIT(21)
 #define MTK_GDMA_UCS_EN		BIT(20)
+#define MTK_GDMA_TO_PDMA	0x0
 
 /* Unicast Filter MAC Address Register - Low */
 #define MTK_GDMA_MAC_ADRL(x)	(0x508 + (x * 0x1000))
-- 
2.17.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
