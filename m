Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9224F10A615
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 22:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=GHDWQiwHp9BkfIe8Ex6kln7YwQbfHa0IibVDHj7TSTs=; b=WB8yjJmmK+2cRO
	Bh01EWwVNcj+kax9TPSxwWyCKdTceSVvLf79rOHX7K/376n3RU6oXs3DfibjL2bLFxN9topE0LfaZ
	uo/c2tJdHZdhJhYQ+RpZRAjoUXDTD5Rv22J8K6ci9O9Dbori7RU8fSUz6ypyhjGdFscCJSooUhsC2
	r7XHaG0IkzCtfmvre27uBf+ifUsDklDhIp7CGlhvD7b5VZbSC+2Rs1tbYvmcihTqJ0hf3CVkS/lVq
	bm7o73IJYS9OgVDYVjGKFYg7LsF2jKUkNbN2AZqijentbcZADR7Tu7n9zPO9w1mN2v8++SM5QqJmy
	4cxDID0fkh3r0RiNOsRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZiWc-0007My-E8; Tue, 26 Nov 2019 21:37:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZiWS-0007Ld-79
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 21:37:25 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0B0120835;
 Tue, 26 Nov 2019 21:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574804242;
 bh=NiCNn3FuYjr3n6WG4QyUZzhp+ax9LgPmgNljIGhEErI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=drZqipwPeS+niJFsQ0qSF6WD0LHQSIqKXEeHnUMsVLnVc7MNuISEmOaQH+sDLt2g/
 zMyTvJUM46sxgLF7lkaIhja1ULdda7AL64iLWUwrXiH0nczywhEf6oFTFeuLNA5HY6
 hlclqFVo9MpY/gYtPhZbpczXork0in44N12KPgbI=
Date: Tue, 26 Nov 2019 15:37:18 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH 3/6] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
Message-ID: <20191126213718.GA185422@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122104505.8986-4-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_133724_306824_BA3E7A05 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FAKE_REPLY_C           No description available.
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kishon@ti.com,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org,
 linux-tegra@vger.kernel.org, andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 04:15:02PM +0530, Vidya Sagar wrote:
> Add support for the endpoint mode of Synopsys DesignWare core based
> dual mode PCIe controllers present in Tegra194 SoC.

> +static irqreturn_t tegra_pcie_ep_irq_handler(struct tegra_pcie_dw *pcie)
> +{
> +	struct dw_pcie_ep *ep = &pcie->pci.ep;
> +	u32 val, tmp;
> +
> +	val = appl_readl(pcie, APPL_INTR_STATUS_L0);
> +	if (val & APPL_INTR_STATUS_L0_LINK_STATE_INT) {
> +		val = appl_readl(pcie, APPL_INTR_STATUS_L1_0_0);
> +		appl_writel(pcie, val, APPL_INTR_STATUS_L1_0_0);
> +		if (val & APPL_INTR_STATUS_L1_0_0_HOT_RESET_DONE) {
> +			/* clear any stale PEX_RST interrupt */
> +			if (!kfifo_put(&pcie->event_fifo, EP_HOT_RST_DONE)) {
> +				dev_err(pcie->dev, "EVENT FIFO is full\n");
> +				return IRQ_HANDLED;
> +			}
> +			wake_up(&pcie->wq);
> +		}
> +		if (val & APPL_INTR_STATUS_L1_0_0_RDLH_LINK_UP_CHGED) {
> +			tmp = appl_readl(pcie, APPL_LINK_STATUS);
> +			if (tmp & APPL_LINK_STATUS_RDLH_LINK_UP) {
> +				dev_info(pcie->dev, "Link is up with Host\n");
> +				dw_pcie_ep_linkup(ep);
> +			}
> +		}
> +	} else if (val & APPL_INTR_STATUS_L0_PCI_CMD_EN_INT) {

Is it really the case that only one of
APPL_INTR_STATUS_L0_LINK_STATE_INT and
APPL_INTR_STATUS_L0_PCI_CMD_EN_INT can be set?

If it's possible that both could be set, maybe this should be
something like this?

  int spurious = 1;

  if (val & APPL_INTR_STATUS_L0_LINK_STATE_INT) {
    ...
    spurious = 0;
  }
  if (val & APPL_INTR_STATUS_L0_PCI_CMD_EN_INT) {
    ...
    spurious = 0;
  }

  if (spurious) {
    dev_warn(...)
  }

> +		val = appl_readl(pcie, APPL_INTR_STATUS_L1_15);
> +		appl_writel(pcie, val, APPL_INTR_STATUS_L1_15);
> +		if (val & APPL_INTR_STATUS_L1_15_CFG_BME_CHGED) {
> +			if (!kfifo_put(&pcie->event_fifo, EP_BME_CHANGE)) {
> +				dev_err(pcie->dev, "EVENT FIFO is full\n");
> +				return IRQ_HANDLED;
> +			}
> +			wake_up(&pcie->wq);
> +		}
> +	} else {
> +		dev_warn(pcie->dev, "Random interrupt (STATUS = 0x%08X)\n",
> +			 val);
> +		appl_writel(pcie, val, APPL_INTR_STATUS_L0);
> +	}
> +
> +	return IRQ_HANDLED;
> +}

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
> +			dev_warn(pcie->dev, "Invalid PCIe EP event\n");

Maybe include the invalid event value in the message?

> +			break;
> +		}
> +	}
> +
> +	return 0;
> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
