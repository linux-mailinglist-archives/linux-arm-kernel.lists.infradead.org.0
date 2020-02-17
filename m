Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FA116161F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aJ3F9q0VroapdI3hC6h3dh1PxgqdKr+W6wDxmbvgCc=; b=LAONkuyNATjjMw
	Xf53zcX8+3IkEQIjd2DXNxZtGl8lty7JH9aeOeDubQdirfr8xoOHWghQvgzQ806Yhn/jo+BvLNrMs
	ilgiOmFV7icA+d7oRItKJnFDMn+8/5xoRMAN9mx6L3/3+hrTVhcnv7EN1fc3BGpWfQ/pVTa37XBWJ
	j9eyXhx76MpXLFN0Ql1kcyu3BIvNXluEIG1R1i4hexOtEySjlygIR1x967hmGuFNK30AFQfXDlJEK
	yoYBtY7vInLISx/j50pRkwFTPd85Ef6+QY1iG+tqcJDJ0uWE27Lnvz2VbEHlrG//kAayI0RfcNIv2
	5nnxNQpAO9xHMZJwJpCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iH9-0002vo-Kz; Mon, 17 Feb 2020 15:25:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iH2-0002vM-D0
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:25:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B69030E;
 Mon, 17 Feb 2020 07:25:27 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 41D553F703;
 Mon, 17 Feb 2020 07:25:24 -0800 (PST)
Date: Mon, 17 Feb 2020 15:25:18 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Pankaj Bansal <pankaj.bansal@nxp.com>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
Message-ID: <20200217152518.GA18376@e121166-lin.cambridge.arm.com>
References: <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <VI1PR0401MB249622CFA9B213632F1DE955F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <7349fa0e6d62a3e0d0e540f2e17646e0@kernel.org>
 <VI1PR0401MB2496373E0C6D1097F22B3026F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200214161957.GA27513@e121166-lin.cambridge.arm.com>
 <VI1PR0401MB2496800C88A3A2CF912959E6F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
 <20200214174949.GA30484@e121166-lin.cambridge.arm.com>
 <VI1PR0401MB2496308C27B7DAA7A5396970F1160@VI1PR0401MB2496.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB2496308C27B7DAA7A5396970F1160@VI1PR0401MB2496.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_072528_529788_7295AD0A 
X-CRM114-Status: GOOD (  23.31  )
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

On Mon, Feb 17, 2020 at 12:35:12PM +0000, Pankaj Bansal wrote:
> 
> 
> > -----Original Message-----
> > From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Sent: Friday, February 14, 2020 11:20 PM
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
> > 
> > On Fri, Feb 14, 2020 at 04:35:10PM +0000, Pankaj Bansal wrote:
> > 
> > [...]
> > 
> > > > -----Original Message-----
> > > > From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > Sent: Friday, February 14, 2020 9:50 PM
> > > > To: Pankaj Bansal <pankaj.bansal@nxp.com>
> > > > Cc: Marc Zyngier <maz@kernel.org>; Ard Biesheuvel
> > > > <ard.biesheuvel@linaro.org>; Makarand Pawagi
> > <makarand.pawagi@nxp.com>;
> > > > Calvin Johnson <calvin.johnson@nxp.com>; stuyoder@gmail.com;
> > > > nleeder@codeaurora.org; Ioana Ciornei <ioana.ciornei@nxp.com>; Cristi
> > > > Sovaiala <cristian.sovaiala@nxp.com>; Hanjun Guo
> > <guohanjun@huawei.com>;
> > > > Will Deacon <will@kernel.org>; jon@solid-run.com; Russell King
> > > > <linux@armlinux.org.uk>; ACPI Devel Maling List <linux-
> > acpi@vger.kernel.org>;
> > > > Len Brown <lenb@kernel.org>; Jason Cooper <jason@lakedaemon.net>;
> > Andy
> > > > Wang <Andy.Wang@arm.com>; Varun Sethi <V.Sethi@nxp.com>; Thomas
> > > > Gleixner <tglx@linutronix.de>; linux-arm-kernel <linux-arm-
> > > > kernel@lists.infradead.org>; Laurentiu Tudor <laurentiu.tudor@nxp.com>;
> > Paul
> > > > Yang <Paul.Yang@arm.com>; netdev@vger.kernel.org; Rafael J. Wysocki
> > > > <rjw@rjwysocki.net>; Linux Kernel Mailing List <linux-
> > kernel@vger.kernel.org>;
> > > > Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>;
> > > > Sudeep Holla <sudeep.holla@arm.com>; Robin Murphy
> > > > <robin.murphy@arm.com>
> > > > Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
> > Side note: would you mind removing the email headers (as above) in your
> > replies please ?

Read the question above please.

[...]

> > > As stated above, in Linux MC is a bus (just like PCI bus, AMBA bus etc)
> > > There can be multiple devices attached to this bus. Moreover, we can
> > dynamically create/destroy these devices.
> > > Now, we want to represent this BUS (not individual devices connected to bus)
> > in IORT table.
> > > The only possible way right now we see is that we describe it as Named
> > components having a pool of ID mappings.
> > > As and when devices are created and attached to bus, we sift through this pool
> > to correctly determine the output ID for the device.
> > > Now the input ID that we provide, can come from device itself.
> > > Then we can use the Platform MSI framework for MC bus devices.
> > 
> > So are you asking me if that's OK ? Or there is something you can't
> > describe with IORT ?
> 
> I am asking if that would be acceptable?
> i.e. we represent MC bus as Named component is IORT table with a pool of IDs (without single ID mapping flag)
> and then we use the Platform MSI framework for all children devices of MC bus.
> Note that it would require the Platform MSI layer to correctly pass an input id for a platform device to IORT layer.

How is this solved in DT ? You don't seem to need any DT binding on top
of the msi-parent property, which is equivalent to IORT single mappings
AFAICS so I would like to understand the whole DT flow (so that I
understand how this FSL bus works) before commenting any further.

> And IORT layer ought to retrieve the output id based on single ID mapping flag as well as input id.
> 
> > 
> > Side note: can you explain to me please how the MSI allocation flow
> > and kernel data structures/drivers are modeled in DT ? I had a quick
> > look at:
> > 
> > drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c
> > 
> > and to start with, does that code imply that we create a
> > DOMAIN_BUS_FSL_MC_MSI on ALL DT systems with an ITS device node ?
> 
> Yes. It's being done for all DT systems having ITS node.

This does not seem correct to me, I will let Marc comment on
the matter.

> The domain creation is handled in drivers/bus/fsl-mc/fsl-mc-msi.c

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
