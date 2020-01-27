Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687CA14A7D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 17:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8B81JJaZoMd66PzvGv8YdFKevlDh9MSh9RWARZc8FPk=; b=h5/+yZYZMoKnnq
	1BNEh30EwEizAcKY+ALMqXCShAAGvQF1qisZ8ZRqxBiouVizKrKjyJzzCHke+AaDtpmycJua4dKBU
	FqEueFLwpoYXkQTV8l78vPajtjCnP7tSColNDGJoemXpj2NxtY536TV5YPscUsNIpzNGS4/Bt794z
	jaPWCBVAXPFdAxSnPwnoV3H4LvBa5csefleF1VXB8nPCefDOiLRzldPbY+WpfQCIrqyJOuXUcWCFv
	FnwFy50y7DnHOtI1rORIiMtycInxC2EMKmA6K8H0yLWYZa4hYchy/dsGMljvFO9ln/rxT2tuqkQEX
	Iysz1mnK1CqQxPVYgpmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw6zg-0000oa-QH; Mon, 27 Jan 2020 16:12:08 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw6zV-0000oB-L2
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 16:11:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gEl6tSo6zZ7fDJ2My+QHjzpT/cnxKFaOYeklSZ0cvYE=; b=ul6LkH0cilXWVwQ+Ixv2rqWTE
 sBu0kntPb7nVSZT+OAF5OG0rQZ7OKnxVWLHPOEBYgcRxOeKJ1Cvq/8zQGjEe7t87FQSly+RKzpMvC
 WwyofFvrDFCUkDc8Tk5ChmaGRQhZdivcjzOzMNv6Dr7gw0KKrCO2hDLXQfTkqWKGAzI7VACqxNltE
 fur5lbEKHc3R7tpVF5phn4V9yoAHFU+B5KPcmP+1hmRMXAGcP5pavf3WyxhgoGi1Z//l9qY7a2kXo
 WzBkbDBGPl0BVDF/zmh7gbJbcbiv0cX/CKSN05m7wIH5R+jF1SgEon7Re/Xe0lI65uiy/eFRM8XX2
 kkyJHe9FQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44044)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iw6zB-0002LM-Ik; Mon, 27 Jan 2020 16:11:37 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iw6z6-0001Xp-TY; Mon, 27 Jan 2020 16:11:32 +0000
Date: Mon, 27 Jan 2020 16:11:32 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Message-ID: <20200127161132.GX25745@shell.armlinux.org.uk>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
 <20200127112102.GT25745@shell.armlinux.org.uk>
 <BN8PR12MB3266714AE9EC1A97218120B3D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20200127114600.GU25745@shell.armlinux.org.uk>
 <20200127140038.GD13647@lunn.ch>
 <20200127140834.GW25745@shell.armlinux.org.uk>
 <20200127145107.GE13647@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127145107.GE13647@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_081157_838019_4ADC1A12 
X-CRM114-Status: GOOD (  23.90  )
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 03:51:07PM +0100, Andrew Lunn wrote:
> > Can you give a hint which platform this is and how to reproduce it
> > please?
> 
> Hi Russell
> 
> Devel C has issues with its fibre ports. I tend to test with
> sff2/port9 not sff3/port3, because i also have the copper port plugged
> in. If the copper gets link before the fibre, copper is used.
> 
> What i see is that after the SERDES syncs, its registers indicate a 1G
> link, full duplex, etc. But the MAC is using 10/Half. And hence no
> packets go through. If i set the MAC to the same as the PCS, i can at
> least transmit. Receive does not work, but i think that is something
> else. The statistics counters indicate the SERDES is receiving frames,
> but the MAC statistic counters suggests the MAC never sees them.
> 
> I've also had issues with the DSA links, also being configured to
> 10/Half. That seems to be related to having a phy-mode property in
> device tree. I need to add a fixed-link property to set the correct
> speed. Something is broken here, previously the fixed-link was only
> needed if the speed needed to be lower than the ports maximum. I think
> that is a separate issue i need to dig into, not part of the PCS to
> MAC transfer.

Presumably, all these should be visible on the ZII rev B as well?
I've not noticed any issues there, and I have 5.4 built from my
tree on December 22nd which would've included most of what is in
5.5, and quite a bit of what's queued in net-next.

There, I see:

mv88e6xxx.0/regs:    GLOBAL GLOBAL2 SERDES     0    1    2    3    4    5    6
mv88e6xxx.0/regs: 1:     2    8007     149     3    3    3    3    3 403e   3d
mv88e6xxx.1/regs:    GLOBAL GLOBAL2 SERDES     0    1    2    3    4    5    6
mv88e6xxx.1/regs: 1:     2    8807     14d     3    3    3    3    3 403e 403e
mv88e6xxx.2/regs:    GLOBAL GLOBAL2 SERDES     0    1    2    3    4    5    6    7    8    9
regs: 1:  7209       0    ffff  c503 c503 c503 2403 2403 2403 2403 2403 2403 c13e

which looks fine to me:
- switch 0
   - port 5 is the DSA port, which is forced to 1G.
   - port 6 is the CPU port, which is forced to 100M.
- switch 1
   - ports 5 and 6 are DSA ports, forced to 1G
- switch 2
   - port 9 is the DSA port, forced to 1G.

Booting 5.5 is more noisy than 5.4 - there's loads of complaints about
"already a member of VLAN 1".  As far as the port MAC settings go, it
looks just the same as the 5.4 settings I quoted above.

Now, I do have some differences between what is in mainline and my tree
and one of them involves adding a whole bunch of "phylink_mac_config"
and "phylink_link_force" methods to the mv88e6xxx_ops for Marvell DSA
switches.  Without these, dsa_port_phylink_mac_config() will ignore
phylink's attempts to configure the MAC.

Quite why this is, I don't know; these are patches I've carried for
ages, since trying to get the SFF modules working on these platforms,
before mainline gained phylink support for DSA.  I seem to remember
that mainline's work was based on what I'd done, or was very similar,
but I never really understood why bits such as this were left out.
Since this work has been published online in my git tree since day 1,
I find it really strange that people go off and do what seems to be a
half-hearted implementation.  See the "zii" branch.

Mainline did diverge on the issue of how the SFF modules should be
driven; whether to drive them with the SFP code or whether to use
a fixed-link instead.  I've kept my original approach, which is less
than perfect since we don't have a link interrupt to trigger the call
to phylink_mac_change().  However, I'm suspecting that once we solve
the PCS/MAC split issue, and use the clause 37 phylink PCS helpers
I've proposed in the last few weeks, this will be resolvable.

> Heiner has another device which has an Aquantia PHY running in an odd
> mode so that it does 1G over a T2 link. It uses SGMII for this, and
> that is where we first noticed the issue of the MAC and PCS having
> different configurations.

Do you know when the issue appeared?

It sounds like this regression has been known for some time, yet this
is the first I've heard about it.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
