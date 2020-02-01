Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC2014F7AC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Feb 2020 12:50:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzYUBerJ6Ued7f02iXovPKSE0ypigFX2lqmY3iJeMmE=; b=KaFrD4GeirLJap
	2Y/kbvgCmk28qGezQCtibKhw/G7Hwl2H/jHrzRTk/YzZmlAH8WBoHjAF11oSXWVdUoujdqp6Dij4Q
	0fULmmDMrnHIyEEPUIJ2PjlMVUt+RHOTkwYfRCuRKHoWMJr+vS+dxt0TFjFNG/Kjo7iSOpVu+OaW/
	7cLxKbt5UMY6M9fF8XcABoHaXpbZrht8sMQKOSRZAST6dvrbt2KQuwalmINLx1gPLpuz/0iydpo2c
	rDVkhWUzWDzTyCCJihce4Mkk/xb1RjSuTjILlemsp4sHtIx88QMZoYNFMSwJP3ci1jYz3dpcPKRMa
	oirPSKzDB/3ftl39h3tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixrHw-0007TP-C3; Sat, 01 Feb 2020 11:50:12 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixrHn-0006ZT-Nv
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Feb 2020 11:50:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HnpDr+EYlr+rwm3PugQQ1cWKXYWrIicGoMrGWJGDElk=; b=mFGne9DFt/gmDPWvq8GGbODr4
 74nkRl91SC6LnethSOBtJMY5ldDSVaTOJgrNiP5qkc9yB86oVQX/tbny09bLUK4rStaKyy5P8RsR0
 EXxE4na+G0wFzokc5ThlRXoqlXf768UOkfTqmDCGudbfGl607aU6Gy/JCiF9QqUxdZqjtWko90z+6
 5VzyMmfNrU3DSggP+As0u+Mzhv3lGLHNQ1325AvgVAIGrP1Z8SrX1BannNYfA+WxcMU/rV4HKOt+/
 FvfzQAUlYc66AKckYu/TqHvMCyaq+WrZnKowM6J9PFG+KBuSWcpRngFGnClh3i8bKnwAOdr/WBs0V
 EePQFJ2uw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:34528)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ixrHC-000704-FV; Sat, 01 Feb 2020 11:49:26 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ixrH5-0006Mc-Oa; Sat, 01 Feb 2020 11:49:19 +0000
Date: Sat, 1 Feb 2020 11:49:19 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@mellanox.com>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200201114919.GQ25745@shell.armlinux.org.uk>
References: <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <CABdtJHsu9R9g4mn25=9EW3jkCMhnej_rfkiRzo3OCX4cv4hpUQ@mail.gmail.com>
 <0680c2ce-cff0-d163-6bd9-1eb39be06eee@arm.com>
 <CABdtJHuLZeNd9bQZ-cmQi00WnObYPvM=BdWNw4EMpOFHjRd70w@mail.gmail.com>
 <b136adc4-be48-82df-0592-97b4ba11dd79@arm.com>
 <20200131142906.GG9639@lunn.ch>
 <20200131151500.GO25745@shell.armlinux.org.uk>
 <20200131074050.38d78ff0@cakuba.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200131074050.38d78ff0@cakuba.hsd1.ca.comcast.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_035003_801241_6A8C0456 
X-CRM114-Status: GOOD (  17.55  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Calvin Johnson <calvin.johnson@nxp.com>,
 stuyoder@gmail.com, nleeder@codeaurora.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
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

On Fri, Jan 31, 2020 at 07:40:50AM -0800, Jakub Kicinski wrote:
> On Fri, 31 Jan 2020 15:15:00 +0000, Russell King - ARM Linux admin
> wrote:
> > I have some prototype implementation for driving the QSFP+ cage, but
> > I haven't yet worked out how to sensible deal with the "is it 4x 10G
> > or 1x 40G" issue you mention above, and how to interface the QSFP+
> > driver sensibly with one or four network drivers.
> 
> I'm pretty sure you know this but just FWIW - vendors who do it in FW
> write the current config down in NVM so it doesn't get affected by
> reboots and use devlink port splitting to change it.

+Jiri

I wasn't aware of devlink port splitting, so thanks for that. However,
it could do with some better documentation - there's nothing on it
afaics in the Documentation subdirectory, and "man devlink-port"
doesn't give much away either:

   devlink port split - split devlink port into more
       DEV/PORT_INDEX - specifies the devlink port to operate on.

       count COUNT
              number of ports to split to.

It's the "into more" that's not clear - presumably more ports, and
presumably each port is a network device, but this isn't explained.

I think what this is trying to say is that, if we have a QSFP+ cage
with 4 serdes lines running at 10G, and they are initially treated as
a single 40G ethernet:

	devlink port split device/1 count 4

will then give us four 10G network devices, and:

	devlink port unsplit device/1

will recombine them back to a single 40G network device.

What if someone decides to do:

	devlink port split device/1 count 2

what do we end up with?  Presumably two network devices running with
two serdes lanes each (if supported by the hardware).  At that point
can they then do:

	devlink port split device/2 count 2

and end up with one network device with two 10G serdes lanes, and two
network devices each with one 10G serdes lane, or can port splitting
only be used on the "master" device/port ?

Unfortunately, I don't think I have any network devices that support
this so I can't experiment to find out how this should work; yes, I
have a Mellanox card, but it supports a single 10G SFP+, and therefore
does not support port splitting.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
