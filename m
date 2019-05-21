Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6445825456
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfb2i9JBtLMKts+vb0Z2EeDiV5Q2CusrN/mqnpZHyT0=; b=UXL0YR5jtw7iyn
	egh8PVKUBvCQT/5y6diFciQgjnGDWvhDsCYR2w7kTHz5054bUtUYAEWRET9Vm6zyjXXSf+DbWOn3r
	Zd9lW3Fzo+xOcNrXSYktaxVx0QNCZZhtGILGlsKiAeDy1itKZm20QcnvKO8EshpF2jELuKGRmVUZM
	G9LWD7JKUeFRZDAEUqHfN5+uST/9cCkRnR8/4V9DvIFq60ssf50RQAvwwEYi7nBmYKqnLOIk8cJaB
	4fMDmeruEVWYd/EsVd134IjH9bllSs+Al8L6ZUm6dRbZKQdpzDXwVZBdeRJl2tDZDKWg5gq5mLQBp
	/eFpav1CNGYtW2BxSRTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6yJ-0007pT-5M; Tue, 21 May 2019 15:46:35 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6xy-0007ey-MG
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:46:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79A8A374;
 Tue, 21 May 2019 08:46:09 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2023D3F575; Tue, 21 May 2019 08:46:03 -0700 (PDT)
Subject: Re: [PATCH v4 08/10] ata: ahci: mvebu: Add support for A8k legacy DT
 bindings
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jens Axboe <axboe@kernel.dk>, Hans de Goede <hdegoede@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>
References: <20190521143023.31810-1-miquel.raynal@bootlin.com>
 <20190521143023.31810-9-miquel.raynal@bootlin.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
