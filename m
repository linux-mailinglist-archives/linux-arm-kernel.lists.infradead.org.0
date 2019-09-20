Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E45BB90DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pWKbJGulUOcOzutgXKOg9VZfldTZhSd+bJ2/rDv05U=; b=rV5q9IRM7mv7Fa
	mIaetHDAHR9ogtjYB3DfIoSlwJj9bQ9e7dwX8bqnGIEz1SjLNqQ3bKhURLBT4P+FSNHEkiMsMOb3t
	nLtK8EDvxJAn7k2uD6/erdcLoY993QL+64jvC6baAbh3L1ikN5vUfApWrKPbnnUA12ywPuYVPMqBs
	I70+vLmNNZpD9iAUvcQg+9cmWmBlcLoopZWhC/R9jjZjIrEpu1p8/pfbnQfVKc+yG8Gra0nbP98K4
	1ai8aZx6CJTmnX/PC8j3jm/i0sAp4bGVxotcWnovT9rzAZN9rha6DWpMIrSjVMhC4zsPNQdXbpDx+
	HCJ0+paSnCp0sHzsKUQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJBl-0004lU-1z; Fri, 20 Sep 2019 13:43:09 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJBZ-0004Yg-5f
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:42:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xBchC21co1zSoAA232XoJcRl/YGG2YtjdTp+sQB4kOU=; b=kWpv/wvvqybuA9gJqkZMShqqR
 V7SElLbkefrx1lTEaEbPafBqUmi3tODqq71K9VLs6XdoXOtRoUHN7DWRQhWKghSabT9BzWFzcUoAc
 Ia3zii3x5bTkTcQfkvKXatbAH3JI3i+oFQCud0xT8/IxJg0jOn7JkRoHhb2+d3aMX0b53vW+LFW7w
 fnWHtKPNKd08uge+YTUIQMtmVXFJKoalOwu6jo65aKYinLJmQPuxyiU8+8LaujWRVsIgBovQsEO25
 R/rSrdxVH2yZzqmjGRXS2gAksl4YHw6ys+YKuL7Xufywy55womoXyJ3eWaUbbEAjjfKjsR7wLP/tW
 HnXE8I4gA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:41870)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iBJAz-00048q-TJ; Fri, 20 Sep 2019 14:42:22 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iBJAt-0005ql-Vd; Fri, 20 Sep 2019 14:42:15 +0100
Date: Fri, 20 Sep 2019 14:42:15 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: tinywrkb <tinywrkb@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190920134215.GM25745@shell.armlinux.org.uk>
References: <20190917124101.GA1200564@arch-dsk-01>
 <20190917125434.GH20778@lunn.ch>
 <20190917133253.GA1210141@arch-dsk-01>
 <20190917133942.GR25745@shell.armlinux.org.uk>
 <20190917151707.GV25745@shell.armlinux.org.uk>
 <20190917153027.GW25745@shell.armlinux.org.uk>
 <20190917163427.GA1475935@arch-dsk-01>
 <20190917170419.GX25745@shell.armlinux.org.uk>
 <20190917171913.GY25745@shell.armlinux.org.uk>
 <20190917214201.GB25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917214201.GB25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_064257_235939_71ADCC49 
X-CRM114-Status: GOOD (  30.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Baruch Siach <baruch@tkos.co.il>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 10:42:01PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Sep 17, 2019 at 06:19:13PM +0100, Russell King - ARM Linux admin wrote:
> > whether you can get the link to come up at all.  You might need to see
> > whether wiggling the RJ45 helps (I've had that sort of thing with some
> > cables.)
> > 
> > You might also need "ethtool -s eth0 advertise ffcf" after trying that
> > if it doesn't work to take the gigabit speeds out of the advertisement.
> > 
> > Thanks.
> > 
> >  drivers/net/phy/at803x.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
> > index b3893347804d..85cf4a4a5e81 100644
> > --- a/drivers/net/phy/at803x.c
> > +++ b/drivers/net/phy/at803x.c
> > @@ -296,6 +296,11 @@ static int at803x_config_init(struct phy_device *phydev)
> >  	if (ret < 0)
> >  		return ret;
> >  
> > +	/* Disable smartspeed */
> > +	ret = phy_modify(phydev, 0x14, BIT(5), 0);
> > +	if (ret < 0)
> > +		return ret;
> > +
> >  	/* The RX and TX delay default is:
> >  	 *   after HW reset: RX delay enabled and TX delay disabled
> >  	 *   after SW reset: RX delay enabled, while TX delay retains the
> 
> Hi,
> 
> Could you try this patch instead - it seems that the PHY needs to be
> soft-reset for the write to take effect, and _even_ for the clearance
> of the bit to become visible in the register.
> 
> I'm not expecting this on its own to solve anything, but it should at
> least mean that the at803x doesn't modify the advertisement registers
> itself.  It may mean that the link doesn't even come up without forcing
> the advertisement via the ethtool command I mentioned before.
> 
> Thanks.
> 
>  drivers/net/phy/at803x.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
> index b3893347804d..69a58c0e6b42 100644
> --- a/drivers/net/phy/at803x.c
> +++ b/drivers/net/phy/at803x.c
> @@ -296,6 +296,16 @@ static int at803x_config_init(struct phy_device *phydev)
>  	if (ret < 0)
>  		return ret;
>  
> +	/* Disable smartspeed */
> +	ret = phy_modify(phydev, 0x14, BIT(5), 0);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* Must soft-reset the PHY for smartspeed disable to take effect */
> +	ret = genphy_soft_reset(phydev);
> +	if (ret < 0)
> +		return ret;
> +
>  	/* The RX and TX delay default is:
>  	 *   after HW reset: RX delay enabled and TX delay disabled
>  	 *   after SW reset: RX delay enabled, while TX delay retains the

Bad news I'm afraid.  It looks like the AR8035 has a bug in it.
Disabling the SmartSpeed feature appears to make register 9, the
1000BASET control register, read-only.

For example:

Reading 0x0009=0x0200
Writing 0x0014=0x082c	<= smartspeed enabled
Writing 0x0000=0xb100	<= soft reset
Writing 0x0009=0x0600
Reading 0x0009=0x0600	<= it took the value

Reading 0x0009=0x0600
Writing 0x0014=0x080c	<= smartspeed disabled
Writing 0x0000=0xb100	<= soft reset
Writing 0x0009=0x0200
Reading 0x0009=0x0600	<= it ignored the write

Reading 0x0009=0x0600
Writing 0x0014=0x082c	<= smartspeed enabled
Writing 0x0000=0xb100	<= soft reset
Writing 0x0009=0x0200
Reading 0x0009=0x0200	<= it took the value

If it's going to make register 9 read-only when smartspeed is disabled,
then that's another failure mode and autonegotiation cockup just
waiting to happen - which I spotted when trying to configure the
advertisement using ethtool, and finding that it was impossible to stop
1000baseT/Full being advertised.

I think the only sane approach - at least until we have something more
reasonable in place - is to base the negotiation result off what is
actually stored in the PHY registers at the time the link comes up, and
not on the cached versions of what we should be advertising.

5502b218e001 has caused this regression, and where we are now after
more than a week of trying to come up with some fix for this
regression, the only solution that seems to work without introducing
more failures is to revert that commit.

Adding Heiner (original commit author), Florian, David and netdev.

Thoughts?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
