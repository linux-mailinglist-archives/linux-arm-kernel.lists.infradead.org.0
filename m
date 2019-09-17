Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB53B530C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hK/DFvnH0/tZ2550/xtTdxNVFb5xOUQhIfcJ+CCop1o=; b=SoMMObg7Igm+WH
	4AIlHKCWAbOlQt0ojb+bmoGSHT0owgzjOHCCfFIUNRx27zaNR7DOtuG71GOjGoCzF20W96V0hbLLv
	P+Hh6W1k5kwHjYPMQUnjxcpEoWMuXFc46o4rqVNnW7awSqS3npHMl9mmQRYDusRxl9QOyw0vIwLuR
	9DnzjmzWcYYTkPeGVdk10UNDMtPNzspkTO4wZAHo6S8k7iogkR/zzB+ooKhZk7jOZzBOWS8FJiUsp
	tUHzSKHUFu+O3qRjg/c5WPF2JwIZ7eaT6PgbeOHi5gJERoIxogSIchLTa9xz39wiBxKyUj1IHwZ+H
	QZJ5vdMee2A+U9Oy1raw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAGRI-0000sK-IZ; Tue, 17 Sep 2019 16:34:52 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAGR1-0000oD-8D
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 16:34:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id x2so4288626wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 09:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gOZrduvsuQOsT0TtQtTVHVnUf+qBWPsQWX6DxDL8ehI=;
 b=DSWHjWk4LTCQkzSntmDLQ3LCjNU4ntZKV3RdMTdrT7XHPJo1TcIt0V7xu6HQuC6xVO
 Ph3wlo0SBDZB1nqJuLgHunwwL4cckE+1EP8aJ4bZc3xK1zrpElRK0D1zdNgf52+ZH4Ru
 i80oyNeDsy6c0SoYKT6DloEBWQudfwY8j5Fx8dYJVoS1pDBfyrZmF6Myz3rQFouiPU6J
 h+TCrMcDrGase/DDj7fTsxGewipXyygUGwNM0n8AC0o510MCRDSfePJZzS7XRCqNeoU+
 JLZLnLoT/ZYbWtbrK2WdRvEO+ldjSxliwrsTKxj92MYWiXG5phephX6XwBciU//qatpu
 jqoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gOZrduvsuQOsT0TtQtTVHVnUf+qBWPsQWX6DxDL8ehI=;
 b=Xz0nJiAui6OZw7JNNH+4jfIq4006QBs1JrKFEfGfGa5zpzJnCD/OA5NSAEknupX4mv
 X/tibnYojsdME9rSz9syUj0DmxbC72O/1f/e0v6nrELnydnJIAzbWwFtTrfmq9FIqojU
 YpxFbP42buYJz9/hQgGKuETkeuOIcbvn55MMxrktEvXJg0dbeK/MXRN/lY/Jp+FPqxPs
 o07DNhM+g2nkn5MveVdQucl+cel0TwTg0sPRUJkuZO0gXhbd/qBY72NgJjrMg1UENqE0
 /nsEVIV/LhPxV8JNzyQdHIZ556WQ55YgWrAiA1V4Y979aewkABukOMOmV8HTR84aU3Jv
 Nc+Q==
X-Gm-Message-State: APjAAAXPXG4WaDCU161jjC52XAchjnBksubtApVLO65Vhjld+hANEb0j
 iLuUvz70h7D3oHT2GKeWwQY=
X-Google-Smtp-Source: APXvYqwR3D8IWm0Ut83B2G+YXsfjrcpLjCYzGzcwbYrl4Gpwi58UDBoN+gfS0TOglzRXhOamPs1aog==
X-Received: by 2002:a1c:540c:: with SMTP id i12mr4628519wmb.90.1568738073603; 
 Tue, 17 Sep 2019 09:34:33 -0700 (PDT)
Received: from arch-dsk-01 ([77.126.41.65])
 by smtp.gmail.com with ESMTPSA id d9sm5015630wrc.44.2019.09.17.09.34.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 09:34:32 -0700 (PDT)
