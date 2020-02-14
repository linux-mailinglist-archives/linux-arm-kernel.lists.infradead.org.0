Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3C715DDBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:01:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UpaCNozry6ItpiAYPG2DvcY5//xixNgipLUW+HiRXbc=; b=pipHRCDslgiqhPsl1QumwtAj0
	Vbg4YGvKB4VzT+nycW8MSVWgknOGjjoVLfEihmwKk/ff5s0br4DkhIY55wDHTB3jEGSAvpxP02T0H
	iE7YfTT0zOvtJKZyK8o3mPRfrcSmX/ZQ9P7AorLtVS4Jhm6fgjXhuozpdLjwcmB6G5WbE+nkOn3Wo
	kqzayaznc3SRai+d6UVEMAQ9m8Kla7aMhKJWD/yXV+C3e0xqWPfWLnpHo+z1CECpFRM0IwThCQwd+
	95bigIKouoSs9YF26C6pJZlu0IU088wD59slNnYVKUAgcjS3MFD/lcWo4QzE/YN4Poa5D3Wj0gtXE
	J/2vdNECA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dP1-0007Sb-97; Fri, 14 Feb 2020 16:01:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dIQ-0007OD-SV
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:54:29 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CB6D2467C;
 Fri, 14 Feb 2020 15:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695666;
 bh=GeKdTvnywdeP8MWj0VNmxO0/yB5ZrHe8bH94R5osg5I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UieYlkOWDSA5iGNGqb4TX8AldH9CFgR3ogyJ/4Kkt0vjhiq7hjB9kSwtihrFPGHKL
 LTXuu1waz+qzRC4ZYU6xDisrdOBf2tBwsuHrx8n2H1nnjkdUFFFaJoNgKeVzWfA6IV
 n1o/K6Y89PK3l2bxM5lZOXzf/Ri152gnYDeJI0XY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2dIO-0059RP-BJ; Fri, 14 Feb 2020 15:54:24 +0000
MIME-Version: 1.0
Date: Fri, 14 Feb 2020 15:54:24 +0000
From: Marc Zyngier <maz@kernel.org>
To: Pankaj Bansal <pankaj.bansal@nxp.com>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
In-Reply-To: <VI1PR0401MB249622CFA9B213632F1DE955F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <VI1PR0401MB249622CFA9B213632F1DE955F1150@VI1PR0401MB2496.eurprd04.prod.outlook.com>
Message-ID: <7349fa0e6d62a3e0d0e540f2e17646e0@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: pankaj.bansal@nxp.com, ard.biesheuvel@linaro.org,
 lorenzo.pieralisi@arm.com, makarand.pawagi@nxp.com, calvin.johnson@nxp.com,
 stuyoder@gmail.com, nleeder@codeaurora.org, ioana.ciornei@nxp.com,
 cristian.sovaiala@nxp.com, guohanjun@huawei.com, will@kernel.org,
 jon@solid-run.com, linux@armlinux.org.uk, linux-acpi@vger.kernel.org,
 lenb@kernel.org, jason@lakedaemon.net, Andy.Wang@arm.com, V.Sethi@nxp.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 laurentiu.tudor@nxp.com, Paul.Yang@arm.com, netdev@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, sudeep.holla@arm.com,
 robin.murphy@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075427_079422_FB6FF615 
