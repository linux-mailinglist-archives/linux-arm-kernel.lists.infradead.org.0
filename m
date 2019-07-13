Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D379678F2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 09:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=924WwwGGNnWJCmix2pvtVBoUZq8pXCtB4LBDN/KiZxs=; b=buu/BcueorrBDzH0RWB18++hz
	TNyYCYHzPl0x+BIfMwWjZmg11gdYjKmO6c/twNLxmiD0ST5+DvgYpA2r+F0JXUknKdRCNn7DUB9IQ
	fmOoWnaXQz+kCWoXGNyWi1An6tVZ0VLLJjaNc0o/o08lXaevI5axxT/k2d4Aipwh+7JOAsZ1cU7Nr
	wFsGEINAfCYLF4cTg79W5yjpZHchn1hoDe7NUBoldXCHaZL4ymxRfcTEVQuW6B6XVqbiqAgnRTjpB
	wHADcAYRmrD/BYYbLdS1ffKWtkmG4aiOqbPDM/U/ch12JP2JEvQfm22YSKS2aSqmH/RS7EmwVlLtO
	4tNkHWZxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmC61-0001Mg-Ir; Sat, 13 Jul 2019 07:05:25 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmC5N-0001ME-2M
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 07:04:48 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d2982850000>; Sat, 13 Jul 2019 00:04:37 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sat, 13 Jul 2019 00:04:42 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sat, 13 Jul 2019 00:04:42 -0700
Received: from [10.25.73.54] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 13 Jul
 2019 07:04:37 +0000
Subject: Re: [PATCH V13 12/12] PCI: tegra: Add Tegra194 PCIe support
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20190710062212.1745-1-vidyas@nvidia.com>
 <20190710062212.1745-13-vidyas@nvidia.com>
 <20190711125433.GB26088@e121166-lin.cambridge.arm.com>
 <986d0b1a-666a-7b05-a9f3-e761518bdc92@nvidia.com>
 <20190712160754.GA24285@e121166-lin.cambridge.arm.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <a5f8689b-1358-dd2d-4f54-7e68a6ab158b@nvidia.com>
Date: Sat, 13 Jul 2019 12:34:34 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712160754.GA24285@e121166-lin.cambridge.arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563001477; bh=11eAovLtyZ6nsz6cYl2vxledVgX/dOWBk43jTVShi10=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=RSsX1EMQ3Y6xVha2YfAgD7VgkUrz16It8N61cK2UG/8KD6z2l2L9FPOKsMa+vhI5E
 8U8460g0LMoRkIGmrSj1sxouIBIDGP2GQs/0srpPRQB8m3pTQUsHaZrENNhID7Opad
 KcaA69lOoM27wTVRDYN9iZxNikLsmspKvP2klk81fOrWNVMX82gfXLHLuGhKgNtO8H
 O8ofpnvlyOlb2XVOUXiYSeaJAZDBoz8WVNWynlBYtgQKa5WNIAGalU2w8CQqxuM4A5
 cTj3dXpRRXp3+5Q4YWe6FNcgpDFb//UyCqGmnlaLx8qMAoZ7XG/kXxGBjfF3Ra7qOD
 wk8CSI9Wqfw2w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_000445_369992_6E41F1F8 
