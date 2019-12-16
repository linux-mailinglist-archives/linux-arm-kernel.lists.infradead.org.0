Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEC711FE37
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 06:50:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1IS5JJ2YHvONihbPX96eL938Eemx2xnQrzIvpVHltA=; b=isTBytu0FGbLpg
	eb1Iii4ipL5xQ/YwX6YBuxFX5oGjVgAeM/cBFwYKxfco1/6vKR8gtNqdg8hSQPkT1U9hZhIBcNvrK
	jYx2nWYVuvlzYOlDX2QD2yC9HFgN/g23gEdx5BzZXCpQUlmlP4gffq2OqH09dUce+NpbInCMpIEKa
	oI+Syp3O5nPT6XKgZoVEVF8UaO7L8IY8MeIp5wuIdEU5UYfmLAcBNhkcQdo5bAr5QcKtcc8r3ttWI
	aTa7UhMSp5T9ikAFI1cA3sWqjYrgmXC93JMXFS+fUy3or+q7OmxsG5s798scdHTINkD1mowyoc5wB
	3nvUQqZ0/zmjXtftDokA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igjHI-0005O1-Al; Mon, 16 Dec 2019 05:50:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igjGn-000505-PJ; Mon, 16 Dec 2019 05:50:15 +0000
X-UUID: 713cfa6644a640f9950028b16605cd95-20191215
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=XgzVOi17Vs8h7Os6AUr7k8KXtqKn1aJ/ASp808k2SkU=; 
 b=ptO/HWgD1jU4QxS+djYDFcNoC/5Tws2wyhXir2rC4NlPyjgHXhN5udulBS9qzj6Ux2KIcoDZKfDTMdEw8+y+PEfe+xAonCz5nDwlz9lhfyN5ohDlaIVFBOHoZjxerHpdAhkXBvGX1Q7Nl9ZzhZcf53SZhuEWxEstI+a48LeG8ng=;
X-UUID: 713cfa6644a640f9950028b16605cd95-20191215
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 998469011; Sun, 15 Dec 2019 21:50:11 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Dec 2019 21:40:28 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 13:38:57 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Dec 2019 13:39:21 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, Andrew Lunn
 <andrew@lunn.ch>
Subject: [v2, PATCH 1/2] net-next: stmmac: mediatek: add more support for RMII
Date: Mon, 16 Dec 2019 13:39:57 +0800
Message-ID: <20191216053958.26130-2-biao.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191216053958.26130-1-biao.huang@mediatek.com>
References: <20191216053958.26130-1-biao.huang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: FFD112F3E34E808E1A08A0EBFFB5922AF512472578675134A16BFA7B742593E12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_215013_858277_A5A3493D 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 .../ethernet/stmicro/stmmac/dwmac-mediatek.c  | 89 +++++++++++++------
 1 file changed, 60 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c
index bdb80421acac..9e4b83832938 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-mediatek.c
@@ -55,6 +55,8 @@ struct mediatek_dwmac_plat_data {
 	struct regmap *peri_regmap;
 	struct device *dev;
 	phy_interface_t phy_mode;
+	int num_clks_to_config;
+	bool rmii_clk_from_mac;
 	bool rmii_rxc;
 };
 
@@ -73,21 +75,33 @@ struct mediatek_dwmac_variant {
 
 /* list of clocks required for mac */
 static const char * const mt2712_dwmac_clk_l[] = {
-	"axi", "apb", "mac_main", "ptp_ref"
+	"axi", "apb", "mac_main", "ptp_ref", "rmii_internal"
 };
 
 static int mt2712_set_interface(struct mediatek_dwmac_plat_data *plat)
 {
+	int rmii_clk_from_mac = plat->rmii_clk_from_mac ? RMII_CLK_SRC_INTERNAL : 0;
 	int rmii_rxc = plat->rmii_rxc ? RMII_CLK_SRC_RXC : 0;
 	u32 intf_val = 0;
 
+	/* The clock labeled as "rmii_internal" in mt2712_dwmac_clk_l is needed
+	 * only in RMII(when MAC provides the reference clock), and useless for
+	 * RGMII/MII/RMII(when PHY provides the reference clock).
+	 * num_clks_to_config indicates the real number of clocks should be
+	 * configured, equals to (plat->variant->num_clks - 1) in default for all the case,
+	 * then +1 for rmii_clk_from_mac case.
+	 */
+	plat->num_clks_to_config = plat->variant->num_clks - 1;
+
 	/* select phy interface in top control domain */
 	switch (plat->phy_mode) {
 	case PHY_INTERFACE_MODE_MII:
 		intf_val |= PHY_INTF_MII;
 		break;
 	case PHY_INTERFACE_MODE_RMII:
-		intf_val |= (PHY_INTF_RMII | rmii_rxc);
+		if (plat->rmii_clk_from_mac)
+			plat->num_clks_to_config++;
+		intf_val |= (PHY_INTF_RMII | rmii_rxc | rmii_clk_from_mac);
 		break;
 	case PHY_INTERFACE_MODE_RGMII:
 	case PHY_INTERFACE_MODE_RGMII_TXID:
@@ -173,35 +187,50 @@ static int mt2712_set_delay(struct mediatek_dwmac_plat_data *plat)
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
@@ -278,6 +307,7 @@ static int mediatek_dwmac_config_dt(struct mediatek_dwmac_plat_data *plat)
 	mac_delay->tx_inv = of_property_read_bool(plat->np, "mediatek,txc-inverse");
 	mac_delay->rx_inv = of_property_read_bool(plat->np, "mediatek,rxc-inverse");
 	plat->rmii_rxc = of_property_read_bool(plat->np, "mediatek,rmii-rxc");
+	plat->rmii_clk_from_mac = of_property_read_bool(plat->np, "mediatek,rmii-clk-from-mac");
 
 	return 0;
 }
@@ -294,6 +324,8 @@ static int mediatek_dwmac_clk_init(struct mediatek_dwmac_plat_data *plat)
 	for (i = 0; i < num; i++)
 		plat->clks[i].id = variant->clk_list[i];
 
+	plat->num_clks_to_config = variant->num_clks;
+
 	return devm_clk_bulk_get(plat->dev, num, plat->clks);
 }
 
@@ -321,7 +353,7 @@ static int mediatek_dwmac_init(struct platform_device *pdev, void *priv)
 		return ret;
 	}
 
-	ret = clk_bulk_prepare_enable(variant->num_clks, plat->clks);
+	ret = clk_bulk_prepare_enable(plat->num_clks_to_config, plat->clks);
 	if (ret) {
 		dev_err(plat->dev, "failed to enable clks, err = %d\n", ret);
 		return ret;
@@ -336,9 +368,8 @@ static int mediatek_dwmac_init(struct platform_device *pdev, void *priv)
 static void mediatek_dwmac_exit(struct platform_device *pdev, void *priv)
 {
 	struct mediatek_dwmac_plat_data *plat = priv;
-	const struct mediatek_dwmac_variant *variant = plat->variant;
 
-	clk_bulk_disable_unprepare(variant->num_clks, plat->clks);
+	clk_bulk_disable_unprepare(plat->num_clks_to_config, plat->clks);
 
 	pm_runtime_put_sync(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
