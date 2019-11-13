Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 027EAFA6A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 03:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t4aJpnvbdv4jn/y9Me1MuadxUu4Ff5rVaYYlEf6EEHs=; b=lpPFORT2eG+KgW
	K94S7mKX8kWTIj3F6cFp5ugmvRE0ry2Ub9Jr73KqOczj4uy6AA5vvt9T8bn+LK0YV99IB58yZLijy
	q8YtFMqfEYOFJe5HF5QTSb/+9+i9QuEzbwO6IX7koOMb15OCICUNRa24Bj4665KGQDHzZX18WkzVp
	nVO6WviJNAjSHPwZ5ENhTQBiL8+2e5KyVJwDMqJxK/hQiQ45tjJIo+bR1fRht6oAxrolFlhBqAN5v
	e05ZRZa1ISOJcVr2XCAYxdBU+IliXl23iLRfIK3ETd5Ua7RqlgC4hGTUbQRy7X0CFfpQ5kzhsTyfC
	7jusIkeFVr2S5mg58Zmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUiZC-0003Xm-Je; Wed, 13 Nov 2019 02:39:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUiYq-0003O6-Ju; Wed, 13 Nov 2019 02:39:14 +0000
X-UUID: 45f55120e92b43ac9ac900be0bcbbad9-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=c0lf9YoTwyET62YRCT3bvlbcE7Psq0UHusE+Kdc19RM=; 
 b=R5TAl8gZdUBAvCDA2UYeZ5slzYUyoX5OML+PnaLIw+gBfwg1KkcqCzx26LqaD+B/1KBt5y8hMXbhrc5AA4NWRV4FBnTYI6LfP92tPZkPIxQndUiNqW6ksx3JToZoWKArqbeFtzGIohHePw7sfKFumagRDlrPAHV33kA7XRXhMF4=;
X-UUID: 45f55120e92b43ac9ac900be0bcbbad9-20191112
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1144927531; Tue, 12 Nov 2019 18:39:05 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 18:38:45 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 13 Nov 2019 10:38:44 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 13 Nov 2019 10:38:44 +0800
From: MarkLee <Mark-MC.Lee@mediatek.com>
To: "David S. Miller" <davem@davemloft.net>, Sean Wang
 <sean.wang@mediatek.com>, John Crispin <john@phrozen.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH net,
 v3 1/3] net: ethernet: mediatek: Integrate GDM/PSE setup operations
Date: Wed, 13 Nov 2019 10:38:42 +0800
Message-ID: <20191113023844.17800-2-Mark-MC.Lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191113023844.17800-1-Mark-MC.Lee@mediatek.com>
References: <20191113023844.17800-1-Mark-MC.Lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_183912_661893_F9D2BF73 
X-CRM114-Status: GOOD (  12.22  )
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
v2->v3:
* Put spaces before and after the comment sentence

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
+	/* Reset and enable PSE */
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
