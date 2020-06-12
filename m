Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 588A31F76A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 12:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIEkbWIrCRNWYsKocdFMjYWUh3iXFdgCMI3DLcLVAU4=; b=EkgZBgAK0IyC8y
	WBbZHIvpLk0133KIvBgyL2eMjC2J0ACHGXqIdb/GUilFrR/FeEFxkYANAZabXMi61fNNuLgzTGk9k
	+EdWjM5vGeNMG/y8PPXKwy8xls+Ngw9SyOWrlli3y2A7xC6bqo/hmRnr2c6Fa+FfE4ZvUf/DQxCGF
	6mbPhKVZIWTX3s4F+d1zxkOFy05EfCARn5uM2GPBslUk9A0roJQfkHgUAdTrHGb3xTE3Y7wnRWTap
	TGEhDrw7vaONyPLeaKT81/o/s4/JK73mWJlkWL/KWM6inZH3m8hxqqC7TSBLHXyWvlnwhGpGVutK7
	3pULXD4iUam/osw/YSZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjgli-0002q8-20; Fri, 12 Jun 2020 10:18:38 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:32c8:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjglX-0002pV-1n
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 10:18:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GrDDr2B0HYKCkneUxTaJkyYzXAlMfAXQXQyogxLXHGM=; b=eMnyuUA2M1CVA2c3WOJ3cAZUg
 bwWu4h/bbnqYd/0OmHn5YQb0iyc+gue3q9mnLcj6A5N03pbb1EepDCiMozFiHeP6cbW4yxe9frl0n
 Oe7kahz8lrjuaL3tZCSSDzyNI0d67q+MZa+6nI34Wa6N82fOMtlMJXhgzgyGyHnjjjoVIxh8faR40
 Jp59RWKw6W+t7CWj+o5JtnRFybjFZs66WzDYNXsLIeOzXrFwY3EwZgP3lrv8cfvzgsy7klUpnQfZy
 sWlGVvRWHgzWSnGVBwHrpKUnRAyzsU3gCTAo7/zErAEVF6EiBomhk6aJJRx4LkaTX+f2YrlIncFQs
 soLDCVB+Q==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1ed9:1:5054:ff:fe00:4ec]:49460)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jjglR-0002aE-1c; Fri, 12 Jun 2020 11:18:21 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jjglQ-0006B3-5q; Fri, 12 Jun 2020 11:18:20 +0100
Date: Fri, 12 Jun 2020 11:18:20 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2] net: mvneta: Fix Serdes configuration for 2.5Gbps modes
Message-ID: <20200612101820.GF1551@shell.armlinux.org.uk>
References: <20200612083847.29942-1-s.hauer@pengutronix.de>
 <20200612084710.GC1551@shell.armlinux.org.uk>
 <20200612100114.GE1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200612100114.GE1551@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_031827_950325_1C4ED2F4 
