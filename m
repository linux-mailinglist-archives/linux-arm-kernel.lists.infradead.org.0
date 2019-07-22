Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFEA701E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DNYd8D9LLqwoh/V+kyBAT0iFhiJWbHJxMdDfC8bFxhg=; b=rf5
	YbJsgyHgbwOS6WbcC2maziWU45QvbEV0Uwb64msNc1xk0bFUQl9xCi/GYAq5xG8bViNgMdfYoxDWR
	DE/0aJhNxvy4gKurmv8kYjgMiyeBzfJWlf+sElsmlRABw4WODk2z8lryQ2yp0Z05QktGke4KkmKJe
	v/uxLLWwW5J0z9YE0tlTBSXrwQvU8XkcP1xs6WumRoxDTg3LcuEYbphFcuVP4W2N2VkB7Vx5aX8zd
	U5VrCyBWv++iYgvAlxhTtg2qJxHoivRfK977xdOLe9PfHOlM7On5Dyd+Y/AQ+b/2Y0L4VvQmLGQLo
	Z9k75Uvm2IEEIadFCt+Eo+JFsuDCTQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYyj-0006KZ-E8; Mon, 22 Jul 2019 14:07:49 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYyV-0006K5-8b
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:07:36 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 3898AC0A8A;
 Mon, 22 Jul 2019 14:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563804455; bh=BVlhWoqq+b4gRXVHPwK2xuuFu+7zzbfOmcgyb6hD5ZE=;
 h=From:To:Cc:Subject:Date:From;
 b=cQAe7pMXq0a4EkIE0Ckv3jsIe2JYiHGXRgR9ieE9Nk7ZgiWp21hyvh8cKGjZDiodl
 Y0fPYbcLuTDHviZZycurnrsUZUSR5TXD69qvZ1cj0XboiyiQJIR3vjp99+dGVMzdNQ
 oQ+HfXNtB0Jpdq0IupJcjtFDtLvZ1IdQOuB/t83zfoclaO7j53AQPHXW7PVV0GTwvn
 so9PJfGHt7hOwDxZo8yUT2vPChXAdmHuEoYKSfEXcBYJUEkaH/D9q/qdbKnYpDexnk
 w8z3fQNWaCDCX41+7l8hTMPzLw0f7VzuCTwSb6CF+RkwwA3K1fqlez2mgrKc8viSMO
 +gcerTiSg7sLQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id F1887A0057;
 Mon, 22 Jul 2019 14:07:31 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net] net: stmmac: Do not cut down 1G modes
Date: Mon, 22 Jul 2019 16:07:21 +0200
Message-Id: <f9b8245ef4fbaca463a6084166c7f72793cb799b.1563804016.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_070735_312623_7483BDCE 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Ondrej Jirman <megi@xff.cz>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some glue logic drivers support 1G without having GMAC/GMAC4/XGMAC.

Let's allow this speed by default.

Reported-by: Ondrej Jirman <megi@xff.cz>
Tested-by: Ondrej Jirman <megi@xff.cz>
Fixes: 5b0d7d7da64b ("net: stmmac: Add the missing speeds that XGMAC supports")
Signed-off-by: Jose Abreu <joabreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 207c3755bcc5..b0d5e5346597 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -814,20 +814,15 @@ static void stmmac_validate(struct phylink_config *config,
 	phylink_set(mac_supported, 10baseT_Full);
 	phylink_set(mac_supported, 100baseT_Half);
 	phylink_set(mac_supported, 100baseT_Full);
+	phylink_set(mac_supported, 1000baseT_Half);
+	phylink_set(mac_supported, 1000baseT_Full);
+	phylink_set(mac_supported, 1000baseKX_Full);
 
 	phylink_set(mac_supported, Autoneg);
 	phylink_set(mac_supported, Pause);
 	phylink_set(mac_supported, Asym_Pause);
 	phylink_set_port_modes(mac_supported);
 
-	if (priv->plat->has_gmac ||
-	    priv->plat->has_gmac4 ||
-	    priv->plat->has_xgmac) {
-		phylink_set(mac_supported, 1000baseT_Half);
-		phylink_set(mac_supported, 1000baseT_Full);
-		phylink_set(mac_supported, 1000baseKX_Full);
-	}
-
 	/* Cut down 1G if asked to */
 	if ((max_speed > 0) && (max_speed < 1000)) {
 		phylink_set(mask, 1000baseT_Full);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
