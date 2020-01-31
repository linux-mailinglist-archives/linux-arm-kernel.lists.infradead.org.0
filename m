Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD8914ED5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 14:30:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYJv/f1MIfeNZu3e8E2gA1JEKfh+kRs2ah7Qg44pD+8=; b=aP6eTehtxy8cWd
	INWzqaWjLwLzCrtrjrnlWcL+LHkw9Oiwm2ikS50NGne9jW2Hrs1TCbVdYvgBUbbaeRo2vSA2SS1Aw
	abIS5le2AwTdumdLAgwHLwEVTZjFEh27draI6LonRNNhJoZ0G2CrmTp9dnyNjPi+VY++a1nrMGBwd
	R3gqQcz45LmGmXJ1zS8Cv79c6WBnFO3IF7v3pQL8qdfYLduZhVicXw/7UDXEwZXYnAkWwn8dWnhqx
	0Q64a01dtm1ZRy+jVOpaWq15K7Ea4y29mUWv6/tJEA868s/Qw47Moh0gmgZLHT76Wc+EDvi8cZWdh
	/VK37s5rJLTApAsFukog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWNF-0003nb-QZ; Fri, 31 Jan 2020 13:30:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWMt-0003ky-76
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 13:29:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id a5so7895469wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 05:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IFlppqa/vDr8qFHuPjK7l/2F3tO+ut4DspQuyUSNK78=;
 b=FuP9g1XFVwqJLo9pDKa68UjpcKz/JQvX/KOpW+fSV5n/0IjtaC9fZgTf/phhjbDYa+
 rvkN2yH5bZpszPiBVINRB0eEoc98bQQ/Dnr0+JCCIEsQCe/AXQdMn3gV6s+VDBCq8CLe
 RxAEMTjyZKzTDUQzTiCItJEBdksG+dvqk8vw2HsjspmcUBIwqrM7HS4wUqko6uBgPuXd
 LwmVLzoMqAPuESOyIDBOKs3C1zSefQhrRRG57oY87TOmoqA+D5mZTZMgXSa4tCDS3iuP
 Q/S+xTB1z2t7CSke4LdoV9+eeSkpOEH5SoC7S6qw+pkaUwyS82F5falDHKKoTTeM46g1
 aw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IFlppqa/vDr8qFHuPjK7l/2F3tO+ut4DspQuyUSNK78=;
 b=YcXwVCvmw+qNGyfY0MvPjRl/adaVSXM4O0xQ30bZ3+LCkY1IUMGgfc8uw1X5frdPxv
 30UeOsLsGqBMC9FZXoV01Sc+ZO16RhiRIe/bYq99HtYbxnVHbDRjUAd9T4vqWjqQZn5S
 ZFQdoEKb/J6661NWy1TvDgCCvktvk6/Em0A+6SODi1sQdTMMvXPmGQbWJ3S8Mbd3R4l4
 1jXgto6U0pyjWmls3XZKNBZcYlzUIQvBR6VmhDSyQJkRm/OI4/IkSlceeX5+sVYxzSet
 DiYJ1KZRiKFf15q6nlEPIMNZfLTFinsokS+GvwL12YC4N9PykwgcC2d6K1HcdoXhqBnO
 sYSQ==
X-Gm-Message-State: APjAAAUcN0F6JxdQSxCHl2cUBCYz+B/x4JS3HNOMgvF1rms6qddEGyET
 Xblyi2+vPqxiXyqb3dYNfcCMWPrwawNgQAE17OKITg==
X-Google-Smtp-Source: APXvYqxrvC47l8vX88YxXmqnxZytje6gVxHrU4qCe76TaKKL0nb9k15Lx4lwGTfaxnoTRqk84OWma0vMJy9rd5fF0Ho=
X-Received: by 2002:a7b:c4cc:: with SMTP id g12mr13058114wmk.68.1580477391554; 
 Fri, 31 Jan 2020 05:29:51 -0800 (PST)
