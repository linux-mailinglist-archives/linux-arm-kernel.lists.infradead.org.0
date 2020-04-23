Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D241B5A11
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 13:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTrdHFl55QwwZoaPdUcr1XEbKFaU+qIG6nEgFHZ8gyk=; b=O4pVruZd1VkbRh
	gAswSALfujn3IfJcb3LxHywa782TJ4YtvHO5IvHkFUngRXdIvoxCmCdWhf7BAweg93XtQLAX2uYjC
	hEC5NxdLqK2ZSYMZgdOoEEer37tL80b/CI3ljnKh5fG8uxtQhtdw1ZroXziMD0U6O9rb9KCbYffoZ
	WFN/RusIhymJEvKbpqDu45/OV4YBEZR6qY/YrPeuFTEVaTk3L6rx9yRstBwkIlZljQziwCHhIfHui
	xFKrY2LT76plftyP9O7iusmqBimn3GdHC86xyeqNLfgK8CCllQmH3oU2FnRNPQ2hZgZG4Y0Yc/O39
	xsyA85xp+CN2XqC8ORvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZjt-0001Sl-I5; Thu, 23 Apr 2020 11:09:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZjj-0001RT-Mu
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 11:09:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D61C31B;
 Thu, 23 Apr 2020 04:09:40 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 812FA3F68F;
 Thu, 23 Apr 2020 04:09:37 -0700 (PDT)
Date: Thu, 23 Apr 2020 12:09:29 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Makarand Pawagi <makarand.pawagi@nxp.com>
Subject: Re: [EXT] Re: [RFC PATCH 1/4] bus: fsl-mc: add custom .dma_configure
 implementation
Message-ID: <20200423110929.GA32316@e121166-lin.cambridge.arm.com>
References: <20200227100542.13819-1-laurentiu.tudor@nxp.com>
 <20200325125109.GA5430@red-moon.cambridge.arm.com>
 <499fbf9a-416f-d7c7-0655-881d92138a6c@nxp.com>
 <20200414143211.GA14905@red-moon.cambridge.arm.com>
 <d37ca4e3-58cb-9d6f-3a98-5e4a21ca948b@nxp.com>
 <78086898-d54f-63d0-f1f4-301ef2a8ea83@arm.com>
 <DB7PR04MB4986A6CBC2EE03D8BA8D32DEEBD30@DB7PR04MB4986.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB4986A6CBC2EE03D8BA8D32DEEBD30@DB7PR04MB4986.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_040943_837322_8910E937 
