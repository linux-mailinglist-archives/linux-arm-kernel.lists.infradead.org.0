Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A17171647
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:48:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=le8GDgS1DZoT+WLSNYAo75u5SfN5ewRsrMG/vtEAxHo=; b=gKizO6F2Blnp5F
	2g7m0s5ISkfwmCdNLCO2nBkbHw9dhkuGhEI7uUXnScnfrwJU9VK0hM61xS1dH3MEyNiu6wvDcL0Rs
	gKL/Hr53eTGgDe0pvIfcdABOjQYffJBXqW7OgtxMsoBUodV6V6n03lGCcKyObeiD45aTRnljFYnk5
	vJf6tsGvxolkxBQdRfNS1UqPynemHpmnj1DvcleXK2lcciyh8f39v2RpcEEmg9/nQw3CiUcc3LBnx
	d8WSNIrzQCwayHE8qo8sEYr9ierDlOoAMKQOSxwJYTdKrYTaZqwET5XfXKQJ47AUR/5NpMM4Av57M
	T//2/IHRnuyg5TEWZ81A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Hef-0003YC-9K; Thu, 27 Feb 2020 11:48:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7HeU-0003XS-Vz
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:48:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 05CAB1FB;
 Thu, 27 Feb 2020 03:48:24 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 025253F73B;
 Thu, 27 Feb 2020 03:48:21 -0800 (PST)
Date: Thu, 27 Feb 2020 11:48:16 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 5/5] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
Message-ID: <20200227114816.GA11443@e121166-lin.cambridge.arm.com>
References: <20200113181411.32743-1-vidyas@nvidia.com>
 <20200113181411.32743-6-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113181411.32743-6-vidyas@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_034827_118782_1DFBD746 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-pci@vger.kernel.org, bhelgaas@google.com, andrew.murray@arm.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 11:44:11PM +0530, Vidya Sagar wrote:
> Add support for the endpoint mode of Synopsys DesignWare core based
> dual mode PCIe controllers present in Tegra194 SoC.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V3:
> * Addressed Thierry's review comments

I need his ACK to merge this series.

[...]

> +static int tegra_pcie_ep_work_thread(void *p)
> +{
> +	struct tegra_pcie_dw *pcie = (struct tegra_pcie_dw *)p;
> +	u32 event;
> +
> +	while (true) {
> +		wait_event_interruptible(pcie->wq,
> +					 !kfifo_is_empty(&pcie->event_fifo));
> +
> +		if (kthread_should_stop())
> +			break;
> +
> +		if (!kfifo_get(&pcie->event_fifo, &event)) {
> +			dev_warn(pcie->dev, "EVENT FIFO is empty\n");
> +			continue;
> +		}
> +
> +		switch (event) {
> +		case EP_PEX_RST_DEASSERT:
> +			dev_info(pcie->dev, "EVENT: EP_PEX_RST_DEASSERT\n");
> +			pex_ep_event_pex_rst_deassert(pcie);
> +			break;
> +
> +		case EP_PEX_RST_ASSERT:
> +			dev_info(pcie->dev, "EVENT: EP_PEX_RST_ASSERT\n");
> +			pex_ep_event_pex_rst_assert(pcie);
> +			break;
> +
> +		case EP_HOT_RST_DONE:
> +			dev_info(pcie->dev, "EVENT: EP_HOT_RST_DONE\n");
> +			pex_ep_event_hot_rst_done(pcie);
> +			break;
> +
> +		case EP_BME_CHANGE:
> +			dev_info(pcie->dev, "EVENT: EP_BME_CHANGE\n");
> +			pex_ep_event_bme_change(pcie);
> +			break;
> +
> +		case EP_EVENT_EXIT:
> +			dev_info(pcie->dev, "EVENT: EP_EVENT_EXIT\n");
> +			return 0;
> +
> +		default:
> +			dev_warn(pcie->dev, "Invalid PCIe EP event: %u\n",
> +				 event);
> +			break;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static irqreturn_t tegra_pcie_ep_pex_rst_irq(int irq, void *arg)
> +{
> +	struct tegra_pcie_dw *pcie = arg;
> +
> +	if (gpiod_get_value(pcie->pex_rst_gpiod)) {
> +		if (!kfifo_put(&pcie->event_fifo, EP_PEX_RST_ASSERT)) {
> +			dev_err(pcie->dev, "EVENT FIFO is full\n");
> +			return IRQ_HANDLED;
> +		}
> +	} else {
> +		if (!kfifo_put(&pcie->event_fifo, EP_PEX_RST_DEASSERT)) {
> +			dev_err(pcie->dev, "EVENT FIFO is full\n");
> +			return IRQ_HANDLED;
> +		}
> +	}
> +
> +	wake_up(&pcie->wq);
> +
> +	return IRQ_HANDLED;
> +}
> +

[...]

> +static int tegra_pcie_config_ep(struct tegra_pcie_dw *pcie,
> +				struct platform_device *pdev)
> +{
> +	struct dw_pcie *pci = &pcie->pci;
> +	struct device *dev = pcie->dev;
> +	struct dw_pcie_ep *ep;
> +	struct resource *res;
> +	char *name;
> +	int ret;
> +
> +	ep = &pci->ep;
> +	ep->ops = &pcie_ep_ops;
> +
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "addr_space");
> +	if (!res)
> +		return -EINVAL;
> +
> +	ep->phys_base = res->start;
> +	ep->addr_size = resource_size(res);
> +	ep->page_size = SZ_64K;
> +
> +	ret = gpiod_set_debounce(pcie->pex_rst_gpiod, PERST_DEBOUNCE_TIME);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to set PERST GPIO debounce time: %d\n",
> +			ret);
> +		return ret;
> +	}
> +
> +	ret = gpiod_to_irq(pcie->pex_rst_gpiod);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to get IRQ for PERST GPIO: %d\n", ret);
> +		return ret;
> +	}
> +	pcie->pex_rst_irq = (unsigned int)ret;
> +
> +	name = devm_kasprintf(dev, GFP_KERNEL, "tegra_pcie_%u_pex_rst_irq",
> +			      pcie->cid);
> +	if (!name) {
> +		dev_err(dev, "Failed to create PERST IRQ string\n");
> +		return -ENOMEM;
> +	}
> +
> +	irq_set_status_flags(pcie->pex_rst_irq, IRQ_NOAUTOEN);
> +
> +	ret = devm_request_irq(dev, pcie->pex_rst_irq,
> +			       tegra_pcie_ep_pex_rst_irq,
> +			       IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
> +			       name, (void *)pcie);

I have the impression that a threaded IRQ is what you need, which
will also remove some boilerplate in the process. Any reason why
you can't use a threaded IRQ instead of a standalone kthread ?

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
