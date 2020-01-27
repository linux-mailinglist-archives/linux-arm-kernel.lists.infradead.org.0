Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B9414AA1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 19:54:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWYHm2ntalV+WJkOy849AEHvDQ1opI57kTyipgWpzL4=; b=NoSvdIbD3tIApy
	WIV8CT+4sCh3H8oBXQ1JxKaK4vQZnLBKgZPHS/yCSS8MpWrO1IfGl4Qi23tys2wCg1FnMhCiE1A3s
	Rz2Siv+lDW6b1Hd8B6u5ZQEnEe4lHCa8MG57GyeAqUs0w9HyWgu1M4vctv2exUjO6Yag8/MNJ3Y2o
	WtMFyGcLfmfIzcTroEEPLj7MC50rmEmkKOs8qPhULikkbu+RScmWBgxx+y8icZyYas0VyvOt1kNXl
	V7xZ2SOLtSEb6LGQULhnfNYdpiCR0xNOeZ/JlfCB/a3uvyP1P6I3/GiPnej6Gu3fVePHfTCrtTQ6a
	ctHYYIWM2DqIYTG/ZkpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw9Wn-0005Dx-JI; Mon, 27 Jan 2020 18:54:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw9Wd-0005DT-DC
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 18:54:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9bZov8GQOy749rL4iKzhHVYrZtN47cuAvYNN/z5sP94=; b=Av514hA/leszXD4f6+luumItB
 lBqBuR/TKd0CsK3ONMQ05IyceHns6IXU+HQ0ilKx9Fla7y5zBQB00RKpL6zUpQ5FFUBpkcXvg0yJS
 3cHu4HLa2lIL3YTa9olQxlaZEaOsTDCl/WwgBygVAIqSQ+CJ+oMoF5O4f4iYnWOXilIdYKwTaT122
 Xin5rx28Z47cKogcgJUeVNETw6cxZ/RQj2h79U/I26go5C15AF9dfxYA2deCZjopB2SBC4WIXX1v6
 i5eH6OgNMl+OnJc9tRhN6J3gF/sDYxacPPdqxl1dRXs2k1sCp5E9MA5a3b4M8vqsNFDLGrTn6CZbx
 05d3hWJqA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:60668)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iw9WA-00030f-Ho; Mon, 27 Jan 2020 18:53:50 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iw9W4-0001dl-DI; Mon, 27 Jan 2020 18:53:44 +0000
Date: Mon, 27 Jan 2020 18:53:44 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 07/14] net: axienet: Fix SGMII support
Message-ID: <20200127185344.GA25745@shell.armlinux.org.uk>
References: <20200110115415.75683-8-andre.przywara@arm.com>
 <20200110140415.GE19739@lunn.ch>
 <20200110142038.2ed094ba@donnerap.cambridge.arm.com>
 <20200110150409.GD25745@shell.armlinux.org.uk>
 <20200110152215.GF25745@shell.armlinux.org.uk>
 <20200110170457.GH25745@shell.armlinux.org.uk>
 <20200118112258.GT25745@shell.armlinux.org.uk>
 <3b28dcb4-6e52-9a48-bf9c-ddad4cf5e98a@arm.com>
 <20200120154554.GD25745@shell.armlinux.org.uk>
 <20200127170436.5d88ca4f@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127170436.5d88ca4f@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_105419_795217_3F402381 