Organization: ARM Ltd
Message-ID: <04cd3174-6857-4552-293d-5f25caa189a7@arm.com>
Date: Tue, 21 May 2019 16:46:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521143023.31810-9-miquel.raynal@bootlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_084614_736496_1CA7A046 
X-CRM114-Status: GOOD (  28.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, linux-ide@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/05/2019 15:30, Miquel Raynal wrote:
> The CP110 SATA unit has 2 ports, and a dedicated ICU entry per
> port. In the past, the AHCI SATA driver only supported one interrupt
> per SATA unit. To solve this conflict, the 2 SATA wired interrupts in
> the South-Bridge got configured as 1 GIC interrupt in the
> North-Bridge, regardless of the number of SATA ports actually
> enabled/in use, and the DT bindings only referenced the interrupt of
> one port.
> 
> Since then, this limitation has been addressed and this patch ensures
> backward compatibility with old DTs not describing SATA ports
> correctly directly from the AHCI MVEBU driver. This way, we will be
> able to drop the hack from the ICU driver. IOW, when the A8k
> compatible string is used and there is no sub-nodes in the DT, we
> fake the creation and mapping of the second (missing) interrupt.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/ata/ahci_mvebu.c       | 29 ++++++++++++++++++++++++++++-
>  drivers/ata/libahci_platform.c |  3 +++
>  include/linux/ahci_platform.h  |  1 +
>  3 files changed, 32 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/ata/ahci_mvebu.c b/drivers/ata/ahci_mvebu.c
> index 8671aa8179fa..8c981b8d6e4d 100644
> --- a/drivers/ata/ahci_mvebu.c
> +++ b/drivers/ata/ahci_mvebu.c
> @@ -16,6 +16,7 @@
>  #include <linux/mbus.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
> +#include <linux/of_irq.h>
>  #include <linux/platform_device.h>
>  #include "ahci.h"
>  
> @@ -28,9 +29,13 @@
>  #define AHCI_WINDOW_BASE(win)	(0x64 + ((win) << 4))
>  #define AHCI_WINDOW_SIZE(win)	(0x68 + ((win) << 4))
>  
> +#define ICU_SATA0_ICU_ID 109
> +#define ICU_SATA1_ICU_ID 107
> +
>  struct ahci_mvebu_plat_data {
>  	int (*plat_config)(struct ahci_host_priv *hpriv, struct device *dev);
>  	unsigned int host_flags;
> +	unsigned int resource_flags;
>  };
>  
>  static void ahci_mvebu_mbus_config(struct ahci_host_priv *hpriv,
> @@ -101,6 +106,27 @@ static int ahci_mvebu_armada_3700_config(struct ahci_host_priv *hpriv,
>  static int ahci_mvebu_armada_8k_config(struct ahci_host_priv *hpriv,
>  				       struct device *dev)
>  {
> +	struct device_node *np = of_irq_find_parent(dev->of_node);
> +	struct irq_data *irqd = irq_get_irq_data(hpriv->irqs[0]);
> +	int host_irq = irqd ? irqd_to_hwirq(irqd) : 0;
> +	int missing_irq = (host_irq == ICU_SATA1_ICU_ID) ?
> +		ICU_SATA0_ICU_ID : ICU_SATA1_ICU_ID;
> +	struct irq_fwspec fwspec = {
> +		.fwnode = of_node_to_fwnode(np),
> +		.param_count = 2,
> +		.param = {missing_irq, IRQ_TYPE_LEVEL_HIGH},
> +	};
> +
> +	if (of_get_child_count(dev->of_node))
> +		return 0;
> +
> +	hpriv->irqs[1] = irq_create_fwspec_mapping(&fwspec);
> +	if (hpriv->irqs[1]) {
> +		hpriv->flags |= AHCI_HFLAG_MULTI_MSI;
> +		hpriv->get_irq_vector = ahci_get_per_port_irq_vector;
> +		hpriv->mask_port_map = GENMASK(1, 0);
> +	}
> +
>  	return 0;
>  }
>  
> @@ -200,7 +226,7 @@ static int ahci_mvebu_probe(struct platform_device *pdev)
>  	if (!pdata)
>  		return -EINVAL;
>  
> -	hpriv = ahci_platform_get_resources(pdev, 0);
> +	hpriv = ahci_platform_get_resources(pdev, pdata->resource_flags);

This seems to be the only use of resource_flags in the whole series. Why
can't you just pass AHCI_PLATFORM_A8K_QUIRK as a parameter and not
allocate an extra field in the platform data structure?

>  	if (IS_ERR(hpriv))
>  		return PTR_ERR(hpriv);
>  
> @@ -240,6 +266,7 @@ static const struct ahci_mvebu_plat_data ahci_mvebu_armada_3700_plat_data = {
>  
>  static const struct ahci_mvebu_plat_data ahci_mvebu_armada_8k_plat_data = {
>  	.plat_config = ahci_mvebu_armada_8k_config,
> +	.resource_flags = AHCI_PLATFORM_A8K_QUIRK,
>  };
>  
>  static const struct of_device_id ahci_mvebu_of_match[] = {
> diff --git a/drivers/ata/libahci_platform.c b/drivers/ata/libahci_platform.c
> index 347ff14aedd2..620e5f27fdd7 100644
> --- a/drivers/ata/libahci_platform.c
> +++ b/drivers/ata/libahci_platform.c
> @@ -484,6 +484,9 @@ struct ahci_host_priv *ahci_platform_get_resources(struct platform_device *pdev,
>  	if (!child_nodes)
>  		hpriv->nports = 1;
>  
> +	if (!child_nodes && flags & AHCI_PLATFORM_A8K_QUIRK)

Consider using braces around the bitwise operators.

> +		hpriv->nports = 2;
> +
>  	hpriv->phys = devm_kcalloc(dev, hpriv->nports, sizeof(*hpriv->phys), GFP_KERNEL);
>  	if (!hpriv->phys) {
>  		rc = -ENOMEM;
> diff --git a/include/linux/ahci_platform.h b/include/linux/ahci_platform.h
> index eaedca5fe6fc..57465ba6bb15 100644
> --- a/include/linux/ahci_platform.h
> +++ b/include/linux/ahci_platform.h
> @@ -44,5 +44,6 @@ int ahci_platform_suspend(struct device *dev);
>  int ahci_platform_resume(struct device *dev);
>  
>  #define AHCI_PLATFORM_GET_RESETS	0x01
> +#define AHCI_PLATFORM_A8K_QUIRK		0x02
>  
>  #endif /* _AHCI_PLATFORM_H */
> 

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
