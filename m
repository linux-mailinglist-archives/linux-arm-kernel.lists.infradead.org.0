Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D317819424B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:04:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nbm7MqgCybYnU85bYqvznyfaBBTGWSgUuhx+ZkhPnGo=; b=adhKoWPryms1xBy8jovK/tBpa
	Myobrkus6ERswOTdwv45XArMn0HN/P5bYd7MfjfQ1ZngTgFjd+SRF/N9wB/S8KX6zjlv1JfE3bxZo
	UFo4BzmO1ALxTQlwYSpAM/RicksQ5dVwx5etqRYSLzhQPW6k6GuX9w5E9ZdAD2S/VGDhCvRnd+zoO
	Ga+JaziL2uE3Exs9kXxviupcG+sX4BbjN8n/vseqlLppUE35GGkbEuUDAHAaYIRA69ZUgqO4vRMN6
	qnywrzTxEegX6iHXUgDneTe65+lZniEmSGnkMmeP1+pEotH2+y2dFqMk3mT1SscVZIK3aYEP98ald
	tPhqmPYuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHU2j-0000vf-QP; Thu, 26 Mar 2020 15:03:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHU2Y-0000v6-RB
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:03:28 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B3E620737;
 Thu, 26 Mar 2020 15:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585235006;
 bh=MXb6XpOGxQbM85Tau7YPsMBsvxzHK2pdQHLoMHX0Hk8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WnrG1f96fK/Q2kTcF1HR5jYEl3PzNRDsh6/eLtav6aWLx2sc1tKvW8RJYDLXSTCIK
 0WAaQdMsCHLjhpOr0ZnF7SRqrZ5sIMtJwCAkMTohTOj/UAf6wNsbu34Hf8VT3p9tvt
 n6bauRnP+vUVU/5VAyvtW5i84Kt6c0KcYc0mJt4Q=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jHU2W-00FuQU-Jw; Thu, 26 Mar 2020 15:03:24 +0000
MIME-Version: 1.0
Date: Thu, 26 Mar 2020 15:03:24 +0000
From: Marc Zyngier <maz@kernel.org>
To: Srinath Mannam <srinath.mannam@broadcom.com>
Subject: Re: [PATCH v5 2/6] PCI: iproc: Add INTx support with better modeling
In-Reply-To: <1585205326-25326-3-git-send-email-srinath.mannam@broadcom.com>
References: <1585205326-25326-1-git-send-email-srinath.mannam@broadcom.com>
 <1585205326-25326-3-git-send-email-srinath.mannam@broadcom.com>
Message-ID: <e50c9dbf8b584696c8da54f7688e5faa@misterjones.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: srinath.mannam@broadcom.com, lorenzo.pieralisi@arm.com,
 bhelgaas@google.com, f.fainelli@gmail.com, rjui@broadcom.com,
 robh+dt@kernel.org, andrew.murray@arm.com, mark.rutland@arm.com,
 andy.shevchenko@gmail.com, arnd@arndb.de, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, ray.jui@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_080326_923692_EFEFD8C3 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Ray Jui <ray.jui@broadcom.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-26 06:48, Srinath Mannam wrote:
