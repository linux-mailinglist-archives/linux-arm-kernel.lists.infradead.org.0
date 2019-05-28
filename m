Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22C52C410
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wK6Li8GwJGNnzvAvjlef09QhgfD3OR2p/OKsEGSeLyY=; b=Mpt/gl0KSr4Oc5
	tAidkmGXaR2jonV6Cyy8cMxoksID2vkQP4Vj+1jI1kp8a4CexQL/IxLhviF1ZlfUCP8xz7wzmd60r
	CPO1kN3Bs7kUhje7TnXgZ+wO4MpMDMwp3bK5RAHlcVff4fXP3DENFiJCGZXMiZY8d8iSSbSSGApsq
	lUiC7eQjbdwBpCirlDkHAo250hnI0Rtk4Rpy9qaw3WnOxy5llmKq8sW01YwUt2pcRqH3nkqSzmVvf
	NWu0eLI66fjYFAcG4OI1cHDSnpPpZxN5zRAyOO0IoULSmYBjebmZUkARPQHjQIZshe0yiUeDlUBpd
	0g4JfZW8lP8m5syU80Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZ6I-0007cN-Ml; Tue, 28 May 2019 10:12:58 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZ6B-0007bp-Tp
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 10:12:53 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 03:12:51 -0700
X-ExtLoop1: 1
Received: from lahna.fi.intel.com (HELO lahna) ([10.237.72.157])
 by fmsmga001.fm.intel.com with SMTP; 28 May 2019 03:12:47 -0700
Received: by lahna (sSMTP sendmail emulation); Tue, 28 May 2019 13:12:46 +0300
Date: Tue, 28 May 2019 13:12:46 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v3 3/4] irqchip/exiu: implement ACPI support
Message-ID: <20190528101246.GX2781@lahna.fi.intel.com>
References: <20190527112720.2266-1-ard.biesheuvel@linaro.org>
 <20190527112720.2266-4-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527112720.2266-4-ard.biesheuvel@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_031251_971978_5F244D89 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Graeme Gregory <graeme.gregory@linaro.org>, linux-gpio@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 01:27:19PM +0200, Ard Biesheuvel wrote:
> Expose the existing EXIU hierarchical irqchip domain code to permit
> the interrupt controller to be used as the irqchip component of a
> GPIO controller on ACPI systems, or as the target of ordinary
> interrupt resources.
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  drivers/irqchip/irq-sni-exiu.c | 76 +++++++++++++++++---
>  1 file changed, 68 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-sni-exiu.c b/drivers/irqchip/irq-sni-exiu.c
> index fef7c2437dfb..30a323a2b332 100644
> --- a/drivers/irqchip/irq-sni-exiu.c
> +++ b/drivers/irqchip/irq-sni-exiu.c
> @@ -20,6 +20,7 @@
>  #include <linux/of.h>
>  #include <linux/of_address.h>
>  #include <linux/of_irq.h>
> +#include <linux/platform_device.h>
>  
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  
> @@ -134,9 +135,13 @@ static int exiu_domain_translate(struct irq_domain *domain,
>  
>  		*hwirq = fwspec->param[1] - info->spi_base;
>  		*type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
> -		return 0;
> +	} else {
> +		if (fwspec->param_count != 2)
> +			return -EINVAL;
> +		*hwirq = fwspec->param[0];
> +		*type = fwspec->param[2] & IRQ_TYPE_SENSE_MASK;
>  	}
> -	return -EINVAL;
> +	return 0;
>  }
>  
>  static int exiu_domain_alloc(struct irq_domain *dom, unsigned int virq,
> @@ -147,16 +152,21 @@ static int exiu_domain_alloc(struct irq_domain *dom, unsigned int virq,
>  	struct exiu_irq_data *info = dom->host_data;
>  	irq_hw_number_t hwirq;
>  
> -	if (fwspec->param_count != 3)
> -		return -EINVAL;	/* Not GIC compliant */
> -	if (fwspec->param[0] != GIC_SPI)
> -		return -EINVAL;	/* No PPI should point to this domain */
> +	parent_fwspec = *fwspec;
> +	if (is_of_node(dom->parent->fwnode)) {
> +		if (fwspec->param_count != 3)
> +			return -EINVAL;	/* Not GIC compliant */
> +		if (fwspec->param[0] != GIC_SPI)
> +			return -EINVAL;	/* No PPI should point to this domain */
>  
> +		hwirq = fwspec->param[1] - info->spi_base;
> +	} else {
> +		hwirq = fwspec->param[0];
> +		parent_fwspec.param[0] = hwirq + info->spi_base + 32;
> +	}
>  	WARN_ON(nr_irqs != 1);
> -	hwirq = fwspec->param[1] - info->spi_base;
>  	irq_domain_set_hwirq_and_chip(dom, virq, hwirq, &exiu_irq_chip, info);
>  
> -	parent_fwspec = *fwspec;
>  	parent_fwspec.fwnode = dom->parent->fwnode;
>  	return irq_domain_alloc_irqs_parent(dom, virq, nr_irqs, &parent_fwspec);
>  }
> @@ -245,3 +255,53 @@ static int __init exiu_dt_init(struct device_node *node,
>  	return -ENOMEM;
>  }
>  IRQCHIP_DECLARE(exiu, "socionext,synquacer-exiu", exiu_dt_init);
> +
> +#ifdef CONFIG_ACPI
> +static int exiu_acpi_probe(struct platform_device *pdev)
> +{
> +	struct irq_domain *domain;
> +	struct exiu_irq_data *data;
> +	struct resource *res;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res) {
> +		dev_err(&pdev->dev, "failed to parse memory resource\n");
> +		return -ENXIO;
> +	}
> +
> +	data = exiu_init(dev_fwnode(&pdev->dev), res);
> +	if (IS_ERR(data))
> +		return PTR_ERR(data);
> +
> +	domain = acpi_irq_create_hierarchy(0, NUM_IRQS, dev_fwnode(&pdev->dev),
> +					   &exiu_domain_ops, data);
> +	if (!domain) {
> +		dev_err(&pdev->dev, "failed to create IRQ domain\n");
> +		goto out_unmap;
> +	}
> +
> +	dev_info(&pdev->dev, "%d interrupts forwarded\n", NUM_IRQS);

Not sure how useful this message is for the end user. Maybe dev_dbg()
instead.

Regardless,

Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
