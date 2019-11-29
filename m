Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 487B810D60E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 14:23:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V0IY/agr6mA2ZDvKMK0MF1f6FFSZ5pWb1GtbvG+uy0A=; b=PcTq3I04+BO7rGzo5qsvFw0jF
	Hvv/UpYftUv6knNILGt9/PGeUlqaBkR9WehgEFUG4maBLtPGMOdQD6ArrfbpvHThSMCDY8NKimOen
	WSp06Kj699Q84UTey+7kvQhVxqcY13glCtEQFcHxMijuweJlEfd5M7YiLeLWzs2ETMdFpO1nFkOx2
	l2cxQqXcNJZhtcvN+N6prt5qZZxJBQDUnaQe8uhQcruzIm0MdzNF7kc0GN34MEj/Wz48E8ezcMwdH
	aFPOe+wB6xACFjmIF6f3ZiMg6DR2TvbN8u5Q07wW7yWzcHK8gDjcndZMlYfouXJDKmUtOdkQ6vOxB
	SRuLWpTTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iagEk-0003Z2-45; Fri, 29 Nov 2019 13:23:06 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iagEb-0003Yc-1v
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 13:22:58 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5de11bb20000>; Fri, 29 Nov 2019 05:22:58 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 29 Nov 2019 05:22:54 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 29 Nov 2019 05:22:54 -0800
Received: from [10.25.75.74] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 29 Nov
 2019 13:22:50 +0000
Subject: Re: [PATCH 3/6] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20191126213718.GA185422@google.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <7298f15d-1745-e5c9-2d08-1235a27244ae@nvidia.com>
Date: Fri, 29 Nov 2019 18:52:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191126213718.GA185422@google.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1575033778; bh=7gO/CXj0wvWwogWev3Z+fNC4tNy+uDv47vsz0nrrl5w=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Q1QlqQj9jsPpnd6pf7C27/BelCW4RWZRzBi2KaiDdVgmQRtcmInnvBKkDE6Iq/jDa
 3eEtcoGbjwFqH0XNmV+7oElfREV+vkp/uQUYaFN8MjIiVD/X1ZjwDEQWOShO+R+Krd
 s0ELF/Yf578H0G6uMulK4hnMAXda5t1DwKz4j+AyJA5/sbYgIY6KVH82ppVtNN3ybN
 MfmKAM5lE7RX5Q85hZMaus6bD4MIEM+bTbL5jSUereIJm5FxCXk9FLvlqSi6B8mzHc
 KblxQObo77nRmb3bfFCnDhQUKusMgt67Q1Qdqvaia3kHhyOEpzmxYR5NVWzR0n67XT
 YH7xjnMHHJ/JA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_052257_117472_57665F75 
X-CRM114-Status: GOOD (  14.18  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/27/2019 3:07 AM, Bjorn Helgaas wrote:
> On Fri, Nov 22, 2019 at 04:15:02PM +0530, Vidya Sagar wrote:
>> Add support for the endpoint mode of Synopsys DesignWare core based
>> dual mode PCIe controllers present in Tegra194 SoC.
> 
>> +static irqreturn_t tegra_pcie_ep_irq_handler(struct tegra_pcie_dw *pcie)
>> +{
>> +	struct dw_pcie_ep *ep = &pcie->pci.ep;
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
>> +		if (val & APPL_INTR_STATUS_L1_0_0_RDLH_LINK_UP_CHGED) {
>> +			tmp = appl_readl(pcie, APPL_LINK_STATUS);
>> +			if (tmp & APPL_LINK_STATUS_RDLH_LINK_UP) {
>> +				dev_info(pcie->dev, "Link is up with Host\n");
>> +				dw_pcie_ep_linkup(ep);
>> +			}
>> +		}
>> +	} else if (val & APPL_INTR_STATUS_L0_PCI_CMD_EN_INT) {
> 
> Is it really the case that only one of
> APPL_INTR_STATUS_L0_LINK_STATE_INT and
> APPL_INTR_STATUS_L0_PCI_CMD_EN_INT can be set?
Not really.

> 
> If it's possible that both could be set, maybe this should be
> something like this?
> 
>    int spurious = 1;
> 
>    if (val & APPL_INTR_STATUS_L0_LINK_STATE_INT) {
>      ...
>      spurious = 0;
>    }
>    if (val & APPL_INTR_STATUS_L0_PCI_CMD_EN_INT) {
>      ...
>      spurious = 0;
>    }
> 
>    if (spurious) {
>      dev_warn(...)
>    }
I'll take care of this in the next patch series.

> 
>> +		val = appl_readl(pcie, APPL_INTR_STATUS_L1_15);
>> +		appl_writel(pcie, val, APPL_INTR_STATUS_L1_15);
>> +		if (val & APPL_INTR_STATUS_L1_15_CFG_BME_CHGED) {
>> +			if (!kfifo_put(&pcie->event_fifo, EP_BME_CHANGE)) {
>> +				dev_err(pcie->dev, "EVENT FIFO is full\n");
>> +				return IRQ_HANDLED;
>> +			}
>> +			wake_up(&pcie->wq);
>> +		}
>> +	} else {
>> +		dev_warn(pcie->dev, "Random interrupt (STATUS = 0x%08X)\n",
>> +			 val);
>> +		appl_writel(pcie, val, APPL_INTR_STATUS_L0);
>> +	}
>> +
>> +	return IRQ_HANDLED;
>> +}
> 
>> +static int tegra_pcie_ep_work_thread(void *p)
>> +{
>> +	struct tegra_pcie_dw *pcie = (struct tegra_pcie_dw *)p;
>> +	u32 event;
>> +
>> +	while (true) {
>> +		wait_event_interruptible(pcie->wq,
>> +					 !kfifo_is_empty(&pcie->event_fifo));
>> +
>> +		if (kthread_should_stop())
>> +			break;
>> +
>> +		if (!kfifo_get(&pcie->event_fifo, &event)) {
>> +			dev_warn(pcie->dev, "EVENT FIFO is empty\n");
>> +			continue;
>> +		}
>> +
>> +		switch (event) {
>> +		case EP_PEX_RST_DEASSERT:
>> +			dev_info(pcie->dev, "EVENT: EP_PEX_RST_DEASSERT\n");
>> +			pex_ep_event_pex_rst_deassert(pcie);
>> +			break;
>> +
>> +		case EP_PEX_RST_ASSERT:
>> +			dev_info(pcie->dev, "EVENT: EP_PEX_RST_ASSERT\n");
>> +			pex_ep_event_pex_rst_assert(pcie);
>> +			break;
>> +
>> +		case EP_HOT_RST_DONE:
>> +			dev_info(pcie->dev, "EVENT: EP_HOT_RST_DONE\n");
>> +			pex_ep_event_hot_rst_done(pcie);
>> +			break;
>> +
>> +		case EP_BME_CHANGE:
>> +			dev_info(pcie->dev, "EVENT: EP_BME_CHANGE\n");
>> +			pex_ep_event_bme_change(pcie);
>> +			break;
>> +
>> +		case EP_EVENT_EXIT:
>> +			dev_info(pcie->dev, "EVENT: EP_EVENT_EXIT\n");
>> +			return 0;
>> +
>> +		default:
>> +			dev_warn(pcie->dev, "Invalid PCIe EP event\n");
> 
> Maybe include the invalid event value in the message?
I'll take care of this in the next patch series

> 
>> +			break;
>> +		}
>> +	}
>> +
>> +	return 0;
>> +}


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
