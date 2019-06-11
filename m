Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4953D008
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:59:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kylrEdtc2T578Sc743MpdklTZTH3FZluPAgJhl7CFug=; b=DeXoop/32iSIox
	hVgzGSpfxG6I7fnn/WnOiQiswHN3Vr1z8bQ46hTNPq/gk8SAWUpXFiZRN33O5Os2ifGamLNwnaJ8A
	CjbquJsSprpq/a6aDYumywbPju7rGIUMaIK5xV0OyWnv0YBxFC8QflkT2vJv9qPjd0g5N9vf5wMEh
	G9N11ZEOOQpp0TkF071F0nDedS1K+SFVrxkMQCF1I6KzNCdF9CIK2tdgV6Q0K8jjql3/C6H0D0Q43
	dszxZ/juON2rLK1Fhv20A4YqpR57mj65AOaQxFpf+cDHyYtyiT4GjgtNhW7wQg3thuFywqC6pMB9H
	xXmKjQHi6T/6gUd6UiOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiEj-0001Ya-9v; Tue, 11 Jun 2019 14:58:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haiEO-0001NA-KY
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:58:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29FC5346;
 Tue, 11 Jun 2019 07:58:36 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 080393F246;
 Tue, 11 Jun 2019 07:58:34 -0700 (PDT)
Date: Tue, 11 Jun 2019 15:58:32 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH/RESEND] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
Message-ID: <20190611145832.GB11736@redmoon>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
 <20190604124959.GF189360@google.com>
 <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
 <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075842_512331_77542272 
X-CRM114-Status: GOOD (  27.02  )
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

On Thu, Jun 06, 2019 at 07:00:12PM +1000, Benjamin Herrenschmidt wrote:
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> On arm64 ACPI systems, we unconditionally reconfigure the entire PCI
> hierarchy at boot. This is a departure from what is customary on ACPI
> systems, and may break assumptions in some places (e.g., EFIFB), that
> the kernel will leave BARs of enabled PCI devices where they are.
> 
> Given that PCI already specifies a device specific ACPI method (_DSM)
> for PCI root bridge nodes that tells us whether the firmware thinks
> the configuration should be left alone, let's sidestep the entire
> policy debate about whether the PCI configuration should be preserved
> or not, and put it under the control of the firmware instead.
> 
> [BenH: Added pci_assign_unassigned_root_bus_resources()]
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
> 
> So I would like this variant rather than mucking around with
> IORESOURCE_PCI_FIXED at this stage to fix the problem with our platforms.
> 
> See my other email, IORESOURCE_PCI_FIXED doesn't really work terribly well
> when using pci_bus_size_bridges and pci_bus_assign_resources, and the
> resulting patches are ugly and add more mess.
> 
> Long run, I propose to start working on consolidating all those various
> resource survey mechanisms around what x86 does, unless people strongly
> object... (with the addition of the probe only and force reassign quirks
> so platforms can still chose that).
> 
> Note: I haven't tested the effect of pci_assign_unassigned_root_bus_resources
> as our platforms don't leave anything unassigned. I'm not entirely sure how
> well pci_bus_claim_resources() will deal with a partially assigned setup...
> 
> We do want to support partial assignment by BIOS though, it's a trend to
> reduce boot time, people seem to want BIOSes to only assign what's critical
> for booting.
> 
> Bjorn: I haven't made the claim path the default in absence of _DSM #5 yet.
> I suggest we do that as a separate patch in case it breaks somebody, thus
> making bisection more meaningful. It will also make this one more palatable
> to distros since it won't change the behaviour on systems without _DSM #5,
> and we verified nobody has it except Seattle which returns 1. 
> 
>  arch/arm64/kernel/pci.c  | 23 +++++++++++++++++++++--
>  include/linux/pci-acpi.h |  7 ++++---
>  2 files changed, 25 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/kernel/pci.c b/arch/arm64/kernel/pci.c
> index bb85e2f4603f..6358e1cb4f9f 100644
> --- a/arch/arm64/kernel/pci.c
> +++ b/arch/arm64/kernel/pci.c
> @@ -168,6 +168,7 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
>  	struct acpi_pci_generic_root_info *ri;
>  	struct pci_bus *bus, *child;
>  	struct acpi_pci_root_ops *root_ops;
> +	union acpi_object *obj;
>  
>  	ri = kzalloc(sizeof(*ri), GFP_KERNEL);
>  	if (!ri)
> @@ -193,8 +194,26 @@ struct pci_bus *pci_acpi_scan_root(struct acpi_pci_root *root)
>  	if (!bus)
>  		return NULL;
>  
> -	pci_bus_size_bridges(bus);
> -	pci_bus_assign_resources(bus);
> +	/*
> +	 * Invoke the PCI device specific method (_DSM) #5 'Ignore PCI Boot
> +	 * Configuration', which tells us whether the firmware wants us to
> +	 * preserve the configuration of the PCI resource tree for this root
> +	 * bridge.
> +	 */
> +	obj = acpi_evaluate_dsm(ACPI_HANDLE(bus->bridge), &pci_acpi_dsm_guid, 1,
> +	                        IGNORE_PCI_BOOT_CONFIG_DSM, NULL);
> +	if (obj && obj->type == ACPI_TYPE_INTEGER && obj->integer.value == 0) {
> +		/* preserve existing resource assignment */
> +		pci_bus_claim_resources(bus);
> +
> +		/* Assign anything that might have been left out */
> +		pci_assign_unassigned_root_bus_resources(bus);
> +	} else {
> +		/* reconfigure the resource tree from scratch */
> +		pci_bus_size_bridges(bus);
> +		pci_bus_assign_resources(bus);
> +	}

	if (obj && obj->type == ACPI_TYPE_INTEGER && obj->integer.value == 0) {
		/* preserve existing resource assignment */
		pci_bus_claim_resources(bus);
	}

	pci_bus_size_bridges(bus);
	pci_bus_assign_resources(bus);

