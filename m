Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9F216FC27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:27:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGE4+NXwwwwFzG1Lf9cSLumZ/il4VKcLfU3009YaC6Y=; b=ZGTfAKIj4RpeCf
	Tf5lS6VVghIgcsyW99BM8FXndnjZWiVzYl/AKincjjcugvnOhvoacVw+zblWagxLmMQvYI8SOC1Kb
	k1Mr1lE82auLF8azfQZWISOGzSsk8eD8cloA0sIvaAJBeTZyqUJxIrAZswYaGdPXhxK3mMsrwGeBY
	dJYtRVwGpi2yLcAxjfY+0KtY2u3W9iuesIech6nsbKOFQQB14nSo5Y6FrC1prhHpMJUOJhRGNesvU
	oPMEh7reG8jRyGfT3BEZJ//fDQj7dSZUpZJsgpIT2d/mnlaC0WwmXd80Ale9IZdICvHcWvUreCKqP
	K/FartX6Iu09TjJnP9IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tuL-0007Zt-P9; Wed, 26 Feb 2020 10:27:13 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tti-00074x-AA; Wed, 26 Feb 2020 10:26:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G8lpiHOZ+WUfp/iCKEL1UO+gAa/0Xygzi08CY28mEYI=; b=aimr3yBnSmB7VNsSBlEvPEzI31
 OOFIvxuzvtBWRDjB5YsOIgJDZIOwS7RxGwfvUHqPOnCOYZR3GvpoRdXMeIVHzepDtQ9OMn2FHtz6i
 Tp4DkbZ+yPIOQLImHhiQaEpQaM0fM9F9mn+aASuz60Y/22Cv97bSu+oqwlpGwLjMVj/EvzrzHeOYg
 2HQJj4AN5K4UJw5F2G7U1O2QjAL2NVXbjZpccFUOJNz+gQGHIUIDtd/iq3b3ZDJZldpXyhwTaktn1
 hax4/+Uook7zySAR0zoADe9UgzkzfrbT++/RRWHFwjdkxKol4xKXoAoelnTwzD4MKyol34U0l85xr
 +0T6Htlg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:53878 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6trb-0006sW-8D; Wed, 26 Feb 2020 10:24:23 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6trV-0003H1-5H; Wed, 26 Feb 2020 10:24:17 +0000
In-Reply-To: <20200226102312.GX25745@shell.armlinux.org.uk>
References: <20200226102312.GX25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next v2 8/8] net: mvpp2: use resolved link config in
 mac_link_up()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j6trV-0003H1-5H@rmk-PC.armlinux.org.uk>
Date: Wed, 26 Feb 2020 10:24:17 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_022634_858199_EFF30F7D 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Convert the Marvell mvpp2 ethernet driver to use the finalised link
parameters in mac_link_up() rather than the parameters in mac_config().

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   | 83 +++++++++++--------
 1 file changed, 47 insertions(+), 36 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
