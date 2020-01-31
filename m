Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD05614EF58
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 16:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNvDzhkPPnnZa1jwYWjZcmQn4k8VK97XChgG3IvjEiw=; b=CMfJ7FPF76GZko
	juqb6tjiWLXVAwYUsdgSQhDPUA6NU1g7EKdTWd0TuDOtK6qL1bmZofZgwKys8fPGF+i7n4P745ve1
	nCw3OotLooLihcMtirkBu2AZ/p75NeyDIZQ3DTwVXbO1b+jON/32Vk4kyF/Q5JCPfux4xXpqZHZOd
	Z/gtduCDIZo23Tl0nLQ0tjzsaZFvxUKbtnzFvjmBGsjPkoc/N+2+EEZup6/b0AyJ2cLlEuzq8LHPf
	XVjnJk8hKw0wheoguzfWcdoOMGawerlZIVQLKjG6ymeGOjzgviIkszlosY1K5CKJg80IbICfiZ+CE
	G8IuQcfUaC+Bol9FnvfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixY1e-0003lL-B6; Fri, 31 Jan 2020 15:16:06 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixY1S-0003az-GE
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 15:15:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fUzcLt1w8L5s5llRSy1j27VyWBjiLhyEjBx40n8W3+o=; b=FzlQGopFPJOGf9T46YHaOuddN
 cE5FFi5V+RCR+2KpCIBUCn4TBTV2Puo9C43lUthvzPpAaVar0u6NH0UhmWGKekRiJjW0Nmhyngm35
 7QbTZcJnBehM5MCNqM3WDTlv7EDEM9rpD1lkOMKbWw/Hq5Dz4iyl/gHJiRTAAFlvdxbihcdRUCgyf
 +wohrVKl7MV8E5fp54jcUXnzfpuIMmTZ/ZIJi+vaK6d2ASrZMijt77gBtxdkcFvk7AzNK2I9gbuc2
 WULf+b6tMpbDgNjXDgUdSioxT/npE1at3tCaTtmK1uix5YnFJz3iyy+WhiUkuXfDVA4JGaIqZ8q3x
 giOjydUig==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:41666)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ixY0i-0001TG-1j; Fri, 31 Jan 2020 15:15:08 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ixY0a-0005Uz-Qq; Fri, 31 Jan 2020 15:15:00 +0000
Date: Fri, 31 Jan 2020 15:15:00 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200131151500.GO25745@shell.armlinux.org.uk>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <CABdtJHsu9R9g4mn25=9EW3jkCMhnej_rfkiRzo3OCX4cv4hpUQ@mail.gmail.com>
 <0680c2ce-cff0-d163-6bd9-1eb39be06eee@arm.com>
 <CABdtJHuLZeNd9bQZ-cmQi00WnObYPvM=BdWNw4EMpOFHjRd70w@mail.gmail.com>
 <b136adc4-be48-82df-0592-97b4ba11dd79@arm.com>
 <20200131142906.GG9639@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200131142906.GG9639@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_071554_787154_BA2AC4E4 
