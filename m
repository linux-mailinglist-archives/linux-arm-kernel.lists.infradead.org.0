Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0D24C862
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 09:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yjb8B4KvuxTcsSpYAv85WtsZF6SBGI/FMhmbk0iz56I=; b=nQQynlVVMqiwYd
	n/wZUZJw17+F9oQH5hv8RCnBjApktJXgms0wmCzZQ2/PNH1XyAOzvEFjJr3/b+9y+k4fpaZu0pFmJ
	JWwNhxSyr4YgpOuZzWmfAYk+TfZ9MCoLbtkFLIa4vTRRiZkmuq6IUxtu7uHJ2lbHOlNbkKsTZHZTx
	edVR7t9UFG/9tgMlVRI4KUytA9n4Q4wYEMvIIghI2So4ILJOVVZTQXrJflY1dW9rBv/btuz9tNvRW
	pIEchuvTYRpsgLpYnhQBA3/ZPQyOz56uRXklcD2uHirfzOisY5i577qPwjlWczgqhr0zavYHkT1Qd
	EGxnKQ4T7plXECCpOdpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdrSl-0007iC-1e; Thu, 20 Jun 2019 07:26:27 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdrSV-0007hj-FP
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 07:26:13 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5K7Q5UZ058632;
 Thu, 20 Jun 2019 02:26:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561015565;
 bh=O1KA6RnUQCO9na586AB8bg1jwRIW0mQLDXklOVjlYJM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=A+7Y2pjvJbJ8BDw4mQmrU/GqFGVIKQ08NRas/4nN10CVTFFYiXYGB3tbOP3cKeg+t
 MjYbLypYwsEACkM23GF6P3C1qgF5/ZpzFpK3hy1DLB88Z+AE5p4K9ZDI2SICRhyKf+
 q1Dt8LdkyQK0x/WxPukzI8IJ6qi9FpmNiq8szoBw=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5K7Q5im118694
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Jun 2019 02:26:05 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 20
 Jun 2019 02:26:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 20 Jun 2019 02:26:04 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5K7PwPx018634;
 Thu, 20 Jun 2019 02:25:59 -0500
Subject: Re: [PATCH V10 13/15] phy: tegra: Add PCIe PIPE2UPHY support
To: Vidya Sagar <vidyas@nvidia.com>, <lorenzo.pieralisi@arm.com>,
 <bhelgaas@google.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
References: <20190612095339.20118-1-vidyas@nvidia.com>
 <20190612095339.20118-14-vidyas@nvidia.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <9e699085-ef5e-f7be-e27c-23907ba92c82@ti.com>
