Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF54E10E93F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 12:02:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xuExrWWyX13RZUEsaftXG3CwsYzN/Xkk7MfN6ytNQJI=; b=DeBC9ULj/P4bC4
	4waxjQ4giYsY4GGTbKKNqhgFadNjIvwhNGz18JB4suH1QCwSdAUr98WD4jfBfgwLu4cZ8VEverZ0I
	qUe402EQo8eqdDk7971yQRhSBxhRu8M3+WJjmVBy865N/O1h0GeHsBVYPXKLoAi/37Ojza6/NSlUy
	Uqm8Wolu8apEIB6cDtREbr17/yxQ4Egwxxl38reUFpca5I2rFF8RFn70RMRaP0/AP6pVdH0IBVSZo
	NMPAp/YKvjEorfX949Mna/r3+aKlix8l4LOUPSYjtzQZf0d0MAiUgI6Mmgn3RD4/x4un8o/8JpGP6
	C68yeNPTefKrrCI0kJWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibjSz-0003i4-4v; Mon, 02 Dec 2019 11:02:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibjSs-0003gf-Cb
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 11:02:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3F03328;
 Mon,  2 Dec 2019 03:01:53 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1D5FB3F68E;
 Mon,  2 Dec 2019 03:01:52 -0800 (PST)
Date: Mon, 2 Dec 2019 11:01:45 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH] PCI: layerscape: Add the SRIOV support in host side
Message-ID: <20191202110145.GA1496@e121166-lin.cambridge.arm.com>
References: <20191202104506.27916-1-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202104506.27916-1-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_030202_512361_06BBFC1A 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: roy.zang@nxp.com, devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 Zhiqiang.Hou@nxp.com, linux-kernel@vger.kernel.org, minghuan.Lian@nxp.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, bhelgaas@google.com,
 andrew.murray@arm.com, frowand.list@gmail.com, mingkai.hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 06:45:06PM +0800, Xiaowei Bao wrote:
> GIC get the map relations of devid and stream id from the msi-map
> property of DTS, our platform add this property in u-boot base on
> the PCIe device in the bus, but if enable the vf device in kernel,
> the vf device msi-map will not set, so the vf device can't work,
> this patch purpose is that manage the stream id and device id map
> relations dynamically in kernel, and make the new PCIe device work
> in kernel.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
>  drivers/of/irq.c                            |  9 +++
>  drivers/pci/controller/dwc/pci-layerscape.c | 94 +++++++++++++++++++++++++++++
>  drivers/pci/probe.c                         |  6 ++
>  drivers/pci/remove.c                        |  6 ++
>  4 files changed, 115 insertions(+)

NAK

If u-boot is broken it should be fixed, we won't apply core PCI/OF
changes to paper over it.

Thanks,
Lorenzo

