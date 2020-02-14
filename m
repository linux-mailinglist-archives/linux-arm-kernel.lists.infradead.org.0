Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5402015EFB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 18:50:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJkYjIp7vTcSBWdJoQc0Fw2qX//KkK8+lASqocCKYBY=; b=TBHvK26+7SJG/d
	pE9abaOMjYpyqyGv1WvkcBhvKzpha+MCOWBIabTEEu8Gzzv13ghD/utVHz3RVrEUOL+gV11YGtlZP
	L0RZj5+hsQ8dzCQQQgpaQXcU6/PiJmKUu3QDFhZOo1PuIQGtc7BOQvvXHyQxVKO+WhF9nKj5+xkJy
	gOujWgweksmq3i00mPYhYLFHHyAEwWae1zpM7rBq05kYyL4E+lzGP9fdWtfV8XmK4Q4fEKS7AyCZh
	DwaOkHgK1PQjvwPXccrfiLvxnPBnu4jd1RJ1KUwurD6hy9RP8dHo1uTr7v2+zj03/HjW/C2cmWv+4
	xVGUOYb6snV+7SaFLeCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2f6X-0006ac-3v; Fri, 14 Feb 2020 17:50:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2f6H-0006C2-55
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 17:50:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B8E1328;
 Fri, 14 Feb 2020 09:49:57 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 157803F68E;
 Fri, 14 Feb 2020 09:49:53 -0800 (PST)
Date: Fri, 14 Feb 2020 17:49:49 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Pankaj Bansal <pankaj.bansal@nxp.com>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200214174949.GA30484@e121166-lin.cambridge.arm.com>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <VI1PR0401MB249622CFA9B213632F1DE955F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <7349fa0e6d62a3e0d0e540f2e17646e0@kernel.org>
 <VI1PR0401MB2496373E0C6D1097F22B3026F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200214161957.GA27513@e121166-lin.cambridge.arm.com>
 <VI1PR0401MB2496800C88A3A2CF912959E6F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB2496800C88A3A2CF912959E6F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_095001_284268_28C13E4E 
X-CRM114-Status: GOOD (  21.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Calvin Johnson <calvin.johnson@nxp.com>,
 "stuyoder@gmail.com" <stuyoder@gmail.com>,
 "nleeder@codeaurora.org" <nleeder@codeaurora.org>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
 "jon@solid-run.com" <jon@solid-run.com>, Russell King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 04:35:10PM +0000, Pankaj Bansal wrote:

[...]

> > -----Original Message-----
> > From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Sent: Friday, February 14, 2020 9:50 PM
> > To: Pankaj Bansal <pankaj.bansal@nxp.com>
> > Cc: Marc Zyngier <maz@kernel.org>; Ard Biesheuvel
> > <ard.biesheuvel@linaro.org>; Makarand Pawagi <makarand.pawagi@nxp.com>;
> > Calvin Johnson <calvin.johnson@nxp.com>; stuyoder@gmail.com;
> > nleeder@codeaurora.org; Ioana Ciornei <ioana.ciornei@nxp.com>; Cristi
> > Sovaiala <cristian.sovaiala@nxp.com>; Hanjun Guo <guohanjun@huawei.com>;
> > Will Deacon <will@kernel.org>; jon@solid-run.com; Russell King
> > <linux@armlinux.org.uk>; ACPI Devel Maling List <linux-acpi@vger.kernel.org>;
> > Len Brown <lenb@kernel.org>; Jason Cooper <jason@lakedaemon.net>; Andy
> > Wang <Andy.Wang@arm.com>; Varun Sethi <V.Sethi@nxp.com>; Thomas
> > Gleixner <tglx@linutronix.de>; linux-arm-kernel <linux-arm-
> > kernel@lists.infradead.org>; Laurentiu Tudor <laurentiu.tudor@nxp.com>; Paul
> > Yang <Paul.Yang@arm.com>; netdev@vger.kernel.org; Rafael J. Wysocki
> > <rjw@rjwysocki.net>; Linux Kernel Mailing List <linux-kernel@vger.kernel.org>;
> > Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>;
> > Sudeep Holla <sudeep.holla@arm.com>; Robin Murphy
> > <robin.murphy@arm.com>
> > Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Side note: would you mind removing the email headers (as above) in your
replies please ?

> > On Fri, Feb 14, 2020 at 03:58:14PM +0000, Pankaj Bansal wrote:
> > 
> > [...]
> > 
> > > > Why should the device know about its own ID? That's a bus/interconnect
> > thing.
> > > > And nothing should be passed *to* IORT. IORT is the source.
> > >
> > > IORT is translation between Input IDs <-> Output IDs. The Input ID is still
> > expected to be passed to parse IORT table.
> > 
> > Named components use an array of single mappings (as in entries with single
> > mapping flag set) - Input ID is irrelevant.
> > 
> > Not sure what your named component is though and what you want to do with
> > it, the fact that IORT allows mapping for named components do not necessarily
> > mean that it can describe what your system really is, on that you need to
> > elaborate for us to be able to help.
> 
> Details about MC bus can be read from here:
> https://elixir.bootlin.com/linux/latest/source/Documentation/networking/device_drivers/freescale/dpaa2/overview.rst#L324
> 
> As stated above, in Linux MC is a bus (just like PCI bus, AMBA bus etc)
> There can be multiple devices attached to this bus. Moreover, we can dynamically create/destroy these devices.
> Now, we want to represent this BUS (not individual devices connected to bus) in IORT table.
> The only possible way right now we see is that we describe it as Named components having a pool of ID mappings.
> As and when devices are created and attached to bus, we sift through this pool to correctly determine the output ID for the device.
> Now the input ID that we provide, can come from device itself.
> Then we can use the Platform MSI framework for MC bus devices.

So are you asking me if that's OK ? Or there is something you can't
describe with IORT ?

Side note: can you explain to me please how the MSI allocation flow
and kernel data structures/drivers are modeled in DT ? I had a quick
look at:

drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c

and to start with, does that code imply that we create a
DOMAIN_BUS_FSL_MC_MSI on ALL DT systems with an ITS device node ?

I *think* you have a specific API to allocate MSIs for MC devices:

fsl_mc_msi_domain_alloc_irqs()

which hook into the IRQ domain created in the file above that handles
the cascading to an ITS domain, correct ?

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
