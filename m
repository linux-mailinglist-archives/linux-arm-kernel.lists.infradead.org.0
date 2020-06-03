Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2107C1ECE2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q/qOZ720VAfvKv+8J+MiVoHltPL9uZPWg28tLxQg50I=; b=udeWVTr6z+suBJPedXAKQk6if
	VHzoA4ZT7HgEqskuqo0kF0lFWVVphMalP++jcu8Etc/mlo/AziywSpC3R84/20brzqxy94sxphD7Y
	4thMDjVO5cAv/E5iX4B3d/8F5Sb0NYUq9xo5ftXjtbkWHg5+fN1+F5xyuIoPT+o9ZN6S/GQ3Z5X8o
	7VnenXAU0AgHwJnKQ3neRtXVdbAeLN5PJ/XkoS57jp5ARNLPQ1oBXfacpHJVuy7jk2/6+B8ETKioh
	lCIXvBpUwfw0Noud+2nNCOfeYdrGBk18LBhvw7oIpjiLWNj+niDkpFrZhE2/OQDtgxUE1yqUtVXlT
	exdttE4bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRU9-0007Rj-4i; Wed, 03 Jun 2020 11:23:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRTz-0007Qz-Hv
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 11:22:57 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10BBF20679;
 Wed,  3 Jun 2020 11:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591183375;
 bh=ehvrNQX6FKPSKoJdIOQhPL6tv5lcYmRRF/iDa8/fY3A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ynKH/9EW4Vbv+8Ojz1LiRoNZIcvkSWbouyA5BfTwx5gp5BZvof7dRxSb4HXOOlNKw
 VduNFjgv0zIv3AckfNAF6bZazPaphHDprV77c74Xydh3NWvwjCDWmuzjimG7eN5jba
 3nOmwuAei0WpdB6S+2yJHfhZBI/DKyYAPQ4iztPY=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jgRTx-00HQWC-IY; Wed, 03 Jun 2020 12:22:53 +0100
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 12:22:53 +0100
From: Marc Zyngier <maz@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v3 2/6] PCI: uniphier: Add misc interrupt handler to
 invoke PME and AER
In-Reply-To: <1591174481-13975-3-git-send-email-hayashi.kunihiko@socionext.com>
References: <1591174481-13975-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1591174481-13975-3-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <78af3b11de9c513f9be2a1f42f273f27@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: hayashi.kunihiko@socionext.com, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
 robh+dt@kernel.org, yamada.masahiro@socionext.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, masami.hiramatsu@linaro.org,
 jaswinder.singh@linaro.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_042255_636328_A5699709 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-03 09:54, Kunihiko Hayashi wrote:
> The misc interrupts consisting of PME, AER, and Link event, is handled
> by INTx handler, however, these interrupts should be also handled by
> MSI handler.
> 
> This adds the function uniphier_pcie_misc_isr() that handles misc
> intterupts, which is called from both INTx and MSI handlers.

interrupts

