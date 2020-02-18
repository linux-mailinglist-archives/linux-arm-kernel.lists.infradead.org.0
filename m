Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69ED162926
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 16:15:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3/WdTcbPvHf9SoWAPOcSP3SfhghbdTaWR+zUHaPnqGg=; b=aVw2nMFtd0Ct8vsmBDkg8NbaX
	xysEx+HvWLTPGCREBKN71IRlL5RK355yjSm2Kdb4the8OhI4e8qJXey02oefWkSTPlug3U5XiGokk
	hN66YfE3K/w4vdpWUQn4bBPUC/b+g/ZECMqOK9LLmatywZPBn104h54qWKjd9AorM4pOStd/CF+3t
	3SLd+9NNU5Hf1li2OSmvqXIKy9MiUE7tFlbXZYoO4+271JsWdw2WVFoquvC0BRCmE1sR0dCIvauWl
	cWTF7e/sE6bFQIN0GDGAmCbDgaIPC2Qty26GkoKL69nOxD/CO8TlbrxxaW0gS7C3jMF0eLnsZRR1V
	bjqivt22w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j44b6-0005DD-V4; Tue, 18 Feb 2020 15:15:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44as-00054g-OC
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 15:15:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 127B830E;
 Tue, 18 Feb 2020 07:15:26 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8771B3F703;
 Tue, 18 Feb 2020 07:15:22 -0800 (PST)
Subject: Re: [PATCH] bus: fsl-mc: Add ACPI support for fsl-mc
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Pankaj Bansal (OSS)" <pankaj.bansal@oss.nxp.com>
References: <VI1PR04MB5135D7D8597D33DB76DA05BDB0110@VI1PR04MB5135.eurprd04.prod.outlook.com>
 <615c6807-c018-92c9-b66a-8afdda183699@huawei.com>
 <VI1PR04MB513558BF77192255CBE12102B0110@VI1PR04MB5135.eurprd04.prod.outlook.com>
 <20200218144653.GA4286@e121166-lin.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2762bb26-967d-3410-d250-a63d8d755d76@arm.com>
Date: Tue, 18 Feb 2020 15:15:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200218144653.GA4286@e121166-lin.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_071526_877328_0B84FBC5 
X-CRM114-Status: GOOD (  29.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Hanjun Guo <guohanjun@huawei.com>, Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, "jon@solid-run.com" <jon@solid-run.com>,
 Russell King <linux@armlinux.org.uk>,
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
 Sudeep Holla <sudeep.holla@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/02/2020 2:46 pm, Lorenzo Pieralisi wrote:
> On Tue, Feb 18, 2020 at 12:48:39PM +0000, Pankaj Bansal (OSS) wrote:
> 
> [...]
> 
>>>> In DT case, we create the domain DOMAIN_BUS_FSL_MC_MSI for MC bus and
>>> it's children.
>>>> And then when MC child device is created, we search the "msi-parent"
>>> property from the MC
>>>> DT node and get the ITS associated with MC bus. Then we search
>>> DOMAIN_BUS_FSL_MC_MSI
>>>> on that ITS. Once we find the domain, we can call msi_domain_alloc_irqs for
>>> that domain.
>>>>
>>>> This is exactly what we tried to do initially with ACPI. But the searching
>>> DOMAIN_BUS_FSL_MC_MSI
>>>> associated to an ITS, is something that is part of drivers/acpi/arm64/iort.c.
>>>> (similar to DOMAIN_BUS_PLATFORM_MSI and DOMAIN_BUS_PCI_MSI)
>>>
>>> Can you have a look at mbigen driver (drivers/irqchip/irq-mbigen.c) to see if
>>> it helps you?
>>>
>>> mbigen is an irq converter to convert device's wired interrupts into MSI
>>> (connecting to ITS), which will alloc a bunch of MSIs from ITS platform MSI
>>> domain at the setup.
>>
>> Unfortunately this is not the same case as ours. As I see Hisilicon IORT table
>> Is using single id mapping with named components.
>>
>> https://github.com/tianocore/edk2-platforms/blob/master/Silicon/Hisilicon/Hi1616/D05AcpiTables/D05Iort.asl#L300
>>
>> while we are not:
>>
>> https://source.codeaurora.org/external/qoriq/qoriq-components/edk2-platforms/tree/Platform/NXP/LX2160aRdbPkg/AcpiTables/Iort.aslc?h=LX2160_UEFI_ACPI_EAR1#n290
>>
>> This is because as I said, we are trying to represent a bus in IORT
>> via named components and not individual devices connected to that bus.
> 
> I had a thorough look into this and strictly speaking there is no
> *mapping* requirement at all, all you need to know is what ITS the FSL
> MC bus is mapping MSIs to. Which brings me to the next question (which
> is orthogonal to how to model FSL MC in IORT, that has to be discussed
> but I want to have a full picture in mind first).
> 
> When you probe the FSL MC as a platform device, the ACPI core,
> through IORT (if you add the 1:1 mapping as an array of single
> mappings) already link the platform device to ITS platform
> device MSI domain (acpi_configure_pmsi_domain()).
> 
> The associated fwnode is the *same* (IIUC) as for the
> DOMAIN_BUS_FSL_MC_MSI and ITS DOMAIN_BUS_NEXUS, so in practice
> you don't need IORT code to retrieve the DOMAIN_BUS_FSL_MC_MSI
> domain, the fwnode is the same as the one in the FSL MC platform
> device IRQ domain->fwnode pointer and you can use it to
> retrieve the DOMAIN_BUS_FSL_MC_MSI domain through it.
> 
> Is my reading correct ?
> 
> Overall, DOMAIN_BUS_FSL_MC_MSI is just an MSI layer to override the
> provide the MSI domain ->prepare hook (ie to stash the MC device id), no
> more (ie its_fsl_mc_msi_prepare()).
> 
> That's it for the MSI layer - I need to figure out whether we *want* to
> extend IORT (and/or ACPI) to defined bindings for "additional busses",
> what I write above is a summary of my understanding, I have not made my
> mind up yet.

I'm really not sure we'd need to go near any bindings - the IORT spec 
*can* reasonably describe "giant black box of DPAA2 stuff" as a single 
named component, and that's arguably the most accurate abstraction 
already, even when it comes to the namespace device. This isn't a bus in 
any traditional sense, it's a set of accelerator components with an 
interface to dynamically configure them into custom pipelines, and the 
expected use-case seems to be for userspace to freely reconfigure 
whatever virtual network adapters it wants at any given time. Thus I 
don't see that it's logical or even practical for firmware itself to be 
involved beyond describing "here's your toolbox", and in particular, 
basing any decisions on the particular way that DPAA2 has been 
shoehorned into the Linux driver model would almost certainly be a step 
in the wrong direction.

IMO the scope of this issue belongs entirely within the 
implementation(s) of Linux's own abstraction layers.

Robin.

> As for the IOMMU code, it seems like the only thing needed i
> extending named components configuration to child devices,
> hierarchically.
> 
> As Marc already mentioned, IOMMU and IRQ code must be separate for
> future postings but first we need to find a suitable answer to
> the problem at hand.
> 
> Lorenzo
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
