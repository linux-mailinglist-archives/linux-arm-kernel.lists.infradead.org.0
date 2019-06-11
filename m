Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4726041802
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 00:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNpOlr9++dG36OrGtHh87QtZdJYkXuWNNJhmmlwTcVI=; b=h23W30c0r/JelR
	mjSHJj3d9VSu0mmskZVCMm2TO9VI/43m/oOB/EmabtTvpQeLPdF0pjzo+kZvSVEvwZ/JqVdR1XZ7b
	VQj5HmFtDMa54H61rcwy3KN3X9/AsTwR3p3KSRwhkBi+rYY8XJRB6P+qbo9fzRgA+Jx5eWaa0u1SY
	H0hzEynXn/F24b+XfEuqLKeuH4Xy+dn/yuMONWYoTXXiwyZnVkxYocejLOAIj1tZ0cYMRB8m94LSP
	DWH6stdt/CtzMvBjAsbpIRQbQdPRmINWpOjTgYKBhD72bDLgkqmYi7lcAQNUIEz80orMevrdzp029
	Ic3HVCJlOc2GZMD6xQPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hap7n-0004Mk-3N; Tue, 11 Jun 2019 22:20:15 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hap7S-0004MN-VD
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 22:19:56 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5BMJerb020316;
 Tue, 11 Jun 2019 17:19:41 -0500
Message-ID: <5b5199b008d6c8831175018975f09599081dc5e4.camel@kernel.crashing.org>
Subject: Re: [PATCH/RESEND] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Date: Wed, 12 Jun 2019 08:19:40 +1000
In-Reply-To: <20190611145832.GB11736@redmoon>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
 <20190604124959.GF189360@google.com>
 <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
 <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
 <20190611145832.GB11736@redmoon>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_151955_155763_EAD23034 
X-CRM114-Status: GOOD (  15.49  )
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

On Tue, 2019-06-11 at 15:58 +0100, Lorenzo Pieralisi wrote:
> 
> 
> 	if (obj && obj->type == ACPI_TYPE_INTEGER && obj->integer.value == 0) {
> 		/* preserve existing resource assignment */
> 		pci_bus_claim_resources(bus);
> 	}
> 
> 	pci_bus_size_bridges(bus);
> 	pci_bus_assign_resources(bus);

So that makes me nervous... my understanding is that the pair

	pci_bus_size_bridges(bus);
 	pci_bus_assign_resources(bus);

Is intended for full reassignment. Now they will try to skip resources
that already have a parent, but that's yet another code path. What's
wrong with pci_unassigned_* ? That's what it's meant for...

> That's how it should be I think:
> 
> 1) we do not want pci_assign_unassigned_root_bus_resources(bus) to
>    reallocate resources already claimed (see realloc parameter), do we ?

Well, realloc is useful to handle SR_IOV when the BIOS doesn't do it
right (common case). That said, at this point, we should be able to
honor IORESOURCE_PCI_FIXED for things that have _DSM #5 since they have
been claimed. I don't see that realloc logic being a problem for us,
and I want to avoid gratuitous differences with x86, but maybe I'm
missing something here...

> 2) pci_bus_size_bridges(bus) and pci_bus_assign_resources(bus) should
>    not interfere with resources already claimed so it *should* be safe
>    to call them anyway

Sure, *should* and here we introduce yet another way of doing things
though... Any reason we don't want to do what x86 does here ?

> Most importantly: I want everyone to agree that claiming is equivalent
> to making a resource immutable (except for realloc, see (1) above)
> because that's what we are doing by claiming on _DSM #5 == 0.

I think the combination of claiming *and* IORESOURCE_PCI_FIXED is what
makes it *really* immutable. I'm a bit confused by the realloc logic
right now, I'll need more quality time looking at it after ingesting
more caffeing but I'm under the impression that it will honor the flag.

> There are too many ways to make a resource immutable in the kernel
> and this is confusing and prone to bugs.

It is, but I don't want to create new ways of doing things, and what
you seem to propose is a new way imho :-)

Cheers,
Ben.

> Thanks,
> Lorenzo
> 
> > +	ACPI_FREE(obj);
> >  
> >  	list_for_each_entry(child, &bus->children, node)
> >  		pcie_bus_configure_settings(child);
> > diff --git a/include/linux/pci-acpi.h b/include/linux/pci-acpi.h
> > index 8082b612f561..62b7fdcc661c 100644
> > --- a/include/linux/pci-acpi.h
> > +++ b/include/linux/pci-acpi.h
> > @@ -107,9 +107,10 @@ static inline void acpiphp_check_host_bridge(struct acpi_device *adev) { }
> >  #endif
> >  
> >  extern const guid_t pci_acpi_dsm_guid;
> > -#define DEVICE_LABEL_DSM	0x07
> > -#define RESET_DELAY_DSM		0x08
> > -#define FUNCTION_DELAY_DSM	0x09
> > +#define IGNORE_PCI_BOOT_CONFIG_DSM	0x05
> > +#define DEVICE_LABEL_DSM		0x07
> > +#define RESET_DELAY_DSM			0x08
> > +#define FUNCTION_DELAY_DSM		0x09
> >  
> >  #else	/* CONFIG_ACPI */
> >  static inline void acpi_pci_add_bus(struct pci_bus *bus) { }
> > 
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
