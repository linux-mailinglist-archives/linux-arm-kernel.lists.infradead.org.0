Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD24607A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QT8ZGn1uvLcWITG3XgAzCakEM/oCIwNaVQJDAZUv2ao=; b=DuFEGwvFIDZ5jV
	hPDKu940Mj/ZQCeK8K1XniX+zimymvU156bKV8s5auDXiXw4T6qztoHDGXa2W8fdam2Rr6+e7n2ig
	AxcQoAg4K1Db3ZwmZxbm6U8hq2ML/A16IHRZllA5dgwBB5umMoSMT5i8qBxFxzquROAbXioRnJfWi
	PrCQpW4lRZAT9whZ64wtWyjxNvXFFgdFN4RjPTTjYJ25gaqIduMTXxZCNkfMjiUiYl6k3yZvG6HuE
	3jl3BQnEgCNQCJ6YLDK4squpgglldY/vks4n++uB46iZheTL/FCny+DMf2+EXxRyoPH5Q2RIHFWKV
	AIvqG4txwsVou7SLwBkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjP1K-0001lY-7y; Fri, 05 Jul 2019 14:17:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjP0c-0001Dk-Gf
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:16:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GURrO8zgnCuCWI7WBuIEssCv1NdAAbLTM7NAgckfxS8=; b=mlJjyQhaHJQKnWzIB5vUkEPQB
 6GyX6xKXFx/+gsym5909flmWwBG3V5WJ+TQhgTvfHJvDPfAEKtkJIYYkgP8dMqdznYFrfeRHC27Za
 UQykmdYEkEB0wgVl1ioCNCM4FplJ+gE0expuNsOyF4Mq9Y+FPn8KZ+Kxa28+VpHU02NptbNtUepRN
 vzIdALrlPdW5jyjRxteEwNprtDUwzQo12xROU5QjiuZRYThuoikdYTELHfbZ0CVPYe/ydfow5ccSD
 JeWHg/MmRstgCYrH49j93edQBjRsADwt2dQc06w1ROwAN9s9JeXH3LXXXPNLtTPjALWEg4t0+wCCt
 ERH4YFL0g==;
Received: from vps0.lunn.ch ([185.16.172.187])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjP0Z-0002Vd-Ls
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 14:16:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GURrO8zgnCuCWI7WBuIEssCv1NdAAbLTM7NAgckfxS8=; b=regnXF4lkzwCetZZfcSAd4XQeG
 9D8cSvAplxUVBOHQi04vypGLshUFcPOgOsXOPGJrAQ5N023ounVLA+9yIcqhN3vIRtMw6KTWr6aPT
 fsG1rayVXOsgSI41FX05TnDZWudG/33PrwsD6XWlG8AqUmzc0VdF0ENyAJn8mHQjIG+w=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hjP0F-0001PA-P4; Fri, 05 Jul 2019 16:15:55 +0200
Date: Fri, 5 Jul 2019 16:15:55 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
Message-ID: <20190705141555.GB4428@lunn.ch>
References: <20190621164940.GL31306@lunn.ch>
 <VI1PR04MB4880D8F90BBCD30BF8A69C9696E00@VI1PR04MB4880.eurprd04.prod.outlook.com>
 <20190624115558.GA5690@piout.net> <20190624142625.GR31306@lunn.ch>
 <20190624152344.3bv46jjhhygo6zwl@lx-anielsen.microsemi.net>
 <20190624162431.GX31306@lunn.ch> <20190624182614.GC5690@piout.net>
 <CA+h21hqGtA5ou7a3wjSuHxa_4fXk4GZohTAxnUdfLZjV3nq5Eg@mail.gmail.com>
 <20190705044945.GA30115@lunn.ch>
 <CA+h21hqU1H1PefBWKjnsmkMsLhx0p0HJTsp-UYrSgmVnsfqULA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+h21hqU1H1PefBWKjnsmkMsLhx0p0HJTsp-UYrSgmVnsfqULA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Allan Nielsen <Allan.Nielsen@microsemi.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "Allan W. Nielsen" <allan.nielsen@microchip.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Let me see if I get your point.
