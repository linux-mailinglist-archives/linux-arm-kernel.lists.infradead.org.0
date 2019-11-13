Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D59FA6AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 03:40:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvNJCSRl7cdjtLwjcR2sh2jz9DajV4oMxrujjZqayXA=; b=TBbcgtUy5md2XE
	i7ykqlkrvbyeH/27Kap7BGy5Sww+m2leO0jODEJOrzJnP6KJb4yVrrz9ItjcJKOGlZK89RRPKs1aF
	uZ1/Rl0gwJSWzh9p5GJsnUEpPdfFtLVt1PTdeo7RCEtKDGO32gXCV+r/QbtovyffDLux4w+onZ2eO
	4keGG/iJ1xsl3IkrrU7hGv+DvztzyjtquHyuzj1KCzHx+PrHGzaCThAI6qvQHf3trmrpUwfuCypZo
	VwBKYx7ElnxH0O7e4vqMvTDKEAu6TpVirVI7VeBSfcXC0gWfNKpRpzQUhJIQDmk3emuggpJHG0cy7
	4U/yJE6xu5PtpsH4hs4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUiZs-0004D3-4t; Wed, 13 Nov 2019 02:40:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUiYt-0003Op-LC; Wed, 13 Nov 2019 02:39:17 +0000
X-UUID: f5dd1637057448cb9f42cb9650652806-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Xz5t62Az4ex1Dw4JbEiqpduOllpXnz09mFnqd5LCa2w=; 
 b=sLm8JMGgQrZ9PhTMwDtM/yPmXF/iUqkXiJ0+eL6e7yeBpX8Q0+VzzufD+s8PL5aDfCwvsMDWZHUiH1PDtozRyuJzLxt7lJ/SyejcTWh8Rhcwe9eKa1ZwsbLRlG5CrI1reXC9l75EtaylUGIxWbDMNfkoZ5QvyF9+oPIqCsok/yU=;
X-UUID: f5dd1637057448cb9f42cb9650652806-20191112
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1308561894; Tue, 12 Nov 2019 18:39:05 -0800
Received: from mtkmbs05dr.mediatek.inc (172.21.101.97) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 18:38:46 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05dr.mediatek.inc (172.21.101.97) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 13 Nov 2019 10:38:44 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 13 Nov 2019 10:38:44 +0800
From: MarkLee <Mark-MC.Lee@mediatek.com>
To: "David S. Miller" <davem@davemloft.net>, Sean Wang
 <sean.wang@mediatek.com>, John Crispin <john@phrozen.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH net,
 v3 3/3] net: ethernet: mediatek: Enable GDM GDMA_DROP_ALL mode
Date: Wed, 13 Nov 2019 10:38:44 +0800
Message-ID: <20191113023844.17800-4-Mark-MC.Lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191113023844.17800-1-Mark-MC.Lee@mediatek.com>
References: <20191113023844.17800-1-Mark-MC.Lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_183915_708477_8CE903E4 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Enable GDM GDMA_DROP_ALL mode to drop all packet during the 
stop operation. This is recommended by the mt762x HW design 
to drop all packet from GMAC before stopping PDMA.

Signed-off-by: MarkLee <Mark-MC.Lee@mediatek.com>
--
v1->v2:
* no change
v2->v3:
* no change

---
 drivers/net/ethernet/mediatek/mtk_eth_soc.c | 2 ++
 drivers/net/ethernet/mediatek/mtk_eth_soc.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index b147ab0e44ce..5fe1ab0c16cc 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -2279,6 +2279,8 @@ static int mtk_stop(struct net_device *dev)
 	if (!refcount_dec_and_test(&eth->dma_refcnt))
 		return 0;
 
+	mtk_gdm_config(eth, MTK_GDMA_DROP_ALL);
+
 	mtk_tx_irq_disable(eth, MTK_TX_DONE_INT);
 	mtk_rx_irq_disable(eth, MTK_RX_DONE_INT);
 	napi_disable(&eth->tx_napi);
diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.h b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
index b16d8d9b196a..85830fe14a1b 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.h
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
@@ -85,6 +85,7 @@
 #define MTK_GDMA_TCS_EN		BIT(21)
 #define MTK_GDMA_UCS_EN		BIT(20)
 #define MTK_GDMA_TO_PDMA	0x0
+#define MTK_GDMA_DROP_ALL       0x7777
 
 /* Unicast Filter MAC Address Register - Low */
 #define MTK_GDMA_MAC_ADRL(x)	(0x508 + (x * 0x1000))
-- 
2.17.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
