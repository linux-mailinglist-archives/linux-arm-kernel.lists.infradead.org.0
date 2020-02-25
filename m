Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7962916BDBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:43:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSBvHgGjnhDLY1WFiPlL3bHK4gqH2T9rWeUUNg7AIog=; b=AwCfWeG+rrUtvv
	3IEFlA2dmir150B99s5oJTsjOAn9ZJ8abQ6/pcJmZnIpmFiX5+6BNFSrWcXl+b1h4KjRFbCtD5vlZ
	ailk4PCPNpfnK6UXTOnSFfQ0LeuGSefgNDqztA2slsYgQMRdPyCtVGvOiH1b0O38tgGntXTGJDF2d
	OIOKnfhRCgnQyUuEGW0golEz8+K6TlbydmZMn5qwzdNCbQjP4QqplJ9TnGBZdhw+46yy5zcu+HWqV
	/ZjYboq2OBNALWgTLEo3xqRdxIWQVsH+CbQ8MianmZ/SlUkbanq1ebxtcr+0dwcvCLzPUNXsemhGX
	yWz2zqqE+lxXBPwkQZVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Wk3-0000HM-Sa; Tue, 25 Feb 2020 09:43:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Wis-0005QJ-U3; Tue, 25 Feb 2020 09:41:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nGVPAKgb27ye+Q/49Be4u3IU2uOtnZSU40Ll1claFgc=; b=fReMfL9Ennl6jaA+v8qAVd5JiQ
 oKsb2bEfu4mjv5rCepTxxtWHq6VJwdwvvGZF+wrcqTpiMc5KvBK+I3i/yiYbVCulz+hj7YlYCXYg4
 RNx0nkPtD6b+jw6erZCcV6YvesYrj5i4u5l2A4zzgppyYPU/sGFp4nP3Gqw/obAJaCvKRj2UnG1AC
 JNLi2FX0YjC9lQwZJUNmtbehA//+1/LWLsqcUVOEfjHFBxpn12aFxgEzBh03Dccqv2Oc35UquntHe
 ZAdmV6lMkqQPNP/a2p+YEfcH079VkpGWG1G1379uGXFwKrLa4/ZY8LQFbvNho0MZTYplDMvo9+FOl
 QEbUqVZQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:38814 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6Wfw-0008Os-Jl; Tue, 25 Feb 2020 09:38:48 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6Wfv-0000Sj-Rx; Tue, 25 Feb 2020 09:38:47 +0000
In-Reply-To: <20200225093703.GS25745@shell.armlinux.org.uk>
References: <20200225093703.GS25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next 1/8] net: phylink: propagate resolved link config via
 mac_link_up()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j6Wfv-0000Sj-Rx@rmk-PC.armlinux.org.uk>
Date: Tue, 25 Feb 2020 09:38:47 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_014151_449517_2E144ECF 
X-CRM114-Status: GOOD (  15.12  )
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

Propagate the resolved link parameters via the mac_link_up() call for
MACs that do not automatically track their PCS state. We propagate the
link parameters via function arguments so that inappropriate members
of struct phylink_link_state can't be accessed, and creating a new
structure just for this adds needless complexity to the API.

Tested-by: Andre Przywara <andre.przywara@arm.com>
Tested-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 Documentation/networking/sfp-phylink.rst      | 17 +++++-
 drivers/net/ethernet/cadence/macb_main.c      |  7 ++-
 .../net/ethernet/freescale/dpaa2/dpaa2-mac.c  |  7 ++-
 drivers/net/ethernet/marvell/mvneta.c         |  8 ++-
 .../net/ethernet/marvell/mvpp2/mvpp2_main.c   | 19 +++++--
 drivers/net/ethernet/mediatek/mtk_eth_soc.c   |  7 ++-
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |  4 +-
 .../net/ethernet/xilinx/xilinx_axienet_main.c |  7 ++-
 drivers/net/phy/phylink.c                     |  9 ++-
 include/linux/phylink.h                       | 57 ++++++++++++++-----
 net/dsa/port.c                                |  4 +-
 11 files changed, 105 insertions(+), 41 deletions(-)

diff --git a/Documentation/networking/sfp-phylink.rst b/Documentation/networking/sfp-phylink.rst
index d753a309f9d1..8d7af28cd835 100644
--- a/Documentation/networking/sfp-phylink.rst
+++ b/Documentation/networking/sfp-phylink.rst
@@ -74,10 +74,13 @@ phylib to the sfp/phylink support.  Please send patches to improve
 this documentation.
 
 1. Optionally split the network driver's phylib update function into
-   three parts dealing with link-down, link-up and reconfiguring the
-   MAC settings. This can be done as a separate preparation commit.
+   two parts dealing with link-down and link-up. This can be done as
+   a separate preparation commit.
 
