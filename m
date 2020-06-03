Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3E61ECE17
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:15:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GBAgNlzMwiRA/dy6NE7/qbA2P5p5hU5isTgpVeMUORY=; b=Fq4ebGsxwOTmZnRltWlBo+Wlb
	ORZ/gi/MPV88FEaZy0dFABZExPUt/nRF7K91bXi22PNZaD7tr66k8eDzBpgZ2rxit6xoaAt92ra9o
	9TflyvsgCHZPjMk1tqSn2P5a7shF4YB5JRc3dNqzCW0WtoTJDwdVjU83g7EbKxVRmvUBFwJUGOJMr
	R6wYTJdZTDLfCttRBJandsMZKy232odVNdFK6auetsoYHEPznUQyUkoDoOEhPsAAIhLi8m/+1Rbku
	aqzXk3fuhnRMo+zwjyRVIHyuU1ABfm9P16DB8h0R5MgOlk//nLTPrVQxxMImvf1SxNCMhrreWhgBf
	e6+vAy6BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRMc-0001v8-Md; Wed, 03 Jun 2020 11:15:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRMP-0001H8-W0
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 11:15:07 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 885C02067B;
 Wed,  3 Jun 2020 11:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591182905;
 bh=DIzdZtES3weee8kFjADfjxp0jxzg8+EHuNSTFll5o64=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dHtLL2bjjmWlybWqZVA7JugSObOSlVQlMOrxeXn8QK/b8Ox/RqzeafeE5m5ch1Izs
 Tz1D7UKIVGzJUyx6siommZjcz7WJlmZrcScBIPFjDjjWJANJMLTnAV9K+k1W5XgjN2
 DRGRpfciWQDzfqPiZ5dCG1Z2jQ8NYtIkuq4PJjPo=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jgRMO-00HQQ8-22; Wed, 03 Jun 2020 12:15:04 +0100
MIME-Version: 1.0
Date: Wed, 03 Jun 2020 12:15:04 +0100
From: Marc Zyngier <maz@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v3 1/6] PCI: dwc: Add msi_host_isr() callback
In-Reply-To: <1591174481-13975-2-git-send-email-hayashi.kunihiko@socionext.com>
References: <1591174481-13975-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1591174481-13975-2-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <95bb3ffbfab4923854e20266c6b0b098@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: hayashi.kunihiko@socionext.com, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
 robh+dt@kernel.org, yamada.masahiro@socionext.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, masami.hiramatsu@linaro.org,
 jaswinder.singh@linaro.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_041506_078858_666CFDDF 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-03 09:54, Kunihiko Hayashi wrote:
> This adds msi_host_isr() callback function support to describe
> SoC-dependent service triggered by MSI.
> 
> For example, when AER interrupt is triggered by MSI, the callback 
> function
> reads SoC-dependent registers and detects that the interrupt is from 
> AER,
> and invoke AER interrupts related to MSI.
> 
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Jingoo Han <jingoohan1@gmail.com>
> Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 8 ++++----
>  drivers/pci/controller/dwc/pcie-designware.h      | 1 +
>  2 files changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c
> b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 0a4a5aa..9b628a2 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -112,13 +112,13 @@ irqreturn_t dw_handle_msi_irq(struct pcie_port 
> *pp)
>  static void dw_chained_msi_isr(struct irq_desc *desc)
>  {
>  	struct irq_chip *chip = irq_desc_get_chip(desc);
> -	struct pcie_port *pp;
> +	struct pcie_port *pp = irq_desc_get_handler_data(desc);
> 
> -	chained_irq_enter(chip, desc);
> +	if (pp->ops->msi_host_isr)
> +		pp->ops->msi_host_isr(pp);

Why is this call outside of the enter/exit guards?
Do you still need to execute the standard handler?

> 
> -	pp = irq_desc_get_handler_data(desc);
> +	chained_irq_enter(chip, desc);
>  	dw_handle_msi_irq(pp);
> -
>  	chained_irq_exit(chip, desc);
>  }
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h
> b/drivers/pci/controller/dwc/pcie-designware.h
> index 656e00f..e741967 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -170,6 +170,7 @@ struct dw_pcie_host_ops {
>  	void (*scan_bus)(struct pcie_port *pp);
>  	void (*set_num_vectors)(struct pcie_port *pp);
>  	int (*msi_host_init)(struct pcie_port *pp);
> +	void (*msi_host_isr)(struct pcie_port *pp);
>  };
> 
>  struct pcie_port {

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
