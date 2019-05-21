Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4132586A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 21:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s59hNgn3LZ9xhIm9FFk/MSZBFvQbPiAQNkV/TZznc1Q=; b=jI8dmy4FkszXQxAAHO9zxt8sR
	sVA9ioc8YwzSyVqWYUmkNnbbQuPe0Uaa7dxYbhl1fTpZeoJaBeqZPtpvhYxqIVk7tpnunmb+lrkW4
	TC9QfPO5lyFMuGenxoexD+LolrKOggb3zElqJ/9D7yUdQHtORa4PwecLjwRvzqsOSmZ8oR+ZhN1Dm
	3aKwVgBSVO5nhWcWx2w9oXlygUesRR2hriNR1o7VtHIuf9BnXqDXLNfVdkc4qKBMGg7R2TWB8AW+j
	OGZBFdnxFiw2g+RJif98REi2FFkX8tJ340bV8kUvD/Z4G6BhGsjFvfF+zv1ZPq5a2bKaNWEb3uEka
	TivbhyuDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTAaM-0000fc-BC; Tue, 21 May 2019 19:38:06 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTAaF-0000fH-FU
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 19:38:01 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ce453930000>; Tue, 21 May 2019 12:37:55 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 21 May 2019 12:37:58 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 21 May 2019 12:37:58 -0700
Received: from [10.25.72.115] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 21 May
 2019 19:37:52 +0000
Subject: Re: [PATCH V7 13/15] phy: tegra: Add PCIe PIPE2UPHY support
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-14-vidyas@nvidia.com> <20190521110011.GL29166@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <40509b95-0e64-f533-cc78-6ebc81daf321@nvidia.com>
Date: Wed, 22 May 2019 01:07:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521110011.GL29166@ulmo>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558467475; bh=dTx73Mz9zMheAjEyoEiq898TZNv2XaBnZjXZ3mOkt+o=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=i4T0HLTZIoLnJxvcHgX82Te0EvwiSRl/a/isR4rifeLpkeItkYIRndge+fzJgnq6j
 SNajbngr346yhLuom3HXExhM+4mRUIE+tMxyJARBl3HoklL2ZiPYBSG6wMK1QBtu//
 x1G4LNFWiX7GbHN8G0mPGwSXsGKBYlo8tgVrzjPY0H4DgqXOUFLmIqiJJvxipjWeQA
 j7hv9YV0lUrB9W/q+UdPbiBn3tICoYjxvl9SLUVkN86moLRm8T227kdt7FmDHy5j1D
 61cfwWNh4vmWHaY1blwiXm/SP1dKKXifrTrqr0ZzSYFQZw0INIhnPv0yegev9V7+kl
 Hr9dyQQvn4XgQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_123759_535346_5202444E 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/21/2019 4:30 PM, Thierry Reding wrote:
> On Fri, May 17, 2019 at 06:08:44PM +0530, Vidya Sagar wrote:
>> Synopsys DesignWare core based PCIe controllers in Tegra 194 SoC interface
>> with Universal PHY (UPHY) module through a PIPE2UPHY (P2U) module.
>> For each PCIe lane of a controller, there is a P2U unit instantiated at
>> hardware level. This driver provides support for the programming required
>> for each P2U that is going to be used for a PCIe controller.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>> Changes since [v6]:
>> * None
>>
>> Changes since [v5]:
>> * Addressed review comments from Thierry
>>
>> Changes since [v4]:
>> * None
>>
>> Changes since [v3]:
>> * Rebased on top of linux-next top of the tree
>>
>> Changes since [v2]:
>> * Replaced spaces with tabs in Kconfig file
>> * Sorted header file inclusion alphabetically
>>
>> Changes since [v1]:
>> * Added COMPILE_TEST in Kconfig
>> * Removed empty phy_ops implementations
>> * Modified code according to DT documentation file modifications
>>
>>   drivers/phy/tegra/Kconfig             |   7 ++
>>   drivers/phy/tegra/Makefile            |   1 +
>>   drivers/phy/tegra/pcie-p2u-tegra194.c | 109 ++++++++++++++++++++++++++
>>   3 files changed, 117 insertions(+)
>>   create mode 100644 drivers/phy/tegra/pcie-p2u-tegra194.c
>>
>> diff --git a/drivers/phy/tegra/Kconfig b/drivers/phy/tegra/Kconfig
>> index a3b1de953fb7..06d423fa85b4 100644
>> --- a/drivers/phy/tegra/Kconfig
>> +++ b/drivers/phy/tegra/Kconfig
>> @@ -6,3 +6,10 @@ config PHY_TEGRA_XUSB
>>   
>>   	  To compile this driver as a module, choose M here: the module will
>>   	  be called phy-tegra-xusb.
>> +
>> +config PHY_TEGRA194_PCIE_P2U
>> +	tristate "NVIDIA Tegra P2U PHY Driver"
> 
> The Kconfig symbol and driver are named inconsistently. That's not
> inherently wrong, but I think it unnecessarily complicates things. Why
> not just do something like:
> 
> 	config PHY_TEGRA194_P2U
> 
> and name the driver...
Ok. Done.

