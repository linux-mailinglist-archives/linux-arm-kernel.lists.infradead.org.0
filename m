Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20521E0925
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+sJn0xXVDlFohHvU8tP6m/OwV2tYoOzah1H5BrwN58=; b=B6Q0YmDrse1For
	Vg61AYTIRezWcpkc/2i+gDKbgmuvggG5NuAqfTdh0G1G6xsDSNwu2ITy6wmhoXZtutbwGkvYReUU8
	rSavHLXMfrZp5seZMjhvq6GAJ/OdBjSLp79xrHWnXEChHXlphqOlg+eCjFw+RYR74wfglZFqn6AhK
	P/eUeFtUy7wiSxMOml3SJnPKuT4v5JECLOg5/tzGnjLjw/gRtnSyhW2rndakqI8MC9fdldeuKILBk
	3it2lgw2WFEuTVvvSJYLknJF3U6MRRIT9NkLQneKRWeA20M05j91FNwBmOv45TwS6e+LW0ESCK9z1
	xD5WtQfKSQLi39oi3ANA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8h3-0000dY-Si; Mon, 25 May 2020 08:42:45 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8gg-0000Zc-Mx
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 08:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wAm2I1AOEydHH9CYIKMSAc2QfOp8pMOdoNnrQ4sB5yE=; b=mhmvJ/rVfVyaZ1m+aA3FWBMim
 X7uZAgugBoI6CFNRuNYEzxontKM3BZo99Jcd7CIilaeVu1U+aBgVqCKkbee3pgndZQwejUAuxNYRR
 GKhHecTy2CEhnVs0nrusRk5iz0+l8YqmC2YDnr/ys5ewiKxX4GppYLly1zTWGhPxnV+EraUEiZyaW
 zK6/FnhyknGpAOVN8mDcPrrZYm2BzVHCNMRFmrQmLSutdMResZVlDuwvrTfpkx/14ThJ87m82ELvt
 mSXSnXtjvZkCygxAFYAz1XdD70XqbkPnUBMZ3sJwRktGc9M+U+KYFKiP8hkd5T5sdxAVrkcMBcnwP
 0UXZ7yGMQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:44772)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jd8gL-0004js-3C; Mon, 25 May 2020 09:42:01 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jd8gH-0004Dg-LI; Mon, 25 May 2020 09:41:57 +0100
Date: Mon, 25 May 2020 09:41:57 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: Re: [PATCH v4 3/5] net: macb: fix macb_get/set_wol() when moving to
 phylink
Message-ID: <20200525084157.GI1551@shell.armlinux.org.uk>
References: <cover.1588763703.git.nicolas.ferre@microchip.com>
 <4aeebe901fde6db70a5ca12b10e793dd2ee6ce60.1588763703.git.nicolas.ferre@microchip.com>
 <20200513130536.GI1551@shell.armlinux.org.uk>
 <c0bc2167-e49e-1026-94e3-cb5931755389@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0bc2167-e49e-1026-94e3-cb5931755389@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_014224_059948_8E8FFB15 
