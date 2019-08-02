Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A33067F67B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xxU4F2VsGI9vclRJC0QOrzLHRST14od+GKUfPi8r3cc=; b=jHBRWYdKf5a+M5frcDPSr2zfg
	WtqV90ebV+EMTvwzrjwQ2Sd+DhOhVsMVYW9dZ5agPxFKgVgBfQfTk5pMylawRjoVvESreXT/9DbKp
	8jqPMZv/DmyhuDw6pqEsrn93l3zt5ywo7u/gHRAAed8GzkhIGLD0SABm/KfclLq5omN+K7pHrWz2h
	wkzVMEEYcLge7Yt3c1XPCE0poRVbbPUYDlJPG7TjICef7poApMCJ5+h9fmuGrOWyuLj8zcUKrJGS+
	9YxslxXGD6SuWKMZhLxxTO7Wf9HTeow83wu9quKYyw0DTwL54jM9OodDg0D17lzku4El9hn6WrJBd
	wevlAEoWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htWKr-0001SQ-9V; Fri, 02 Aug 2019 12:07:01 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htWKk-0001S5-1g
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:06:56 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d44275d0001>; Fri, 02 Aug 2019 05:06:54 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 02 Aug 2019 05:06:53 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 02 Aug 2019 05:06:53 -0700
Received: from [10.24.47.37] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 2 Aug
 2019 12:06:46 +0000
Subject: Re: [PATCH V13 12/12] PCI: tegra: Add Tegra194 PCIe support
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20190710062212.1745-1-vidyas@nvidia.com>
 <20190710062212.1745-13-vidyas@nvidia.com>
 <20190711125433.GB26088@e121166-lin.cambridge.arm.com>
 <986d0b1a-666a-7b05-a9f3-e761518bdc92@nvidia.com>
 <20190712160754.GA24285@e121166-lin.cambridge.arm.com>
 <a5f8689b-1358-dd2d-4f54-7e68a6ab158b@nvidia.com>
 <20190716112225.GA24335@e121166-lin.cambridge.arm.com>
 <be6367bc-08a0-762a-aae8-b3f0376d0e9a@nvidia.com>
 <20190730154939.GA367@e121166-lin.cambridge.arm.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <f09c79fc-c724-5290-d630-cac3fdd7a996@nvidia.com>
Date: Fri, 2 Aug 2019 17:36:43 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730154939.GA367@e121166-lin.cambridge.arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1564747614; bh=hjAx2guWgRoUvLdMxwRDzRFlWN70OcgvI56pMJgKuRw=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=iY7PQ2xfLN1dxC5Pqb8XywrMNc0xUKEQuqBIryAaRGfalggHUkqu8F0fzTnxLXdcU
 gxr6vc8J64areE+1dG2gSoi5/uOraW98YLcYLbGt5xmxhM91CAqxjRYH5ZU/ZCneYi
 1ocuGoXv8x2ZYpGX7fGFtqtKyA3uh4xKelSYEIG+qZoGzcSxcNf4FiuGHlPyQpS3Wl
 lW4nepeb8lqXFpPKkvQ7jN2AnfdHfu5+UT7solpuvrRoo2FPFGV/CGuULMdg5apoe+
 yu1rhGx9i8vjsSyu+aY/GnF3OHsRiOka4Cjx/fUilZQQUeZvzoUYRrCZ5JBTrJnj5I
 WkWzicpXoqfEA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_050654_117145_F6611178 
