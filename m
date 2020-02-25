Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F2E16BD9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:42:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rg7t33UKelaqbgW5I6dXfKwfgMZPsX0/LwT29qq50/E=; b=lqNIbhZtp9auOC
	/Hk23xGhJ0jzWtTOmqJiCau8K8Qcws9zwcyN0il2EvMzeR9FQZG8yGU94Nt/U/xZVqiFaowrQ1F24
	AmB09U3T1fED2YlPL79B4t/yoJ9xz+N1sd8eZSi4VD2rzXox7MC1EWkSW3obc/InNgTQ1rMEjV8uT
	eNx6sO98OrUfLejK1+jKrl02kTUwxrHk888/JdTdq9d5BwMxiufGKiw6Kh7tDpFQfxe+D91XgtlUJ
	Rs8sZOlXkzmTNTNOtkYIH0EmL+3RATdMbG7uOuw5FZiXOMw6kqCvEH52bZuf5xAO1u0XM9wturFAd
	FF+vCgI/aUd5Bo5hA9+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6WjA-0007qq-9o; Tue, 25 Feb 2020 09:42:08 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Wib-0007HL-Nb; Tue, 25 Feb 2020 09:41:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MvXRdKBQwWqpifCLpYCrvOQkEY6QAL9CbEYBlFLaB2Y=; b=bxSu7RGmZfziuaBWQFffE2am0f
 hjhK4ffkM9rECDl7v7XaWiLj8PadfxmXgkpQYzT9NG5sVYGqL4a/tZf+FV3OdaaL+1UxYayQjDz2Z
 kEZenNaLMxBzalIV4C/Rzzq4/cJcRp1dp2H4cDOkj/XOCXrDX7dWyeKL1V3vSuvEctXp3dw05LQkr
 g+tJsJJ6IsAMJLy4/VUedugDQE86TuidIjDCmiGoxUxSRSdcHtgkNus+A5xNDLrS2tPP2qXB5+Yat
 +1q/ELyRfzRBzIPPVTFewxF9wcfZx2VDQZTxCnOmMEozqXkqio0zaXTxiSb6ZdJxoNrYrcdEChXiu
 E5WBSsFQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:58922 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6WgY-0008Pi-R0; Tue, 25 Feb 2020 09:39:27 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6WgQ-0000Tc-JZ; Tue, 25 Feb 2020 09:39:18 +0000
In-Reply-To: <20200225093703.GS25745@shell.armlinux.org.uk>
References: <20200225093703.GS25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next 7/8] net: mvneta: use resolved link config in
 mac_link_up()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j6WgQ-0000Tc-JZ@rmk-PC.armlinux.org.uk>
Date: Tue, 25 Feb 2020 09:39:18 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_014133_931440_CFCF7CE9 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-doc@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@xilinx.com>, Jose Abreu <joabreu@synopsys.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Marvell mvneta ethernet driver to use the finalised link
parameters in mac_link_up() rather than the parameters in mac_config().

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/net/ethernet/marvell/mvneta.c | 55 ++++++++++++++++++---------
 1 file changed, 38 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index 9af3f8d5b289..b22eeb5f8700 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -3830,13 +3830,9 @@ static void mvneta_mac_config(struct phylink_config *config, unsigned int mode,
 	new_clk = gmac_clk & ~MVNETA_GMAC_1MS_CLOCK_ENABLE;
 	new_an = gmac_an & ~(MVNETA_GMAC_INBAND_AN_ENABLE |
 			     MVNETA_GMAC_INBAND_RESTART_AN |
-			     MVNETA_GMAC_CONFIG_MII_SPEED |
-			     MVNETA_GMAC_CONFIG_GMII_SPEED |
 			     MVNETA_GMAC_AN_SPEED_EN |
 			     MVNETA_GMAC_ADVERT_SYM_FLOW_CTRL |
-			     MVNETA_GMAC_CONFIG_FLOW_CTRL |
 			     MVNETA_GMAC_AN_FLOW_CTRL_EN |
-			     MVNETA_GMAC_CONFIG_FULL_DUPLEX |
 			     MVNETA_GMAC_AN_DUPLEX_EN);
 
 	/* Even though it might look weird, when we're configured in
@@ -3851,24 +3847,20 @@ static void mvneta_mac_config(struct phylink_config *config, unsigned int mode,
 
 	if (phylink_test(state->advertising, Pause))
 		new_an |= MVNETA_GMAC_ADVERT_SYM_FLOW_CTRL;
-	if (state->pause & MLO_PAUSE_TXRX_MASK)
-		new_an |= MVNETA_GMAC_CONFIG_FLOW_CTRL;
 
 	if (!phylink_autoneg_inband(mode)) {
-		/* Phy or fixed speed */
-		if (state->duplex)
-			new_an |= MVNETA_GMAC_CONFIG_FULL_DUPLEX;
-
-		if (state->speed == SPEED_1000 || state->speed == SPEED_2500)
-			new_an |= MVNETA_GMAC_CONFIG_GMII_SPEED;
-		else if (state->speed == SPEED_100)
-			new_an |= MVNETA_GMAC_CONFIG_MII_SPEED;
+		/* Phy or fixed speed - nothing to do, leave the
+		 * configured speed, duplex and flow control as-is.
+		 */
 	} else if (state->interface == PHY_INTERFACE_MODE_SGMII) {
 		/* SGMII mode receives the state from the PHY */
 		new_ctrl2 |= MVNETA_GMAC2_INBAND_AN_ENABLE;
 		new_clk |= MVNETA_GMAC_1MS_CLOCK_ENABLE;
 		new_an = (new_an & ~(MVNETA_GMAC_FORCE_LINK_DOWN |
-				     MVNETA_GMAC_FORCE_LINK_PASS)) |
+				     MVNETA_GMAC_FORCE_LINK_PASS |
+				     MVNETA_GMAC_CONFIG_MII_SPEED |
+				     MVNETA_GMAC_CONFIG_GMII_SPEED |
+				     MVNETA_GMAC_CONFIG_FULL_DUPLEX)) |
 			 MVNETA_GMAC_INBAND_AN_ENABLE |
 			 MVNETA_GMAC_AN_SPEED_EN |
 			 MVNETA_GMAC_AN_DUPLEX_EN;