> This function detects PME and AER interrupts with the status register,
> and invoke PME and AER drivers related to INTx or MSI.
> 
> And this sets the mask for misc interrupts from INTx if MSI is enabled
> and sets the mask for misc interrupts from MSI if MSI is disabled.
> 
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Jingoo Han <jingoohan1@gmail.com>
> Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pci/controller/dwc/pcie-uniphier.c | 53 
> +++++++++++++++++++++++-------
>  1 file changed, 42 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c
> b/drivers/pci/controller/dwc/pcie-uniphier.c
> index a5401a0..a8dda39 100644
> --- a/drivers/pci/controller/dwc/pcie-uniphier.c
> +++ b/drivers/pci/controller/dwc/pcie-uniphier.c
> @@ -44,7 +44,9 @@
>  #define PCL_SYS_AUX_PWR_DET		BIT(8)
> 
>  #define PCL_RCV_INT			0x8108
> +#define PCL_RCV_INT_ALL_INT_MASK	GENMASK(28, 25)
>  #define PCL_RCV_INT_ALL_ENABLE		GENMASK(20, 17)
> +#define PCL_RCV_INT_ALL_MSI_MASK	GENMASK(12, 9)
>  #define PCL_CFG_BW_MGT_STATUS		BIT(4)
>  #define PCL_CFG_LINK_AUTO_BW_STATUS	BIT(3)
>  #define PCL_CFG_AER_RC_ERR_MSI_STATUS	BIT(2)
> @@ -167,7 +169,15 @@ static void uniphier_pcie_stop_link(struct dw_pcie 
> *pci)
> 
>  static void uniphier_pcie_irq_enable(struct uniphier_pcie_priv *priv)
>  {
> -	writel(PCL_RCV_INT_ALL_ENABLE, priv->base + PCL_RCV_INT);
> +	u32 val;
> +
> +	val = PCL_RCV_INT_ALL_ENABLE;
> +	if (pci_msi_enabled())
> +		val |= PCL_RCV_INT_ALL_INT_MASK;
> +	else
> +		val |= PCL_RCV_INT_ALL_MSI_MASK;
> +
> +	writel(val, priv->base + PCL_RCV_INT);
>  	writel(PCL_RCV_INTX_ALL_ENABLE, priv->base + PCL_RCV_INTX);
>  }
> 
> @@ -231,28 +241,48 @@ static const struct irq_domain_ops
> uniphier_intx_domain_ops = {
>  	.map = uniphier_pcie_intx_map,
>  };
> 
> -static void uniphier_pcie_irq_handler(struct irq_desc *desc)
> +static void uniphier_pcie_misc_isr(struct pcie_port *pp)
>  {
> -	struct pcie_port *pp = irq_desc_get_handler_data(desc);
>  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>  	struct uniphier_pcie_priv *priv = to_uniphier_pcie(pci);
> -	struct irq_chip *chip = irq_desc_get_chip(desc);
> -	unsigned long reg;
> -	u32 val, bit, virq;
> +	u32 val, virq;
> 
> -	/* INT for debug */
>  	val = readl(priv->base + PCL_RCV_INT);
> 
>  	if (val & PCL_CFG_BW_MGT_STATUS)
>  		dev_dbg(pci->dev, "Link Bandwidth Management Event\n");
> +
>  	if (val & PCL_CFG_LINK_AUTO_BW_STATUS)
>  		dev_dbg(pci->dev, "Link Autonomous Bandwidth Event\n");
> -	if (val & PCL_CFG_AER_RC_ERR_MSI_STATUS)
> -		dev_dbg(pci->dev, "Root Error\n");
> -	if (val & PCL_CFG_PME_MSI_STATUS)
> -		dev_dbg(pci->dev, "PME Interrupt\n");
> +
> +	if (pci_msi_enabled()) {

This checks whether the kernel supports MSIs. Not that they are
enabled in your controller. Is that really what you want to do?

> +		if (val & PCL_CFG_AER_RC_ERR_MSI_STATUS) {
> +			dev_dbg(pci->dev, "Root Error Status\n");
> +			virq = irq_linear_revmap(pp->irq_domain, 0);
> +			generic_handle_irq(virq);
> +		}
> +
> +		if (val & PCL_CFG_PME_MSI_STATUS) {
> +			dev_dbg(pci->dev, "PME Interrupt\n");
> +			virq = irq_linear_revmap(pp->irq_domain, 0);
> +			generic_handle_irq(virq);
> +		}

These two cases do the exact same thing, calling the same interrupt.
What is the point of dealing with them independently?

> +	}
> 
>  	writel(val, priv->base + PCL_RCV_INT);
> +}
> +
> +static void uniphier_pcie_irq_handler(struct irq_desc *desc)
> +{
> +	struct pcie_port *pp = irq_desc_get_handler_data(desc);
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	struct uniphier_pcie_priv *priv = to_uniphier_pcie(pci);
> +	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	unsigned long reg;
> +	u32 val, bit, virq;
> +
> +	/* misc interrupt */
> +	uniphier_pcie_misc_isr(pp);

This is a chained handler called outside of a chained_irq_enter/exit
block. It isn't acceptable.

> 
>  	/* INTx */
>  	chained_irq_enter(chip, desc);
> @@ -330,6 +360,7 @@ static int uniphier_pcie_host_init(struct pcie_port 
> *pp)
> 
>  static const struct dw_pcie_host_ops uniphier_pcie_host_ops = {
>  	.host_init = uniphier_pcie_host_init,
> +	.msi_host_isr = uniphier_pcie_misc_isr,
>  };
> 
>  static int uniphier_add_pcie_port(struct uniphier_pcie_priv *priv,

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
