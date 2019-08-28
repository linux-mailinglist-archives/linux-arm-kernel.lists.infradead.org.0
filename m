Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB64A061C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IiMb8xmq1XD5l65WQWjbiTio4o9WDOw0ncEgo8M/Cqk=; b=MbyrbnflSRSqWJ
	QikpWyLAigPWOdVMBYgH+u5GeRHyVkZpKywkWYUIX8ZpgxfiUw7et5xoIv0krafxfe2Ex2jG42TlU
	WiW51f5Yhc//wQpyoqHf75C5XIA9QqBBwO+OQlwqSMVoAnbhaTzrfwbRCcgxwq4xaBA+iaNnXZJl+
	KkEA1vUL/Aq9mf+Giy+ElCCkAhchkqKAd2YaYeWWBV3cBjSxvHCkxc/6+JWzlV+4y3ocJIWImYsRR
	v2rf3ocp1OTCxDH2kr8VWjYw17W1AO0nTWcTkDAbfs3tn9U9b7tQG+vqp9fYYHSmixfW2jjdyJ/9M
	IKBLUR81my3oPeXIUN1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2zkG-0003de-L7; Wed, 28 Aug 2019 15:20:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zk0-0003d8-Sa
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 15:20:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C77F28;
 Wed, 28 Aug 2019 08:20:08 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B19D3F59C;
 Wed, 28 Aug 2019 08:20:07 -0700 (PDT)
Date: Wed, 28 Aug 2019 16:20:05 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V2 4/6] PCI: tegra: Add support to enable slot regulators
Message-ID: <20190828152005.GY14582@e119886-lin.cambridge.arm.com>
References: <20190828131505.28475-1-vidyas@nvidia.com>
 <20190828131505.28475-5-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828131505.28475-5-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_082009_017017_E3D32C64 
X-CRM114-Status: GOOD (  20.74  )
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

On Wed, Aug 28, 2019 at 06:45:03PM +0530, Vidya Sagar wrote:
> Add support to get regulator information of 3.3V and 12V supplies of a PCIe
> slot from the respective controller's device-tree node and enable those
> supplies. This is required in platforms like p2972-0000 where the supplies
> to x16 slot owned by C5 controller need to be enabled before attempting to
> enumerate the devices.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V2:
> * Addressed review comments from Thierry Reding and Andrew Murray
> * Handled failure case of devm_regulator_get_optional() for -ENODEV cleanly
> 
>  drivers/pci/controller/dwc/pcie-tegra194.c | 80 ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
> index 057ba4f9fbcd..6a66101ec83d 100644
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
> @@ -1047,6 +1049,72 @@ static void tegra_pcie_downstream_dev_to_D0(struct tegra_pcie_dw *pcie)
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
> +				"Failed to enable 3V3 slot supply: %d\n", ret);
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
> +	msleep(100);
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
> @@ -1060,6 +1128,10 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
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
> @@ -1142,6 +1214,8 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
>  fail_core_clk:
>  	regulator_disable(pcie->pex_ctl_supply);
>  fail_reg_en:
> +	tegra_pcie_disable_slot_regulators(pcie);
> +fail_slot_reg_en:
>  	tegra_pcie_bpmp_set_ctrl_state(pcie, false);
>  
>  	return ret;
> @@ -1174,6 +1248,8 @@ static int __deinit_controller(struct tegra_pcie_dw *pcie)
>  		return ret;
>  	}
>  
> +	tegra_pcie_disable_slot_regulators(pcie);
> +
>  	ret = tegra_pcie_bpmp_set_ctrl_state(pcie, false);
>  	if (ret) {
>  		dev_err(pcie->dev, "Failed to disable controller %d: %d\n",
> @@ -1373,6 +1449,10 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	ret = tegra_pcie_get_slot_regulators(pcie);
> +	if (ret < 0)
> +		return ret;

All of the functions called from tegra_pcie_dw_probe appear to dev_err if
something goes wrong, is there any reason why you haven't done that here?

Thanks,

Andrew Murray

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
