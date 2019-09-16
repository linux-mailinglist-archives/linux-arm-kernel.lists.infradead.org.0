Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E430EB3B30
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Sau4mmKaIJzzkLQHzzCS7q1dgFCOrvoSUqHYvHn7ik=; b=iOvxEzsPs7x8NU
	6E1mZau/saB6FIvPG5O8sFNQGtwQPfOVJK7PLwTJqg1fMuPKvEo6xkbrnvQgQj5pAOVqIJR5BbEL3
	JZWYIFSNho9UkkOGgX3mGnPgsvNBSDFwNMW1+cpQZ44MiEoWVwZ0PClIpPy0Zpi2JvImYMEyR5duf
	txlmxA1xlkzkSbhfGpx8o5AYnijYE57eiFG9Q3eL5MCoH5QSQYnUmPr7YXfFc16U27Io7kmb4vLFb
	qmq4bHv9ZS3SUgFI0Pgm0DoCTEc3rQkScZd99WNa2KY4zj3mL+IMMxXq63t3et/61qMPw9zIZPsUw
	eH+vg5Mt5hNRUEXs9Z/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qwK-00008s-EA; Mon, 16 Sep 2019 13:21:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qw4-00006s-Pi; Mon, 16 Sep 2019 13:20:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DF5D337;
 Mon, 16 Sep 2019 06:20:54 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A792B3F67D;
 Mon, 16 Sep 2019 06:20:53 -0700 (PDT)
Date: Mon, 16 Sep 2019 14:20:51 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2 3/6] PCI: amlogic: meson: Add support for G12A
Message-ID: <20190916132051.GP9720@e119886-lin.cambridge.arm.com>
References: <20190916125022.10754-1-narmstrong@baylibre.com>
 <20190916125022.10754-4-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916125022.10754-4-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_062056_929668_A299C938 
X-CRM114-Status: GOOD (  24.79  )
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
Cc: maz@kernel.org, lorenzo.pieralisi@arm.com, gouwa@khadas.com,
 khilman@baylibre.com, nick@khadas.com, linux-kernel@vger.kernel.org,
 kishon@ti.com, repk@triplefau.lt, linux-pci@vger.kernel.org,
 bhelgaas@google.com, linux-amlogic@lists.infradead.org, yue.wang@Amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 02:50:19PM +0200, Neil Armstrong wrote:
