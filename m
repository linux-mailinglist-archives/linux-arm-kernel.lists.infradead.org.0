Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B048421FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k72V/MjwfyYKZ3QO7lIvJlR0YPM8QCCGVjgTtiUtKTA=; b=NUsKVDYPmKc2rc
	nfFMhWncNl1D36seqMd45tJ1M1fXu36ZMVlSEChpGnqWLHlWUHO/vJkqcOf4YFyK/sE+y0URS+VR8
	SXJyKu8KZW9fdZkIyz3Lu15rQszINTJbU8JEV+T5ZKfE/n9R7pdgWySNUGonKjhKtGdJPHzMBTLyH
	tkKz6p/QqT01fi2PMFbeqhQR2nSHSPUmVD5kaAt5gTbHXqebpmT2mOWFZjwP5luKjfAI5GYY7CyA7
	eWa+7MltCpthHL+1BTLXRn8iLeQGz+ZYLLcDfsp5uoVcvTLsT3Cmq6x6bhLgLg0zaCoOISg7e8sOm
	QRrLhV+Kb7PQZi67qUdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0BR-0005WY-U7; Wed, 12 Jun 2019 10:08:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0BC-0005VV-3Z
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:08:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A2D928;
 Wed, 12 Jun 2019 03:08:29 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 36B453F246;
 Wed, 12 Jun 2019 03:10:11 -0700 (PDT)
Date: Wed, 12 Jun 2019 11:08:26 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH/RESEND] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
Message-ID: <20190612100826.GB6506@redmoon>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
 <20190604124959.GF189360@google.com>
 <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
 <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
 <20190611145832.GB11736@redmoon>
 <5b5199b008d6c8831175018975f09599081dc5e4.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b5199b008d6c8831175018975f09599081dc5e4.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_030830_235582_70FD2FCD 
X-CRM114-Status: GOOD (  27.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, "Zilberman, Zeev" <zeev@amazon.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, Bjorn Helgaas <helgaas@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 08:19:40AM +1000, Benjamin Herrenschmidt wrote:
> On Tue, 2019-06-11 at 15:58 +0100, Lorenzo Pieralisi wrote:
> > 
> > 
> > 	if (obj && obj->type == ACPI_TYPE_INTEGER && obj->integer.value == 0) {
> > 		/* preserve existing resource assignment */
> > 		pci_bus_claim_resources(bus);
> > 	}
> > 
> > 	pci_bus_size_bridges(bus);
> > 	pci_bus_assign_resources(bus);
> 
> So that makes me nervous... my understanding is that the pair
> 
> 	pci_bus_size_bridges(bus);
>  	pci_bus_assign_resources(bus);
> 
> Is intended for full reassignment. Now they will try to skip resources
> that already have a parent, but that's yet another code path. What's
> wrong with pci_unassigned_* ? That's what it's meant for...

Nothing wrong, we have not understood each others. What I am asking
is to write it like this:

if (obj && obj->type == ACPI_TYPE_INTEGER && obj->integer.value == 0) {
	/* preserve existing resource assignment */
	pci_bus_claim_resources(bus);
}

/* this code path should be common, indipendent of _DSM #5
pci_assign_unassigned_root_bus_resources(bus);

There is no reason to have two distinct code paths, current code
can call:

pci_assign_unassigned_root_bus_resources(bus);

instead of

pci_bus_size_bridges(bus);
pci_bus_assign_resources(bus);

Actually, current code is *questionable* given that AFAICS it
does not account for hotplug bridges additional memory window
size.

> > That's how it should be I think:
> > 
> > 1) we do not want pci_assign_unassigned_root_bus_resources(bus) to
> >    reallocate resources already claimed (see realloc parameter), do we ?
> 
> Well, realloc is useful to handle SR_IOV when the BIOS doesn't do it
> right (common case). That said, at this point, we should be able to
> honor IORESOURCE_PCI_FIXED for things that have _DSM #5 since they have
> been claimed. I don't see that realloc logic being a problem for us,
> and I want to avoid gratuitous differences with x86, but maybe I'm
> missing something here...

See above. The conditions that make IORESOURCE_PCI_FIXED work are
still unclear to me.

> > 2) pci_bus_size_bridges(bus) and pci_bus_assign_resources(bus) should
> >    not interfere with resources already claimed so it *should* be safe
> >    to call them anyway
> 
> Sure, *should* and here we introduce yet another way of doing things
> though... Any reason we don't want to do what x86 does here ?

No, see above, keeping in mind that what x86 does is still not
very well defined AFAICS.

> > Most importantly: I want everyone to agree that claiming is equivalent
> > to making a resource immutable (except for realloc, see (1) above)
> > because that's what we are doing by claiming on _DSM #5 == 0.
> 
> I think the combination of claiming *and* IORESOURCE_PCI_FIXED is what
> makes it *really* immutable. I'm a bit confused by the realloc logic
> right now, I'll need more quality time looking at it after ingesting
> more caffeing but I'm under the impression that it will honor the flag.

Likewise, this requires some fuzzing because it is really hard to
understand by perusing the code.

> > There are too many ways to make a resource immutable in the kernel
> > and this is confusing and prone to bugs.
> 
> It is, but I don't want to create new ways of doing things, and what
> you seem to propose is a new way imho :-)

No, see above. What I am saying is that we have IORESOURCE_PCI_FIXED,
res->parent != NULL and Enhanced allocation to make a BAR immutable and
before going any further it would be great if we understand their
interaction given that we are starting from a pseudo clean slate.

If we fail to do that it is quirks later (and I would rather avoid
seeing x86 command line parameters to work around them).

Cheers,
Lorenzo

> Cheers,
> Ben.
> 
> > Thanks,
> > Lorenzo
> > 
> > > +	ACPI_FREE(obj);
> > >  
> > >  	list_for_each_entry(child, &bus->children, node)
> > >  		pcie_bus_configure_settings(child);
> > > diff --git a/include/linux/pci-acpi.h b/include/linux/pci-acpi.h
> > > index 8082b612f561..62b7fdcc661c 100644
> > > --- a/include/linux/pci-acpi.h
> > > +++ b/include/linux/pci-acpi.h
> > > @@ -107,9 +107,10 @@ static inline void acpiphp_check_host_bridge(struct acpi_device *adev) { }
> > >  #endif
> > >  
> > >  extern const guid_t pci_acpi_dsm_guid;
> > > -#define DEVICE_LABEL_DSM	0x07
> > > -#define RESET_DELAY_DSM		0x08
> > > -#define FUNCTION_DELAY_DSM	0x09
> > > +#define IGNORE_PCI_BOOT_CONFIG_DSM	0x05
> > > +#define DEVICE_LABEL_DSM		0x07
> > > +#define RESET_DELAY_DSM			0x08
> > > +#define FUNCTION_DELAY_DSM		0x09
> > >  
> > >  #else	/* CONFIG_ACPI */
> > >  static inline void acpi_pci_add_bus(struct pci_bus *bus) { }
> > > 
> > > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