> The D is optional, and the S is optional. So what's left? :)

A collection of interfaces.

switchdev and by extension DSA is all about using hardware as an
accelerator. Linux can do switching in software. It can do routing in
software, it can do bonding in software, etc. switchdev gives you an
API to offload this to hardware. And if the hardware or the driver
does not support it, linux will just keep on doing it in software.

Once you get the idea it is just an accelerator, the rest falls into
place. Why there are no new configuration tools, why we expect network
daemons to just work, why users don't need to learn anything new. It
is all just linux networking as normal.

> Also, there's a big difference between "the hardware can't do it" and
> "the driver doesn't implement it". If I follow your argument, would
> you write a DSA driver for a device that doesn't do L2 switching?

Sure i would. Such a device is a port multiplexor. The user sees the
user ports as linux interfaces. They can use those interfaces just
like any other linux interfaces. Configure them using iproute2, add
them to bridges, run bonding, etc. All just linux as normal.

> Along that same line, what benefit does the DSA model bring to a
> switch that can't do cascading, compared to switchdev? I'm asking this
> as a user, not as a developer.

DSA builds on top of switchdev. switchdev gives you an API to offload
things which are happening in software to the hardware. It is the glue
which allows you to configure the accelerator.

There is also a common pattern for some switches. They connect a
switch port MAC to a host port MAC, so that frames can be passed from
the CPU to the switch. This pattern is common enough that
infrastructure has been put in place to support this model. That
infrastructure is DSA.

But that is mostly about details for the driver writer. From the users
perspective, you have a bunch of interfaces which you just use as
normal, and some stuff can get accelerated by the hardware. We don't
want the user to have to known about, or do anything, with the host
port or the switch port it is connected to. DSA very nearly takes care
of everything to do with those two. The only thing you need to do is
configure the master interface up. Then things just work as a bunch of
Linux interfaces.

Now think about a pure switchdev switch, with a port connected to the
host. The model breaks down. How do you use that link to the switch?
It is just a plane link. You would not have tagging in operation. So
you cannot send frames out specific ports. In order to do that, you
need to add vlans, and configure the switch to map vlans to ports,
etc. You also then have two linux interfaces representing one
port. The pure switchdev interface, and the VLAN interface. That is
going to confuse the user. You SNMP agent is not just going to
work. You get the statistics from the pure switchdev interface, but
the IP configuration from the vlan interface? How do you bridge two
ports together? You need to put the same VLAN on two interfaces. Where
as the DSA model you just use linux as normal and create a bridge, add
the two interfaces, and then the stack transparently offloads it to
the accelerator. How does STP work?

Using DSA without using the D means switch ports just work as linux
interfaces.

> 
> > > So my conclusion is that DSA for Felix/Ocelot doesn't make a lot of
> > > sense if the whole purpose is to hide the CPU-facing netdev.
> >
> > You actually convinced me the exact opposite. You described the
> > headers which are needed to implement DSA. The switch sounds like it
> > can do what DSA requires. So DSA is the correct model.
> >
> >      Andrew
> 
> Somebody actually asked, with the intention of building a board, if
> it's possible to cascade the LS1028A embedded switch (Felix) with
> discrete SJA1105 devices - Felix being at the top of the switch tree.

Florian has done something very similar. He used a Broadcom SoC with
an in built SF2 switch, and an external B53 roboswitch connected to
one of the SF2 ports. But in that setup, the master interface for the
b53 is a slave port of the SF2. Configure everything in device tree,
bring up the SoC master interface, then the SF2 port acting as a
master interface for the B53, and everything just worked. You have a
bunch of Linux interfaces you can just use as normal.

This is not using D in DSA. It is two instances of DSA. But because
the model is that you get normal linux interfaces, it just works. I
don't see why you cannot do the same with a LS1028A and a SJA1105.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