X-CRM114-Status: GOOD (  30.19  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Calvin Johnson <calvin.johnson@nxp.com>, stuyoder@gmail.com,
 nleeder@codeaurora.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Marc Zyngier <maz@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 Jon Nettleton <jon@solid-run.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 03:29:06PM +0100, Andrew Lunn wrote:
> > > But by design SFP, SFP+, and QSFP cages are not fixed function network
> > > adapters.  They are physical and logical devices that can adapt to
> > > what is plugged into them.  How the devices are exposed should be
> > > irrelevant to this conversation it is about the underlying
> > > connectivity.
> > 
> > Apologies - I was under the impression that SFP and friends were a
> > physical-layer thing and that a MAC in the SoC would still be fixed such
> > that its DMA and interrupt configuration could be statically described
> > regardless of what transceiver was plugged in (even if some configurations
> > might not use every interrupt/stream ID/etc.) If that isn't the case I shall
> > go and educate myself further.
> 
> Hi Robin
> 
> It gets interesting with QSFP cages. The Q is quad, there are 4 SERDES
> lanes. You can use them for 1x 40G link, or you can split them into 4x
> 10G links. So you either need one MAC or 4 MACs connecting to the
> cage, and this can change on the fly when a modules is ejected and
> replaced with another module.

I think it's even more complicated than that.  If you have a QSFP+
fiber module, that can be connected to four fibers which can either
go to another QSFP+ module, or four separate SFP+ modules.

That means it's a manual configuration decision whether to operate
the QSFP+ module as a single 40G link, or as four separate 10G links.

> There are only one set of control pins
> for i2c, loss of signal, TX disable, module inserted. So where the
> interrupt/stream ID/etc are mapped needs some flexibility.

QSFP changes the way the modules are controlled; gone are many of the
hardware signals, replaced by registers in the I2C space.  The
remaining hardware signals are:

ModSelL	module select (to enable the I2C bus)
ResetL	module reset
SCL/SDA	I2C bus
ModPrsL	module present
IntL	interrupt (but not too useful from what I can see!)
LPMode	low power mode (can be overriden via the I2C bus)

> There is also to some degree a conflict with hiding all this inside
> firmware. This is complex stuff. It is much better to have one core
> implementing in Linux plus some per hardware driver support, than
> having X firmware blobs, generally closed source, each with there own
> bugs which nobody can fix.

QSFP and SFP support is not really part of the DPAA2 firmware.

I have some prototype implementation for driving the QSFP+ cage, but
I haven't yet worked out how to sensible deal with the "is it 4x 10G
or 1x 40G" issue you mention above, and how to interface the QSFP+
driver sensibly with one or four network drivers.

I've been concentrating more on the SFP/SFP+ problem on the Honeycomb
board which is what most people will have, working out how to sensibly
drive the hardware so that our existing SFP support in the kernel can
work sensibly.  In the last couple of days, I've managed to get
something together which works, switching between 1000base-X and SGMII
on this hardware, using some of the patches I've already pointed to
over the last few weeks.  This hardware falls into the "split PCS and
MAC" problem space, so it's relevent to many people - and it's
important that we don't rush into a solution that works for one
implementation and not everyone.  This is why I haven't responded to
Jose's proposal - I'm still working out what is required for others,
but what I can say is that it isn't what Jose has proposed.  I had
asked Jose to hold off, but he's understandably eager to solve the
problem in front of him at the expense of everyone else.

What I've found is that any attempt to split the current
"phylink_mac_ops" interface between the PCS and MAC blocks results, as
I suspected, in mvneta and mvpp2 suffering very badly; the hardware
does not split along those functional blocks at all well.

My current state of play for this is in my "cex7" branch, pushed out
earlier today.  It's a bit hacky right now, and there's various issues
that need to be solved, but it is functional with the right board boot
configuration (basically the DPC file, which is one of the configs for
the MC firmware.)

I'm planning to look at what's required for the faster speeds; there's
other PCS PHYs on this platform that support the other speeds (10G, 25G,
40G, 100G) accessed via Clause 45 cycles.

As for the DSA issue you've raised with DSA links, I don't see any
obvious solution for that - the whole "if no fixed-link is specified,
default to the highest speed" is a real problem; the conversion of DSA
to phylink for the CPU and DSA ports did not take account of that.
phylink has _zero_ information in that case to know how the link should
be configured - there is no PHY, there is no fixed-link specification,
there is absolutely nothing.  So it's no surprise when phylink tries to
configure speed=0 duplex=half pause=off on these interfaces when they're
brought up.  I notice that this work was contributed by NXP - and in my
mind illustrates that they did not think about what they were doing
there either.  They certainly never ran phylink with debugging on and
considered whether the phylink_mac_config() calls contained sensible
information.  Did they even have all the information necessary to work
out what was required - I doubt it very much.  Did they realise that the
fixed-link specification was optional, did they realise that there
could be a PHY on these links, and did they consider what the behaviour
would be in those cases?  And now we have something of a headache
trying to work out how to solve this - one thing is certain, whatever
the fix is, it isn't going to be nice to be backported to stable trees.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