X-CRM114-Status: GOOD (  45.07  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 05:04:36PM +0000, Andre Przywara wrote:
> On Mon, 20 Jan 2020 15:45:54 +0000
> Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> 
> Hi Russell,
> 
> sorry for the delay, some other stuff bubbling up, then I couldn't access the board ...
> 
> > On Mon, Jan 20, 2020 at 02:50:28PM +0000, Andre Przywara wrote:
> > > On 18/01/2020 11:22, Russell King - ARM Linux admin wrote:  
> > > > On Fri, Jan 10, 2020 at 05:04:57PM +0000, Russell King - ARM Linux admin wrote:  
> > > >> Maybe something like the below will help?
> > > >>
> > > >> Basically, use phylink_mii_pcs_get_state() instead of
> > > >> axienet_mac_pcs_get_state(), and setup lp->phylink_config.pcs_mii
> > > >> to point at the MII bus, and lp->phylink_config.pcs_mii_addr to
> > > >> access the internal PHY (as per C_PHYADDR parameter.)
> > > >>
> > > >> You may have some fuzz (with gnu patch) while trying to apply this,
> > > >> as you won't have the context for the first and last hunks in this
> > > >> patch.
> > > >>
> > > >> This will probably not be the final version of the patch anyway;
> > > >> there's some possibility to pull some of the functionality out of
> > > >> phylib into a more general library which would avoid some of the
> > > >> functional duplication.  
> > > > 
> > > > Hi Andre,
> > > > 
> > > > Did you have a chance to see whether this helps?  
> > > 
> > > Sorry, I needed some time to wrap my head around your reply first. Am I am still not fully finished with this process ;-)
> > > Anyway I observed that when I add 'managed = "in-band-status"' to the DT, it seems to work, because it actually calls axienet_mac_pcs_get_state() to learn the actual negotiated parameters. Then in turn it calls mac_config with the proper speed instead of -1:
> > > [  151.682532] xilinx_axienet 7fe00000.ethernet eth0: configuring for inband/sgmii link mode
> > > [  151.710743] axienet_mac_config(config, mode=2, speed=-1, duplex=255, pause=16)
> > > ...
> > > [  153.818568] axienet_mac_pcs_get_state(config): speed=1000, interface=4, pause=0
> > > [  153.842244] axienet_mac_config(config, mode=2, speed=1000, duplex=1, pause=0)
> > > 
> > > Without that DT property it never called mac_pcs_get_state(), so never learnt about the actual settings.
> > > But the actual MAC setting was already right (1 GBps, FD). Whether this was by chance (reset value?) or because this was set by the PHY via SGMII, I don't know.
> > > So in my case I think I *need* to have the managed = ... property in my DT.  
> > 
> > I really don't like this guess-work.  The specifications are freely
> > available out there, so there's really no need for this.
> > 
> > pg051-tri-mode-eth-mac.pdf describes the ethernet controller, and
> > Table 2-32 therein describes the EMMC register.
> > 
> > Bits 31 and 30 comprise a two-bit field which indicates the speed that
> > has been configured.  When the Xilinx IP has been configured for a
> > fixed speed, it adopts a hard-coded value (in other words, it is read-
> > only).  When it is read-writable, it defaults to "10" - 1G speed.
> > 
> > So, I think this just works by coincidence, not by proper design,
> > and therefore your patch in this sub-thread is incorrect since it's
> > masking the problem.
> > 
> > > But I was wondering if we need this patch anyway, regardless of the proper way to check for the connection setting in this case. Because at the moment calling mac_config with speed=-1 will *delete* the current MAC speed setting and leave it as 10 Mbps (because this is encoded as 0), when speed is not one of the well-known values. I am not sure that is desired behaviour, or speed=-1 just means: don't touch the speed setting. After all we call mac_config with speed=-1 first, even when later fixing this up (see above).  
> > 
> > Have you tested 100M and 10M speeds as well - I suspect you'll find
> > that, as you're relying on the IP default EMMC register setting, it
> > just won't work with your patches as they stand, because there is
> > nothing to read the in-band result.  I also don't see anything in
> > either pg051-tri-mode-eth-mac.pdf or pg047-gig-eth-pcs-pma.pdf which
> > indicates that the PCS negotiation results are passed automatically
> > between either IP blocks.
> > 
> > Therefore, I think you _will_ need something like the patch I've
> > proposed to make this Xilinx IP work properly.
> 
> OK, I think I begin to understand where you are coming from: Despite using SGMII there is *no* automatic in-band passing of the PHY link status to the MAC (I was working on that assumption and was treating the default 1Gbps as a result of that auto-negotiation).
> And since the registers that the manual mentions are actually PHY registers, we need to use MDIO to access them.
> And just when I was wondering how I should do this I realised that this is exactly what your patch does ...

Yep!  I'm running out of time this evening, but I'll try to get through
as many of your questions as possible before I have to head off.

> So I filled the gaps in there, and that indeed seems to improve now.
> Some questions:
> - I still always see mac_config() being called with speed=-1 first. With the current mac_config implementation this screws up the MAC setup, but is later corrected (see below). But I would still get that "Speed other than 10, 100 or 1Gbps is not supported" message. So if this speed=-1 some special case that needs extra handling? Where does it actually come from?

Yes - that's because we need to do an initial configuration when the
interface is brought up.  Consider the case where we're using
1000base-X:

MAC1 <--> MAC-PCS1 <--> SFP1 <--fiber--> SFP1 <--> MAC-PCS2 <--> MAC2