Date: Tue, 17 Sep 2019 19:34:27 +0300
From: tinywrkb <tinywrkb@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190917163427.GA1475935@arch-dsk-01>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
 <20190915135652.GC3427@lunn.ch>
 <20190917124101.GA1200564@arch-dsk-01>
 <20190917125434.GH20778@lunn.ch>
 <20190917133253.GA1210141@arch-dsk-01>
 <20190917133942.GR25745@shell.armlinux.org.uk>
 <20190917151707.GV25745@shell.armlinux.org.uk>
 <20190917153027.GW25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917153027.GW25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_093435_373470_F4219C7F 
X-CRM114-Status: GOOD (  39.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tinywrkb[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 04:30:27PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Sep 17, 2019 at 04:17:07PM +0100, Russell King - ARM Linux admin wrote:
> > On Tue, Sep 17, 2019 at 02:39:43PM +0100, Russell King - ARM Linux admin wrote:
> > > On Tue, Sep 17, 2019 at 04:32:53PM +0300, tinywrkb wrote:
> > > > On Tue, Sep 17, 2019 at 02:54:34PM +0200, Andrew Lunn wrote:
> > > > > On Tue, Sep 17, 2019 at 03:41:01PM +0300, tinywrkb wrote:
> > > > > > On Sun, Sep 15, 2019 at 03:56:52PM +0200, Andrew Lunn wrote:
> > > > > > > > Tinywrkb confirmed to me in private communication that revert of
> > > > > > > > 5502b218e001 fixes Ethernet for him on effected system.
> > > > > > > > 
> > > > > > > > He also referred me to an old Cubox-i spec that lists 10/100 Ethernet
> > > > > > > > only for i.MX6 Solo/DualLite variants of Cubox-i. It turns out that
> > > > > > > > there was a plan to use a different 10/100 PHY for Solo/DualLite
> > > > > > > > SOMs. This plan never materialized. All SolidRun i.MX6 SOMs use the same
> > > > > > > > AR8035 PHY that supports 1Gb.
> > > > > > > > 
> > > > > > > > Commit 5502b218e001 might be triggering a hardware issue on the affected
> > > > > > > > Cubox-i. I could not reproduce the issue here with Cubox-i and a Dual
> > > > > > > > SOM variant running v5.3-rc8. I have no Solo/DualLite variant handy at
> > > > > > > > the moment.
> > > > > > > 
> > > > > > > Could somebody with an affected device show us the output of ethtool
> > > > > > > with and without 5502b218e001. Does one show 1G has been negotiated,
> > > > > > > and the other 100Mbps? If this is true, how does it get 100Mbps
> > > > > > > without that patch? We are missing a piece of the puzzle.
> > > > > > > 
> > > > > > > 	Andrew
> > > > > > 
> > > > > > linux-test-5.1rc1-a2703de70942-without_bad_commit
> > > > > > 
> > > > > > Settings for eth0:
> > > > > > 	Supported ports: [ TP MII ]
> > > > > > 	Supported link modes:   10baseT/Half 10baseT/Full
> > > > > > 	                        100baseT/Half 100baseT/Full
> > > > > > 	                        1000baseT/Full
> > > > > 
> > > > > So this means the local device says it can do 1000Mbps.
> > > > > 
> > > > > 
> > > > > > 	Supported pause frame use: Symmetric
> > > > > > 	Supports auto-negotiation: Yes
> > > > > > 	Supported FEC modes: Not reported
> > > > > > 	Advertised link modes:  10baseT/Half 10baseT/Full
> > > > > > 	                        100baseT/Half 100baseT/Full
> > > > > > 	                        1000baseT/Full
> > > > > 
> > > > > The link peer can also do 1000Mbps.
> > > > > 
> > > > > 
> > > > > > 	Advertised pause frame use: Symmetric
> > > > > > 	Advertised auto-negotiation: Yes
> > > > > > 	Advertised FEC modes: Not reported
> > > > > > 	Link partner advertised link modes:  10baseT/Half 10baseT/Full
> > > > > > 	                                     100baseT/Half 100baseT/Full
> > > > > > 	                                     1000baseT/Full
> > > > > > 	Link partner advertised pause frame use: Symmetric
> > > > > > 	Link partner advertised auto-negotiation: Yes
> > > > > > 	Link partner advertised FEC modes: Not reported
> > > > > > 	Speed: 100Mb/s
> > > > > 
> > > > > Yet they have decided to do 100Mbps. 
> > > > > 
> > > > > We need to understand Why? The generic PHY driver would not do this on
> > > > > its own. So i'm thinking something has poked a PHY register with some
> > > > > value, and this patch is causing it to be over written.
> > > > > 
> > > > > Please can you use mii-tool -v -v to dump the PHY registers in each
> > > > > case.
> > > > > 
> > > > > Thanks
> > > > > 	Andrew
> > > > 
> > > > Here's the output of # mii-tool -v -v eth0 
> > > > 
> > > > * linux-test-5.1rc1-a2703de70942-without_bad_commit
> > > > 
> > > > Using SIOCGMIIPHY=0x8947
> > > > eth0: negotiated 100baseTx-FD flow-control, link ok
> > > >   registers for MII PHY 0:
> > > >     3100 796d 004d d072 15e1 c5e1 000f 0000
> > > >     0000 0000 0800 0000 0000 0000 0000 a000
> > > >     0000 0000 0000 f420 082c 0000 04e8 0000
> > > >     3200 3000 0000 063d 0000 0000 0000 0000
> > > >   product info: vendor 00:13:74, model 7 rev 2
> > > >   basic mode:   autonegotiation enabled
> > > >   basic status: autonegotiation complete, link ok
> > > >   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> > > >   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> > > >   link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> > > 
> > > This is *not* advertising 1000baseT modes (register 9).
> > > 
> > > > 
> > > > 
> > > > * linux-test-5.1rc1-5502b218e001-with_bad_commit
> > > > 
> > > > Using SIOCGMIIPHY=0x8947
> > > > eth0: negotiated 100baseTx-FD flow-control, link ok
> > > >   registers for MII PHY 0:
> > > >     3100 796d 004d d072 15e1 c5e1 000d 0000
> > > >     0000 0000 0800 0000 0000 0000 0000 a000
> > > >     0000 0000 0000 0000 082c 0000 04e8 0000
> > > >     3200 3000 0000 063d 0000 0000 0000 0000
> > > >   product info: vendor 00:13:74, model 7 rev 2
> > > >   basic mode:   autonegotiation enabled
> > > >   basic status: autonegotiation complete, link ok
> > > >   capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> > > >   advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> > > >   link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> > > 
> > > Neither is this.
> > > 
> > > However, the kernel and phylib _thinks_ that it is.  My guess is
> > > something has rewritten the PHY registers from userspace, rather
> > > than using ethtool to change the advertisment.  The MAC is still
> > > trying to operate at 1000Mbps (since that is what phylib resolved)
> > > yet the link might be actually operating at 100Mbps - but for that
> > > to happen, we should've seen the link go down and up again.
> > > 
> > > Odd.
> > 
> > For reference, here I see:
> > 
> > Using SIOCGMIIPHY=0x8947
> > eth0: negotiated 1000baseT-FD flow-control, link ok
> >   registers for MII PHY 0:
> >     3100 796d 004d d072 15e1 c1e1 000d 0000
> >     0000 0200 3800 0000 0000 0000 0000 a000
> >     0000 0000 0000 0000 082c 0000 04e8 0000
> >     3200 3000 0000 060e 0000 0000 0000 0000
> >   product info: vendor 00:13:74, model 7 rev 2
> >   basic mode:   autonegotiation enabled
> >   basic status: autonegotiation complete, link ok
> >   capabilities: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> >   advertising:  1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
> >   link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
> > 
> > Note that userspace writing to register 9 (1G settings) will update
> > the physical PHY's advertisment for 1G speeds, but the kernel's idea
> > will not be updated, so things will become de-sync'd, and the kernel
> > _will_ incorrectly determine the speed.
> > 
> > So, are you using mii-tool or mii-diag to change the negotiation
> > settings, rather than using ethtool?
> > 
> > This is likely the case, as prior to 5502b218e001, we used to read
> > the advertisment registers afresh each time we evaluate the resulting
> > link mode.  After 5502b218e001, we use the advertisment mask cached
> > in phydev->advertising, which, looking at phy_mii_ioctl(), will not
> > be updated if register 9 is written.
> 
> Please try this patch - I haven't written a commit message for it yet,
> it's just to prove the above point.
> 
> Thanks.
> 
>  drivers/net/phy/phy.c | 5 +++++
>  include/linux/mii.h   | 9 +++++++++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> index 7af390d8bbdb..068a08a50064 100644
> --- a/drivers/net/phy/phy.c
> +++ b/drivers/net/phy/phy.c
> @@ -458,6 +458,11 @@ int phy_mii_ioctl(struct phy_device *phydev, struct ifreq *ifr, int cmd)
>  							   val);
>  				change_autoneg = true;
>  				break;
> +			case MII_CTRL1000:
> +				mii_ctrl1000_mod_linkmode_adv_t(phydev->advertising,
> +							        val);
> +				change_autoneg = true;
> +				break;
>  			default:
>  				/* do nothing */
>  				break;
> diff --git a/include/linux/mii.h b/include/linux/mii.h
> index 5cd824c1c0ca..1249d32dbd63 100644
> --- a/include/linux/mii.h
> +++ b/include/linux/mii.h
> @@ -455,6 +455,15 @@ static inline void mii_lpa_mod_linkmode_lpa_t(unsigned long *lp_advertising,
>  			 lp_advertising, lpa & LPA_LPACK);
>  }
>  
> +static inline void mii_ctrl1000_mod_linkmode_adv_t(unsigned long *advertising,
> +						   u32 ctrl1000)
> +{
> +	linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT, advertising,
> +			 ctrl1000 & ADVERTISE_1000HALF);
> +	linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT, advertising,
> +			 ctrl1000 & ADVERTISE_1000FULL);
> +}
> +
>  /**
>   * linkmode_adv_to_lcl_adv_t
>   * @advertising:pointer to linkmode advertising
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

The patch didn't fix the issue.

# ethtool eth0

Settings for eth0:
	Supported ports: [ TP MII ]
	Supported link modes:   10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Full
	Supported pause frame use: Symmetric
	Supports auto-negotiation: Yes
	Supported FEC modes: Not reported
	Advertised link modes:  10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Full
	Advertised pause frame use: Symmetric
	Advertised auto-negotiation: Yes
	Advertised FEC modes: Not reported
	Link partner advertised link modes:  10baseT/Half 10baseT/Full
	                                     100baseT/Half 100baseT/Full
	                                     1000baseT/Full
	Link partner advertised pause frame use: Symmetric
	Link partner advertised auto-negotiation: Yes
	Link partner advertised FEC modes: Not reported
	Speed: 1000Mb/s
	Duplex: Full
	Port: MII
	PHYAD: 0
	Transceiver: internal
	Auto-negotiation: on
	Supports Wake-on: d
	Wake-on: d
	Link detected: yes

# mii-tool -v -v eth0

Using SIOCGMIIPHY=0x8947
eth0: negotiated 100baseTx-FD flow-control, link ok
  registers for MII PHY 0:
    3100 796d 004d d072 15e1 c5e1 000f 0000
    0000 0000 0800 0000 0000 0000 0000 a000
    0000 0000 0000 f420 082c 0000 04e8 0000
    3200 3000 0000 063d 0000 0000 0000 0000
  product info: vendor 00:13:74, model 7 rev 2
  basic mode:   autonegotiation enabled
  basic status: autonegotiation complete, link ok
  capabilities: 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD
  advertising:  100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control
  link partner: 1000baseT-FD 100baseTx-FD 100baseTx-HD 10baseT-FD 10baseT-HD flow-control

# journalctl -b | egrep -i 'phy|eth|fec'|grep -v usb

kernel: Booting Linux on physical CPU 0x0
kernel: libphy: Fixed MDIO Bus: probed
kernel: libphy: fec_enet_mii_bus: probed
kernel: fec 2188000.ethernet eth0: registered PHC device 0
kernel: dwhdmi-imx 120000.hdmi: Detected HDMI TX controller v1.31a with HDCP (DWC HDMI 3D TX PHY)
kernel: Generic PHY 2188000.ethernet-1:00: attached PHY driver [Generic PHY] (mii_bus:phy_addr=2188000.ethernet-1:00, irq=POLL)
kernel: fec 2188000.ethernet eth0: Link is Up - 1Gbps/Full - flow control rx/tx
kernel: IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
systemd-networkd[242]: eth0: Gained carrier

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