index ed8042d97e29..6b9c7ed2547e 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
@@ -4976,15 +4976,13 @@ static void mvpp2_gmac_config(struct mvpp2_port *port, unsigned int mode,
 	old_ctrl2 = ctrl2 = readl(port->base + MVPP2_GMAC_CTRL_2_REG);
 	old_ctrl4 = ctrl4 = readl(port->base + MVPP22_GMAC_CTRL_4_REG);
 
-	an &= ~(MVPP2_GMAC_CONFIG_MII_SPEED | MVPP2_GMAC_CONFIG_GMII_SPEED |
-		MVPP2_GMAC_AN_SPEED_EN | MVPP2_GMAC_FC_ADV_EN |
+	an &= ~(MVPP2_GMAC_AN_SPEED_EN | MVPP2_GMAC_FC_ADV_EN |
 		MVPP2_GMAC_FC_ADV_ASM_EN | MVPP2_GMAC_FLOW_CTRL_AUTONEG |
-		MVPP2_GMAC_CONFIG_FULL_DUPLEX | MVPP2_GMAC_AN_DUPLEX_EN |
-		MVPP2_GMAC_IN_BAND_AUTONEG | MVPP2_GMAC_IN_BAND_AUTONEG_BYPASS);
+		MVPP2_GMAC_AN_DUPLEX_EN | MVPP2_GMAC_IN_BAND_AUTONEG |
+		MVPP2_GMAC_IN_BAND_AUTONEG_BYPASS);
 	ctrl0 &= ~MVPP2_GMAC_PORT_TYPE_MASK;
 	ctrl2 &= ~(MVPP2_GMAC_INBAND_AN_MASK | MVPP2_GMAC_PORT_RESET_MASK |
 		   MVPP2_GMAC_PCS_ENABLE_MASK);
-	ctrl4 &= ~(MVPP22_CTRL4_RX_FC_EN | MVPP22_CTRL4_TX_FC_EN);
 
 	/* Configure port type */
 	if (phy_interface_mode_is_8023z(state->interface)) {
@@ -5014,31 +5012,20 @@ static void mvpp2_gmac_config(struct mvpp2_port *port, unsigned int mode,
 
 	/* Configure negotiation style */
 	if (!phylink_autoneg_inband(mode)) {
-		/* Phy or fixed speed - no in-band AN */
-		if (state->duplex)
-			an |= MVPP2_GMAC_CONFIG_FULL_DUPLEX;
-
-		if (state->speed == SPEED_1000 || state->speed == SPEED_2500)
-			an |= MVPP2_GMAC_CONFIG_GMII_SPEED;
-		else if (state->speed == SPEED_100)
-			an |= MVPP2_GMAC_CONFIG_MII_SPEED;
-
-		if (state->pause & MLO_PAUSE_TX)
-			ctrl4 |= MVPP22_CTRL4_TX_FC_EN;
-		if (state->pause & MLO_PAUSE_RX)
-			ctrl4 |= MVPP22_CTRL4_RX_FC_EN;
+		/* Phy or fixed speed - no in-band AN, nothing to do, leave the
+		 * configured speed, duplex and flow control as-is.
+		 */
 	} else if (state->interface == PHY_INTERFACE_MODE_SGMII) {
 		/* SGMII in-band mode receives the speed and duplex from
 		 * the PHY. Flow control information is not received. */
-		an &= ~(MVPP2_GMAC_FORCE_LINK_DOWN | MVPP2_GMAC_FORCE_LINK_PASS);
+		an &= ~(MVPP2_GMAC_FORCE_LINK_DOWN |
+			MVPP2_GMAC_FORCE_LINK_PASS |
+			MVPP2_GMAC_CONFIG_MII_SPEED |
+			MVPP2_GMAC_CONFIG_GMII_SPEED |
+			MVPP2_GMAC_CONFIG_FULL_DUPLEX);
 		an |= MVPP2_GMAC_IN_BAND_AUTONEG |
 		      MVPP2_GMAC_AN_SPEED_EN |
 		      MVPP2_GMAC_AN_DUPLEX_EN;
-
-		if (state->pause & MLO_PAUSE_TX)
-			ctrl4 |= MVPP22_CTRL4_TX_FC_EN;
-		if (state->pause & MLO_PAUSE_RX)
-			ctrl4 |= MVPP22_CTRL4_RX_FC_EN;
 	} else if (phy_interface_mode_is_8023z(state->interface)) {
 		/* 1000BaseX and 2500BaseX ports cannot negotiate speed nor can
 		 * they negotiate duplex: they are always operating with a fixed
@@ -5046,19 +5033,17 @@ static void mvpp2_gmac_config(struct mvpp2_port *port, unsigned int mode,
 		 * speed and full duplex here.
 		 */
 		ctrl0 |= MVPP2_GMAC_PORT_TYPE_MASK;
-		an &= ~(MVPP2_GMAC_FORCE_LINK_DOWN | MVPP2_GMAC_FORCE_LINK_PASS);
+		an &= ~(MVPP2_GMAC_FORCE_LINK_DOWN |
+			MVPP2_GMAC_FORCE_LINK_PASS |
+			MVPP2_GMAC_CONFIG_MII_SPEED |
+			MVPP2_GMAC_CONFIG_GMII_SPEED |
+			MVPP2_GMAC_CONFIG_FULL_DUPLEX);
 		an |= MVPP2_GMAC_IN_BAND_AUTONEG |
 		      MVPP2_GMAC_CONFIG_GMII_SPEED |
 		      MVPP2_GMAC_CONFIG_FULL_DUPLEX;
 
-		if (state->pause & MLO_PAUSE_AN && state->an_enabled) {
+		if (state->pause & MLO_PAUSE_AN && state->an_enabled)
 			an |= MVPP2_GMAC_FLOW_CTRL_AUTONEG;
-		} else {
-			if (state->pause & MLO_PAUSE_TX)
-				ctrl4 |= MVPP22_CTRL4_TX_FC_EN;
-			if (state->pause & MLO_PAUSE_RX)
-				ctrl4 |= MVPP22_CTRL4_RX_FC_EN;
-		}
 	}
 
 /* Some fields of the auto-negotiation register require the port to be down when
@@ -5155,18 +5140,44 @@ static void mvpp2_mac_link_up(struct phylink_config *config,
 	struct mvpp2_port *port = netdev_priv(dev);
 	u32 val;
 
-	if (!phylink_autoneg_inband(mode)) {
-		if (mvpp2_is_xlg(interface)) {
+	if (mvpp2_is_xlg(interface)) {
+		if (!phylink_autoneg_inband(mode)) {
 			val = readl(port->base + MVPP22_XLG_CTRL0_REG);
 			val &= ~MVPP22_XLG_CTRL0_FORCE_LINK_DOWN;
 			val |= MVPP22_XLG_CTRL0_FORCE_LINK_PASS;
 			writel(val, port->base + MVPP22_XLG_CTRL0_REG);
-		} else {
+		}
+	} else {
+		if (!phylink_autoneg_inband(mode)) {
 			val = readl(port->base + MVPP2_GMAC_AUTONEG_CONFIG);
-			val &= ~MVPP2_GMAC_FORCE_LINK_DOWN;
+			val &= ~(MVPP2_GMAC_FORCE_LINK_DOWN |
+				 MVPP2_GMAC_CONFIG_MII_SPEED |
+				 MVPP2_GMAC_CONFIG_GMII_SPEED |
+				 MVPP2_GMAC_CONFIG_FULL_DUPLEX);
 			val |= MVPP2_GMAC_FORCE_LINK_PASS;
+
+			if (speed == SPEED_1000 || speed == SPEED_2500)
+				val |= MVPP2_GMAC_CONFIG_GMII_SPEED;
+			else if (speed == SPEED_100)
+				val |= MVPP2_GMAC_CONFIG_MII_SPEED;
+
+			if (duplex == DUPLEX_FULL)
+				val |= MVPP2_GMAC_CONFIG_FULL_DUPLEX;
+
 			writel(val, port->base + MVPP2_GMAC_AUTONEG_CONFIG);
 		}
+
+		/* We can always update the flow control enable bits;
+		 * these will only be effective if flow control AN
+		 * (MVPP2_GMAC_FLOW_CTRL_AUTONEG) is disabled.
+		 */
+		val = readl(port->base + MVPP22_GMAC_CTRL_4_REG);
+		val &= ~(MVPP22_CTRL4_RX_FC_EN | MVPP22_CTRL4_TX_FC_EN);
+		if (tx_pause)
+			val |= MVPP22_CTRL4_TX_FC_EN;
+		if (rx_pause)
+			val |= MVPP22_CTRL4_RX_FC_EN;
+		writel(val, port->base + MVPP22_GMAC_CTRL_4_REG);
 	}
 
 	mvpp2_port_enable(port);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
