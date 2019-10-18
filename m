Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDDFDC8F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YByJHEmSLU3SNrZ+wksfrlXoLr8AZub5pvZFwWPNWeM=; b=fGfdk/kV/Uqv+F
	/JPfY6LQmN3Y66Ei8IVeHKPjnL8hyDl9dUntzA9W0QY5dq7B4ltwTnl+1jEefvFn7twSOJW/AgB6X
	PpbsSGmucJIChA3BDZxRvECpKlytINMt/hRIhqNAtIWDRlPOnln9YwyZBIbljXvO7vh2br4rIvgo3
	lQeH0A0f3Au8xki5ClU7/5b19TWXCR/fo1iqW+YvBAcIb+RdVN4qbrY4jKPiHEqJedifbbsdJmajR
	+DcPAcriUJiaOJ1qqDcZY/2hXUozHRI19kiBVbwbBMypx8dGDSHFS8H4Oya/QzHU/+jpM25fKl8ET
	Ds7p636VagKYgWXFzCTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUOD-0007cW-PV; Fri, 18 Oct 2019 15:42:05 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUO2-0007b7-J9; Fri, 18 Oct 2019 15:41:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84B7FC8F;
 Fri, 18 Oct 2019 08:41:43 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB5643F718;
 Fri, 18 Oct 2019 08:41:42 -0700 (PDT)
Date: Fri, 18 Oct 2019 16:41:41 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 09/25] PCI: mobiveil: Use
 pci_parse_request_of_pci_ranges()
Message-ID: <20191018154141.GJ47056@e119886-lin.cambridge.arm.com>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-10-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016200647.32050-10-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_084154_724772_A92F6CF6 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:06:31PM -0500, Rob Herring wrote:
> Convert the Mobiveil host bridge to use the common
> pci_parse_request_of_pci_ranges().
> 
> There's no need to assign the resources to a temporary list first. Just
> use bridge->windows directly and remove all the temporary list handling.
> 
> Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
> Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Andrew Murray <andrew.murray@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> v2:
> - New patch
> 
>  drivers/pci/controller/pcie-mobiveil.c | 26 +++++++-------------------
>  1 file changed, 7 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index a45a6447b01d..4eab8624ce4d 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -140,7 +140,6 @@ struct mobiveil_msi {			/* MSI information */
> 
>  struct mobiveil_pcie {
>  	struct platform_device *pdev;
> -	struct list_head resources;
>  	void __iomem *config_axi_slave_base;	/* endpoint config base */
>  	void __iomem *csr_axi_slave_base;	/* root port config base */
>  	void __iomem *apb_csr_base;	/* MSI register base */
> @@ -575,6 +574,7 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
> 
>  static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  {
> +	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
>  	u32 value, pab_ctrl, type;
>  	struct resource_entry *win;
> 
> @@ -631,7 +631,7 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  	program_ib_windows(pcie, WIN_NUM_0, 0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
> 
>  	/* Get the I/O and memory ranges from DT */
> -	resource_list_for_each_entry(win, &pcie->resources) {
> +	resource_list_for_each_entry(win, &bridge->windows) {
>  		if (resource_type(win->res) == IORESOURCE_MEM)
>  			type = MEM_WINDOW_TYPE;
>  		else if (resource_type(win->res) == IORESOURCE_IO)
> @@ -857,7 +857,6 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  	struct pci_bus *child;
>  	struct pci_host_bridge *bridge;
>  	struct device *dev = &pdev->dev;
> -	resource_size_t iobase;
>  	int ret;
> 
>  	/* allocate the PCIe port */
> @@ -875,11 +874,8 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  		return ret;
>  	}
> 
> -	INIT_LIST_HEAD(&pcie->resources);
> -
>  	/* parse the host bridge base addresses from the device tree file */
> -	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> -						    &pcie->resources, &iobase);
> +	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
>  	if (ret) {
>  		dev_err(dev, "Getting bridge resources failed\n");
>  		return ret;
> @@ -892,24 +888,19 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  	ret = mobiveil_host_init(pcie);
>  	if (ret) {
>  		dev_err(dev, "Failed to initialize host\n");
> -		goto error;
> +		return ret;
>  	}
> 
>  	/* initialize the IRQ domains */
>  	ret = mobiveil_pcie_init_irq_domain(pcie);
>  	if (ret) {
>  		dev_err(dev, "Failed creating IRQ Domain\n");
> -		goto error;
> +		return ret;
>  	}
> 
>  	irq_set_chained_handler_and_data(pcie->irq, mobiveil_pcie_isr, pcie);
> 
> -	ret = devm_request_pci_bus_resources(dev, &pcie->resources);
> -	if (ret)
> -		goto error;
> -
>  	/* Initialize bridge */
> -	list_splice_init(&pcie->resources, &bridge->windows);
>  	bridge->dev.parent = dev;
>  	bridge->sysdata = pcie;
>  	bridge->busnr = pcie->root_bus_nr;
> @@ -920,13 +911,13 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  	ret = mobiveil_bringup_link(pcie);
>  	if (ret) {
>  		dev_info(dev, "link bring-up failed\n");
> -		goto error;
> +		return ret;
>  	}
> 
>  	/* setup the kernel resources for the newly added PCIe root bus */
>  	ret = pci_scan_root_bus_bridge(bridge);
>  	if (ret)
> -		goto error;
> +		return ret;
> 
>  	bus = bridge->bus;
> 
> @@ -936,9 +927,6 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  	pci_bus_add_devices(bus);
> 
>  	return 0;
> -error:
> -	pci_free_resource_list(&pcie->resources);
> -	return ret;
>  }
> 
>  static const struct of_device_id mobiveil_pcie_of_match[] = {
> --
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