X-CRM114-Status: GOOD (  33.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 jon@solid-run.com, Russell King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, netdev@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-14 15:05, Pankaj Bansal wrote:
>> -----Original Message-----
>> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>> Sent: Friday, January 31, 2020 5:32 PM
>> To: Marc Zyngier <maz@kernel.org>
>> Cc: Makarand Pawagi <makarand.pawagi@nxp.com>; Calvin Johnson
>> <calvin.johnson@nxp.com>; stuyoder@gmail.com; nleeder@codeaurora.org;
>> Ioana Ciornei <ioana.ciornei@nxp.com>; Cristi Sovaiala
>> <cristian.sovaiala@nxp.com>; Hanjun Guo <guohanjun@huawei.com>; Will
>> Deacon <will@kernel.org>; Lorenzo Pieralisi 
>> <lorenzo.pieralisi@arm.com>;
>> Pankaj Bansal <pankaj.bansal@nxp.com>; jon@solid-run.com; Russell King
>> <linux@armlinux.org.uk>; ACPI Devel Maling List 
>> <linux-acpi@vger.kernel.org>;
>> Len Brown <lenb@kernel.org>; Jason Cooper <jason@lakedaemon.net>; Andy
>> Wang <Andy.Wang@arm.com>; Varun Sethi <V.Sethi@nxp.com>; Thomas
>> Gleixner <tglx@linutronix.de>; linux-arm-kernel <linux-arm-
>> kernel@lists.infradead.org>; Laurentiu Tudor 
>> <laurentiu.tudor@nxp.com>; Paul
>> Yang <Paul.Yang@arm.com>; <netdev@vger.kernel.org>
>> <netdev@vger.kernel.org>; Rafael J. Wysocki <rjw@rjwysocki.net>; Linux 
>> Kernel
>> Mailing List <linux-kernel@vger.kernel.org>; Shameerali Kolothum Thodi
>> <shameerali.kolothum.thodi@huawei.com>; Sudeep Holla
>> <sudeep.holla@arm.com>; Robin Murphy <robin.murphy@arm.com>
>> Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for 
>> fsl-mc
>> 
>> On Fri, 31 Jan 2020 at 12:06, Marc Zyngier <maz@kernel.org> wrote:
>> >
>> > On 2020-01-31 10:35, Makarand Pawagi wrote:
>> > >> -----Original Message-----
>> > >> From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>> > >> Sent: Tuesday, January 28, 2020 4:39 PM
>> > >> To: Makarand Pawagi <makarand.pawagi@nxp.com>
>> > >> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org;
>> > >> linux-arm- kernel@lists.infradead.org; linux-acpi@vger.kernel.org;
>> > >> linux@armlinux.org.uk; jon@solid-run.com; Cristi Sovaiala
>> > >> <cristian.sovaiala@nxp.com>; Laurentiu Tudor
>> > >> <laurentiu.tudor@nxp.com>; Ioana Ciornei <ioana.ciornei@nxp.com>;
>> > >> Varun Sethi <V.Sethi@nxp.com>; Calvin Johnson
>> > >> <calvin.johnson@nxp.com>; Pankaj Bansal <pankaj.bansal@nxp.com>;
>> > >> guohanjun@huawei.com; sudeep.holla@arm.com; rjw@rjwysocki.net;
>> > >> lenb@kernel.org; stuyoder@gmail.com; tglx@linutronix.de;
>> > >> jason@lakedaemon.net; maz@kernel.org;
>> > >> shameerali.kolothum.thodi@huawei.com; will@kernel.org;
>> > >> robin.murphy@arm.com; nleeder@codeaurora.org
>> > >> Subject: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
>> > >>
>> > >> Caution: EXT Email
>> > >>
>> > >> On Tue, Jan 28, 2020 at 01:38:45PM +0530, Makarand Pawagi wrote:
>> > >> > ACPI support is added in the fsl-mc driver. Driver will parse MC
>> > >> > DSDT table to extract memory and other resorces.
>> > >> >
>> > >> > Interrupt (GIC ITS) information will be extracted from MADT table
>> > >> > by drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c.
>> > >> >
>> > >> > IORT table will be parsed to configure DMA.
>> > >> >
>> > >> > Signed-off-by: Makarand Pawagi <makarand.pawagi@nxp.com>
>> > >> > ---
>> > >> >  drivers/acpi/arm64/iort.c                   | 53 +++++++++++++++++++++
>> > >> >  drivers/bus/fsl-mc/dprc-driver.c            |  3 +-
>> > >> >  drivers/bus/fsl-mc/fsl-mc-bus.c             | 48 +++++++++++++------
>> > >> >  drivers/bus/fsl-mc/fsl-mc-msi.c             | 10 +++-
>> > >> >  drivers/bus/fsl-mc/fsl-mc-private.h         |  4 +-
>> > >> >  drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c | 71
>> > >> ++++++++++++++++++++++++++++-
>> > >> >  include/linux/acpi_iort.h                   |  5 ++
>> > >> >  7 files changed, 174 insertions(+), 20 deletions(-)
>> > >> >
>> > >> > diff --git a/drivers/acpi/arm64/iort.c
>> > >> > b/drivers/acpi/arm64/iort.c index 33f7198..beb9cd5 100644
>> > >> > --- a/drivers/acpi/arm64/iort.c
>> > >> > +++ b/drivers/acpi/arm64/iort.c
>> > >> > @@ -15,6 +15,7 @@
>> > >> >  #include <linux/kernel.h>
>> > >> >  #include <linux/list.h>
>> > >> >  #include <linux/pci.h>
>> > >> > +#include <linux/fsl/mc.h>
>> > >> >  #include <linux/platform_device.h>  #include <linux/slab.h>
>> > >> >
>> > >> > @@ -622,6 +623,29 @@ static int iort_dev_find_its_id(struct
>> > >> > device *dev, u32 req_id,  }
>> > >> >
>> > >> >  /**
>> > >> > + * iort_get_fsl_mc_device_domain() - Find MSI domain related to
>> > >> > +a device
>> > >> > + * @dev: The device.
>> > >> > + * @mc_icid: ICID for the fsl_mc device.
>> > >> > + *
>> > >> > + * Returns: the MSI domain for this device, NULL otherwise  */
>> > >> > +struct irq_domain *iort_get_fsl_mc_device_domain(struct device *dev,
>> > >> > +                                                     u32 mc_icid) {
>> > >> > +     struct fwnode_handle *handle;
>> > >> > +     int its_id;
>> > >> > +
>> > >> > +     if (iort_dev_find_its_id(dev, mc_icid, 0, &its_id))
>> > >> > +             return NULL;
>> > >> > +
>> > >> > +     handle = iort_find_domain_token(its_id);
>> > >> > +     if (!handle)
>> > >> > +             return NULL;
>> > >> > +
>> > >> > +     return irq_find_matching_fwnode(handle,
>> > >> > +DOMAIN_BUS_FSL_MC_MSI); }
>> > >>
>> > >> NAK
>> > >>
>> > >> I am not willing to take platform specific code in the generic IORT
>> > >> layer.
>> > >>
>> > >> ACPI on ARM64 works on platforms that comply with SBSA/SBBR
>> > >> guidelines:
>> > >>
>> > >>
>> > >> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fd
>> > >> eveloper.arm.com%2Farchitectures%2Fplatform-design%2Fserver-systems
>> > >>
>> &amp;data=02%7C01%7Cpankaj.bansal%40nxp.com%7Cdb56d889d85646277ee
>> 30
>> > >>
>> 8d7a64562fa%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C6371606
>> 892
>> > >>
>> 50769265&amp;sdata=C7nCty8%2BVeuq6VhcEUXCwiAinN01rCfe12NRVnXJCIY%
>> 3D
>> > >> &amp;reserved=0
>> > >>
>> > >> Deviating from those requires butchering ACPI specifications (ie
>> > >> IORT) and related kernel code which goes totally against what ACPI
>> > >> is meant for on ARM64 systems, so there is no upstream pathway for
>> > >> this code I am afraid.
>> > >>
>> > > Reason of adding this platform specific function in the generic IORT
>> > > layer is That iort_get_device_domain() only deals with PCI bus
>> > > (DOMAIN_BUS_PCI_MSI).
>> > >
>> > > fsl-mc objects when probed, need to find irq_domain which is
>> > > associated with the fsl-mc bus (DOMAIN_BUS_FSL_MC_MSI). It will not
>> > > be possible to do that if we do not add this function because there
>> > > are no other suitable APIs exported by IORT layer to do the job.
>> >
>> > I think we all understood the patch. What both Lorenzo and myself are
>> > saying is that we do not want non-PCI support in IORT.
>> >
>> 
>> IORT supports platform devices (aka named components) as well, and
>> there is some support for platform MSIs in the GIC layer.
>> 
>> So it may be possible to hide your exotic bus from the OS entirely,
>> and make the firmware instantiate a DSDT with device objects and
>> associated IORT nodes that describe whatever lives on that bus as
>> named components.
>> 
>> That way, you will not have to change the OS at all, so your hardware
>> will not only be supported in linux v5.7+, it will also be supported
>> by OSes that commercial distro vendors are shipping today. *That* is
>> the whole point of using ACPI.
>> 
>> If you are going to bother and modify the OS, you lose this advantage,
>> and ACPI gives you no benefit over DT at all.
> 
> I am replying to old message in this conversation, because the
> discussion got sidetracked from IORT
> table to SFP/QSFP/devlink stuff from this point onwards, which is not
> related to IORT.
> I will only focus on representing the MC device in IORT and using the
> same in linux.
> As Ard said:
> "IORT supports platform devices (aka named components) as well, and
> there is some support for platform MSIs in the GIC layer."
> 
> We can represent MC bus as named component in IORT table and use 
> platform MSIs.
> The only caveat is that with current implementation of platform MSIs,
> the Input id of a device is not considered.
> https://elixir.bootlin.com/linux/latest/source/drivers/irqchip/irq-gic-v3-its-platform-msi.c#L50
> https://elixir.bootlin.com/linux/latest/source/drivers/acpi/arm64/iort.c#L464

I don't understand what you mean. Platform MSI using IORT uses the DevID
of end-points. How could the ITS could work without specifying a DevID?
See for example how the SMMUv3 driver uses platform MSI.

> While, IORT spec doesn't specify any such limitation.
> 
> we can easily update iort.c to remove this limitation.
> But, I am not sure how the input id would be passed from platform MSI
> GIC layer to IORT.
> Most obviously, the input id should be supplied by dev itself.

Why should the device know about its own ID? That's a bus/interconnect
thing. And nothing should be passed *to* IORT. IORT is the source.

> Any thoughts?

I think that in this thread, we have been fairly explicit about what our
train of though was.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
