Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C6727961
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptQ9+qHNy6+RcPIJ1F3EFmMIF/8IzpM6xs2jwHX5ExE=; b=VUcg80UDRiYabU
	hEVvK+yC7Sagf19yDsFl3krmkcaaKVnLVlAlWFTMpGE3QtcHFyyNNktTrHjH2skusp9D1wvG8kMCh
	vRFN9RCq2swp5O/xQHynRTDI6X3E/1PXUd//xT7MAknkeSI1h9RpTlVFnh5BWmclqSXqNEVgmEi6g
	R0uvK4NWY8YmhTvMd5+bfIItFueZD/LUr799yNUFbtn6shlc8gq6zp9LOPDapDVIL9oD9yr8tT+o7
	uN7z0AwCDOxYtvLQkiNCNWUoFvgUY26wgSzmETSxVGv/c+pCF5Z0RpwdIbU3VZEaPqmI9SOjAE0VW
	YoWDcCQWPJau7MIXSMSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTk9K-0000nx-Op; Thu, 23 May 2019 09:36:34 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hTk9B-0000my-7A; Thu, 23 May 2019 09:36:25 +0000
Date: Thu, 23 May 2019 02:36:25 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 02/10] ata: ahci: Support per-port interrupts
Message-ID: <20190523093625.GA26136@infradead.org>
References: <20190521143023.31810-1-miquel.raynal@bootlin.com>
 <20190521143023.31810-3-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521143023.31810-3-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Marc Zyngier <marc.zyngier@arm.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Hans de Goede <hdegoede@redhat.com>,
 Rob Herring <robh+dt@kernel.org>, Antoine Tenart <antoine.tenart@bootlin.com>,
 Jens Axboe <axboe@kernel.dk>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-ide@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> --- a/drivers/ata/acard-ahci.c
> +++ b/drivers/ata/acard-ahci.c
> @@ -434,7 +434,7 @@ static int acard_ahci_init_one(struct pci_dev *pdev, const struct pci_device_id
>  	if (!hpriv)
>  		return -ENOMEM;
>  
> -	hpriv->irq = pdev->irq;
> +	hpriv->irqs[0] = pdev->irq;
>  	hpriv->flags |= (unsigned long)pi.private_data;

Who allocates ->irqs for the non-ahci.c case?

> @@ -95,6 +96,14 @@ static void ahci_platform_disable_phys(struct ahci_host_priv *hpriv)
>  	}
>  }
>  
> +int ahci_get_per_port_irq_vector(struct ata_host *host, int port)
> +{
> +	struct ahci_host_priv *hpriv = host->private_data;
> +
> +	return hpriv->irqs[port];
> +}
> +EXPORT_SYMBOL_GPL(ahci_get_per_port_irq_vector);

This function seems a little misnamed.  The only multi-irq support in
the AHCI spec itself is PCIe MSI/MSI-X, which is not handled by this
function, but instead in the PCI layer using pci_irq_vector and the
ahci_get_irq_vector callback in ahci.c.

In fact it seems like this scheme particular to your device config,
why don't we just add a specific libahci-using subdriver for it?  That
would also get rid of the whole ->irq to ->irqs change.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
