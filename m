Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5871F2330
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJuMl6vhvYSHvIGrmCuw1BUS8H/QsZk5TovbP3QQRSg=; b=sfzUoBWMxlXXK9
	qawxuxBtJa5lweDCYVJtvRpdd7aRkHQMgE9x8eSfTz90WmeIQarf57R7ngplxSijR7Va0FYK/9X/s
	c4kkK3il1C0Px4A3ZV+wyA15OrxjGwGntIz4Wn+P6quI+PzAvhLy5dT3i2XvcoJVCzMbl0Pcr7n+7
	Yib6LM4VGMB9792QpJHGozWSY+UGsv5UtpS7K3lo0RF3v3ZyKte39uaqmDf7KIiru15EYg3Jz7Hrp
	gp4DK9Lot0w+kCtE7YatNPiMtz6Hup5Tp9b5UQg0Ym6mC1VWzT7oTtZpmflKQ5BRZtiahhTs2i9yf
	udo4TID5VB7trUXU+Y2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQxx-00070O-9u; Mon, 08 Jun 2020 23:14:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQtO-0000fF-Ez
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:09:24 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E61020890;
 Mon,  8 Jun 2020 23:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657761;
 bh=KO1X9m7NPmmKUMWAX5wnckaZR418zjtg/BYnrfIAY3Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QqJSJyLYdeazMZgOuSNTXYwUYrKmWGWKaCrGRUbyA1EjimHD+sQxUJAUBVMj0D7kn
 1l4d9OwSHu9nUNTeOVO44HQSkpgQS84oJPzFG2nfWtaDdRNxH/uL8Acs+Q0xAqrR3C
 orVKFegMt+z0dieZWpMpcPIBxXxOsUqitUTiCdT4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 146/274] stmmac: intel: Fix clock handling on
 error and remove paths
Date: Mon,  8 Jun 2020 19:03:59 -0400
Message-Id: <20200608230607.3361041-146-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_160922_716673_1567AC69 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Voon Weifeng <weifeng.voon@intel.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

[ Upstream commit 09f012e64e4b8126ed6f02d0a85a57c3a0465cf9 ]

clk_prepare_enable() might fail, we have to check its returned value.
Besides that we have to call clk_disable_unprepare() on the error and
remove paths. Do above in the dwmac-intel driver.

While at it, remove leftover in stmmac_pci and remove unneeded condition
for NULL-aware clk_unregister_fixed_rate() call.

Fixes: 58da0cfa6cf1 ("net: stmmac: create dwmac-intel.c to contain all Intel platform")
Cc: Voon Weifeng <weifeng.voon@intel.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../net/ethernet/stmicro/stmmac/dwmac-intel.c | 20 +++++++++++++++----
 .../net/ethernet/stmicro/stmmac/stmmac_pci.c  |  5 -----
 2 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c
index 2e4aaedb93f5..d163c4b43da0 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-intel.c
@@ -252,6 +252,7 @@ static void common_default_data(struct plat_stmmacenet_data *plat)
 static int intel_mgbe_common_data(struct pci_dev *pdev,
 				  struct plat_stmmacenet_data *plat)
 {
+	int ret;
 	int i;
 
 	plat->clk_csr = 5;
@@ -324,7 +325,12 @@ static int intel_mgbe_common_data(struct pci_dev *pdev,
 		dev_warn(&pdev->dev, "Fail to register stmmac-clk\n");
 		plat->stmmac_clk = NULL;
 	}
-	clk_prepare_enable(plat->stmmac_clk);
+
+	ret = clk_prepare_enable(plat->stmmac_clk);
+	if (ret) {
+		clk_unregister_fixed_rate(plat->stmmac_clk);
+		return ret;
+	}
 
 	/* Set default value for multicast hash bins */
 	plat->multicast_filter_bins = HASH_TABLE_SIZE;
@@ -657,7 +663,13 @@ static int intel_eth_pci_probe(struct pci_dev *pdev,
 	res.wol_irq = pdev->irq;
 	res.irq = pdev->irq;
 
-	return stmmac_dvr_probe(&pdev->dev, plat, &res);
+	ret = stmmac_dvr_probe(&pdev->dev, plat, &res);
+	if (ret) {
+		clk_disable_unprepare(plat->stmmac_clk);
+		clk_unregister_fixed_rate(plat->stmmac_clk);
+	}
+
+	return ret;
 }
 
 /**
@@ -675,8 +687,8 @@ static void intel_eth_pci_remove(struct pci_dev *pdev)
 
 	stmmac_dvr_remove(&pdev->dev);
 
-	if (priv->plat->stmmac_clk)
-		clk_unregister_fixed_rate(priv->plat->stmmac_clk);
+	clk_disable_unprepare(priv->plat->stmmac_clk);
+	clk_unregister_fixed_rate(priv->plat->stmmac_clk);
 
 	for (i = 0; i < PCI_STD_NUM_BARS; i++) {
 		if (pci_resource_len(pdev, i) == 0)
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
index 3fb21f7ac9fb..272cb47af9f2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
@@ -217,15 +217,10 @@ static int stmmac_pci_probe(struct pci_dev *pdev,
  */
 static void stmmac_pci_remove(struct pci_dev *pdev)
 {
-	struct net_device *ndev = dev_get_drvdata(&pdev->dev);
-	struct stmmac_priv *priv = netdev_priv(ndev);
 	int i;
 
 	stmmac_dvr_remove(&pdev->dev);
 
-	if (priv->plat->stmmac_clk)
-		clk_unregister_fixed_rate(priv->plat->stmmac_clk);
-
 	for (i = 0; i < PCI_STD_NUM_BARS; i++) {
 		if (pci_resource_len(pdev, i) == 0)
 			continue;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
