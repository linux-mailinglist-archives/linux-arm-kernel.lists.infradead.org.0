Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F4716BD94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+mmY6p1IfpMlGZns4qcKEkoQPaWB61OS9+a5cMfo6Y=; b=VFcufPRQLivvMU
	gf4lEzG0T+L6ADXisJiAJ4tTV4Wq00NOE6WOCiPxy0/FF22FssmT5f+U3lhQSdqsAHXbbfW/J6y39
	OL723HAf454Q9tZ41sHxLt1dOOyABOPhzvnQ14chZ/biXqqZpvSMJhsfn8+/0w4Dkh1Dja+cmAEw4
	1a2GjAbDVEEzKr1xJaRczXCIC65Vyo5mfawXogYr1jnuyqy5Skzd4wVZ0+VVhezxqFOASD4ok6REL
	pDzs6da+jv0gd8xB3R0Ng0GaSm/rqNeT0Q6zFIEvyF53/MiyB7V7odRgkUJcadsMk0WGaWVMgyoID
	k9qFTgqZJuSHJCsYdRgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6WiW-0007Hq-0p; Tue, 25 Feb 2020 09:41:28 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6WiJ-0006zN-3A; Tue, 25 Feb 2020 09:41:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jiP34lO1U2EOjRP+R8rbkehhBwrfBY+V5xaU3X9MBpI=; b=pFGy7DwYmkP+2TZ9k50w3+B69t
 hepkfRWTXum/qfGMv8o6UDch9kkyXDdtYGaQjWxGUy6G+hiaQ4ZxgePy/nOKTFJ5Upmd/QR20Cv4J
 vzBp4B+H9QUpgU5hzpcDtbYS3u+AWPz94XDDXcAVgX6D0WIK0wGbaL65hof9h/Wk0g8dViWJecQwx
 SLB45vAjEZOvBVVBHvaYRuZJMLxoaymwxmnhIQHvpeITqmHyLI3hYA63dN6oRa16r+ZT5kVS6/hgY
 vylfJ5lIf0DBAMTHoLK7QnRZAUz8HwPyWgXrvUC7tPRm+dzmvJ7cJhvw+v5kPZza5eF3iw0yybE6j
 pWPFV60Q==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:51286 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6WgM-0008PS-Ld; Tue, 25 Feb 2020 09:39:15 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6WgG-0000TJ-CC; Tue, 25 Feb 2020 09:39:08 +0000
In-Reply-To: <20200225093703.GS25745@shell.armlinux.org.uk>
References: <20200225093703.GS25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next 5/8] net: dpaa2-mac: use resolved link config in
 mac_link_up()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j6WgG-0000TJ-CC@rmk-PC.armlinux.org.uk>
Date: Tue, 25 Feb 2020 09:39:08 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_014115_575527_0D399F56 
X-CRM114-Status: GOOD (  13.17  )
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

Convert the DPAA2 ethernet driver to use the finalised link parameters
in mac_link_up() rather than the parameters in mac_config(), which are
more suited to the needs of the DPAA2 MC firmware than those available
via mac_config().

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 .../net/ethernet/freescale/dpaa2/dpaa2-mac.c  | 54 +++++++++++--------
 .../net/ethernet/freescale/dpaa2/dpaa2-mac.h  |  1 +
 2 files changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