Date: Thu, 20 Jun 2019 12:54:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190612095339.20118-14-vidyas@nvidia.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_002611_601920_56666EAD 
X-CRM114-Status: GOOD (  24.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/06/19 3:23 PM, Vidya Sagar wrote:
> Synopsys DesignWare core based PCIe controllers in Tegra 194 SoC interface
> with Universal PHY (UPHY) module through a PIPE2UPHY (P2U) module.
> For each PCIe lane of a controller, there is a P2U unit instantiated at
> hardware level. This driver provides support for the programming required
> for each P2U that is going to be used for a PCIe controller.

One minor comment below. With that fixed

Acked-by: Kishon Vijay Abraham I <kishon@ti.com>
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v9]:
> * Used _relaxed() versions of readl() & writel()
> 
> Changes since [v8]:
> * Made it dependent on ARCH_TEGRA_194_SOC directly instead of ARCH_TEGRA
> 
> Changes since [v7]:
> * Changed P2U driver file name from pcie-p2u-tegra194.c to phy-tegra194-p2u.c
> 
> Changes since [v6]:
> * None
> 
> Changes since [v5]:
> * Addressed review comments from Thierry
> 
> Changes since [v4]:
> * None
> 
> Changes since [v3]:
> * Rebased on top of linux-next top of the tree
> 
> Changes since [v2]:
> * Replaced spaces with tabs in Kconfig file
> * Sorted header file inclusion alphabetically
> 
> Changes since [v1]:
> * Added COMPILE_TEST in Kconfig
> * Removed empty phy_ops implementations
> * Modified code according to DT documentation file modifications
> 
>  drivers/phy/tegra/Kconfig            |   7 ++
>  drivers/phy/tegra/Makefile           |   1 +
>  drivers/phy/tegra/phy-tegra194-p2u.c | 120 +++++++++++++++++++++++++++
>  3 files changed, 128 insertions(+)
>  create mode 100644 drivers/phy/tegra/phy-tegra194-p2u.c
> 
> diff --git a/drivers/phy/tegra/Kconfig b/drivers/phy/tegra/Kconfig
> index e516967d695b..f9817c3ae85f 100644
> --- a/drivers/phy/tegra/Kconfig
> +++ b/drivers/phy/tegra/Kconfig
> @@ -7,3 +7,10 @@ config PHY_TEGRA_XUSB
>  
>  	  To compile this driver as a module, choose M here: the module will
>  	  be called phy-tegra-xusb.
> +
> +config PHY_TEGRA194_P2U
> +	tristate "NVIDIA Tegra194 PIPE2UPHY PHY driver"
> +	depends on ARCH_TEGRA_194_SOC || COMPILE_TEST
> +	select GENERIC_PHY
> +	help
> +	  Enable this to support the P2U (PIPE to UPHY) that is part of Tegra 19x SOCs.
> diff --git a/drivers/phy/tegra/Makefile b/drivers/phy/tegra/Makefile
> index 64ccaeacb631..320dd389f34d 100644
> --- a/drivers/phy/tegra/Makefile
> +++ b/drivers/phy/tegra/Makefile
> @@ -6,3 +6,4 @@ phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_124_SOC) += xusb-tegra124.o
>  phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_132_SOC) += xusb-tegra124.o
>  phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_210_SOC) += xusb-tegra210.o
>  phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_186_SOC) += xusb-tegra186.o
> +obj-$(CONFIG_PHY_TEGRA194_P2U) += phy-tegra194-p2u.o
> diff --git a/drivers/phy/tegra/phy-tegra194-p2u.c b/drivers/phy/tegra/phy-tegra194-p2u.c
> new file mode 100644
> index 000000000000..df009abd2482
> --- /dev/null
> +++ b/drivers/phy/tegra/phy-tegra194-p2u.c
> @@ -0,0 +1,120 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * P2U (PIPE to UPHY) driver for Tegra T194 SoC
> + *
> + * Copyright (C) 2019 NVIDIA Corporation.
> + *
> + * Author: Vidya Sagar <vidyas@nvidia.com>
> + */
> +
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/phy/phy.h>
> +
> +#define P2U_PERIODIC_EQ_CTRL_GEN3	0xc0
> +#define P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN		BIT(0)
> +#define P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN	BIT(1)
> +#define P2U_PERIODIC_EQ_CTRL_GEN4	0xc4
> +#define P2U_PERIODIC_EQ_CTRL_GEN4_INIT_PRESET_EQ_TRAIN_EN	BIT(1)
> +
> +#define P2U_RX_DEBOUNCE_TIME				0xa4
> +#define P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_MASK	0xffff
> +#define P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL		160
> +
> +struct tegra_p2u {
> +	void __iomem *base;
> +};
> +
> +static inline void p2u_writel(struct tegra_p2u *phy, const u32 value,
> +			      const u32 reg)
> +{
> +	writel_relaxed(value, phy->base + reg);
> +}
> +
> +static inline u32 p2u_readl(struct tegra_p2u *phy, const u32 reg)
> +{
> +	return readl_relaxed(phy->base + reg);
> +}
> +
> +static int tegra_p2u_power_on(struct phy *x)
> +{
> +	struct tegra_p2u *phy = phy_get_drvdata(x);
> +	u32 val;
> +
> +	val = p2u_readl(phy, P2U_PERIODIC_EQ_CTRL_GEN3);
> +	val &= ~P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN;
> +	val |= P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN;
> +	p2u_writel(phy, val, P2U_PERIODIC_EQ_CTRL_GEN3);
> +
> +	val = p2u_readl(phy, P2U_PERIODIC_EQ_CTRL_GEN4);
> +	val |= P2U_PERIODIC_EQ_CTRL_GEN4_INIT_PRESET_EQ_TRAIN_EN;
> +	p2u_writel(phy, val, P2U_PERIODIC_EQ_CTRL_GEN4);
> +
> +	val = p2u_readl(phy, P2U_RX_DEBOUNCE_TIME);
> +	val &= ~P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_MASK;
> +	val |= P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL;
> +	p2u_writel(phy, val, P2U_RX_DEBOUNCE_TIME);
> +
> +	return 0;
> +}
> +
> +static const struct phy_ops ops = {
> +	.power_on = tegra_p2u_power_on,
> +	.owner = THIS_MODULE,
> +};
> +
> +static int tegra_p2u_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +	struct phy *generic_phy;
> +	struct tegra_p2u *phy;
> +	struct resource *res;
> +
> +	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ctl");
> +	phy->base = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(phy->base))
> +		return PTR_ERR_OR_ZERO(phy->base);
> +
> +	platform_set_drvdata(pdev, phy);
> +
> +	generic_phy = devm_phy_create(dev, NULL, &ops);
> +	if (IS_ERR(generic_phy))
> +		return PTR_ERR_OR_ZERO(generic_phy);
> +
> +	phy_set_drvdata(generic_phy, phy);
> +
> +	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (IS_ERR(phy_provider))
> +		return PTR_ERR_OR_ZERO(phy_provider);
> +
> +	return 0;

Just make this..
phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
return PTR_ERR_OR_ZERO(phy_provider);

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