@@ -3877,7 +3869,8 @@ static void mvneta_mac_config(struct phylink_config *config, unsigned int mode,
 		new_ctrl0 |= MVNETA_GMAC0_PORT_1000BASE_X;
 		new_clk |= MVNETA_GMAC_1MS_CLOCK_ENABLE;
 		new_an = (new_an & ~(MVNETA_GMAC_FORCE_LINK_DOWN |
-				     MVNETA_GMAC_FORCE_LINK_PASS)) |
+				     MVNETA_GMAC_FORCE_LINK_PASS |
+				     MVNETA_GMAC_CONFIG_MII_SPEED)) |
 			 MVNETA_GMAC_INBAND_AN_ENABLE |
 			 MVNETA_GMAC_CONFIG_GMII_SPEED |
 			 /* The MAC only supports FD mode */
@@ -3977,8 +3970,36 @@ static void mvneta_mac_link_up(struct phylink_config *config,
 
 	if (!phylink_autoneg_inband(mode)) {
 		val = mvreg_read(pp, MVNETA_GMAC_AUTONEG_CONFIG);
-		val &= ~MVNETA_GMAC_FORCE_LINK_DOWN;
+		val &= ~(MVNETA_GMAC_FORCE_LINK_DOWN |
+			 MVNETA_GMAC_CONFIG_MII_SPEED |
+			 MVNETA_GMAC_CONFIG_GMII_SPEED |
+			 MVNETA_GMAC_CONFIG_FLOW_CTRL |
+			 MVNETA_GMAC_CONFIG_FULL_DUPLEX);
 		val |= MVNETA_GMAC_FORCE_LINK_PASS;
+
+		if (speed == SPEED_1000 || speed == SPEED_2500)
+			val |= MVNETA_GMAC_CONFIG_GMII_SPEED;
+		else if (speed == SPEED_100)
+			val |= MVNETA_GMAC_CONFIG_MII_SPEED;
+
+		if (duplex == DUPLEX_FULL)
+			val |= MVNETA_GMAC_CONFIG_FULL_DUPLEX;
+
+		if (tx_pause || rx_pause)
+			val |= MVNETA_GMAC_CONFIG_FLOW_CTRL;
+
+		mvreg_write(pp, MVNETA_GMAC_AUTONEG_CONFIG, val);
+	} else {
+		/* When inband doesn't cover flow control or flow control is
+		 * disabled, we need to manually configure it. This bit will
+		 * only have effect if MVNETA_GMAC_AN_FLOW_CTRL_EN is unset.
+		 */
+		val = mvreg_read(pp, MVNETA_GMAC_AUTONEG_CONFIG);
+		val &= ~MVNETA_GMAC_CONFIG_FLOW_CTRL;
+
+		if (tx_pause || rx_pause)
+			val |= MVNETA_GMAC_CONFIG_FLOW_CTRL;
+
 		mvreg_write(pp, MVNETA_GMAC_AUTONEG_CONFIG, val);
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
