Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A8FB665B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 16:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cj7JsRLR+fsqOeDU4s+v8b4mj/6mNGciS0x/IL+yW4=; b=dBpKxj/eV/8hyl
	6NKj0Szne0OQWWElCVcSGwO2Obh9xG/qRtmsIl/DL8lIFW2JBIHW1OKG/Gj4piGl7pQoXnrOAD61Y
	tmqC2/8Fg6KYHF1yCTb1ack+3CnMUI9+eek4a/kf6Igxr4oR8v9YMa9Hf1tOlY9vqnBe7VK019ofT
	jz74OXcAHTHejWfR7fE0+ralN6pEhrvgZcccnbejNfteOyD+UtcRCI4CksFz3W3eL4I55rOLB2q7y
	hWSlDdYsx/Y5Fe9EeHGJ3AH9JlYLQH0KmB9XJfzjP1DYwUssvS73zX2pqFuyrtk3+0PvK5r+35sE7
	9BnpL5AGSgf4aBqfFqew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbDW-0001CD-CP; Wed, 18 Sep 2019 14:46:02 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbCg-0001Bm-H2
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:45:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id h7so7207727wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 07:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/xnclpVaHd+NllhxPMolxeibUYUOR+39w2PvmhuOKVw=;
 b=Hy684wk6W87IoRJ1qeP1j6BDsjqqSlG5wyBqS8hsM7btUNh9BjKMpcHo4NJHd1BLGU
 U3H8RHIAwJDEUG59/2T/P7zrq+h25+Mp/E6RtbaAxE2lk/LfXiKhaTDJenFh0CJNYI2E
 luxIUVeOTrAjlWCiUnu48Ao16jwnlOj1aNYa4HgbYS3i3g8pysJOqS3zT+5VlxnutJS5
 buKSpA5yUdoDZXsDW+BNQDocYfB7GqxayiRiYMITr+oE2Gr1nT0Dw5nAPZx5lfHKITaU
 q4gPAhzudKDJKQBHHdwdaGEVHIn/YLuM9jVCBdXQ4Tk7QjvRuexy/p09Rrugoxb1QwBP
 Z6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/xnclpVaHd+NllhxPMolxeibUYUOR+39w2PvmhuOKVw=;
 b=dMkBg/Geg74Cyayad5tKQ5/ezGIiw6sGB31DN5JaPcW+Kus458dpxz1Sln82vrRc5g
 x/C9eU53KzY0VY2UPaVx2zC9c0j059GxNbf3wVUvdnPGtPVlJc0tX9M5pnGoXO6BirLu
 oWRnkSqc+BIxmLfdOLuaktZ2MWrcefrDI/nk0DPpnkWpG1kkUifewCoqunfXyQFjah3k
 ofEzSG1NfX8jWxjsgr2qd3Yx523I9bTUmpshS4sWn+0cKTrnoiJkkD9sCPUQPue74/1n
 t80W5+9EXpe4GXrk3nzSyd0AmQ3BaMUaRmwNiGiYD92wCdCUlnLzD2ROWfPWFsaFu7ix
 jfUQ==
X-Gm-Message-State: APjAAAU8zFTm48wGNK6T3hLKZ6IiL9Rmvrm0ZTlFhSM7wKJySn6HTz+m
 bc1IZp+HY9NS3JHMgSzodsA=
X-Google-Smtp-Source: APXvYqzLdTwE2U8zgXSGPzA1uE+Yv+z1ljYwWaiR+AR+VTG1TkYmliwmin+MiET7NZd7gP9036aR5w==
X-Received: by 2002:a05:6000:1002:: with SMTP id
 a2mr3247566wrx.272.1568817908265; 
 Wed, 18 Sep 2019 07:45:08 -0700 (PDT)
Received: from arch-dsk-01 ([77.126.41.65])
 by smtp.gmail.com with ESMTPSA id i74sm2896563wmg.44.2019.09.18.07.45.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 07:45:07 -0700 (PDT)
Date: Wed, 18 Sep 2019 17:45:02 +0300
From: tinywrkb <tinywrkb@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190918144502.GA2795497@arch-dsk-01>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
 <20190915135652.GC3427@lunn.ch>
 <20190917124101.GA1200564@arch-dsk-01>
 <20190917125434.GH20778@lunn.ch>
 <20190917133253.GA1210141@arch-dsk-01>
 <20190917223013.GC25745@shell.armlinux.org.uk>
 <20190917224347.GD25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917224347.GD25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_074510_662196_2CD159B3 