> 
>> +	depends on ARCH_TEGRA || COMPILE_TEST
>> +	select GENERIC_PHY
>> +	help
>> +	  Enable this to support the P2U (PIPE to UPHY) that is part of Tegra 19x SOCs.
>> diff --git a/drivers/phy/tegra/Makefile b/drivers/phy/tegra/Makefile
>> index a93cd9a499b2..1aaca794f40c 100644
>> --- a/drivers/phy/tegra/Makefile
>> +++ b/drivers/phy/tegra/Makefile
>> @@ -5,3 +5,4 @@ phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_124_SOC) += xusb-tegra124.o
>>   phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_132_SOC) += xusb-tegra124.o
>>   phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_210_SOC) += xusb-tegra210.o
>>   phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_186_SOC) += xusb-tegra186.o
>> +obj-$(CONFIG_PHY_TEGRA194_PCIE_P2U) += pcie-p2u-tegra194.o
> 
> ... phy-tegra194-p2u here? Or perhaps even leave away the 194 and make
> it just phy-tegra-p2u. That would make it consistent with the
> phy-tegra-xusb driver.
I'll go with phy-tegra194-p2u here as P2U is present only starting from T194.

> 
> Looks good otherwise.
> 
> Thierry
> 
>> diff --git a/drivers/phy/tegra/pcie-p2u-tegra194.c b/drivers/phy/tegra/pcie-p2u-tegra194.c
>> new file mode 100644
>> index 000000000000..fae2afe1a1aa
>> --- /dev/null
>> +++ b/drivers/phy/tegra/pcie-p2u-tegra194.c
>> @@ -0,0 +1,109 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * P2U (PIPE to UPHY) driver for Tegra T194 SoC
>> + *
>> + * Copyright (C) 2019 NVIDIA Corporation.
>> + *
>> + * Author: Vidya Sagar <vidyas@nvidia.com>
>> + */
>> +
>> +#include <linux/err.h>
>> +#include <linux/io.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/phy/phy.h>
>> +
>> +#define P2U_PERIODIC_EQ_CTRL_GEN3	0xc0
>> +#define P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN		BIT(0)
>> +#define P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN	BIT(1)
>> +#define P2U_PERIODIC_EQ_CTRL_GEN4	0xc4
>> +#define P2U_PERIODIC_EQ_CTRL_GEN4_INIT_PRESET_EQ_TRAIN_EN	BIT(1)
>> +
>> +#define P2U_RX_DEBOUNCE_TIME				0xa4
>> +#define P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_MASK	0xffff
>> +#define P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL		160
>> +
>> +struct tegra_p2u {
>> +	void __iomem *base;
>> +};
>> +
>> +static int tegra_p2u_power_on(struct phy *x)
>> +{
>> +	struct tegra_p2u *phy = phy_get_drvdata(x);
>> +	u32 val;
>> +
>> +	val = readl(phy->base + P2U_PERIODIC_EQ_CTRL_GEN3);
>> +	val &= ~P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN;
>> +	val |= P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN;
>> +	writel(val, phy->base + P2U_PERIODIC_EQ_CTRL_GEN3);
>> +
>> +	val = readl(phy->base + P2U_PERIODIC_EQ_CTRL_GEN4);
>> +	val |= P2U_PERIODIC_EQ_CTRL_GEN4_INIT_PRESET_EQ_TRAIN_EN;
>> +	writel(val, phy->base + P2U_PERIODIC_EQ_CTRL_GEN4);
>> +
>> +	val = readl(phy->base + P2U_RX_DEBOUNCE_TIME);
>> +	val &= ~P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_MASK;
>> +	val |= P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL;
>> +	writel(val, phy->base + P2U_RX_DEBOUNCE_TIME);
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct phy_ops ops = {
>> +	.power_on = tegra_p2u_power_on,
>> +	.owner = THIS_MODULE,
>> +};
>> +
>> +static int tegra_p2u_probe(struct platform_device *pdev)
>> +{
>> +	struct phy_provider *phy_provider;
>> +	struct device *dev = &pdev->dev;
>> +	struct phy *generic_phy;
>> +	struct tegra_p2u *phy;
>> +	struct resource *res;
>> +
>> +	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
>> +	if (!phy)
>> +		return -ENOMEM;
>> +
>> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ctl");
>> +	phy->base = devm_ioremap_resource(dev, res);
>> +	if (IS_ERR(phy->base))
>> +		return PTR_ERR_OR_ZERO(phy->base);
>> +
>> +	platform_set_drvdata(pdev, phy);
>> +
>> +	generic_phy = devm_phy_create(dev, NULL, &ops);
>> +	if (IS_ERR(generic_phy))
>> +		return PTR_ERR_OR_ZERO(generic_phy);
>> +
>> +	phy_set_drvdata(generic_phy, phy);
>> +
>> +	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>> +	if (IS_ERR(phy_provider))
>> +		return PTR_ERR_OR_ZERO(phy_provider);
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct of_device_id tegra_p2u_id_table[] = {
>> +	{
>> +		.compatible = "nvidia,tegra194-p2u",
>> +	},
>> +	{}
>> +};
>> +MODULE_DEVICE_TABLE(of, tegra_p2u_id_table);
>> +
>> +static struct platform_driver tegra_p2u_driver = {
>> +	.probe = tegra_p2u_probe,
>> +	.driver = {
>> +		.name = "tegra194-p2u",
>> +		.of_match_table = tegra_p2u_id_table,
>> +	},
>> +};
>> +module_platform_driver(tegra_p2u_driver);
>> +
>> +MODULE_AUTHOR("Vidya Sagar <vidyas@nvidia.com>");
>> +MODULE_DESCRIPTION("NVIDIA Tegra PIPE2UPHY PHY driver");
>> +MODULE_LICENSE("GPL v2");
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