That's how it should be I think:

1) we do not want pci_assign_unassigned_root_bus_resources(bus) to
   reallocate resources already claimed (see realloc parameter), do we ?
2) pci_bus_size_bridges(bus) and pci_bus_assign_resources(bus) should
   not interfere with resources already claimed so it *should* be safe
   to call them anyway

Most importantly: I want everyone to agree that claiming is equivalent
to making a resource immutable (except for realloc, see (1) above)
because that's what we are doing by claiming on _DSM #5 == 0.

There are too many ways to make a resource immutable in the kernel
and this is confusing and prone to bugs.

Thanks,
Lorenzo

> +	ACPI_FREE(obj);
>  
>  	list_for_each_entry(child, &bus->children, node)
>  		pcie_bus_configure_settings(child);
> diff --git a/include/linux/pci-acpi.h b/include/linux/pci-acpi.h
> index 8082b612f561..62b7fdcc661c 100644
> --- a/include/linux/pci-acpi.h
> +++ b/include/linux/pci-acpi.h
> @@ -107,9 +107,10 @@ static inline void acpiphp_check_host_bridge(struct acpi_device *adev) { }
>  #endif
>  
>  extern const guid_t pci_acpi_dsm_guid;
> -#define DEVICE_LABEL_DSM	0x07
> -#define RESET_DELAY_DSM		0x08
> -#define FUNCTION_DELAY_DSM	0x09
> +#define IGNORE_PCI_BOOT_CONFIG_DSM	0x05
> +#define DEVICE_LABEL_DSM		0x07
> +#define RESET_DELAY_DSM			0x08
> +#define FUNCTION_DELAY_DSM		0x09
>  
>  #else	/* CONFIG_ACPI */
>  static inline void acpi_pci_add_bus(struct pci_bus *bus) { }
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
