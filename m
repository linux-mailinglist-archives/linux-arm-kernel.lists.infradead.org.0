Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C034232A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KrQ6FagTQJPJE8bvjyWXPXesn1NPj4kJOvA7qsVKiUA=; b=FfycCxHbqs8vGT
	gMAcMRo1SQmf8Nd0H80OQ1SWFKHWT+tGXGnpbEHSj/dHt2RQoQTwmsJPk+B0aF59S3Q7VKnXDRHPG
	lNM1LaJR8roJAYJh1yHuy9HPM5IwLBCNFyrSCBDEScqL3nlxOQc8s5JZ9XDv7noypeWI/KZQx2v5+
	k3NPz3STPkNOUOaxbq1A5ogeSxQvmR1lZlgEmBYnSkIBV/+8SRJ5GMWXOgqIky6XepFh2EvELo+MB
	yuayM3cRDSCHsuIp7b9wgXboqN0fRXjiDSFIt9cRGjbY1V2Cojn7fFfRMX1rLZANex73l8YkBHCnU
	h5kMUBSJMQQzuSG9vT8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0yY-0005wx-MR; Wed, 12 Jun 2019 10:59:30 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0y2-0005jG-Oo
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:59:02 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5CAwfco015991;
 Wed, 12 Jun 2019 05:58:43 -0500
Message-ID: <79e751a0f3bb05d0cbb97591e26040a6f45d98f6.camel@kernel.crashing.org>
Subject: Re: [PATCH/RESEND] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Date: Wed, 12 Jun 2019 20:58:41 +1000
In-Reply-To: <20190612100826.GB6506@redmoon>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
 <20190604124959.GF189360@google.com>
 <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
 <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
 <20190611145832.GB11736@redmoon>
 <5b5199b008d6c8831175018975f09599081dc5e4.camel@kernel.crashing.org>
 <20190612100826.GB6506@redmoon>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_035858_977832_9F171F92 
X-CRM114-Status: GOOD (  29.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, "Zilberman, Zeev" <zeev@amazon.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, Bjorn Helgaas <helgaas@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-12 at 11:08 +0100, Lorenzo Pieralisi wrote:
> 
> Nothing wrong, we have not understood each others. What I am asking
> is to write it like this:
> 
> if (obj && obj->type == ACPI_TYPE_INTEGER && obj->integer.value == 0) {
> 	/* preserve existing resource assignment */
> 	pci_bus_claim_resources(bus);
> }
> 
> /* this code path should be common, indipendent of _DSM #5
> pci_assign_unassigned_root_bus_resources(bus);
> 
> There is no reason to have two distinct code paths, current code
> can call:
> 
> pci_assign_unassigned_root_bus_resources(bus);
> 
> instead of
> 
> pci_bus_size_bridges(bus);
> pci_bus_assign_resources(bus);
> 
> Actually, current code is *questionable* given that AFAICS it
> does not account for hotplug bridges additional memory window
> size.

Ah yes, I see, ok, I'll play with that in qemu a bit tomorrow
make sure we aren't missing something obvious & update the patch.

> > > That's how it should be I think:
> > > 
> > > 1) we do not want pci_assign_unassigned_root_bus_resources(bus) to
> > >    reallocate resources already claimed (see realloc parameter), do we ?
> > 
> > Well, realloc is useful to handle SR_IOV when the BIOS doesn't do it
> > right (common case). That said, at this point, we should be able to
> > honor IORESOURCE_PCI_FIXED for things that have _DSM #5 since they have
> > been claimed. I don't see that realloc logic being a problem for us,
> > and I want to avoid gratuitous differences with x86, but maybe I'm
> > missing something here...
> 
> See above. The conditions that make IORESOURCE_PCI_FIXED work are
> still unclear to me.

I more/less convinced myself it doesn't in the full-reassignment case
:-) As for the more traditional survey + assign, it can work if the
original survey led to reasonable values, mostly by preventing (I
*think*, I still need to convince myself) the realloc path for kicking
in, but this is all very fishy... At least x86 does use that flag at
least in one place from my grepping around...

> > > 2) pci_bus_size_bridges(bus) and pci_bus_assign_resources(bus) should
> > >    not interfere with resources already claimed so it *should* be safe
> > >    to call them anyway
> > 
> > Sure, *should* and here we introduce yet another way of doing things
> > though... Any reason we don't want to do what x86 does here ?
> 
> No, see above, keeping in mind that what x86 does is still not
> very well defined AFAICS.

It's not defined, it's grown through an evolutionary process :-) It's
still by far the most tested with the widest range of crazy PCI devices
and BIOSes I would think.

> > > Most importantly: I want everyone to agree that claiming is equivalent
> > > to making a resource immutable (except for realloc, see (1) above)
> > > because that's what we are doing by claiming on _DSM #5 == 0.
> > 
> > I think the combination of claiming *and* IORESOURCE_PCI_FIXED is what
> > makes it *really* immutable. I'm a bit confused by the realloc logic
> > right now, I'll need more quality time looking at it after ingesting
> > more caffeing but I'm under the impression that it will honor the flag.
> 
> Likewise, this requires some fuzzing because it is really hard to
> understand by perusing the code.

Yup.

> > > There are too many ways to make a resource immutable in the kernel
> > > and this is confusing and prone to bugs.
> > 
> > It is, but I don't want to create new ways of doing things, and what
> > you seem to propose is a new way imho :-)
> 
> No, see above. What I am saying is that we have IORESOURCE_PCI_FIXED,
> res->parent != NULL and Enhanced allocation to make a BAR immutable and
> before going any further it would be great if we understand their
> interaction given that we are starting from a pseudo clean slate.

> If we fail to do that it is quirks later (and I would rather avoid
> seeing x86 command line parameters to work around them).

Well.. while I would hate to have to *use* the x86 command line
parameters, I also don't like them not existing on all archs, as they
can actually be useful to help diagnose issues if anything (with of
course the intention of fixing things so they aren't needed in the long
run of course).

Cheers,
Ben.

> Cheers,
> Lorenzo
> 
> > Cheers,
> > Ben.
> > 
> > > Thanks,
> > > Lorenzo
> > > 
> > > > +	ACPI_FREE(obj);
> > > >  
> > > >  	list_for_each_entry(child, &bus->children, node)
> > > >  		pcie_bus_configure_settings(child);
> > > > diff --git a/include/linux/pci-acpi.h b/include/linux/pci-acpi.h
> > > > index 8082b612f561..62b7fdcc661c 100644
> > > > --- a/include/linux/pci-acpi.h
> > > > +++ b/include/linux/pci-acpi.h
> > > > @@ -107,9 +107,10 @@ static inline void acpiphp_check_host_bridge(struct acpi_device *adev) { }
> > > >  #endif
> > > >  
> > > >  extern const guid_t pci_acpi_dsm_guid;
> > > > -#define DEVICE_LABEL_DSM	0x07
> > > > -#define RESET_DELAY_DSM		0x08
> > > > -#define FUNCTION_DELAY_DSM	0x09
> > > > +#define IGNORE_PCI_BOOT_CONFIG_DSM	0x05
> > > > +#define DEVICE_LABEL_DSM		0x07
> > > > +#define RESET_DELAY_DSM			0x08
> > > > +#define FUNCTION_DELAY_DSM		0x09
> > > >  
> > > >  #else	/* CONFIG_ACPI */
> > > >  static inline void acpi_pci_add_bus(struct pci_bus *bus) { }
> > > > 
> > > > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
