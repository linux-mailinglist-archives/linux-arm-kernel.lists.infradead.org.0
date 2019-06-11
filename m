Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCD73D1A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZ5fVcAG9Blm4uCurIe/qyfIuWZrAI7z3X/TRplLn0I=; b=kc6hOzl62KkROf
	OUMM5FJNl6Z86jKY0PbYFFCbtp9gEKP9HMNO/Ia+2/SP6OWykJEqzAJ/B9+kVQMkq2dfJETEZMrsN
	EEyqOMqgTRjnPaMIp3e+lINfzKVMjh61PGTblzh8Wp2nsg4fNOFfmaNhocxQutEKzhFTQEMTaXW4b
	GVmrOjceyepkOx9FVVcttBtaa6KYa1JTzkzKIAO95mUfKb+51JPcU4PEZKsF2Hij/GaVfQSHTaZ0v
	fxC9KTwpJrop9tbozZ1MWEtIoMSc3wVdzOaBgHM8CMies1vLQTW96ucbExiMACO4FQn3yngC1oEww
	0iXin0PqmvnrV6Q8BlXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajFb-0002cd-LF; Tue, 11 Jun 2019 16:03:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hajFQ-0002bg-Tv
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:03:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 365AB337;
 Tue, 11 Jun 2019 09:03:44 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 688543F246;
 Tue, 11 Jun 2019 09:03:43 -0700 (PDT)
Date: Tue, 11 Jun 2019 17:03:41 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH] PCI: armada8k: Add PHYs support
Message-ID: <20190611160341.GB18411@redmoon>
References: <20190401131239.17008-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401131239.17008-1-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_090345_055427_A8714116 
X-CRM114-Status: GOOD (  20.83  )
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 01, 2019 at 03:12:39PM +0200, Miquel Raynal wrote:
> Bring PHY support for the Armada8k driver.
> 
> The Armada8k IP only supports x1, x2 or x4 link widths. Iterate over
> the DT 'phys' entries and configure them one by one. Use
> phy_set_mode_ext() to make use of the submode parameter (initially
> introduced for Ethernet modes). For PCI configuration, let the submode
> be the width (1, 2, 4, etc) so that the PHY driver knows how many
> lanes are bundled. Do not error out in case of error for compatibility
> reasons.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/pci/controller/dwc/pcie-armada8k.c | 82 +++++++++++++++++++++-
>  1 file changed, 81 insertions(+), 1 deletion(-)

I need Thomas' ACK to proceed if this is still valid.

Lorenzo

> diff --git a/drivers/pci/controller/dwc/pcie-armada8k.c b/drivers/pci/controller/dwc/pcie-armada8k.c
> index 0c389a30ef5d..e567a7cfa3d7 100644
> --- a/drivers/pci/controller/dwc/pcie-armada8k.c
> +++ b/drivers/pci/controller/dwc/pcie-armada8k.c
> @@ -25,10 +25,14 @@
>  
>  #include "pcie-designware.h"
>  
> +#define ARMADA8K_PCIE_MAX_LANES PCIE_LNK_X4
> +
>  struct armada8k_pcie {
>  	struct dw_pcie *pci;
>  	struct clk *clk;
>  	struct clk *clk_reg;
> +	struct phy *phy[ARMADA8K_PCIE_MAX_LANES];
> +	unsigned int phy_count;
>  };
>  
>  #define PCIE_VENDOR_REGS_OFFSET		0x8000
> @@ -67,6 +71,76 @@ struct armada8k_pcie {
>  
>  #define to_armada8k_pcie(x)	dev_get_drvdata((x)->dev)
>  
> +static void armada8k_pcie_disable_phys(struct armada8k_pcie *pcie)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARMADA8K_PCIE_MAX_LANES; i++) {
> +		phy_power_off(pcie->phy[i]);
> +		phy_exit(pcie->phy[i]);
> +	}
> +}
> +
> +static int armada8k_pcie_enable_phys(struct armada8k_pcie *pcie)
> +{
> +	int ret;
> +	int i;
> +
> +	for (i = 0; i < ARMADA8K_PCIE_MAX_LANES; i++) {
> +		ret = phy_init(pcie->phy[i]);
> +		if (ret)
> +			return ret;
> +
> +		ret = phy_set_mode_ext(pcie->phy[i], PHY_MODE_PCIE,
> +				       pcie->phy_count);
> +		if (ret) {
> +			phy_exit(pcie->phy[i]);
> +			return ret;
> +		}
> +
> +		ret = phy_power_on(pcie->phy[i]);
> +		if (ret) {
> +			phy_exit(pcie->phy[i]);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int armada8k_pcie_setup_phys(struct armada8k_pcie *pcie)
> +{
> +	struct dw_pcie *pci = pcie->pci;
> +	struct device *dev = pci->dev;
> +	struct device_node *node = dev->of_node;
> +	int ret = 0;
> +	int i;
> +
> +	for (i = 0; i < ARMADA8K_PCIE_MAX_LANES; i++) {
> +		pcie->phy[i] = devm_of_phy_get_by_index(dev, node, i);
> +		if (IS_ERR(pcie->phy[i]) &&
> +		    (PTR_ERR(pcie->phy[i]) == -EPROBE_DEFER))
> +			return PTR_ERR(pcie->phy[i]);
> +
> +		if (IS_ERR(pcie->phy[i])) {
> +			pcie->phy[i] = NULL;
> +			continue;
> +		}
> +
> +		pcie->phy_count++;
> +	}
> +
> +	/* Old bindings miss the PHY handle, so just warn if there is no PHY */
> +	if (!pcie->phy_count)
> +		dev_warn(dev, "No available PHY\n");
> +
> +	ret = armada8k_pcie_enable_phys(pcie);
> +	if (ret)
> +		dev_err(dev, "Failed to initialize PHY(s) (%d)\n", ret);
> +
> +	return ret;
> +}
> +
>  static int armada8k_pcie_link_up(struct dw_pcie *pci)
>  {
>  	u32 reg;
> @@ -249,14 +323,20 @@ static int armada8k_pcie_probe(struct platform_device *pdev)
>  		goto fail_clkreg;
>  	}
>  
> +	ret = armada8k_pcie_setup_phys(pcie);
> +	if (ret)
> +		goto fail_clkreg;
> +
>  	platform_set_drvdata(pdev, pcie);
>  
>  	ret = armada8k_add_pcie_port(pcie, pdev);
>  	if (ret)
> -		goto fail_clkreg;
> +		goto disable_phy;
>  
>  	return 0;
>  
> +disable_phy:
> +	armada8k_pcie_disable_phys(pcie);
>  fail_clkreg:
>  	clk_disable_unprepare(pcie->clk_reg);
>  fail:
> -- 
> 2.19.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