X-CRM114-Status: GOOD (  31.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 7/30/2019 9:19 PM, Lorenzo Pieralisi wrote:
> On Tue, Jul 23, 2019 at 08:14:08PM +0530, Vidya Sagar wrote:
>> On 7/16/2019 4:52 PM, Lorenzo Pieralisi wrote:
>>> On Sat, Jul 13, 2019 at 12:34:34PM +0530, Vidya Sagar wrote:
>>>
>>> [...]
>>>
>>>>>>>> +static int tegra_pcie_bpmp_set_ctrl_state(struct tegra_pcie_dw *pcie,
>>>>>>>> +					  bool enable)
>>>>>>>> +{
>>>>>>>> +	struct mrq_uphy_response resp;
>>>>>>>> +	struct tegra_bpmp_message msg;
>>>>>>>> +	struct mrq_uphy_request req;
>>>>>>>> +	int err;
>>>>>>>> +
>>>>>>>> +	if (pcie->cid == 5)
>>>>>>>> +		return 0;
>>>>>>>
>>>>>>> What's wrong with cid == 5 ? Explain please.
>>>>>> Controller with ID=5 doesn't need any programming to enable it which is
>>>>>> done here through calling firmware API.
>>>>>>
>>>>>>>
>>>>>>>> +	memset(&req, 0, sizeof(req));
>>>>>>>> +	memset(&resp, 0, sizeof(resp));
>>>>>>>> +
>>>>>>>> +	req.cmd = CMD_UPHY_PCIE_CONTROLLER_STATE;
>>>>>>>> +	req.controller_state.pcie_controller = pcie->cid;
>>>>>>>> +	req.controller_state.enable = enable;
>>>>>>>> +
>>>>>>>> +	memset(&msg, 0, sizeof(msg));
>>>>>>>> +	msg.mrq = MRQ_UPHY;
>>>>>>>> +	msg.tx.data = &req;
>>>>>>>> +	msg.tx.size = sizeof(req);
>>>>>>>> +	msg.rx.data = &resp;
>>>>>>>> +	msg.rx.size = sizeof(resp);
>>>>>>>> +
>>>>>>>> +	if (irqs_disabled())
>>>>>>>
>>>>>>> Can you explain to me what this check is meant to achieve please ?
>>>>>> Firmware interface provides different APIs to be called when there are
>>>>>> no interrupts enabled in the system (noirq context) and otherwise
>>>>>> hence checking that situation here and calling appropriate API.
>>>>>
>>>>> That's what I am questioning. Being called from {suspend/resume}_noirq()
>>>>> callbacks (if that's the code path this check caters for) does not mean
>>>>> irqs_disabled() == true.
>>>> Agree.
>>>> Actually, I got a hint of having this check from the following.
>>>> Both tegra_bpmp_transfer_atomic() and tegra_bpmp_transfer() are indirectly
>>>> called by APIs registered with .master_xfer() and .master_xfer_atomic() hooks of
>>>> struct i2c_algorithm and the decision to call which one of these is made using the
>>>> following check in i2c-core.h file.
>>>> static inline bool i2c_in_atomic_xfer_mode(void)
>>>> {
>>>> 	return system_state > SYSTEM_RUNNING && irqs_disabled();
>>>> }
>>>> I think I should use this condition as is IIUC.
>>>> Please let me know if there are any concerns with this.
>>>
>>> It is not a concern, it is just that I don't understand how this code
>>> can be called with IRQs disabled, if you can give me an execution path I
>>> am happy to leave the check there. On top of that, when called from
>>> suspend NOIRQ context, it is likely to use the blocking API (because
>>> IRQs aren't disabled at CPU level) behind which there is most certainly
>>> an IRQ required to wake the thread up and if the IRQ in question was
>>> disabled in the suspend NOIRQ phase this code is likely to deadlock.
>>>
>>> I want to make sure we can justify adding this check, I do not
>>> want to add it because we think it can be needed when it may not
>>> be needed at all (and it gets copy and pasted over and over again
>>> in other drivers).
>> I had a discussion internally about this and the prescribed usage of these APIs
>> seem to be that
>> use tegra_bpmp_transfer() in .probe() and other paths where interrupts are
>> enabled as this API needs interrupts to be enabled for its working.
>> Use tegra_bpmp_transfer_atomic() surrounded by local_irq_save()/local_irq_restore()
>> in other paths where interrupt servicing is disabled.
> 
> Why tegra_bpmp_transfer_atomic() needs IRQs to be disabled ? And why
> is it needed in this piece of code where IRQs are _never_ disabled
> at CPU level ?
> 
> IRQs are enabled when you call a suspend_noirq() callback, so the
> blocking API can be used as long as the IRQ descriptor backing
> the IRQ that will wake-up the blocked call is marked as
> IRQF_NO_SUSPEND.
> 
> The problem is not IRQs enabled/disabled at CPU level, the problem is
> the IRQ descriptor of the IRQ required to handle the blocking BPMP call,
> mark it as IRQF_NO_SUSPEND and remove the tegra_bpmp_transfer_atomic()
> call from this code (or please give me a concrete example pinpointing
> why it is needed).
Ideally, using tegra_bpmp_transfer() alone in all paths (.probe() as well as .resume_noirq())
should have worked as the corresponding IRQ is already flagged as IRQF_NO_SUSPEND, but,
because of the way BPMP-FW driver in kernel making its interface available through .resume_early(),
tegra_bpmp_transfer() wasn't working as expected and I pushed a patch (CC'ing you) at
http://patchwork.ozlabs.org/patch/1140973/ to make it .resume_noirq() from .resume_early().
With that in place, we can just use tegra_bpmp_trasnfer().
I'll push a new patch with this change once my BPMP-FW driver patch is approved.

Thanks,
Vidya Sagar
> 
> Thanks,
> Lorenzo
> 
>> I'll go ahead and make next patch series with this if this looks fine to you.
>>
>>>
>>>>> Actually, if tegra_bpmp_transfer() requires IRQs to be enabled you may
>>>>> even end up in a situation where that blocking call does not wake up
>>>>> because the IRQ in question was disabled in the NOIRQ suspend/resume
>>>>> phase.
>>>>>
>>>>> [...]
>>>>>
>>>>>>>> +static int tegra_pcie_dw_probe(struct platform_device *pdev)
>>>>>>>> +{
>>>>>>>> +	const struct tegra_pcie_soc *data;
>>>>>>>> +	struct device *dev = &pdev->dev;
>>>>>>>> +	struct resource *atu_dma_res;
>>>>>>>> +	struct tegra_pcie_dw *pcie;
>>>>>>>> +	struct resource *dbi_res;
>>>>>>>> +	struct pcie_port *pp;
>>>>>>>> +	struct dw_pcie *pci;
>>>>>>>> +	struct phy **phys;
>>>>>>>> +	char *name;
>>>>>>>> +	int ret;
>>>>>>>> +	u32 i;
>>>>>>>> +
>>>>>>>> +	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
>>>>>>>> +	if (!pcie)
>>>>>>>> +		return -ENOMEM;
>>>>>>>> +
>>>>>>>> +	pci = &pcie->pci;
>>>>>>>> +	pci->dev = &pdev->dev;
>>>>>>>> +	pci->ops = &tegra_dw_pcie_ops;
>>>>>>>> +	pp = &pci->pp;
>>>>>>>> +	pcie->dev = &pdev->dev;
>>>>>>>> +
>>>>>>>> +	data = (struct tegra_pcie_soc *)of_device_get_match_data(dev);
>>>>>>>> +	if (!data)
>>>>>>>> +		return -EINVAL;
>>>>>>>> +	pcie->mode = (enum dw_pcie_device_mode)data->mode;
>>>>>>>> +
>>>>>>>> +	ret = tegra_pcie_dw_parse_dt(pcie);
>>>>>>>> +	if (ret < 0) {
>>>>>>>> +		dev_err(dev, "Failed to parse device tree: %d\n", ret);
>>>>>>>> +		return ret;
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	pcie->pex_ctl_supply = devm_regulator_get(dev, "vddio-pex-ctl");
>>>>>>>> +	if (IS_ERR(pcie->pex_ctl_supply)) {
>>>>>>>> +		dev_err(dev, "Failed to get regulator: %ld\n",
>>>>>>>> +			PTR_ERR(pcie->pex_ctl_supply));
>>>>>>>> +		return PTR_ERR(pcie->pex_ctl_supply);
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	pcie->core_clk = devm_clk_get(dev, "core");
>>>>>>>> +	if (IS_ERR(pcie->core_clk)) {
>>>>>>>> +		dev_err(dev, "Failed to get core clock: %ld\n",
>>>>>>>> +			PTR_ERR(pcie->core_clk));
>>>>>>>> +		return PTR_ERR(pcie->core_clk);
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	pcie->appl_res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
>>>>>>>> +						      "appl");
>>>>>>>> +	if (!pcie->appl_res) {
>>>>>>>> +		dev_err(dev, "Failed to find \"appl\" region\n");
>>>>>>>> +		return PTR_ERR(pcie->appl_res);
>>>>>>>> +	}
>>>>>>>> +	pcie->appl_base = devm_ioremap_resource(dev, pcie->appl_res);
>>>>>>>> +	if (IS_ERR(pcie->appl_base))
>>>>>>>> +		return PTR_ERR(pcie->appl_base);
>>>>>>>> +
>>>>>>>> +	pcie->core_apb_rst = devm_reset_control_get(dev, "apb");
>>>>>>>> +	if (IS_ERR(pcie->core_apb_rst)) {
>>>>>>>> +		dev_err(dev, "Failed to get APB reset: %ld\n",
>>>>>>>> +			PTR_ERR(pcie->core_apb_rst));
>>>>>>>> +		return PTR_ERR(pcie->core_apb_rst);
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	phys = devm_kcalloc(dev, pcie->phy_count, sizeof(*phys), GFP_KERNEL);
>>>>>>>> +	if (!phys)
>>>>>>>> +		return PTR_ERR(phys);
>>>>>>>> +
>>>>>>>> +	for (i = 0; i < pcie->phy_count; i++) {
>>>>>>>> +		name = kasprintf(GFP_KERNEL, "p2u-%u", i);
>>>>>>>> +		if (!name) {
>>>>>>>> +			dev_err(dev, "Failed to create P2U string\n");
>>>>>>>> +			return -ENOMEM;
>>>>>>>> +		}
>>>>>>>> +		phys[i] = devm_phy_get(dev, name);
>>>>>>>> +		kfree(name);
>>>>>>>> +		if (IS_ERR(phys[i])) {
>>>>>>>> +			ret = PTR_ERR(phys[i]);
>>>>>>>> +			dev_err(dev, "Failed to get PHY: %d\n", ret);
>>>>>>>> +			return ret;
>>>>>>>> +		}
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	pcie->phys = phys;
>>>>>>>> +
>>>>>>>> +	dbi_res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbi");
>>>>>>>> +	if (!dbi_res) {
>>>>>>>> +		dev_err(dev, "Failed to find \"dbi\" region\n");
>>>>>>>> +		return PTR_ERR(dbi_res);
>>>>>>>> +	}
>>>>>>>> +	pcie->dbi_res = dbi_res;
>>>>>>>> +
>>>>>>>> +	pci->dbi_base = devm_ioremap_resource(dev, dbi_res);
>>>>>>>> +	if (IS_ERR(pci->dbi_base))
>>>>>>>> +		return PTR_ERR(pci->dbi_base);
>>>>>>>> +
>>>>>>>> +	/* Tegra HW locates DBI2 at a fixed offset from DBI */
>>>>>>>> +	pci->dbi_base2 = pci->dbi_base + 0x1000;
>>>>>>>> +
>>>>>>>> +	atu_dma_res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
>>>>>>>> +						   "atu_dma");
>>>>>>>> +	if (!atu_dma_res) {
>>>>>>>> +		dev_err(dev, "Failed to find \"atu_dma\" region\n");
>>>>>>>> +		return PTR_ERR(atu_dma_res);
>>>>>>>> +	}
>>>>>>>> +	pcie->atu_dma_res = atu_dma_res;
>>>>>>>> +	pci->atu_base = devm_ioremap_resource(dev, atu_dma_res);
>>>>>>>> +	if (IS_ERR(pci->atu_base))
>>>>>>>> +		return PTR_ERR(pci->atu_base);
>>>>>>>> +
>>>>>>>> +	pcie->core_rst = devm_reset_control_get(dev, "core");
>>>>>>>> +	if (IS_ERR(pcie->core_rst)) {
>>>>>>>> +		dev_err(dev, "Failed to get core reset: %ld\n",
>>>>>>>> +			PTR_ERR(pcie->core_rst));
>>>>>>>> +		return PTR_ERR(pcie->core_rst);
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	pp->irq = platform_get_irq_byname(pdev, "intr");
>>>>>>>> +	if (!pp->irq) {
>>>>>>>> +		dev_err(dev, "Failed to get \"intr\" interrupt\n");
>>>>>>>> +		return -ENODEV;
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	ret = devm_request_irq(dev, pp->irq, tegra_pcie_irq_handler,
>>>>>>>> +			       IRQF_SHARED, "tegra-pcie-intr", pcie);
>>>>>>>> +	if (ret) {
>>>>>>>> +		dev_err(dev, "Failed to request IRQ %d: %d\n", pp->irq, ret);
>>>>>>>> +		return ret;
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	pcie->bpmp = tegra_bpmp_get(dev);
>>>>>>>> +	if (IS_ERR(pcie->bpmp))
>>>>>>>> +		return PTR_ERR(pcie->bpmp);
>>>>>>>> +
>>>>>>>> +	platform_set_drvdata(pdev, pcie);
>>>>>>>> +
>>>>>>>> +	if (pcie->mode == DW_PCIE_RC_TYPE) {
>>>>>>>> +		ret = tegra_pcie_config_rp(pcie);
>>>>>>>> +		if (ret && ret != -ENOMEDIUM)
>>>>>>>> +			goto fail;
>>>>>>>> +		else
>>>>>>>> +			return 0;
>>>>>>>
>>>>>>> So if the link is not up we still go ahead and make probe
>>>>>>> succeed. What for ?
>>>>>> We may need root port to be available to support hot-plugging of
>>>>>> endpoint devices, so, we don't fail the probe.
>>>>>
>>>>> We need it or we don't. If you do support hotplugging of endpoint
>>>>> devices point me at the code, otherwise link up failure means
>>>>> failure to probe.
>>>> Currently hotplugging of endpoint is not supported, but it is one of
>>>> the use cases that we may add support for in future.
>>>
>>> You should elaborate on this, I do not understand what you mean,
>>> either the root port(s) supports hotplug or it does not.
>>>
>>>> But, why should we fail probe if link up doesn't happen? As such,
>>>> nothing went wrong in terms of root port initialization right?  I
>>>> checked other DWC based implementations and following are not failing
>>>> the probe pci-dra7xx.c, pcie-armada8k.c, pcie-artpec6.c, pcie-histb.c,
>>>> pcie-kirin.c, pcie-spear13xx.c, pci-exynos.c, pci-imx6.c,
>>>> pci-keystone.c, pci-layerscape.c
>>>>
>>>> Although following do fail the probe if link is not up.  pcie-qcom.c,
>>>> pcie-uniphier.c, pci-meson.c
>>>>
>>>> So, to me, it looks more like a choice we can make whether to fail the
>>>> probe or not and in this case we are choosing not to fail.
>>>
>>> I disagree. I had an offline chat with Bjorn and whether link-up should
>>> fail the probe or not depends on whether the root port(s) is hotplug
>>> capable or not and this in turn relies on the root port "Slot
>>> implemented" bit in the PCI Express capabilities register.
>>>
>>> It is a choice but it should be based on evidence.
>>>
>>> Lorenzo
>> With Bjorn's latest comment on top of this, I think we are good not to fail
>> the probe here.
>>
>> - Vidya Sagar
>>>
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