> From: Ray Jui <ray.jui@broadcom.com>
> 
> Add PCIe legacy interrupt INTx support to the iProc PCIe driver by
> modeling it with its own IRQ domain. All 4 interrupts INTA, INTB, INTC,
> INTD share the same interrupt line connected to the GIC in the system,
> while the status of each INTx can be obtained through the INTX CSR
> register.
> 
> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  drivers/pci/controller/pcie-iproc.c | 147 
> +++++++++++++++++++++++++++++++++++-
>  drivers/pci/controller/pcie-iproc.h |   8 ++
>  2 files changed, 153 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-iproc.c
> b/drivers/pci/controller/pcie-iproc.c
> index 0a468c7..62d8f43 100644
> --- a/drivers/pci/controller/pcie-iproc.c
> +++ b/drivers/pci/controller/pcie-iproc.c
> @@ -14,6 +14,7 @@
>  #include <linux/delay.h>
>  #include <linux/interrupt.h>
>  #include <linux/irqchip/arm-gic-v3.h>
> +#include <linux/irqchip/chained_irq.h>
>  #include <linux/platform_device.h>
>  #include <linux/of_address.h>
>  #include <linux/of_pci.h>
> @@ -270,6 +271,7 @@ enum iproc_pcie_reg {
> 
>  	/* enable INTx */
>  	IPROC_PCIE_INTX_EN,
> +	IPROC_PCIE_INTX_CSR,
> 
>  	/* outbound address mapping */
>  	IPROC_PCIE_OARR0,
> @@ -314,6 +316,7 @@ static const u16 iproc_pcie_reg_paxb_bcma[] = {
>  	[IPROC_PCIE_CFG_ADDR]		= 0x1f8,
>  	[IPROC_PCIE_CFG_DATA]		= 0x1fc,
>  	[IPROC_PCIE_INTX_EN]		= 0x330,
> +	[IPROC_PCIE_INTX_CSR]		= 0x334,
>  	[IPROC_PCIE_LINK_STATUS]	= 0xf0c,
>  };
> 
> @@ -325,6 +328,7 @@ static const u16 iproc_pcie_reg_paxb[] = {
>  	[IPROC_PCIE_CFG_ADDR]		= 0x1f8,
>  	[IPROC_PCIE_CFG_DATA]		= 0x1fc,
>  	[IPROC_PCIE_INTX_EN]		= 0x330,
> +	[IPROC_PCIE_INTX_CSR]		= 0x334,
>  	[IPROC_PCIE_OARR0]		= 0xd20,
>  	[IPROC_PCIE_OMAP0]		= 0xd40,
>  	[IPROC_PCIE_OARR1]		= 0xd28,
> @@ -341,6 +345,7 @@ static const u16 iproc_pcie_reg_paxb_v2[] = {
>  	[IPROC_PCIE_CFG_ADDR]		= 0x1f8,
>  	[IPROC_PCIE_CFG_DATA]		= 0x1fc,
>  	[IPROC_PCIE_INTX_EN]		= 0x330,
> +	[IPROC_PCIE_INTX_CSR]		= 0x334,
>  	[IPROC_PCIE_OARR0]		= 0xd20,
>  	[IPROC_PCIE_OMAP0]		= 0xd40,
>  	[IPROC_PCIE_OARR1]		= 0xd28,
> @@ -846,9 +851,142 @@ static int iproc_pcie_check_link(struct 
> iproc_pcie *pcie)
>  	return link_is_active ? 0 : -ENODEV;
>  }
> 
> -static void iproc_pcie_enable(struct iproc_pcie *pcie)
> +static void iproc_pcie_mask_irq(struct irq_data *d)
>  {
> +	struct iproc_pcie *pcie = irq_data_get_irq_chip_data(d);
> +	u32 val;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&pcie->intx_lock, flags);

As Arnd already noticed, this needs to be defined as  a raw spinlock.

> +	val =  iproc_pcie_read_reg(pcie, IPROC_PCIE_INTX_EN);
> +	val &= ~(BIT(irqd_to_hwirq(d)));
> +	iproc_pcie_write_reg(pcie, IPROC_PCIE_INTX_EN, val);
> +	spin_unlock_irqrestore(&pcie->intx_lock, flags);
> +}
> +
> +static void iproc_pcie_unmask_irq(struct irq_data *d)
> +{
> +	struct iproc_pcie *pcie = irq_data_get_irq_chip_data(d);
> +	u32 val;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&pcie->intx_lock, flags);
> +	val =  iproc_pcie_read_reg(pcie, IPROC_PCIE_INTX_EN);
> +	val |= (BIT(irqd_to_hwirq(d)));
> +	iproc_pcie_write_reg(pcie, IPROC_PCIE_INTX_EN, val);
> +	spin_unlock_irqrestore(&pcie->intx_lock, flags);
> +}
> +
> +static struct irq_chip iproc_pcie_irq_chip = {
> +	.name = "pcie-iproc-intc",
> +	.irq_enable = iproc_pcie_unmask_irq,
> +	.irq_disable = iproc_pcie_mask_irq,

No. Either the enable/disable callbacks are different from unmask/mask,
or they don't exist.

- A disabled interrupt is free to loose pending interrupts
- A masked interrupt doesn't loose interrupts.

I'm pretty sure yours is the latter.

> +	.irq_mask = iproc_pcie_mask_irq,
> +	.irq_unmask = iproc_pcie_unmask_irq,
> +};
> +
> +static int iproc_pcie_intx_map(struct irq_domain *domain, unsigned int 
> irq,
> +			       irq_hw_number_t hwirq)
> +{
> +	irq_set_chip_and_handler(irq, &iproc_pcie_irq_chip, 
> handle_level_irq);
> +	irq_set_chip_data(irq, domain->host_data);
> +
> +	return 0;
> +}
> +
> +static const struct irq_domain_ops intx_domain_ops = {
> +	.map = iproc_pcie_intx_map,
> +};
> +
> +static void iproc_pcie_isr(struct irq_desc *desc)
> +{
> +	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	struct iproc_pcie *pcie;
> +	struct device *dev;
> +	unsigned long status;
> +	u32 bit, virq;
> +
> +	chained_irq_enter(chip, desc);
> +	pcie = irq_desc_get_handler_data(desc);
> +	dev = pcie->dev;
> +
> +	/* go through INTx A, B, C, D until all interrupts are handled */
> +	do {
> +		status = iproc_pcie_read_reg(pcie, IPROC_PCIE_INTX_CSR);
> +		for_each_set_bit(bit, &status, PCI_NUM_INTX) {
> +			virq = irq_find_mapping(pcie->irq_domain, bit);
> +			if (virq)
> +				generic_handle_irq(virq);
> +			else
> +				dev_err(dev, "unexpected INTx%u\n", bit);

I'd rather you avoid this kind of unlimited console screaming in 
interrupt
context. Either ratelimit it, or even better turn it into a debug 
statement.

> +		}
> +	} while ((status & SYS_RC_INTX_MASK) != 0);
> +
> +	chained_irq_exit(chip, desc);
> +}
> +
> +static int iproc_pcie_intx_enable(struct iproc_pcie *pcie)
> +{
> +	struct device *dev = pcie->dev;
> +	struct device_node *node;
> +	int ret;
> +
> +	/*
> +	 * BCMA devices do not map INTx the same way as platform devices. All
> +	 * BCMA needs below line to enable INTx
> +	 */
>  	iproc_pcie_write_reg(pcie, IPROC_PCIE_INTX_EN, SYS_RC_INTX_MASK);
> +
> +	node = of_get_compatible_child(dev->of_node, "brcm,iproc-intc");
> +	if (node)
> +		pcie->irq = of_irq_get(node, 0);
> +
> +	if (!node || pcie->irq <= 0)
> +		return 0;
> +
> +	spin_lock_init(&pcie->intx_lock);
> +
> +	/* set IRQ handler */
> +	irq_set_chained_handler_and_data(pcie->irq, iproc_pcie_isr, pcie);

Please do this last, once the domain is allocated (you leave a window 
where
a screaming interrupt can fire here).

> +
> +	/* add IRQ domain for INTx */
> +	pcie->irq_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
> +						 &intx_domain_ops, pcie);
> +	if (!pcie->irq_domain) {
> +		dev_err(dev, "failed to add INTx IRQ domain\n");
> +		ret = -ENOMEM;
> +		goto err_rm_handler_data;
> +	}
> +
> +	return 0;
> +
> +err_rm_handler_data:
> +	of_node_put(node);
> +	irq_set_chained_handler_and_data(pcie->irq, NULL, NULL);
> +
> +	return ret;
> +}
> +
> +static void iproc_pcie_intx_disable(struct iproc_pcie *pcie)
> +{
> +	uint32_t offset, virq;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&pcie->intx_lock, flags);
> +	iproc_pcie_write_reg(pcie, IPROC_PCIE_INTX_EN, 0x0);
> +	spin_unlock_irqrestore(&pcie->intx_lock, flags);

