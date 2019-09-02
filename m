Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790D4A5402
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZW6ApHaC9By8YRPeRlZabm+XNvao9COnE4dd8EwZa8=; b=V+vo6ux9z4cS05
	Xl4TpX/ZnUxg9wiF3NwSoF7IxIW//kCpUq+IJwLEOfx8IfNJBdgtYWk7HYUhyrxAg1ysO8HCuhyqC
	aLNiAPTeLN7oT/mZlnv0weTxWV7dm2s4flD74Ib8RnxOE+htJo8I0VcluuYJhXYvwecFvlbkzK9XY
	6CpG3z6l3GAH+0qtuX1yt+8R9GXsOK+J5Gt7Wq5efM7EsaMoaVY5Df4bfPrIcEMEHzWtShhl7gm+l
	yS2LfcUHWs5NrJO14r4m4aLWvQn7ILtkzuDmPs3gMHx0pC2x/++47TzOSajpPvpI64pPxrCI2pIaO
	078gxBbRcNHJVlXDMn8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jaU-0008VS-2l; Mon, 02 Sep 2019 10:29:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ja2-0008Up-Ta
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:29:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1ABE128;
 Mon,  2 Sep 2019 03:29:02 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 840AD3F246;
 Mon,  2 Sep 2019 03:29:01 -0700 (PDT)
Date: Mon, 2 Sep 2019 11:29:00 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 4/6] PCI: tegra: Add support to enable slot regulators
Message-ID: <20190902102859.GA9720@e119886-lin.cambridge.arm.com>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-5-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828172850.19871-5-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_032903_105971_C45A69EF 
X-CRM114-Status: GOOD (  21.03  )
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 digetx@gmail.com, jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 10:58:48PM +0530, Vidya Sagar wrote:
> Add support to get regulator information of 3.3V and 12V supplies of a PCIe
> slot from the respective controller's device-tree node and enable those
> supplies. This is required in platforms like p2972-0000 where the supplies
> to x16 slot owned by C5 controller need to be enabled before attempting to
> enumerate the devices.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
> V3:
> * Added a dev_err() print for failure case of tegra_pcie_get_slot_regulators() API
> * Modified to make 100ms sleep valid only if at least one of the regulator handles exist
> 
> V2:
> * Addressed review comments from Thierry Reding and Andrew Murray
> * Handled failure case of devm_regulator_get_optional() for -ENODEV cleanly
> 
>  drivers/pci/controller/dwc/pcie-tegra194.c | 83 ++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
> index 77fa6f70bc96..18453cc5e7e4 100644
> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> @@ -278,6 +278,8 @@ struct tegra_pcie_dw {
>  	u32 aspm_l0s_enter_lat;
>  
>  	struct regulator *pex_ctl_supply;
> +	struct regulator *slot_ctl_3v3;
> +	struct regulator *slot_ctl_12v;
>  
>  	unsigned int phy_count;
>  	struct phy **phys;
> @@ -1047,6 +1049,73 @@ static void tegra_pcie_downstream_dev_to_D0(struct tegra_pcie_dw *pcie)
>  	}
>  }
>  
> +static int tegra_pcie_get_slot_regulators(struct tegra_pcie_dw *pcie)
> +{
> +	pcie->slot_ctl_3v3 = devm_regulator_get_optional(pcie->dev, "vpcie3v3");
> +	if (IS_ERR(pcie->slot_ctl_3v3)) {
> +		if (PTR_ERR(pcie->slot_ctl_3v3) != -ENODEV)
> +			return PTR_ERR(pcie->slot_ctl_3v3);
> +
> +		pcie->slot_ctl_3v3 = NULL;
> +	}
> +
> +	pcie->slot_ctl_12v = devm_regulator_get_optional(pcie->dev, "vpcie12v");
> +	if (IS_ERR(pcie->slot_ctl_12v)) {
> +		if (PTR_ERR(pcie->slot_ctl_12v) != -ENODEV)
> +			return PTR_ERR(pcie->slot_ctl_12v);
> +
> +		pcie->slot_ctl_12v = NULL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int tegra_pcie_enable_slot_regulators(struct tegra_pcie_dw *pcie)
> +{
> +	int ret;
> +
> +	if (pcie->slot_ctl_3v3) {
> +		ret = regulator_enable(pcie->slot_ctl_3v3);
> +		if (ret < 0) {
> +			dev_err(pcie->dev,
> +				"Failed to enable 3.3V slot supply: %d\n", ret);
> +			return ret;
> +		}
> +	}
> +
> +	if (pcie->slot_ctl_12v) {
> +		ret = regulator_enable(pcie->slot_ctl_12v);
> +		if (ret < 0) {
> +			dev_err(pcie->dev,
> +				"Failed to enable 12V slot supply: %d\n", ret);
> +			goto fail_12v_enable;
> +		}
> +	}
> +
> +	/*
> +	 * According to PCI Express Card Electromechanical Specification
> +	 * Revision 1.1, Table-2.4, T_PVPERL (Power stable to PERST# inactive)
> +	 * should be a minimum of 100ms.
> +	 */
> +	if (pcie->slot_ctl_3v3 || pcie->slot_ctl_12v)
> +		msleep(100);
> +
> +	return 0;
> +
> +fail_12v_enable:
> +	if (pcie->slot_ctl_3v3)
> +		regulator_disable(pcie->slot_ctl_3v3);
> +	return ret;
> +}
> +
> +static void tegra_pcie_disable_slot_regulators(struct tegra_pcie_dw *pcie)
> +{
> +	if (pcie->slot_ctl_12v)
> +		regulator_disable(pcie->slot_ctl_12v);
> +	if (pcie->slot_ctl_3v3)
> +		regulator_disable(pcie->slot_ctl_3v3);
> +}
> +
>  static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
>  					bool en_hw_hot_rst)
>  {
> @@ -1060,6 +1129,10 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
>  		return ret;
>  	}
>  
> +	ret = tegra_pcie_enable_slot_regulators(pcie);
> +	if (ret < 0)
> +		goto fail_slot_reg_en;
> +
>  	ret = regulator_enable(pcie->pex_ctl_supply);
>  	if (ret < 0) {
>  		dev_err(pcie->dev, "Failed to enable regulator: %d\n", ret);
> @@ -1142,6 +1215,8 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
>  fail_core_clk:
>  	regulator_disable(pcie->pex_ctl_supply);
>  fail_reg_en:
> +	tegra_pcie_disable_slot_regulators(pcie);
> +fail_slot_reg_en:
>  	tegra_pcie_bpmp_set_ctrl_state(pcie, false);
>  
>  	return ret;
> @@ -1174,6 +1249,8 @@ static int __deinit_controller(struct tegra_pcie_dw *pcie)
>  		return ret;
>  	}
>  
> +	tegra_pcie_disable_slot_regulators(pcie);
> +
>  	ret = tegra_pcie_bpmp_set_ctrl_state(pcie, false);
>  	if (ret) {
>  		dev_err(pcie->dev, "Failed to disable controller %d: %d\n",
> @@ -1373,6 +1450,12 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	ret = tegra_pcie_get_slot_regulators(pcie);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to get slot regulators: %d\n", ret);
> +		return ret;
> +	}
> +
>  	pcie->pex_ctl_supply = devm_regulator_get(dev, "vddio-pex-ctl");
>  	if (IS_ERR(pcie->pex_ctl_supply)) {
>  		dev_err(dev, "Failed to get regulator: %ld\n",
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
