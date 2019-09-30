Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7617BC1D0B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o+55k3qESCt932iQdxBoN+vSC8h4QVUHoguKHTxKP3w=; b=gbK/H3cQ0IFB4tKY8UfEWELqPs
	u/sPYRacmjrmGukEYrxilz79ycIVtuW9tmrRrZ+m1lMyc3TGxKcwtLCs6fShDjrLzn7UGVSSsMJlX
	WjBbBtU7BDg5bjpBGYUPeF2SzSV0QDxIve0ier3bf0mGS03vuEVPgeaqBJhNefMt05gEGqIZnsHpw
	k/aUW48U7vrrRme845q1pehFCzs/tPdq3/0IZOfR35c6O/e2SjJaGFbLp7Dr5rJC6Z2qY/7s6yzen
	hW0SmD933mms372QRKB8KlLYFpmEqU8d8XiLFCMSE7N8NYZecdwHEwW/r287H2KZRKX6WoHveDCcs
	sjYm0ELg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqwW-0000bQ-6C; Mon, 30 Sep 2019 08:22:04 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqu0-0005ek-OR
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:19:36 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C5879C0376;
 Mon, 30 Sep 2019 08:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1569831566; bh=DIrBlnTN+2e2Xshklv4tKK7eG84iI4t6E5yVB8RhCTI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=jcbWQmhFxuQMxnU1sQk3n6K56I5PWCNjR5Uh4r7SwHdYHb8w1HpcaGowIPSzUADj9
 9IyWhgqLFK7nokgbW+7btXhxG7MBQ1FPvCc2lurXv+f1kT/a2iymj9KoE13qIEPVVD
 UYHKxLWpZoB4T2ejSt/k1BfyG6oGUvk++nsdjpJDnkx7W/+wdFwMhNES5kH9qghHBU
 GMa0mIB7qs5U/1MqTbp1dQppzGi68zC6gbfLb9vEeMmCjMtQ6AvR1vafUpGL1tLnO9
 WzNz9uKXrexZLZ/2OuRWxCztnHTfdeCyXgazx51iPnHMa4tOm8n8He/+t8gaEsBtdx
 Su4w2LFhWQ20A==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 8366AA0084;
 Mon, 30 Sep 2019 08:19:23 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net 6/9] net: stmmac: Do not stop PHY if WoL is enabled
Date: Mon, 30 Sep 2019 10:19:10 +0200
Message-Id: <7f8094c677036ef0600002f683633d39d61242d9.1569831229.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1569831228.git.Jose.Abreu@synopsys.com>
References: <cover.1569831228.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1569831228.git.Jose.Abreu@synopsys.com>
References: <cover.1569831228.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011929_026626_85D16792 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If WoL is enabled we can't really stop the PHY, otherwise we will not
receive the WoL packet. Fix this by telling phylink that only the MAC is
down and only stop the PHY if WoL is not enabled.

Fixes: 74371272f97f ("net: stmmac: Convert to phylink and remove phylib logic")
Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

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
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 31a237ec73bc..843d53e084b7 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -4718,9 +4718,7 @@ int stmmac_suspend(struct device *dev)
 
 	mutex_lock(&priv->lock);
 
-	rtnl_lock();
-	phylink_stop(priv->phylink);
-	rtnl_unlock();
+	phylink_mac_change(priv->phylink, false);
 
 	netif_device_detach(ndev);
 	stmmac_stop_all_queues(priv);
@@ -4735,6 +4733,10 @@ int stmmac_suspend(struct device *dev)
 		stmmac_pmt(priv, priv->hw, priv->wolopts);
 		priv->irq_wake = 1;
 	} else {
+		rtnl_lock();
+		phylink_stop(priv->phylink);
+		rtnl_unlock();
+
 		stmmac_mac_set(priv, priv->ioaddr, false);
 		pinctrl_pm_select_sleep_state(priv->device);
 		/* Disable clock in case of PWM is off */
@@ -4825,9 +4827,13 @@ int stmmac_resume(struct device *dev)
 
 	stmmac_start_all_queues(priv);
 
-	rtnl_lock();
-	phylink_start(priv->phylink);
-	rtnl_unlock();
+	if (!device_may_wakeup(priv->device)) {
+		rtnl_lock();
+		phylink_start(priv->phylink);
+		rtnl_unlock();
+	}
+
+	phylink_mac_change(priv->phylink, true);
 
 	mutex_unlock(&priv->lock);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
