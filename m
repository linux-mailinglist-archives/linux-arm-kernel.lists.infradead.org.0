Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A6B14EC7F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 13:29:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/G0LtrxDZiRB86Ua3soIGz3F3QVFft2G96WcjZlm/WI=; b=YyqzrEcN/IGBjD
	SmdHmkv0h/lDBbM9BGec9xESs7BJvg8JyosBMB5JvUY4XsPCVlUIbxDFB8H4x41sKXGkJUtFIzcyV
	r33bTQ1ZxrQT457dV1z2UjEu1d9XdZmP6ZORpRC8ZLUkwBmOFtcz7ci+8mgBJIKBIhLQOOMlLTxQ/
	Uk5Cosf+XOkjUUOUEIbXr/ERbYZLjl7aDg58iI3SBtMIDoq9v00IogcX1DCetpqIAxQ4OBKUJDlJH
	lzzJR2QYDG7HqTdyujjXGZTxjG8txwNPT/MjXe5CaiwJuuJj8UTri0HAO8qdUhc+8AnpU3tHO8D5C
	e0H8fl8RQ/BFuLxaO/MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixVQG-0007gP-2A; Fri, 31 Jan 2020 12:29:20 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixVQ4-0007fi-Td
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 12:29:10 +0000
Received: by mail-yw1-xc41.google.com with SMTP id 10so4468965ywv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 04:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solid-run-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xxrGkQA52/NJfqxe3kfKwhan3TmXw33/Mb0FwFqbql4=;
 b=BoYR89EZk/UoRGsNfbopZM2RldayH6BpcXVQA/+J9Z9FwOpXt9o4GJeQJIfWyTLvyA
 +1m8+2cMVWrg2IPLuvHOSFTrq1hkFTYkENvXdQiVdQdQ3OLcBGk1UpByIZaqyRdp84o5
 SjCal57HWIxK6l6blOrSCEDgC7k93StYqejQd18Khd9dRdIKUI5NOw9a2DmjyOvtxOYJ
 Wq7/5dU4zmzMjkFFvBfVGqfyLr2+u3VHadTZofYmTICRX9umSRbgeCbBBiUulYF0oAD0
 CT4AUqwTgyPtIzNFIz8nEyoax1N6p+fweQ7s4TF+NrudEIJFS+eaOhCl2K8YNfnYYaB3
 gJtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xxrGkQA52/NJfqxe3kfKwhan3TmXw33/Mb0FwFqbql4=;
 b=QVn5wQSirBRR7ZMHdpBa8uY3tK1Ea8YEkS4UdJ/dZtneO6EUiEFGxUH3j56XpwOvhy
 R1bg7bxxhU063uXj67UjlXTqhdZJcOgUUF8D1ugibzFnSvBKtnxN0pn/6iDJqNQf71i1
 7sOYGiR7L/Z7/vUYhRnSqWmJDdm+/k3xelkDb9YpPU9Q3DqrxuhJ30CUhaTtdz/2n9gX
 gAagpUw6tfQ7g0ro0FhwslCjJZGUREFCWGvWZyG82y58xEYvgZEhGliI2sGa0wLZzm6n
 5GZQB+w03E8VjttiC9gY7iV1rwdpS+wKw97mvBC0EnkP10Z9Tq2LR4DrWx/lPvbPHA/H
 fAcA==
X-Gm-Message-State: APjAAAXTpcC+xcHF7EdZYPiiXwU/n/BK1piIKM+hts+m8mApA7lysQjr
 4wkoZgMYpAzARSGWZZgbtY/W5g1y5ZhMwe17L7LV1Q==
X-Google-Smtp-Source: APXvYqxzimUmH80s/yDnckKWKhHla3StDkh/GW6HZBlYZHAG5vkheOko5Lv3abngM1TMARttFFHpz3mabve9NUpLPVo=
X-Received: by 2002:a25:ab65:: with SMTP id u92mr8720063ybi.472.1580473746644; 
 Fri, 31 Jan 2020 04:29:06 -0800 (PST)
