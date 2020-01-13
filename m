Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1450113986F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:13:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=65WHBdvdEzn5vtgoMq54oDJqjuEXzQroWq7+ifniPFI=; b=jAR6kObs3+E8aPjd/48qIEXZY
	Ht+qs/0xsjdc2NzLIl+vLMSZzrfbS3MIscGLlSMvr1C1/5xFxVUg4WteF3eYJna5KgZJKYck3zL0A
	sZysyoSQquAU5A2fEbe211D1WaWjjXG7LQAppBhRzEyjJjzCk6XZ1mErPhiDapBsRUtB0R+kc/sXt
	dSJxj0mEEvMQ3/pbRWWYOMzy7r0kbyP9qPsPooAXOhyLZ3tHoSFftXWNV06JtcBwadAEJGRJ5uAnt
	lE4t2khl7JkP55DgllFezzsfnDkLkkqTL8/6T4gRAM3ZbeuHkh7/JeYD7FGSwnzlokJB/GLHOsw6E
	5kHUwxlHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4Cw-0005Eg-Bk; Mon, 13 Jan 2020 18:12:58 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4Cl-0005DZ-HP
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:12:50 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e1cb3080000>; Mon, 13 Jan 2020 10:12:24 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 13 Jan 2020 10:12:43 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 13 Jan 2020 10:12:43 -0800
Received: from [10.24.37.48] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 13 Jan
 2020 18:12:39 +0000
Subject: Re: Re: [PATCH V2 3/5] PCI: tegra: Add support for PCIe endpoint mode
 in Tegra194
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200103124404.20662-1-vidyas@nvidia.com>
 <20200103124404.20662-4-vidyas@nvidia.com> <20200106130259.GB1955714@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <108bcf03-c11c-c579-821d-e5ec167ee47b@nvidia.com>
Date: Mon, 13 Jan 2020 23:42:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200106130259.GB1955714@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1578939144; bh=sIp4Z4GnMKwRgQ7sFUw0bFQLq84ZbPgvUNhydtjGb9I=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=L/iGmts/kG38pHg3U8H7+Lf2H4xcqkHOYSeAY29AX0CHO2Eq1DWnjRBjvEPaJwPjR
 oeaGS3zzQWqA5Tmq2RBX1pWXAS1OkFj69V3RONO5/JR5LHeStHoYxaorQVjjMwRIt/
 KYSbXikM13AC6vn9H3SonqycWADdhkyxlPYPN7Cf4AlHKwwNSoXl3BttBgAESbyrdg
 JgRN5EqOQuAjx1Fe3ripLuVvlMhYg+doZ3Mhl+A33PdKBhkGQCGLkxsd0uoYL4mTvu
 535yZZGDtKCbgnjv+oRx830Nf04Vnioy9gjeAoGZwO8NVopQi/TNVLc2mtvKPFUSOd
 1KuH/jwRkdSeg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_101247_588506_42BFE285 
X-CRM114-Status: GOOD (  29.09  )
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



