Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DB0A568E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 14:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1jHGiAQmh1NLbgQ75ktGkyyYXj99CeqKy8DpKbn/EA=; b=Ptn/HggVXcOW0z
	Kex69bhPUz93/p4oopYhBcGlVWx+IPmP+LbEoZuJr0X5VvoEgglBYvV+MC0LuZOsA+xy6uuMEjzSU
	bq1EVwLM+aGkjsMNSXgBPTDAwls1+IvYtzWwAiA+075ENHJKSQdw9+7/v1Ku014y2C28/jMxEudYm
	vukauAGRNscaeZm6zojHs4HsyLt7fxZB4H+cYoYqze+wT6BICYGeQuUQKF3lrU3k5OxvrlE0AXdZI
	Oc+GYzTmZoj/mfEgvRlPLW3+oDm8YVSaaFIcUJq95kX8+Euqscteo/+nF4z21wpsQ8FiIv7OLil+G
	uxMmZ5jE21Fx7FhPB8YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4lit-0002CT-8W; Mon, 02 Sep 2019 12:46:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lig-0002Bo-JB
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 12:46:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBF90337;
 Mon,  2 Sep 2019 05:46:05 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1B3C53F246;
 Mon,  2 Sep 2019 05:46:05 -0700 (PDT)
Date: Mon, 2 Sep 2019 13:46:03 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v3 09/11] PCI: layerscape: Add EP mode support for
 ls1088a and ls2088a
Message-ID: <20190902124603.GJ9720@e119886-lin.cambridge.arm.com>
References: <20190902031716.43195-1-xiaowei.bao@nxp.com>
 <20190902031716.43195-10-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902031716.43195-10-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_054606_723534_103CC3B8 
X-CRM114-Status: GOOD (  18.83  )
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
Cc: mark.rutland@arm.com, roy.zang@nxp.com, lorenzo.pieralisi@arm.com,
 arnd@arndb.de, devicetree@vger.kernel.org, jingoohan1@gmail.com,
 zhiqiang.hou@nxp.com, linuxppc-dev@lists.ozlabs.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, minghuan.Lian@nxp.com,
 robh+dt@kernel.org, gregkh@linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org, gustavo.pimentel@synopsys.com,
 leoyang.li@nxp.com, shawnguo@kernel.org, mingkai.hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 11:17:14AM +0800, Xiaowei Bao wrote:
> Add PCIe EP mode support for ls1088a and ls2088a, there are some
> difference between LS1 and LS2 platform, so refactor the code of
> the EP driver.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2: 
>  - This is a new patch for supporting the ls1088a and ls2088a platform.
> v3:
>  - Adjust the some struct assignment order in probe function.
> 
>  drivers/pci/controller/dwc/pci-layerscape-ep.c | 72 +++++++++++++++++++-------
>  1 file changed, 53 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
> index 5f0cb99..723bbe5 100644
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
> @@ -87,10 +89,39 @@ static int ls_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
>  	}
>  }
>  
> -static const struct dw_pcie_ep_ops pcie_ep_ops = {
> +static unsigned int ls_pcie_ep_func_conf_select(struct dw_pcie_ep *ep,
> +						u8 func_no)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	struct ls_pcie_ep *pcie = to_ls_pcie_ep(pci);
> +
> +	WARN_ON(func_no && !pcie->drvdata->func_offset);
> +	return pcie->drvdata->func_offset * func_no;
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

This removes support for "fsl,ls-pcie-ep" - was that intentional? If you do
plan to drop it please make sure you explain why in the commit message. See
also my comments in your dt-binding patch.

Thanks,

Andrew Murray

>  };
>  
>  static int __init ls_add_pcie_ep(struct ls_pcie_ep *pcie,
> @@ -103,7 +134,7 @@ static int __init ls_add_pcie_ep(struct ls_pcie_ep *pcie,
>  	int ret;
>  
>  	ep = &pci->ep;
> -	ep->ops = &pcie_ep_ops;
> +	ep->ops = pcie->drvdata->ops;
>  
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "addr_space");
>  	if (!res)
> @@ -142,20 +173,23 @@ static int __init ls_pcie_ep_probe(struct platform_device *pdev)
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
> -	pcie->pci = pci;
> +	pci->ops = pcie->drvdata->dw_pcie_ops;
>  
>  	ls_epc->bar_fixed_64bit = (1 << BAR_2) | (1 << BAR_4),
>  
> +	pcie->pci = pci;
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