What's the reason for this lock/unlock? What are you racing against?

> +
> +	if (pcie->irq <= 0)
> +		return;
> +
> +	for (offset = 0; offset < PCI_NUM_INTX; offset++) {
> +		virq = irq_find_mapping(pcie->irq_domain, offset);
> +		if (virq)
> +			irq_dispose_mapping(virq);
> +	}
> +
> +	irq_domain_remove(pcie->irq_domain);
> +	irq_set_chained_handler_and_data(pcie->irq, NULL, NULL);

The other way around: first you disconnect the interrupt, then you
free the data that the interrupt can make use of.

>  }
> 
>  static inline bool iproc_pcie_ob_is_valid(struct iproc_pcie *pcie,
> @@ -1518,7 +1656,11 @@ int iproc_pcie_setup(struct iproc_pcie *pcie,
> struct list_head *res)
>  		goto err_power_off_phy;
>  	}
> 
> -	iproc_pcie_enable(pcie);
> +	ret = iproc_pcie_intx_enable(pcie);
> +	if (ret) {
> +		dev_err(dev, "failed to enable INTx\n");
> +		goto err_power_off_phy;
> +	}
> 
>  	if (IS_ENABLED(CONFIG_PCI_MSI))
>  		if (iproc_pcie_msi_enable(pcie))
> @@ -1562,6 +1704,7 @@ int iproc_pcie_remove(struct iproc_pcie *pcie)
>  	pci_remove_root_bus(pcie->root_bus);
> 
>  	iproc_pcie_msi_disable(pcie);
> +	iproc_pcie_intx_disable(pcie);
> 
>  	phy_power_off(pcie->phy);
>  	phy_exit(pcie->phy);
> diff --git a/drivers/pci/controller/pcie-iproc.h
> b/drivers/pci/controller/pcie-iproc.h
> index 4f03ea5..787bfba 100644
> --- a/drivers/pci/controller/pcie-iproc.h
> +++ b/drivers/pci/controller/pcie-iproc.h
> @@ -74,9 +74,13 @@ struct iproc_msi;
>   * @ib: inbound mapping related parameters
>   * @ib_map: outbound mapping region related parameters
>   *
> + * @irq: interrupt line wired to the generic GIC for INTx
> + * @irq_domain: IRQ domain for INTx
> + *
>   * @need_msi_steer: indicates additional configuration of the iProc 
> PCIe
>   * controller is required to steer MSI writes to external interrupt 
> controller
>   * @msi: MSI data
> + * @intx_lock: spinlock to protect access to INTx related registers
>   */
>  struct iproc_pcie {
>  	struct device *dev;
> @@ -102,8 +106,12 @@ struct iproc_pcie {
>  	struct iproc_pcie_ib ib;
>  	const struct iproc_pcie_ib_map *ib_map;
> 
> +	int irq;
> +	struct irq_domain *irq_domain;
> +
>  	bool need_msi_steer;
>  	struct iproc_msi *msi;
> +	spinlock_t intx_lock;
>  };
> 
>  int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res);

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
