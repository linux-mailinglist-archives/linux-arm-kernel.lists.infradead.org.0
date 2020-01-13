Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BE6139871
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:13:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uHJ7o5BxEu+XcysjR75CPNjyP49TYq0r3/d0IyHEOII=; b=B0IP411C1aJMvNSGi+IFjUNk0
	gsxVKYVIhOr6xB9orz9k9xNiYFmtC3eda0GEB18Pbh0QUzazFGEFFyZZFlxuESk04ZSpnSq631XI/
	Tm2Q/n3+7WeaUeqgenXFSrGlAAh8AqXfr0gllwSqFHe0Mmb0PWZWFwpWjzmZlLdsq4IJBE6XkUD/U
	ZU7YTVIjUFNkklL19L6QCwmMcx6DSJxEOitLwjQXivhjZqHWP9KnSgXRR4E8IxRgxvTch/8T7kwUT
	irmIo75wRQCQ8vSPtqzV6Fn1wFhwgSOsp2LQbhBnIlu68fawi2y1MLDy2exjOEomjUKS+V8KxoNf4
	YPJkTW6lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4DG-0005Rj-HG; Mon, 13 Jan 2020 18:13:18 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4D1-0005QL-I7
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:13:05 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e1cb31b0000>; Mon, 13 Jan 2020 10:12:43 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 13 Jan 2020 10:13:03 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 13 Jan 2020 10:13:03 -0800
Received: from [10.24.37.48] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 13 Jan
 2020 18:12:58 +0000
Subject: Re: Re: [PATCH V2 3/5] PCI: tegra: Add support for PCIe endpoint mode
 in Tegra194
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200103124404.20662-1-vidyas@nvidia.com>
 <20200103124404.20662-4-vidyas@nvidia.com> <20200106131416.GD1955714@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <e4a806f5-6efb-d221-7627-a50a427bea99@nvidia.com>
Date: Mon, 13 Jan 2020 23:42:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200106131416.GD1955714@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1578939163; bh=nVROaRvnp+B2JlV9vIKYl44RY+sBl1DYcWo1xIkZvMU=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=CZeBN5IxJcvyTspS32vk9DBSShHna0nja8hQ3ot8GeuUS7AxUrSC2xuRJ11SDT2p8
 e69CEpHSvcxcNcQqaaGfVgbvf8roQTtxPxeDTKoS9pbbpz1hhAu7m801mL8cPLWnhg
 +zvTWRHw2OufX2C4cmV/pN7jB85RTsSj2ZARQa8Z/MMtO8hA68DBlXqSkPCIM0q2pY
 4wgZUBGGbWGKvWQLD8XyIsHzdFfDhe64R0l4xD2JpKcqW2OzG4PWjpJb6D3PJGu6Bp
 6vD8No5Fyt1dJOB5nPAJAHVBsDOZh5CJkraIHB8Q+cZmmLKxTjcHZ2uz4P1LpY40B4
 +Yno6Ah18fFMw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_101303_605964_486921E6 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/6/20 6:44 PM, Thierry Reding wrote:
> On Fri, Jan 03, 2020 at 06:14:02PM +0530, Vidya Sagar wrote:
>> Add support for the endpoint mode of Synopsys DesignWare core based
>> dual mode PCIe controllers present in Tegra194 SoC.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>> V2:
>> * Addressed Bjorn's review comments
>> * Made changes as part of addressing review comments for other patches
>>
>>   drivers/pci/controller/dwc/Kconfig         |  30 +-
>>   drivers/pci/controller/dwc/pcie-tegra194.c | 782 ++++++++++++++++++++-
>>   2 files changed, 796 insertions(+), 16 deletions(-)
>>
> [...]
>> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
>> index cbe95f0ea0ca..6621ac79efee 100644
>> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
>> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> [...]
>> @@ -1427,8 +1620,553 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
> [...]
>> +static int tegra_pcie_config_ep(struct tegra_pcie_dw *pcie,
>> +				struct platform_device *pdev)
>> +{
> [...]
>> +	ret = devm_request_irq(dev, pcie->pex_rst_irq,
>> +			       tegra_pcie_ep_pex_rst_irq,
>> +			       IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
>> +			       name, (void *)pcie);
>> +	if (ret < 0) {
>> +		dev_err(dev, "Failed to request IRQ for PERST: %d\n", ret);
>> +		return ret;
>> +	}
>> +	disable_irq(pcie->pex_rst_irq);
> 
> I just came across this while reviewing another patch: it looks like a
> better way to handle "disabled by default" interrupts is to do this:
> 
> 	irq_set_status_flags(rtc->irq, IRQ_NOAUTOEN);
> 
> before calling devm_request_irq(). See here for an example:
> 
> 	http://patchwork.ozlabs.org/patch/1217944/
I'll take care of it.

Thanks for the review.
Vidya Sagar

> 
> Thierry
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