MIME-Version: 1.0
References: <1580198925-50411-1-git-send-email-makarand.pawagi@nxp.com>
 <20200128110916.GA491@e121166-lin.cambridge.arm.com>
 <DB8PR04MB7164DDF48480956F05886DABEB070@DB8PR04MB7164.eurprd04.prod.outlook.com>
 <12531d6c569c7e14dffe8e288d9f4a0b@kernel.org>
 <CAKv+Gu8uaJBmy5wDgk=uzcmC4vkEyOjW=JRvhpjfsdh-HcOCLg@mail.gmail.com>
 <CABdtJHsu9R9g4mn25=9EW3jkCMhnej_rfkiRzo3OCX4cv4hpUQ@mail.gmail.com>
 <0680c2ce-cff0-d163-6bd9-1eb39be06eee@arm.com>
 <CABdtJHuLZeNd9bQZ-cmQi00WnObYPvM=BdWNw4EMpOFHjRd70w@mail.gmail.com>
In-Reply-To: <CABdtJHuLZeNd9bQZ-cmQi00WnObYPvM=BdWNw4EMpOFHjRd70w@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 31 Jan 2020 14:29:38 +0100
Message-ID: <CAKv+Gu-R-G_zzhP=zNtsyaaP8EORTUjgxDp=TtL7Cd+wPW-W4A@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
To: Jon Nettleton <jon@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_052955_292901_160A7B5E 
X-CRM114-Status: GOOD (  40.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, 31 Jan 2020 at 14:12, Jon Nettleton <jon@solid-run.com> wrote:
>
> On Fri, Jan 31, 2020 at 1:48 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2020-01-31 12:28 pm, Jon Nettleton wrote:
> > > On Fri, Jan 31, 2020 at 1:02 PM Ard Biesheuvel
> > > <ard.biesheuvel@linaro.org> wrote:
> > >>
> > >> On Fri, 31 Jan 2020 at 12:06, Marc Zyngier <maz@kernel.org> wrote:
> > >>>
> > >>> On 2020-01-31 10:35, Makarand Pawagi wrote:
> > >>>>> -----Original Message-----
> > >>>>> From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > >>>>> Sent: Tuesday, January 28, 2020 4:39 PM
> > >>>>> To: Makarand Pawagi <makarand.pawagi@nxp.com>
> > >>>>> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; linux-arm-
> > >>>>> kernel@lists.infradead.org; linux-acpi@vger.kernel.org;
> > >>>>> linux@armlinux.org.uk;
> > >>>>> jon@solid-run.com; Cristi Sovaiala <cristian.sovaiala@nxp.com>;
> > >>>>> Laurentiu
> > >>>>> Tudor <laurentiu.tudor@nxp.com>; Ioana Ciornei
> > >>>>> <ioana.ciornei@nxp.com>;
> > >>>>> Varun Sethi <V.Sethi@nxp.com>; Calvin Johnson
> > >>>>> <calvin.johnson@nxp.com>;
> > >>>>> Pankaj Bansal <pankaj.bansal@nxp.com>; guohanjun@huawei.com;
> > >>>>> sudeep.holla@arm.com; rjw@rjwysocki.net; lenb@kernel.org;
> > >>>>> stuyoder@gmail.com; tglx@linutronix.de; jason@lakedaemon.net;
> > >>>>> maz@kernel.org; shameerali.kolothum.thodi@huawei.com; will@kernel.org;
> > >>>>> robin.murphy@arm.com; nleeder@codeaurora.org
> > >>>>> Subject: [EXT] Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
> > >>>>>
> > >>>>> Caution: EXT Email
> > >>>>>
> > >>>>> On Tue, Jan 28, 2020 at 01:38:45PM +0530, Makarand Pawagi wrote:
> > >>>>>> ACPI support is added in the fsl-mc driver. Driver will parse MC DSDT
> > >>>>>> table to extract memory and other resorces.
> > >>>>>>
> > >>>>>> Interrupt (GIC ITS) information will be extracted from MADT table by
> > >>>>>> drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c.
> > >>>>>>
> > >>>>>> IORT table will be parsed to configure DMA.
> > >>>>>>
> > >>>>>> Signed-off-by: Makarand Pawagi <makarand.pawagi@nxp.com>
> > >>>>>> ---
> > >>>>>>   drivers/acpi/arm64/iort.c                   | 53 +++++++++++++++++++++
> > >>>>>>   drivers/bus/fsl-mc/dprc-driver.c            |  3 +-
> > >>>>>>   drivers/bus/fsl-mc/fsl-mc-bus.c             | 48 +++++++++++++------
> > >>>>>>   drivers/bus/fsl-mc/fsl-mc-msi.c             | 10 +++-
> > >>>>>>   drivers/bus/fsl-mc/fsl-mc-private.h         |  4 +-
> > >>>>>>   drivers/irqchip/irq-gic-v3-its-fsl-mc-msi.c | 71
> > >>>>> ++++++++++++++++++++++++++++-
> > >>>>>>   include/linux/acpi_iort.h                   |  5 ++
> > >>>>>>   7 files changed, 174 insertions(+), 20 deletions(-)
> > >>>>>>
> > >>>>>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> > >>>>>> index 33f7198..beb9cd5 100644
> > >>>>>> --- a/drivers/acpi/arm64/iort.c
> > >>>>>> +++ b/drivers/acpi/arm64/iort.c
> > >>>>>> @@ -15,6 +15,7 @@
> > >>>>>>   #include <linux/kernel.h>
> > >>>>>>   #include <linux/list.h>
> > >>>>>>   #include <linux/pci.h>
> > >>>>>> +#include <linux/fsl/mc.h>
> > >>>>>>   #include <linux/platform_device.h>
> > >>>>>>   #include <linux/slab.h>
> > >>>>>>
> > >>>>>> @@ -622,6 +623,29 @@ static int iort_dev_find_its_id(struct device
> > >>>>>> *dev, u32 req_id,  }
> > >>>>>>
> > >>>>>>   /**
> > >>>>>> + * iort_get_fsl_mc_device_domain() - Find MSI domain related to a
> > >>>>>> +device
> > >>>>>> + * @dev: The device.
> > >>>>>> + * @mc_icid: ICID for the fsl_mc device.
> > >>>>>> + *
> > >>>>>> + * Returns: the MSI domain for this device, NULL otherwise  */ struct
> > >>>>>> +irq_domain *iort_get_fsl_mc_device_domain(struct device *dev,
> > >>>>>> +                                                     u32 mc_icid) {
> > >>>>>> +     struct fwnode_handle *handle;
> > >>>>>> +     int its_id;
> > >>>>>> +
> > >>>>>> +     if (iort_dev_find_its_id(dev, mc_icid, 0, &its_id))
> > >>>>>> +             return NULL;
> > >>>>>> +
> > >>>>>> +     handle = iort_find_domain_token(its_id);
> > >>>>>> +     if (!handle)
> > >>>>>> +             return NULL;
> > >>>>>> +
> > >>>>>> +     return irq_find_matching_fwnode(handle, DOMAIN_BUS_FSL_MC_MSI);
> > >>>>>> +}
> > >>>>>
> > >>>>> NAK
> > >>>>>
> > >>>>> I am not willing to take platform specific code in the generic IORT
> > >>>>> layer.
> > >>>>>
> > >>>>> ACPI on ARM64 works on platforms that comply with SBSA/SBBR
> > >>>>> guidelines:
> > >>>>>
> > >>>>>
> > >>>>> https://developer.arm.com/architectures/platform-design/server-systems
> > >>>>>
> > >>>>> Deviating from those requires butchering ACPI specifications (ie IORT)
> > >>>>> and
> > >>>>> related kernel code which goes totally against what ACPI is meant for
> > >>>>> on ARM64
> > >>>>> systems, so there is no upstream pathway for this code I am afraid.
> > >>>>>
> > >>>> Reason of adding this platform specific function in the generic IORT
> > >>>> layer is
> > >>>> That iort_get_device_domain() only deals with PCI bus
> > >>>> (DOMAIN_BUS_PCI_MSI).
> > >>>>
> > >>>> fsl-mc objects when probed, need to find irq_domain which is associated
> > >>>> with
> > >>>> the fsl-mc bus (DOMAIN_BUS_FSL_MC_MSI). It will not be possible to do
> > >>>> that
> > >>>> if we do not add this function because there are no other suitable APIs
> > >>>> exported
> > >>>> by IORT layer to do the job.
> > >>>
> > >>> I think we all understood the patch. What both Lorenzo and myself are
> > >>> saying is
> > >>> that we do not want non-PCI support in IORT.
> > >>>
> > >>
> > >> IORT supports platform devices (aka named components) as well, and
> > >> there is some support for platform MSIs in the GIC layer.
> > >>
> > >> So it may be possible to hide your exotic bus from the OS entirely,
> > >> and make the firmware instantiate a DSDT with device objects and
> > >> associated IORT nodes that describe whatever lives on that bus as
> > >> named components.
> > >>
> > >> That way, you will not have to change the OS at all, so your hardware
> > >> will not only be supported in linux v5.7+, it will also be supported
> > >> by OSes that commercial distro vendors are shipping today. *That* is
> > >> the whole point of using ACPI.
> > >>
> > >> If you are going to bother and modify the OS, you lose this advantage,
> > >> and ACPI gives you no benefit over DT at all.
> > >
> > > You beat me to it, but thanks for the clarification Ard.  No where in
> > > the SBSA spec that I have read does it state that only PCIe devices
> > > are supported by the SMMU.  It uses PCIe devices as an example, but
> > > the SMMU section is very generic in term and only says "devices".
> > >
> > > I feel the SBSA omission of SerDes best practices is an oversight in
> > > the standard and something that probably needs to be revisited.
> > > Forcing high speed networking interfaces to be hung off a bus just for
> > > the sake of having a "standard" PCIe interface seems like a step
> > > backward in this regard.  I would much rather have the Spec include a
> > > common standard that could be exposed in a consistent manner.  But
> > > this is a conversation for a different place.
> >
> > Just to clarify further, it's not about serdes or high-speed networking
> > per se - describing a fixed-function network adapter as a named
> > component is entirely within scope. The issue is when the hardware is
> > merely a pool of accelerator components that can be dynamically
> > configured at runtime into something that looks like one or more
> > 'virtual' network adapters - there is no standard interface for *that*
> > for SBSA to consider.
> >
> > Robin.
> >
> > >
> > > I will work with NXP and find a better way to implement this.
> > >
> > > -Jon
> > >
>
> But by design SFP, SFP+, and QSFP cages are not fixed function network
> adapters.  They are physical and logical devices that can adapt to
> what is plugged into them.  How the devices are exposed should be
> irrelevant to this conversation it is about the underlying
> connectivity.  For instance if this were an accelerator block on a
> PCIe card then we wouldn't be having this discussion, even if it did
> run a firmware and have a third party driver that exposed virtual
> network interfaces.
>

Again, on an ACPI system, it is the firmware's job to abstract away
from these platform details. Firmware can perform logical hotplug and
hot unplug of virtual devices, and hide the discovery and
initalization of those pluggable gadgets from the OS. If the
configuration changes, one virtual device appears and another one
disappears, and the firmware can signal such a change to the OS.

What is needed here is for people to really buy into the ACPI
paradigm, rather than treat it as MS flavored DT, where every little
soc detail is decribed to, and therefore managed by the OS. As we
know, there are substantial scalability issues around DT, which is why
ACPI aims to provide a higher level of abstraction, with more runtime
firmware to iron out the wrinkles.

In general, simply inventing ACPI _HIDs for every DT node that
describes a given platform, and adding ACPI probe support to the
existing drivers literally gives you the worst of both worlds, and in
this case [where we are getting into interrupt and DMA routing], it is
not even feasible to begin with.

So I'd suggest approaching this from the opposite direction: don't
look at the existing DT description and existing drivers, but look at
what ACPI supports today, and how the hardware can be made to look
like that through the use of firmware magic.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
