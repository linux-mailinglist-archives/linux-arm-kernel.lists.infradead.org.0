Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E81BED6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 10:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1FAR3G36dFtqxtv+aCzCTKBqf9vj6NgT02WNF2zGMA=; b=RBaz7ERtf5XCWn
	PppbSyO4RVEh4T2Or6NhlPqy59FjPXSo5nBN0NbkLsaBTUeKK60P32pGFhaw1+DQAFRDBa89KFcb0
	GlLzIhvms00rB6f4DGEVRbYKh39EakJe00O7iomsppWOZOmz+hJfY7o1yyGhpoezTRONxUaqwEbQZ
	/9yVqI32duZsjK2fv/RNI9dEXlvUeVqwMsl5OFqbhU2yEQrhaxwe9DMOm1DVrwjwxVvE7fM41s1KH
	CANcx79h4UPTebtyXuOjI6yajv9LkNelPqNCkkTrs/XjAPy8tnBfiUJVHcY341B4vl4g0hGza4JQZ
	Sf2BYIcw2ifsWM20Xt3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPBr-0001FK-Ly; Thu, 26 Sep 2019 08:31:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPA2-0001DR-CV; Thu, 26 Sep 2019 08:30:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A5E31000;
 Thu, 26 Sep 2019 01:30:01 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6275B3F836;
 Thu, 26 Sep 2019 01:30:00 -0700 (PDT)
