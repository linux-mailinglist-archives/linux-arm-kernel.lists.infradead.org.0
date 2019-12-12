Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8988111C36D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:42:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JiYwShC1TTeAmzY+0IH74bUeDmAvLyb2B24aZ0n8mLM=; b=Vv4AaF1gMqc/BL
	iRVUdRWHH3w7cUxtLDFaAMwH2/6Mm2+ryC9ToHpqvt0qz3P23FNrink+isRGtOln5hlrLzw2/8QSG
	k3pYcAelaXmfwubguUPPQU2mLhNmLMx/EFx3ljo6vTFx09HRjLWoOoZAF4eEi5MMgCcLI+SmJAP7p
	S12lqPDKVTtMIsz2YW/VN0GBAPLIbC18XQrdLZC8F4nAjB+FEkG0q+tgQzYqnuRamJtAIzw5dYikW
	jXm4mVl3PqqPoxR3IA8eXjwcsG9aemps5BUPYVfpzDCK8LBx+KscVJBJwT6qgFv8Ei2BKEZUYYKd1
	YGzSat8JV09rj/JyNrWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifER7-0003Is-OC; Thu, 12 Dec 2019 02:42:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifEQe-00033W-DH; Thu, 12 Dec 2019 02:42:14 +0000
X-UUID: a07f054d4cda4f029b2c0d6fb6c4a92c-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=gJIOv/AINP2oPlEBoJSoZwQ465CauMnNdU2csE2E0pQ=; 
 b=uL2/0P6klSexJW0VWrZCUZspDUZdxkkAjJhscLetEThMmOBtbzYKVd1HwjGZZNu2cdF2x6ekRVR4u+STB1ppdj7xGbX0koJjP628dRJcKciNETi4k+/nezRWG1sIdpVU08DGizmPlm1xxWUVjImXu2Jf9xuxnIs6ttHK5+6icAg=;
X-UUID: a07f054d4cda4f029b2c0d6fb6c4a92c-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 785587754; Wed, 11 Dec 2019 18:42:11 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 18:43:16 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 10:41:07 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 10:42:03 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/2] net-next: stmmac: mediatek: add more suuport for RMII
Date: Thu, 12 Dec 2019 10:41:44 +0800
Message-ID: <20191212024145.21752-2-biao.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191212024145.21752-1-biao.huang@mediatek.com>
References: <20191212024145.21752-1-biao.huang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: C35C7151B8083C092FE073C2C47996ED59A6B3EF44C7EEC93DB7245D0F38379A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_184212_480551_4AA12837 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Biao Huang <biao.huang@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, yt.shen@mediatek.com, Jose
 Abreu <joabreu@synopsys.com>, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MT2712 SoC can provide the rmii reference clock, and the clock
will output from TXC pin only, which means ref_clk pin of external
PHY should connect to TXC pin in this case.
Add corresponding clock and timing settings.

Signed-off-by: Biao Huang <biao.huang@mediatek.com>
---
 .../ethernet/stmicro/stmmac/dwmac-mediatek.c  | 85 +++++++++++++------
 1 file changed, 60 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c
index bdb80421acac..af24954c7654 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c
@@ -51,10 +51,12 @@ struct mediatek_dwmac_plat_data {
 	const struct mediatek_dwmac_variant *variant;
 	struct mac_delay_struct mac_delay;
 	struct clk_bulk_data *clks;
+	struct clk *mac_rmii_clk;
 	struct device_node *np;
 	struct regmap *peri_regmap;
 	struct device *dev;
 	phy_interface_t phy_mode;
+	bool rmii_clk_from_mac;
 	bool rmii_rxc;
 };
 