First, the negotiation is handled purely by the two MAC-PCS blocks,
so these need to be initially configured according to the modes we
wish to advertise.

Second, the MAC and MAC-PCS blocks need to be configured for 1000base-X
mode rather than SGMII, RGMII or whatever else.

Third, depending on the SFP actually plugged in, we may need to
configure 1000base-X, or we may need to configure SGMII.  In more
extreme examples, this inflates to 2500base-X and even 10GBASE-R
modes at the MAC-PCS/serdes.

At the moment, with phylink's current assumption that the MAC PCS
and MAC are tightly integrated, we get away with setting an incomplete
initial configuration, but solving this is rather difficult.  We would
need to read the MAC PCS state and pass the full state that back to
the MAC.

However, one of the guarantees right now is that mac_pcs_get_state()
will be called with state->interface reflecting the previously
configured interface mode in the preceding mac_config() call, which
means mac_pcs_get_state() can interpret the hardware state according to
how it should be configured, so calling mac_pcs_get_state() prior to
the first mac_config() call to get a complete state breaks this
assumption.

What's needed is to split mac_config() into a PCS configuration call
that can be made, then call mac_pcs_get_state(), and pass the resulting
full state to mac_config() - which is great in theory, but needs the
mashed up situation with mvneta/mvpp2 sorted.

You're not the only one with this issue, and when I've raised it
previously (such as earlier today in response to a patch being posted)
their immediate reaction is to go into discussion mode about finding a
different workaround for it - which has the effect that I'm busy
reading their emails and writing responses rather than working towards
a solution to the problem!

> - Checking the phylink doc for mac_config() I understand that when using MLO_AN_INBAND, I should "place the link into inband negotiation mode". Does that mean that it should call phylink_mii_pcs_an_restart()? Or is this the responsibility of phylink?

phylink_mii_pcs_an_restart() is an implementation for the
mac_an_restart() operation in struct phylink_mac_ops.

And... to try and cover two emails in one response (there's another
reply in this thread from someone else, sorry I can't check your
name right now) - phylink_mii_pcs_set_advertisement() is a helper for
use in mac_config().  To deal further with that reply, the validate()
callback must not change any hardware state, and therefore must not
call phylink_mii_pcs_set_advertisement().

> - When using managed = "in-band-status", I see a second call to mac_config() having the right parameters (1Gbps, FD) now, as read by phylink_mii_pcs_get_state(). So this gets eventually set up correctly now, thanks to your patch.

Yes, that will happen on the first link resolution, which will occur
shortly after the call to phylink_start().

> - I initialise "lp->phylink_config.pcs_mii = lp->mii_bus;" in axienet_probe(), just before calling phylink_create(). Where would be the best place to set the PHY address (phylink_config.pcs_mii_addr)? That is not known yet at this point, I guess? (I hacked it to 1 just to test your code).

It only needs to be set before any of the phylink_mii_pcs_*() functions
are called - which basically means at the latest before the first call
to phylink_start().

> - When *not* using managed = "in-band-status", I see mac_config still being called with MLO_AN_PHY and speed=-1. Is that expected? Is there something else missing, possibly in the DT? Shouldn't phylink ask the PHY via MDIO about the status first, then come back with the results as parameters to mac_config()? The phylink mac_config() doc just says that we should configure the MAC according to speed, duplex and pause passed in.

That's probably the same as your earlier point - the initial
configuration being set, rather than the resolve.  With PHY mode,
mac_config() won't be called for a link resolution unless the link
is up.

> Regarding 10/100 Mbps: I can't test any other speeds, because this is on an FPGA in some data centre, and I can't control the other side. I am already happy that I have *some* Ethernet cable connected to it ;-)

I was going to ask you whether the hardware was available, assuming it
was on your desk, but if it's in a data centre somewhere, it suggests
it isn't that widely available.

However, I've been thinking about Andrew Lunn's issues with the serdes
block on Marvell DSA bridges, and that's basically implementing exactly
the same as your PCS PHY - and I have those boards.  So, that gives me
a way to test this code.  If I get a chance tomorrow, I'll try to make
some progress there.

I also suspect that with the LX2160A hardware on the other end of one
of the fiber links from the ZII board, I may be able to trick the ZII
board into thinking there's a SGMII PHY on the other end too... I know
how to set the 16-bit control word used for the inband configuration
to anything I desire!

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
