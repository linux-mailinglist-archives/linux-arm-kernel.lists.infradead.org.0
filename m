Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64751183AF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 21:59:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=+6YWP9NNmc+zIWNGa02a424uav6Mb4NmJHawe1Ch0YM=; b=IdXHCCU1LmLl7T
	LIZmR7cUBgtjSdyisB2hShnXyjr+Z1XHCy7ElvuNx3LdDp0MbYBmw7HqyrrDTylhfrlm9FUvIYos8
	qNsYeumIvXnU2REKawGGOG5Trb7xAAWUmjn5I9W622hI06zjJPlIHDbz1rbG28DgG3m3ThVJADkHr
	WPhd9f2nJeBzzeMfb9ivtWVQ4S6AyGReSicbRoQ4BDLiMUbQnwF0OMX2BZrhylfNEZMWCr1tfF/GT
	ccsom86co+5VR73M4RoJuUYEOnVoRWxprSjU6HbVXlLCGYFus6yWl/R8EZhWu9AOohohFyxqmgyku
	QRwTRWE8anFtWA2Z3ctw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCUv6-00006Z-HE; Thu, 12 Mar 2020 20:59:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCUuy-00005e-Jg
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 20:59:02 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA66B206B7;
 Thu, 12 Mar 2020 20:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584046740;
 bh=sZrxWzYm4Q2gQ/nKayUGqNHfr3nP8m8qZiAHKqaks08=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=YoAaCQPJTwGmp7XWP86L78EAbP87WHaly0Mp6Ed8cwzHqWkTNzAekl0Vckbc5pcmt
 sHCTW0fPtyDVPWOuPF8zuumu2s9LhFTzzRroslWpC97D1efkVIlDqL6XyysJdOWTM/
 cfylvimv3zTN/vGEqEvIIqwZ9L3tXOyXL77JU+ks=
Date: Thu, 12 Mar 2020 15:58:58 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v2 04/11] ACPI/IORT: Check ATS capability in root complex
 node
Message-ID: <20200312205858.GA178807@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311124506.208376-5-jean-philippe@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_135900_690579_CCCFA862 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
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
Cc: mark.rutland@arm.com, linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 liviu.dudau@arm.com, guohanjun@huawei.com, frowand.list@gmail.com,
 lorenzo.pieralisi@arm.com, corbet@lwn.net, will@kernel.org, joro@8bytes.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, dwmw2@infradead.org,
 rjw@rjwysocki.net, iommu@lists.linux-foundation.org, sudeep.holla@arm.com,
 baolu.lu@linux.intel.com, robin.murphy@arm.com, amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 01:44:59PM +0100, Jean-Philippe Brucker wrote:
> When initializing a PCI root bridge, copy its "ATS supported" attribute
> into the root bridge.
> 
> Acked-by: Hanjun Guo <guohanjun@huawei.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/acpi/arm64/iort.c | 27 +++++++++++++++++++++++++++
>  drivers/acpi/pci_root.c   |  3 +++
>  include/linux/acpi_iort.h |  8 ++++++++
>  3 files changed, 38 insertions(+)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index ed3d2d1a7ae9..d99d7f5b51e1 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -1633,6 +1633,33 @@ static void __init iort_enable_acs(struct acpi_iort_node *iort_node)
>  		}
>  	}
>  }
> +
> +static acpi_status iort_match_host_bridge_callback(struct acpi_iort_node *node,
> +						   void *context)
> +{
> +	struct acpi_iort_root_complex *pci_rc;
> +	struct pci_host_bridge *host_bridge = context;
> +
> +	pci_rc = (struct acpi_iort_root_complex *)node->node_data;
> +
> +	return pci_domain_nr(host_bridge->bus) == pci_rc->pci_segment_number ?
> +		AE_OK : AE_NOT_FOUND;
> +}
> +
> +void iort_pci_host_bridge_setup(struct pci_host_bridge *host_bridge)
> +{
> +	struct acpi_iort_node *node;
> +	struct acpi_iort_root_complex *pci_rc;
> +
> +	node = iort_scan_node(ACPI_IORT_NODE_PCI_ROOT_COMPLEX,
> +			      iort_match_host_bridge_callback, host_bridge);
> +	if (!node)
> +		return;
> +
> +	pci_rc = (struct acpi_iort_root_complex *)node->node_data;
> +	host_bridge->ats_supported = !!(pci_rc->ats_attribute &
> +					ACPI_IORT_ATS_SUPPORTED);
> +}
>  #else
>  static inline void iort_enable_acs(struct acpi_iort_node *iort_node) { }
>  #endif
> diff --git a/drivers/acpi/pci_root.c b/drivers/acpi/pci_root.c
> index d1e666ef3fcc..eb2fb8f17c0b 100644
> --- a/drivers/acpi/pci_root.c
> +++ b/drivers/acpi/pci_root.c
> @@ -6,6 +6,7 @@
>   *  Copyright (C) 2001, 2002 Paul Diefenbaugh <paul.s.diefenbaugh@intel.com>
>   */
>  
> +#include <linux/acpi_iort.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/init.h>
> @@ -917,6 +918,8 @@ struct pci_bus *acpi_pci_root_create(struct acpi_pci_root *root,
>  	if (!(root->osc_control_set & OSC_PCI_EXPRESS_LTR_CONTROL))
>  		host_bridge->native_ltr = 0;
>  
> +	iort_pci_host_bridge_setup(host_bridge);

Similar comment as on the OF side.

You mentioned at [1] that "it's important that we only enable ATS if
the host bridge supports it".  That should be captured in a commit log
and comment somewhere here.

That suggests to me that we should not set

  bridge->ats_supported = 1;

by default in pci_init_host_bridge(), but rather leave it zero as it
is by default, and then do things like:

  if (iort_pci_host_bridge_ats_supported(bridge))
    bridge->ats_supported = 1;

  if (of_pci_host_bridge_ats_supported(bridge))
    bridge->ats_supported = 1;

I don't know what you do about IVRS and DMAR, which don't appear in
this series except in the comment.

[1] https://lore.kernel.org/r/20200213165049.508908-1-jean-philippe@linaro.org

>  	/*
>  	 * Evaluate the "PCI Boot Configuration" _DSM Function.  If it
>  	 * exists and returns 0, we must preserve any PCI resource
> diff --git a/include/linux/acpi_iort.h b/include/linux/acpi_iort.h
> index 8e7e2ec37f1b..7b06871cc3aa 100644
> --- a/include/linux/acpi_iort.h
> +++ b/include/linux/acpi_iort.h
> @@ -10,6 +10,7 @@
>  #include <linux/acpi.h>
>  #include <linux/fwnode.h>
>  #include <linux/irqdomain.h>
> +#include <linux/pci.h>
>  
>  #define IORT_IRQ_MASK(irq)		(irq & 0xffffffffULL)
>  #define IORT_IRQ_TRIGGER_MASK(irq)	((irq >> 32) & 0xffffffffULL)
> @@ -55,4 +56,11 @@ int iort_iommu_msi_get_resv_regions(struct device *dev, struct list_head *head)
>  { return 0; }
>  #endif
>  
> +#if defined(CONFIG_ACPI_IORT) && defined(CONFIG_PCI)
> +void iort_pci_host_bridge_setup(struct pci_host_bridge *host_bridge);
> +#else
> +static inline
> +void iort_pci_host_bridge_setup(struct pci_host_bridge *host_bridge) { }
> +#endif
> +
>  #endif /* __ACPI_IORT_H__ */
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
