Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7938D835A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:12:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XpErCmFjvN9DRqL/nzzKuelnvYWC23vnfFoiWwQyd0g=; b=Ft9CF2puko3wX/
	18Y3xTHGeqvwwYc7nWeIavW5w6BPfozltS9C8TUAgqSu3JzuNEJ6nPzavevFV8w532kAq6bv2+vtZ
	iW4i6EF/R/FxLM4cbyzkzM4mY5PQxmaGa38Lggm+DhEAKNoVTRjeiUIKSttnjOEKCL+DHSog6uUZT
	Tlqwg6Gc6U2gAOILIvDxIMPIGCsu+ptlahKDGEC/xkjumq0G9tiJlBr61j+JND+j7dO3ze0zQUc9V
	lH+Nle6/oerUH3H0biK+1c9ZzvdHdxIYIO/hfbDw1D0/jvejX/tZklWuZSVO7Qw2O74nD1M020fuD
	rnj6bVWOdal3EC3QMX+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKV2z-0006BS-MX; Tue, 15 Oct 2019 22:12:05 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKV2p-0004ln-4H; Tue, 15 Oct 2019 22:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VQY7kyXQnV7HJfQmywx1SmCW7S/WPSYFdOWu76GYWnY=; b=Gs3ZYcFMXya+INRHGOSEM2hnZ
 V4Lxsuo5n2EqcV+3JNqXnyg8k8J1cqtxpWUEFy7J/PBXX6e7F8/Xk1vAGU5CMpYzf35fePzKYAksB
 YlhdDdWjaPeETOOpUcuLbxkJLJy13Sr2BM57hwJIPJvfQkUJIid2+WDgVWpuxbDolpuCkBesV6SnE
 dn2fS+AFcM2jMlKxtFrHVg0jm2eupU2RNL94eNWUodfXZbA+HvsVBQG4awdesxQc5jjzrsIB0eb/a
 lFYaaxlv3JIfIUFfUTFihRZZ5kJXRypiUPhykdUDWKqszGKq3XMOwpz14p3S4oOfAK9W/jL+qT57i
 o4DTegDDw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:51296)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iKV0T-00076f-Jh; Tue, 15 Oct 2019 23:09:29 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iKV0P-0006YJ-W2; Tue, 15 Oct 2019 23:09:26 +0100
Date: Tue, 15 Oct 2019 23:09:25 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191015220925.GW25745@shell.armlinux.org.uk>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191014163004.GP25745@shell.armlinux.org.uk>
 <20191014192529.z7c5x6hzixxeplvw@beryllium.lan>
 <25cfc92d-f72b-d195-71b1-f5f238c7988d@gmx.net>
 <b9afd836-613a-dc63-f77b-f9a77d33acc4@gmail.com>
 <20191014221211.GR25745@shell.armlinux.org.uk>
 <524267e6-df8e-d884-aeef-1ed8700e4e58@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <524267e6-df8e-d884-aeef-1ed8700e4e58@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_151155_173064_A8A774E6 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Daniel Wagner <dwagner@suse.de>,
 netdev@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 09:38:22PM +0200, Heiner Kallweit wrote:
> On 15.10.2019 00:12, Russell King - ARM Linux admin wrote:
> > On Mon, Oct 14, 2019 at 10:20:15PM +0200, Heiner Kallweit wrote:
> >> On 14.10.2019 21:51, Stefan Wahren wrote:
> >>> [add more recipients]
> >>>
> >>> Am 14.10.19 um 21:25 schrieb Daniel Wagner:
> >>>> Moving the phy_prepare_link() up in phy_connect_direct() ensures that
> >>>> phydev->adjust_link is set when the phy_check_link_status() is called.
> >>>>
> >>>> diff --git a/drivers/net/phy/phy_device.c
> >>>> b/drivers/net/phy/phy_device.c index 9d2bbb13293e..2a61812bcb0d 100644
> >>>> --- a/drivers/net/phy/phy_device.c +++ b/drivers/net/phy/phy_device.c
> >>>> @@ -951,11 +951,12 @@ int phy_connect_direct(struct net_device *dev,
> >>>> struct phy_device *phydev, if (!dev) return -EINVAL;
> >>>>
> >>>> +       phy_prepare_link(phydev, handler);
> >>>> +
> >>>>         rc = phy_attach_direct(dev, phydev, phydev->dev_flags, interface);
> >>>>         if (rc)
> >>
> >> If phy_attach_direct() fails we may have to reset phydev->adjust_link to NULL,
> >> as we do in phy_disconnect(). Apart from that change looks good to me.
> > 
> > Sorry, but it doesn't look good to me.
> > 
> > I think there's a deeper question here - why is the phy state machine
> > trying to call the link change function during attach?
> After your comment I had a closer look at the lm78xx driver and few things
> look suspicious:
> 
> - lan78xx_phy_init() (incl. the call to phy_connect_direct()) is called
>   after register_netdev(). This may cause races.

That isn't a problem.  We have lots of network device drivers that do
this - in their open() function.

> - The following is wrong, irq = 0 doesn't mean polling.
>   PHY_POLL is defined as -1. Also in case of irq = 0 phy_interrupt_is_valid()
>   returns true.
> 
> 	/* if phyirq is not set, use polling mode in phylib */
> 	if (dev->domain_data.phyirq > 0)
> 		phydev->irq = dev->domain_data.phyirq;
> 	else
> 		phydev->irq = 0;

Also unlikely to be the cause of this problem.  phy_connect_direct() is
called with an adjust link function, which is set via
phy_prepare_link() in phy_connect_direct(), before interrupts are even
considered.

So, the window for the bug is somewhere before the call to
phy_prepare_link() in phy_connect_direct(), but after
lan78xx_mdio_init().

> - Manually calling genphy_config_aneg() in lan78xx_phy_init() isn't
>   needed, however this should not cause our problem.

Again, way after the point where phydev->adjust_link is non-NULL,
so this can't be it.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