X-CRM114-Status: GOOD (  39.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tinywrkb[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Baruch Siach <baruch@tkos.co.il>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 11:43:47PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Sep 17, 2019 at 11:30:13PM +0100, Russell King - ARM Linux admin wrote:
> > On Tue, Sep 17, 2019 at 04:32:53PM +0300, tinywrkb wrote:
> > > Here's the output of # mii-tool -v -v eth0 
> > > 
> > > * linux-test-5.1rc1-a2703de70942-without_bad_commit
> > > 
> > > Using SIOCGMIIPHY=0x8947
> > > eth0: negotiated 100baseTx-FD flow-control, link ok
> > >   registers for MII PHY 0:
> > >     3100 796d 004d d072 15e1 c5e1 000f 0000
> > >     0000 0000 0800 0000 0000 0000 0000 a000
> > >     0000 0000 0000 f420 082c 0000 04e8 0000
> > >     3200 3000 0000 063d 0000 0000 0000 0000
> > 
> > I'll also mention some other discrepencies that I've just spotted in
> > this register set.
> > 
> > The BMSR is 0x796d.  Bit 2 is the link status, which is indicating
> > that link is up.  Bit 5 indicates negotiation complete, which it
> > claims it is.
> > 
> > The PHY has a second status register at 0x11 which gives real time
> > information.  That is 0x0000.  Bit 10 indicates link up, and is
> > indicating that the link is down.  Bit 11 is saying that the speed
> > and duplex is not resolved either.
> > 
> > So, there's contradictory information being reported by this PHY.
> > 
> > This brings up several questions:
> > 1. what is the _true_ state of the link?  Is the link up or down?
> > 
> > 2. what does the link partner think is the current link state and
> >    results of negotiation?
> > 
> > 3. should we be reading the register at 0x11 to determine the
> >    negotiation results and link state (maybe logically anding the
> >    present state with the BMSR link state)?
> > 
> > 
> > Compare that to a correctly functioning AR8035 such as I have in my
> > cubox-i4 connected to a Netgear GS116 switch:
> > 
> >    3100 796d 004d d072 15e1 c5e1 000d 2001
> >    0000 0200 3c00 0000 0000 4007 b29a a000
> >    0862 bc1c 0000 0000 082c 0000 07e8 0000
> >    3200 3000 0000 063e 0000 0005 2d47 8100.

My Cubox-i4 (no issue getting an IP address and GbE) is connected to the
same switch as the Cubox-i2 (the one affected by this bug).
mii-tool output for my Cubox-i4:

Using SIOCGMIIPHY=0x8947
  eth0: negotiated 1000baseT-FD flow-control, link ok
    registers for MII PHY 4:
      3100 796d 004d d072 15e1 c5e1 000d 0000
      0000 0200 3800 0000 0000 0000 0000 a000
      0000 0000 0000 0000 082c 0000 04e8 0000
      3200 3000 0000 063e 0000 0000 0000 0000
    product info: vendor 00:13:74, model 7 rev 2
    basic mode:   autonegotiation enabled
    basic status: autonegotiation complete, link ok
    capabilities: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
    advertising:  1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
    link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control

> > 
> > BMSR is again 0x796d.  The PHY specific status register this time
> > is 0xbc1c, which indicates 1G, full duplex, resolved, link up, no
> > smartspeed downgrade, tx/rx pause.
> > 
> > The register at 0x10 is a control register, which is strangely also
> > different between our two.  Apparently in your PHY configuration,
> > auto-MDI crossover mode is disabled, you are forced to MDI mode.
> > On hardware reset, this register contains 0x0862, as per my
> > example above, but yours is zero.
> > 
> > I don't think the difference in register 0x10 can be explained away
> > by operation of the smartspeed feature - so maybe my theory about
> > the advertisement registers being cleared by the PHY is wrong.  The
> > question is: how is 0x10 getting reset to zero in your setup?  Maybe
> > something has corrupted the configuration of the PHY in ways that
> > Linux doesn't know how to reprogram?
> > 
> > Have you tried power-cycling the cubox-i?

Yes, it doesn't help.

> 
> Hopefully one last thing, which will explain why you may not be able
> to get an IP address even with some of these tweaks I've been getting
> you to try.  Do you have either none or both of these commits in your
> kernel?
> 
> 0672d22a1924 ("ARM: dts: imx: Fix the AR803X phy-mode")
> 6d4cd041f0af ("net: phy: at803x: disable delay only for RGMII mode")
> 
> I think you'll have the latter but not the former.  You will need the
> former if you have the latter.
> 

I was checked-out at 5502b218e001 ("net: phy: use
phy_resolve_aneg_linkmode in genphy_read_status") so I was missing both.


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
>         if (ret < 0)
>                 return ret;
> 
> +       /* Disable smartspeed */
> +       ret = phy_modify(phydev, 0x14, BIT(5), 0);
> +       if (ret < 0)
> +               return ret;
> +
> +       /* Must soft-reset the PHY for smartspeed disable to take effect */
> +       ret = genphy_soft_reset(phydev);

With the smartspeed disabled + soft reset patch against v5.1-rc1 +
cherry-pick the missing 0672d22a1924 ("ARM: dts: imx: Fix the AR803X
phy-mode") I'm finally getting an IP address.

Note that I do need the genphy soft reset without it I don't get an IP
address.

Also tested v5.3 with the patch and it does work.

I'm adding the output for v5.3 with this patch.

# mii-tool -v -v eth0
  Using SIOCGMIIPHY=0x8947
  eth0: negotiated 100baseTx-FD flow-control, link ok
    registers for MII PHY 0:
      3100 796d 004d d072 15e1 45e1 0007 0000
      0000 0200 0000 0000 0000 0000 0000 a000
      0000 0000 0000 f400 080c 0000 04e8 0000
      3200 3000 0000 063d 0000 0000 0000 0000
    product info: vendor 00:13:74, model 7 rev 2
    basic mode:   autonegotiation enabled
    basic status: autonegotiation complete, link ok
    capabilities: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
    advertising:  1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
    link partner: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control

# ethtool eth0
  Settings for eth0:
  	Supported ports: [ TP MII ]
  	Supported link modes:   10baseT/Half 10baseT/Full
  	                        100baseT/Half 100baseT/Full
  	                        1000baseT/Full
  	                        1000baseX/Full
  	Supported pause frame use: Symmetric
  	Supports auto-negotiation: Yes
  	Supported FEC modes: Not reported
  	Advertised link modes:  10baseT/Half 10baseT/Full
  	                        100baseT/Half 100baseT/Full
  	                        1000baseT/Full
  	                        1000baseX/Full
  	Advertised pause frame use: Symmetric
  	Advertised auto-negotiation: Yes
  	Advertised FEC modes: Not reported
  	Link partner advertised link modes:  10baseT/Half 10baseT/Full
  	                                     100baseT/Half 100baseT/Full
  	Link partner advertised pause frame use: Symmetric
  	Link partner advertised auto-negotiation: Yes
  	Link partner advertised FEC modes: Not reported
  	Speed: 100Mb/s
  	Duplex: Full
  	Port: MII
  	PHYAD: 0
  	Transceiver: internal
  	Auto-negotiation: on
  	Supports Wake-on: d
  	Wake-on: d
  	Link detected: yes

# journalctl -b | egrep -i 'phy|eth|fec'|grep -v usb
  kernel: Booting Linux on physical CPU 0x0
  kernel: libphy: Fixed MDIO Bus: probed
  kernel: libphy: fec_enet_mii_bus: probed
  kernel: fec 2188000.ethernet eth0: registered PHC device 0
  kernel: Atheros 8035 ethernet 2188000.ethernet-1:00: attached PHY driver [Atheros 8035 ethernet] (mii_bus:phy_addr=2188000.ethernet-1:00, irq=POLL)
  kernel: Atheros 8035 ethernet 2188000.ethernet-1:00: PHY advertising (00,00000200,000022ef) more modes than genphy supports, some modes not advertised.
  kernel: fec 2188000.ethernet eth0: Link is Up - 100Mbps/Full - flow control rx/tx
  kernel: IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
  systemd-networkd[364]: eth0: Gained carrier
  systemd-networkd[364]: eth0: DHCPv4 address 192.168.15.101/24 via 192.168.15.1
  systemd-networkd[364]: eth0: Gained IPv6LL
  systemd-networkd[364]: eth0: Configured

> I think this thread is a good illustration why breaking existing DT
> compatibility - even for the sake of fixing a bug - is just bad news.
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
