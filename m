Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EA1138F2D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AlWOLdtU3rltfG+NGfvB6IJ5ZBAtEp5SW0ltWjM36/8=; b=iFVLmccen+9S83
	GRpoAKGkdog7kEPyObHKDJmCIUzka0EGLlZcv9KIHUi3mgv4qW2YU1MgGjK8IY7dXWTZXWJ5blea8
	Lu8OAf+A6TyTx3AuTbedANJWuR25/czVdyJGkK1UP+zOD5Zkupf4GEWOZA/JohU4wxDuw1XqVvGpr
	kHzW1B9juLB/c1wMrhqvS/zeV6MMe4kxuBiK19yKBG+mN2GYq8E8ozXSaW/MyPeVjY744vxEyQKZv
	RpJ+a+RKjN9ku4nAr5pLFlGbdDXaZ+jASEpUC3Va46KUdjdCLCib/AUBzb755UK6lGFyp3f7OhV57
	HRjtvUAHjoCVvYtj2AyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqx3V-0004NJ-EA; Mon, 13 Jan 2020 10:34:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqx3L-0004Mq-U5
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:34:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 802DD13D5;
 Mon, 13 Jan 2020 02:34:35 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 926413F534;
 Mon, 13 Jan 2020 02:34:34 -0800 (PST)
Date: Mon, 13 Jan 2020 10:34:32 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv9 03/12] PCI: mobiveil: Collect the interrupt related
 operations into a routine
Message-ID: <20200113103431.GI42593@e119886-lin.cambridge.arm.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <20191120034451.30102-4-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120034451.30102-4-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_023436_063697_5E8E250D 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 03:45:37AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> Collect the interrupt initialization related operations into
> a new routine to make it more readable.

I prefer the word 'function' instead of routine. Also indicate why, not only
is it nicer but it is in preparation for EP support.

> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> ---
> V9:
>  - New patch splited from the #1 of V8 patches to make it easy to review.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 65 +++++++++++++++++---------
>  1 file changed, 42 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index 97f682ca7c7a..512b27a0536e 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -454,12 +454,6 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
>  		return PTR_ERR(pcie->csr_axi_slave_base);
>  	pcie->pcie_reg_base = res->start;
>  
> -	/* map MSI config resource */
> -	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "apb_csr");
> -	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
> -	if (IS_ERR(pcie->apb_csr_base))
> -		return PTR_ERR(pcie->apb_csr_base);
> -
>  	/* read the number of windows requested */
>  	if (of_property_read_u32(node, "apio-wins", &pcie->apio_wins))
>  		pcie->apio_wins = MAX_PIO_WINDOWS;
> @@ -467,12 +461,6 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
>  	if (of_property_read_u32(node, "ppio-wins", &pcie->ppio_wins))
>  		pcie->ppio_wins = MAX_PIO_WINDOWS;
>  
> -	rp->irq = platform_get_irq(pdev, 0);
> -	if (rp->irq <= 0) {
> -		dev_err(dev, "failed to map IRQ: %d\n", rp->irq);
> -		return -ENODEV;
> -	}
> -
>  	return 0;
>  }
>  
> @@ -618,9 +606,6 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  	pab_ctrl |= (1 << AMBA_PIO_ENABLE_SHIFT) | (1 << PEX_PIO_ENABLE_SHIFT);
>  	mobiveil_csr_writel(pcie, pab_ctrl, PAB_CTRL);
>  
> -	mobiveil_csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
> -			    PAB_INTP_AMBA_MISC_ENB);
> -
>  	/*
>  	 * program PIO Enable Bit to 1 and Config Window Enable Bit to 1 in
>  	 * PAB_AXI_PIO_CTRL Register
> @@ -670,9 +655,6 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  	value |= (PCI_CLASS_BRIDGE_PCI << 16);
>  	mobiveil_csr_writel(pcie, value, PAB_INTP_AXI_PIO_CLASS);
>  
> -	/* setup MSI hardware registers */
> -	mobiveil_pcie_enable_msi(pcie);
> -
>  	return 0;
>  }
>  
> @@ -873,6 +855,46 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
>  	return 0;
>  }
>  
> +static int mobiveil_pcie_interrupt_init(struct mobiveil_pcie *pcie)
> +{
> +	struct platform_device *pdev = pcie->pdev;
> +	struct device *dev = &pdev->dev;
> +	struct root_port *rp = &pcie->rp;
> +	struct resource *res;
> +	int ret;
> +
> +	/* map MSI config resource */
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "apb_csr");
> +	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
> +	if (IS_ERR(pcie->apb_csr_base))
> +		return PTR_ERR(pcie->apb_csr_base);
> +
> +	/* setup MSI hardware registers */
> +	mobiveil_pcie_enable_msi(pcie);

Does this need to come after mobiveil_pcie_init_irq_domain - given that
this function sets up the irq domain for MSI?

Thanks,

Andrew Murray

> +
> +	rp->irq = platform_get_irq(pdev, 0);
> +	if (rp->irq <= 0) {
> +		dev_err(dev, "failed to map IRQ: %d\n", rp->irq);
> +		return -ENODEV;
> +	}
> +
> +	/* initialize the IRQ domains */
> +	ret = mobiveil_pcie_init_irq_domain(pcie);
> +	if (ret) {
> +		dev_err(dev, "Failed creating IRQ Domain\n");
> +		return ret;
> +	}
> +
> +	irq_set_chained_handler_and_data(rp->irq, mobiveil_pcie_isr, pcie);
> +
> +	/* Enable interrupts */
> +	mobiveil_csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
> +			    PAB_INTP_AMBA_MISC_ENB);
> +
> +
> +	return 0;
> +}
> +
>  int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
>  {
>  	struct root_port *rp = &pcie->rp;
> @@ -906,15 +928,12 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
>  		return ret;
>  	}
>  
> -	/* initialize the IRQ domains */
> -	ret = mobiveil_pcie_init_irq_domain(pcie);
> +	ret = mobiveil_pcie_interrupt_init(pcie);
>  	if (ret) {
> -		dev_err(dev, "Failed creating IRQ Domain\n");
> +		dev_err(dev, "Interrupt init failed\n");
>  		return ret;
>  	}
>  
> -	irq_set_chained_handler_and_data(rp->irq, mobiveil_pcie_isr, pcie);
> -
>  	/* Initialize bridge */
>  	bridge->dev.parent = dev;
>  	bridge->sysdata = pcie;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
