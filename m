Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DB69B1E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgrvnb7x3DZ1EyixWC5WqRzwCWPvcoKf4u7+VJSA/Qc=; b=lDsXeMuonxLB+J
	z03n9FoNM/9QB4zYR5Z0Y7hcwq/Djjkt0qD61m8g71ANITFAiG+vHTiQXATOWJmXENSast+7NJmbK
	MJZW8A/4ws9jpCPfBI9shFr3NgWxHorsr1/3taUwYBRAu7+u8Xs3aibebM8/Kn5nT4bYwnZT+1MMs
	VntyTzAXI/7wF3lbtfTFVcgaFGZgqQyVMat5h55rqWl61cZU2FIN6A8kbLHgblUfCu1A3gsCEpOTi
	o8hdtPQuyVXt5o3cH+QwCYivQrZ+ZUE6GdprIeUyD8DhCQrxU3yBz0J1Iz5e60nrrLHzyLMY5Rs3u
	ndnM4HNVQVL4Z7bLZ/Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1AXv-0002p6-SD; Fri, 23 Aug 2019 14:28:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1AXo-0002li-EG
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:28:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 631C628;
 Fri, 23 Aug 2019 07:27:59 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF57E3F718;
 Fri, 23 Aug 2019 07:27:58 -0700 (PDT)
Date: Fri, 23 Aug 2019 15:27:57 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v2 08/10] PCI: layerscape: Add EP mode support for
 ls1088a and ls2088a
Message-ID: <20190823142756.GI14582@e119886-lin.cambridge.arm.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-8-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822112242.16309-8-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_072800_570437_BDC50409 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, roy.zang@nxp.com, lorenzo.pieralisi@arm.co,
 arnd@arndb.de, devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linuxppc-dev@lists.ozlabs.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, minghuan.Lian@nxp.com,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, leoyang.li@nxp.com, shawnguo@kernel.org,
 mingkai.hu@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 07:22:40PM +0800, Xiaowei Bao wrote:
> Add PCIe EP mode support for ls1088a and ls2088a, there are some
> difference between LS1 and LS2 platform, so refactor the code of
> the EP driver.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2:
>  - New mechanism for layerscape EP driver.

Was there a v1 of this patch?