MIME-Version: 1.0
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
In-Reply-To: <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
From: Jon Nettleton <jon@solid-run.com>
Date: Fri, 31 Jan 2020 13:28:30 +0100
Message-ID: <CABdtJHsu9R9g4mn25=9EW3jkCMhnej_rfkiRzo3OCX4cv4hpUQ@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_042909_100055_8E767313 
X-CRM114-Status: GOOD (  33.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Calvin Johnson <calvin.johnson@nxp.com>, stuyoder@gmail.com,
 nleeder@codeaurora.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Hanjun Guo <guohanjun@huawei.com>,
 Will Deacon <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Marc Zyngier <maz@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King <linux@armlinux.org.uk>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Len Brown <lenb@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 Andy Wang <Andy.Wang@arm.com>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Varun Sethi <V.Sethi@nxp.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, Paul Yang <Paul.Yang@arm.com>,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 1:02 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Fri, 31 Jan 2020 at 12:06, Marc Zyngier <maz@kernel.org> wrote:
> >
> > On 2020-01-31 10:35, Makarand Pawagi wrote:
> > >> -----Original Message-----
> > >> From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > >> Sent: Tuesday, January 28, 2020 4:39 PM
> > >> To: Makarand Pawagi <makarand.pawagi@nxp.com>
> > >> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> > >> kernel@lists.infradead.org; linux-acpi@vger.kernel.org;
> > >> linux@armlinux.org.uk;
> > >> jon@solid-run.com; Cristi Sovaiala <cristian.sovaiala@nxp.com>;
> > >> Laurentiu
> > >> Tudor <laurentiu.tudor@nxp.com>; Ioana Ciornei
> > >> <ioana.ciornei@nxp.com>;
> > >> Varun Sethi <V.Sethi@nxp.com>; Calvin Johnson
> > >> <calvin.johnson@nxp.com>;
> > >> Pankaj Bansal <pankaj.bansal@nxp.com>; guohanjun@huawei.com;
> > >> sudeep.holla@arm.com; rjw@rjwysocki.net; lenb@kernel.org;
> > >> stuyoder@gmail.com; tglx@linutronix.de; jason@lakedaemon.net;
> > >> maz@kernel.org; shameerali.kolothum.thodi@huawei.com; will@kernel.org;
> > >> robin.murphy@arm.com; nleeder@codeaurora.org
> > >> Subject: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
> > >>
> > >> Caution: EXT Email
> > >>
> > >> On Tue, Jan 28, 2020 at 01:38:45PM +0530, Makarand Pawagi wrote:
> > >> > ACPI support is added in the fsl-mc driver. Driver will parse MC DSDT
> > >> > table to extract memory and other resorces.
> > >> >
> > >> > Interrupt (GIC ITS) information will be extracted from MADT table by
> > >> > drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c.
> > >> >
> > >> > IORT table will be parsed to configure DMA.
> > >> >
> > >> > Signed-off-by: Makarand Pawagi <makarand.pawagi@nxp.com>
> > >> > ---
> > >> >  drivers/acpi/arm64/iort.c                   | 53 +++++++++++++++++++++
> > >> >  drivers/bus/fsl-mc/dprc-driver.c            |  3 +-
> > >> >  drivers/bus/fsl-mc/fsl-mc-bus.c             | 48 +++++++++++++------
> > >> >  drivers/bus/fsl-mc/fsl-mc-msi.c             | 10 +++-
> > >> >  drivers/bus/fsl-mc/fsl-mc-private.h         |  4 +-
> > >> >  drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c | 71
> > >> ++++++++++++++++++++++++++++-
> > >> >  include/linux/acpi_iort.h                   |  5 ++
> > >> >  7 files changed, 174 insertions(+), 20 deletions(-)
> > >> >
> > >> > diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> > >> > index 33f7198..beb9cd5 100644
> > >> > --- a/drivers/acpi/arm64/iort.c
> > >> > +++ b/drivers/acpi/arm64/iort.c
> > >> > @@ -15,6 +15,7 @@
> > >> >  #include <linux/kernel.h>
> > >> >  #include <linux/list.h>
> > >> >  #include <linux/pci.h>
> > >> > +#include <linux/fsl/mc.h>
> > >> >  #include <linux/platform_device.h>
> > >> >  #include <linux/slab.h>
> > >> >
> > >> > @@ -622,6 +623,29 @@ static int iort_dev_find_its_id(struct device
> > >> > *dev, u32 req_id,  }
> > >> >
> > >> >  /**
> > >> > + * iort_get_fsl_mc_device_domain() - Find MSI domain related to a
> > >> > +device
> > >> > + * @dev: The device.
> > >> > + * @mc_icid: ICID for the fsl_mc device.
> > >> > + *
> > >> > + * Returns: the MSI domain for this device, NULL otherwise  */ struct
> > >> > +irq_domain *iort_get_fsl_mc_device_domain(struct device *dev,
> > >> > +                                                     u32 mc_icid) {
> > >> > +     struct fwnode_handle *handle;
> > >> > +     int its_id;
> > >> > +
> > >> > +     if (iort_dev_find_its_id(dev, mc_icid, 0, &its_id))
> > >> > +             return NULL;
> > >> > +
> > >> > +     handle = iort_find_domain_token(its_id);
> > >> > +     if (!handle)
> > >> > +             return NULL;
> > >> > +
> > >> > +     return irq_find_matching_fwnode(handle, DOMAIN_BUS_FSL_MC_MSI);
> > >> > +}
> > >>
> > >> NAK
> > >>
> > >> I am not willing to take platform specific code in the generic IORT
> > >> layer.
> > >>
> > >> ACPI on ARM64 works on platforms that comply with SBSA/SBBR
> > >> guidelines:
> > >>
> > >>
> > >> https://developer.arm.com/architectures/platform-design/server-systems
> > >>
> > >> Deviating from those requires butchering ACPI specifications (ie IORT)
> > >> and
> > >> related kernel code which goes totally against what ACPI is meant for
> > >> on ARM64
> > >> systems, so there is no upstream pathway for this code I am afraid.
> > >>
> > > Reason of adding this platform specific function in the generic IORT
> > > layer is
> > > That iort_get_device_domain() only deals with PCI bus
> > > (DOMAIN_BUS_PCI_MSI).
> > >
> > > fsl-mc objects when probed, need to find irq_domain which is associated
> > > with
> > > the fsl-mc bus (DOMAIN_BUS_FSL_MC_MSI). It will not be possible to do
> > > that
> > > if we do not add this function because there are no other suitable APIs
> > > exported
> > > by IORT layer to do the job.
> >
> > I think we all understood the patch. What both Lorenzo and myself are
> > saying is
> > that we do not want non-PCI support in IORT.
> >
>
> IORT supports platform devices (aka named components) as well, and
> there is some support for platform MSIs in the GIC layer.
>
> So it may be possible to hide your exotic bus from the OS entirely,
> and make the firmware instantiate a DSDT with device objects and
> associated IORT nodes that describe whatever lives on that bus as
> named components.
>
> That way, you will not have to change the OS at all, so your hardware
> will not only be supported in linux v5.7+, it will also be supported
> by OSes that commercial distro vendors are shipping today. *That* is
> the whole point of using ACPI.
>
> If you are going to bother and modify the OS, you lose this advantage,
> and ACPI gives you no benefit over DT at all.

You beat me to it, but thanks for the clarification Ard.  No where in
the SBSA spec that I have read does it state that only PCIe devices
are supported by the SMMU.  It uses PCIe devices as an example, but
the SMMU section is very generic in term and only says "devices".

I feel the SBSA omission of SerDes best practices is an oversight in
the standard and something that probably needs to be revisited.
Forcing high speed networking interfaces to be hung off a bus just for
the sake of having a "standard" PCIe interface seems like a step
backward in this regard.  I would much rather have the Spec include a
common standard that could be exposed in a consistent manner.  But
this is a conversation for a different place.

I will work with NXP and find a better way to implement this.

-Jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