@@ -78,6 +80,7 @@ static const char * const mt2712_dwmac_clk_l[] = {
 
 static int mt2712_set_interface(struct mediatek_dwmac_plat_data *plat)
 {
+	int rmii_clk_from_mac = plat->rmii_clk_from_mac ? RMII_CLK_SRC_INTERNAL : 0;
 	int rmii_rxc = plat->rmii_rxc ? RMII_CLK_SRC_RXC : 0;
 	u32 intf_val = 0;
 
@@ -87,7 +90,7 @@ static int mt2712_set_interface(struct mediatek_dwmac_plat_data *plat)
 		intf_val |= PHY_INTF_MII;
 		break;
 	case PHY_INTERFACE_MODE_RMII:
-		intf_val |= (PHY_INTF_RMII | rmii_rxc);
+		intf_val |= (PHY_INTF_RMII | rmii_rxc | rmii_clk_from_mac);
 		break;
 	case PHY_INTERFACE_MODE_RGMII:
 	case PHY_INTERFACE_MODE_RGMII_TXID:
@@ -173,35 +176,50 @@ static int mt2712_set_delay(struct mediatek_dwmac_plat_data *plat)
 		delay_val |= FIELD_PREP(ETH_DLY_RXC_INV, mac_delay->rx_inv);
 		break;
 	case PHY_INTERFACE_MODE_RMII:
-		/* the rmii reference clock is from external phy,
-		 * and the property "rmii_rxc" indicates which pin(TXC/RXC)
-		 * the reference clk is connected to. The reference clock is a
-		 * received signal, so rx_delay/rx_inv are used to indicate
-		 * the reference clock timing adjustment
-		 */
-		if (plat->rmii_rxc) {
-			/* the rmii reference clock from outside is connected
-			 * to RXC pin, the reference clock will be adjusted
-			 * by RXC delay macro circuit.
-			 */
-			delay_val |= FIELD_PREP(ETH_DLY_RXC_ENABLE, !!mac_delay->rx_delay);
-			delay_val |= FIELD_PREP(ETH_DLY_RXC_STAGES, mac_delay->rx_delay);
-			delay_val |= FIELD_PREP(ETH_DLY_RXC_INV, mac_delay->rx_inv);
-		} else {
-			/* the rmii reference clock from outside is connected
-			 * to TXC pin, the reference clock will be adjusted
-			 * by TXC delay macro circuit.
+		if (plat->rmii_clk_from_mac) {
+			/* case 1: mac provides the rmii reference clock,
+			 * and the clock output to TXC pin.
+			 * The egress timing can be adjusted by GTXC delay macro circuit.
+			 * The ingress timing can be adjusted by TXC delay macro circuit.
 			 */
 			delay_val |= FIELD_PREP(ETH_DLY_TXC_ENABLE, !!mac_delay->rx_delay);
 			delay_val |= FIELD_PREP(ETH_DLY_TXC_STAGES, mac_delay->rx_delay);
 			delay_val |= FIELD_PREP(ETH_DLY_TXC_INV, mac_delay->rx_inv);
+
+			delay_val |= FIELD_PREP(ETH_DLY_GTXC_ENABLE, !!mac_delay->tx_delay);
+			delay_val |= FIELD_PREP(ETH_DLY_GTXC_STAGES, mac_delay->tx_delay);
+			delay_val |= FIELD_PREP(ETH_DLY_GTXC_INV, mac_delay->tx_inv);
+		} else {
+			/* case 2: the rmii reference clock is from external phy,
+			 * and the property "rmii_rxc" indicates which pin(TXC/RXC)
+			 * the reference clk is connected to. The reference clock is a
+			 * received signal, so rx_delay/rx_inv are used to indicate
+			 * the reference clock timing adjustment
+			 */
+			if (plat->rmii_rxc) {
+				/* the rmii reference clock from outside is connected
+				 * to RXC pin, the reference clock will be adjusted
+				 * by RXC delay macro circuit.
+				 */
+				delay_val |= FIELD_PREP(ETH_DLY_RXC_ENABLE, !!mac_delay->rx_delay);
+				delay_val |= FIELD_PREP(ETH_DLY_RXC_STAGES, mac_delay->rx_delay);
+				delay_val |= FIELD_PREP(ETH_DLY_RXC_INV, mac_delay->rx_inv);
+			} else {
+				/* the rmii reference clock from outside is connected
+				 * to TXC pin, the reference clock will be adjusted
+				 * by TXC delay macro circuit.
+				 */
+				delay_val |= FIELD_PREP(ETH_DLY_TXC_ENABLE, !!mac_delay->rx_delay);
+				delay_val |= FIELD_PREP(ETH_DLY_TXC_STAGES, mac_delay->rx_delay);
+				delay_val |= FIELD_PREP(ETH_DLY_TXC_INV, mac_delay->rx_inv);
+			}
+			/* tx_inv will inverse the tx clock inside mac relateive to
+			 * reference clock from external phy,
+			 * and this bit is located in the same register with fine-tune
+			 */
+			if (mac_delay->tx_inv)
+				fine_val = ETH_RMII_DLY_TX_INV;
 		}
-		/* tx_inv will inverse the tx clock inside mac relateive to
-		 * reference clock from external phy,
-		 * and this bit is located in the same register with fine-tune
-		 */
-		if (mac_delay->tx_inv)
-			fine_val = ETH_RMII_DLY_TX_INV;
 		break;
 	case PHY_INTERFACE_MODE_RGMII:
 	case PHY_INTERFACE_MODE_RGMII_TXID:
@@ -278,6 +296,7 @@ static int mediatek_dwmac_config_dt(struct mediatek_dwmac_plat_data *plat)
 	mac_delay->tx_inv = of_property_read_bool(plat->np, "mediatek,txc-inverse");
 	mac_delay->rx_inv = of_property_read_bool(plat->np, "mediatek,rxc-inverse");
 	plat->rmii_rxc = of_property_read_bool(plat->np, "mediatek,rmii-rxc");
+	plat->rmii_clk_from_mac = of_property_read_bool(plat->np, "mediatek,rmii-clk-from-mac");
 
 	return 0;
 }
@@ -287,6 +306,16 @@ static int mediatek_dwmac_clk_init(struct mediatek_dwmac_plat_data *plat)
 	const struct mediatek_dwmac_variant *variant = plat->variant;
 	int i, num = variant->num_clks;
 
+	plat->mac_rmii_clk = NULL;
+	if (plat->phy_mode == PHY_INTERFACE_MODE_RMII &&
+	    plat->rmii_clk_from_mac) {
+		plat->mac_rmii_clk = devm_clk_get(plat->dev, "rmii_internal");
+		if (IS_ERR(plat->mac_rmii_clk)) {
+			dev_err(plat->dev, "Failed to get reference clk from MAC\n");
+			return PTR_ERR(plat->mac_rmii_clk);
+		}
+	}
+
 	plat->clks = devm_kcalloc(plat->dev, num, sizeof(*plat->clks), GFP_KERNEL);
 	if (!plat->clks)
 		return -ENOMEM;
@@ -327,6 +356,9 @@ static int mediatek_dwmac_init(struct platform_device *pdev, void *priv)
 		return ret;
 	}
 
+	if (plat->mac_rmii_clk)
+		clk_prepare_enable(plat->mac_rmii_clk);
+
 	pm_runtime_enable(&pdev->dev);
 	pm_runtime_get_sync(&pdev->dev);
 
@@ -338,6 +370,9 @@ static void mediatek_dwmac_exit(struct platform_device *pdev, void *priv)
 	struct mediatek_dwmac_plat_data *plat = priv;
 	const struct mediatek_dwmac_variant *variant = plat->variant;
 
+	if (plat->mac_rmii_clk)
+		clk_disable_unprepare(plat->mac_rmii_clk);
+
 	clk_bulk_disable_unprepare(variant->num_clks, plat->clks);
 
 	pm_runtime_put_sync(&pdev->dev);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