X-CRM114-Status: GOOD (  31.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, mperttunen@nvidia.com,
 mmaddireddy@nvidia.com, linux-pci@vger.kernel.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, kthota@nvidia.com,
 kishon@ti.com, linux-tegra@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/12/2019 9:37 PM, Lorenzo Pieralisi wrote:
> On Fri, Jul 12, 2019 at 09:02:49PM +0530, Vidya Sagar wrote:
> 
> [...]
> 
>>>> +static irqreturn_t tegra_pcie_irq_handler(int irq, void *arg)
>>>> +{
>>>> +	struct tegra_pcie_dw *pcie = arg;
>>>> +
>>>> +	if (pcie->mode == DW_PCIE_RC_TYPE)
>>>> +		return tegra_pcie_rp_irq_handler(pcie);
>>>
>>> What's the point of registering the handler if mode != DW_PCIE_RC_TYPE ?
>> Currently this driver supports only root port mode but we have a plan
>> to add support for endpoint mode (as Tegra194 as dual mode
>> controllers) also in future and when that happens, we'll have a
>> corresponding tegra_pcie_ep_irq_handler() to take care of ep specific
>> interrupts.
> 
> Sure, that's why you should add tegra_pcie_dw->mode when it is needed,
> not in this patch.
Ok.

> 
> [...]
> 
>>>> +static int tegra_pcie_dw_host_init(struct pcie_port *pp)
>>>> +{
>>>> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>>>> +	struct tegra_pcie_dw *pcie = to_tegra_pcie(pci);
>>>> +	u32 val, tmp, offset, speed;
>>>> +	unsigned int count;
>>>> +	u16 val_w;
>>>> +
>>>> +core_init:
>>>
>>> I think it would be cleaner to include all registers programming
>>> within a function and we remove this label (and goto) below.
>> Some background: As per spec r4.0 v1.0, downstream ports that support
>> 16.0 GT/s must support Scaled Flow Control (sec 3.4.2) and Tegra194's
>> downstream ports being 16.0 GT/s capable, enable scaled flow control
>> by having Data Link Feature (sec 7.7.4) enabled by default. There is
>> one endpoint (ASMedia USB3.0 controller) that doesn't link up with
>> root port because of this (i.e. DLF being enabled). The way we are
>> detecting this situation is to check for partial linkup i.e. one of
>> application logic registers (i.e. from "appl" region) says link is up
>> but the same is not reflected in configuration space of root port.
>> Recommendation from our hardware team in this situation is to disable
>> DLF in root port and try link up with endpoint again.  To achieve
>> this, we put the core through reset cycle, disable DLF and proceed
>> with configuring all other registers and check for link up.
>>
>> Initially in Patch-1, I didn't have goto statement but a recursion
>> with depth-1 (as the above situation occurs only once). It was
>> reviewed @ http://patchwork.ozlabs.org/patch/1065707/ and Thierry said
>> it would be simpler to use a goto instead of calling the same function
>> again. So, I modified the code accordingly. Please do let me know if
>> you strongly feel we should call tegra_pcie_dw_host_init() instead of
>> goto here. I'll change it.
> 
> I did not say we should call tegra_pcie_dw_host_init(), sorry for
> not being clear. What I asked is factoring out registers programming
> in a function and call it where core_init: label is and call it
> again if DLF enablement causes link up to fail.
Ok.

> 
> [...]
> 
>>>> +static int tegra_pcie_bpmp_set_ctrl_state(struct tegra_pcie_dw *pcie,
>>>> +					  bool enable)
>>>> +{
>>>> +	struct mrq_uphy_response resp;
>>>> +	struct tegra_bpmp_message msg;
>>>> +	struct mrq_uphy_request req;
>>>> +	int err;
>>>> +
>>>> +	if (pcie->cid == 5)
>>>> +		return 0;
>>>
>>> What's wrong with cid == 5 ? Explain please.
>> Controller with ID=5 doesn't need any programming to enable it which is
>> done here through calling firmware API.
>>
>>>
>>>> +	memset(&req, 0, sizeof(req));
>>>> +	memset(&resp, 0, sizeof(resp));
>>>> +
>>>> +	req.cmd = CMD_UPHY_PCIE_CONTROLLER_STATE;
>>>> +	req.controller_state.pcie_controller = pcie->cid;
>>>> +	req.controller_state.enable = enable;
>>>> +
>>>> +	memset(&msg, 0, sizeof(msg));
>>>> +	msg.mrq = MRQ_UPHY;
>>>> +	msg.tx.data = &req;
>>>> +	msg.tx.size = sizeof(req);
>>>> +	msg.rx.data = &resp;
>>>> +	msg.rx.size = sizeof(resp);
>>>> +
>>>> +	if (irqs_disabled())
>>>
>>> Can you explain to me what this check is meant to achieve please ?
>> Firmware interface provides different APIs to be called when there are
>> no interrupts enabled in the system (noirq context) and otherwise
>> hence checking that situation here and calling appropriate API.
> 
> That's what I am questioning. Being called from {suspend/resume}_noirq()
> callbacks (if that's the code path this check caters for) does not mean
> irqs_disabled() == true.
Agree.
Actually, I got a hint of having this check from the following.
Both tegra_bpmp_transfer_atomic() and tegra_bpmp_transfer() are indirectly
called by APIs registered with .master_xfer() and .master_xfer_atomic() hooks of
struct i2c_algorithm and the decision to call which one of these is made using the
following check in i2c-core.h file.
static inline bool i2c_in_atomic_xfer_mode(void)
{
	return system_state > SYSTEM_RUNNING && irqs_disabled();
}
I think I should use this condition as is IIUC.
Please let me know if there are any concerns with this.

> 
> Actually, if tegra_bpmp_transfer() requires IRQs to be enabled you may
> even end up in a situation where that blocking call does not wake up
> because the IRQ in question was disabled in the NOIRQ suspend/resume
> phase.
> 
> [...]
> 
>>>> +static int tegra_pcie_dw_probe(struct platform_device *pdev)
>>>> +{
>>>> +	const struct tegra_pcie_soc *data;
>>>> +	struct device *dev = &pdev->dev;
>>>> +	struct resource *atu_dma_res;
>>>> +	struct tegra_pcie_dw *pcie;
>>>> +	struct resource *dbi_res;
>>>> +	struct pcie_port *pp;
>>>> +	struct dw_pcie *pci;
>>>> +	struct phy **phys;
>>>> +	char *name;
>>>> +	int ret;
>>>> +	u32 i;
>>>> +
>>>> +	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
>>>> +	if (!pcie)
>>>> +		return -ENOMEM;
>>>> +
>>>> +	pci = &pcie->pci;
>>>> +	pci->dev = &pdev->dev;
>>>> +	pci->ops = &tegra_dw_pcie_ops;
>>>> +	pp = &pci->pp;
>>>> +	pcie->dev = &pdev->dev;
>>>> +
>>>> +	data = (struct tegra_pcie_soc *)of_device_get_match_data(dev);
>>>> +	if (!data)
>>>> +		return -EINVAL;
>>>> +	pcie->mode = (enum dw_pcie_device_mode)data->mode;
>>>> +
>>>> +	ret = tegra_pcie_dw_parse_dt(pcie);
>>>> +	if (ret < 0) {
>>>> +		dev_err(dev, "Failed to parse device tree: %d\n", ret);
>>>> +		return ret;
>>>> +	}
>>>> +
>>>> +	pcie->pex_ctl_supply = devm_regulator_get(dev, "vddio-pex-ctl");
>>>> +	if (IS_ERR(pcie->pex_ctl_supply)) {
>>>> +		dev_err(dev, "Failed to get regulator: %ld\n",
>>>> +			PTR_ERR(pcie->pex_ctl_supply));
>>>> +		return PTR_ERR(pcie->pex_ctl_supply);
>>>> +	}
>>>> +
>>>> +	pcie->core_clk = devm_clk_get(dev, "core");
>>>> +	if (IS_ERR(pcie->core_clk)) {
>>>> +		dev_err(dev, "Failed to get core clock: %ld\n",
>>>> +			PTR_ERR(pcie->core_clk));
>>>> +		return PTR_ERR(pcie->core_clk);
>>>> +	}
>>>> +
>>>> +	pcie->appl_res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
>>>> +						      "appl");
>>>> +	if (!pcie->appl_res) {
>>>> +		dev_err(dev, "Failed to find \"appl\" region\n");
>>>> +		return PTR_ERR(pcie->appl_res);
>>>> +	}
>>>> +	pcie->appl_base = devm_ioremap_resource(dev, pcie->appl_res);
>>>> +	if (IS_ERR(pcie->appl_base))
>>>> +		return PTR_ERR(pcie->appl_base);
>>>> +
>>>> +	pcie->core_apb_rst = devm_reset_control_get(dev, "apb");
>>>> +	if (IS_ERR(pcie->core_apb_rst)) {
>>>> +		dev_err(dev, "Failed to get APB reset: %ld\n",
>>>> +			PTR_ERR(pcie->core_apb_rst));
>>>> +		return PTR_ERR(pcie->core_apb_rst);
>>>> +	}
>>>> +
>>>> +	phys = devm_kcalloc(dev, pcie->phy_count, sizeof(*phys), GFP_KERNEL);
>>>> +	if (!phys)
>>>> +		return PTR_ERR(phys);
>>>> +
>>>> +	for (i = 0; i < pcie->phy_count; i++) {
>>>> +		name = kasprintf(GFP_KERNEL, "p2u-%u", i);
>>>> +		if (!name) {
>>>> +			dev_err(dev, "Failed to create P2U string\n");
>>>> +			return -ENOMEM;
>>>> +		}
>>>> +		phys[i] = devm_phy_get(dev, name);
>>>> +		kfree(name);
>>>> +		if (IS_ERR(phys[i])) {
>>>> +			ret = PTR_ERR(phys[i]);
>>>> +			dev_err(dev, "Failed to get PHY: %d\n", ret);
>>>> +			return ret;
>>>> +		}
>>>> +	}
>>>> +
>>>> +	pcie->phys = phys;
>>>> +
>>>> +	dbi_res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbi");
>>>> +	if (!dbi_res) {
>>>> +		dev_err(dev, "Failed to find \"dbi\" region\n");
>>>> +		return PTR_ERR(dbi_res);
>>>> +	}
>>>> +	pcie->dbi_res = dbi_res;
>>>> +
>>>> +	pci->dbi_base = devm_ioremap_resource(dev, dbi_res);
>>>> +	if (IS_ERR(pci->dbi_base))
>>>> +		return PTR_ERR(pci->dbi_base);
>>>> +
>>>> +	/* Tegra HW locates DBI2 at a fixed offset from DBI */
>>>> +	pci->dbi_base2 = pci->dbi_base + 0x1000;
>>>> +
>>>> +	atu_dma_res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
>>>> +						   "atu_dma");
>>>> +	if (!atu_dma_res) {
>>>> +		dev_err(dev, "Failed to find \"atu_dma\" region\n");
>>>> +		return PTR_ERR(atu_dma_res);
>>>> +	}
>>>> +	pcie->atu_dma_res = atu_dma_res;
>>>> +	pci->atu_base = devm_ioremap_resource(dev, atu_dma_res);
>>>> +	if (IS_ERR(pci->atu_base))
>>>> +		return PTR_ERR(pci->atu_base);
>>>> +
>>>> +	pcie->core_rst = devm_reset_control_get(dev, "core");
>>>> +	if (IS_ERR(pcie->core_rst)) {
>>>> +		dev_err(dev, "Failed to get core reset: %ld\n",
>>>> +			PTR_ERR(pcie->core_rst));
>>>> +		return PTR_ERR(pcie->core_rst);
>>>> +	}
>>>> +
>>>> +	pp->irq = platform_get_irq_byname(pdev, "intr");
>>>> +	if (!pp->irq) {
>>>> +		dev_err(dev, "Failed to get \"intr\" interrupt\n");
>>>> +		return -ENODEV;
>>>> +	}
>>>> +
>>>> +	ret = devm_request_irq(dev, pp->irq, tegra_pcie_irq_handler,
>>>> +			       IRQF_SHARED, "tegra-pcie-intr", pcie);
>>>> +	if (ret) {
>>>> +		dev_err(dev, "Failed to request IRQ %d: %d\n", pp->irq, ret);
>>>> +		return ret;
>>>> +	}
>>>> +
>>>> +	pcie->bpmp = tegra_bpmp_get(dev);
>>>> +	if (IS_ERR(pcie->bpmp))
>>>> +		return PTR_ERR(pcie->bpmp);
>>>> +
>>>> +	platform_set_drvdata(pdev, pcie);
>>>> +
>>>> +	if (pcie->mode == DW_PCIE_RC_TYPE) {
>>>> +		ret = tegra_pcie_config_rp(pcie);
>>>> +		if (ret && ret != -ENOMEDIUM)
>>>> +			goto fail;
>>>> +		else
>>>> +			return 0;
>>>
>>> So if the link is not up we still go ahead and make probe
>>> succeed. What for ?
>> We may need root port to be available to support hot-plugging of
>> endpoint devices, so, we don't fail the probe.
> 
> We need it or we don't. If you do support hotplugging of endpoint
> devices point me at the code, otherwise link up failure means
> failure to probe.
Currently hotplugging of endpoint is not supported, but it is one of the use cases that
we may add support for in future.
But, why should we fail probe if link up doesn't happen? As such, nothing went wrong in
terms of root port initialization right?
I checked other DWC based implementations and following are not failing the probe
pci-dra7xx.c, pcie-armada8k.c, pcie-artpec6.c, pcie-histb.c, pcie-kirin.c, pcie-spear13xx.c,
pci-exynos.c, pci-imx6.c, pci-keystone.c, pci-layerscape.c

Although following do fail the probe if link is not up.
pcie-qcom.c, pcie-uniphier.c, pci-meson.c

So, to me, it looks more like a choice we can make whether to fail the probe or not and in this
case we are choosing not to fail.
> 
>>>> +	}
>>>> +
>>>> +fail:
>>>> +	tegra_bpmp_put(pcie->bpmp);
>>>> +	return ret;
>>>> +}
>>>> +
>>>> +static int tegra_pcie_dw_remove(struct platform_device *pdev)
>>>> +{
>>>> +	struct tegra_pcie_dw *pcie = platform_get_drvdata(pdev);
>>>> +
>>>> +	if (pcie->mode != DW_PCIE_RC_TYPE)
>>>> +		return 0;
>>>> +
>>>> +	if (!pcie->link_state)
>>>> +		return 0;
>>>> +
>>>> +	debugfs_remove_recursive(pcie->debugfs);
>>>> +	tegra_pcie_deinit_controller(pcie);
>>>> +	pm_runtime_put_sync(pcie->dev);
>>>> +	pm_runtime_disable(pcie->dev);
>>>> +	tegra_bpmp_put(pcie->bpmp);
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +static int tegra_pcie_dw_suspend_late(struct device *dev)
>>>> +{
>>>> +	struct tegra_pcie_dw *pcie = dev_get_drvdata(dev);
>>>> +	u32 val;
>>>> +
>>>> +	if (!pcie->link_state)
>>>> +		return 0;
>>>> +
>>>> +	/* Enable HW_HOT_RST mode */
>>>> +	val = appl_readl(pcie, APPL_CTRL);
>>>> +	val &= ~(APPL_CTRL_HW_HOT_RST_MODE_MASK <<
>>>> +		 APPL_CTRL_HW_HOT_RST_MODE_SHIFT);
>>>> +	val |= APPL_CTRL_HW_HOT_RST_EN;
>>>> +	appl_writel(pcie, val, APPL_CTRL);
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +static int tegra_pcie_dw_suspend_noirq(struct device *dev)
>>>> +{
>>>> +	struct tegra_pcie_dw *pcie = dev_get_drvdata(dev);
>>>> +
>>>> +	if (!pcie->link_state)
>>>> +		return 0;
>>>> +
>>>> +	/* Save MSI interrupt vector */
>>>> +	pcie->msi_ctrl_int = dw_pcie_readl_dbi(&pcie->pci,
>>>> +					       PORT_LOGIC_MSI_CTRL_INT_0_EN);
>>>> +	tegra_pcie_downstream_dev_to_D0(pcie);
>>>
>>> I think this requires some comments. AFAIU this is allowed by
>>> the PCI specs (PCI Express Base 4.0 r1.0 September 29-2017,
>>> 5.2 Link State Power Management). However, I would like to
>>> understand how this plays with the D state the devices are left
>>> in upon system suspend.
>>>
>>> "As the following example illustrates, it is also possible to remove
>>> power without first placing all Functions into D3Hot".
>>>
>>> I assume that's what happens on this platform to allow L2 entry but
>>> again, this needs clarification.
>> Yes. It is true that in the case of Tegra194, it brings devices back
>> to D0 before putting link to L2 state.
> 
> Comment it, extensively, so that anyone reading the code understands
> why it is done so and what happens to devices then.
I added comment in tegra_pcie_deinit_controller() where this API is called
but I think I should move the comment inside tegra_pcie_downstream_dev_to_D0()
API and also add more info to it.
I'll take care of it in the next patch.

> 
> Lorenzo
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