> 
>  drivers/pci/controller/dwc/pci-layerscape-ep.c | 76 ++++++++++++++++++++------
>  1 file changed, 58 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
> index 7ca5fe8..2a66f07 100644
> --- a/drivers/pci/controller/dwc/pci-layerscape-ep.c
> +++ b/drivers/pci/controller/dwc/pci-layerscape-ep.c
> @@ -20,27 +20,29 @@
>  
>  #define PCIE_DBI2_OFFSET		0x1000	/* DBI2 base address*/
>  
> -struct ls_pcie_ep {
> -	struct dw_pcie		*pci;
> -	struct pci_epc_features	*ls_epc;
> +#define to_ls_pcie_ep(x)	dev_get_drvdata((x)->dev)
> +
> +struct ls_pcie_ep_drvdata {
> +	u32				func_offset;
> +	const struct dw_pcie_ep_ops	*ops;
> +	const struct dw_pcie_ops	*dw_pcie_ops;
>  };
>  
> -#define to_ls_pcie_ep(x)	dev_get_drvdata((x)->dev)
> +struct ls_pcie_ep {
> +	struct dw_pcie			*pci;
> +	struct pci_epc_features		*ls_epc;
> +	const struct ls_pcie_ep_drvdata *drvdata;
> +};
>  
>  static int ls_pcie_establish_link(struct dw_pcie *pci)
>  {
>  	return 0;
>  }
>  
> -static const struct dw_pcie_ops ls_pcie_ep_ops = {
> +static const struct dw_pcie_ops dw_ls_pcie_ep_ops = {
>  	.start_link = ls_pcie_establish_link,
>  };
>  
> -static const struct of_device_id ls_pcie_ep_of_match[] = {
> -	{ .compatible = "fsl,ls-pcie-ep",},
> -	{ },
> -};
> -
>  static const struct pci_epc_features*
>  ls_pcie_ep_get_features(struct dw_pcie_ep *ep)
>  {
> @@ -82,10 +84,44 @@ static int ls_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
>  	}
>  }
>  
> -static const struct dw_pcie_ep_ops pcie_ep_ops = {
> +static unsigned int ls_pcie_ep_func_conf_select(struct dw_pcie_ep *ep,
> +						u8 func_no)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	struct ls_pcie_ep *pcie = to_ls_pcie_ep(pci);
> +	u8 header_type;
> +
> +	header_type = ioread8(pci->dbi_base + PCI_HEADER_TYPE);
> +
> +	if (header_type & (1 << 7))
> +		return pcie->drvdata->func_offset * func_no;
> +	else
> +		return 0;

It looks like there isn't a PCI define for multi function, the nearest I
could find was PCI_HEADER_TYPE_MULTIDEVICE in hotplug/ibmphp.h. A comment
above the test might be helpful to explain the test.

As the ls_pcie_ep_drvdata structures are static, the unset .func_offset
will be initialised to 0, so you could just drop the test above.

However something to the effect of the following may help spot
misconfiguration:

WARN_ON(func_no && !pcie->drvdata->func_offset);
return pcie->drvdata->func_offset * func_no;

The WARN is probably quite useful as if you are attempting to use
non-zero functions and func_offset isn't set - then things may appear to work
normally but actually will break horribly.

Thanks,

Andrew Murray

> +}
> +
> +static const struct dw_pcie_ep_ops ls_pcie_ep_ops = {
>  	.ep_init = ls_pcie_ep_init,
>  	.raise_irq = ls_pcie_ep_raise_irq,
>  	.get_features = ls_pcie_ep_get_features,
> +	.func_conf_select = ls_pcie_ep_func_conf_select,
> +};
> +
> +static const struct ls_pcie_ep_drvdata ls1_ep_drvdata = {
> +	.ops = &ls_pcie_ep_ops,
> +	.dw_pcie_ops = &dw_ls_pcie_ep_ops,
> +};
> +
> +static const struct ls_pcie_ep_drvdata ls2_ep_drvdata = {
> +	.func_offset = 0x20000,
> +	.ops = &ls_pcie_ep_ops,
> +	.dw_pcie_ops = &dw_ls_pcie_ep_ops,
> +};
> +
> +static const struct of_device_id ls_pcie_ep_of_match[] = {
> +	{ .compatible = "fsl,ls1046a-pcie-ep", .data = &ls1_ep_drvdata },
> +	{ .compatible = "fsl,ls1088a-pcie-ep", .data = &ls2_ep_drvdata },
> +	{ .compatible = "fsl,ls2088a-pcie-ep", .data = &ls2_ep_drvdata },
> +	{ },
>  };
>  
>  static int __init ls_add_pcie_ep(struct ls_pcie_ep *pcie,
> @@ -98,7 +134,7 @@ static int __init ls_add_pcie_ep(struct ls_pcie_ep *pcie,
>  	int ret;
>  
>  	ep = &pci->ep;
> -	ep->ops = &pcie_ep_ops;
> +	ep->ops = pcie->drvdata->ops;
>  
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "addr_space");
>  	if (!res)
> @@ -137,14 +173,11 @@ static int __init ls_pcie_ep_probe(struct platform_device *pdev)
>  	if (!ls_epc)
>  		return -ENOMEM;
>  
> -	dbi_base = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
> -	pci->dbi_base = devm_pci_remap_cfg_resource(dev, dbi_base);
> -	if (IS_ERR(pci->dbi_base))
> -		return PTR_ERR(pci->dbi_base);
> +	pcie->drvdata = of_device_get_match_data(dev);
>  
> -	pci->dbi_base2 = pci->dbi_base + PCIE_DBI2_OFFSET;
>  	pci->dev = dev;
> -	pci->ops = &ls_pcie_ep_ops;
> +	pci->ops = pcie->drvdata->dw_pcie_ops;
> +
>  	pcie->pci = pci;
>  
>  	ls_epc->linkup_notifier = false,
> @@ -152,6 +185,13 @@ static int __init ls_pcie_ep_probe(struct platform_device *pdev)
>  
>  	pcie->ls_epc = ls_epc;
>  
> +	dbi_base = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
> +	pci->dbi_base = devm_pci_remap_cfg_resource(dev, dbi_base);
> +	if (IS_ERR(pci->dbi_base))
> +		return PTR_ERR(pci->dbi_base);
> +
> +	pci->dbi_base2 = pci->dbi_base + PCIE_DBI2_OFFSET;
> +
>  	platform_set_drvdata(pdev, pcie);
>  
>  	ret = ls_add_pcie_ep(pcie, pdev);
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