-   An example of this preparation can be found in git commit fc548b991fb0.
+   An older example of this preparation can be found in git commit
+   fc548b991fb0, although this was splitting into three parts; the
+   link-up part now includes configuring the MAC for the link settings.
+   Please see :c:func:`mac_link_up` for more information on this.
 
 2. Replace::
 
@@ -207,6 +210,14 @@ this documentation.
    using. This is particularly important for in-band negotiation
    methods such as 1000base-X and SGMII.
 
+   The :c:func:`mac_link_up` method is used to inform the MAC that the
+   link has come up. The call includes the negotiation mode and interface
+   for reference only. The finalised link parameters are also supplied
+   (speed, duplex and flow control/pause enablement settings) which
+   should be used to configure the MAC when the MAC and PCS are not
+   tightly integrated, or when the settings are not coming from in-band
+   negotiation.
+
    The :c:func:`mac_config` method is used to update the MAC with the
    requested state, and must avoid unnecessarily taking the link down
    when making changes to the MAC configuration.  This means the
diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 2c28da1737fe..7ab0bef5e1bd 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -626,8 +626,11 @@ static void macb_mac_link_down(struct phylink_config *config, unsigned int mode,
 	netif_tx_stop_all_queues(ndev);
 }
 
-static void macb_mac_link_up(struct phylink_config *config, unsigned int mode,
-			     phy_interface_t interface, struct phy_device *phy)
+static void macb_mac_link_up(struct phylink_config *config,
+			     struct phy_device *phy,
+			     unsigned int mode, phy_interface_t interface,
+			     int speed, int duplex,
+			     bool tx_pause, bool rx_pause)
 {
 	struct net_device *ndev = to_net_dev(config->dev);
 	struct macb *bp = netdev_priv(ndev);
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
index 84233e467ed1..3a75c5b58f95 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
@@ -154,8 +154,11 @@ static void dpaa2_mac_config(struct phylink_config *config, unsigned int mode,
 		netdev_err(mac->net_dev, "dpmac_set_link_state() = %d\n", err);
 }
 
-static void dpaa2_mac_link_up(struct phylink_config *config, unsigned int mode,
-			      phy_interface_t interface, struct phy_device *phy)
+static void dpaa2_mac_link_up(struct phylink_config *config,
+			      struct phy_device *phy,
+			      unsigned int mode, phy_interface_t interface,
+			      int speed, int duplex,
+			      bool tx_pause, bool rx_pause)
 {
 	struct dpaa2_mac *mac = phylink_to_dpaa2_mac(config);
 	struct dpmac_link_state *dpmac_state = &mac->state;
diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index 1c391f63a26f..9af3f8d5b289 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -3965,9 +3965,11 @@ static void mvneta_mac_link_down(struct phylink_config *config,
 	mvneta_set_eee(pp, false);
 }
 
-static void mvneta_mac_link_up(struct phylink_config *config, unsigned int mode,
-			       phy_interface_t interface,
-			       struct phy_device *phy)
+static void mvneta_mac_link_up(struct phylink_config *config,
+			       struct phy_device *phy,
+			       unsigned int mode, phy_interface_t interface,
+			       int speed, int duplex,
+			       bool tx_pause, bool rx_pause)
 {
 	struct net_device *ndev = to_net_dev(config->dev);
 	struct mvneta_port *pp = netdev_priv(ndev);
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
index 72133cbe55d4..ed8042d97e29 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
@@ -58,8 +58,11 @@ static struct {
  */
 static void mvpp2_mac_config(struct phylink_config *config, unsigned int mode,
 			     const struct phylink_link_state *state);
-static void mvpp2_mac_link_up(struct phylink_config *config, unsigned int mode,
-			      phy_interface_t interface, struct phy_device *phy);
+static void mvpp2_mac_link_up(struct phylink_config *config,
+			      struct phy_device *phy,
+			      unsigned int mode, phy_interface_t interface,
+			      int speed, int duplex,
+			      bool tx_pause, bool rx_pause);
 
 /* Queue modes */
 #define MVPP2_QDIST_SINGLE_MODE	0
@@ -3473,8 +3476,9 @@ static void mvpp2_start_dev(struct mvpp2_port *port)
 			.interface = port->phy_interface,
 		};
 		mvpp2_mac_config(&port->phylink_config, MLO_AN_INBAND, &state);
-		mvpp2_mac_link_up(&port->phylink_config, MLO_AN_INBAND,
-				  port->phy_interface, NULL);
+		mvpp2_mac_link_up(&port->phylink_config, NULL,
+				  MLO_AN_INBAND, port->phy_interface,
+				  SPEED_UNKNOWN, DUPLEX_UNKNOWN, false, false);
 	}
 
 	netif_tx_start_all_queues(port->dev);
@@ -5141,8 +5145,11 @@ static void mvpp2_mac_config(struct phylink_config *config, unsigned int mode,
 	mvpp2_port_enable(port);
 }
 
-static void mvpp2_mac_link_up(struct phylink_config *config, unsigned int mode,
-			      phy_interface_t interface, struct phy_device *phy)
+static void mvpp2_mac_link_up(struct phylink_config *config,
+			      struct phy_device *phy,
+			      unsigned int mode, phy_interface_t interface,
+			      int speed, int duplex,
+			      bool tx_pause, bool rx_pause)
 {
 	struct net_device *dev = to_net_dev(config->dev);
 	struct mvpp2_port *port = netdev_priv(dev);
diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index 8c6cfd15481c..8d28f90acfe7 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -412,9 +412,10 @@ static void mtk_mac_link_down(struct phylink_config *config, unsigned int mode,
 	mtk_w32(mac->hw, mcr, MTK_MAC_MCR(mac->id));
 }
 
-static void mtk_mac_link_up(struct phylink_config *config, unsigned int mode,
-			    phy_interface_t interface,
-			    struct phy_device *phy)
+static void mtk_mac_link_up(struct phylink_config *config,
+			    struct phy_device *phy,
+			    unsigned int mode, phy_interface_t interface,
+			    int speed, int duplex, bool tx_pause, bool rx_pause)
 {
 	struct mtk_mac *mac = container_of(config, struct mtk_mac,
 					   phylink_config);
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 37920b4da091..e039e715dcee 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -950,8 +950,10 @@ static void stmmac_mac_link_down(struct phylink_config *config,
 }
 
 static void stmmac_mac_link_up(struct phylink_config *config,
+			       struct phy_device *phy,
 			       unsigned int mode, phy_interface_t interface,
-			       struct phy_device *phy)
+			       int speed, int duplex,
+			       bool tx_pause, bool rx_pause)
 {
 	struct stmmac_priv *priv = netdev_priv(to_net_dev(config->dev));
 
diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 20746b801959..197740781157 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1486,9 +1486,10 @@ static void axienet_mac_link_down(struct phylink_config *config,
 }
 
 static void axienet_mac_link_up(struct phylink_config *config,
-				unsigned int mode,
-				phy_interface_t interface,
-				struct phy_device *phy)
+				struct phy_device *phy,
+				unsigned int mode, phy_interface_t interface,
+				int speed, int duplex,
+				bool tx_pause, bool rx_pause)
 {
 	/* nothing meaningful to do */
 }
diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index 2899fbe699ab..b4367fab7899 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -480,8 +480,11 @@ static void phylink_mac_link_up(struct phylink *pl,
 	struct net_device *ndev = pl->netdev;
 
 	pl->cur_interface = link_state.interface;
-	pl->ops->mac_link_up(pl->config, pl->cur_link_an_mode,
-			     pl->cur_interface, pl->phydev);
+	pl->ops->mac_link_up(pl->config, pl->phydev,
+			     pl->cur_link_an_mode, pl->cur_interface,
+			     link_state.speed, link_state.duplex,
+			     !!(link_state.pause & MLO_PAUSE_TX),
+			     !!(link_state.pause & MLO_PAUSE_RX));
 
 	if (ndev)
 		netif_carrier_on(ndev);
@@ -547,6 +550,8 @@ static void phylink_resolve(struct work_struct *w)
 				link_state.pause = pl->phy_state.pause;
 				phylink_apply_manual_flow(pl, &link_state);
 				phylink_mac_config(pl, &link_state);
+			} else {
+				phylink_apply_manual_flow(pl, &link_state);
 			}
 			break;
 		}
diff --git a/include/linux/phylink.h b/include/linux/phylink.h
index 812357c03df4..2180eb1aa254 100644
--- a/include/linux/phylink.h
+++ b/include/linux/phylink.h
@@ -91,9 +91,10 @@ struct phylink_mac_ops {
 	void (*mac_an_restart)(struct phylink_config *config);
 	void (*mac_link_down)(struct phylink_config *config, unsigned int mode,
 			      phy_interface_t interface);
-	void (*mac_link_up)(struct phylink_config *config, unsigned int mode,
-			    phy_interface_t interface,
-			    struct phy_device *phy);
+	void (*mac_link_up)(struct phylink_config *config,
+			    struct phy_device *phy, unsigned int mode,
+			    phy_interface_t interface, int speed, int duplex,
+			    bool tx_pause, bool rx_pause);
 };
 
 #if 0 /* For kernel-doc purposes only. */
@@ -152,6 +153,9 @@ void mac_pcs_get_state(struct phylink_config *config,
  * guaranteed to be correct, and so any mac_config() implementation must
  * never reference these fields.
  *
+ * (this requires a rewrite - please refer to mac_link_up() for situations
+ *  where the PCS and MAC are not tightly integrated.)
+ *
  * In all negotiation modes, as defined by @mode, @state->pause indicates the
  * pause settings which should be applied as follows. If %MLO_PAUSE_AN is not
  * set, %MLO_PAUSE_TX and %MLO_PAUSE_RX indicate whether the MAC should send
@@ -162,12 +166,20 @@ void mac_pcs_get_state(struct phylink_config *config,
  * The action performed depends on the currently selected mode:
  *
  * %MLO_AN_FIXED, %MLO_AN_PHY:
- *   Configure the specified @state->speed and @state->duplex over a link
- *   specified by @state->interface. @state->advertising may be used, but
- *   is not required. Pause modes as above. Other members of @state must
- *   be ignored.
+ *   Configure for non-inband negotiation mode, where the link settings
+ *   are completely communicated via mac_link_up().  The physical link
+ *   protocol from the MAC is specified by @state->interface.
+ *
+ *   @state->advertising may be used, but is not required.
+ *
+ *   Older drivers (prior to the mac_link_up() change) may use @state->speed,
+ *   @state->duplex and @state->pause to configure the MAC, but this is
+ *   deprecated; such drivers should be converted to use mac_link_up().
  *
- *   Valid state members: interface, speed, duplex, pause, advertising.
+ *   Other members of @state must be ignored.
+ *
+ *   Valid state members: interface, advertising.
+ *   Deprecated state members: speed, duplex, pause.
  *
  * %MLO_AN_INBAND:
  *   place the link in an inband negotiation mode (such as 802.3z
@@ -228,19 +240,34 @@ void mac_link_down(struct phylink_config *config, unsigned int mode,
 /**
  * mac_link_up() - allow the link to come up
  * @config: a pointer to a &struct phylink_config.
+ * @phy: any attached phy
  * @mode: link autonegotiation mode
  * @interface: link &typedef phy_interface_t mode
- * @phy: any attached phy
+ * @speed: link speed
+ * @duplex: link duplex
+ * @tx_pause: link transmit pause enablement status
+ * @rx_pause: link receive pause enablement status
  *
- * If @mode is not an in-band negotiation mode (as defined by
- * phylink_autoneg_inband()), allow the link to come up. If @phy
- * is non-%NULL, configure Energy Efficient Ethernet by calling
+ * Configure the MAC for an established link.
+ *
+ * @speed, @duplex, @tx_pause and @rx_pause indicate the finalised link
+ * settings, and should be used to configure the MAC block appropriately
+ * where these settings are not automatically conveyed from the PCS block,
+ * or if in-band negotiation (as defined by phylink_autoneg_inband(@mode))
+ * is disabled.
+ *
+ * Note that when 802.3z in-band negotiation is in use, it is possible
+ * that the user wishes to override the pause settings, and this should
+ * be allowed when considering the implementation of this method.
+ *
+ * If in-band negotiation mode is disabled, allow the link to come up. If
+ * @phy is non-%NULL, configure Energy Efficient Ethernet by calling
  * phy_init_eee() and perform appropriate MAC configuration for EEE.
  * Interface type selection must be done in mac_config().
  */
-void mac_link_up(struct phylink_config *config, unsigned int mode,
-		 phy_interface_t interface,
-		 struct phy_device *phy);
+void mac_link_up(struct phylink_config *config, struct phy_device *phy,
+		 unsigned int mode, phy_interface_t interface,
+		 int speed, int duplex, bool tx_pause, bool rx_pause);
 #endif
 
 struct phylink *phylink_create(struct phylink_config *, struct fwnode_handle *,
diff --git a/net/dsa/port.c b/net/dsa/port.c
index 774facb8d547..b2f5262b35cf 100644
--- a/net/dsa/port.c
+++ b/net/dsa/port.c
@@ -489,9 +489,11 @@ static void dsa_port_phylink_mac_link_down(struct phylink_config *config,
 }
 
 static void dsa_port_phylink_mac_link_up(struct phylink_config *config,
+					 struct phy_device *phydev,
 					 unsigned int mode,
 					 phy_interface_t interface,
-					 struct phy_device *phydev)
+					 int speed, int duplex,
+					 bool tx_pause, bool rx_pause)
 {
 	struct dsa_port *dp = container_of(config, struct dsa_port, pl_config);
 	struct dsa_switch *ds = dp->ds;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