On 1/6/20 6:32 PM, Thierry Reding wrote:
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
>> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
> [...]
>> @@ -411,11 +466,66 @@ static irqreturn_t tegra_pcie_rp_irq_handler(struct tegra_pcie_dw *pcie)
>>   	return IRQ_HANDLED;
>>   }
>>   
>> +static irqreturn_t tegra_pcie_ep_irq_handler(struct tegra_pcie_dw *pcie)
>> +{
>> +	struct dw_pcie_ep *ep = &pcie->pci.ep;
>> +	int spurious = 1;
>> +	u32 val, tmp;
>> +
>> +	val = appl_readl(pcie, APPL_INTR_STATUS_L0);
>> +	if (val & APPL_INTR_STATUS_L0_LINK_STATE_INT) {
>> +		val = appl_readl(pcie, APPL_INTR_STATUS_L1_0_0);
>> +		appl_writel(pcie, val, APPL_INTR_STATUS_L1_0_0);
>> +		if (val & APPL_INTR_STATUS_L1_0_0_HOT_RESET_DONE) {
>> +			/* clear any stale PEX_RST interrupt */
>> +			if (!kfifo_put(&pcie->event_fifo, EP_HOT_RST_DONE)) {
>> +				dev_err(pcie->dev, "EVENT FIFO is full\n");
>> +				return IRQ_HANDLED;
>> +			}
>> +			wake_up(&pcie->wq);
>> +		}
> 
> Overall this patch looks a little cluttered. A few blank lines before
> and after (or between) block statements would help make this more
> readable, in my opinion.
Done.

> 
>> +		if (val & APPL_INTR_STATUS_L1_0_0_RDLH_LINK_UP_CHGED) {
>> +			tmp = appl_readl(pcie, APPL_LINK_STATUS);
>> +			if (tmp & APPL_LINK_STATUS_RDLH_LINK_UP) {
>> +				dev_info(pcie->dev, "Link is up with Host\n");
> 
> Do we want this to be an info message? Looks to me like this is mostly
> useful for debug purposes, as a quick way to check if the link is up.
> For production use, this would perhaps be better to expose as a sysfs
> attribute so that userspace can query it at runtime rather than search
> through kernel logs.
I changed it to dev_dbg message.

> 
>> +				dw_pcie_ep_linkup(ep);
>> +			}
>> +		}
>> +		spurious = 0;
>> +	}
>> +
>> +	if (val & APPL_INTR_STATUS_L0_PCI_CMD_EN_INT) {
>> +		val = appl_readl(pcie, APPL_INTR_STATUS_L1_15);
>> +		appl_writel(pcie, val, APPL_INTR_STATUS_L1_15);
>> +		if (val & APPL_INTR_STATUS_L1_15_CFG_BME_CHGED) {
>> +			if (!kfifo_put(&pcie->event_fifo, EP_BME_CHANGE)) {
>> +				dev_err(pcie->dev, "EVENT FIFO is full\n");
>> +				return IRQ_HANDLED;
>> +			}
>> +			wake_up(&pcie->wq);
>> +		}
>> +		spurious = 0;
>> +	}
>> +
>> +	if (spurious) {
>> +		dev_warn(pcie->dev, "Random interrupt (STATUS = 0x%08X)\n",
>> +			 val);
>> +		appl_writel(pcie, val, APPL_INTR_STATUS_L0);
>> +	}
>> +
>> +	return IRQ_HANDLED;
>> +}
>> +
>>   static irqreturn_t tegra_pcie_irq_handler(int irq, void *arg)
>>   {
>>   	struct tegra_pcie_dw *pcie = arg;
>>   
>> -	return tegra_pcie_rp_irq_handler(pcie);
>> +	if (pcie->mode == DW_PCIE_RC_TYPE)
>> +		return tegra_pcie_rp_irq_handler(pcie);
>> +	else if (pcie->mode == DW_PCIE_EP_TYPE)
>> +		return tegra_pcie_ep_irq_handler(pcie);
>> +
>> +	return IRQ_NONE;
>>   }
> 
> We already know at probe time whether the controller is in root complex
> or endpoint mode, right? Couldn't we just install the correct handler
> rather than multiplex here? It's not a very big deal, but given that
> these are interrupts, avoiding the additional indirection might be a
> good idea.
Done.

