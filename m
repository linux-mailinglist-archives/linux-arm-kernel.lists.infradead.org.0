Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5500817BAC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:52:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5f7y9dYxpsR5dN8vSQAbeLp3oo3/SY17hFmDiad/Lt8=; b=aon7cFiGc2/Dc/
	qzM+xtJM5LrBNaYbvJCUnX9okqN1JkpCluTgA78ELrU5RqXhrCqyKYuwFRxJLKuMff4qO1VnIR+F3
	ITWYAXFhKavYa2T/W/l22/u89W9DdWPqJw59e01ntb6i9gjdyy69WcSU97Ep5HcWeyNw8LUPs7b1M
	kKiEaADJUQWcCbwmKkSKkzy4GKja2Bn78Wqtb4G61027vzOPYbUBHxNnOLO0BI6aUfeltRus+n/Zm
	2W41aP4ZG+DF2mdHI0cSDddYA32R6JuVrI1367CysE40+qzy/BbzfN0Pjbi2e5gYzqHolRmPJKVc/
	WpJ1Lq4CI6uDo5UoiAqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAb4-0000LY-Jw; Fri, 06 Mar 2020 10:52:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAas-000079-1h
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+eCbWq0p4lGocrZoNaHZbhQT4nz1r0kZeOfZlpXjdII=; b=t+SFO1txth65KjN4lnsPYlCCP
 DOVHUE+cdW6DWivbrqzzt57KhsZTQcBhGw1Le/i4UXZ6Nfxs069TdlVDwaOMBbZHfhWAtpZDnwV7S
 Ib2rPnNmMVpPQM0aJXN1/DNSZ5rinns2h1jqnPBsFEF+azwjsx94wDcA8sZphIXHXuOqVO3mzEc03
 rljV9Q8MH9rZTrzYUIjiJy5Xc+7S02yFCXNZFcSK60cjHBHVlR1bPnZk0t3A7qkF5c/L2T8J7gOeC
 hQNo+PjoJN/rVs4oY64EHtfUakKaE5QDd1XwTwDDVH19iej1CaNaX6Huh3QtavhuFxMKiCNId9no2
 IV5vsDnVw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:49386)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jAAaU-0004AJ-RS; Fri, 06 Mar 2020 10:52:15 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jAAaO-0000OM-IQ; Fri, 06 Mar 2020 10:52:08 +0000
Date: Fri, 6 Mar 2020 10:52:08 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Message-ID: <20200306105208.GG25745@shell.armlinux.org.uk>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305135346.GD25745@shell.armlinux.org.uk>
 <98f5901a121b83d4f7d75f9a9056bd3719e2ee89.camel@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98f5901a121b83d4f7d75f9a9056bd3719e2ee89.camel@toradex.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_025238_508680_231C035B 
X-CRM114-Status: GOOD (  26.96  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 09:57:15AM +0000, Philippe Schenker wrote:
> On Thu, 2020-03-05 at 13:53 +0000, Russell King - ARM Linux admin wrote:
> > On Thu, Mar 05, 2020 at 02:49:28PM +0100, Philippe Schenker wrote:
> > > The MAC of the i.MX6 SoC is compliant with RGMII v1.3. The KSZ9131
> > > PHY
> > > is like KSZ9031 adhering to RGMII v2.0 specification. This means the
> > > MAC should provide a delay to the TXC line. Because the i.MX6 MAC
> > > does
> > > not provide this delay this has to be done in the PHY.
> > > 
> > > This patch adds by default ~1.6ns delay to the TXC line. This should
> > > be good for all boards that have the RGMII signals routed with the
> > > same length.
> > > 
> > > The KSZ9131 has relatively high tolerances on skew registers from
> > > MMD 2.4 to MMD 2.8. Therefore the new DLL-based delay of 2ns is used
> > > and then as little as possibly subtracted from that so we get more
> > > accurate delay. This is actually needed because the i.MX6 SoC has
> > > an asynchron skew on TXC from -100ps to 900ps, to get all RGMII
> > > values within spec.
> > > 
> > > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > > 
> > > ---
> > > 
> > >  arch/arm/mach-imx/mach-imx6q.c | 37
> > > ++++++++++++++++++++++++++++++++++
> > >  1 file changed, 37 insertions(+)
> > > 
> > > diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-
> > > imx/mach-imx6q.c
> > > index edd26e0ffeec..8ae5f2fa33e2 100644
> > > --- a/arch/arm/mach-imx/mach-imx6q.c
> > > +++ b/arch/arm/mach-imx/mach-imx6q.c
> > > @@ -61,6 +61,14 @@ static void mmd_write_reg(struct phy_device *dev,
> > > int device, int reg, int val)
> > >  	phy_write(dev, 0x0e, val);
> > >  }
> > >  
> > > +static int mmd_read_reg(struct phy_device *dev, int device, int
> > > reg)
> > > +{
> > > +	phy_write(dev, 0x0d, device);
> > > +	phy_write(dev, 0x0e, reg);
> > > +	phy_write(dev, 0x0d, (1 << 14) | device);
> > > +	return phy_read(dev, 0x0e);
> > > +}
> > 
> > These look like the standard MII MMD registers, and it also looks like
> > you're reinventing phy_read_mmd() - but badly due to lack of locking.
> > 
> > I guess you need this because phy_read_mmd() may be modular - maybe
> > we should arrange for the accessors to be separately buildable into
> > the kernel, so that such fixups can stop badly reinventing the wheel?
> 
> Yes, I did that because of two reasons:
> 1. I tried phy_read_mmd() and phy_write_mmd() but this panic'd

That is because phydev->drv->read_mmd and phydev->drv is NULL at this
point.  There has been a patch around to solve that though.

> 2. There is already mmd_write_reg in that code so I thought it would be
> no big deal to also have a read in there.
> 
> But yeah, you're right that mmd_write_reg is from 2013...
> 
> How do you suggest to implement that?
> 
> Philippe

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