index 3a75c5b58f95..3ee236c5fc37 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.c
@@ -123,35 +123,16 @@ static void dpaa2_mac_config(struct phylink_config *config, unsigned int mode,
 	struct dpmac_link_state *dpmac_state = &mac->state;
 	int err;
 
-	if (state->speed != SPEED_UNKNOWN)
-		dpmac_state->rate = state->speed;
-
-	if (state->duplex != DUPLEX_UNKNOWN) {
-		if (!state->duplex)
-			dpmac_state->options |= DPMAC_LINK_OPT_HALF_DUPLEX;
-		else
-			dpmac_state->options &= ~DPMAC_LINK_OPT_HALF_DUPLEX;
-	}
-
 	if (state->an_enabled)
 		dpmac_state->options |= DPMAC_LINK_OPT_AUTONEG;
 	else
 		dpmac_state->options &= ~DPMAC_LINK_OPT_AUTONEG;
 
-	if (state->pause & MLO_PAUSE_RX)
-		dpmac_state->options |= DPMAC_LINK_OPT_PAUSE;
-	else
-		dpmac_state->options &= ~DPMAC_LINK_OPT_PAUSE;
-
-	if (!!(state->pause & MLO_PAUSE_RX) ^ !!(state->pause & MLO_PAUSE_TX))
-		dpmac_state->options |= DPMAC_LINK_OPT_ASYM_PAUSE;
-	else
-		dpmac_state->options &= ~DPMAC_LINK_OPT_ASYM_PAUSE;
-
 	err = dpmac_set_link_state(mac->mc_io, 0,
 				   mac->mc_dev->mc_handle, dpmac_state);
 	if (err)
-		netdev_err(mac->net_dev, "dpmac_set_link_state() = %d\n", err);
+		netdev_err(mac->net_dev, "%s: dpmac_set_link_state() = %d\n",
+			   __func__, err);
 }
 
 static void dpaa2_mac_link_up(struct phylink_config *config,
@@ -165,10 +146,37 @@ static void dpaa2_mac_link_up(struct phylink_config *config,
 	int err;
 
 	dpmac_state->up = 1;
+
+	if (mac->if_link_type == DPMAC_LINK_TYPE_PHY) {
+		/* If the DPMAC is configured for PHY mode, we need
+		 * to pass the link parameters to the MC firmware.
+		 */
+		dpmac_state->rate = speed;
+
+		if (duplex == DUPLEX_HALF)
+			dpmac_state->options |= DPMAC_LINK_OPT_HALF_DUPLEX;
+		else if (duplex == DUPLEX_FULL)
+			dpmac_state->options &= ~DPMAC_LINK_OPT_HALF_DUPLEX;
+
+		/* This is lossy; the firmware really should take the pause
+		 * enablement status rather than pause/asym pause status.
+		 */
+		if (rx_pause)
+			dpmac_state->options |= DPMAC_LINK_OPT_PAUSE;
+		else
+			dpmac_state->options &= ~DPMAC_LINK_OPT_PAUSE;
+
+		if (rx_pause ^ tx_pause)
+			dpmac_state->options |= DPMAC_LINK_OPT_ASYM_PAUSE;
+		else
+			dpmac_state->options &= ~DPMAC_LINK_OPT_ASYM_PAUSE;
+	}
+
 	err = dpmac_set_link_state(mac->mc_io, 0,
 				   mac->mc_dev->mc_handle, dpmac_state);
 	if (err)
-		netdev_err(mac->net_dev, "dpmac_set_link_state() = %d\n", err);
+		netdev_err(mac->net_dev, "%s: dpmac_set_link_state() = %d\n",
+			   __func__, err);
 }
 
 static void dpaa2_mac_link_down(struct phylink_config *config,
@@ -241,6 +249,8 @@ int dpaa2_mac_connect(struct dpaa2_mac *mac)
 		goto err_close_dpmac;
 	}
 
+	mac->if_link_type = attr.link_type;
+
 	dpmac_node = dpaa2_mac_get_node(attr.id);
 	if (!dpmac_node) {
 		netdev_err(net_dev, "No dpmac@%d node found.\n", attr.id);
diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.h b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.h
index 4da8079b9155..2130d9c7d40e 100644
--- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.h
+++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-mac.h
@@ -20,6 +20,7 @@ struct dpaa2_mac {
 	struct phylink_config phylink_config;
 	struct phylink *phylink;
 	phy_interface_t if_mode;
+	enum dpmac_link_type if_link_type;
 };
 
 bool dpaa2_mac_is_type_fixed(struct fsl_mc_device *dpmac_dev,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