X-CRM114-Status: GOOD (  32.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 11:01:15AM +0100, Russell King - ARM Linux admin wrote:
> On Fri, Jun 12, 2020 at 09:47:10AM +0100, Russell King - ARM Linux admin wrote:
> > On Fri, Jun 12, 2020 at 10:38:47AM +0200, Sascha Hauer wrote:
> > > The Marvell MVNETA Ethernet controller supports a 2.5Gbps SGMII mode
> > > called DRSGMII. Depending on the Port MAC Control Register0 PortType
> > > setting this seems to be either an overclocked SGMII mode or 2500BaseX.
> > > 
> > > This patch adds the necessary Serdes Configuration setting for the
> > > 2.5Gbps modes. There is no phy interface mode define for overclocked
> > > SGMII, so only 2500BaseX is handled for now.
> > > 
> > > As phy_interface_mode_is_8023z() returns true for both
> > > PHY_INTERFACE_MODE_1000BASEX and PHY_INTERFACE_MODE_2500BASEX we
> > > explicitly test for 1000BaseX instead of using
> > > phy_interface_mode_is_8023z() to differentiate the different
> > > possibilities.
> > > 
> > > Fixes: da58a931f248f ("net: mvneta: Add support for 2500Mbps SGMII")
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > 2500base-X is used today on Armada 388 and Armada 3720 platforms and
> > works - it is known to interoperate with Marvell PP2.2 hardware, as
> > well was various SFPs such as the Huawei MA5671A at 2.5Gbps.  The way
> > it is handled on these platforms is via the COMPHY, requesting that
> > the serdes is upclocked from 1.25Gbps to 3.125Gbps.
> > 
> > This "DRSGMII" mode is not mentioned in the functional specs for either
> > the Armada 388 or Armada 3720, the value you poke into the register is
> > not mentioned either.  As I've already requested, some information on
> > exactly what this "DRSGMII" is would be very useful, it can't be
> > "double-rate SGMII" because that would give you 2Gbps instead of 1Gbps.
> > 
> > So, I suspect this breaks the platforms that are known to work.
> > 
> > We need a proper description of what DRSGMII is before we can consider
> > taking any patches for it.
> 
> Okay, having dug through the Armada XP, 370, 388, 3720 specs, I think
> this is fine after all - but something that will help for the future
> would be to document that this register does not exist on the 388 and
> 3720 devices (which brings up the question whether we should be writing
> it there.)  The field was moved into the comphy on those devices.
> 
> So, it looks like if we have a comphy, we should not be writing this
> register.
> 
> What's more, the write to MVNETA_SERDES_CFG should not be in
> mvneta_port_power_up(); it's likely that XP and 370 will not work
> properly with phylink.  It needs to be done in a similar location to
> mvneta_comphy_init(), so that phylink can switch between 1G and 2.5G
> speeds.
> 
> As you have an Armada XP system, you are best placed to test moving
> that write.

Here's my suggestion - it won't apply to mainline or net* trees, but
gives you the idea I'm proposing:

diff --git a/drivers/net/ethernet/marvell/mvneta.c b/drivers/net/ethernet/marvell/mvneta.c
index 9e25d608d856..17db74d61bc2 100644
--- a/drivers/net/ethernet/marvell/mvneta.c
+++ b/drivers/net/ethernet/marvell/mvneta.c
@@ -107,9 +107,11 @@
 #define      MVNETA_TX_IN_PRGRS                  BIT(1)
 #define      MVNETA_TX_FIFO_EMPTY                BIT(8)
 #define MVNETA_RX_MIN_FRAME_SIZE                 0x247c
+/* Only exists on Armada XP and Armada 370 */
 #define MVNETA_SERDES_CFG			 0x24A0
-#define      MVNETA_SGMII_SERDES_PROTO		 0x0cc7
 #define      MVNETA_QSGMII_SERDES_PROTO		 0x0667
+#define      MVNETA_SGMII_SERDES_PROTO		 0x0cc7
+#define      MVNETA_HSGMII_SERDES_PROTO		 0x1107
 #define MVNETA_TYPE_PRIO                         0x24bc
 #define      MVNETA_FORCE_UNI                    BIT(21)
 #define MVNETA_TXQ_CMD_1                         0x24e4
@@ -3457,9 +3459,6 @@ static int mvneta_comphy_init(struct mvneta_port *pp)
 {
 	int ret;
 
-	if (!pp->comphy)
-		return 0;
-
 	ret = phy_set_mode_ext(pp->comphy, PHY_MODE_ETHERNET,
 			       pp->phy_interface);
 	if (ret)
@@ -3468,11 +3467,47 @@ static int mvneta_comphy_init(struct mvneta_port *pp)
 	return phy_power_on(pp->comphy);
 }
 
+static int mvneta_config_interface(struct mvneta_port *pp,i
+				   phy_interface_t interface)
+{
+	int ret = 0;
+
+	if (pp->comphy) {
+		if (interface == PHY_INTERFACE_MODE_SGMII ||
+		    interface == PHY_INTERFACE_MODE_1000BASEX ||
+		    interface == PHY_INTERFACE_MODE_2500BASEX) {
+			ret = mvneta_comphy_init(pp);
+		}
+	} else {
+		switch (interface) {
+		case PHY_INTERFACE_MODE_QSGMII:
+			mvreg_write(pp, MVNETA_SERDES_CFG,
+				    MVNETA_QSGMII_SERDES_PROTO);
+			break;
+
+		case PHY_INTERFACE_MODE_SGMII:
+		case PHY_INTERFACE_MODE_1000BASEX:
+			mvreg_write(pp, MVNETA_SERDES_CFG,
+				    MVNETA_SGMII_SERDES_PROTO);
+			break;
+
+		case PHY_INTERFACE_MODE_2500BASEX:
+			mvreg_write(pp, MVNETA_SERDES_CFG,
+				    MVNETA_HSGMII_SERDES_PROTO);
+			break;
+		}
+	}
+
+	pp->phy_interface = interface;
+
+	return ret;
+}
+
 static void mvneta_start_dev(struct mvneta_port *pp)
 {
 	int cpu;
 
-	WARN_ON(mvneta_comphy_init(pp));
+	WARN_ON(mvneta_config_interface(pp, pp->phy_interface));
 
 	mvgmac_set_max_rx_size(&pp->gmac, pp->pkt_size);
 	mvneta_txq_max_tx_size_set(pp, pp->pkt_size);
@@ -3702,14 +3737,9 @@ static int mvneta_pcs_config(struct phylink_config *config,
 	/* We should never see Asym_Pause set */
 	WARN_ON(phylink_test(advertising, Asym_Pause));
 
-	if (pp->comphy && pp->phy_interface != interface &&
-	    (interface == PHY_INTERFACE_MODE_SGMII ||
-	     interface == PHY_INTERFACE_MODE_1000BASEX ||
-	     interface == PHY_INTERFACE_MODE_2500BASEX)) {
-		pp->phy_interface = interface;
-
+	if (pp->phy_interface != interface) {
 		WARN_ON(phy_power_off(pp->comphy));
-		WARN_ON(mvneta_comphy_init(pp));
+		mvneta_config_interface(pp, interface);
 	}
 
 	if (want_1ms_clock) {
@@ -4794,12 +4824,10 @@ static int mvneta_port_power_up(struct mvneta_port *pp, int phy_mode)
 	/* MAC Cause register should be cleared */
 	mvreg_write(pp, MVNETA_UNIT_INTR_CAUSE, 0);
 
-	if (phy_mode == PHY_INTERFACE_MODE_QSGMII)
-		mvreg_write(pp, MVNETA_SERDES_CFG, MVNETA_QSGMII_SERDES_PROTO);
-	else if (phy_mode == PHY_INTERFACE_MODE_SGMII ||
-		 phy_interface_mode_is_8023z(phy_mode))
-		mvreg_write(pp, MVNETA_SERDES_CFG, MVNETA_SGMII_SERDES_PROTO);
-	else if (!phy_interface_mode_is_rgmii(phy_mode))
+	if (phy_mode != PHY_INTERFACE_MODE_QSGMII &&
+	    phy_mode != PHY_INTERFACE_MODE_SGMII &&
+	    !phy_interface_mode_is_8023z(phy_mode) &&
+	    !phy_interface_mode_is_rgmii(phy_mode))
 		return -EINVAL;
 
 	return 0;

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