> diff --git a/drivers/of/irq.c b/drivers/of/irq.c
> index a296eaf..791e609 100644
> --- a/drivers/of/irq.c
> +++ b/drivers/of/irq.c
> @@ -576,6 +576,11 @@ void __init of_irq_init(const struct of_device_id *matches)
>  	}
>  }
>  
> +u32 __weak ls_pcie_streamid_fix(struct device *dev, u32 rid)
> +{
> +	return rid;
> +}
> +
>  static u32 __of_msi_map_rid(struct device *dev, struct device_node **np,
>  			    u32 rid_in)
>  {
> @@ -590,6 +595,10 @@ static u32 __of_msi_map_rid(struct device *dev, struct device_node **np,
>  		if (!of_map_rid(parent_dev->of_node, rid_in, "msi-map",
>  				"msi-map-mask", np, &rid_out))
>  			break;
> +
> +	if (rid_out == rid_in)
> +		rid_out = ls_pcie_streamid_fix(parent_dev, rid_in);
> +
>  	return rid_out;
>  }
>  
> diff --git a/drivers/pci/controller/dwc/pci-layerscape.c b/drivers/pci/controller/dwc/pci-layerscape.c
> index f24f79a..c1b3675 100644
> --- a/drivers/pci/controller/dwc/pci-layerscape.c
> +++ b/drivers/pci/controller/dwc/pci-layerscape.c
> @@ -22,6 +22,8 @@
>  
>  #include "pcie-designware.h"
>  
> +#define FSL_PEX_STREAM_ID_START	7
> +#define FSL_PEX_STREAM_ID_END	22
>  /* PEX1/2 Misc Ports Status Register */
>  #define SCFG_PEXMSCPORTSR(pex_idx)	(0x94 + (pex_idx) * 4)
>  #define LTSSM_STATE_SHIFT	20
> @@ -33,8 +35,16 @@
>  #define PCIE_ABSERR		0x8d0 /* Bridge Slave Error Response Register */
>  #define PCIE_ABSERR_SETTING	0x9401 /* Forward error of non-posted request */
>  
> +/* LUT registers */
> +#define PCIE_LUT_UDR(n)         (0x800 + (n) * 8)
> +#define PCIE_LUT_LDR(n)         (0x804 + (n) * 8)
> +#define PCIE_LUT_ENABLE         (1 << 31)
> +#define PCIE_LUT_ENTRY_COUNT    32
> +
>  #define PCIE_IATU_NUM		6
>  
> +unsigned long *stream_id_map;
> +
>  struct ls_pcie_drvdata {
>  	u32 lut_offset;
>  	u32 ltssm_shift;
> @@ -49,6 +59,7 @@ struct ls_pcie {
>  	struct regmap *scfg;
>  	const struct ls_pcie_drvdata *drvdata;
>  	int index;
> +	unsigned long *lut_reg_map;
>  };
>  
>  #define to_ls_pcie(x)	dev_get_drvdata((x)->dev)
> @@ -291,6 +302,77 @@ static int __init ls_add_pcie_port(struct ls_pcie *pcie)
>  	return 0;
>  }
>  
> +u32 ls_pcie_streamid_fix(struct device *dev, u32 rid)
> +{
> +	u32 lut_idx, streamid, val;
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct ls_pcie *pcie = platform_get_drvdata(pdev);
> +
> +	for (lut_idx = 0; lut_idx < PCIE_LUT_ENTRY_COUNT; lut_idx++) {
> +		val = ioread32(pcie->lut + PCIE_LUT_UDR(lut_idx)) >> 16;
> +		if (val == rid) {
> +			streamid = ioread32(pcie->lut + PCIE_LUT_LDR(lut_idx)) &
> +				   (~PCIE_LUT_ENABLE);
> +			break;
> +		}
> +	}
> +
> +	return streamid;
> +}
> +
> +void ls_pcie_remove_streamid(struct pci_bus *bus, struct pci_dev *pdev)
> +{
> +	struct pcie_port *pp = bus->sysdata;
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	struct ls_pcie *pcie = to_ls_pcie(pci);
> +	u32 lut_idx, streamid, rid, val;
> +
> +	rid = PCI_DEVID(pdev->bus->number, pdev->devfn);
> +
> +	for (lut_idx = 0; lut_idx < PCIE_LUT_ENTRY_COUNT; lut_idx++) {
> +		val = ioread32(pcie->lut + PCIE_LUT_UDR(lut_idx)) >> 16;
> +		if (val == rid) {
> +			streamid = ioread32(pcie->lut + PCIE_LUT_LDR(lut_idx)) &
> +				   (~PCIE_LUT_ENABLE);
> +			break;
> +		}
> +	}
> +
> +	if (lut_idx >= PCIE_LUT_ENTRY_COUNT) {
> +		pr_err("Don't find the streamid relate to the rid !\n");
> +		return;
> +	}
> +
> +	iowrite32(0, pcie->lut + PCIE_LUT_UDR(lut_idx));
> +	iowrite32(0, pcie->lut + PCIE_LUT_LDR(lut_idx));
> +
> +	clear_bit(streamid, stream_id_map);
> +	clear_bit(lut_idx, pcie->lut_reg_map);
> +}
> +
> +void ls_pcie_add_streamid(struct pci_bus *bus, struct pci_dev *pdev)
> +{
> +	u32 free_lut, free_streamid, rid;
> +	struct pcie_port *pp = bus->sysdata;
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	struct ls_pcie *pcie = to_ls_pcie(pci);
> +
> +	rid = PCI_DEVID(pdev->bus->number, pdev->devfn);
> +
> +	free_streamid = find_first_zero_bit(stream_id_map,
> +					    FSL_PEX_STREAM_ID_END);
> +
> +	free_lut = find_first_zero_bit(pcie->lut_reg_map,
> +				       PCIE_LUT_ENTRY_COUNT);
> +
> +	iowrite32(rid << 16, pcie->lut + PCIE_LUT_UDR(free_lut));
> +	iowrite32(free_streamid | PCIE_LUT_ENABLE,
> +		  pcie->lut + PCIE_LUT_LDR(free_lut));
> +
> +	set_bit(free_streamid, stream_id_map);
> +	set_bit(free_lut, pcie->lut_reg_map);
> +}
> +
>  static int __init ls_pcie_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -298,6 +380,7 @@ static int __init ls_pcie_probe(struct platform_device *pdev)
>  	struct ls_pcie *pcie;
>  	struct resource *dbi_base;
>  	int ret;
> +	u32 id;
>  
>  	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
>  	if (!pcie)
> @@ -324,6 +407,17 @@ static int __init ls_pcie_probe(struct platform_device *pdev)
>  	if (!ls_pcie_is_bridge(pcie))
>  		return -ENODEV;
>  
> +	stream_id_map = devm_kcalloc(dev,
> +				     BITS_TO_LONGS(FSL_PEX_STREAM_ID_END),
> +				     sizeof(long), GFP_KERNEL);
> +
> +	for (id = 0; id < FSL_PEX_STREAM_ID_START; id++)
> +		set_bit(id, stream_id_map);
> +
> +	pcie->lut_reg_map = devm_kcalloc(dev,
> +					 BITS_TO_LONGS(PCIE_LUT_ENTRY_COUNT),
> +					 sizeof(long), GFP_KERNEL);
> +
>  	platform_set_drvdata(pdev, pcie);
>  
>  	ret = ls_add_pcie_port(pcie);
> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> index 512cb43..d4729b4 100644
> --- a/drivers/pci/probe.c
> +++ b/drivers/pci/probe.c
> @@ -2380,6 +2380,10 @@ static void pci_set_msi_domain(struct pci_dev *dev)
>  	dev_set_msi_domain(&dev->dev, d);
>  }
>  
> +void __weak ls_pcie_add_streamid(struct pci_bus *bus, struct pci_dev *pdev)
> +{
> +}
> +
>  void pci_device_add(struct pci_dev *dev, struct pci_bus *bus)
>  {
>  	int ret;
> @@ -2417,6 +2421,8 @@ void pci_device_add(struct pci_dev *dev, struct pci_bus *bus)
>  	ret = pcibios_add_device(dev);
>  	WARN_ON(ret < 0);
>  
> +	ls_pcie_add_streamid(bus, dev);
> +
>  	/* Set up MSI IRQ domain */
>  	pci_set_msi_domain(dev);
>  
> diff --git a/drivers/pci/remove.c b/drivers/pci/remove.c
> index e9c6b12..af6cc7f 100644
> --- a/drivers/pci/remove.c
> +++ b/drivers/pci/remove.c
> @@ -62,11 +62,17 @@ void pci_remove_bus(struct pci_bus *bus)
>  }
>  EXPORT_SYMBOL(pci_remove_bus);
>  
> +void __weak ls_pcie_remove_streamid(struct pci_bus *bus, struct pci_dev *pdev)
> +{
> +}
> +
>  static void pci_stop_bus_device(struct pci_dev *dev)
>  {
>  	struct pci_bus *bus = dev->subordinate;
>  	struct pci_dev *child, *tmp;
>  
> +	ls_pcie_remove_streamid(dev->bus, dev);
> +
>  	/*
>  	 * Stopping an SR-IOV PF device removes all the associated VFs,
>  	 * which will update the bus->devices list and confuse the
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
