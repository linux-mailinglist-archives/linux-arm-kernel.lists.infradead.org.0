Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A24DC16AD78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:30:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tZLBZr6KLuvOcsMtLow9LzUIfyZGJKpks94XNDfesAI=; b=eH+MYN2kyZN0Kn
	wiOYik7ogk9BqmMkYVM5eF09gn483mOZbjzE8YHZe4IVmCboYWX4sjLMXW48k3r61TmvHbVW7fpd2
	E2Sj9zlbM0vhKKtEJLjnvoWX85EwpGAMsZnVmtwDHqolaka3xtvXr8C8xNgnolxeblnrUGkuVMMaX
	xUnmoEX2RPcSdy1U5z0CXYIop+mdzn0KAdKM2tRmay+zCcmKjSwTFzW319eTC2lh+uWjGHpI9uDHe
	x92r/TAjLBD00qLHjim0gskf/KuHb6d7y0zxGkh8qx4xcA25IU29Gje5tTReBRKaMwpwkQ8Qb+Se7
	zzrssj/bE1oclFLs904A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HZ3-0003ht-Hu; Mon, 24 Feb 2020 17:30:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HYb-0002oL-0l
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:30:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1j6HYO-0004HS-08; Mon, 24 Feb 2020 18:30:00 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1j6HYL-0007Ys-IA; Mon, 24 Feb 2020 18:29:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH 1/2] net: ethernet: stmmac: demote warnings about missing
 optional clocks
Date: Mon, 24 Feb 2020 18:29:54 +0100
Message-Id: <20200224172956.28744-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: afa@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093013_093837_1473585E 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@pengutronix.de, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The specification of a "eth-ck" and a "ptp_ref" clock is optional per
the binding and the driver handles them gracefully.
Demote the output to an info message accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c     | 2 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
index 9b7be996d07b..dc84e5066bf8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
@@ -304,7 +304,7 @@ static int stm32mp1_parse_data(struct stm32_dwmac *dwmac,
 	/*  Get ETH_CLK clocks */
 	dwmac->clk_eth_ck = devm_clk_get(dev, "eth-ck");
 	if (IS_ERR(dwmac->clk_eth_ck)) {
-		dev_warn(dev, "No phy clock provided...\n");
+		dev_info(dev, "No phy clock provided...\n");
 		dwmac->clk_eth_ck = NULL;
 	}
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
index d10ac54bf385..165958c9f069 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c
@@ -588,7 +588,7 @@ stmmac_probe_config_dt(struct platform_device *pdev, const char **mac)
 	if (IS_ERR(plat->clk_ptp_ref)) {
 		plat->clk_ptp_rate = clk_get_rate(plat->stmmac_clk);
 		plat->clk_ptp_ref = NULL;
-		dev_warn(&pdev->dev, "PTP uses main clock\n");
+		dev_info(&pdev->dev, "PTP uses main clock\n");
 	} else {
 		plat->clk_ptp_rate = clk_get_rate(plat->clk_ptp_ref);
 		dev_dbg(&pdev->dev, "PTP rate %d\n", plat->clk_ptp_rate);
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