X-CRM114-Status: GOOD (  36.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, f.fainelli@gmail.com,
 antoine.tenart@bootlin.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 harini.katakam@xilinx.com, Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 04:16:04PM +0200, Nicolas Ferre wrote:
> Russell,
> 
> Thanks for the feedback.
> 
> On 13/05/2020 at 15:05, Russell King - ARM Linux admin wrote:
> > On Wed, May 06, 2020 at 01:37:39PM +0200, nicolas.ferre@microchip.com wrote:
> > > From: Nicolas Ferre <nicolas.ferre@microchip.com>
> > > 
> > > Keep previous function goals and integrate phylink actions to them.
> > > 
> > > phylink_ethtool_get_wol() is not enough to figure out if Ethernet driver
> > > supports Wake-on-Lan.
> > > Initialization of "supported" and "wolopts" members is done in phylink
> > > function, no need to keep them in calling function.
> > > 
> > > phylink_ethtool_set_wol() return value is not enough to determine
> > > if WoL is enabled for the calling Ethernet driver. Call it first
> > > but don't rely on its return value as most of simple PHY drivers
> > > don't implement a set_wol() function.
> > > 
> > > Fixes: 7897b071ac3b ("net: macb: convert to phylink")
> > > Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> > > Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> > > Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
> > > Cc: Harini Katakam <harini.katakam@xilinx.com>
> > > Cc: Antoine Tenart <antoine.tenart@bootlin.com>
> > > ---
> > >   drivers/net/ethernet/cadence/macb_main.c | 18 ++++++++++--------
> > >   1 file changed, 10 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> > > index 53e81ab048ae..24c044dc7fa0 100644
> > > --- a/drivers/net/ethernet/cadence/macb_main.c
> > > +++ b/drivers/net/ethernet/cadence/macb_main.c
> > > @@ -2817,21 +2817,23 @@ static void macb_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
> > >   {
> > >        struct macb *bp = netdev_priv(netdev);
> > > 
> > > -     wol->supported = 0;
> > > -     wol->wolopts = 0;
> > > -
> > > -     if (bp->wol & MACB_WOL_HAS_MAGIC_PACKET)
> > > +     if (bp->wol & MACB_WOL_HAS_MAGIC_PACKET) {
> > >                phylink_ethtool_get_wol(bp->phylink, wol);
> > > +             wol->supported |= WAKE_MAGIC;
> > > +
> > > +             if (bp->wol & MACB_WOL_ENABLED)
> > > +                     wol->wolopts |= WAKE_MAGIC;
> > > +     }
> > >   }
> > > 
> > >   static int macb_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
> > >   {
> > >        struct macb *bp = netdev_priv(netdev);
> > > -     int ret;
> > > 
> > > -     ret = phylink_ethtool_set_wol(bp->phylink, wol);
> > > -     if (!ret)
> > > -             return 0;
> > > +     /* Pass the order to phylink layer.
> > > +      * Don't test return value as set_wol() is often not supported.
> > > +      */
> > > +     phylink_ethtool_set_wol(bp->phylink, wol);
> > 
> > If this returns an error, does that mean WOL works or does it not?
> 
> In my use case (simple phy: "Micrel KSZ8081"), if I have the error
> "-EOPNOTSUPP", it simply means that this phy driver doesn't have the
> set_wol() function. But on the MAC side, I can perfectly wake-up on WoL
> event as the phy acts as a pass-through.
> 
> > Note that if set_wol() is not supported, this will return -EOPNOTSUPP.
> > What about other errors?
> 
> True, I don't manage them. But for now this patch is a fix that only reverts
> to previous behavior. In other terms, it only fixes the regression.
> 
> But can I make the difference, and how, between?
> 1/ the phy doesn't support WoL and could prevent the WoL to happen on the
> MAC
> 2/ the phy doesn't implement (yet) the set_wol() function, if MAC can
> manage, it's fine

I think you need to read and understand the code, but don't worry, I'll
do it for you.  There are not that many implementations in phylib, so
it doesn't take long:

m88e1318_set_wol(), dp83867_set_wol(), dp83822_set_wol(),
at803x_set_wol(), lan88xx_set_wol(), and vsc85xx_wol_set().

For case 2, phylib returns -EOPNOTSUPP.

m88e1318_set_wol() returns zero on success, or propagates an error from
the MDIO bus accessors.

dp83867_set_wol() returns zero on success, or -EINVAL if the MAC address
is invalid. No bus errors are propagated.

dp83822_set_wol() is the same as dp83867_set_wol().

at803x_set_wol() returns zero on success, or -ENODEV if there is no
netdev attached (which means you shouldn't be calling this anyway),
-EINVAL if the MAC address is invalid, or sometimes propagates an
error from the MDIO bus accessors.

lan88xx_set_wol() always returns zero, but the function does nothing
other than saving the requested state, and uses that to avoid calling
genphy_suspend() for this PHY.

vsc85xx_wol_set() returns zero on success, or propagates an error from
the MDIO bus accessors.

So, what we can tell from the return code is:

- If it returned zero, the PHY likely supports and properly configured
  WoL, and you may not need to configure the MAC (depends on whether
  the PHY can wake the system up on its own.)
- If it returns -EOPNOTSUPP, there is no support for WoL at the PHY,
  and you need to program your MAC - assuming that the PHY is going to
  stay alive.
- If it returns some other error code, there was a failure of some sort
  to configure the PHY for WoL, which probably means the PHY is not
  responding, and probably means the system isn't going to be capable
  of waking up through this PHY.

For case 1, there is no code path that detects whether the PHY concerned
supports WoL or doesn't - the code paths in each driver assume that if
the PHY supports WoL, then it supports WoL.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
