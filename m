Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8841BB7EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 09:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnCzOn8WumZZurMKnYGIqW1HMOIkWCsXGdZt4srn2Qs=; b=lC2Qs8QaXHSaa7
	WAxLnvGX5sFEdYhqVR4qc7kJ/8HGC/6htH8fWAE22oFz4z7XxjZdExEoPGDjjD84Rl+8l7EtikdTq
	qS2gPT1gnUwL+pSnBCT1oqksddxD+m6/9N6HW1wwZnmAEHJBPfKwWP8o95hSuNOuqIvuY9WNxQoX0
	f6kruMUq+vradUd+WYki+3roDlMuUJnI9CB5leqK15N/k2pWkRnpP1JE6akQ+En9qHKNda03RMpsf
	MUeBztgABm4KP9r5ZsiThPp+1MN8BSqWKqu93S3oFzsFcatqd5figgQEwokMCZAxFaPRjshFacT5L
	9enb0ATwSdQvBqnyJA4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKvb-0000NG-2D; Tue, 28 Apr 2020 07:45:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKvF-0000Mf-8c
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 07:44:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jTKvD-0000hA-Tc; Tue, 28 Apr 2020 09:44:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jTKvA-0007AL-Tl; Tue, 28 Apr 2020 09:44:48 +0200
Date: Tue, 28 Apr 2020 09:44:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Madalin Bucur <madalin.bucur@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1046ardb: Set aqr106 phy mode to usxgmii
Message-ID: <20200428074448.GW5877@pengutronix.de>
References: <20200423102212.5412-1-s.hauer@pengutronix.de>
 <DB8PR04MB6985EB9D28A17723C8C061CCECD30@DB8PR04MB6985.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB8PR04MB6985EB9D28A17723C8C061CCECD30@DB8PR04MB6985.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:42:22 up 68 days, 15:12, 94 users,  load average: 0.13, 0.15, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_004453_301338_9E897531 
X-CRM114-Status: GOOD (  30.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Andrew Lunn <andrew@lunn.ch>, "u-boot@lists.denx.de" <u-boot@lists.denx.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Leo Li <leoyang.li@nxp.com>, "joe.hershberger@ni.com" <joe.hershberger@ni.com>,
 Shawn Guo <shawnguo@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Madalin,

On Thu, Apr 23, 2020 at 12:59:16PM +0000, Madalin Bucur wrote:
> > -----Original Message-----
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Sent: Thursday, April 23, 2020 1:22 PM
> > To: linux-arm-kernel@lists.infradead.org
> > Cc: Madalin Bucur <madalin.bucur@nxp.com>; Shawn Guo
> > <shawnguo@kernel.org>; Leo Li <leoyang.li@nxp.com>; Sascha Hauer
> > <s.hauer@pengutronix.de>
> > Subject: [PATCH] arm64: dts: ls1046ardb: Set aqr106 phy mode to usxgmii
> > 
> > The AQR107 family of phy devices do not support xgmii, but usxgmii
> > instead. Since ce64c1f77a9d ("net: phy: aquantia: add USXGMII support
> > and warn if XGMII mode is set") the kernel warns about xgmii being
> > used. Change device tree to usxgmii.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> > b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> > index d53ccc56bb63..02fbef92b96a 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> > @@ -151,7 +151,7 @@ ethernet@ea000 {
> > 
> >  	ethernet@f0000 { /* 10GEC1 */
> >  		phy-handle = <&aqr106_phy>;
> > -		phy-connection-type = "xgmii";
> > +		phy-connection-type = "usxgmii";
> >  	};
> > 
> >  	ethernet@f2000 { /* 10GEC2 */
> > --
> > 2.26.1
> 
> Hi Sascha,
> 
> thank you for trying to correct this problem. Unfortunately
> "usxgmii" here is incorrect too, as that mode is not supported
> by the LS1046A SoC. The connection mode used, as documented
> by the SoC and PHY datasheets, is XFI. Unfortunately there was
> resistance against including this connection type in the list
> supported by the kernel (please note the distinction between
> connection type and connection mode). At a certain moment the
> two were aliased and the kernel uses connection mode, not
> connection type. While we should describe here the hardware,
> the board connection type (XFI), in the kernel the connection
> mode was lately preferred (10G-BaseR). So, today we cannot use
> "xfi" here, as the hardware description property should read.
> The closest thing we can use is "10gbase-r". Unfortunately, in
> u-boot support for "xfi" is already in place [1] and the device
> tree should be different for the two for this reason - this goes
> against the spirit of the device tree that should not depend on
> the software using it...
> 
> I had on my agenda to fix this problem, had to stop when "xfi"
> was rejected, at the time not even "10gbase-r" was an option.
> Also worth noting here is that, while we change "xgmii" to a
> correct/better value, we should also tolerate the old variant,
> as there are users in the wild unable/unwilling to update the
> device tree and backwards compatibility should be ensured,
> further complicating the matter.

Thanks for the explanation. It looked like one of those simple patch
opportunities at first, apparently it isn't.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
