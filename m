Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84E3168492
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfPQHl1MNrRy8mC7NowIDQcvJGmDpixqTHrWiXD/GBA=; b=CUm3CZ+zYGr3QO
	F3qjaQnqbgpetGUwm9qG5JLwtuIbMkx06o4gj39B4AHgZmDf+llo1Zx8FwQiaVNcXS+rHC/wvEw2I
	L5HRUZES43MnqX6hcLV5qQS18YnmBzpLLTDepClHNT1orG8wLZhbmIDdjDblnWGgmVlLckdYPsC2V
	78m37ke/l95OWvW/s/fu9FQK4ab2mA2w6uYqbBerGLxwdCxwDCHbkCeyLshHDEvjOmhFIj+5eE6Gr
	NHeq2jJrADfJJ+dvC59bU33AhmI0BHplmryNziHC2nSPAWhH24dBfryXs/fMC7br1kAIjecUZO64v
	bQjFdm0Z30MWD0qI8idg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BrD-0001NB-HM; Fri, 21 Feb 2020 17:12:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Br2-0008El-F6
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:12:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bp1lWcxGkXI1dOKZa2p+oi0pswujYwX0tBwQBCst0zM=; b=REgQwD+8Du6hBrxoBK+zFIs0Z
 6A92OGFjwvYnNCRJJ4qpiWJuwucUoi9OHxhYoVQDQTqgVMyaLdK99gZoOtjJRNalWF75yRLvkGVrx
 INHqGMXfpmgKCx6R82YcA0tWuC5c2i3Gq6M97zYis9unSS1TXNpFEWC36zXygXPLHbv2SQJGmJDmd
 KvyqZZIlkf0TWJOJ8yKuJ+dKNLqFI2LVLkvRj1wRGfas03zBgiNIX56pOMgwo8RJPrpZ9XpuWF5QC
 DJ2P8BGlVXy6JKxT8HFqs342ASPkC203Kc66tMqLZ746HkX28SgQ2NBwi7bw1sDQUIoQKdUuKpu3w
 VaFWa05lQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:43400)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j5Bop-0002S1-IA; Fri, 21 Feb 2020 17:10:27 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j5Bom-0003fn-Jw; Fri, 21 Feb 2020 17:10:24 +0000
Date: Fri, 21 Feb 2020 17:10:24 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH net] net: macb: Properly handle phylink on at91rm9200
Message-ID: <20200221171024.GK25745@shell.armlinux.org.uk>
References: <20200217104348.43164-1-alexandre.belloni@bootlin.com>
 <661c1e61-11c8-0c54-83a2-5e81674246e0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <661c1e61-11c8-0c54-83a2-5e81674246e0@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_091244_509171_E6836CB9 
X-CRM114-Status: GOOD (  15.21  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Antoine =?iso-8859-1?Q?T=E9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 02:03:47PM -0800, Florian Fainelli wrote:
> 
> 
> On 2/17/2020 2:43 AM, Alexandre Belloni wrote:
> > at91ether_init was handling the phy mode and speed but since the switch to
> > phylink, the NCFGR register got overwritten by macb_mac_config().
> > 
> > Add new phylink callbacks to handle emac and at91rm9200 properly.
> > 
> > Fixes: 7897b071ac3b ("net: macb: convert to phylink")
> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > ---
> 
> [snip]
> 
> > +static void at91ether_mac_link_up(struct phylink_config *config,
> > +				  unsigned int mode,
> > +				  phy_interface_t interface,
> > +				  struct phy_device *phy)
> > +{
> > +	struct net_device *ndev = to_net_dev(config->dev);
> > +	struct macb *bp = netdev_priv(ndev);
> > +
> > +	/* Enable Rx and Tx */
> > +	macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(RE) | MACB_BIT(TE));
> > +
> > +	netif_tx_wake_all_queues(ndev);
> 
> So this happens to be copied from the mvpp2 driver, if this is a
> requirement, should not this be moved to the phylink implementation
> since it already manages the carrier? Those two drivers are the only
> ones doing this.

Looking at mvneta, it does stuff with managing the queues itself, and
I suspect adding that into phylink will mess that driver up.  Maybe
someone with more knowledge can take a look.

But, IMHO, two drivers doing something is not grounds for moving it
into higher layers.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