X-CRM114-Status: GOOD (  36.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "jason@lakedaemon.net" <jason@lakedaemon.net>,
 Calvin Johnson <calvin.johnson@nxp.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "maz@kernel.org" <maz@kernel.org>, Pankaj Bansal <pankaj.bansal@nxp.com>,
 "Diana Madalina Craciun \(OSS\)" <diana.craciun@oss.nxp.com>,
 "jon@solid-run.com" <jon@solid-run.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jeremy.linton@arm.com" <jeremy.linton@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, Varun Sethi <V.Sethi@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 "Stuart.Yoder@arm.com" <Stuart.Yoder@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 09:56:54AM +0000, Makarand Pawagi wrote:

[...]

> > > At a first glance, looks like this could very well fix the ACPI
> > > scenario, but I have some unclarities on the approach:
> > >   * are we going to rely in DT and ACPI generic layers even if these
> > > devices are not published / enumerated through DT or ACPI tables?
> > 
> > Assuming you mean the DPRC devices rather than the MC itself, then yes; in that
> > sense it's exactly the same as how we treat dynamically-discovered PCI devices.
> > 
> > >   * the firmware manages and provides discrete streamids for the
> > > devices it exposes so there's no translation involved. There's no
> > >     requestor_id / input_id involved but it seems that we would still
> > > do some kind of translation relying for this on the DT/ACPI functions.
> > 
> > Wrong - last time I looked, what that firmware actually manages are
> > *ICIDs* for the devices, not SMMU Stream IDs or GIC Device IDs; what DT/ACPI
> > specifies is a translation from ICID to Stream ID/Device ID. The ICID is very much
> > the requester/input ID for that translation. Yes, in practice the "translation" is
> > effectively always a trivial identity mapping, but conceptually it most definitely
> > exists. Yes, the subtlety is incredibly easy to overlook because it's basically
> > drawing a distinction between one end of some wires vs. the other end, but it
> > matters.
> > 
> > (and of course "trivial 1:1 translation" isn't even true in the case of SMMU
> > Stream ID values, since IIRC they are really composed of 5 different inputs, only
> > one of which is (part of) the incoming ICID)
> > 
> > >   * MC firmware has its own stream_id (e.g. on some chips 0x4000,
> > > others 0xf00, so outside the range of stream_ids used for the mc devices)
> > >     while for the devices on this bus, MC allocates stream_ids from a
> > > range (e.g. 0x17 - 0x3f). Is it possible to describe this in the IORT table?
> > 
> > If it represents a unique ICID allocated to the MC itself, then sure, it simply goes
> > through the mapping like anything else. Just like a PCI host bridge owns
> > requester ID 0:0.0 and thus whatever Stream ID/Device ID that might map to.
> > 
> > If (for the sake of argument, because AIUI everything is an ICID in this particular
> > case) it's some hard-wired thing that exists in Stream ID/Device ID space only,
> > then it's a little trickier, but still in scope. In DT we have a lovely distinction
> > between between "originating from the node" and "translated through the
> > node", e.g. "msi-parent" vs.
> > "msi-map"; IORT is not quite as clear-cut, but there are at least a few options. If
> > the valid input ID space is smaller than 32 bits, then the "Named Component as
> > bridge" binding could simply define special out-of-range values to represent IDs
> > originating from the bridge itself, such that the NC driver knows what to do and
> > from IORT's point of view everything is just a normal mapping. Alternatively
> > there's already the example of SMMUv3 where we can have a mix of the normal
> > mappings from Stream ID to Device ID for the upstream masters plus a single
> > mapping for the SMMU's own Device ID - admittedly that depends on the
> > additional SMMUv3-specific Device ID Mapping Index property, but if necessary
> > it might be workable to have a de-facto interface for NCs that only considers
> > single mappings when configuring the NC itself, and only considers normal
> > mappings when configuring its children. Or maybe define a new mapping flag or
> > NC property if there's a real need to specify such a situation unambiguously at
> > the IORT level.
> > 
> > >   * Regarding the of_map_rid() use you mentioned, I was planning to
> > > decouple the mc bus from the DT layer by dropping the use of
> > > of_map_rid(), see patch 4.
> > > I briefly glanced over the iort code and spotted this static function:
> > > iort_iommu_xlate(). Wouldn't it also help, of course after making it public?
> > 
> > I won't speak for Lorenzo or claim we've agreed on an approach at all (not least
> > because in all honesty we haven't really discussed it beyond these various email
> > threads), but FWIW my vision is that ultimately the DT/ACPI code would expose
> > a *_dma_configure() interface that takes an optional input ID, or (perhaps more
> > likely) an explicit pair of interfaces for "configure this regular device" and
> > "configure this device based on this 'host' device and this ID", and it becomes
> > the bus code's responsibility to pass the right device(s) and deal with multiple IDs
> > (i.e. for starters all the PCI alias stuff goes back to the PCI code where it really
> > should be, rather than having multiple copies of magic PCI awareness deep
> > down in DT/ACPI code).
> > 
> > Robin.
>  
> Hi Lorenzo, Robin,

Wrap lines to 80 chars on ML pls.

> What we definitely need is the correct representation of the MC in
> ACPI case. To achieve that we will define it as Platform Device but
> not with EFI_ACPI_IORT_ID_MAPPING_FLAGS_SINGLE.
> Also for the Named Component Node we will have .NumIdMappings = 2. One
> mapping will have the range of IDs for DPRC device and a separate
> table will have the ID for MC device itself.
> 
> Having said this, the patch set which is currently under discussion
> doesn't cater this representation, but solution proposed by Lorenzo
> and Robin is in that direction only and we in theory agree to that.

Cool.

> But further to this needs few clarifications as well.
> 
> Now for ACPI case what we definitely need is the option to take Input
> ID into the consideration for Platform device if it is not with Single
> ID mapping flag. We can handle both MSI and IOMMU cases with that, and
> in fact a patch with this implementation for MSI is already posted by
> Pankaj and under review, and we would need similar approach for IOMMU
> case as well. I would appreciate if Lorenzo can elaborate more on how
> he is going to generalize iort_msi_map_rid() function.

You are referring to:

https://lore.kernel.org/linux-acpi/20200217141504.4183-1-pankaj.bansal@nxp.com/

right ?

As for iort_msi_map_rid() it should just be a matter of generalizing it,
AFAICS you shall have to call it from the ITS FSL code to retrieve the
devid to be passed to the ITS.

However, we also have to generalize the acpi_configure_pmsi_domain()
call as well to make sure we can set-up the MSI domain for FSL devices,
this seems reasonable simple.

As for the IOMMU, the interface Robin put forward is entirely reasonable
to me.

> For DT case, currently MC is represented as a separate bus just like
> PCI. It would not make sense to keep it that way while in ACPI case it
> is represented in a different way. Because of this we would like to
> take a similar approach with the DT as well.

I am not sure I understand what you mean here but certainly having
API convergence between DT and ACPI is desirable.

> Please post your patches with the changes you mentioned earlier, and
> meanwhile we will also do some PoC activity for both ACPI and DT case
> and will post a new set of patch with that.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
