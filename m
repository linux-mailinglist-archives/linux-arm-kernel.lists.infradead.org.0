Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8829816BDC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:43:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLLUhyViRDDgfz3STjxqIpsHkUFeUn7cvxbR8rJ8vwY=; b=gOvO8g0uMdQjTb
	jPfvCUBvpEFy7WixUhxGFRmzWNeDcBe5HUUXGM4zKNaa1b2zUp8mlQ6suWcPtwrsLub75lk2OlsU0
	Hytid514mKaWU+eJ7yqTjA44IV2zw1W8uhCOaD004I2e6J4+l3tJQ6lnwxbu2itVeyjExoQtTMgx5
	1U8ifvX5Vj79BAfWkEO71rc1UpqSY9mKwcyw50DMZTGDhfPw2eP1zSts9Hu72y4+71h5E7obCkCvL
	/OCGUHVaz8RohmpsTtJ552dMDzFshy2TqI6w3yR/0jN7o1BnS7BlmD5IzBne2kgDQDme5fa8v3AQA
	XkMr+VL3laF/lvhMSfcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Wke-0000rI-Lf; Tue, 25 Feb 2020 09:43:40 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Wj1-0007qQ-GV; Tue, 25 Feb 2020 09:42:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d3VDUs9GECL3V7Id9j1fk72SoO2qfr/Dzvti38P06AQ=; b=pWKjtiSBO4vK2BJ1qSte9upRW2
 blbcnFqZrka33f8Smc2cQ8EUmFoDXOUV8Jm8NT0LFSCKMTroYL/KOjjCVvrV99RAQWF0CvLFft1+W
 IDc3BTIgR0J49TlWl5eQCjy4BZAlDkPK+K1QYb34rNa2MnemPKTFcDB5tI9othXZOrSWreScyu7qH
 5ASukZDNR9QvsvtxOPXyq4AlnO4Vy5hDT3fYpJJoiRYTrBMLMADnjnW6wiQ/4dIqAeXMnG+FSuv9X
 /IBkd7c71AqIitzgWYavkstoE4UFFWhUKDgxEShu+Taab9Q27F/PT1KdAAyOURy2Su4Tx2MJooqQE
 yFRV5sOA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:58916 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6WgF-0008PK-GB; Tue, 25 Feb 2020 09:39:08 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j6WgB-0000TB-95; Tue, 25 Feb 2020 09:39:03 +0000
In-Reply-To: <20200225093703.GS25745@shell.armlinux.org.uk>
References: <20200225093703.GS25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next 4/8] net: axienet: use resolved link config in
 mac_link_up()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j6WgB-0000TB-95@rmk-PC.armlinux.org.uk>
Date: Tue, 25 Feb 2020 09:39:03 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_014159_763443_662692A7 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
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

Convert the Xilinx AXI ethernet driver to use the finalised link
parameters in mac_link_up() rather than the parameters in mac_config().

Tested-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 38 +++++++++----------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 197740781157..c2f4c5ca2e80 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1440,6 +1440,22 @@ static void axienet_mac_an_restart(struct phylink_config *config)
 
 static void axienet_mac_config(struct phylink_config *config, unsigned int mode,
 			       const struct phylink_link_state *state)
+{
+	/* nothing meaningful to do */
+}
+
+static void axienet_mac_link_down(struct phylink_config *config,
+				  unsigned int mode,
+				  phy_interface_t interface)
+{
+	/* nothing meaningful to do */
+}
+
+static void axienet_mac_link_up(struct phylink_config *config,
+				struct phy_device *phy,
+				unsigned int mode, phy_interface_t interface,
+				int speed, int duplex,
+				bool tx_pause, bool rx_pause)
 {
 	struct net_device *ndev = to_net_dev(config->dev);
 	struct axienet_local *lp = netdev_priv(ndev);
@@ -1448,7 +1464,7 @@ static void axienet_mac_config(struct phylink_config *config, unsigned int mode,
 	emmc_reg = axienet_ior(lp, XAE_EMMC_OFFSET);
 	emmc_reg &= ~XAE_EMMC_LINKSPEED_MASK;
 
-	switch (state->speed) {
+	switch (speed) {
 	case SPEED_1000:
 		emmc_reg |= XAE_EMMC_LINKSPD_1000;
 		break;
@@ -1467,33 +1483,17 @@ static void axienet_mac_config(struct phylink_config *config, unsigned int mode,
 	axienet_iow(lp, XAE_EMMC_OFFSET, emmc_reg);
 
 	fcc_reg = axienet_ior(lp, XAE_FCC_OFFSET);
-	if (state->pause & MLO_PAUSE_TX)
+	if (tx_pause)
 		fcc_reg |= XAE_FCC_FCTX_MASK;
 	else
 		fcc_reg &= ~XAE_FCC_FCTX_MASK;
-	if (state->pause & MLO_PAUSE_RX)
+	if (rx_pause)
 		fcc_reg |= XAE_FCC_FCRX_MASK;
 	else
 		fcc_reg &= ~XAE_FCC_FCRX_MASK;
 	axienet_iow(lp, XAE_FCC_OFFSET, fcc_reg);
 }
 
-static void axienet_mac_link_down(struct phylink_config *config,
-				  unsigned int mode,
-				  phy_interface_t interface)
-{
-	/* nothing meaningful to do */
-}
-
-static void axienet_mac_link_up(struct phylink_config *config,
-				struct phy_device *phy,
-				unsigned int mode, phy_interface_t interface,
-				int speed, int duplex,
-				bool tx_pause, bool rx_pause)
-{
-	/* nothing meaningful to do */
-}
-
 static const struct phylink_mac_ops axienet_phylink_ops = {
 	.validate = axienet_validate,
 	.mac_pcs_get_state = axienet_mac_pcs_get_state,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
