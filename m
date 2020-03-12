Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77AF182F79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 12:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMx/SWDQyJdqL892Dc6MMku4NP84eMJZyK/wkWmy8ws=; b=di2c9pEyD/4vhL
	AfMunOuaqO3wOLIikpxVh+wLIj/rJcg3Pn4HBPlXbw5JtnHvl3EKO+rOzfTRvi9E3jIeVLx8Kca1P
	u6JKXx2JNRMH4qNjPFCy68ASl1Fajp0ne7hkWcDtwi3+8MvgEuJcG4eZTBFFILpbRzWJ2qnAt3GFF
	/wZEFjA4Mpk+OKF9sKjpHFNhPHDpaz9+Ntn9fLdn1cc+Pkkc57uzLyqvWHwYqJbQK8Uw68AilWh3L
	hfXLKa04z/UX9sQ84NgkxrYMgr7M379FMs1WbUpWNEnl3teKdjv+91LiFdu3oRRc5NRLbKpFZGnKl
	Uw6u40tNu8UAD5kQqLmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCMDi-0005Po-Lw; Thu, 12 Mar 2020 11:41:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCMDa-0005Oc-Mj
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 11:41:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1ACA331B;
 Thu, 12 Mar 2020 04:41:35 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 11AB33F67D;
 Thu, 12 Mar 2020 04:41:33 -0700 (PDT)
Date: Thu, 12 Mar 2020 11:41:31 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Radhey Shyam Pandey <radheys@xilinx.com>
Subject: Re: [PATCH 09/14] net: axienet: Add mii-tool support
Message-ID: <20200312114131.070d9a1c@donnerap.cambridge.arm.com>
In-Reply-To: <CH2PR02MB700089E502A8C146D71C67C8C7350@CH2PR02MB7000.namprd02.prod.outlook.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-10-andre.przywara@arm.com>
 <CH2PR02MB700089E502A8C146D71C67C8C7350@CH2PR02MB7000.namprd02.prod.outlook.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_044138_828032_E4661156 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Hancock <hancock@sedsystems.ca>, Michal Simek <michals@xilinx.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 06:12:10 +0000
Radhey Shyam Pandey <radheys@xilinx.com> wrote:

Hi,

(sorry, forgot to send this out before posting v2)

> > -----Original Message-----
> > From: Andre Przywara <andre.przywara@arm.com>
> > Sent: Friday, January 10, 2020 5:24 PM
> > To: David S . Miller <davem@davemloft.net>; Radhey Shyam Pandey
> > <radheys@xilinx.com>
> > Cc: Michal Simek <michals@xilinx.com>; Robert Hancock
> > <hancock@sedsystems.ca>; netdev@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> > Subject: [PATCH 09/14] net: axienet: Add mii-tool support
> > 
> > mii-tool is useful for debugging, and all it requires to work is to wire
> > up the ioctl ops function pointer.
> > Add this to the axienet driver to enable mii-tool.
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > index 7a747345e98e..64f799f3d248 100644
> > --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> > @@ -1152,6 +1152,16 @@ static void axienet_poll_controller(struct net_device
> > *ndev)
> >  }
> >  #endif
> > 
> > +static int axienet_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
> > +{
> > +	struct axienet_local *lp = netdev_priv(dev);
> > +
> > +	if (!netif_running(dev))
> > +		return -EINVAL;  
> 
> I think phy ioctl should be allowed even if the device is not up. 
> Or is there any specific reason for keeping it?

I found that some of the drivers check this (macb, stmmac), while others (dpaa2, mvneta, mvpp2, mtk_eth) don't. I don't know the reasons for that, so I play safe here.
Happy to change this if someone provides some rationale.

Cheers,
Andre.

> 
> > +
> > +	return phylink_mii_ioctl(lp->phylink, rq, cmd);
> > +}
> > +
> >  static const struct net_device_ops axienet_netdev_ops = {
> >  	.ndo_open = axienet_open,
> >  	.ndo_stop = axienet_stop,
> > @@ -1159,6 +1169,7 @@ static const struct net_device_ops
> > axienet_netdev_ops = {
> >  	.ndo_change_mtu	= axienet_change_mtu,
> >  	.ndo_set_mac_address = netdev_set_mac_address,
> >  	.ndo_validate_addr = eth_validate_addr,
> > +	.ndo_do_ioctl = axienet_ioctl,
> >  	.ndo_set_rx_mode = axienet_set_multicast_list,
> >  #ifdef CONFIG_NET_POLL_CONTROLLER
> >  	.ndo_poll_controller = axienet_poll_controller,
> > --
> > 2.17.1  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
