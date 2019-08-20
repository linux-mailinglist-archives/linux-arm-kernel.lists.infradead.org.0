Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB38F96333
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvSTO+XIE653o4/eAeqdnwdD/pXOhsgswGgbeoJ49AU=; b=o0IyU3is6OY2zM
	RW9UsBMbAOQxciwSxe+THMr1CPwM9/N0P+30ir+MtFXC7Fr11ezau5lDxwGThkLJmQUTqSDrW1O6k
	YnNHAhtMnfsMf+yD64a2yoBhBvZuinvOH3C1Zlr7JeXI7ZSIqwGaUx7JDU+Hlg8pYJUh2e7UpJZcV
	Z1D0Q0G25lSUEfCxDCg/J1XQ+NfDl5pV0G/Dj7j9goZeWsZsrR9xcH+C+67a/H9ZNxSLX+fS4Z5Tp
	a0J+dnFhGhFNIgLbm3euUQlgFflihIYL4PryGITokqd8zMbKz1LYhlW8aiRCLqxiIwwKechWURWO2
	IkDhcbraprnRZH8B9AqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05Xh-0003KG-7x; Tue, 20 Aug 2019 14:55:25 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05WA-00014m-Rm
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:53:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566312826; bh=4hhK28dgS8BmhfHSH/CC6uoVklNXHuscBoxMGcS+N/w=;
 h=From:To:Cc:Subject:Date:References:From;
 b=XI5z9DBnNdOUqFw25KNQyt9MWq35cijMPrMPxwWFujdoAioSTERrxgfz/4Bgv2BoY
 LnJJavS2Z5Ic3cP0TpH8b795HjbJ4uOUXZsAj60ug3CNw3S0q57v5h7TtLAQ7x87ID
 yLHJzWbAsNjcbG4da6MFfZ19DXmU85CokPZfpB3U=
From: megous@megous.com
To: "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH 5/6] net: stmmac: sun8i: Add support for enabling a regulator
 for PHY I/O pins
Date: Tue, 20 Aug 2019 16:53:42 +0200
Message-Id: <20190820145343.29108-6-megous@megous.com>
In-Reply-To: <20190820145343.29108-1-megous@megous.com>
References: <20190820145343.29108-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075351_323788_DE48EDF9 
X-CRM114-Status: GOOD (  13.89  )
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

Orange Pi 3 has two regulators that power the Realtek RTL8211E. According
to the phy datasheet, both regulators need to be enabled at the same time.

Add support for the second optional regulator, "phy-io", to the glue
driver.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 31 ++++++++++++++++---
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index e7df30d3cab1..e96337b7cd12 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -61,6 +61,8 @@ struct emac_variant {
  * @ephy_clk:			reference to the optional EPHY clock for
  *				the internal PHY
  * @regulator_phy:		reference to the optional regulator
+ * @regulator_phy_io:		reference to the optional regulator for
+ *				PHY I/O pins
  * @rst_ephy:			reference to the optional EPHY reset for
  *				the internal PHY
  * @variant:			reference to the current board variant
@@ -72,6 +74,7 @@ struct sunxi_priv_data {
 	struct clk *tx_clk;
 	struct clk *ephy_clk;
 	struct regulator *regulator_phy;
+	struct regulator *regulator_phy_io;
 	struct reset_control *rst_ephy;
 	const struct emac_variant *variant;
 	struct regmap_field *regmap_field;
@@ -530,21 +533,30 @@ static int sun8i_dwmac_init(struct platform_device *pdev, void *priv)
 	struct sunxi_priv_data *gmac = priv;
 	int ret;
 
+	ret = regulator_enable(gmac->regulator_phy_io);
+	if (ret) {
+		dev_err(&pdev->dev, "Fail to enable PHY I/O regulator\n");
+		return ret;
+	}
+
 	ret = regulator_enable(gmac->regulator_phy);
 	if (ret) {
 		dev_err(&pdev->dev, "Fail to enable PHY regulator\n");
-		return ret;
+		goto err_disable_regulator_phy_io;
 	}
 
 	ret = clk_prepare_enable(gmac->tx_clk);
 	if (ret) {
-		if (gmac->regulator)
-			regulator_disable(gmac->regulator);
 		dev_err(&pdev->dev, "Could not enable AHB clock\n");
-		return ret;
+		goto err_disable_regulator_phy;
 	}
 
 	return 0;
+err_disable_regulator_phy:
+	regulator_disable(gmac->regulator_phy);
+err_disable_regulator_phy_io:
+	regulator_disable(gmac->regulator_phy_io);
+	return ret;
 }
 
 static void sun8i_dwmac_core_init(struct mac_device_info *hw,
@@ -993,6 +1005,7 @@ static void sun8i_dwmac_exit(struct platform_device *pdev, void *priv)
 	clk_disable_unprepare(gmac->tx_clk);
 
 	regulator_disable(gmac->regulator_phy);
+	regulator_disable(gmac->regulator_phy_io);
 }
 
 static void sun8i_dwmac_set_mac_loopback(void __iomem *ioaddr, bool enable)
@@ -1136,6 +1149,16 @@ static int sun8i_dwmac_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	/* Optional regulator for PHY I/O pins */
+	gmac->regulator_phy_io = devm_regulator_get(dev, "phy-io");
+	if (IS_ERR(gmac->regulator_phy_io)) {
+		ret = PTR_ERR(gmac->regulator_phy_io);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to get PHY I/O regulator (%d)\n",
+				ret);
+		return ret;
+	}
+
 	/* The "GMAC clock control" register might be located in the
 	 * CCU address range (on the R40), or the system control address
 	 * range (on most other sun8i and later SoCs).
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