> Add support for the Amlogic G12A SoC using a separate shared PHY.
> 
> This adds support for fetching a PHY phandle and call the PHY init,
> reset and power on/off calls instead of writing in the PHY register or
> toggling the PHY reset line.
> 
> The MIPI clock and the PHY memory resource are only required for the
> Amlogic AXG SoC PCIe PHY setup, thus these elements are ignored for
> the Amlogic G12A having a separate shared PHY.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  drivers/pci/controller/dwc/pci-meson.c | 128 ++++++++++++++++++++-----
>  1 file changed, 105 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/controller/dwc/pci-meson.c
> index ab79990798f8..3772b02a5c55 100644
> --- a/drivers/pci/controller/dwc/pci-meson.c
> +++ b/drivers/pci/controller/dwc/pci-meson.c
> @@ -16,6 +16,7 @@
>  #include <linux/reset.h>
>  #include <linux/resource.h>
>  #include <linux/types.h>
> +#include <linux/phy/phy.h>
>  
>  #include "pcie-designware.h"
>  
> @@ -96,12 +97,18 @@ struct meson_pcie_rc_reset {
>  	struct reset_control *apb;
>  };
>  
> +struct meson_pcie_param {
> +	bool has_shared_phy;
> +};
> +
>  struct meson_pcie {
>  	struct dw_pcie pci;
>  	struct meson_pcie_mem_res mem_res;
>  	struct meson_pcie_clk_res clk_res;
>  	struct meson_pcie_rc_reset mrst;
>  	struct gpio_desc *reset_gpio;
> +	struct phy *phy;
> +	const struct meson_pcie_param *param;
>  };
>  
>  static struct reset_control *meson_pcie_get_reset(struct meson_pcie *mp,
> @@ -123,10 +130,12 @@ static int meson_pcie_get_resets(struct meson_pcie *mp)
>  {
>  	struct meson_pcie_rc_reset *mrst = &mp->mrst;
>  
> -	mrst->phy = meson_pcie_get_reset(mp, "phy", PCIE_SHARED_RESET);
> -	if (IS_ERR(mrst->phy))
> -		return PTR_ERR(mrst->phy);
> -	reset_control_deassert(mrst->phy);
> +	if (!mp->param->has_shared_phy) {
> +		mrst->phy = meson_pcie_get_reset(mp, "phy", PCIE_SHARED_RESET);
> +		if (IS_ERR(mrst->phy))
> +			return PTR_ERR(mrst->phy);
> +		reset_control_deassert(mrst->phy);
> +	}
>  
>  	mrst->port = meson_pcie_get_reset(mp, "port", PCIE_NORMAL_RESET);
>  	if (IS_ERR(mrst->port))
> @@ -180,27 +189,52 @@ static int meson_pcie_get_mems(struct platform_device *pdev,
>  	if (IS_ERR(mp->mem_res.cfg_base))
>  		return PTR_ERR(mp->mem_res.cfg_base);
>  
> -	/* Meson SoC has two PCI controllers use same phy register*/
> -	mp->mem_res.phy_base = meson_pcie_get_mem_shared(pdev, mp, "phy");
> -	if (IS_ERR(mp->mem_res.phy_base))
> -		return PTR_ERR(mp->mem_res.phy_base);
> +	/* Meson AXG SoC has two PCI controllers use same phy register */
> +	if (!mp->param->has_shared_phy) {
> +		mp->mem_res.phy_base =
> +			meson_pcie_get_mem_shared(pdev, mp, "phy");
> +		if (IS_ERR(mp->mem_res.phy_base))
> +			return PTR_ERR(mp->mem_res.phy_base);
> +	}
>  
>  	return 0;
>  }
>  
> -static void meson_pcie_power_on(struct meson_pcie *mp)
> +static int meson_pcie_power_on(struct meson_pcie *mp)
>  {
> -	writel(MESON_PCIE_PHY_POWERUP, mp->mem_res.phy_base);
> +	int ret = 0;
> +
> +	if (mp->param->has_shared_phy) {
> +		ret = phy_init(mp->phy);
> +		if (ret)
> +			return ret;
> +
> +		ret = phy_power_on(mp->phy);
> +		if (ret) {
> +			phy_exit(mp->phy);
> +			return ret;
> +		}
> +	} else
> +		writel(MESON_PCIE_PHY_POWERUP, mp->mem_res.phy_base);
> +
> +	return 0;
>  }
>  
> -static void meson_pcie_reset(struct meson_pcie *mp)
> +static int meson_pcie_reset(struct meson_pcie *mp)
>  {
>  	struct meson_pcie_rc_reset *mrst = &mp->mrst;
> -
> -	reset_control_assert(mrst->phy);
> -	udelay(PCIE_RESET_DELAY);
> -	reset_control_deassert(mrst->phy);
> -	udelay(PCIE_RESET_DELAY);
> +	int ret = 0;
> +
> +	if (mp->param->has_shared_phy) {
> +		ret = phy_reset(mp->phy);
> +		if (ret)
> +			return ret;
> +	} else {
> +		reset_control_assert(mrst->phy);
> +		udelay(PCIE_RESET_DELAY);
> +		reset_control_deassert(mrst->phy);
> +		udelay(PCIE_RESET_DELAY);
> +	}
>  
>  	reset_control_assert(mrst->port);
>  	reset_control_assert(mrst->apb);
> @@ -208,6 +242,8 @@ static void meson_pcie_reset(struct meson_pcie *mp)
>  	reset_control_deassert(mrst->port);
>  	reset_control_deassert(mrst->apb);
>  	udelay(PCIE_RESET_DELAY);
> +
> +	return 0;
>  }
>  
>  static inline struct clk *meson_pcie_probe_clock(struct device *dev,
> @@ -250,9 +286,11 @@ static int meson_pcie_probe_clocks(struct meson_pcie *mp)
>  	if (IS_ERR(res->port_clk))
>  		return PTR_ERR(res->port_clk);
>  
> -	res->mipi_gate = meson_pcie_probe_clock(dev, "mipi", 0);
> -	if (IS_ERR(res->mipi_gate))
> -		return PTR_ERR(res->mipi_gate);
> +	if (!mp->param->has_shared_phy) {
> +		res->mipi_gate = meson_pcie_probe_clock(dev, "mipi", 0);
> +		if (IS_ERR(res->mipi_gate))
> +			return PTR_ERR(res->mipi_gate);
> +	}
>  
>  	res->general_clk = meson_pcie_probe_clock(dev, "general", 0);
>  	if (IS_ERR(res->general_clk))
> @@ -524,6 +562,7 @@ static const struct dw_pcie_ops dw_pcie_ops = {
>  
>  static int meson_pcie_probe(struct platform_device *pdev)
>  {
> +	const struct meson_pcie_param *match_data;
>  	struct device *dev = &pdev->dev;
>  	struct dw_pcie *pci;
>  	struct meson_pcie *mp;
> @@ -537,6 +576,19 @@ static int meson_pcie_probe(struct platform_device *pdev)
>  	pci->dev = dev;
>  	pci->ops = &dw_pcie_ops;
>  
> +	match_data = of_device_get_match_data(dev);
> +	if (!match_data) {
> +		dev_err(dev, "failed to get match data\n");
> +		return -ENODEV;
> +	}
> +	mp->param = match_data;
> +
> +	if (mp->param->has_shared_phy) {
> +		mp->phy = devm_phy_get(dev, "pcie");
> +		if (IS_ERR(mp->phy))
> +			return PTR_ERR(mp->phy);
> +	}
> +
>  	mp->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
>  	if (IS_ERR(mp->reset_gpio)) {
>  		dev_err(dev, "get reset gpio failed\n");
> @@ -555,13 +607,22 @@ static int meson_pcie_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	meson_pcie_power_on(mp);
> -	meson_pcie_reset(mp);
> +	ret = meson_pcie_power_on(mp);
> +	if (ret) {
> +		dev_err(dev, "phy power on failed, %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = meson_pcie_reset(mp);
> +	if (ret) {
> +		dev_err(dev, "reset failed, %d\n", ret);
> +		goto err_phy;
> +	}
>  
>  	ret = meson_pcie_probe_clocks(mp);
>  	if (ret) {
>  		dev_err(dev, "init clock resources failed, %d\n", ret);
> -		return ret;
> +		goto err_phy;
>  	}
>  
>  	platform_set_drvdata(pdev, mp);
> @@ -569,15 +630,36 @@ static int meson_pcie_probe(struct platform_device *pdev)
>  	ret = meson_add_pcie_port(mp, pdev);
>  	if (ret < 0) {
>  		dev_err(dev, "Add PCIe port failed, %d\n", ret);
> -		return ret;
> +		goto err_phy;
>  	}
>  
>  	return 0;
> +
> +err_phy:
> +	if (mp->param->has_shared_phy) {
> +		phy_power_off(mp->phy);
> +		phy_exit(mp->phy);
> +	}

Interestingly for AXG, if the probe fails we don't seem to do the opposite
of MESON_PCIE_PHY_POWERUP. Though I can see this is a pre-existing issue that
has little impact and probably rarely gets hit, so:

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

However it would be *super really nice* to write a meson_pcie_power_off that
mirrors meson_pcie_power_on that you could call here instead.

Thanks,

Andrew Murray 

> +
> +	return ret;
>  }
>  
> +static struct meson_pcie_param meson_pcie_axg_param = {
> +	.has_shared_phy = false,
> +};
> +
> +static struct meson_pcie_param meson_pcie_g12a_param = {
> +	.has_shared_phy = true,
> +};
> +
>  static const struct of_device_id meson_pcie_of_match[] = {
>  	{
>  		.compatible = "amlogic,axg-pcie",
> +		.data = &meson_pcie_axg_param,
> +	},
> +	{
> +		.compatible = "amlogic,g12a-pcie",
> +		.data = &meson_pcie_g12a_param,
>  	},
>  	{},
>  };
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
