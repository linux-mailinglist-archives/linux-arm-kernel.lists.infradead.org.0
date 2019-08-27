Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6FC9F013
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HOvbeASJjW5KoswlRPYd9h3uXhNefl58V5IidrFm7Lw=; b=fc9Qsz8yC7Wec9zUtdpf/SX2Q
	AfCFeswXFS0rjeTGRGUIwwblhlIxl9DcaRw1mgQf1itAL2CVLbuA8kp2AtHYxDW0UFRya8/IDl3xY
	POrJf91EK/NMCfUPQcOX+Wzki13XGFvODeNZWA2Np5mHti/hPnDo+lIc8KxIC0qww18jZ/zEd67Ip
	nqS6VgAtYdF8TwX4K9YNFyJy08RfZC3K+4ct60CwaWyvt3q2+83cuVCIltMl1WlSasrNbgp1MR6Zn
	r+uXcR0tMier0kzFaJyksCvhYcRyyTFbVfy2JxFhs0ovUCQ+EhabbkWDBNaiwq4Fbq8t8dplFxArr
	4/Zs1fT8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2eGp-0000RS-6Q; Tue, 27 Aug 2019 16:24:35 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eGh-0000Qu-4W
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:24:28 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d65593b0000>; Tue, 27 Aug 2019 09:24:27 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 27 Aug 2019 09:24:26 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 27 Aug 2019 09:24:26 -0700
Received: from [10.25.73.29] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 27 Aug
 2019 16:24:20 +0000
Subject: Re: [PATCH 6/6] PCI: tegra: Add support to enable slot regulators
To: Andrew Murray <andrew.murray@arm.com>
References: <20190826073143.4582-1-vidyas@nvidia.com>
 <20190826073143.4582-7-vidyas@nvidia.com>
 <20190827154725.GP14582@e119886-lin.cambridge.arm.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <91f8914a-22a9-8b7c-bc00-c309a21d83db@nvidia.com>
Date: Tue, 27 Aug 2019 21:54:17 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827154725.GP14582@e119886-lin.cambridge.arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1566923067; bh=2HdnrU28EZ0UoDqd1XHS7RWTxi3+8RJrX0DXDhdTXkQ=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=UOf5q/JTyE7cqbJ2RVqu81ZL65HIP/RvqM8b1wP0H1VXjJebSJDsJvXXdA3VfdA1x
 Jbr3ddj2il6lYfOFxuCYGJNMp6xxACUwmdB6GqACH8qZExBnD7xHVadBilMH29V0te
 uJdU/li30TESP1YmrqDsAKct4j8wbJuXi33QGvUzLVIz5/JxV1ctWzJOQ5fYnBhLJa
 i7DOxUfJkTiiqPq2+SQLT+4jzJXo0VEleuCsTH9fpqvQZ8l2EBajamhY3cFBEHMngJ
 L7QSsuDVebiATbOuUuGU/Ze28NuAV2p2oj/cLWB2uG80hgKBVfkQxVk5Z/q6wmv9QI
 xXMNSMo/Z0bqA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_092427_193355_3579FC38 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 digetx@gmail.com, jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/27/2019 9:17 PM, Andrew Murray wrote:
> On Mon, Aug 26, 2019 at 01:01:43PM +0530, Vidya Sagar wrote:
>> Add support to get regulator information of 3.3V and 12V supplies of a PCIe
>> slot from the respective controller's device-tree node and enable those
>> supplies. This is required in platforms like p2972-0000 where the supplies
>> to x16 slot owned by C5 controller need to be enabled before attempting to
>> enumerate the devices.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-tegra194.c | 65 ++++++++++++++++++++++
>>   1 file changed, 65 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
>> index 8a27b25893c9..97de2151a738 100644
>> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
>> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
>> @@ -278,6 +278,8 @@ struct tegra_pcie_dw {
>>   	u32 aspm_l0s_enter_lat;
>>   
>>   	struct regulator *pex_ctl_supply;
>> +	struct regulator *slot_ctl_3v3;
>> +	struct regulator *slot_ctl_12v;
>>   
>>   	unsigned int phy_count;
>>   	struct phy **phys;
>> @@ -1047,6 +1049,59 @@ static void tegra_pcie_downstream_dev_to_D0(struct tegra_pcie_dw *pcie)
>>   	}
>>   }
>>   
>> +static void tegra_pcie_get_slot_regulators(struct tegra_pcie_dw *pcie)
>> +{
>> +	pcie->slot_ctl_3v3 = devm_regulator_get_optional(pcie->dev, "vpcie3v3");
>> +	if (IS_ERR(pcie->slot_ctl_3v3))
>> +		pcie->slot_ctl_3v3 = NULL;
>> +
>> +	pcie->slot_ctl_12v = devm_regulator_get_optional(pcie->dev, "vpcie12v");
>> +	if (IS_ERR(pcie->slot_ctl_12v))
>> +		pcie->slot_ctl_12v = NULL;
> 
> Do these need to take into consideration -EPROBE_DEFER?
Since these are devm_* APIs, isn't it taken care of automatically?

> 
> Thanks,
> 
> Andrew Murray
> 
>> +}
>> +
>> +static int tegra_pcie_enable_slot_regulators(struct tegra_pcie_dw *pcie)
>> +{
>> +	int ret;
>> +
>> +	if (pcie->slot_ctl_3v3) {
>> +		ret = regulator_enable(pcie->slot_ctl_3v3);
>> +		if (ret < 0) {
>> +			dev_err(pcie->dev,
>> +				"Failed to enable 3V3 slot supply: %d\n", ret);
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	if (pcie->slot_ctl_12v) {
>> +		ret = regulator_enable(pcie->slot_ctl_12v);
>> +		if (ret < 0) {
>> +			dev_err(pcie->dev,
>> +				"Failed to enable 12V slot supply: %d\n", ret);
>> +			if (pcie->slot_ctl_3v3)
>> +				regulator_disable(pcie->slot_ctl_3v3);
>> +			return ret;
>> +		}
>> +	}
>> +
>> +	/*
>> +	 * According to PCI Express Card Electromechanical Specification
>> +	 * Revision 1.1, Table-2.4, T_PVPERL (Power stable to PERST# inactive)
>> +	 * should be a minimum of 100ms.
>> +	 */
>> +	msleep(100);
>> +
>> +	return 0;
>> +}
>> +
>> +static void tegra_pcie_disable_slot_regulators(struct tegra_pcie_dw *pcie)
>> +{
>> +	if (pcie->slot_ctl_12v)
>> +		regulator_disable(pcie->slot_ctl_12v);
>> +	if (pcie->slot_ctl_3v3)
>> +		regulator_disable(pcie->slot_ctl_3v3);
>> +}
>> +
>>   static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
>>   					bool en_hw_hot_rst)
>>   {
>> @@ -1060,6 +1115,10 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
>>   		return ret;
>>   	}
>>   
>> +	ret = tegra_pcie_enable_slot_regulators(pcie);
>> +	if (ret < 0)
>> +		goto fail_slot_reg_en;
>> +
>>   	ret = regulator_enable(pcie->pex_ctl_supply);
>>   	if (ret < 0) {
>>   		dev_err(pcie->dev, "Failed to enable regulator: %d\n", ret);
>> @@ -1142,6 +1201,8 @@ static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
>>   fail_core_clk:
>>   	regulator_disable(pcie->pex_ctl_supply);
>>   fail_reg_en:
>> +	tegra_pcie_disable_slot_regulators(pcie);
>> +fail_slot_reg_en:
>>   	tegra_pcie_bpmp_set_ctrl_state(pcie, false);
>>   
>>   	return ret;
>> @@ -1174,6 +1235,8 @@ static int __deinit_controller(struct tegra_pcie_dw *pcie)
>>   		return ret;
>>   	}
>>   
>> +	tegra_pcie_disable_slot_regulators(pcie);
>> +
>>   	ret = tegra_pcie_bpmp_set_ctrl_state(pcie, false);
>>   	if (ret) {
>>   		dev_err(pcie->dev, "Failed to disable controller %d: %d\n",
>> @@ -1372,6 +1435,8 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
>>   		return ret;
>>   	}
>>   
>> +	tegra_pcie_get_slot_regulators(pcie);
>> +
>>   	pcie->pex_ctl_supply = devm_regulator_get(dev, "vddio-pex-ctl");
>>   	if (IS_ERR(pcie->pex_ctl_supply)) {
>>   		dev_err(dev, "Failed to get regulator: %ld\n",
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
