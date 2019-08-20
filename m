Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0B196330
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:54:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btTTzfSxdZcsC2we6DOZgR3GsDecG3IAY+diYn9hNpM=; b=MaOFkP5AmgwivZ
	0bs09gf8LSleN09NNceZgS2B1GNyjK67+5Egce3GTmO92/J6DHfYX2+SC2puBdqYKs6uHVDv+wjMc
	gNwzWGj5sRK8ZjWjOwpuraNc7ih2nlgvMNygIaG2BkLsYiNwvKfylnpDrJpeA/ce3GS/b1DvV1Vkq
	4HcacLEG7OJEdi0BqfH4M/od1FnxaWTWEbY1w68JrZl00fCQDGYzfnMtuR7j04cM6db3X5/TMOTWA
	fV5jlOUNGcmaAwIv2GCXZQx+v9OR3IGnrxbhaChAZ8TEPjccDg3YrUvMWrc9CxoXbPAxFrQ6+U+mu
	nq2iwnnxsHgyJ1JYEyOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05XA-0001lS-9u; Tue, 20 Aug 2019 14:54:52 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05W7-00013T-TK
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:53:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566312826; bh=fJp1/iHxqT8rIRrQhM5u30ZJqn3FLJCfRTqKNHdiDpk=;
 h=From:To:Cc:Subject:Date:References:From;
 b=OUSQL0xWoyyXiFXG3/LwHN+ZkRJ0/NRPLbNEZ28F4MzGzDOMyvlvwINEM5mFJYNBR
 be7A368YMVBuW/BTSfCfJpd3WPAJFNcr60QlNdWdrKPxhUsesiBpVmvMoqsy48u2/Q
 a46vrrjCQAzAMqZWEPxmeFnRIKmjGU0LoyfmSZ0s=
From: megous@megous.com
To: "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH 4/6] net: stmmac: sun8i: Rename PHY regulator variable to
 regulator_phy
Date: Tue, 20 Aug 2019 16:53:41 +0200
Message-Id: <20190820145343.29108-5-megous@megous.com>
In-Reply-To: <20190820145343.29108-1-megous@megous.com>
References: <20190820145343.29108-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075348_274500_BEAA9494 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

We'll be adding further optional regulators, and this makes it clearer
what the regulator is for.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 32 ++++++++++---------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index 3e951a11aec3..e7df30d3cab1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -57,19 +57,21 @@ struct emac_variant {
 };
 
 /* struct sunxi_priv_data - hold all sunxi private data
- * @tx_clk:	reference to MAC TX clock
- * @ephy_clk:	reference to the optional EPHY clock for the internal PHY
- * @regulator:	reference to the optional regulator
- * @rst_ephy:	reference to the optional EPHY reset for the internal PHY
- * @variant:	reference to the current board variant
- * @regmap:	regmap for using the syscon
- * @internal_phy_powered: Does the internal PHY is enabled
- * @mux_handle:	Internal pointer used by mdio-mux lib
+ * @tx_clk:			reference to MAC TX clock
+ * @ephy_clk:			reference to the optional EPHY clock for
+ *				the internal PHY
+ * @regulator_phy:		reference to the optional regulator
+ * @rst_ephy:			reference to the optional EPHY reset for
+ *				the internal PHY
+ * @variant:			reference to the current board variant
+ * @regmap:			regmap for using the syscon
+ * @internal_phy_powered:	Does the internal PHY is enabled
+ * @mux_handle:			Internal pointer used by mdio-mux lib
  */
 struct sunxi_priv_data {
 	struct clk *tx_clk;
 	struct clk *ephy_clk;
-	struct regulator *regulator;
+	struct regulator *regulator_phy;
 	struct reset_control *rst_ephy;
 	const struct emac_variant *variant;
 	struct regmap_field *regmap_field;
@@ -528,9 +530,9 @@ static int sun8i_dwmac_init(struct platform_device *pdev, void *priv)
 	struct sunxi_priv_data *gmac = priv;
 	int ret;
 
-	ret = regulator_enable(gmac->regulator);
+	ret = regulator_enable(gmac->regulator_phy);
 	if (ret) {
-		dev_err(&pdev->dev, "Fail to enable regulator\n");
+		dev_err(&pdev->dev, "Fail to enable PHY regulator\n");
 		return ret;
 	}
 
@@ -990,7 +992,7 @@ static void sun8i_dwmac_exit(struct platform_device *pdev, void *priv)
 
 	clk_disable_unprepare(gmac->tx_clk);
 
-	regulator_disable(gmac->regulator);
+	regulator_disable(gmac->regulator_phy);
 }
 
 static void sun8i_dwmac_set_mac_loopback(void __iomem *ioaddr, bool enable)
@@ -1126,9 +1128,9 @@ static int sun8i_dwmac_probe(struct platform_device *pdev)
 	}
 
 	/* Optional regulator for PHY */
-	gmac->regulator = devm_regulator_get(dev, "phy");
-	if (IS_ERR(gmac->regulator)) {
-		ret = PTR_ERR(gmac->regulator);
+	gmac->regulator_phy = devm_regulator_get(dev, "phy");
+	if (IS_ERR(gmac->regulator_phy)) {
+		ret = PTR_ERR(gmac->regulator_phy);
 		if (ret != -EPROBE_DEFER)
 			dev_err(dev, "Failed to get PHY regulator (%d)\n", ret);
 		return ret;
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
