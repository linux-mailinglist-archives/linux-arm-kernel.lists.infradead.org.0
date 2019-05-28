Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 302FF2C73D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrUweiXzYClgsvARnr8ZFfaUAjmfwlVc5UNn/nk80Ss=; b=RDEQp+a7bLcaRb
	4dLS+YOHWOZKSGq0uXYW6NQ5kuI9Sd/uYh1BYNp6Gp8AUJgeyc1CGNvT0/SsXuqPUoNoX51Xq+0rW
	X6mKTBvr7HKqVfYdpTaeEPJvro2v1h9wtipzweLMJVy+u+lmw5G7/kZfTuAxquhrNly+Bb0vSf9LW
	bx/h0oJSYbaKt/9PxhoHKseqJF5Ds8ywpMjFf2TdFSDc0LOp1xLbTaINBIpycx1+bf9d9NLkfZY9y
	J1Rv0B7VMyLSJ4+8rwKUiiWOhDO7aXFBFJwdcGEDmzFJhzMPrsjQYNOChkzwgd1M01yYl6/xnuJgc
	3r40/tXAnSC0qj3QT0Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbku-00012w-BL; Tue, 28 May 2019 13:03:04 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbkm-00011q-Lq
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:02:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 357D680D;
 Tue, 28 May 2019 06:02:54 -0700 (PDT)
Received: from redmoon (e121166-lin.cambridge.arm.com [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 445443F5AF;
 Tue, 28 May 2019 06:02:52 -0700 (PDT)
Date: Tue, 28 May 2019 14:02:47 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v3 1/4] acpi/irq: implement helper to create hierachical
 domains
Message-ID: <20190528130247.GA25151@redmoon>
References: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
 <20190527112720.2266-2-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527112720.2266-2-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_060256_726684_5E014366 
X-CRM114-Status: GOOD (  24.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Graeme Gregory <graeme.gregory@linaro.org>, linux-gpio@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 01:27:17PM +0200, Ard Biesheuvel wrote:
> ACPI permits arbitrary producer->consumer interrupt links to be
> described in AML, which means a topology such as the following
> is perfectly legal:
> 
>   Device (EXIU) {
>     Name (_HID, "SCX0008")
>     Name (_UID, Zero)
>     Name (_CRS, ResourceTemplate () {
>       ...
>     })
>   }
> 
>   Device (GPIO) {
>     Name (_HID, "SCX0007")
>     Name (_UID, Zero)
>     Name (_CRS, ResourceTemplate () {
>       Memory32Fixed (ReadWrite, SYNQUACER_GPIO_BASE, SYNQUACER_GPIO_SIZE)
>       Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, 0, "\\_SB.EXIU") {
>         7,
>       }
>     })
>     ...
>   }
> 
> The EXIU in this example is the external interrupt unit as can be found
> on Socionext SynQuacer based platforms, which converts a block of 32 SPIs
> from arbitrary polarity/trigger into level-high, with a separate set
> of config/mask/unmask/clear controls.
> 
> The existing DT based driver in drivers/irqchip/irq-sni-exiu.c models
> this as a hierarchical domain stacked on top of the GIC's irqdomain.
> Since the GIC is modeled as a DT node as well, obtaining a reference
> to this irqdomain is easily done by going through the parent link.
> 
> On ACPI systems, however, the GIC is not modeled as an object in the
> namespace, and so device objects cannot refer to it directly. So in
> order to obtain the irqdomain reference when driving the EXIU in ACPI
> mode, we need a helper that implicitly grabs the default domain for
> unqualified interrupts as the parent of the hierarchy.

Nit: I do not think they are "unqualified".

ACPI 6.3, table 6-237, Extended Interrupt Descriptor Definition:

"Resource Source: (Optional) If present, the device that uses this
descriptor consumes its resources from the resources produces by the
named device object. If not present, the device consumes its resources
out of a global pool."

Where the global pool I _assume_ is the GSI domain, so it is the default
expected behaviour (for once :))

> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  drivers/acpi/irq.c   | 20 ++++++++++++++++++++
>  include/linux/acpi.h |  7 +++++++
>  2 files changed, 27 insertions(+)
> 
> diff --git a/drivers/acpi/irq.c b/drivers/acpi/irq.c
> index c3b2222e2129..39824a6bbcd5 100644
> --- a/drivers/acpi/irq.c
> +++ b/drivers/acpi/irq.c
> @@ -295,3 +295,23 @@ void __init acpi_set_irq_model(enum acpi_irq_model_id model,
>  	acpi_irq_model = model;
>  	acpi_gsi_domain_id = fwnode;
>  }
> +
> +/**
> + * acpi_irq_create_hierarchy - Create a hierarchical IRQ domain with the default
> + *                             GSI domain as its parent.

Yes please comment parameters even if it is just a wrapper around
the IRQ domain API.

> +struct irq_domain *acpi_irq_create_hierarchy(unsigned int flags,
> +					     unsigned int size,
> +					     struct fwnode_handle *fwnode,
> +					     const struct irq_domain_ops *ops,
> +					     void *host_data)
> +{
> +	struct irq_domain *d = irq_find_matching_fwnode(acpi_gsi_domain_id,
> +							DOMAIN_BUS_ANY);
> +
> +	if (!d)
> +		return NULL;
> +
> +	return irq_domain_create_hierarchy(d, flags, size, fwnode, ops,
> +					   host_data);
> +}
> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> index 98440df7fe42..70de4bc30cea 100644
> --- a/include/linux/acpi.h
> +++ b/include/linux/acpi.h
> @@ -23,6 +23,7 @@
>  
>  #include <linux/errno.h>
>  #include <linux/ioport.h>	/* for struct resource */
> +#include <linux/irqdomain.h>
>  #include <linux/resource_ext.h>
>  #include <linux/device.h>
>  #include <linux/property.h>
> @@ -327,6 +328,12 @@ int acpi_isa_irq_to_gsi (unsigned isa_irq, u32 *gsi);
>  void acpi_set_irq_model(enum acpi_irq_model_id model,
>  			struct fwnode_handle *fwnode);
>  
> +struct irq_domain *acpi_irq_create_hierarchy(unsigned int flags,
> +					     unsigned int size,
> +					     struct fwnode_handle *fwnode,
> +					     const struct irq_domain_ops *ops,
> +					     void *host_data);
> +
>  #ifdef CONFIG_X86_IO_APIC
>  extern int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity);
>  #else

Reviewed-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
