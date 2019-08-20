Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76D596332
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gymjF+Gu94UNYw5ReTDDTxP4rn6mIMlW834W16ayt9Q=; b=A+XRMuUbr7+s2+
	0RnWhdZ0Ar9ewQdBcDppB3IYHKa3OdBoKAubftZW4akZbBHjGCRKWdWEA4Vqh952b0Tu5zMzN7iEI
	Ksog6/vV7NfmKZYg7EuAQijsb0FeX0EB2yXOH6zGFrD2/ijYSjJAWPY2M6JXyB84469wJL3Y9KPoD
	/OF1WvvBpmORTE6/krj1sJRCGt0XNNq98DcQYos+a1Vzwqtwm6+BPGYqGpsobZ7UlgM5q330EprLp
	gazQBNLzNPyhdqoapHMkjO5UuzpFdU9B6RUuOFENP0iJ2WkltF6PCDqrrupD7x1ozL5SNpbUkqaV3
	o2h3zeypLObZ2E5dfWDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05XS-00020K-9a; Tue, 20 Aug 2019 14:55:11 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05W7-00013S-J6
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:53:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566312826; bh=BmUD9BF7ZWHwfIwmCa4uNboL8E51kehruNiRWEgChOs=;
 h=From:To:Cc:Subject:Date:References:From;
 b=YlHw2Dihm2NXzNp1zXkFKZN/lDdmrVAGr6ZDu+rY6O6dYeqmdgN0A83O/0NDFzmTa
 MwI3Lq5KMIkfmJzFuQPpfM1Q/zoE9oTxK8lsvn+/6iD+bOjPtAe8y5kVFdMvOwXQqw
 +2gulGYP98IVdqI8xiM7wtztu84yRSq4lyKyiv4s=
From: megous@megous.com
To: "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH 3/6] net: stmmac: sun8i: Use devm_regulator_get for PHY
 regulator
Date: Tue, 20 Aug 2019 16:53:40 +0200
Message-Id: <20190820145343.29108-4-megous@megous.com>
In-Reply-To: <20190820145343.29108-1-megous@megous.com>
References: <20190820145343.29108-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075347_798340_57B5BC1A 
X-CRM114-Status: GOOD (  13.04  )
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

Use devm_regulator_get instead of devm_regulator_get_optional and rely
on dummy supply. This avoids NULL checks before regulator_enable/disable
calls.

This path also improves error reporting, because we now report both
use of dummy supply and error during registration with more detail,
instead of generic info level message "No regulator found" that
was reported previously on errors and lack of regulator property in DT.

Finally, we'll be adding further optional regulators, and the overall
code will be simpler.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 23 ++++++++-----------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index 4083019c547a..3e951a11aec3 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -528,12 +528,10 @@ static int sun8i_dwmac_init(struct platform_device *pdev, void *priv)
 	struct sunxi_priv_data *gmac = priv;
 	int ret;
 
-	if (gmac->regulator) {
-		ret = regulator_enable(gmac->regulator);
-		if (ret) {
-			dev_err(&pdev->dev, "Fail to enable regulator\n");
-			return ret;
-		}
+	ret = regulator_enable(gmac->regulator);
+	if (ret) {
+		dev_err(&pdev->dev, "Fail to enable regulator\n");
+		return ret;
 	}
 
 	ret = clk_prepare_enable(gmac->tx_clk);
@@ -992,8 +990,7 @@ static void sun8i_dwmac_exit(struct platform_device *pdev, void *priv)
 
 	clk_disable_unprepare(gmac->tx_clk);
 
-	if (gmac->regulator)
-		regulator_disable(gmac->regulator);
+	regulator_disable(gmac->regulator);
 }
 
 static void sun8i_dwmac_set_mac_loopback(void __iomem *ioaddr, bool enable)
@@ -1129,12 +1126,12 @@ static int sun8i_dwmac_probe(struct platform_device *pdev)
 	}
 
 	/* Optional regulator for PHY */
-	gmac->regulator = devm_regulator_get_optional(dev, "phy");
+	gmac->regulator = devm_regulator_get(dev, "phy");
 	if (IS_ERR(gmac->regulator)) {
-		if (PTR_ERR(gmac->regulator) == -EPROBE_DEFER)
-			return -EPROBE_DEFER;
-		dev_info(dev, "No regulator found\n");
-		gmac->regulator = NULL;
+		ret = PTR_ERR(gmac->regulator);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to get PHY regulator (%d)\n", ret);
+		return ret;
 	}
 
 	/* The "GMAC clock control" register might be located in the
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