> 
> [...]
>> @@ -986,6 +1115,42 @@ static int tegra_pcie_dw_parse_dt(struct tegra_pcie_dw *pcie)
>>   	pcie->enable_cdm_check =
>>   		of_property_read_bool(np, "snps,enable-cdm-check");
>>   
>> +	if (pcie->mode == DW_PCIE_RC_TYPE)
>> +		return 0;
>> +
>> +	/* Endpoint mode specific DT entries */
>> +	name = devm_kasprintf(pcie->dev, GFP_KERNEL,
>> +			      "tegra_pcie_%u_pex_rst_gpio", pcie->cid);
>> +	if (!name) {
>> +		dev_err(pcie->dev, "Failed to create PERST GPIO string\n");
>> +		return -ENOMEM;
>> +	}
>> +	pcie->pex_rst_gpiod = devm_gpiod_get_from_of_node(pcie->dev, np,
> 
> If np == pcie->dev.of_node, you can simply use devm_gpiod_get() here,
> can't you?
Done.

> 
> [...]
>> +static void pex_ep_event_hot_rst_done(struct tegra_pcie_dw *pcie)
>> +{
>> +	u32 val = 0;
> 
> The initialization here seems unnecessary.
Done.

> 
> [...]
>> +static int tegra_pcie_ep_raise_legacy_irq(struct tegra_pcie_dw *pcie, u16 irq)
>> +{
>> +	/* Tegra194 supports only INTA */
>> +	if (irq > 1)
>> +		return -EINVAL;
>> +
>> +	appl_writel(pcie, 1, APPL_LEGACY_INTX);
>> +	mdelay(1);
> 
> Spinning for 1 ms these days is quite a lot. Does this have to be a busy
> loop or could you use something like usleep_range(1000, 2000) to allow
> the CPU to do something else in the meantime?
> 
> Also, does the legacy INTX pulse have to be a whole millisecond wide? Or
> could this be shorter? A one millisecond pulse implies a maximum of 1000
> interrupts per second, which seems a bit low.
1 ms is what all the other implementations also are using and they are 
using mdelay also :( . But, I think this doesn't have to be a busy loop 
and I'll change it to usleep_range(1000, 2000).

> 
>> @@ -1440,6 +2178,12 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
>>   	int ret;
>>   	u32 i;
>>   
>> +	match = of_match_device(of_match_ptr(tegra_pcie_dw_of_match), dev);
>> +	if (!match)
>> +		return -EINVAL;
>> +
>> +	data = (struct tegra_pcie_dw_of_data *)match->data;
> 
> of_device_get_match_data()?
Done.

> 
>> +
>>   	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
>>   	if (!pcie)
>>   		return -ENOMEM;
>> @@ -1449,6 +2193,7 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
>>   	pci->ops = &tegra_dw_pcie_ops;
>>   	pp = &pci->pp;
>>   	pcie->dev = &pdev->dev;
>> +	pcie->mode = (enum dw_pcie_device_mode)data->mode;
>>   
>>   	ret = tegra_pcie_dw_parse_dt(pcie);
>>   	if (ret < 0) {
>> @@ -1462,6 +2207,9 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
>>   		return ret;
>>   	}
>>   
>> +	if (pcie->pex_refclk_sel_gpiod)
>> +		gpiod_set_value(pcie->pex_refclk_sel_gpiod, 1);
>> +
>>   	pcie->pex_ctl_supply = devm_regulator_get(dev, "vddio-pex-ctl");
>>   	if (IS_ERR(pcie->pex_ctl_supply)) {
>>   		ret = PTR_ERR(pcie->pex_ctl_supply);
>> @@ -1570,11 +2318,24 @@ static int tegra_pcie_dw_probe(struct platform_device *pdev)
>>   
>>   	platform_set_drvdata(pdev, pcie);
>>   
>> -	ret = tegra_pcie_config_rp(pcie);
>> -	if (ret && ret != -ENOMEDIUM)
>> -		goto fail;
>> -	else
>> -		return 0;
>> +	switch (pcie->mode) {
>> +	case DW_PCIE_RC_TYPE:
>> +		ret = tegra_pcie_config_rp(pcie);
>> +		if (ret && ret != -ENOMEDIUM)
>> +			goto fail;
>> +		else
>> +			return 0;
>> +		break;
>> +
>> +	case DW_PCIE_EP_TYPE:
>> +		ret = tegra_pcie_config_ep(pcie, pdev);
>> +		if (ret < 0)
>> +			goto fail;
>> +		break;
>> +
>> +	default:
>> +		dev_err(dev, "Invalid PCIe device type %d\n", pcie->mode);
>> +	}
>>   
>>   fail:
>>   	tegra_bpmp_put(pcie->bpmp);
>> @@ -1593,6 +2354,8 @@ static int tegra_pcie_dw_remove(struct platform_device *pdev)
>>   	pm_runtime_put_sync(pcie->dev);
>>   	pm_runtime_disable(pcie->dev);
>>   	tegra_bpmp_put(pcie->bpmp);
>> +	if (pcie->pex_refclk_sel_gpiod)
>> +		gpiod_set_value(pcie->pex_refclk_sel_gpiod, 0);
>>   
>>   	return 0;
>>   }
>> @@ -1697,13 +2460,6 @@ static void tegra_pcie_dw_shutdown(struct platform_device *pdev)
>>   	__deinit_controller(pcie);
>>   }
>>   
>> -static const struct of_device_id tegra_pcie_dw_of_match[] = {
>> -	{
>> -		.compatible = "nvidia,tegra194-pcie",
>> -	},
>> -	{},
>> -};
>> -
> 
> No need to move this around if you use of_device_get_match_data().
Yes.

Thanks for the review.
Vidya Sagar
> 
> Thierry
> 
>>   static const struct dev_pm_ops tegra_pcie_dw_pm_ops = {
>>   	.suspend_late = tegra_pcie_dw_suspend_late,
>>   	.suspend_noirq = tegra_pcie_dw_suspend_noirq,
>> -- 
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