Date: Thu, 26 Sep 2019 09:29:58 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 06/11] PCI: of: Add inbound resource parsing to helpers
Message-ID: <20190926082958.GV9720@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-7-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924214630.12817-7-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_013004_597569_A8AB256A 
X-CRM114-Status: GOOD (  24.02  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Ryder Lee <ryder.lee@mediatek.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Simon Horman <horms@verge.net.au>, linux-mediatek@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 04:46:25PM -0500, Rob Herring wrote:
> Extend devm_of_pci_get_host_bridge_resources() and
> pci_parse_request_of_pci_ranges() helpers to also parse the inbound
> addresses from DT 'dma-ranges' and populate a resource list with the
> translated addresses. This will help ensure 'dma-ranges' is always
> parsed in a consistent way.
> 
> Cc: Jingoo Han <jingoohan1@gmail.com>
> Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Toan Le <toan@os.amperecomputing.com>
> Cc: Ley Foon Tan <lftan@altera.com>
> Cc: Tom Joseph <tjoseph@cadence.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: Ryder Lee <ryder.lee@mediatek.com>
> Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
> Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Cc: Simon Horman <horms@verge.net.au>
> Cc: Shawn Lin <shawn.lin@rock-chips.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Michal Simek <michal.simek@xilinx.com>
> Cc: rfi@lists.rocketboards.org
> Cc: linux-mediatek@lists.infradead.org
> Cc: linux-renesas-soc@vger.kernel.org
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  .../pci/controller/dwc/pcie-designware-host.c |  3 +-
>  drivers/pci/controller/pci-aardvark.c         |  2 +-
>  drivers/pci/controller/pci-ftpci100.c         |  3 +-
>  drivers/pci/controller/pci-host-common.c      |  2 +-
>  drivers/pci/controller/pci-v3-semi.c          |  2 +-
>  drivers/pci/controller/pci-versatile.c        |  2 +-
>  drivers/pci/controller/pci-xgene.c            |  1 +
>  drivers/pci/controller/pcie-altera.c          |  2 +-
>  drivers/pci/controller/pcie-cadence-host.c    |  2 +-
>  drivers/pci/controller/pcie-iproc-platform.c  |  1 +
>  drivers/pci/controller/pcie-mediatek.c        |  2 +-
>  drivers/pci/controller/pcie-mobiveil.c        |  4 +-
>  drivers/pci/controller/pcie-rcar.c            |  3 +-
>  drivers/pci/controller/pcie-rockchip-host.c   |  3 +-
>  drivers/pci/controller/pcie-xilinx-nwl.c      |  2 +-
>  drivers/pci/controller/pcie-xilinx.c          |  2 +-
>  drivers/pci/of.c                              | 44 ++++++++++++++++++-
>  drivers/pci/pci.h                             |  8 +++-
>  include/linux/pci.h                           |  2 +
>  19 files changed, 72 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index f93252d0da5b..0743ae64bb0f 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -342,7 +342,8 @@ int dw_pcie_host_init(struct pcie_port *pp)
>  		return -ENOMEM;
>  
>  	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> -					&bridge->windows, &pp->io_base);
> +					&bridge->windows, &bridge->dma_ranges,
> +					&pp->io_base);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> index ff3af3d34028..c00b391529f3 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -940,7 +940,7 @@ static int advk_pcie_probe(struct platform_device *pdev)
>  	}
>  
>  	ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
> -					      &bus);
> +					      &bridge->dma_ranges, &bus);
>  	if (ret) {
>  		dev_err(dev, "Failed to parse resources\n");
>  		return ret;
> diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
> index bf5ece5d9291..3e07a8203736 100644
> --- a/drivers/pci/controller/pci-ftpci100.c
> +++ b/drivers/pci/controller/pci-ftpci100.c
> @@ -481,7 +481,8 @@ static int faraday_pci_probe(struct platform_device *pdev)
>  		return PTR_ERR(p->base);
>  
>  	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> -						    &res, &io_base);
> +						    &res, &host->dma_ranges,
> +						    &io_base);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
> index c742881b5061..183381c19ee8 100644
> --- a/drivers/pci/controller/pci-host-common.c
> +++ b/drivers/pci/controller/pci-host-common.c
> @@ -27,7 +27,7 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
>  	struct pci_config_window *cfg;
>  
>  	/* Parse our PCI ranges and request their resources */
> -	err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
> +	err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
>  	if (err)
>  		return ERR_PTR(err);
>  
> diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
> index d219404bad92..090df766faf9 100644
> --- a/drivers/pci/controller/pci-v3-semi.c
> +++ b/drivers/pci/controller/pci-v3-semi.c
> @@ -794,7 +794,7 @@ static int v3_pci_probe(struct platform_device *pdev)
>  		return PTR_ERR(v3->config_base);
>  
>  	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &res,
> -						    &io_base);
> +						    &host->dma_ranges, &io_base);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
> index 237b1abb26f2..211159f54b4a 100644
> --- a/drivers/pci/controller/pci-versatile.c
> +++ b/drivers/pci/controller/pci-versatile.c
> @@ -93,7 +93,7 @@ static int versatile_pci_probe(struct platform_device *pdev)
>  	if (IS_ERR(versatile_cfg_base[1]))
>  		return PTR_ERR(versatile_cfg_base[1]);
>  
> -	ret = pci_parse_request_of_pci_ranges(dev, &pci_res, NULL);
> +	ret = pci_parse_request_of_pci_ranges(dev, &pci_res, NULL, NULL);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
> index ffda3e8b4742..11f27c42c06a 100644
> --- a/drivers/pci/controller/pci-xgene.c
> +++ b/drivers/pci/controller/pci-xgene.c
> @@ -635,6 +635,7 @@ static int xgene_pcie_probe(struct platform_device *pdev)
>  		return ret;
>  
>  	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &res,
> +						    &bridge->dma_ranges,
>  						    &iobase);
>  	if (ret)
>  		return ret;
> diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
> index 2ed00babff5a..fde6a3b16fb9 100644
> --- a/drivers/pci/controller/pcie-altera.c
> +++ b/drivers/pci/controller/pcie-altera.c
> @@ -801,7 +801,7 @@ static int altera_pcie_probe(struct platform_device *pdev)
>  	}
>  
>  	ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
> -					      NULL);
> +					      &bridge->dma_ranges, NULL);
>  	if (ret) {
>  		dev_err(dev, "Failed add resources\n");
>  		return ret;
> diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
> index 97e251090b4f..a8f7a6284c3e 100644
> --- a/drivers/pci/controller/pcie-cadence-host.c
> +++ b/drivers/pci/controller/pcie-cadence-host.c
> @@ -211,7 +211,7 @@ static int cdns_pcie_host_init(struct device *dev,
>  	int err;
>  
>  	/* Parse our PCI ranges and request their resources */
> -	err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
> +	err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
>  	if (err)
>  		return err;
>  
> diff --git a/drivers/pci/controller/pcie-iproc-platform.c b/drivers/pci/controller/pcie-iproc-platform.c
> index 5a3550b6bb29..62eee2d17f43 100644
> --- a/drivers/pci/controller/pcie-iproc-platform.c
> +++ b/drivers/pci/controller/pcie-iproc-platform.c
> @@ -101,6 +101,7 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
>  	}
>  
>  	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &resources,
> +						    &bridge->dma_ranges,
>  						    &iobase);
>  	if (ret) {
>  		dev_err(dev, "unable to get PCI host bridge resources\n");
> diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
> index cea4112b5309..f3996eed152d 100644
> --- a/drivers/pci/controller/pcie-mediatek.c
> +++ b/drivers/pci/controller/pcie-mediatek.c
> @@ -1032,7 +1032,7 @@ static int mtk_pcie_setup(struct mtk_pcie *pcie)
>  	int err;
>  
>  	err = pci_parse_request_of_pci_ranges(dev, windows,
> -					      &bus);
> +					      &host->dma_ranges, &bus);
>  	if (err)
>  		return err;
>  
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index 672e633601c7..93064faaa656 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -875,7 +875,9 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  
>  	/* parse the host bridge base addresses from the device tree file */
>  	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> -						    &pcie->resources, &iobase);
> +						    &pcie->resources,
> +						    &bridge->dma_ranges,
> +						    &iobase);
>  	if (ret) {
>  		dev_err(dev, "Getting bridge resources failed\n");
>  		return ret;
> diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
> index f6a669a9af41..b8d6e86a5539 100644
> --- a/drivers/pci/controller/pcie-rcar.c
> +++ b/drivers/pci/controller/pcie-rcar.c
> @@ -1138,7 +1138,8 @@ static int rcar_pcie_probe(struct platform_device *pdev)
>  	pcie->dev = dev;
>  	platform_set_drvdata(pdev, pcie);
>  
> -	err = pci_parse_request_of_pci_ranges(dev, &pcie->resources, NULL);
> +	err = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
> +					      &bridge->dma_ranges, NULL);
>  	if (err)
>  		goto err_free_bridge;
>  
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index 8d20f1793a61..093b816b9dc9 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -996,7 +996,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>  		goto err_deinit_port;
>  
>  	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> -						    &res, &io_base);
> +						    &res, &bridge->dma_ranges,
> +						    &io_base);
>  	if (err)
>  		goto err_remove_irq_domain;
>  
> diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
> index 45c0f344ccd1..5c9132a02d15 100644
> --- a/drivers/pci/controller/pcie-xilinx-nwl.c
> +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
> @@ -846,7 +846,7 @@ static int nwl_pcie_probe(struct platform_device *pdev)
>  	}
>  
>  	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &res,
> -						    &iobase);
> +						    &bridge->dma_ranges, &iobase);
>  	if (err) {
>  		dev_err(dev, "Getting bridge resources failed\n");
>  		return err;
> diff --git a/drivers/pci/controller/pcie-xilinx.c b/drivers/pci/controller/pcie-xilinx.c
> index 5bf3af3b28e6..a95faca30291 100644
> --- a/drivers/pci/controller/pcie-xilinx.c
> +++ b/drivers/pci/controller/pcie-xilinx.c
> @@ -648,7 +648,7 @@ static int xilinx_pcie_probe(struct platform_device *pdev)
>  	}
>  
>  	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &res,
> -						    &iobase);
> +						    &bridge->dma_ranges, &iobase);
>  	if (err) {
>  		dev_err(dev, "Getting bridge resources failed\n");
>  		return err;
> diff --git a/drivers/pci/of.c b/drivers/pci/of.c
> index bc7b27a28795..8d31e078461f 100644
> --- a/drivers/pci/of.c
> +++ b/drivers/pci/of.c
> @@ -257,7 +257,9 @@ EXPORT_SYMBOL_GPL(of_pci_check_probe_only);
>   */
>  int devm_of_pci_get_host_bridge_resources(struct device *dev,
>  			unsigned char busno, unsigned char bus_max,
> -			struct list_head *resources, resource_size_t *io_base)
> +			struct list_head *resources,
> +			struct list_head *ib_resources,
> +			resource_size_t *io_base)
>  {
>  	struct device_node *dev_node = dev->of_node;
>  	struct resource *res, tmp_res;
> @@ -340,6 +342,42 @@ int devm_of_pci_get_host_bridge_resources(struct device *dev,
>  		pci_add_resource_offset(resources, res,	res->start - range.pci_addr);
>  	}
>  
> +	/* Check for dma-ranges property */
> +	if (!ib_resources)
> +		return 0;
> +	err = of_pci_dma_range_parser_init(&parser, dev_node);
> +	if (err)
> +		return 0;
> +
> +	dev_dbg(dev, "Parsing dma-ranges property...\n");
> +	for_each_of_pci_range(&parser, &range) {
> +		/*
> +		 * If we failed translation or got a zero-sized region
> +		 * then skip this range
> +		 */
> +		if (((range.flags & IORESOURCE_TYPE_BITS) != IORESOURCE_MEM) ||
> +		    range.cpu_addr == OF_BAD_ADDR || range.size == 0)
> +			continue;
> +
> +		dev_info(dev, "IB MEM %#010llx..%#010llx -> %#010llx\n",
> +			 range.cpu_addr,
> +			 range.cpu_addr + range.size - 1, range.pci_addr);
> +
> +
> +		err = of_pci_range_to_resource(&range, dev_node, &tmp_res);
> +		if (err)
> +			continue;
> +
> +		res = devm_kmemdup(dev, &tmp_res, sizeof(tmp_res), GFP_KERNEL);
> +		if (!res) {
> +			err = -ENOMEM;
> +			goto failed;
> +		}
> +
> +		pci_add_resource_offset(ib_resources, res,
> +					res->start - range.pci_addr);
> +	}
> +
>  	return 0;
>  
>  failed:
> @@ -482,6 +520,7 @@ EXPORT_SYMBOL_GPL(of_irq_parse_and_map_pci);
>  
>  int pci_parse_request_of_pci_ranges(struct device *dev,
>  				    struct list_head *resources,
> +				    struct list_head *ib_resources,
>  				    struct resource **bus_range)
>  {
>  	int err, res_valid = 0;
> @@ -489,8 +528,9 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
>  	struct resource_entry *win, *tmp;
>  
>  	INIT_LIST_HEAD(resources);
> +	INIT_LIST_HEAD(ib_resources);
>  	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, resources,
> -						    &iobase);
> +						    ib_resources, &iobase);
>  	if (err)
>  		return err;
>  
> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
> index d22d1b807701..790458953c54 100644
> --- a/drivers/pci/pci.h
> +++ b/drivers/pci/pci.h
> @@ -582,11 +582,15 @@ of_pci_get_max_link_speed(struct device_node *node)
>  #if defined(CONFIG_OF_ADDRESS)
>  int devm_of_pci_get_host_bridge_resources(struct device *dev,
>  			unsigned char busno, unsigned char bus_max,
> -			struct list_head *resources, resource_size_t *io_base);
> +			struct list_head *resources,
> +			struct list_head *ib_resources,
> +			resource_size_t *io_base);
>  #else
>  static inline int devm_of_pci_get_host_bridge_resources(struct device *dev,
>  			unsigned char busno, unsigned char bus_max,
> -			struct list_head *resources, resource_size_t *io_base)
> +			struct list_head *resources,
> +			struct list_head *ib_resources,
> +			resource_size_t *io_base);
>  {
>  	return -EINVAL;
>  }
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index 82e4cd1b7ac3..d57389b86f92 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -2312,6 +2312,7 @@ void pci_release_bus_of_node(struct pci_bus *bus);
>  struct irq_domain *pci_host_bridge_of_msi_domain(struct pci_bus *bus);
>  int pci_parse_request_of_pci_ranges(struct device *dev,
>  				    struct list_head *resources,
> +				    struct list_head *ib_resources,
>  				    struct resource **bus_range);
>  
>  /* Arch may override this (weak) */
> @@ -2326,6 +2327,7 @@ static inline struct irq_domain *
>  pci_host_bridge_of_msi_domain(struct pci_bus *bus) { return NULL; }
>  static inline int pci_parse_request_of_pci_ranges(struct device *dev,
>  						  struct list_head *resources,
> +						  struct list_head *ib_resources,
>  						  struct resource **bus_range)
>  {
>  	return -EINVAL;
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
