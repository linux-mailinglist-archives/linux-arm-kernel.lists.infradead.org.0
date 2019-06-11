Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CEE41900
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 01:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfLoGPDwuRfRTs/Ek+qpL6zL/FOa+EPc41tGQ5NHe8U=; b=N1GeLxj4quLMlT
	Yb9kIH6ctM5AYWxShTJkNGyBEuSWO/6UHB+y3JDPrsRP3sa5ujVev0K6oAGh2gj72kYdHMgzvfUyz
	x4G17BYXwQBvwRVr5auFYkt8EoEmzd3AiYp5rJBO+UkzsoYSopMJaWf8BtnWq10O3hVHUs57veD46
	W/AYGKKnB01TK6mUL8xgQv8ZJum8N7FH8jweukFCUN82OwiiBNQ7mfsMN8gNMD7b2Ag4hZxtzrbbD
	uSx7iVCW2kfHJrgiQdl+/4G2lRueCkGbsSgDs6Z9EBnsmRKMpfLTRiKrBOfRIXjcK5QLoI/HFp0d9
	TpePnnzpRbn33tRE4C3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haqMT-00058K-4A; Tue, 11 Jun 2019 23:39:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haqMG-00057w-KX
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 23:39:18 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 841E121734;
 Tue, 11 Jun 2019 23:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560296355;
 bh=VwOd78nKfWXtzSReAwXuXU4Jd+QzZOpw/aq64UgQCoE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BbgAVpouQ5gYPp1M/iyN/rPFlXzGDDufNURdnf+kFDUzZlw5iV0Gb0hU8TvAR9hDm
 kDYwlDkAGRzJvDPqRQQVkDRJGfTMqkwuHfQPemGL1VAG0hJwr+UTH/t+r02n2fjOe/
 rgfL4rwFUNSDeyjGywzb0M8kcrTMxvWMBxSDQ0gc=
Date: Tue, 11 Jun 2019 18:39:08 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH/RESEND] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
Message-ID: <20190611233908.GA13533@google.com>
References: <56715377f941f1953be43b488c2203ec090079a1.camel@kernel.crashing.org>
 <20190604014945.GE189360@google.com>
 <960c94eb151ba1d066090774621cf6ca6566d135.camel@kernel.crashing.org>
 <20190604124959.GF189360@google.com>
 <e520a4269224ac54798314798a80c080832e68b1.camel@kernel.crashing.org>
 <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d53fc77e1e754ddbd9af555ed5b344c5fa523154.camel@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_163916_712484_7DC2277E 
X-CRM114-Status: GOOD (  30.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-pci@vger.kernel.org,
 Sinan Kaya <okaya@kernel.org>, "Zilberman, Zeev" <zeev@amazon.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, linux-arm-kernel@lists.infradead.org
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

The current PCI Firmware spec r3.2 specifies _DSM function 5 for
PCI-to-PCI bridge objects, which does not include host bridge
(PNP0A03) nodes, but the proposed revision does allow it under host
bridges.  So I'm fine with this, but we should update the commit log
so it doesn't say "PCI *already* specifies this".

> [BenH: Added pci_assign_unassigned_root_bus_resources()]
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

I think you should add a signed-off-by for yourself?

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

This is fine, but can we make a tiny step toward doing this in generic
code instead of adding more arch-specific stuff?

E.g., evaluate the _DSM in the generic acpi_pci_root_add(), set a
"preserve_config" bit in the struct acpi_pci_root, and test the bit
here?

It would also be nice to add a printk in the other
pci_acpi_scan_root() implementations if the bit is set so we know that
the platform supplied the _DSM but we're ignoring it.

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
